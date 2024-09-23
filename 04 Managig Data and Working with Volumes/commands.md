## Useful Commands

- Stop all containers: "docker container stop `docker ps -q` "
- Delete all container including stopped containers: "docker container rm `docker ps -aq`"
- Build with different dockerfile: `docker build -t rupom/react-docker-dev . --file dev.Dockerfile`
- Run container with volume mounting: `docker run -v ./src:/home/project/src -p 5173:5173 rupom/react-docker-dev`
