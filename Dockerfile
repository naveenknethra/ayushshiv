# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app
COPY mvn pom.xml ./
RUN ./mvn dependency:resolve

COPY src ./src

CMD ["./mvnw", "spring-boot:run"]
