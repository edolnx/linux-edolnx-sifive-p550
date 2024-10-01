# Maintainer: Chaiwat Suttipongsakul <cwt@bashell.com>

pkgbase=linux-cwt-6.6-starfive-vf2
_variant=cwt #6.6-VF2-xxx-x
pkgver=5.13.1
epoch=23 #Based on cwt image version
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

b2sums=('0cc01ff3aa6cc85f7a07dd05c85deb622ae92a3d4b18ef6cecd1461ba1f891283b92f31c62015988f935f6e0d80a306c8d9620cf426598c4c0a547a106dff393'
        '4bca3f94d7010a4768aeb7699d3c7b82ac345d9aace4e2617daa217402f0538fa859441790b7e2ecb05190214b383a785888923f7a5dccf678217c094c0dd20b'
        'dad8854fff3dca7ab6b04ae64dd7270c251d28df73ed987a1672e83d58951736a0e44942556d795202ef20430374313d749e021ba17735beaf364a6af3a34927'
        '30ac8f7acc48c027db297b759b7bd2679de111733bd2396774cbce9d035c9486828f96d6a992cfe8b52686e297e46d08d4c0925eb6b19fe65d1c9a804a50f0ea'
        'e195ff708549ca474473141597a7247cec5ce9607aec3428368527a9b906701ffd5918f2c55fd3db6bdae3ab1145fc87a322cd6a18324ea882b0e4d411d1c380'
        '4d5bc3ef01fdbb61a88c8e64f5fa1ea5474caa76bd8740217a0055f8ef2067c9996ef262bc7d671651b533870b7be6860ebbf52fe0259fafb0296cdbe8dcdc85'
        '99d4f017a6d65e6d19830c25be94238812f2ceeaf9084a1b98c9f0b270d40889f518f5a158fb81e0cfc13364e10bd7febfe7ac429f87c8228b86858f031611e4'
        '409d74e0790de7f12a862f10bdf3a4ed87ea99fdc503ae1b5f70ad20aa0e56f2212f06429224572211cc36a782897fcc3d9f710a500f440ae4047d83321e83f1'
        'fc44c4c90adbc336fe97080d093b0faa35b6e5c1ccf9cf04cd8b2057c31e3db73eab0d42022e3e66560694cb6732fc1dbd8215b41d61c4adbe10dbeea0c5c2da'
        '3cbc89b148cb54745c906bb11bf449bd893d1f53ed80596da81dbea9797ed674438d938eccbbc15aae8aff39913f8f6e64af7182a7ce9e0b0ccb889d1e7c6a5b'
        'a0b11bd009c6c4d866d4e9f0b67175c2a385a076c9882ffe02b2f89faa89492307813427871ff8a93b7cdeb805024ac343e4bb615b839338d81bb82d21f91c5a'
        '31267b613409215abaa8bc37811187ee691456d3d9af95fbcf5f060963b1a9eebe9593d60fa2f43a0619d51788c4e696761e4bf5c510d11bf4bf732b7289188c'
        '0935d526cac76bd7eab8a322ec43dfc3349a4431717b38c888f8b27f3b080ed9c090e56c344a6459042ec060e7efb65acb18eeeb5669212d7c18e89f5716aae8'
        'ddc44f0981d9adce98336fc82fafe56b8365eda1c4c20c0843f45a40e31b7c4c3d66581ec55cac2e843431d6db7c88cb8ba9040eb3db7e076a9c4f86314f8e3e'
        'af730cb3fa6d61438278d9d5d7599d1d0534d450578645997e95677b2dce911a4b8b070c581add777ab7ab542e4825b864d559cb57a57854ead1f82706a0f5d4'
        '5d19f5901c0de7cf7300bfe30a48de286a25c838a79222c745b9f850cf504029fdbb8965b3923ce1b4b94c1df977f07968043598d2ebc7a407dff78d70a61479'
        '3e32ca7232b322014f451f9e8275fa5ac06ce6eec46995574e0fd703193426c867b18091f0f39b2773e48ad615aa04770f951b440edbcfebd8aeb2866d9d24a2'
        '0be947da23e7e8014f7dda558e1ede1a0e65c9ffaef36a9f0ac366093d014d663dfa618607b010863f07f303edd6cc7dea3f82968c3f28e636730c5a2f072b68'
        '400ef582abbb966098c162b93471e0816b6c37522b61ef3373a19082872136dbc5d6ac50fee8aa22fc5f93d4c36c926973a6a97229fd61b9ad95c56086488a6c'
        '36e86058ef94ff96d7572b343c9a17f00a703ccd843ea79be59bdffe8ba2952406447a32e449c4aa49b08ce82ec039e479546516a981d0763a6ad6f12140a378'
        '62512117dc392ebc1bb6d88bb4bab2d287628dc1697d8b4b6aa2bd6256ca7de1931ba341af62fcf57700af58560e9e6818d79c383b1887e20c2177d5021ac6b6'
        'baee58367325f4046ddca758cb6da82e4ca9d8e0923369125ca89539dc1103a5a00a1fa01dc9a12883c19cec827fae1071642cc0b8a00cf3b5c24f18638ad645'
        '358f1e5d5aa4a919f7a0066e5763514f9ab7b49fd9896f0fb4f1a654e7bc19b0b48c5124e941663c082a6abf5f47aa6730df96834d56d387d30f47330c7eb72e'
        '75bb99a7713808bb99e1f7420521dc5a3184799818c7a5ec8ecf498465d433da03ef4e44ee9378199c46700427d9802dc1a90266739ff1b5effb6bd436744509'
        '444c5e378bb375fa5365ca7218ab0e60df65c73f3bef38a25fa4e1b69fecd62435987d7ad29dcf1b59b56b4db1c89da057a401e948bf696cc0a06e0892db0b88'
        '6aa6c65ef7e21d20965491fb95c94b16e7e67ffa072f401a70f1570ae5d80b3248523c6ef2ef1f9ba3db0c0371081bdb07b5ecea3429cf47a0f00f727b45bf7d'
        '8bc3c6adf182ff379e34cbb78b727e341e03d2718cf2d411751717dd346987f52e02a7a870fb92d21a176e3f752f06aafbe5e49571ab540951326ab1b25188f5'
        '584297b7cbf34c24507248d598317144bb4ce14e4f9f8f1f92aab990a20470f5dd3da10279493522e9522b5bc25dfe6628de3e32aae597c327067f7b2b5a664e'
        'd144a325cb08a4bc5527043f2d402ced6d63997b234d6cab83113944d1ae4d8ddc64ec545222bf7f859e9e37a925b8f3300a568daca7d91bef1f0bb5cfab03c7')

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
