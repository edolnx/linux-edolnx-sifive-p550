# Maintainer: Chaiwat Suttipongsakul <cwt@bashell.com>

pkgbase=linux-cwt-6.6-starfive-vf2
_variant=cwt #6.6-VF2-xxx-x
pkgver=5.12.0
epoch=22 #Based on cwt image version
pkgrel=5
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
  'https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-6.6.20-21.xz'
  'https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-6.6.21-22.xz'
  'https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-6.6.22-23.xz'
  'https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-6.6.23-24.xz'
  'https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-6.6.24-25.xz'
  'https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-6.6.25-26.xz'
  'https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-6.6.26-27.xz'
  'https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-6.6.27-28.xz'
  'https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-6.6.28-29.xz'
  'https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-6.6.29-30.xz'
  'https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-6.6.30-31.xz'
  'https://cdn.kernel.org/pub/linux/kernel/v6.x/incr/patch-6.6.31-32.xz'
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
            '7dbc8df59a3342c76bf63ac0889b290de530d7348ba1d0249e72af9d2951c69f'
            'd3ad1c3c9071953b3f4f1d13652f43dbba2770cbbe10538fae69f448cb2187ec'
            'ac94d0654258cd509136e5a238c8947ea961d83a1a025d8d454c2984c25d91ed'
            'a6f2d4d87a653d366d29bd69bb4b6833c9886e1a7c72bbc8bed0f5500acd3bee'
            '73879028ef768dfcd22ff1c9feb7a31647a96e3a4c1db68d28f036ef8b0d3cc0'
            '6a3f905225c69b766ab0596cfb77204563654a93fe5bed7e83ce05f3aab4f0a7'
            '399cd683978a66061ed4ae9717dd64e306ab353c4f7666068201d5d51736e099'
            '86aee10aa0118efe0c5ad31c762d1a5f5eee9055071aa2f564d088f8cf922b9f'
            '55213bbcc337578217bc4e956897a3673f30c73ec39c958b7a0bb6e617602fba'
            'd7607f51250ea67ff236f003bbb7767b3683ea2ea242788781866431605fb4ba'
            'b79aea35d2765b0adf7c1d2bc1f9ce89d431597aeaa3d3bc6d05ef98f51da7fa'
            '04ef1145de730a4cccbfd4d5f0817378d5348e1ad137a19ff344c6ba5efcfc40'
            'ac583bf33ec47ed8f9bb22f6ea8cbaba010117cab7bfef0a44cf3ef30f1facde'
            '7601eb46dec607aa3e66bd756db8080302ef58b35cc35dd124e14c0bea2a8cb1'
            'bee1da97c0f94a3d41c03288d103434cd2159b41d28b6bede1d5cc513ccf2a9d'
            '63fc05b6cedc9eed445adcfe39c5f2c8d2ed46049f626212e31fd87bdba6f9e6'
            '2492020565e8e6157876c2bee48af32dd3fc7967bd418fe6d2d9d9ea0bb72bf1'
            '800e2ca5970c1869282f99f19994c7ad2cbb05a6f3e059d692e30746f2c9b577'
            'e3a433213762785a64af39f22cc6a82f9717c8eb3d27b846b20e21f290eb965c'
            'd76e3e4dd017e08b63994cf21f32a9813a912ce2938bd9f63bb5779184c76452'
            '3d65589915b56de000ae7c93f5d7fbc9cf747891a45b69559ed92e03b95f692b')


prepare() {
  cd $_srcname

  local src
  for src in $(ls ../linux-*.patch); do
    echo "Applying patch $src..."
    patch -Np1 <"../$src"
  done

  for src in $(ls ../patch-*.xz); do
    echo "Applying patch $src..."
    xzcat "../$src" | patch -Np1
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
      strip -v $STRIP_SHARED "$file" ;;
    application/x-archive\;*) # Libraries (.a)
      strip -v $STRIP_STATIC "$file" ;;
    application/x-executable\;*) # Binaries
      strip -v $STRIP_BINARIES "$file" ;;
    application/x-pie-executable\;*) # Relocatable binaries
      strip -v $STRIP_SHARED "$file" ;;
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
