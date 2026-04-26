FROM debian:bookworm-slim AS builder
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential cmake ninja-build pkg-config \
        libboost-all-dev libssl-dev \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /build
COPY CMakeLists.txt ./
COPY src src
RUN cmake -G Ninja -B build -DCMAKE_BUILD_TYPE=Release && cmake --build build --target scada-gateway

FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
        libboost-system1.74.0 libboost-thread1.74.0 libssl3 ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && groupadd -r app && useradd -r -g app app
WORKDIR /app
COPY --from=builder /build/build/scada-gateway /app/scada-gateway
USER app
EXPOSE 50040
ENTRYPOINT ["/app/scada-gateway"]
