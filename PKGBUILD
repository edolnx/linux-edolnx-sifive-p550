# Maintainer: Chaiwat Suttipongsakul <cwt@bashell.com>

pkgbase=linux-cwt-6.6-starfive-vf2
_variant=cwt #6.6-VF2-xxx-x
pkgver=5.12.0
epoch=22 #Based on cwt image version
pkgrel=1
_tag=JH7110_VF2_6.6_v${pkgver}
_desc='Linux 6.6.x (-cwt) for StarFive RISC-V VisionFive 2 Board'
_srcname=linux-$_tag
_3rdpart=soft_3rdpart-$_tag
url="https://github.com/starfive-tech/linux/"
arch=(riscv64)
license=('GPL2')
makedepends=(bc libelf pahole cpio perl tar xz gcc)
options=('!strip')
source=("https://github.com/starfive-tech/linux/archive/refs/tags/${_tag}.tar.gz"
  'linux-01-riscv-zba_zbb.patch'
  'linux-02-eswin_6600u-llvm.patch'
  'linux-03-eswin_6600u-cast_null_as_unsigned_int.patch'
  'linux-04-fix_broken_gpu-drm-i2c-tda998x.patch'
  'linux-05-fix_img_gpu_secondary_notintermediate_conflict.patch'
  'linux-06-fix_drm_img_rogue_buffer_overflow.patch'
  'linux-07-fix_starfive_v4l2_for_6.6_kernel.patch'
  'config'
  'linux.preset'
  '90-linux.hook'
  "${_3rdpart}.tar.gz::https://github.com/starfive-tech/soft_3rdpart/archive/refs/tags/${_tag}.tar.gz"
  'soft_3rdpart-00-correct_kernel_source_dir.patch'
  'soft_3rdpart-01-use_clang_for_llvm.patch'
  'soft_3rdpart-modules.conf'
  '91-soft_3rdpart.hook'
  '91-soft_3rdpart.rules')

sha256sums=('050391bf5fcfe3c9ed84737f0a4fe0ad3a35bd6b4eec6d6b490dd3ed1c188f22'
            '963d4d223a225909b2fe34f68a41859dcfba83fa0191566d492d713ce3526f85'
            'bcd1f14392af6adce2760c36a7d1b631c60a4f590bf1241934c401187ba1b40e'
            'af7b07379df72053a5769706015574d520a6bd93f7566567d5f4b2b19aca3e3d'
            'ca3faa917b3592ecd2b1e38f6f3821d97e9e664752b93ce67e0ebd23ff83695a'
            '4b06e7046e238795ef19dc46d8e339d6de1d554183d2101d7df8bd1c2c68c9ad'
            'c90ef5ae2edf595497e23050b6680ca15b1cf399fc85a322c1b3bed11dbfb368'
            'd6ec3a247ab996553871532b3826b5005664e9234434468f6dc823ded5daff78'
            '7b4b067f7bd90e5bd32b9b646b289d0b9aca56d60e45602b0908b661be93981a'
            '7601eb46dec607aa3e66bd756db8080302ef58b35cc35dd124e14c0bea2a8cb1'
            'b137c71c1df6c58947e3b06767dec24b9efd05a81749ccff13b083a9d0d12d55'
            '63fc05b6cedc9eed445adcfe39c5f2c8d2ed46049f626212e31fd87bdba6f9e6'
            '2492020565e8e6157876c2bee48af32dd3fc7967bd418fe6d2d9d9ea0bb72bf1'
            '800e2ca5970c1869282f99f19994c7ad2cbb05a6f3e059d692e30746f2c9b577'
            'e3a433213762785a64af39f22cc6a82f9717c8eb3d27b846b20e21f290eb965c'
            'c778f0af03eca8c425936198798f2b2037e5f63d89b0155e3da42f7983dfa0c6'
            '3d65589915b56de000ae7c93f5d7fbc9cf747891a45b69559ed92e03b95f692b')


