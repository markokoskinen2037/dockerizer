#!/bin/bash

echo Welcome to GitHub Dockerizer v1.0
echo 
echo This script needs the following information:
read -p "Github: " url
read -p "Desired image name: " imagename
read -p "DockerHub-username: " username

rm -rf src/
git clone $url src
cd src
docker build -t $imagename .
docker tag $imagename $username/$imagename
docker login
docker push $username/$imagename
echo Script finished!