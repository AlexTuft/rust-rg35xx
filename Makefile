build:
	docker build -t rust-rg35xx .
start: build
	docker run -it --rm -v "$(pwd)":/root/workspace/src rust-rg35xx

