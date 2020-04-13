FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install git -y && apt-get install maven -y && apt-get install tomcat8 -y && apt-get install default-$
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

RUN cd /boxfuse-sample-java-war-hello && mvn package
RUN cp /boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat8/webapps/

EXPOSE 8080


CMD ["/usr/share/tomcat8/bin/catalina.sh", "run"]


