linux_build:
	docker run --rm -it \
		-v "$(PWD)":/home/rust/src \
		-v $(PWD)/docker/cargo-git:/home/rust/.cargo/git \
		-v $(PWD)/docker/cargo-registry:/home/rust/.cargo/registry \
		-v $(PWD)/docker/target:/home/rust/src/target \
		ekidd/rust-musl-builder:nightly-2019-09-05 \
		cargo build --bin archiver-api --release

image: linux_build
	docker build -t nhyne/archiver-api:latest -f LocalDockerfile .

clippy:
	cargo clippy -- -D warnings
