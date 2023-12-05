FROM amazonlinux
RUN yum install -y vim* && yum install -y httpd*
WORKDIR /var/www/html
COPY . .
ADD https://coderepo.com/linktoyourpackage.html
RUN rm -rf dockerfile
EXPOSE 80
