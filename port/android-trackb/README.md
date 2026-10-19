# android-trackb: the Java side of Dungeon Hunter 2 as source

Track B reconstructs the game's native code (`port/decomp-reconstruction`, builds `libdh2.so`). This project does the same for the
Android Java side, so the APK no longer needs the original `classes.dex`: everything in `app/src/main/java` was reconstructed from the
dex of `Dungeon-Hunter-2-HD-v1-0-2.apk` (version 1.0.2, versionCode 102). The dex is the ground truth, like the binary is for native code.

## Layout

```
app/src/main/AndroidManifest.xml   reconstructed manifest (differences are listed in its header comment)
app/src/main/java/                 285 source files = 355 of the 357 dex classes (inner classes live in their outer file)
app/build.gradle.kts, ...          Gradle project (AGP 9.4.1, compileSdk 37, minSdk 26, targetSdk 28, JDK 17)
-- imported at build time by tools/trackb/java/import_resources.py, git-ignored, never committed --
app/src/main/res/                  the APK's resources, decoded (ids pinned by res/values/public.xml)
app/src/main/resources/            i18n/*.properties and plasma.properties (read with Class.getResourceAsStream)
app/src/main/jniLibs/arm64-v8a/    libDungeonHunter2.so (our rebuilt libdh2.so, stripped) + libStormGLOFT.so (boot stub)
```

The class inventory is `reports/decomp-reconstruction/java-inventory.csv` (all 357 dex classes with category, status and source file).

## What is what

| Group | Classes | Source |
|---|---|---|
| A. Gameloft game/glue | 163 | `com.gameloft.android.GAND.GloftD2SS` (activities `DungeonHunter2`, `Zirconia_DRM`, `MyVideoView`, `GLiveMain`, `IGPActivity`; `GameRenderer`, `GameGLSurfaceView`, `GLMediaPlayer`, `Musicplayer`, `GLResLoader`, `GLBluetooth*`, `GLUtils/*`, `installer/*` data downloader, resource-id holders `bp..bu`), `com.gameloft.glf`, `com.gameloft.layout` |
| C. DRM / licence / billing | 190 | Samsung Zirconia DRM client (`com.samsung.zirconia`), Samsung Apps Plasma IAP (`com.samsungapps.plasma`), KDDI au Market ALML licence client (`com.kddi.market`), Gameloft IAB/Verizon billing (`iab/*`, `billing/common`, `Billing`, `VZBilling`) |
| B. third party | 2 | `a.a.a`, `a.a.b`: annotation types used by the Samsung/KDDI classes |
| X. repack injected, NOT reconstructed | 2 | `com.savegame.SavesRestoringPortable`, `android.support.v4.app.app` (see below) |

There is no AndroidX/support library, no maven artifact, no ads or analytics SDK in this APK (Gameloft's own `Tracker`/`Tracking` installer
telemetry and the GLive/IGP portal are Gameloft code, group A). The Samsung and KDDI libraries are closed SDKs with no public artifact
(and their servers are gone), so they are carried as reconstructed source in their own packages, unmodified apart from compile repairs.

Group X is not part of the game. `SavesRestoringPortable` is a string-obfuscated component that the repacker of this APK injected
(called first thing in `Zirconia_DRM.onCreate`); on first start it AES-decrypts the asset `data.save` with an embedded key and unzips it
into storage locations. `android.support.v4.app.app` is a watermark helper (not a support-library class) called from
`GameInstaller.onCreate`. Both, the two call sites and the `data.save` asset were left out on purpose (the boot path never ran them;
decide separately whether you want the payload).

## Faithfulness and the repairs that were needed

jadx 1.5.6 (official release, SHA-256 verified; a reverse-engineering tool kept outside the repo) produced the first draft. Names are the
dex's: Gameloft's classes are ProGuard-obfuscated (`a`, `ay`, `ce`, ...), they are kept as is so that the class set matches the dex.
Only the resource-id holders were made readable: `bp/bq/br/bs/bt/bu` are `R.drawable/id/integer/layout/raw/string`, their fields and
every inlined numeric id in the code now use the resource names (`bu.DRM_ZIRCONIA_LOCAL_LICENSE_INVALID`).

jadx output does not compile as is and some of it is wrong; everything below was fixed by hand against `dexdump -d` of the original dex:
shadowed class names (`bu.x` where `bu` is also an int), private members accessed from inner classes, missing `throws`, malformed loops
(`ZipFile.extract`, `SamsungIABActivity`), mis-nested try/catch (`Section.h/run`), `DownloadComponent.a` (checksum/size verdict),
`GameInstaller.t()` (jadx dropped the SIM-state test: `return 1` is only for ABSENT/UNKNOWN SIM), `GameInstaller.c(int)` (loop that re-enters
with state 23), `Base64` (`break`), and the closed SDK parsers (`plasma/k.a(String)`, `ApiUtil.havePermissions`, etc.). The remaining jadx warnings ("code duplicated", about 20 sites) were not individually re-verified. The rebuilt dex has the same 357 classes (355 reconstructed + 2 omitted);
a method-signature diff against the original dex differs only in compiler synthetics (accessors, `values()`, anonymous-class numbering).
Remaining risk: nothing here has been run yet. The whole tree is compile-verified and its method set matches the dex, but only the sites above were
checked against the bytecode; the installer (`GameInstaller`, `installer/*`) and the closed billing SDKs are the least reviewed, and jadx can silently
mis-decompile (as it did in `GameInstaller.t()`), so a bytecode review of the remaining `JADX WARN` sites is still open work.

