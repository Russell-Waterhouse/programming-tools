FROM ubuntu:latest as build

RUN apt-get update && apt-get install -y wget unzip default-jdk

RUN wget https://github.com/JetBrains/kotlin/releases/download/v1.9.0/kotlin-compiler-1.9.0.zip

RUN unzip kotlin-compiler-1.9.0.zip

COPY test.kt .

COPY Singleton.kt .

RUN ./kotlinc/bin/kotlinc test.kt Singleton.kt -include-runtime -d test.jar

FROM ubuntu:latest as runner

RUN apt-get update && apt-get install -y default-jdk

COPY --from=build test.jar .

ENTRYPOINT ["java", "-jar", "test.jar"]

