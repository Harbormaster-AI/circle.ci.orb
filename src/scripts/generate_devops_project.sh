if [[ $EUID == 0 ]]; then export SUDO=""; else export SUDO="sudo"; fi

echo Generating DevOps Project
harbormaster project_generate ~/${CIRCLE_PROJECT_REPONAME}/${HARBORMASTER_PROJECT_AS_CODE_FILE}