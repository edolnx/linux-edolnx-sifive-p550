FROM archlinux:latest

RUN pacman -Syu --noconfirm \
 && pacman -S --needed --noconfirm \
      clang \
      lld \
      make \
      autoconf \
      automake \
      bison \
      flex \
      git \
      python \
      openssh \
      bc \
      libelf \
      pahole \
      cpio \
      perl \
      tar \
      xz \
      vim \
      fakeroot \
      patch \
      llvm \
      pacman-contrib \
      riscv64-linux-gnu-gcc \
      riscv64-linux-gnu-binutils \
      riscv64-linux-gnu-glibc \
 && pacman -Sc --noconfirm

RUN groupadd user \
 && useradd -g user -G root -m user

WORKDIR /build/

ADD makepkg.conf /etc/makepkg.conf
