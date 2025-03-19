#include <imgui/imgui.h>
#include <imgui/imgui_impl_glfw.h>
#include <imgui/imgui_impl_opengl3.h>

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <stdio.h>
#include <iostream>
#include <vector>
#include <cmath>
#include <shaders/shader.h>
#include "stb_image.h"
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <camera/camera.h>



const unsigned int SCR_WIDTH = 800;
const unsigned int SCR_HEIGHT = 800;
float lastX = SCR_WIDTH / 2.0f, lastY = SCR_HEIGHT / 2.0f;
float deltaTime = 0.0f;
float lastFrame = 0.0f;
float yaw = -90.0f;
float pitch = 0.0f;
bool firstMouse = true;
Camera camera(glm::vec3(0.0f,0.0f,3.0f));
void setup_imgui(GLFWwindow* window);
void processInput(GLFWwindow* window);
void scroll_callback(GLFWwindow *window, double xoffset,double yoffset);
void mouse_callback (GLFWwindow* window, double xpos, double ypos);
void framebuffer_size_callback(GLFWwindow *window,int width, int height){
    glViewport(0,0,width,height);
}

void processInput(GLFWwindow* window){
    if(glfwGetKey(window,GLFW_KEY_ESCAPE) == GLFW_PRESS){
        glfwSetWindowShouldClose(window,true);
    }


    if(glfwGetKey(window,GLFW_KEY_W) == GLFW_PRESS){
        camera.ProcessKeyboard(FORWARD,deltaTime);
    }
    if(glfwGetKey(window,GLFW_KEY_S) == GLFW_PRESS){
        camera.ProcessKeyboard(BACKWARD,deltaTime);
    }
    if(glfwGetKey(window,GLFW_KEY_A) == GLFW_PRESS){
        camera.ProcessKeyboard(LEFT,deltaTime);

    }
    if(glfwGetKey(window,GLFW_KEY_D) == GLFW_PRESS){
        camera.ProcessKeyboard(RIGHT,deltaTime);
    }
}


