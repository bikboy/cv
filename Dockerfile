FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html /var/www/html/
COPY img/ /var/www/html/img/
COPY style.css /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]