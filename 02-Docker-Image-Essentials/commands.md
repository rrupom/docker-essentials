## Useful Commands

- `docker run --rm -it ubuntu:20.04` => run ubuntu docker container in interactive mode qnd delete container when stopped
- `uname -a` => linux kernel description
- `control group` `namespace`
- `apt-get update` => update the software list
- `apt-get install apache2` => install apache2
- `top` => currently running services
- `service apache2 start` => start apache2 service
- `/etc` folder is for configuration
- `/etc/apache2/apache2.conf` => configuration file for apache2
- `/var/www` => root directory for apache2
- `docker cp ~/index.php d42fe469cfa3:/var/www/html` => `~/index.php` is the file location in the host and `d42fe469cfa3:/var/www/html` is the location for container
- `docker cp /mnt/e/docker/index.php d42fe469cfa3:/var/www/html/` => incase of wsl
- `docker run --rm -it -p 8080:80 ubuntu:20.04` => run the ubuntu

## Steps to make a Ubuntu system run PHP:

- Get a Ubuntu system 20.04
- apt-get update
- apt-get install apache2
- service apache2 start
- apt-get install libapache2-mod-php
-
