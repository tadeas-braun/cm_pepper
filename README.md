**Unoficial CM-11.0 (Android 4.4.2 KitKat) for Sony Xperia Sola**
<br>*Credits to munjeni and to all others who contributed*

Getting Started :

    mkdir cm-11.0
    cd cm-11.0
    repo init -u https://github.com/tadeas482/manifest.git -b cm-11.0
    repo sync

Patch android source code :

    patch -p1 < hardware/semc/patches/framework_av.patch
    patch -p1 < hardware/semc/patches/framework_native.patch
    patch -p1 < hardware/semc/patches/framework_base.patch
    patch -p1 < hardware/semc/patches/hardware_libhardware.patch
    patch -p1 < hardware/semc/patches/hardware_libhardware_legacy.patch
    patch -p1 < hardware/semc/patches/system_core.patch
    patch -p1 < hardware/semc/patches/bionic.patch
    patch -p1 < hardware/semc/patches/bootable_recovery.patch
    patch -p1 < hardware/semc/patches/external_bluetooth_bluedroid.patch

Our step is optional!!! Use only if you going to sync CM-11.0 source code daily, than simple revert each patch before you sync CM-11.0 source code :

    patch -p1 -R < hardware/semc/patches/framework_av.patch
    patch -p1 -R < hardware/semc/patches/framework_native.patch
    patch -p1 -R < hardware/semc/patches/framework_base.patch
    patch -p1 -R < hardware/semc/patches/hardware_libhardware.patch
    patch -p1 -R < hardware/semc/patches/hardware_libhardware_legacy.patch
    patch -p1 -R < hardware/semc/patches/system_core.patch
    patch -p1 -R < hardware/semc/patches/bionic.patch
    patch -p1 -R < hardware/semc/patches/bootable_recovery.patch
    patch -p1 -R < hardware/semc/patches/external_bluetooth_bluedroid.patch
    repo sync
    patch -p1 < hardware/semc/patches/framework_av.patch
    patch -p1 < hardware/semc/patches/framework_native.patch
    patch -p1 < hardware/semc/patches/framework_base.patch
    patch -p1 < hardware/semc/patches/hardware_libhardware.patch
    patch -p1 < hardware/semc/patches/hardware_libhardware_legacy.patch
    patch -p1 < hardware/semc/patches/system_core.patch
    patch -p1 < hardware/semc/patches/bionic.patch
    patch -p1 < hardware/semc/patches/bootable_recovery.patch
    patch -p1 < hardware/semc/patches/external_bluetooth_bluedroid.patch

Download CM prebuilts :

    cd vendor/cm
    ./get-prebuilts
    cd ../..

You are ready to build :

    . build/envsetup.sh
    lunch cm_pepper-userdebug
    make otapackage

ENJOY!
