FROM tomcat:8

RUN mkdir /test
WORKDIR /test
RUN apt-get update
RUN apt-get install git -y && apt-get install maven -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd /test/boxfuse-sample-java-war-hello && mvn package
RUN cp /test/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps

EXPOSE 8080

CMD catalina.sh run



