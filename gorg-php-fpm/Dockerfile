FROM debian:jessie
#
# Mathieu GOULIN - 12/01/2016 - Version initiale
#
MAINTAINER Gorg Docker Maintainers "roots@asso.gadz.org"


RUN apt-get update \
	&& apt-get install -y ca-certificates php5-common php5-curl php5-enchant php5-exactimage php5-fpm php5-gd php5-geoip php5-geos php5-gmp php5-gnupg php5-igbinary php5-imagick php5-imap php5-interbase php5-intl php5-json php5-ldap php5-mcrypt php5-mysql php5-pgsql php5-readline php5-recode php5-sqlite php5-xmlrpc php5-xsl \
	&& rm -rf /var/lib/apt/lists/*

USER root

CMD ["usr/sbin/php5-fpm", "--fpm-config", "/etc/php5/fpm/php-fpm.conf"]

