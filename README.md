# Linux Kernel for SiFive HiFive P550 Premier Arch Linux Image

The `PKGBUILD` file in this repository is used to build the Linux kernel for
the SiFive HiFive P550 Premier board running Arch Linux. The kernel source
code is available at https://github.com/sifive/riscv-linux using the branch
`dev/sholland/hifive-premier-p550-amdgpu`. The configuration is based on the 
configuration that ships with the default OpenEmbedded image but enhanced to
support zstd and xz initramfs and firmware images for broad OS compatibility.
This also enables the radeon, amdgpu, and nouveau drivers. The patches to
enable the I2C interface on the 40pin GPIO header are also included. There
are also additional filesystems enabled (xfs, btrfs) as modules. Use of an
initramfs is strongly recommended.

## Notes on video support

This kernel enables the Integrated Display Controller and GPU (iGPU). This
has some unfavorable side effects: 
 - There is a phantom 4K monitor
 - The iGPU is always the primary
 - Frequenly applications spawn on the phantom monitor
 - Wayland doesn't work correctly
 - 3D Accelleration has problems since the iGPU is not supported by mainline Mesa currently
If your goal is to use a Dedicated GPU in the PCI-express slot (dGPU)
then I suggest trying the dgpu variant of this kernel package at
    https://github.com/edolnx/linux-edolnx-sifive-p550-dgpu
That package does not have the iGPU drivers enabled (they cannot be built as modules).

## Building the Kernel

The kernel can be built natively on the P550 Premier itself, just like any
other Arch package. Follow these steps to build the kernel:

```console
$ git clone https://github.com/edolnx/linux-edolnx-sifive-p550.git
$ cd linux-edolnx-sifive-p550
$ makepkg
```

