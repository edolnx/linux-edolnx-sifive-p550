# Linux Kernel for StarFive VisionFive 2 Arch Linux Image

The `PKGBUILD` file in this repository is used to build the Linux kernel for
the StarFive VisionFive 2 board running Arch Linux. The kernel source code is
available at https://github.com/starfive-tech/linux/. The configuration is
based on the previous version of
[cwt images](https://forum.rvspace.org/t/arch-linux-image-for-visionfive-2/1459).

## Building the Kernel

The kernel can be built natively on the VisionFive 2 itself, just like any
other Arch package. Follow these steps to build the kernel:

```console
$ git clone https://github.com/cwt-vf2/linux-cwt-starfive-vf2.git
$ cd linux-cwt-starfive-vf2
$ makepkg
```

Alternatively, you can build the kernel on any x86_64 PC via Docker or Podman.
Assuming your userid (`id -u`) is 1000, which is the default id for the first
non-root user on many other Linux distros, follow these steps:

```console
$ git clone https://github.com/cwt-vf2/linux-cwt-starfive-vf2.git
$ cd linux-cwt-starfive-vf2
$ podman build -t vf2-arch-build docker
```

After building the podman or docker image, you can start building the kernel
using the following commands:

```console
$ podman run --rm -it -v ./:/build/ --userns=keep-id --user=user vf2-arch-build sh -c "CROSS_COMPILE='riscv64-linux-gnu-' makepkg -s --config /build/docker/makepkg.conf"
```
