## Docker Big Picture

## Notes

- The major components that make the Docker engine are: the Docker client, the Docker Daemon, containerd, runc. Together, the create and run containers. Docker engine is made of daemon, containerd and runc.
- runc is used to create image
- containerd is sole purpose to manage container lifecycle operations -- start | stop pause | rm ...

## Container commands

- Run docker image: `docker container run -it ubuntu:latest /bin/bash`
- Windows Powershell: `docker container run -it microsoft/powershell:nanoserver pwsh.exe`
- All running containers: `docker container ls`
- Exit from the container without terminating: `Ctrl + PQ`
- Attaching to running containers in Linux: `docker container exec -it container-name/id bash`
- Attaching to running containers in Windows: `docker container exec -it container-name/id pwsh.exe`
- Stop container: `docker container stop container-name/id`
- Remove container: `docker container rm container-name/id`
- Run container with detached and published ports: `docker container run -d --name web1 --publish 8080:8080 test:latest`

## Image commands

- Build an image: `docker image build -t test:latest`
- List all images: `docker image ls`
- Pulling image from registry: `docker image pull <image-name>:<tag>`
- Pulling image from 3rd party registry: `docker image pull gcr.io/"image-name":"image-tag`
- Pulling all images from a repository: `docker image pull -a "image-name"`
- Filter output from image listing: `docker image ls --filter dangling=true`
- Delete images: `docker image prune`
- Delete all images along with unused ones: `docker image -a prune`
- Image filtering options: dangling, before, since, label
- Delete all images: `docker image rm $(docker image ls -q) -f`

## Searching Docker Hub from CLI

- Search in Docker Hub: `docker search nigelpoulton`
- Only official images: `docker search alpine --filter "is-official=true"`
- Images with automated builds: `docker search alpine --filter "is-automated=true"`

## Images and Layers

- Inspect an image: `docker image inspect ubuntu:latest`
- History of an Image: `docker image history ubuntu:latest`
- Some instructions like `ENV`,`EXPOSE`, `CMD`, `ENTRY-POINT` do not result in layers creation
