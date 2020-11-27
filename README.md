# spring-boot-graalvm
Demo application runs Spring Boot Application using GraalVm

# to run the application run below docker commands. 

build the image
```
docker build -t spring-boot-grallvm-demo .
```
run the image

```
docker run -p 8080:8080 spring-boot-grallvm-demo .
```

Access application
```
http://<<host>>:8080/demo/hello
```
