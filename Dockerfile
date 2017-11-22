FROM  idasound/centos7-jdk8

MAINTAINER Brand Idasound "haowang@idasound.com"

RUN mkdir -p  /home/tomcat/

WORKDIR /home/tomcat/
RUN wget http://qx24.cn/apache-tomcat-7.0.82.tar.gz
RUN  tar zxvf apache-tomcat-7.0.82.tar.gz
RUN  rm -rf  apache-tomcat-7.0.82.tar.gz
ENV TIME_ZONE              Asia/Shanghai


ENTRYPOINT ["/home/tomcat/apache-tomcat-7.0.82/bin/startup.sh"]
