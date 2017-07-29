#!/bin/bash

DIR="/var/www/html/ipplan"

# Check if /var/www/html empty or not
if [ "$(ls -A $DIR)" ]; then
     echo "Enjoy your IPPlan ...!"
else
    echo "Copy IPPlan source to webroot ...!"
    cp -r /usr/src/ipplan /var/www/html/
    chmod 755 /var/www/html
    chown -R apache:apache /var/www/html/ipplan
fi