prepare() {
  cd $_srcname

  local src
  for src in $(ls ../linux-*.patch); do
    echo "Applying patch $src..."
    patch -Np1 <"../$src"
  done

  echo "Setting version..."
  echo "-${_variant}" >localversion.10-variant
  echo "-${pkgver}" >localversion.20-pkgver
  echo "-$pkgrel" >localversion.30-pkgrel

  echo "Setting config..."
  cp ../config .config
  make -j $(nproc) ARCH=riscv CC="${CROSS_COMPILE:-}gcc -mcpu=sifive-u74 -mtune=sifive-7-series" olddefconfig
  cp .config ../../config.new

  make -j $(nproc) ARCH=riscv CC="${CROSS_COMPILE:-}gcc -mcpu=sifive-u74 -mtune=sifive-7-series" -s kernelrelease >version
  echo "Prepared $pkgbase version $(<version)"

  cd $srcdir/$_3rdpart

  local src
  for src in $(ls ../soft_3rdpart-*.patch); do
    echo "Applying patch $src..."
    patch -Np1 <"../$src"
  done
}

build() {
  cd $_srcname
  make -j $(nproc) ARCH=riscv CC="${CROSS_COMPILE:-}gcc -mcpu=sifive-u74 -mtune=sifive-7-series" all

  # JPU
  cd $srcdir/$_3rdpart/codaj12/jdi/linux/driver
  make -j $(nproc) ARCH=riscv CC="${CROSS_COMPILE:-}gcc -mcpu=sifive-u74 -mtune=sifive-7-series" KERNELDIR=$srcdir/$_srcname

  # VENC
  cd $srcdir/$_3rdpart/wave420l/code/vdi/linux/driver
  make -j $(nproc) ARCH=riscv CC="${CROSS_COMPILE:-}gcc -mcpu=sifive-u74 -mtune=sifive-7-series" KERNELDIR=$srcdir/$_srcname

  # VDEC
  cd $srcdir/$_3rdpart/wave511/code/vdi/linux/driver
  make -j $(nproc) ARCH=riscv CC="${CROSS_COMPILE:-}gcc -mcpu=sifive-u74 -mtune=sifive-7-series" KERNELDIR=$srcdir/$_srcname
}

_package() {
  pkgdesc="The $_desc kernel and modules"
  depends=(coreutils kmod mkinitcpio)
  optdepends=('wireless-regdb: to set the correct wireless channels of your country'
    'linux-firmware: firmware images needed for some devices')
  provides=("linux=${pkgver}" "WIREGUARD-MODULE")
  conflicts=('linux')

  cd $_srcname
  local kernver="$(<version)"
  local modulesdir="$pkgdir/usr/lib/modules/$kernver"

  echo "Installing boot image..."
  install -Dm644 "arch/riscv/boot/Image.gz" "$modulesdir/vmlinuz"
  install -Dm644 "arch/riscv/boot/Image.gz" "$pkgdir/boot/vmlinuz"

  echo "Installing modules..."
  make -j $(nproc) ARCH=riscv INSTALL_MOD_PATH="$pkgdir/usr" INSTALL_MOD_STRIP=1 modules_install

  echo "Installing dtbs..."
  make -j $(nproc) ARCH=riscv INSTALL_DTBS_PATH="$pkgdir/usr/share/dtbs/$kernver" dtbs_install
  make -j $(nproc) ARCH=riscv INSTALL_DTBS_PATH="$pkgdir/boot/dtbs/" dtbs_install

  # remove build links
  rm "$modulesdir"/build

  install -Dm644 ../linux.preset "${pkgdir}/etc/mkinitcpio.d/linux.preset"
  install -Dm644 ../90-linux.hook "${pkgdir}/usr/share/libalpm/hooks/90-linux.hook"
}

