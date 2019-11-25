FROM nhyne/rust-musl-builder:nightly-2019-11-16 AS build

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG SCCACHE_BUCKET=nhyne-build-cache
ARG RUSTC_WRAPPER=sccache

ADD . .

RUN sccache --start-server && cargo build --bin archiver-api --release && sccache -s

FROM alpine:3.10.1 as runner

COPY --from=build /home/root/src/target/x86_64-unknown-linux-musl/release/archiver-api /archiver-api

CMD ["./archiver-api"]
