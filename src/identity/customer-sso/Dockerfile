FROM rust:1.80 AS builder
WORKDIR /build
COPY Cargo.toml ./
RUN mkdir src && echo "fn main(){}" > src/main.rs && cargo build --release && rm -rf src
COPY src src
RUN touch src/main.rs && cargo build --release

FROM debian:bookworm-slim
WORKDIR /app
RUN groupadd -r app && useradd -r -g app app
COPY --from=builder /build/target/release/customer_sso /app/app
USER app
EXPOSE 50022
ENTRYPOINT ["/app/app"]