_package-soft_3rdpart() {
  pkgdesc="The soft third part modules for the $_desc kernel"
  depends=('img-gpu-vf2=1.19.6345021')
  license=('proprietary')

  echo "Installing Soft 3rd Part..."

  cd $_srcname
  local kernver="$(<version)"
  local modulesdir="$pkgdir/usr/lib/modules/$kernver"
  local _mod_extra="$modulesdir/extra"

  #JPU
  cd $srcdir/$_3rdpart/codaj12/jdi/linux/driver
  install -Dm644 jpu.ko "$_mod_extra/jpu.ko"
  $srcdir/$_srcname/scripts/sign-file sha1 \
    $srcdir/$_srcname/certs/signing_key.pem \
    $srcdir/$_srcname/certs/signing_key.x509 \
    $_mod_extra/jpu.ko
  xz --lzma2=dict=2MiB -f $_mod_extra/jpu.ko

  # VENC
  cd $srcdir/$_3rdpart/wave420l/code/vdi/linux/driver
  install -Dm644 venc.ko "$_mod_extra/venc.ko"
  $srcdir/$_srcname/scripts/sign-file sha1 \
    $srcdir/$_srcname/certs/signing_key.pem \
    $srcdir/$_srcname/certs/signing_key.x509 \
    $_mod_extra/venc.ko
  xz --lzma2=dict=2MiB -f $_mod_extra/venc.ko
  install -Dm644 $srcdir/$_3rdpart/wave420l/firmware/monet.bin "${pkgdir}/usr/lib/firmware/monet.bin"
  install -Dm644 $srcdir/$_3rdpart/wave420l/code/cfg/encoder_defconfig.cfg "${pkgdir}/usr/lib/firmware/encoder_defconfig.cfg"

  # VDEC
  cd $srcdir/$_3rdpart/wave511/code/vdi/linux/driver
  install -Dm644 vdec.ko "$_mod_extra/vdec.ko"
  $srcdir/$_srcname/scripts/sign-file sha1 \
    $srcdir/$_srcname/certs/signing_key.pem \
    $srcdir/$_srcname/certs/signing_key.x509 \
    $_mod_extra/vdec.ko
  xz --lzma2=dict=2MiB -f $_mod_extra/vdec.ko
  install -Dm644 $srcdir/$_3rdpart/wave511/firmware/chagall.bin "${pkgdir}/usr/lib/firmware/chagall.bin"

  # HiFi4
  cd $srcdir/$_3rdpart/HiFi4
  install -Dm644 sof-vf2.ri "${pkgdir}/usr/lib/firmware/sof/sof-vf2.ri"
  install -Dm644 sof-vf2-wm8960-aec.tplg "${pkgdir}/usr/lib/firmware/sof/sof-vf2-wm8960-aec.tplg"
  install -Dm644 sof-vf2-wm8960-mixer.tplg "${pkgdir}/usr/lib/firmware/sof/sof-vf2-wm8960-mixer.tplg"
  install -Dm644 sof-vf2-wm8960.tplg "${pkgdir}/usr/lib/firmware/sof/sof-vf2-wm8960.tplg"

  install -Dm644 $srcdir/$_3rdpart/codaj12/LICENSE.txt "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
  install -Dm644 $srcdir/soft_3rdpart-modules.conf "${pkgdir}/etc/modprobe.d/soft_3rdpart-modules.conf"
  install -Dm644 $srcdir/91-soft_3rdpart.hook "${pkgdir}/usr/share/libalpm/hooks/91-soft_3rdpart.hook"
  install -Dm644 $srcdir/91-soft_3rdpart.rules "${pkgdir}/etc/udev/rules.d/91-soft_3rdpart.rules"
}

