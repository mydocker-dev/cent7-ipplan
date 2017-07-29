FROM php:7.0-apache
RUN apt-get -y install wget && \
    cd /tmp/ && \
    wget http://iptrack.sourceforge.net/ipplan.tar.gz && \
    tar xzvf ipplan.tar.gz -C /usr/src/ && \
    rm -rf /tmp/ipplan.tar.gz*
ADD ./conf.d/ipplan_initialize.sh /ipplan_initialize.sh
RUN chmod -v +x /ipplan_initialize.sh

