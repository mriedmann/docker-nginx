FROM mriedmann/mini-base
MAINTAINER Michael Riedmann <michael_riedmann@live.com>

RUN apk --update add nginx && rm -rf /var/cache/apk/*

# Just to fix Nginx startup
RUN mkdir -p /tmp/nginx/client-body

VOLUME ["/var/log/nginx"]

WORKDIR /etc/nginx
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80 443

ADD etc /etc/nginx

