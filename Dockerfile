#fetch java8 as base image
FROM openjdk:8
MAINTAINER Paresh Bhavsar <paresh.bhavsar@clairvoyantsoft.com>
# to find out mount point information in running container - docker inspect -f {{.Mounts}} e0b6ecff6cd9
VOLUME ["/tmp","/var/log"]
ADD target/helloworld-ws-1.0-SNAPSHOT.jar app.jar
EXPOSE 8090
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java", "-jar", "app.jar"]