Intentional deviations from the dex (the only ones):

1. `NativeInterface` loads `libDungeonHunter2` instead of `libnativeinterface`: the original arm32 `libnativeinterface.so` was
   reconstructed into our `libdh2.so` (same four `Java_com_samsung_zirconia_NativeInterface_*` exports), there is no arm64 original.
2. `System.loadLibrary("StormGLOFT")` is wrapped in a try/catch. That closed arm32 Gameloft library is only loaded, `libDungeonHunter2.so`
   does not link it; `tools/trackb/boot/storm_stub.c` provides an arm64 stand-in (with a crash logger) that the import script builds.
3. Manifest: `package`/versions/`uses-sdk` moved into Gradle (minSdk 26, targetSdk 28, compileSdk 37); `android:exported="true"` on the
   three activities with intent-filters; `usesCleartextTraffic="true"` (the 2011 code uses plain HTTP; cleartext was the default before API 28);
   `<uses-library org.apache.http.legacy required=false>`; `android:debuggable` removed. targetSdk 28 keeps the semantics the code was written
   for: install-time-style permissions need `adb shell pm grant ... READ_PHONE_STATE` and `appops set ... USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER allow`
   (as for the dex-based test APK, `DungeonHunter2.onCreate` calls `getDeviceId`, refused to non-privileged apps on Android 10+).
4. `Section`/jadx compile repairs and the removal of `WebSettings.setAppCacheEnabled` (gone from the SDK, a no-op since API 33) in `GLiveMain`/`IGPActivity`.
5. `GLBluetoothService`, `MyVideoView`, `Device`, `SamsungHelper`, `Zirconia_DRM` fields lost `private` where the dex shows access from other
   (synthetic-accessor) classes.

## JNI

`py -3 tools/trackb/java/check_jni.py --orig-apk <orig.apk> --new-apk <rebuilt.apk>` compares the natives of the original and the rebuilt dex and
the exports of `libdh2.so`: 46 native methods in both, identical class/name/descriptor. `libdh2.so` exports `JNI_OnLoad` and 36
`Java_*` functions (32 `GloftD2SS` natives: `DungeonHunter2` 14, `GameRenderer` 9, `GLMediaPlayer` 4, `Musicplayer` 2, `GLResLoader`, `GameGLSurfaceView`,
`GLUtils.Device` 1 each, plus the 4 Zirconia ones), all 36 bind to a Java declaration and there is no export without one. The other 10 natives of the dex
(`GLBluetooth`, `GLBluetoothService`, `SUtils`, `GLiveMain`, `IGPActivity`, `InAppBilling`) have no implementation in the original game .so either (their libraries are
never loaded on the paths the game takes), so they are declared and unbound exactly as in the original.

## DRM, licence and billing behaviour

`Zirconia_DRM` is still the launcher. It runs the Zirconia check: `NativeInterface.checkLicenseFile` (our reconstructed native, which looks for the local licence file)
then, if absent, `LicenseRetriever` contacts the Samsung licence server. That service no longer exists, so the code path (unchanged from the dex) ends in
`licenseCheckedAsInvalid` with the original error dialogs (`DRM_EZIRCONIA_*` strings; the "no network" case has its own retry dialog); the game is not meant to start
from this activity without a valid licence (this was read from the code, not exercised on a device). For development the existing test flow applies unchanged: start `.DungeonHunter2` directly (`adb shell am start -n
com.gameloft.android.GAND.GloftD2SS/.DungeonHunter2`), which skips the DRM activity as the dex-based APK did. Billing (`iab/*`, `VZBilling`, Plasma, ALML) is
reproduced as code; with the services gone its calls fail through the original error paths (`SamsungHelper.IABResultCallBack(2)` etc.) and nothing is mocked.

## Build

Prerequisites: JDK 17, Android SDK (`ANDROID_HOME`; platform 37.0, build-tools 37.0.0, NDK 29), `build/own-arm64/libdh2.so` built per
`port/decomp-reconstruction/ANDROID-BUILD.md`, and your own `Dungeon-Hunter-2-HD-v1-0-2.apk`.

```
py -3 tools/trackb/java/import_resources.py [--apk PATH]      # res/ (via jadx), i18n, native libs, gradle-wrapper.jar -> git-ignored dirs
cd port/android-trackb && ./gradlew assembleDebug             # canonical build -> app/build/outputs/apk/debug/
py -3 tools/trackb/java/build_apk.py                          # same sources with plain SDK tools (aapt2, javac, d8, zipalign, apksigner)
py -3 tools/trackb/java/check_jni.py --orig-apk ORIG.apk --new-apk build/own-j/apk-out/dh2-java-debug.apk
```

`build_apk.py` is the path that was executed and verified in the session that created this project (its output has resource ids identical to the original's:
765 of 765 entries compared; JNI check OK). The Gradle project builds the same sources but could not be run there (the JVM could not open the NIO selector
pipe inside that sandbox: "Unable to establish loopback connection"), so `./gradlew assembleDebug` is not yet verified; if it complains about 9-patch PNGs the
cause is that aapt2 crunching must stay off (`isCrunchPngs = false`, already set).

Game data is not part of the APK (it comes from the original cache zip, see `tools/trackb/boot/push_data.sh`); first-boot instructions in
`reports/decomp-reconstruction/FIRST-BOOT.md` apply with this APK instead of the dex-based one.
