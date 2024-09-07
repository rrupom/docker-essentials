## Essential docker commands

- `docker info`
- `docker version`
- `docker images`
- `docker run --rm -it <image-name>`
- `docker pull wordpress:6.6.1-php8.1-apache`
- `docker run --rm 8080:80 wordpress:6.6.1-php8.1-apache` - expose port 8080 of local host against docker port 80
