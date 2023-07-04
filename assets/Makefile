build:
	cd src/; \
	cargo rustc --target armv7-unknown-linux-gnueabihf --config target.armv7-unknown-linux-gnueabihf.linker=\"arm-linux-gnueabihf-gcc\" -- -C target-feature=+crt-static
