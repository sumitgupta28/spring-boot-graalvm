## build
FROM gradle:jdk11 AS builder
WORKDIR /home/root/build/
COPY . .
RUN gradle build -x test

# copy only the built jar and nothing else
FROM oracle/graalvm-ce:20.0.0-java11
WORKDIR /home/root/spring-boot-graalvm-demo/
COPY --from=builder /home/root/build/builddocker/libs/demo-0.0.1-SNAPSHOT.jar /home/root/spring-boot-graalvm-demo/demo.jar
EXPOSE  8080
ENTRYPOINT ["java","-jar","demo.jar"]