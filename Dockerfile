#Pulling base image
FROM amazonlinux

#installing packages, libraries and dependencies
RUN yum install -y vim* && yum install -y httpd*

#making html as a default working directory
WORKDIR /var/www/html

#copying the code/package inside container's working directory
COPY . .

#if code is inside repo, you can add that link here
ADD https://coderepo.com/linktoyourpackage.html

#remove any un-necessary files which got copied from copy command
RUN rm -rf Dockerfile

#exposing port 80 to public for http traffic
EXPOSE 80
