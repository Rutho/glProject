##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=glcraft
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=/home/rutho/glcraft
ProjectPath            :=/home/rutho/glcraft/glcraft
IntermediateDirectory  :=../build-$(WorkspaceConfiguration)/glcraft
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=
Date                   :=03/19/2025
CodeLitePath           :=/home/rutho/.codelite
MakeDirCommand         :=mkdir -p
LinkerName             :=/usr/bin/g++-10
SharedObjectLinkerName :=/usr/bin/g++-10 -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=/home/rutho/glcraft/build-$(WorkspaceConfiguration)/bin
OutputFile             :=../build-$(WorkspaceConfiguration)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)/home/rutho/opengl/include 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)glfw3 
ArLibs                 :=  "libglfw3.a" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)/home/rutho/opengl/libraries 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++-10
CC       := /usr/bin/gcc-10
CXXFLAGS :=  -g -O0 -Wall -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall -lglfw3 -lGL -lX11 -lpthread -lXrandr -lXi -ldl $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_glfw.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_demo.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_opengl3.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_draw.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_tables.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_widgets.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/glad_glad.c$(ObjectSuffix) $(IntermediateDirectory)/stb_load.cpp$(ObjectSuffix) \
	



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@$(MakeDirCommand) "$(OutputDirectory)"

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "$(IntermediateDirectory)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_glfw.cpp$(ObjectSuffix): ../../opengl/include/imgui/imgui_impl_glfw.cpp $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_glfw.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rutho/opengl/include/imgui/imgui_impl_glfw.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_glfw.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_glfw.cpp$(DependSuffix): ../../opengl/include/imgui/imgui_impl_glfw.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_glfw.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_glfw.cpp$(DependSuffix) -MM ../../opengl/include/imgui/imgui_impl_glfw.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_glfw.cpp$(PreprocessSuffix): ../../opengl/include/imgui/imgui_impl_glfw.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_glfw.cpp$(PreprocessSuffix) ../../opengl/include/imgui/imgui_impl_glfw.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui.cpp$(ObjectSuffix): ../../opengl/include/imgui/imgui.cpp $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rutho/opengl/include/imgui/imgui.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui.cpp$(DependSuffix): ../../opengl/include/imgui/imgui.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui.cpp$(DependSuffix) -MM ../../opengl/include/imgui/imgui.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui.cpp$(PreprocessSuffix): ../../opengl/include/imgui/imgui.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui.cpp$(PreprocessSuffix) ../../opengl/include/imgui/imgui.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_demo.cpp$(ObjectSuffix): ../../opengl/include/imgui/imgui_demo.cpp $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_demo.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rutho/opengl/include/imgui/imgui_demo.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_demo.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_demo.cpp$(DependSuffix): ../../opengl/include/imgui/imgui_demo.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_demo.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_demo.cpp$(DependSuffix) -MM ../../opengl/include/imgui/imgui_demo.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_demo.cpp$(PreprocessSuffix): ../../opengl/include/imgui/imgui_demo.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_demo.cpp$(PreprocessSuffix) ../../opengl/include/imgui/imgui_demo.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_opengl3.cpp$(ObjectSuffix): ../../opengl/include/imgui/imgui_impl_opengl3.cpp $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_opengl3.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rutho/opengl/include/imgui/imgui_impl_opengl3.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_opengl3.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_opengl3.cpp$(DependSuffix): ../../opengl/include/imgui/imgui_impl_opengl3.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_opengl3.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_opengl3.cpp$(DependSuffix) -MM ../../opengl/include/imgui/imgui_impl_opengl3.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_opengl3.cpp$(PreprocessSuffix): ../../opengl/include/imgui/imgui_impl_opengl3.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_impl_opengl3.cpp$(PreprocessSuffix) ../../opengl/include/imgui/imgui_impl_opengl3.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_draw.cpp$(ObjectSuffix): ../../opengl/include/imgui/imgui_draw.cpp $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_draw.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rutho/opengl/include/imgui/imgui_draw.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_draw.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_draw.cpp$(DependSuffix): ../../opengl/include/imgui/imgui_draw.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_draw.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_draw.cpp$(DependSuffix) -MM ../../opengl/include/imgui/imgui_draw.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_draw.cpp$(PreprocessSuffix): ../../opengl/include/imgui/imgui_draw.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_draw.cpp$(PreprocessSuffix) ../../opengl/include/imgui/imgui_draw.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_tables.cpp$(ObjectSuffix): ../../opengl/include/imgui/imgui_tables.cpp $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_tables.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rutho/opengl/include/imgui/imgui_tables.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_tables.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_tables.cpp$(DependSuffix): ../../opengl/include/imgui/imgui_tables.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_tables.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_tables.cpp$(DependSuffix) -MM ../../opengl/include/imgui/imgui_tables.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_tables.cpp$(PreprocessSuffix): ../../opengl/include/imgui/imgui_tables.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_tables.cpp$(PreprocessSuffix) ../../opengl/include/imgui/imgui_tables.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_widgets.cpp$(ObjectSuffix): ../../opengl/include/imgui/imgui_widgets.cpp $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_widgets.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rutho/opengl/include/imgui/imgui_widgets.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_widgets.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_widgets.cpp$(DependSuffix): ../../opengl/include/imgui/imgui_widgets.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_widgets.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_widgets.cpp$(DependSuffix) -MM ../../opengl/include/imgui/imgui_widgets.cpp

$(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_widgets.cpp$(PreprocessSuffix): ../../opengl/include/imgui/imgui_widgets.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_up_opengl_include_imgui_imgui_widgets.cpp$(PreprocessSuffix) ../../opengl/include/imgui/imgui_widgets.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rutho/glcraft/glcraft/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/glad_glad.c$(ObjectSuffix): glad/glad.c $(IntermediateDirectory)/glad_glad.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/rutho/glcraft/glcraft/glad/glad.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/glad_glad.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/glad_glad.c$(DependSuffix): glad/glad.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/glad_glad.c$(ObjectSuffix) -MF$(IntermediateDirectory)/glad_glad.c$(DependSuffix) -MM glad/glad.c

$(IntermediateDirectory)/glad_glad.c$(PreprocessSuffix): glad/glad.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/glad_glad.c$(PreprocessSuffix) glad/glad.c

$(IntermediateDirectory)/stb_load.cpp$(ObjectSuffix): stb_load.cpp $(IntermediateDirectory)/stb_load.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rutho/glcraft/glcraft/stb_load.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/stb_load.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/stb_load.cpp$(DependSuffix): stb_load.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/stb_load.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/stb_load.cpp$(DependSuffix) -MM stb_load.cpp

$(IntermediateDirectory)/stb_load.cpp$(PreprocessSuffix): stb_load.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/stb_load.cpp$(PreprocessSuffix) stb_load.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


