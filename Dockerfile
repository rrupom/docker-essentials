# 1. Get a Ubuntu system 20.04
# 2. apt-get update
# 3. apt-get install apache2
# 4. service apache2 start
# 5. apt-get install php libapache2-mod-php
#  From this instructions of creating a docker container, the Dockerfile will be below

FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 php libapache2-mod-php -y
RUN rm /var/www/html/index.html
COPY ./index.php /var/www/html/
