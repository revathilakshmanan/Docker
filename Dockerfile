FROM ubuntu:18.04
RUN apt update -y && apt install wget -y
ADD apt install -y openjdk-8-jdk 
WORKDIR /opt
ADD apache-tomcat-8.5.63.tar.gz
COPY IL2.war apache-tomcat-8.5.63/webapss
CMD ["./opt/apache-tomcat-8.5.63/bin/catalina.sh","run"]
