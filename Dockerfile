FROM jboss/base-jdk:8

ARG FUSE_ZIP
ARG FUSE_FOLDER
ARG FUSE_HTTP_LOCATION

RUN cd /opt/jboss/ && \
    curl -O $FUSE_HTTP_LOCATION/$FUSE_ZIP && \
    unzip $FUSE_ZIP -d /opt/jboss/ && \
    ln -s /opt/jboss/$FUSE_FOLDER fuse && \
    rm -rf $FUSE_ZIP && \
    rm -rf /opt/jboss/fuse/quickstarts && \
    rm -rf /opt/jboss/fuse/extras

EXPOSE 8181 8101 1099 44444 61616

VOLUME /opt/jboss/fuse/data
VOLUME /opt/jboss/fuse/deploy

COPY etc/users.properties /opt/jboss/fuse/etc

CMD /opt/jboss/fuse/bin/fuse server
