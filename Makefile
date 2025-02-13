SHELL:=/bin/bash # Use bash syntax, mitigates dash's printf on Debian


.PHONY: help
help:
	@echo
	@echo "▍Help"
	@echo "▀▀▀▀▀▀"
	@echo
	@echo "Available targets:"
	@echo "    all, hello-image:   Create source distribution package in dist/."
	@echo "    hello:              Build the x86_64 static hello-world binary."
	@echo
	@echo "    clean:              Clean all generated files."
	@echo


all: hello-image


.PHONY: hello-image
hello-image: hello
	podman build --platform linux/amd64 --tag podman-hello .


hello: hello.c
	zig cc -Wall -Os -s -o hello hello.c -target x86_64-linux


.PHONY: clean
clean:
	rm hello
	podman rm localhost/podman-hello
