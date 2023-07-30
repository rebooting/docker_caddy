#!/bin/sh

#get architechture of the system

arch=$(uname -m)
#check if it's amd64 or apple m1
if [ "$arch" = "x86_64" ]; then
    echo "Installing for amd64"
    wget https://github.com/caddyserver/caddy/releases/download/v2.6.4/caddy_2.6.4_linux_amd64.tar.gz -O caddy.tar.gz && \
    tar -xzf caddy.tar.gz && \
    rm caddy.tar.gz
     
elif [ "$arch" = "aarch64" ]; then
    echo "Installing for arm64"
    wget https://github.com/caddyserver/caddy/releases/download/v2.6.4/caddy_2.6.4_linux_arm64.tar.gz -O caddy.tar.gz && \
    tar -xzf caddy.tar.gz && \
    rm caddy.tar.gz 
else
    echo "Unsupported architecture"
    exit 1
fi

    