# Dockerizer

### What is it?
Simple script + dockerfile combination that sets up Ubuntu enviroment, capable of building and publishing docker images to DockerHub from GitHub URL.

### Requirements
- Docker 

### How to use?
1. ```git clone```
2. ```cd dockerizer/```
3. ```docker build -t dockerizer . ```
4. ```docker run -it -v /var/run/docker.sock:/var/run/docker.sock dockerizer```
5. Follow the instructions