_package-headers() {
  pkgdesc="Headers and scripts for building modules for the $_desc kernel"
  depends=(pahole)
  provides=("linux-headers=${pkgver}")
  conflicts=('linux-headers')

  cd $_srcname
  local builddir="$pkgdir/usr/lib/modules/$(<version)/build"

  echo "Installing build files..."
  install -Dt "$builddir" -m644 .config Makefile Module.symvers System.map version
  install -Dt "$builddir/kernel" -m644 kernel/Makefile
  install -Dt "$builddir/arch/riscv" -m644 arch/riscv/Makefile
  cp -t "$builddir" -a scripts

  # required when DEBUG_INFO_BTF_MODULES is enabled
  cp --parents -r -t "$builddir/" tools/bpf/resolve_btfids

  echo "Installing VDSO files..."
  cp -a --parents -r -t "$builddir" arch/riscv/kernel/vdso/*
  cp -a --parents -r -t "$builddir" lib/vdso/*
  chmod -R g+w "$builddir/arch/riscv/kernel/vdso"

  echo "Installing certificate files..."
  install -Dt "$builddir/certs" -m640 certs/*.pem
  install -Dt "$builddir/certs" -m640 certs/*.x509

  echo "Installing headers..."
  cp -t "$builddir" -a include
  chmod -R g+w "$builddir/include/generated"
  cp -t "$builddir/arch/riscv" -a arch/riscv/include
  install -Dt "$builddir/arch/riscv/kernel" -m644 arch/riscv/kernel/asm-offsets.s

  install -Dt "$builddir/drivers/md" -m644 drivers/md/*.h
  install -Dt "$builddir/net/mac80211" -m644 net/mac80211/*.h

  # https://bugs.archlinux.org/task/13146
  install -Dt "$builddir/drivers/media/i2c" -m644 drivers/media/i2c/msp3400-driver.h

  # https://bugs.archlinux.org/task/20402
  install -Dt "$builddir/drivers/media/usb/dvb-usb" -m644 drivers/media/usb/dvb-usb/*.h
  install -Dt "$builddir/drivers/media/dvb-frontends" -m644 drivers/media/dvb-frontends/*.h
  install -Dt "$builddir/drivers/media/tuners" -m644 drivers/media/tuners/*.h

  # https://bugs.archlinux.org/task/71392
  install -Dt "$builddir/drivers/iio/common/hid-sensors" -m644 drivers/iio/common/hid-sensors/*.h

  echo "Installing KConfig files..."
  find . -name 'Kconfig*' -exec install -Dm644 {} "$builddir/{}" \;

  echo "Removing unneeded architectures..."
  local arch
  for arch in "$builddir"/arch/*/; do
    [[ $arch = */riscv/ ]] && continue
    echo "Removing $(basename "$arch")"
    rm -r "$arch"
  done

  echo "Installing RAS from x86..."
  install -Dt "$builddir/arch/x86/ras"  -m644 arch/x86/ras/Kconfig

  echo "Removing documentation..."
  rm -r "$builddir/Documentation"

  echo "Removing broken symlinks..."
  find -L "$builddir" -type l -printf 'Removing %P\n' -delete

  echo "Removing loose objects..."
  find "$builddir" -type f -name '*.o' -printf 'Removing %P\n' -delete

  echo "Stripping build tools..."
  local file
  while read -rd '' file; do
    case "$(file -bi "$file")" in
    application/x-sharedlib\;*) # Libraries (.so)
      llvm-strip -v $STRIP_SHARED "$file" ;;
    application/x-archive\;*) # Libraries (.a)
      llvm-strip -v $STRIP_STATIC "$file" ;;
    application/x-executable\;*) # Binaries
      llvm-strip -v $STRIP_BINARIES "$file" ;;
    application/x-pie-executable\;*) # Relocatable binaries
      llvm-strip -v $STRIP_SHARED "$file" ;;
    esac
  done < <(find "$builddir" -type f -perm -u+x ! -name vmlinux -print0)

  echo "Adding symlink..."
  mkdir -p "$pkgdir/usr/src"
  ln -sr "$builddir" "$pkgdir/usr/src/$pkgbase"
}

pkgname=("$pkgbase" "$pkgbase-soft_3rdpart" "$pkgbase-headers")
for _p in "${pkgname[@]}"; do
  eval "package_$_p() {
    $(declare -f "_package${_p#$pkgbase}")
    _package${_p#$pkgbase}
  }"
done

# vim:set ts=8 sts=2 sw=2 et:
