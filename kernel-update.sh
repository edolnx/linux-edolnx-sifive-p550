#!/bin/bash

IMG=cwt20
SDK=5.10.3
REL=1

mkdir ${IMG}-${SDK}-${REL}
cd ${IMG}-${SDK}-${REL}

wget https://github.com/cwt-vf2/linux-cwt-starfive-vf2/releases/download/${IMG}-${SDK}-${REL}/linux-cwt-515-starfive-vf2-${IMG:3}.${SDK}-${REL}-riscv64.pkg.tar.zst
wget https://github.com/cwt-vf2/linux-cwt-starfive-vf2/releases/download/${IMG}-${SDK}-${REL}/linux-cwt-515-starfive-vf2-headers-${IMG:3}.${SDK}-${REL}-riscv64.pkg.tar.zst
wget https://github.com/cwt-vf2/linux-cwt-starfive-vf2/releases/download/${IMG}-${SDK}-${REL}/linux-cwt-515-starfive-vf2-soft_3rdpart-${IMG:3}.${SDK}-${REL}-riscv64.pkg.tar.zst
#sudo pacman -U *.tar.zst
#sudo reboot

