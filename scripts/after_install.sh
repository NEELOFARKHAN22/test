#!/bin/bash
# after install file


app_dir="/var/www/html/admin"
current_dir="/opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive"

cd "$current_dir"

sudo chown -R ubuntu:ubuntu "$current_dir"


if [ -L "$app_dir" ]; then
    sudo unlink "$app_dir"
fi

sudo ln -s "$current_dir" "$app_dir"
