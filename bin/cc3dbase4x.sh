#!/bin/sh

#made with the help from Steven Clark

current_directory=$(pwd)

echo ${current_directory}

PARENT_DIR="$(dirname "$(pwd)")"

echo ${PARENT_DIR}

scriptPath=$0

binDir=$(dirname ${scriptPath})

export NANOHUB_SIM=${binDir}

TOOL_HOME=$(dirname ${binDir})

#TOOL_HOME=/apps/cc3dcovid19/

echo ${TOOL_HOME}

# necessary to enforce standard convention for numeric values specification on non-English OS
export LC_NUMERIC="C.UTF-8"


USER_DEMO_PATH=$HOME/CompuCell3D_Demos/Demos/
echo ${USER_DEMO_PATH}

#MAIN_CC3D_FILES=${current_directory}:/../main/
#MAIN_CC3D_FILES=${PARENT_DIR}/main/
#MAIN_CC3D_FILES=${PARENT_DIR}main/
MAIN_CC3D_FILES=${TOOL_HOME}/main/.
echo ${MAIN_CC3D_FILES}

mkdir -p ${USER_DEMO_PATH}
mkdir -p ${USER_DEMO_PATH}/output/

cp -rf ${MAIN_CC3D_FILES}  ${USER_DEMO_PATH} #not checking for existance incase there's been an update 

${COMPUCELL3D_HOME}/compucell3d.sh  -o ${USER_DEMO_PATH}/output/ -f 10001 > /dev/null 2>&1 
