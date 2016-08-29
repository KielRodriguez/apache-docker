FROM fedora:20
MAINTAINER Kiel Rodriguez Martinez <kr.rdz.20 at gmail dot com>

RUN sudo yum -y install httpd && sudo yum clean all
RUN echo "Apache works" >> /var/www/html/index.html

EXPOSE 80

ADD run-apache.sh /run-apache.sh
RUN chmod -v +x /run-apache.sh

CMD ["/run-apache.sh"]
