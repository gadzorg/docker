FROM debian:jessie
#
# Mathieu GOULIN - 12/01/2016 - Version initiale
#
MAINTAINER Gorg Docker Maintainers "roots@asso.gadz.org"


ENV NGINX_VERSION 1.9.9-1~jessie

RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 \
	&& echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" >> /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install -y ca-certificates nginx=${NGINX_VERSION} gettext-base \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 80 443
USER root

CMD ["nginx", "-g", "daemon off;"]
