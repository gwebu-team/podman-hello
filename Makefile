hello-image: hello
	podman build --platform linux/amd64 --tag podman-hello .

hello: hello.c
	zig cc -Wall -Os -s -o hello hello.c -target x86_64-linux
