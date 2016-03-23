# Use latest jboss/base-jdk:7 image as the base
FROM jboss/base-jdk:7

#Set the Jboss6 Environment  Variable
ENV JBOSS_HOME /opt/jboss/jboss6

# Download the File
# Make sure the File is available from a well-known place
RUN cd $HOME && curl -O http://download.jboss.org/jbossas/6.1/jboss-as-distribution-6.1.0.Final.zip && unzip jboss-as-distribution-6.1.0.Final.zip && mv $HOME/jboss-6.1.0.Final $JBOSS_HOME && rm jboss-as-distribution-6.1.0.Final.zip

# Ensure signals are forwarded to the JVM process correctly for graceful shutdown
ENV LAUNCH_JBOSS_IN_BACKGROUND true

#Expose
EXPOSE 8080 

#CMD to run
CMD ["/opt/jboss/jboss6/bin/run.sh", "-b", "0.0.0.0"]







