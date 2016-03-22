# Use latest jboss/base-jdk:7 image as the base
FROM jboss/base-jdk:7

# Set the Jboss7 Environment variable env variable
ENV JBOSS6_VERSION 6.0.1.FINAL
ENV JBOSS_HOME /opt/jboss6

# Add the WildFly distribution to /opt, and make wildfly the owner of the extracted tar content
# Make sure the distribution is available from a well-known place

RUN curl -o ~/jboss-as-distribution-6.0.0.Final.zip http://sourceforge.net/projects/jboss/files/JBoss/JBoss-6.0.0.Final/jboss-as-distribution-6.0.0.Final.zip/download
RUN unzip ~/jboss-as-distribution-6.0.0.Final.zip -d /usr/local/jboss6/





