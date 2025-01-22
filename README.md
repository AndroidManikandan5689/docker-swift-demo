# Docker Swift Demo

This repository demonstrates how to create and run a Swift project inside a Docker container. Follow the steps below to set up, build, and manage your Dockerized Swift project.

---

## Steps to Set Up and Run the Project

### 1. Create a Swift Project

Initialize a Swift package with the following command:
```bash
swift package init --type executable
```

### 2. Create a Dockerfile

Write a `Dockerfile` to define your container. An example is provided in the repository.

### 3. Build the Docker Image

Build the Docker image for your Swift project:
```bash
docker build -t swift-docker-example .
```

### 4. Run the Docker Container

Run the container using the built image:
```bash
docker run --rm swift-docker-example
```

### 5. Access the Container Bash/Terminal

To open a terminal session inside the container, use:
```bash
docker run -it --rm swift-docker-example bash
```

---

## Clean or Rebuild the Swift Project

### Clean/Remove Cache or Build Files

To remove the build directory:
```bash
rm -rf .build
```

### Rebuild the Project

Rebuild the Swift project in release mode:
```bash
swift build -c release
```

---

## Managing Docker Images and Containers

### List All Docker Images
```bash
docker images
```

### Delete a Docker Image

#### Delete by Image ID:
```bash
docker rmi <IMAGE_ID>
```

#### Delete by Repository and Tag:
```bash
docker rmi swift-docker-example:latest
```

#### Force Delete:
```bash
docker rmi -f <IMAGE_ID>
```

### Delete Unused Docker Images

#### Delete Dangling Images:
```bash
docker image prune
```

#### Delete All Unused Images:
```bash
docker image prune -a
```

---

## Managing Docker Containers

### List All Active and Stopped Containers
```bash
docker ps -a
```

### Stop an Active Container
```bash
docker stop <CONTAINER_ID>
```

### Remove a Container
```bash
docker rm <CONTAINER_ID>
```

### Remove All Stopped Containers
```bash
docker container prune
```

---

## Additional Notes

For manual reads or detailed instructions, navigate to the Docker folder:
```bash
cd ./.build/release/myapp
```

