FROM openjdk:8-jdk-alpine
ENV jarName="baseproject-0.0.1-SNAPSHOT.jar"
COPY build/libs/$jarName $jarName
ENTRYPOINT java -Duser.timezone=GMT+8 -jar  $jarName
