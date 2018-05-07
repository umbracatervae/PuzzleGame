#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <iostream>
#include <algorithm>
#include <vector>
#include <map>
#include <glm/glm.hpp>
#include <chrono>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

namespace sc = std::chrono;
// puzzle piece data
struct PuzzlePiece {
    int id; //change to a texture offset x-y?
    float x;
    float y;
    float z;
    float tx;
    float ty;
    std::map<PuzzlePiece*, glm::vec2> group;
    int neighborList[4];
    PuzzlePiece(){
        x=y=z=id=0;
        tx=ty=0;
    }
};

void framebuffer_size_callback(GLFWwindow* window, int width, int height);
void processInput(GLFWwindow *window);
PuzzlePiece* retrievePuzzlePieceByID(int& id);
void addToPuzzleGroup(PuzzlePiece* src, PuzzlePiece* dst);

// settings
int SCR_WIDTH = 800;
int SCR_HEIGHT = 600;
unsigned int PIECE_ROWS = 4;
unsigned int PIECE_COLS = 4;
unsigned int NUM_PIECES;
float PIECE_WIDTH = 2.0f/(float)PIECE_COLS; //in OpenGL space x = [-1,1]
float PIECE_HEIGHT = 2.0f/(float)PIECE_ROWS; // in OpenGL space y = [-1,1]
const int NUM_NEIGHBORS = 4;
const float THRESHOLD = 0.02f;
const char* IMAGE_FILENAME = "../testimage.jpg";

//flags
bool mouseDown = false;
bool keys[1024] = { 0 };


bool compare_pieces (const PuzzlePiece* lhs, const PuzzlePiece* rhs) { // comparison operator for set ordering
    return lhs->z < rhs->z;
}
std::vector<PuzzlePiece*> pieces;
PuzzlePiece* active_piece;
float drag_location_x, drag_location_y; //for click and drag

const char *vertexShaderSource = "#version 330 core\n"
    "layout (location = 0) in vec3 aPos;\n"
    "layout (location = 1) in vec2 aTexCoord;\n"
    "uniform vec3 offset;\n"
    "uniform vec2 texOffset;\n"
    "out vec2 TexCoord;"
    "void main()\n"
    "{\n"
    "   gl_Position = vec4(aPos+offset, 1.0);\n"
    "   TexCoord = aTexCoord + texOffset;"
    "}\0";
const char *fragmentShaderSource = "#version 330 core\n"
    "in vec2 TexCoord;"
    "out vec4 FragColor;\n"
    "uniform sampler2D ourTexture;"
    "void main()\n"
    "{\n"
    "   FragColor = texture(ourTexture, TexCoord);\n"
    "}\n\0";


