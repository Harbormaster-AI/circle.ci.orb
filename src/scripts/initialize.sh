if [[ $EUID == 0 ]]; then export SUDO=""; else export SUDO="sudo"; fi

echo update npm
$SUDO npm install -g npm@latest

echo install npm-run
$SUDO npm install -g npm-run@latest

echo install Harbormaster command line interface
$SUDO npm install -g harbormaster-ai

echo initialize user for Harbormaster
$SUDO npm-run harbormaster init "${USER_HARBORMASTER_API_TOKEN}"

echo update the apt-get package index
$SUDO apt-get update

echo install dos2unix to convert uploaded files
$SUDO apt-get install -y dos2unix

