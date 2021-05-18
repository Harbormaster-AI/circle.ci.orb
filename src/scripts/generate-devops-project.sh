if [[ $EUID == 0 ]]; then export SUDO=""; else export SUDO="sudo"; fi

echo Generating DevOps Project
$SUDO harbormaster project_generate ~/"$CIRCLE_PROJECT_REPONAME"/"$HARBORMASTER_PROJECT_AS_CODE_YAML_FILE"
