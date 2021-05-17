if [[ $EUID == 0 ]]; then export SUDO=""; else export SUDO="sudo"; fi

echo print environmental variables just to check things out
printenv

echo update npm
npm install -g npm@latest

echo install npm-run
npm install -g npm-run@latest

echo install Harbormaster command line interface
npm install -g harbormaster-ai

echo initialize user for Harbormaster
npm-run harbormaster init "${HARBORMASTER_API_TOKEN}"

echo update the apt-get package index
apt-get update

echo install dos2unix to convert uploaded files
apt-get install -y dos2unix

