FROM debian:squeeze
#
# Mathieu GOULIN - 12/01/2016 - Version initiale
#
MAINTAINER Gorg Docker Maintainers "roots@asso.gadz.org"


ADD dotdeb.gpg /tmp/

RUN echo "deb http://packages.dotdeb.org squeeze all" >> /etc/apt/sources.list \
    && echo "deb-src http://packages.dotdeb.org squeeze all" >> /etc/apt/sources.list \
    && cat /tmp/dotdeb.gpg | apt-key add - \
    && apt-get update \
    && apt-get install -y ca-certificates php5-common php5-curl php5-fpm php5-gd php5-geoip php5-gmp php5-imagick php5-imap php5-intl php5-json php5-ldap php5-mcrypt php5-mysql php5-pgsql php5-recode php5-sqlite php5-xmlrpc php5-xsl \
    && rm -rf /var/lib/apt/lists/*

USER root

EXPOSE 9090

CMD ["usr/sbin/php5-fpm", "--fpm-config", "/etc/php5/fpm/php-fpm.conf"]

