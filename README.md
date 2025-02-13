# Podman Hello


A from-scratch container (podman/docker) image that prints "Hello world!" in a few kilobytes.

The trick is to use [Zig](https://ziglang.org/) to build a static hello world application
that is around 4 KB on x86_64. Look [here](https://github.com/gunchev/zig_test/tree/master/compile_c_cpp) for details.

Yeah, that's it, that's the project - minimal (in size) container hello world image.

Here is how the image compares to the standard hello world:

```
$ podman image ls
REPOSITORY              TAG         IMAGE ID      CREATED         SIZE
localhost/podman-hello  latest      e0aa36629de1  39 minutes ago  8.3 kB
quay.io/podman/hello    latest      83fc7ce1224f  8 months ago    580 kB
```
