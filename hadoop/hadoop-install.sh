#!/bin/bash

echo "export HADOOP_HOME='/usr/local/Cellar/hadoop/*'" >> ~/.bash_profile
echo "export HADOOP_OPTS='-Djava.security.krb5.realm=OX.AC.UK -Djava.security.krb5.kdc=kdc0.ox.ac.uk:kdc1.ox.ac.uk'"  >> ~/.bash_profile
source ~/.bash_profile

echo core-site.xml > $HADOOP_HOME/libexec/etc/hadoop/core-site.xml
echo hdfs-site.xml > $HADOOP_HOME/libexec/etc/hadoop/hdfs-site.xml
echo mapred-site.xml > $HADOOP_HOME/libexec/etc/hadoop/mapred-site.xml
