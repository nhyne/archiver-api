linux_build:
	docker run --rm -it \
		-v "$(PWD)":/home/rust/src \
		-v $(PWD)/docker/cargo-git:/home/rust/.cargo/git \
		-v $(PWD)/docker/cargo-registry:/home/rust/.cargo/registry \
		-v $(PWD)/docker/target:/home/rust/src/target \
		ekidd/rust-musl-builder:nightly-2019-07-08 \
		cargo build --bin archiver_api --release

image: linux_build
	docker build -t archiver_api:latest -f LocalDockerfile .

