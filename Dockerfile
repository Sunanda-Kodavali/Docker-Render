FROM maven:3.9.9-ibm-semeru-23-jammy AS build

COPY . .

RUN mvn clean package -DskipTest

FROM openjdk:24-slim-bullseye

COPY --from=build /target/Docker_Render-0.0.1-SNAPSHOT.jar DockerRender.jar

EXPOSE 8080

CMD ["java", "-jar", "DockerRender.jar"]