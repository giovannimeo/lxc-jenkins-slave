#!/bin/sh

rm -f /home/odp/jenkinsslave/slave.jar
route add default gw 10.0.3.1
wget https://jenkins.opendaylight.org/controller/jnlpJars/slave.jar -O /home/odp/jenkinsslave/slave.jar --no-check-certificate
su odp - -c 'java -jar /home/odp/jenkinsslave/slave.jar'
