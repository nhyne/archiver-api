image:
	docker run --rm -it \
		-v "$(PWD)":/home/rust/src \
		-v $(PWD)/docker/cargo-git:/home/rust/.cargo/git \
		-v $(PWD)/docker/cargo-registry:/home/rust/.cargo/registry \
		-v $(PWD)/docker/target:/home/rust/src/target \
		ekidd/rust-musl-builder:nightly \
		cargo build --bin archiver_api --release
