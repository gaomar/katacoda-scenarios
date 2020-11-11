sudo npm install -g n
sudo n 12.19.0

sudo npm install -g --unsafe-perm node-red

npm install bcryptjs
YOUR_NODERED_SETTING_DIR=/root/.node-red/settings.js
YOUR_NODERED_PASSWORD=$(more /dev/urandom  | tr -d -c '[:alnum:]' | fold -w 10 | head -1)
UI_NODERED_PASSWORD_CRYPT=`node -e "console.log(require('bcryptjs').hashSync(process.argv[1], 8));" ${YOUR_NODERED_PASSWORD}`

timeout 5 node-red > /dev/null

sed -i -e "s/\/\/adminAuth:/adminAuth:{\x0A\
        type: \"credentials\",\x0A\
        users: [{\x0A\
            username: \"admin\",\x0A\
            password: \"CLOUD_NODERED_PASSWORD\",\x0A\
            permissions: \"*\"\x0A\
        }]\x0A\
    },\x0A\
    \/\/adminAuth:/" $YOUR_NODERED_SETTING_DIR

sed -i -e "s*CLOUD_NODERED_PASSWORD*$UI_NODERED_PASSWORD_CRYPT*" /root/.node-red/settings.js

clear

echo "ユーザ名: admin パスワード: ${YOUR_NODERED_PASSWORD}"

