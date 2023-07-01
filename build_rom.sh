<<<<<<< HEAD
# sync rom
repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-X/manifest -b tiramisu -g default,-mips,-darwin,-notdefault
<<<<<<< HEAD
<<<<<<< HEAD
git clone https://github.com/kitw4y/local_manifest.git --depth 1 -b evox .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8

# build rom 
source build/envsetup.sh
lunch evolution_lancelot-userdebug
export TZ=Asia/Jakarta #put before last build command
mka evolution
=======
=======
>>>>>>> parent of 024c8c4 (Update build_rom.sh)
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8
git clone https://github.com/galang8664/device-r --depth 1 -b evoxr device/xiaomi/lancelot
git clone https://github.com/hentaiOS-MT6768/device_xiaomi_mt6768-common --depth 1 -b TwistedScarlett device/xiaomi/mt6768-common
git clone https://github.com/mt6768-dev/android_kernel_xiaomi_mt6768 --depth 1 -b lineage-20 kernel/xiaomi/mt6768
git clone https://github.com/hentaiOS-MT6768/vendor_xiaomi --depth 1 -b TwistedScarlett vendor/xiaomi 
git clone https://github.com/R9Lab/MTKHardware.git --depth 1 -b lineage-20 hardware/mediatek
git clone https://github.com/R9Lab/ImsService --depth 1 -b lineage-20 packages/app/ImsService
git clone https://github.com/R9Lab/MTKFMRadio.git --depth 1 -b lineage-20 packages/apps/MtkFMRadio
git clone https://github.com/mt6768-dev/vendor_mediatek_opensource_interfaces.git --depth 1 -b lineage-20 vendor/mediatek/opensource/interfaces
git clone https://github.com/R9Lab/GoodixOpenSourceInterfaces.git --depth 1 -b lineage-20 vendor/goodix/opensource/interfaces
git clone https://github.com/R9Lab/MTKSepolicyVendor.git --depth 1 -b lineage-20 device/mediatek/sepolicy_vndr

# build rom
source build/envsetup.sh
lunch evolution_lancelot-userdebug
export TZ=Asia/Dhaka #put before last build command
mka bacon
<<<<<<< HEAD
>>>>>>> parent of 024c8c4 (Update build_rom.sh)
=======
>>>>>>> parent of 024c8c4 (Update build_rom.sh)

# upload rom (if you don't need to upload multiple files, then you don't need to edit next line)
rclone copy out/target/product/$(grep unch $CIRRUS_WORKING_DIR/build_rom.sh -m 1 | cut -d ' ' -f 2 | cut -d _ -f 2 | cut -d - -f 1)/*.zip cirrus:$(grep unch $CIRRUS_WORKING_DIR/build_rom.sh -m 1 | cut -d ' ' -f 2 | cut -d _ -f 2 | cut -d - -f 1) -P
=======
mkdir ~/bin && PATH=~/bin:$PATH && curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo && repo init --depth=1 --no-repo-verify -u https://github.com/Evolution-X/manifest -b tiramisu -g default,-mips,-darwin,-notdefault && git clone https://github.com/kitw4y/local_manifest.git --depth 1 -b evox .repo/local_manifests && repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8 && source build/envsetup.sh && lunch evolution_lancelot-userdebug && mka evolution
>>>>>>> parent of 5d04215 (Update build_rom.sh)
