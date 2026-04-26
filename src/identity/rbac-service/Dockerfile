FROM gradle:8.10-jdk21 AS builder
WORKDIR /build
COPY build.gradle.kts settings.gradle.kts ./
COPY src src
RUN gradle bootJar --no-daemon

FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
RUN addgroup -S app && adduser -S app -G app
COPY --from=builder /build/build/libs/*.jar /app/app.jar
USER app
EXPOSE 50024
ENTRYPOINT ["java","-jar","/app/app.jar"]
