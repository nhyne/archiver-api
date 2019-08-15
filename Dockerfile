FROM ekidd/rust-musl-builder:nightly-2019-07-08 AS build

ADD . /home/rust/src

RUN sudo chown -R rust:rust /home/rust/src

RUN cargo build --bin archiver_api --release

FROM alpine:3.10.1 as runner

COPY --from=build /home/rust/src/target/x86_64-unknown-linux-musl/release/archiver_api /archiver_api

CMD ["./archiver_api"]
