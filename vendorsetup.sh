echo 'Starting to clone stuffs needed for your device'
echo 'Cloning Common Tree [1/7]'
# Oneplus SM8250-Common Tree
rm -rf device/oneplus/sm8250-common
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_device_oneplus_sm8250-common.git -b tm-new device/oneplus/sm8250-common

echo 'Cloning Instantnoodle Vendor tree [2/7]'
# Device Vendor Tree
rm -rf vendor/oneplus
git clone --depth=1 https://github.com/Evolution-X-Devices/vendor_oneplus_instantnoodle.git vendor/oneplus/instantnoodle

echo 'Cloning Common Vendor tree [3/7]'
# Common Vendor Tree
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_vendor_oneplus_sm8250-common.git vendor/oneplus/sm8250-common

echo 'Cloning Kernel tree [4/7]'
# Kernel Tree
rm -rf kernel/oneplus
git clone --depth=1 https://github.com/Evolution-X-Devices/kernel_oneplus_sm8250.git kernel/oneplus/sm8250

echo 'Cloning Hardware Oplus [5/7]'
# Hardware Oplus
rm -rf hardware/oplus
git clone --depth=1 https://github.com/ProjectElixir-Devices/hardware-oplus.git -b tm-new hardware/oplus

echo 'Cloning Op Extras [6/7]'
# Packages Op Extras
rm -rf packages/apps/OPlusExtras
git clone --depth=1 https://github.com/ProjectElixir-Devices/packages_apps_OPlusExtras.git packages/apps/OPlusExtras

echo 'Cloning Op Cam [7/7]'
# Op Cam
git clone --depth=1 https://gitlab.com/cjh1249131356/vendor_oneplus_camera.git vendor/oneplus/camera

echo 'Nuking source audio repo and cloning with repo from arrow'
rm -rf hardware/qcom-caf/sm8250/audio
git clone --depth=1  https://github.com/ArrowOS/android_hardware_qcom_audio -b arrow-13.0-caf-sm8250 hardware/qcom-caf/sm8250/audio

echo 'Sync some stuff from lineage'
#Lineage Compat
rm -rf hardware/lineage/compat
git clone --depth=1 https://github.com/LineageOS/android_hardware_lineage_compat.git hardware/lineage/compat

echo 'Completed, Now proceeding to lunch'
