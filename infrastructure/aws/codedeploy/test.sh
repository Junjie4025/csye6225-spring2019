#!/bin/bash
sudo service tomcat stop
kill -9 $(lsof -i:8080 |awk '{print $2}' | tail -n 2)
cd ~
url=$(cat mysqlsetting.txt | sed -r 's/.*"(.+)".*/\1/')
mysql -h $url -ucsye6225master -p'csye6225password' < sql.sql
sudo mkdir -p ~/webapp/csye6225/target/src/main/resources
sudo chmod 777 -R ~/webapp/csye6225/target/src/main/resources
