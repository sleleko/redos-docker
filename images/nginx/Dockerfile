FROM registry.red-soft.ru/ubi7/ubi-minimal
MAINTAINER Sergey S. Leleko <w@leleko.ru>
RUN dnf install -y nginx

#COPY ./nginx.conf /etc/nginx/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