void mouse_button_callback(GLFWwindow* window, int button, int action, int mods)
{

    if(button == GLFW_MOUSE_BUTTON_LEFT ) {
        if(action == GLFW_PRESS) {
            double xpos, ypos;
            glfwGetCursorPos(window, &xpos, &ypos);
            float x = 2.0f * ((float)xpos / SCR_WIDTH - 0.5f);
            float y = -2.0f * ((float)ypos / SCR_HEIGHT - 0.5f);
            for(auto it = pieces.rbegin(); it != pieces.rend(); ++it){ //reverse iterate (highest Z pieces first)
                if(x >= (*it)->x-PIECE_WIDTH/2  && x < (*it)->x+PIECE_WIDTH/2 && y>= (*it)->y-PIECE_HEIGHT/2 && y < (*it)->y+PIECE_HEIGHT/2){
                    active_piece = *it;
                    drag_location_x = x - active_piece->x;
                    drag_location_y = y - active_piece->y;

                    // reorder draw order of pieces
                    active_piece->z = (*pieces.rbegin())->z + 1;
                    for(auto p : active_piece->group){
                        p.first->z = (*pieces.rbegin())->z +1;
                    }

                    std::sort(pieces.begin(),pieces.end(),compare_pieces); //always sort by z value after modifying z

                    mouseDown = true;
                    break;
                }
            }
        }
        else if(action == GLFW_RELEASE){
            mouseDown = false;

            //std::cout << "Active Piece " << active_piece->id << " :(" << active_piece->x << "," << active_piece->y << ")" << std::endl;

            //Determine all pieces to check for neighbor proximity
            std::vector<PuzzlePiece*> activePieces;
            activePieces.push_back(active_piece);
            for (auto ap : active_piece->group){
                activePieces.push_back(ap.first);
            }

            for (auto ap : activePieces) {


                //check if the active piece has been placed somewhere close to any of it's correct neighbors
                for (int n = 0; n < NUM_NEIGHBORS; ++n) {
                    //std::cout << "Checking neighbor: " << n << std::endl;
                    if (ap->neighborList[n] == -1) {
                        //has no neighbor in this coordinate
                        continue;
                    }
                    int index = ap->neighborList[n];
                    auto cand_neigh = retrievePuzzlePieceByID(index);
                    float distX, distY;
                    float initX = ap->x;
                    float initY = ap->y;
                    float offX = 0.0f;
                    float offY = 0.0f;
                    switch (n) {
                        //[L,R,T,B]
                        case 0:
                            //LEFT NEIGHBOR
                            distX = std::abs((cand_neigh->x + PIECE_WIDTH / 2) - (ap->x - PIECE_WIDTH / 2));
                            distY = std::abs(cand_neigh->y - ap->y);

                            if (distX <= THRESHOLD && distY <= THRESHOLD) {
                                ap->x = cand_neigh->x + PIECE_WIDTH;
                                ap->y = cand_neigh->y;
                                offX = ap->x - initX;
                                offY = ap->y - initY;
                                for (auto grouped : ap->group){
                                    grouped.first->x += offX;
                                    grouped.first->y += offY;
                                }

                                addToPuzzleGroup(ap, cand_neigh);

                                std::vector<PuzzlePiece *> pieceStructure;
                                pieceStructure.push_back(cand_neigh);
                                pieceStructure.push_back(ap);
                                for (auto p : ap->group) {
                                    pieceStructure.push_back(p.first);
                                }
                                for (auto p : cand_neigh->group) {
                                    pieceStructure.push_back(p.first);
                                }

                                for (auto p1 : pieceStructure) {
                                    for (auto p2 : pieceStructure) {
                                        if (p1->id == p2->id) {
                                            continue;
                                        }
                                        addToPuzzleGroup(p1, p2);
                                    }
                                }
                            }
                            break;
                        case 1:
                            //RIGHT NEIGHBOR
                            distX = std::abs((ap->x + PIECE_WIDTH / 2) - (cand_neigh->x - PIECE_WIDTH / 2));
                            distY = std::abs(cand_neigh->y - ap->y);
                            if (distX <= THRESHOLD && distY <= THRESHOLD) {
                                ap->x = cand_neigh->x - PIECE_WIDTH;
                                ap->y = cand_neigh->y;
                                offX = ap->x - initX;
                                offY = ap->y - initY;
                                for (auto grouped : ap->group){
                                    grouped.first->x += offX;
                                    grouped.first->y += offY;
                                }

                                addToPuzzleGroup(ap, cand_neigh);

                                std::vector<PuzzlePiece *> pieceStructure;
                                pieceStructure.push_back(cand_neigh);
                                pieceStructure.push_back(ap);
                                for (auto p : ap->group) {
                                    pieceStructure.push_back(p.first);
                                }
                                for (auto p : cand_neigh->group) {
                                    pieceStructure.push_back(p.first);
                                }

                                for (auto p1 : pieceStructure) {
                                    for (auto p2 : pieceStructure) {
                                        if (p1->id == p2->id) {
                                            continue;
                                        }
                                        addToPuzzleGroup(p1, p2);
                                    }
                                }
                            }

                            break;
                        case 2:
                            //TOP NEIGHBOR
                            distX = std::abs((cand_neigh->y - PIECE_HEIGHT / 2) - (ap->y + PIECE_HEIGHT / 2));
                            distY = std::abs(cand_neigh->x - ap->x);
                            if (distX <= THRESHOLD && distY <= THRESHOLD) {
                                ap->y = cand_neigh->y - PIECE_HEIGHT;
                                ap->x = cand_neigh->x;
                                offX = ap->x - initX;
                                offY = ap->y - initY;
                                for (auto grouped : ap->group){
                                    grouped.first->x += offX;
                                    grouped.first->y += offY;
                                }


                                addToPuzzleGroup(ap, cand_neigh);

                                std::vector<PuzzlePiece *> pieceStructure;
                                pieceStructure.push_back(cand_neigh);
                                pieceStructure.push_back(ap);
                                for (auto p : ap->group) {
                                    pieceStructure.push_back(p.first);
                                }
                                for (auto p : cand_neigh->group) {
                                    pieceStructure.push_back(p.first);
                                }

                                for (auto p1 : pieceStructure) {
                                    for (auto p2 : pieceStructure) {
                                        if (p1->id == p2->id) {
                                            continue;
                                        }
                                        addToPuzzleGroup(p1, p2);
                                    }
                                }
                            }

                            break;
                        case 3:
                            //BOTTOM NEIGHBOR
                            distX = std::abs((ap->y - PIECE_HEIGHT / 2) - (cand_neigh->y + PIECE_HEIGHT / 2));
                            distY = std::abs(cand_neigh->x - ap->x);
                            if (distX <= THRESHOLD && distY <= THRESHOLD) {

                                ap->y = cand_neigh->y + PIECE_HEIGHT;
                                ap->x = cand_neigh->x;
                                offX = ap->x - initX;
                                offY = ap->y - initY;
                                for (auto grouped : ap->group){
                                    grouped.first->x += offX;
                                    grouped.first->y += offY;
                                }



                                addToPuzzleGroup(ap, cand_neigh);

                                std::vector<PuzzlePiece *> pieceStructure;
                                pieceStructure.push_back(cand_neigh);
                                pieceStructure.push_back(ap);
                                for (auto p : ap->group) {
                                    pieceStructure.push_back(p.first);
                                }
                                for (auto p : cand_neigh->group) {
                                    pieceStructure.push_back(p.first);
                                }

                                for (auto p1 : pieceStructure) {
                                    for (auto p2 : pieceStructure) {
                                        if (p1->id == p2->id) {
                                            continue;
                                        }
                                        addToPuzzleGroup(p1, p2);
                                    }
                                }
                            }

                            break;
                        default:
                            std::cout << "[ERROR] Neighbor Index Not Properly Initialized";
                            exit(-1);
                    }
                    //std::cout << "End of For Loop iteration" << std::endl;
                }
            }
        }
    }
}

