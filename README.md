cd ~/Desktop/github/jetson-kernel-rt
git add .
git status

### RT

#### 커널 본체 + in-tree modules 빌드
cd ~/Desktop/github/jetson-kernel-rt/r36.5/Linux_for_Tegra/source/kernel/kernel-jammy-src
export ARCH=arm64
export CROSS_COMPILE=$HOME/l4t-gcc/bin/aarch64-buildroot-linux-gnu-
make olddefconfig
make -j12 Image modules dtbs

#### in-tree modules staging
rm -rf ~/Desktop/github/out-rt-mod
mkdir -p ~/Desktop/github/out-rt-mod
cd ~/Desktop/github/jetson-kernel-rt/r36.5/Linux_for_Tegra/source/kernel/kernel-jammy-src
make modules_install INSTALL_MOD_PATH=~/Desktop/github/out-rt-mod

#### rt OOT 모듈 빌드/설치
cd ~/Desktop/github/jetson-kernel-rt/r36.5/Linux_for_Tegra/source

export ARCH=arm64
export CROSS_COMPILE=$HOME/l4t-gcc/bin/aarch64-buildroot-linux-gnu-
export KERNEL_HEADERS=$PWD/kernel/kernel-jammy-src
export IGNORE_PREEMPT_RT_PRESENCE=1

make modules
make modules_install INSTALL_MOD_PATH=~/Desktop/github/out-rt-mod

#### 전송을 위해 압축
cd ~/Desktop/github/out-rt-mod
tar czf ~/Desktop/github/rt-modules.tar.gz lib/modules

#### Jetson으로 전송
scp -P 10022 ~/Desktop/github/rt-modules.tar.gz jetson@192.168.55.223:/tmp/

scp -P 10022 ~/Desktop/github/jetson-kernel-rt/r36.5/Linux_for_Tegra/source/kernel/kernel-jammy-src/arch/arm64/boot/Image \
    jetson@192.168.55.223:/tmp/Image-rt

#### Jetson에서 설치
sudo cp /tmp/Image-rt /boot/Image-rt
sudo chmod 644 /boot/Image-rt

cd /
sudo tar xzf /tmp/rt-modules.tar.gz
sudo depmod 5.15.185-tegra-rt

sudo nv-update-initrd

#### 부팅 전
vim /boot/extlinux/extlinux.conf
에서 DEFAULT 바꾸고 재부팅

### Native

#### 커널 본체 + in-tree modules 빌드
cd ~/Desktop/github/jetson-kernel-native/r36.5/Linux_for_Tegra/source/kernel/kernel-jammy-src
export ARCH=arm64
export CROSS_COMPILE=$HOME/l4t-gcc/bin/aarch64-buildroot-linux-gnu-
make olddefconfig
make -j12 Image modules dtbs

#### in-tree modules staging
rm -rf ~/Desktop/github/out-native-mod
mkdir -p ~/Desktop/github/out-native-mod
cd ~/Desktop/github/jetson-kernel-native/r36.5/Linux_for_Tegra/source/kernel/kernel-jammy-src
make modules_install INSTALL_MOD_PATH=~/Desktop/github/out-native-mod

#### native OOT 모듈 빌드/설치
cd ~/Desktop/github/jetson-kernel-native/r36.5/Linux_for_Tegra/source

export ARCH=arm64
export CROSS_COMPILE=$HOME/l4t-gcc/bin/aarch64-buildroot-linux-gnu-
export KERNEL_HEADERS=$PWD/kernel/kernel-jammy-src
unset IGNORE_PREEMPT_RT_PRESENCE

make modules
make modules_install INSTALL_MOD_PATH=~/Desktop/github/out-native-mod

#### 전송을 위해 압축
cd ~/Desktop/github/out-native-mod
tar czf ~/Desktop/github/native-modules.tar.gz lib/modules

#### Jetson으로 전송
scp -P 10022 ~/Desktop/github/native-modules.tar.gz jetson@192.168.55.223:/tmp/

scp -P 10022 ~/Desktop/github/jetson-kernel-native/r36.5/Linux_for_Tegra/source/kernel/kernel-jammy-src/arch/arm64/boot/Image \
    jetson@192.168.55.223:/tmp/Image-native

#### Jetson에서 설치
sudo cp /tmp/Image-native /boot/Image-native
sudo chmod 644 /boot/Image-native

cd /
sudo tar xzf /tmp/native-modules.tar.gz
sudo depmod 5.15.185-tegra-native

sudo nv-update-initrd

#### 부팅 전
vim /boot/extlinux/extlinux.conf
에서 DEFAULT 바꾸기