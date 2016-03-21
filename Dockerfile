# Use latest jboss/base-jdk:7 image as the base
FROM jboss/base-jdk:7

# Set the Jboss7 Environment variable env variable
ENV JBOSS6_VERSION 6.0.1.FINAL
ENV JBOSS_HOME /opt/jboss6

# Add the WildFly distribution to /opt, and make wildfly the owner of the extracted tar content
# Make sure the distribution is available from a well-known place
RUN cd /tmp
RUN wget https://sourceforge.net/projects/jboss/files/JBoss/JBoss-6.0.0.Final/jboss-as-distribution-6.0.0.Final.zip/download
     && unzip -q jboss-as-distribution-6.0.0.Final \
    && mv $usr/local/jboss6.0.1-Final $JBOSS_HOME \
    && rm jboss-as-distribution-6.0.0.Final.zip

# Ensure signals are forwarded to the JVM process correctly for graceful shutdown
ENV LAUNCH_JBOSS_IN_BACKGROUND true

# Expose the ports we're interested in
EXPOSE 8080

# Set the default command to run on boot
# This will boot jboss
CMD ["/opt/jboss6/jboss-as-distribution-6.0.0.Final/bin/run.", "-b", "0.0.0.0"]


