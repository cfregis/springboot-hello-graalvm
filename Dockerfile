# Build Stage
FROM ghcr.io/graalvm/graalvm-community:21.0.2-ol9-20240116 AS builder
WORKDIR /app
COPY . .
RUN ./mvnw native:compile -Pnative

# Runtime Stage
EXPOSE 8080
ENTRYPOINT ["/app/target/graalvmdemo"]