# Podman Hello


A from-scratch container (podman/docker) image that prints "Hello world!" in a few kilobytes.

The trick is to use [Zig](https://ziglang.org/) to build a static hello world application
that is around 4 KB on x86_64. Look [here](https://github.com/gunchev/zig_test/tree/master/compile_c_cpp) for details.

Yeah, that's it, that's the project - minimal (in size) container hello world image.
