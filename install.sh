#!/bin/bash

cd /opt/jboss

unzip /tmp/jboss-fuse-full-6.2.0.redhat-133.zip
chmod a+x jboss-fuse-6.2.0.redhat-133/bin/*
ln -s /opt/jboss/jboss-fuse-6.2.0.redhat-133 fuse
