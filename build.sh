echo -e "\033[1;31m****Checking for ToolChains****\033[0m"
git clone --depth=1 https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9.git -b cm-14.1 ToolChain_64BIT
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=$(pwd)/ToolChain_64BIT/bin/aarch64-linux-android-
mkdir -p out
echo -e "\033[1;31m*****Compileing Your Kernel*****\033[0m"
make O=out 10orG_defconfig
make O=out -j8
