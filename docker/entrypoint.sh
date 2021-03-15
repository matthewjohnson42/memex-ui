
export UI_DIR=$(cat /root/env | grep 'UI_DIR=' | sed 's/UI_DIR=//g')
cd ${UI_DIR}
ls -la
ls -la src
ls -la src/app
npm install
npm run ng -- serve --prod
