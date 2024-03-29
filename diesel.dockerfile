FROM rust:1.38.0-slim AS builder

RUN apt update && \
    apt install -y libpq-dev && \
    rm -rf /var/lib/apt/lists/* && \
    rustup default nightly-2019-09-05 && \
    cargo install diesel_cli --no-default-features --features postgres && \
    rustup toolchain uninstall nightly-x86_64-unknown-linux-gnu && \
    rustup toolchain uninstall 1.38.0-x86_64-unknown-linux-gnu && \
    rustup toolchain uninstall nightly-2019-08-21-x86_64-unknown-linux-gnu

FROM ubuntu:latest AS runner

RUN apt update && \
    apt install -y libpq-dev && \
    rm -rf /var/lib/apt/lists/*

COPY --from=builder /usr/local/cargo/bin/diesel /usr/local/bin/diesel