void scramble(){
    float range_max = 1 - (PIECE_WIDTH / 2);
    float range_min = (-1) + (PIECE_WIDTH / 2);
    float range = range_max - range_min;
    float random;

    srand(time(NULL));

    for(auto p : pieces){
        random = ((float)rand()) / (float) RAND_MAX;
        p->x = (random * range) + range_min;
        random = ((float)rand()) / (float) RAND_MAX;
        p->y = (random * range) + range_min;
        p->group.clear(); //ungroup all pieces
    }
}

static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods){
    if(action == GLFW_PRESS) {
        keys[key] = true;
    } else if(action == GLFW_RELEASE) {
        keys[key] = false;
    }

    if(keys[GLFW_KEY_S]){
        scramble();
    }

    if(keys[GLFW_KEY_D]){
        for (auto p : pieces){
            std::cout << "PIECE " << p->id << " HAS BEEN GROUPED WITH " << p->group.size() << " PIECES" << std::endl;
        }
    }
}

GLuint loadTexture(unsigned char * image) {

    GLuint textureID = 0;
    glGenTextures(1, &textureID);

    glBindTexture(GL_TEXTURE_2D, textureID);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);	// set texture wrapping to GL_REPEAT (default wrapping method)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    // set texture filtering parameters
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, SCR_WIDTH, SCR_HEIGHT, 0, GL_RGB, GL_UNSIGNED_BYTE, image);
    glGenerateMipmap(GL_TEXTURE_2D);

    stbi_image_free(image);
    return textureID;
}

