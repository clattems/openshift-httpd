FROM registry.redhat.io/rhel8/httpd-24
USER root 
# Add application sources
ADD app-src/index.html /var/www/html/index.html
RUN yum -y update
# Run script uses standard ways to run the application
EXPOSE 80
CMD run-httpd
