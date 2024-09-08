```Dockerfile
# Version 1.0
# FROM ubuntu:20.04
# ARG DEBIAN_FRONTEND=noninteractive
# RUN apt-get update && apt-get install \
#     apache2 php \
#     libapache2-mod-php -y
# RUN rm /var/www/html/index.html
# COPY ../index.php /var/www/html/

# By using CMD directive, container will run CMD command after startup
# FROM ubuntu:20.04
# ARG DEBIAN_FRONTEND=noninteractive
# RUN apt-get update && apt-get install \
#     apache2 php \
#     libapache2-mod-php -y
# RUN rm /var/www/html/index.html
# COPY ../index.php /var/www/html/
# CMD apache2ctl -D FOREGROUND

# Another way to do this. Shell format
# This container will by default watching the process /bin/bash
# FROM ubuntu:20.04
# ARG DEBIAN_FRONTEND=noninteractive
# RUN apt-get update && apt-get install \
#     apache2 php \
#     libapache2-mod-php -y
# RUN rm /var/www/html/index.html
# COPY ../index.php /var/www/html/
# ENTRYPOINT apache2ctl -D FOREGROUND

# exec format
# LABEL is also a layer
FROM ubuntu:20.04
LABEL version=1.0
LABEL maintainer=Rupom
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install \
    apache2 php \
    libapache2-mod-php -y
RUN rm /var/www/html/index.html
COPY ../index.php /var/www/html/
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]
```
