FROM openjdk
MAINTAINER Dipankar Chatterjee <dipankar.c@hcl.com>
ADD target/DemoApp-1.0.jar DemoApp-1.0.jar
ENTRYPOINT exec java -jar /DemoApp-1.0.jar DemoApp
EXPOSE 8080
