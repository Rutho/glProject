const char *vertexShaderSource = "#version 330 core\n"
"layout (location = 0) in vec3 aPos;\n"
"layout (location = 1) in vec3 aColor;\n"
"out vec3 ourColor;\n"
"void main()\n"
"{\n"
"   gl_Position = vec4(aPos.x,aPos.y,aPos.z,1.0);\n"
"  ourColor = aColor;\n"
"}\0";

const char *fragmentShaderSource = "#version 330 core\n"
"out vec4 FragColor;"
"void main()\n"
"{\n"
"   FragColor = vec4(0.8,0.5,0.7,1.0);\n"
"}\0";

const char *frag2 = "#version 330 core\n"
"out vec4 FragColor;\n"
"in vec3 ourColor;\n"

"void main()\n"
"{\n"
"   FragColor = vec4(ourColor,1.0);"
"}\0";


void init_vertex_shader(unsigned int& vertexShader){
        
    vertexShader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertexShader,1,&vertexShaderSource, NULL);
    glCompileShader(vertexShader);
    int success;
    char infoLog[512];
    glGetShaderiv(vertexShader,GL_COMPILE_STATUS,&success);
    if(!success){
        
        glGetShaderInfoLog(vertexShader,512,NULL,infoLog);
        std::cout << "vertex compilation fail\n" << infoLog << std::endl;
        
            
    }
    
}
void init_fragment_shader(unsigned int& fragmentShader,const char *fragmentSource){
        
    fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader,1,&fragmentSource, NULL);
    glCompileShader(fragmentShader);
    int success;
    char infoLog[512];
    glGetShaderiv(fragmentShader,GL_COMPILE_STATUS,&success);
    if(!success){
        
        glGetShaderInfoLog(fragmentShader,512,NULL,infoLog);
        std::cout << "fragment compilation fail\n" << infoLog << std::endl;
        
            
    }
    
}
void init_shader_program(unsigned int& shaderProgram,unsigned int& vertexShader,unsigned int& fragmentShader){
    int success;
    char infoLog[512];
    shaderProgram = glCreateProgram();
    glAttachShader(shaderProgram,vertexShader);
    glAttachShader(shaderProgram,fragmentShader);
    glLinkProgram(shaderProgram);
    glGetProgramiv(shaderProgram,GL_LINK_STATUS,&success);
    if(!success){
        
            glGetProgramInfoLog(shaderProgram,512,NULL,infoLog);
            std::cout << "shader program fail\n" << infoLog << std::endl;
            
    }
    
}