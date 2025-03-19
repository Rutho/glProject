##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=glcraft
ConfigurationName      :=Debug
WorkspaceConfiguration :=Release
WorkspacePath          :=/home/rutho/glcraft
ProjectPath            :=/home/rutho/glcraft/glcraft
IntermediateDirectory  :=../build-$(WorkspaceConfiguration)/glcraft
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=
Date                   :=03/18/2025
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
Objects0=$(IntermediateDirectory)/stb_load.cpp$(ObjectSuffix) $(IntermediateDirectory)/glad_glad.c$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/stb_load.cpp$(ObjectSuffix): stb_load.cpp $(IntermediateDirectory)/stb_load.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rutho/glcraft/glcraft/stb_load.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/stb_load.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/stb_load.cpp$(DependSuffix): stb_load.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/stb_load.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/stb_load.cpp$(DependSuffix) -MM stb_load.cpp

$(IntermediateDirectory)/stb_load.cpp$(PreprocessSuffix): stb_load.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/stb_load.cpp$(PreprocessSuffix) stb_load.cpp

$(IntermediateDirectory)/glad_glad.c$(ObjectSuffix): glad/glad.c $(IntermediateDirectory)/glad_glad.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/rutho/glcraft/glcraft/glad/glad.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/glad_glad.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/glad_glad.c$(DependSuffix): glad/glad.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/glad_glad.c$(ObjectSuffix) -MF$(IntermediateDirectory)/glad_glad.c$(DependSuffix) -MM glad/glad.c

$(IntermediateDirectory)/glad_glad.c$(PreprocessSuffix): glad/glad.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/glad_glad.c$(PreprocessSuffix) glad/glad.c

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/rutho/glcraft/glcraft/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


