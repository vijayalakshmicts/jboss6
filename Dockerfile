# Use latest jboss/base-jdk:7 image as the base
FROM jboss/base-jdk:7

#Environment Variable
ENV JBOSS_HOME /opt/jboss/jboss6

# Download the File
RUN cd $HOME && curl -O http://download.jboss.org/jbossas/6.1/jboss-as-distribution-6.1.0.Final.zip && unzip jboss-as-distribution-6.1.0.Final.zip && mv $HOME/jboss-as-distribution-6.1.0.Final $JBOSS_HOME && rm jboss-as-distribution-6.1.0.Final.zip



#Expose
EXPOSE 8080 9990

#CMD to run
CMD /opt/jboss/jboss6/bin/run.sh -b 0.0.0.0