void setup_pieces(){ //set up a grid of puzzle pieces
    // draws pieces in reading order (left -> right, top -> bottom)
    int pieces_per_row = NUM_PIECES / PIECE_ROWS;
    for(int i=0; i<NUM_PIECES; ++i){
        auto p = new PuzzlePiece;
        p->x = PIECE_WIDTH*(i % pieces_per_row) - (1-PIECE_HEIGHT/2);
        p->y = -PIECE_HEIGHT*(i/pieces_per_row) + (1-PIECE_HEIGHT/2);
        p->z = i;
        p->tx = PIECE_WIDTH*(i % pieces_per_row)/2;
        p->ty = PIECE_HEIGHT*(i/pieces_per_row)/2;
        //std::cout << "placing piece " << i << " at (" << p->x << "," << p->y << ") rgb: (" << p->tx << "," << p->ty << ")" << std::endl;
        p->id = i;

        //[L,R,T,B]
        p->neighborList[0] = (i%pieces_per_row == 0) ? -1 : i-1;
        p->neighborList[1] = (i%pieces_per_row == pieces_per_row-1) ? -1: i+1;
        p->neighborList[2] = (0 <= i && i < pieces_per_row) ? -1 : i - pieces_per_row;
        p->neighborList[3] = (NUM_PIECES - pieces_per_row <= i && i < NUM_PIECES) ? -1: i + pieces_per_row;
        pieces.push_back(p);
    }
    // DEBUG
    /*
    for (auto p : pieces) {
        std::cout << "--------------------\nPiece " << p->id << " has following neighbors:" << std::endl;
        if (p->neighborList[0] == -1){
            std::cout << "LEFT NEIGHBOR: NONE" << std::endl;
        }
        else {
            std::cout << "LEFT NEIGHBOR: " << p->neighborList[0] << std::endl;
        }
        if (p->neighborList[1] == -1){
            std::cout << "RIGHT NEIGHBOR: NONE" << std::endl;
        }
        else {
            std::cout << "RIGHT NEIGHBOR: " << p->neighborList[1] << std::endl;
        }
        if (p->neighborList[2] == -1){
            std::cout << "TOP NEIGHBOR: NONE" << std::endl;
        }
        else {
            std::cout << "TOP NEIGHBOR: " << p->neighborList[2] << std::endl;
        }
        if (p->neighborList[3] == -1){
            std::cout << "BOTTOM NEIGHBOR: NONE" << std::endl;
        }
        else {
            std::cout << "BOTTOM NEIGHBOR: " << p->neighborList[3] << std::endl;
        }
    }
     */

    //manually group first two pieces for testing
    /*
    PuzzlePiece* p = *pieces.begin();
    PuzzlePiece* p2 = *(++pieces.begin());
    glm::vec2 v(p2->x - p->x,p2->y - p->y);
    p->group.insert(std::pair<PuzzlePiece*,glm::vec2>(p2,v));
    v.x = p->x - p2->x;
    v.y = p->y - p2->y;
    p2->group.insert(std::pair<PuzzlePiece*,glm::vec2>(p,v));
    */
}

