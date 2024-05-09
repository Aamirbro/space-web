
FROM nginx 
copy . .
EXPOSE 80
VOLUME ["/aamir-vol"]
WORKDIR  /
RUN apt-get update -y
RUN apt-get install apache2 systemctl  -y 
RUN mv *  /var/www/html
RUN systemctl restart apache2 -y
