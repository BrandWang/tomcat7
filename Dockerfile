FROM  idasound/centos7-jdk8

MAINTAINER Brand Idasound "haowang@idasound.com"

RUN mkdir -p  /jboss/logs/jboss6.2/
WORKDIR /jboss
RUN wget http://qx24.cn/jboss-eap-6.2.0.zip
RUN unzip jboss-eap-6.2.0.zip
RUN rm -rf jboss-eap-6.2.0.zip
ENV TIME_ZONE              Asia/Shanghai


ENTRYPOINT ["/jboss/jboss-eap-6.2/bin/standalone.sh","-Duser.timezone=GMT+08","-Dfile.encoding=UTF-8","-Djboss.bind.address=0.0.0.0"]
