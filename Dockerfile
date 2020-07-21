FROM centos 
#  using  centos base image  here i will be installing  httpd 
MAINTAINER  ashutoshh@linux.com
RUN  yum  install  httpd  -y 
WORKDIR  /var/www/html/
#  chaning directort during buidl time  workdir is same as  cd  command 
ADD  .  .
#   source  Destination 
EXPOSE 80 
#  default  httpd  port
ENTRYPOINT  httpd  -DFOREGROUND 
#  start  web server  as default  process
