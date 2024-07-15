
FROM nginx 
copy . .
EXPOSE 80
VOLUME ["/aamir-vol"]
WORKDIR  /
RUN yum update -y
RUN yum install httpd -y 
RUN mv  *  /var/www/html
RUN systemctl restart httpd