int main(int argc, char** argv)
{
    /*
    if(argc > 1){
        IMAGE_FILENAME = argv[1];
    }
    if(argc > 2){
        PIECE_ROWS = std::atoi(argv[2]);
    }
    if(argc > 3){
        PIECE_COLS = std::atoi(argv[3]);
    }*/
    unsigned int stage = 0;
    bool terminated = false;

    while (stage < 4 && !terminated) {
        auto start = sc::high_resolution_clock::now(); // start the clock
        stage++;
        pieces.clear();
        active_piece = NULL;

        switch(stage)
        {
            case 1: IMAGE_FILENAME = "../testimage.jpg";
                    break;
            case 2: PIECE_COLS = PIECE_ROWS = PIECE_ROWS + 1;
                    IMAGE_FILENAME = "../castle.jpg";
                    break;
            case 3: PIECE_COLS = PIECE_ROWS = PIECE_ROWS + 2;
                    IMAGE_FILENAME = "../chick.jpg";
                    break;
            case 4: PIECE_COLS = PIECE_ROWS = 1;
                    IMAGE_FILENAME = "../done.jpg";
                    break;
            default: std::cout << "You f****d up!!";
        }

        NUM_PIECES = PIECE_ROWS * PIECE_COLS;
        PIECE_WIDTH = 2.0f / (float) PIECE_COLS; //in OpenGL space x = [-1,1]
        PIECE_HEIGHT = 2.0f / (float) PIECE_ROWS; // in OpenGL space y = [-1,1]

        int nrChannels;
        unsigned char *image = stbi_load(IMAGE_FILENAME, &SCR_WIDTH, &SCR_HEIGHT, &nrChannels, 0);



        // glfw: initialize and configure
        // ------------------------------
        glfwInit();
        glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
        glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
        //glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
        glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // uncomment this statement to fix compilation on OS X
#endif

        // glfw window creation
        // --------------------
        GLFWwindow *window = glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "Puzzle Game", nullptr, nullptr);
        if (window == nullptr) {
            std::cout << "Failed to create GLFW window" << std::endl;
            glfwTerminate();
            return -1;
        }

        glfwMakeContextCurrent(window);
        glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
        glfwSetMouseButtonCallback(window, mouse_button_callback);
        glfwSetKeyCallback(window, key_callback);


        // glad: load all OpenGL function pointers
        // ---------------------------------------
        if (!gladLoadGLLoader((GLADloadproc) glfwGetProcAddress)) {
            std::cout << "Failed to initialize GLAD" << std::endl;
            return -1;
        }

        //glEnable(GL_DEPTH_TEST);


        // build and compile our shader program
        // ------------------------------------
        // vertex shader
        GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
        glShaderSource(vertexShader, 1, &vertexShaderSource, nullptr);
        glCompileShader(vertexShader);
        // check for shader compile errors
        int success;
        char infoLog[512];
        glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);
        if (!success) {
            glGetShaderInfoLog(vertexShader, 512, nullptr, infoLog);
            std::cout << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n" << infoLog << std::endl;
        }
        // fragment shader
        GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
        glShaderSource(fragmentShader, 1, &fragmentShaderSource, nullptr);
        glCompileShader(fragmentShader);
        // check for shader compile errors
        glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &success);
        if (!success) {
            glGetShaderInfoLog(fragmentShader, 512, nullptr, infoLog);
            std::cout << "ERROR::SHADER::FRAGMENT::COMPILATION_FAILED\n" << infoLog << std::endl;
        }
        // link shaders
        GLuint shaderProgram = glCreateProgram();
        glAttachShader(shaderProgram, vertexShader);
        glAttachShader(shaderProgram, fragmentShader);
        glLinkProgram(shaderProgram);
        // check for linking errors
        glGetProgramiv(shaderProgram, GL_LINK_STATUS, &success);
        if (!success) {
            glGetProgramInfoLog(shaderProgram, 512, nullptr, infoLog);
            std::cout << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n" << infoLog << std::endl;
        }
        glDeleteShader(vertexShader);
        glDeleteShader(fragmentShader);

        setup_pieces();

        // set up vertex data (and buffer(s)) and configure vertex attributes
        // ------------------------------------------------------------------
        float vertices[] = {
                -PIECE_WIDTH / 2, -PIECE_HEIGHT / 2, 0.0f, 0.0f, PIECE_HEIGHT / 2, // left bottom
                PIECE_WIDTH / 2, -PIECE_HEIGHT / 2, 0.0f, PIECE_WIDTH / 2, PIECE_HEIGHT / 2, // right bottom
                -PIECE_WIDTH / 2, PIECE_HEIGHT / 2, 0.0f, 0.0f, 0.0f,// left top
                -PIECE_WIDTH / 2, PIECE_HEIGHT / 2, 0.0f, 0.0f, 0.0f,// left top
                PIECE_WIDTH / 2, -PIECE_HEIGHT / 2, 0.0f, PIECE_WIDTH / 2, PIECE_HEIGHT / 2,  // right bottom
                PIECE_WIDTH / 2, PIECE_HEIGHT / 2, 0.0f, PIECE_WIDTH / 2, 0.0f,// right top
        };
        //note: having corners at (0,0) (WIDTH, WIDTH) might reduce code complexity.

        unsigned int VBO, VAO;
        glGenVertexArrays(1, &VAO);
        glGenBuffers(1, &VBO);
        // bind the Vertex Array Object first, then bind and set vertex buffer(s), and then configure vertex attributes(s).
        glBindVertexArray(VAO);

        glBindBuffer(GL_ARRAY_BUFFER, VBO);
        glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void *) (0 * sizeof(float)));
        glEnableVertexAttribArray(0);
        glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void *) (3 * sizeof(float)));
        glEnableVertexAttribArray(1);

        // note that this is allowed, the call to glVertexAttribPointer registered VBO as the vertex attribute's bound vertex buffer object so afterwards we can safely unbind
        glBindBuffer(GL_ARRAY_BUFFER, 0);

        // You can unbind the VAO afterwards so other VAO calls won't accidentally modify this VAO, but this rarely happens. Modifying other
        // VAOs requires a call to glBindVertexArray anyways so we generally don't unbind VAOs (nor VBOs) when it's not directly necessary.
        glBindVertexArray(0);

        // Load texture
        GLuint tex = loadTexture(image);

        // uncomment this call to draw in wireframe polygons.
        //glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);


        // render loop
        // -----------
        while (!glfwWindowShouldClose(window)) {
            terminated = true;
            // input
            // -----
            processInput(window);

            // render
            // ------
            glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
            glClear(GL_COLOR_BUFFER_BIT);//| GL_DEPTH_BUFFER_BIT);

            // draw our first triangle
            glUseProgram(shaderProgram);
            glBindVertexArray(
                    VAO); // seeing as we only have a single VAO there's no need to bind it every time, but we'll do so to keep things a bit more organized
            glBindTexture(GL_TEXTURE_2D, tex);

            for (const auto &piece : pieces) { //forward iterate (lowest Z pieces first)
                // draw triangle 1 (arrow key controlled)
                glUniform2f(glGetUniformLocation(shaderProgram, "texOffset"), piece->tx, piece->ty);
                glUniform3f(glGetUniformLocation(shaderProgram, "offset"), piece->x, piece->y, 0.0f);
                glDrawArrays(GL_TRIANGLES, 0, 6);
            }



            // glBindVertexArray(0); // no need to unbind it every time

            // glfw: swap buffers and poll IO events (keys pressed/released, mouse moved etc.)
            // -------------------------------------------------------------------------------
            glfwSwapBuffers(window);
            glfwPollEvents();


            //TODO: Fo-Yao, insert code here for additional rounds and the timer

            bool gameCompleted = true;
            for (auto p : pieces) {
                //std::cout << p->group.size() << std::endl;
                if (p->group.size() < NUM_PIECES - 1) {
                    gameCompleted = false;
                    break;
                }
            }

            if (gameCompleted) {
                terminated = false;
                auto end = sc::high_resolution_clock::now(); // end the clock
                std::cout << "GAME COMPLETE!" << std::endl;
                std::cout << "Game Time: " << sc::duration_cast<sc::minutes>(end - start).count() << "min "
                          << sc::duration_cast<sc::seconds>(end - start).count() % 60 << "sec" << std::endl;
                if (stage == 4)
                {
                    struct timespec deadline;
                    deadline.tv_sec = 10;
                    clock_nanosleep(CLOCK_REALTIME, 0, &deadline, NULL);
                }
                break;
            }

        }

        // optional: de-allocate all resources once they've outlived their purpose:
        // ------------------------------------------------------------------------
        glDeleteVertexArrays(1, &VAO);
        glDeleteBuffers(1, &VBO);

        for (auto p : pieces) {
            delete p;
        }

        // glfw: terminate, clearing all previously allocated GLFW resources.
        // ------------------------------------------------------------------
        glfwTerminate();
    }
    return 0;
}

