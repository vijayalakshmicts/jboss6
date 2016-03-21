# Use latest jboss/base-jdk:7 image as the base
FROM jboss/base-jdk:7

# Set the Jboss7 Environment variable env variable
ENV JBOSS6_VERSION 6.0.1.FINAL
ENV JBOSS_HOME /opt/jboss6

# Add the Jboss6 download in the path
# Make sure the distribution is available from a well-known place
RUN cd $HOME \
    && curl -O https://sourceforge.net/projects/jboss/files/JBoss/JBoss-6.0.0.Final/jboss-as-distribution-6.0.0.Final.zip/download \
    && unzip -q jboss-as-distribution-6.0.0.Final.zip \
    && mv $HOME/jboss6.0.1-Final $JBOSS_HOME \
    && rm jboss-as-distribution-6.0.0.Final.zip


