1) Create Swift project
2) Create Dockerfile
3) Create swift package "swift package init --type executable"
4) docker build -t swift-docker-example .
5) docker run --rm swift-docker-example
6) for bash/terminal - docker run -it --rm swift-docker-example bash

Clean / Remove cache or build - rm -rf .build
Rebuild - swift build -c release


For Manual read docker folder

cd ./.build/release/myapp

list all docker image
docker images
docker rmi abc123456789

or

docker rmi swift-docker-example:latest

or

docker rmi -f abc123456789

* Delete unused images
docker image prune

* Delete all unused images, not just dangling ones
docker image prune -a

All active images
docker ps -a

Stop active image

docker stop <image_id>

Remove image

docker rm d3e286e4baff

* Remove All Stopped Containers

docker container prune