// process all input: query GLFW whether relevant keys are pressed/released this frame and react accordingly
// ---------------------------------------------------------------------------------------------------------
void processInput(GLFWwindow *window)
{
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);

    //process mouse dragging
    if(mouseDown){
        double xpos, ypos;
        glfwGetCursorPos(window, &xpos, &ypos);
        //transform screen coordinates into GL coordinates
        float offset_x = 2.0f * ((float)xpos / SCR_WIDTH - 0.5f) - drag_location_x;
        float offset_y = -2.0f * ((float)ypos / SCR_HEIGHT - 0.5f) - drag_location_y;

        if(offset_x > 1.0f) offset_x = 1.0f;
        else if(offset_x < -1.0f) offset_x = -1.0f;
        if(offset_y > 1.0f) offset_y = 1.0f;
        else if(offset_y < -1.0f) offset_y = -1.0f;

        //PuzzlePiece temp = active_piece;
        active_piece->x = offset_x;
        active_piece->y = offset_y;
        for(auto p : active_piece->group){
            p.first->x = offset_x + p.second.x;
            p.first->y = offset_y + p.second.y;
        }

    }
}

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
// ---------------------------------------------------------------------------------------------
void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and
    // height will be significantly larger than specified on retina displays.
    glViewport(0, 0, width, height);
}

PuzzlePiece* retrievePuzzlePieceByID(int& id){
    for (auto p : pieces){
        if (p->id == id){
            return p;
        }
    }
    return nullptr;
}

void addToPuzzleGroup(PuzzlePiece* src, PuzzlePiece* dst){
    glm::vec2 v(src->x - dst->x,src->y - dst->y);
    dst->group.insert(std::pair<PuzzlePiece*,glm::vec2>(src,v));
    v.x = dst->x - src->x;
    v.y = dst->y - src->y;
    src->group.insert(std::pair<PuzzlePiece*,glm::vec2>(dst,v));
}


