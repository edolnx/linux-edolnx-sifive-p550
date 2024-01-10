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
$ git clone https://github.com/cwt/pkgbuild-linux-cwt-starfive-visionfive2.git
$ cd pkgbuild-linux-cwt-starfive-visionfive2
$ makepkg
```

> [!WARNING]
> The Docker building method is deprecated. While the process will run faster,
> it will leave some x86_64 binaries in the kernel source tree. This will cause
> problems later when you want to build any out-of-tree driver.

Alternatively, you can build the kernel on any x86_64 PC via Docker or Podman.
Assuming your userid (`id -u`) is 1000, which is the default id for the first
non-root user on many other Linux distros, follow these steps:

```console
$ git clone https://github.com/cwt/pkgbuild-linux-cwt-starfive-visionfive2.git
$ cd pkgbuild-linux-cwt-starfive-visionfive2/docker
$ podman build -t arch-build .
```

After building the podman or docker image, you can start building the kernel
using the following commands:

```console
$ cd .. # or cd to the directory that you just git clone this repo into.
$ podman run --rm -it \
    -v .:/home/user/pkgbuild-linux-cwt-starfive-visionfive2 \
    --userns=keep-id --user=user arch-build /bin/bash -l
[user@container_id /]$ cd /home/user/pkgbuild-linux-cwt-starfive-visionfive2
[user@container_id pkgbuild-linux-cwt-starfive-visionfive2]$ makepkg
```
