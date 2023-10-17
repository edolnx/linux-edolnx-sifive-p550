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
 && pacman -Sc --noconfirm

RUN groupadd cwt \
 && useradd -g cwt -G root -m cwt

ADD makepkg.conf /etc/makepkg.conf
