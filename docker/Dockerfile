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
 && pacman -Sc --noconfirm

RUN groupadd user \
 && useradd -g user -G root -m user

ADD makepkg.conf /etc/makepkg.conf
