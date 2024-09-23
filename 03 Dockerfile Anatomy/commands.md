## Useful Docker Commands

- `docker run --rm -it -p 8080:80 -d <image-name` => back to default terminal. -d menas detached
- `docker stop <container-id>` => stop the docker container
- `docker run --rm -it -p 8080:80 -d <image-name> apachectl -D FOREGROUND` => monitor for apache in the foreground
- `docker exec "container-id" apachectl -D FOREGROUND` => run command in the container
- `docker container prune` => delete all the stopped containers
- `docker rmi "image-id"` => delete the image
- `docker rmi $(docker images -q)` => delete all the images
- `docker ps -a` => show all containers
- `docker rm "container-id` => delete the container
- `docker run --rm -it -p 3000:4000 -e PORT=4000 rupom/node-app` => passing environment variable
