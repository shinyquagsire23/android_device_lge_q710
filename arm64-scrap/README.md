TWRP device tree for LG Stylo 4 (Q710)
========================================================

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_lineageos.git -b twrp-14.1
```

Then, place `q710.xml` in `.repo/local_manifests/`, then run

```
repo sync
source build/envsetup.sh
lunch omni_q710-userdebug
mka recoveryimage
```

`out/target/product/q710/recovery.img` will be the fastbootable/flashable image. Do not attempt to actually flash this, you will probably brick your device.

**Note:**

The following diff in `system/sepolicy` might be required to compile:
```
diff --git a/untrusted_app.te b/untrusted_app.te
index 07bfbf4..c36eb0f 100644
--- a/untrusted_app.te
+++ b/untrusted_app.te
@@ -191,9 +191,7 @@ neverallow untrusted_app {
 
 # For exfat, f2fs/ext4, and ntfs storage via sdcardfs
 ifelse(shipping_build, `true', ,`
-  -exfat
   -fuseblk
-  -ntfs
   -sdcard_posix
 ')
 

```
