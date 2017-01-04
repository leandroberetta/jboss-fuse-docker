FROM jboss/base-jdk:8

COPY jboss-fuse-full-6.2.0.redhat-133.zip /tmp
COPY install.sh /opt/jboss/install.sh

RUN /opt/jboss/install.sh

EXPOSE 8181 8101 1099 44444 61616

VOLUME /opt/jboss/fuse/data
VOLUME /opt/jboss/fuse/deploy
#VOLUME /opt/jboss/fuse/etc

COPY etc/users.properties /opt/jboss/fuse/etc

CMD /opt/jboss/fuse/bin/fuse server
