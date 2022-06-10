# base image
FROM OPENJDK:8
COPY . /src/java
WORKDIR /src/java
RUN ["javac", "Hello.java"]
ENTRYPOINT ["java", "Hello"]
