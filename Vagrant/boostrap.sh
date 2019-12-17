# Update
sudo apt-get update
# Installer NodeJs 12
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs npm -y
# Installer SSH
sudo apt install openssh-client
sudo apt install openssh-server
# Installer Nginx
sudo apt install nginx -y
# Modifier le fichier index.html
cd /usr/share/nginx/html