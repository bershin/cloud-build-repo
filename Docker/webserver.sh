#!/bin/bash
sudo apt install telnet -y
sudo apt install nginx -y
sudo systemctl enable nginx
sudo chmod -R 755 /var/www/html/
HOSTNAME=$(hostname)
echo "<!DOCTYPE html><html><head> <title>Web server</title></head><body style='background-color:powderblue;'> <h1>Welcome to BershiCorp - WebVM App1</h1> <p><strong>VM Hostname</strong>: $HOSTNAME</p> <p><strong>VM IP Address</strong>: $(hostname -i)</p> <p><strong>Application Version</strong>: V1</p> <p>Google Cloud Platform - Demo</p></body></html>" | sudo tee /var/www/html/index.html