int main()
{

    glfwInit();

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR,3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR,3);
    glfwWindowHint(GLFW_OPENGL_PROFILE,GLFW_OPENGL_CORE_PROFILE);
    GLFWwindow* window = glfwCreateWindow(800,600,"opengl_test",NULL,NULL);
    if (window == NULL) {


        std::cout << "Failed to make GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }

    glfwMakeContextCurrent(window);
    setup_imgui(window);
    if(!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)){
        std::cout << "Failed to init GLAD" << std::endl;
        return -1;
    }
    glfwSetInputMode(window,GLFW_CURSOR,GLFW_CURSOR_DISABLED);
    glfwSetCursorPosCallback(window,mouse_callback);
    glfwSetScrollCallback(window,scroll_callback);
    glViewport(0,0,800,600);
    glfwSetFramebufferSizeCallback(window,framebuffer_size_callback);
    glEnable(GL_DEPTH_TEST);
    unsigned int VAO;


    glGenVertexArrays(1,&VAO);
    glBindVertexArray(VAO);
    float vertices[] = {-0.8f,-0.8f,0.0f,
                         0.0f,-0.8f,0.0f,
                        -0.8f,-0.3f,0.0f,
                        };
    float vert2[] = {0.5f,0.5f,0.0f,   1.0f,0.0f,0.0f, 1.0f, 1.0f,
                     0.5f,-0.5f,0.0f,  0.0f,1.0f,0.0f, 1.0f, 0.0f,
                     -0.5f,-0.5f,0.0f, 0.0f,0.0f,1.0f, 0.0f, 0.0f,
                     -0.5,0.5f,0.0f,   1.0f,1.0f,0.0f, 0.0f, 1.0f,
                     };

    float cubevert[]  = {
    -0.5f, -0.5f, -0.5f,  0.0f, 0.0f,
     0.5f, -0.5f, -0.5f,  1.0f, 0.0f,
     0.5f,  0.5f, -0.5f,  1.0f, 1.0f,
     0.5f,  0.5f, -0.5f,  1.0f, 1.0f,
    -0.5f,  0.5f, -0.5f,  0.0f, 1.0f,
    -0.5f, -0.5f, -0.5f,  0.0f, 0.0f,

    -0.5f, -0.5f,  0.5f,  0.0f, 0.0f,
     0.5f, -0.5f,  0.5f,  1.0f, 0.0f,
     0.5f,  0.5f,  0.5f,  1.0f, 1.0f,
     0.5f,  0.5f,  0.5f,  1.0f, 1.0f,
    -0.5f,  0.5f,  0.5f,  0.0f, 1.0f,
    -0.5f, -0.5f,  0.5f,  0.0f, 0.0f,

    -0.5f,  0.5f,  0.5f,  1.0f, 0.0f,
    -0.5f,  0.5f, -0.5f,  1.0f, 1.0f,
    -0.5f, -0.5f, -0.5f,  0.0f, 1.0f,
    -0.5f, -0.5f, -0.5f,  0.0f, 1.0f,
    -0.5f, -0.5f,  0.5f,  0.0f, 0.0f,
    -0.5f,  0.5f,  0.5f,  1.0f, 0.0f,

     0.5f,  0.5f,  0.5f,  1.0f, 0.0f,
     0.5f,  0.5f, -0.5f,  1.0f, 1.0f,
     0.5f, -0.5f, -0.5f,  0.0f, 1.0f,
     0.5f, -0.5f, -0.5f,  0.0f, 1.0f,
     0.5f, -0.5f,  0.5f,  0.0f, 0.0f,
     0.5f,  0.5f,  0.5f,  1.0f, 0.0f,

    -0.5f, -0.5f, -0.5f,  0.0f, 1.0f,
     0.5f, -0.5f, -0.5f,  1.0f, 1.0f,
     0.5f, -0.5f,  0.5f,  1.0f, 0.0f,
     0.5f, -0.5f,  0.5f,  1.0f, 0.0f,
    -0.5f, -0.5f,  0.5f,  0.0f, 0.0f,
    -0.5f, -0.5f, -0.5f,  0.0f, 1.0f,

    -0.5f,  0.5f, -0.5f,  0.0f, 1.0f,
     0.5f,  0.5f, -0.5f,  1.0f, 1.0f,
     0.5f,  0.5f,  0.5f,  1.0f, 0.0f,
     0.5f,  0.5f,  0.5f,  1.0f, 0.0f,
    -0.5f,  0.5f,  0.5f,  0.0f, 0.0f,
    -0.5f,  0.5f, -0.5f,  0.0f, 1.0f







        };




   // unsigned int ind2[] = {};
    unsigned int indices[] = {
        0,1,3,
        1,2,3
    };
    float texCoords[] = {
      0.0f,0.0f,
      1.0f,0.0f,
      0.5f,1.0f
    };
    unsigned int VBO;
    glGenBuffers(1,&VBO);
    glBindBuffer(GL_ARRAY_BUFFER,VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices),vertices,GL_STATIC_DRAW);




    Shader ourShader("glcraft/shaders/vert.shad","glcraft/shaders/frag.shad");
    Shader ourShader2("glcraft/shaders/vert2.shad","glcraft/shaders/frag2.shad");



    unsigned int EBO;
    glGenBuffers(1,&EBO);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER,sizeof(indices),indices,GL_STATIC_DRAW);

    glVertexAttribPointer(0,3,GL_FLOAT,GL_FALSE,3 * sizeof(float),(void*)0);
    glEnableVertexAttribArray(0);
    glBindVertexArray(0);
    //glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,0);
    glBindBuffer(GL_ARRAY_BUFFER,0);

    unsigned int VAO2;
    glGenVertexArrays(1,&VAO2);
    glBindVertexArray(VAO2);
    unsigned int VBO2;
    glGenBuffers(1,&VBO2);


    glBindBuffer(GL_ARRAY_BUFFER,VBO2);
    glBufferData(GL_ARRAY_BUFFER,sizeof(vert2),vert2,GL_STATIC_DRAW);

    glVertexAttribPointer(0,3,GL_FLOAT,GL_FALSE,8 * sizeof(float),(void*)0);
    glVertexAttribPointer(1,3,GL_FLOAT,GL_FALSE, 8 * sizeof(float),(void*)(3*sizeof(float)));
    glVertexAttribPointer(2,2,GL_FLOAT,GL_FALSE,8 * sizeof(float),(void*)(6*sizeof(float)));

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER,sizeof(indices),indices,GL_STATIC_DRAW);
    glEnableVertexAttribArray(0);
    glEnableVertexAttribArray(1);
    glEnableVertexAttribArray(2);
    glBindVertexArray(0);

    //glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,0);
    glBindBuffer(GL_ARRAY_BUFFER,0);


    unsigned int cubevao;
    glGenVertexArrays(1,&cubevao);
    glBindVertexArray(cubevao);
    unsigned int cubevbo;
    glGenBuffers(1,&cubevbo);
    glBindBuffer(GL_ARRAY_BUFFER,cubevbo);
    glBufferData(GL_ARRAY_BUFFER,sizeof(cubevert),cubevert,GL_STATIC_DRAW);
    glVertexAttribPointer(0,3,GL_FLOAT,GL_FALSE, 5 * sizeof(float),(void*)0);
    glVertexAttribPointer(2,2,GL_FLOAT,GL_FALSE, 5 * sizeof(float),(void*)(3*sizeof(float)));
    glEnableVertexAttribArray(0);
    glEnableVertexAttribArray(2);
    glBindVertexArray(0);
    glBindBuffer(GL_ARRAY_BUFFER,0);







    int width,height, nrChannels;

    unsigned char *data = stbi_load("glcraft/img/Quake1cover.jpg",&width,&height,&nrChannels,0);

    unsigned int texture;
    glGenTextures(1,&texture);
    glBindTexture(GL_TEXTURE_2D,texture);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGB,width,height,0,GL_RGB,GL_UNSIGNED_BYTE,data);
    glGenerateMipmap(GL_TEXTURE_2D);
    stbi_image_free(data);
    stbi_set_flip_vertically_on_load(true);
    data = stbi_load("glcraft/img/awesomeface.png",&width,&height,&nrChannels,0);
    unsigned int texture2;
    glGenTextures(1,&texture2);
    glBindTexture(GL_TEXTURE_2D,texture2);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR_MIPMAP_LINEAR);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGB,width,height,0,GL_RGBA,GL_UNSIGNED_BYTE,data);
    glGenerateMipmap(GL_TEXTURE_2D);
    stbi_image_free(data);
    ourShader2.use();
    ourShader2.setInt("texture1",0);
    ourShader2.setInt("texture2",1);


    glm::vec4 vec(1.0f,0.0f,0.0f,1.0f);
    std::cout << vec.x << vec.y << vec.z << std::endl;



    glm::vec3 cubePositions[] = {
    glm::vec3( 0.0f,  0.0f,  0.0f),
    glm::vec3( 2.0f,  5.0f, -15.0f),
    glm::vec3(-1.5f, -2.2f, -2.5f),
    glm::vec3(-3.8f, -2.0f, -12.3f),
    glm::vec3( 2.4f, -0.4f, -3.5f),
    glm::vec3(-1.7f,  3.0f, -7.5f),
    glm::vec3( 1.3f, -2.0f, -2.5f),
    glm::vec3( 1.5f,  2.0f, -2.5f),
    glm::vec3( 1.5f,  0.2f, -1.5f),
    glm::vec3(-1.3f,  1.0f, -1.5f)
};













    while(!glfwWindowShouldClose(window)){

        float currentFrame = glfwGetTime();
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;

        processInput(window);

        glClearColor(0.2f,0.3f,0.3f,1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);


        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();
        ImGui::ShowDemoWindow();
        /*ourShader.use();

        glBindVertexArray(VAO);
        glDrawElements(GL_TRIANGLES,3,GL_UNSIGNED_INT,0); */

        ourShader2.use();
        float timeValue = glfwGetTime();
        float dmov = (sin(timeValue) ) + 0.5f;
       // int deltaLoc = glGetUniformLocation(ourShader2.ID,"delta");
        //glUniform1f(deltaLoc,dmov);
        ourShader2.setFloat("delta",dmov);

        /*


         float blueValue = (sin(timeValue) / 2.0f) + 0.5f;
         int vertexColorLocation = glGetUniformLocation(sprog2, "ourColor");
         glUniform4f(vertexColorLocation,0.2f,0.2f,blueValue,1.0f);
         glUniform1f(deltaLoc,dmov);
         */
        glm::mat4 trans = glm::mat4(1.0f);
        float rotval =  2.0f * glfwGetTime();
        glm::mat4 projection;
        projection = glm::perspective(glm::radians(45.0f),800.0f / 600.0f,0.1f,100.0f);


        /*glm::vec3 cameraZ = glm::normalize(glm::vec3(cameraPos - cameraTarget));
        glm::vec3 cameraX = glm::cross(cameraUp,cameraZ);
        glm::vec3 cameraY = glm::cross(cameraZ,cameraX);

        glm::mat4 view = glm::mat4(1.0f);
        view[0] = glm::vec4(cameraX,0.0f);
        view[1] = glm::vec4(cameraY,0.0f);
        view[2] = glm::vec4(cameraZ,0.0f);
        view[3] = glm::vec4(cameraPos,1.0f);
        view = glm::inverse(view); */

        glm::mat4 view ;

       /* const float radius = 10.0f;
        cameraPos = glm::vec3(sin(glfwGetTime()) * radius,0.0f,cos(glfwGetTime()) * radius );
        //cameraPos = glm::vec3(sin(glfwGetTime()) *  radius,0.0f,0.0f);
        view = glm::lookAt(cameraPos,cameraTarget,cameraUp);
        */
        view = camera.GetViewMatrix();






        //model = glm::translate(model,glm::vec3(0.5* (float)sin(rotval) ,0.3* (float)cos(rotval),0.0f));






        unsigned int projLoc = glGetUniformLocation(ourShader2.ID,"projection");
        unsigned int viewLoc = glGetUniformLocation(ourShader2.ID,"view");

        glUniformMatrix4fv(projLoc,1,GL_FALSE,glm::value_ptr(projection));
        glUniformMatrix4fv(viewLoc,1,GL_FALSE,glm::value_ptr(view));



        //trans = glm::rotate(trans,(float)glfwGetTime() * 10,glm::vec3(0.0,0.0,1.0));
        //trans = glm::scale(trans,glm::vec3(0.25,0.25,0.25));
        //unsigned int transformLoc = glGetUniformLocation(ourShader2.ID,"transform");
        //glUniformMatrix4fv(transformLoc,1,GL_FALSE,glm::value_ptr(trans));



        glActiveTexture(GL_TEXTURE0);
        glBindTexture(GL_TEXTURE_2D,texture);
        glActiveTexture(GL_TEXTURE1);
        glBindTexture(GL_TEXTURE_2D,texture2);
        glBindVertexArray(cubevao);

        for(unsigned int i = 0; i < 10 ; i++) {
            glm::mat4 model = glm::mat4(1.0f);
            model = glm::translate(model,cubePositions[i]);
            float ang = 15.0f * i + 2.0f ;
            //model = glm::rotate(model,(float)glfwGetTime() * glm::radians(ang),glm::vec3(0.5f,1.0f,0.0f));
            ourShader2.setMat4("model",model);

            glDrawArrays(GL_TRIANGLES,0,36);


        }

        ImGui::Begin("IMGUI");
        ImGui::Text("New Text");
        ImGui::End();
        ImGui::Render();
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());






        //glDrawElements(GL_TRIANGLES,6,GL_UNSIGNED_INT,0);
        glfwSwapBuffers(window);

        glfwPollEvents();
    }
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();
    glDeleteVertexArrays(1,&VAO);
    glDeleteBuffers(1,&VBO);

    glfwTerminate();


	return 0;
}

void scroll_callback(GLFWwindow *window, double xoffset,double yoffset){

    camera.ProcessMouseScroll(static_cast<float>(yoffset));
}
void mouse_callback (GLFWwindow* window, double xposIn, double yposIn){


    float xpos = static_cast<float>(xposIn);
    float ypos = static_cast<float>(yposIn);


    if(firstMouse){
        lastX = xpos;
        lastY = ypos;
        firstMouse = false;
    }

    float xoffset = xpos - lastX;
    float yoffset = lastY - ypos;
    lastX = xpos;
    lastY = ypos;

    camera.ProcessMouseMovement(xoffset,yoffset);






}
void setup_imgui(GLFWwindow *window){

    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;

    ImGui::StyleColorsDark();
    ImGui_ImplGlfw_InitForOpenGL(window,true);
    ImGui_ImplOpenGL3_Init("#version 330");


}
