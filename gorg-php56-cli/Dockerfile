FROM php:5.6-cli
#
# Mathieu GOULIN - 12/01/2016 - Version initiale
#
MAINTAINER Gorg Docker Maintainers "roots@asso.gadz.org"


RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        openssh-server \ 
        && docker-php-ext-install -j$(nproc) iconv mcrypt \
        && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
        && docker-php-ext-install -j$(nproc) gd

# Enable login as www-data
RUN /usr/bin/chsh -s /bin/bash www-data

# Add startup ssh script
ADD startup.sh /

EXPOSE 22
CMD ["/startup.sh"]
