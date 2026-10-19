#!/usr/bin/env python3
"""One command: libdh2.so (arm64-v8a Release) -> two signed APKs (and optionally install them).

usage: py -3 tools/trackb/android/build_release.py [--bundle-data CACHE.zip|FILES_DIR [--sound-overlay DIR] [--out-root DIR --build-dir DIR]] [--skip-native] [--only origdex|source] [--install [--serial S]] [--apk ORIG.apk]

Outputs (all under build/own-ab, never tracked):
  build/own-ab/out/dh2-trackb-origdex.apk   original v1.0.2 classes.dex + resources + our libdh2.so (+ DataSetup launcher dex)
  build/own-ab/out/dh2-trackb-source.apk    fully source-built: port/android-trackb Java + our libdh2.so + resources imported from the APK
  build/own-ab/out/libdh2-unstripped.so     for symbolising (llvm-addr2line)
Steps: cmake/ninja dh2 in build/own-ab-arm64 (Release, no DH2_BOOT_DEBUG, abort stubs OFF) -> llvm-strip -> libStormGLOFT stub
       -> tools/trackb/java/build_apk.py (source APK) -> original APK repack (manifest from the same build) -> zipalign 16K -> apksigner (debug key).
Prerequisite: your own Dungeon-Hunter-2-HD-v1-0-2.apk (--apk or the default path) for resources; res/ is imported once by
tools/trackb/java/import_resources.py (this script runs it when port/android-trackb/app/src/main/res is missing).
"""
import argparse, hashlib, os, shutil, subprocess, sys, zipfile

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))
SDK = os.environ.get("ANDROID_HOME", r"<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk")
NDK = SDK + "/ndk/29.0.14206865"
NDKB = NDK + "/toolchains/llvm/prebuilt/windows-x86_64/bin"
BT = SDK + "/build-tools/37.0.0"
PLAT = SDK + "/platforms/android-37.0"
ADB = SDK + "/platform-tools/adb" + (".exe" if os.name == "nt" else "")
EXE = ".exe" if os.name == "nt" else ""
BAT = ".bat" if os.name == "nt" else ""
PKG = "com.gameloft.android.GAND.GloftD2SS"
OUTROOT = os.path.join(ROOT, "build", "own-ab")
OUT = os.path.join(OUTROOT, "out")
BUILD = os.path.join(ROOT, "build", "own-ab-arm64")
PROJ = os.path.join(ROOT, "port", "android-trackb", "app", "src", "main")
DEFAULT_APK = r"<home>/Documents/Projects/Dungeon Hunter 2 Recomp/Dungeon-Hunter-2-HD-v1-0-2.apk"
BUILD_DATA = os.path.join(ROOT, "build_data")   # optional git-ignored folder: android-res/, files/ (the unpacked cache), ios-sounds/
PREFIX = PKG + "/files/"


def is_user_state(n):
    """top-level files of a developer profile that DataSetup never unpacks (DataSetup.isUserState)."""
    return n.endswith(".savegame") or n.endswith(".bak") or ".checkpoint" in n or n == "InsTime"


def compose_bundle(src, overlay, zout):
    """the cache zip DataSetup streams, built from a files/ folder or a cache zip plus an overlay folder (same layout as files/,
    e.g. tools/trackb/sounds/ios_sound_overlay.py output): every entry stored under PKG/files/, overlay files win, user state left out."""
    entries = {}
    if os.path.isdir(src):
        for d, _, fs in os.walk(src):
            for f in fs:
                p = os.path.join(d, f)
                entries[os.path.relpath(p, src).replace(os.sep, "/")] = p
    else:
        z = zipfile.ZipFile(src)
        pre = bundle_manifest(src).splitlines()[0][len("prefix="):]
        for i in z.infolist():
            if i.filename.startswith(pre) and not i.is_dir() and len(i.filename) > len(pre):
                entries[i.filename[len(pre):]] = (z, i)
    nover = 0
    if overlay:
        for d, _, fs in os.walk(overlay):
            for f in fs:
                p = os.path.join(d, f)
                entries[os.path.relpath(p, overlay).replace(os.sep, "/")] = p
                nover += 1
    with zipfile.ZipFile(zout, "w", zipfile.ZIP_DEFLATED) as zo:   # deflated entries like the original cache zip (the APK stores the zip itself)
        for n in sorted(entries):
            if "/" not in n and is_user_state(n):
                continue
            v = entries[n]
            zi = zipfile.ZipInfo(PREFIX + n, (2011, 1, 1, 0, 0, 0))
            zi.compress_type = zipfile.ZIP_DEFLATED
            with zo.open(zi, "w", force_zip64=True) as o:
                if isinstance(v, tuple):
                    with v[0].open(v[1]) as i:
                        shutil.copyfileobj(i, o, 1 << 20)
                else:
                    with open(v, "rb") as i:
                        shutil.copyfileobj(i, o, 1 << 20)
    print("bundle: %d files (%d from the overlay) -> %s" % (len(entries), nover, zout), flush=True)


def bundle_manifest(zpath):
    """prefix / file count / byte count DataSetup will unpack from the cache zip (user-state files at the top level are skipped)."""
    z = zipfile.ZipFile(zpath)
    prefix = None
    for i in z.infolist():
        k = i.filename.find("/files/")
        if k >= 0:
            prefix = i.filename[:k + 7]
            break
    if prefix is None:
        sys.exit("not a Dungeon Hunter 2 cache zip (no .../files/ entries): " + zpath)
    files = nbytes = 0
    for i in z.infolist():
        n = i.filename
        if not n.startswith(prefix) or i.is_dir() or len(n) == len(prefix):
            continue
        n = n[len(prefix):]
        if "/" not in n and is_user_state(n):
            continue
        files += 1
        nbytes += i.file_size
    return "prefix=%s\nfiles=%d\nbytes=%d\n" % (prefix, files, nbytes)


def add_bundle(raw_in, raw_out, zpath, stamp=None):
    """copy the source APK and add the cache zip as a STORED asset (streamed by DataSetup, never deflated again) + its manifest."""
    with zipfile.ZipFile(raw_in) as zi, zipfile.ZipFile(raw_out, "w", zipfile.ZIP_DEFLATED) as zo:
        for i in zi.infolist():
            if i.filename.startswith("META-INF/"):
                continue
            zo.writestr(i, zi.read(i.filename), i.compress_type)
        # stamp: DataSetup unpacks again once on devices whose data predates it (so an update brings the overlay files)
        zo.writestr("assets/dh2data.txt", bundle_manifest(zpath) + ("stamp=%s\n" % stamp if stamp else ""))
        zo.write(zpath, "assets/dh2data.zip", compress_type=zipfile.ZIP_STORED)


def run(*a, **k):
    print(">", " ".join(str(x) for x in a), flush=True)
    subprocess.check_call([str(x) for x in a], **k)


def keystore():
    # The user's ~/.android/debug.keystore first: every published release (DH2-trackb-builds) is signed with it, and an APK
    # signed with another key cannot update an installed one (testers would have to uninstall and lose their saves). A
    # per-out-root keystore is only a fallback for machines without one.
    for ks in (os.path.join(os.path.expanduser("~"), ".android", "debug.keystore"), os.path.join(OUTROOT, "debug.keystore")):
        if os.path.exists(ks):
            return ks
    ks = os.path.join(OUTROOT, "debug.keystore")
    run("keytool", "-genkeypair", "-keystore", ks, "-storepass", "android", "-keypass", "android", "-alias", "androiddebugkey",
        "-keyalg", "RSA", "-keysize", "2048", "-validity", "10000", "-dname", "CN=Android Debug,O=Android,C=US")
    return ks


def sign(raw, final):
    aligned = final + ".aligned"
    if os.path.exists(aligned):
        os.remove(aligned)
    if os.path.exists(final + ".idsig"):
        os.remove(final + ".idsig")
    run(BT + "/zipalign" + EXE, "-p", "-f", "16384", raw, aligned)
    run(BT + "/apksigner" + BAT, "sign", "--ks", keystore(), "--ks-pass", "pass:android", "--key-pass", "pass:android",
        "--ks-key-alias", "androiddebugkey", "--out", final, aligned)
    os.remove(aligned)
    run(BT + "/apksigner" + BAT, "verify", final)


def build_native():
    if not os.path.exists(os.path.join(BUILD, "build.ninja")):
        run("cmake", "-S", os.path.join(ROOT, "port", "decomp-reconstruction"), "-B", BUILD, "-G", "Ninja",
            "-DCMAKE_TOOLCHAIN_FILE=" + NDK + "/build/cmake/android.toolchain.cmake", "-DANDROID_ABI=arm64-v8a",
            "-DANDROID_PLATFORM=android-26", "-DCMAKE_BUILD_TYPE=Release", "-DDH2_BOOT_DEBUG=OFF", "-DDH2_ANDROID_ABORT_STUBS=OFF")
    run("ninja", "dh2", cwd=BUILD)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--skip-native", action="store_true", help="reuse build/own-ab-arm64/libdh2.so")
    ap.add_argument("--only", choices=("origdex", "source"))
    ap.add_argument("--apk", default=DEFAULT_APK, help="your original Dungeon-Hunter-2-HD-v1-0-2.apk")
    ap.add_argument("--install", action="store_true", help="adb install -r -g the origdex APK (the source one with --only source)")
    ap.add_argument("--serial")
    ap.add_argument("--bundle-data", help="Dungeon-Hunter-2-HD-v1-0-2-cache.zip or its unpacked files/ folder: embed it (stored) so the APK unpacks its own data on first run; writes dh2-trackb-bundled.apk (source Java only)")
    ap.add_argument("--android-res", default=os.path.join(BUILD_DATA, "android-res") if os.path.isdir(os.path.join(BUILD_DATA, "android-res")) else None,
                    help="res/ + resources/ already extracted by import_resources.py (default build_data/android-res): copied into the project, no --apk needed")
    ap.add_argument("--sound-overlay", help="folder laid out like files/ (data/sounds/*.wav, from tools/trackb/sounds/ios_sound_overlay.py) added to the --bundle-data set (default build_data/ios-sounds)")
    ap.add_argument("--out-root", help="output root instead of build/own-ab")
    ap.add_argument("--build-dir", help="native build dir instead of build/own-ab-arm64")
    ap.add_argument("--min-sdk", type=int, default=26)
    ap.add_argument("--target-sdk", type=int, default=35, help="targetSdk of the source-built / bundled APK (Port SDK1: 35)")
    ap.add_argument("--orig-target-sdk", type=int, default=28, help="targetSdk of the origdex variant: the original, unpatched 2011 dex does registerReceiver without flags, "
                    "unguarded Bluetooth/PendingIntent(0) calls etc., which throw from targetSdk 31/34 on, so it stays at 28")
    a = ap.parse_args()
    global OUTROOT, OUT, BUILD
    if a.out_root:
        OUTROOT = os.path.abspath(a.out_root)
        OUT = os.path.join(OUTROOT, "out")
    if a.build_dir:
        BUILD = os.path.abspath(a.build_dir)
    if a.bundle_data:
        a.only = "source"
        if a.sound_overlay is None and os.path.isdir(os.path.join(BUILD_DATA, "ios-sounds")):
            a.sound_overlay = os.path.join(BUILD_DATA, "ios-sounds")
    os.makedirs(OUT, exist_ok=True)

    # 1. native library
    if not a.skip_native:
        build_native()
    so = os.path.join(BUILD, "libdh2.so")
    if not os.path.exists(so):
        sys.exit("missing " + so)
    shutil.copyfile(so, os.path.join(OUT, "libdh2-unstripped.so"))
    stripped = os.path.join(OUTROOT, "libDungeonHunter2.so")
    run(NDKB + "/llvm-strip" + EXE, "--strip-unneeded", "-o", stripped, so)
    storm = os.path.join(OUTROOT, "libStormGLOFT.so")
    run(NDKB + "/aarch64-linux-android26-clang" + (".cmd" if os.name == "nt" else ""), "-shared", "-llog", "-Wl,-z,max-page-size=16384",
        "-o", storm, os.path.join(ROOT, "tools", "trackb", "boot", "storm_stub.c"))

    # 2. source APK (resources imported once from the user's APK; libs placed in the git-ignored jniLibs)
    if a.android_res:
        for d in ("res", "resources"):   # the resources import_resources.py extracts, kept once outside the tree
            shutil.rmtree(os.path.join(PROJ, d), ignore_errors=True)
            shutil.copytree(os.path.join(a.android_res, d), os.path.join(PROJ, d))
    elif not os.path.isdir(os.path.join(PROJ, "res")):
        run(sys.executable, os.path.join(ROOT, "tools", "trackb", "java", "import_resources.py"), "--apk", a.apk, "--so", so)
    jl = os.path.join(PROJ, "jniLibs", "arm64-v8a")
    os.makedirs(jl, exist_ok=True)
    shutil.copyfile(stripped, os.path.join(jl, "libDungeonHunter2.so"))
    shutil.copyfile(storm, os.path.join(jl, "libStormGLOFT.so"))
    jout = os.path.join(OUTROOT, "java-out")
    run(sys.executable, os.path.join(ROOT, "tools", "trackb", "java", "build_apk.py"), "--out", jout,
        "--min-sdk", a.min_sdk, "--target-sdk", a.target_sdk)
    if a.only != "origdex":
        if a.bundle_data:
            braw = os.path.join(OUTROOT, "dh2-bundled-raw.apk")
            zdata, stamp = a.bundle_data, None
            if os.path.isdir(a.bundle_data) or a.sound_overlay:
                zdata = os.path.join(OUTROOT, "dh2data-composed.zip")
                compose_bundle(a.bundle_data, a.sound_overlay, zdata)
                if a.sound_overlay:
                    h = hashlib.sha256()
                    for d, _, fs in sorted(os.walk(a.sound_overlay)):
                        for f in sorted(fs):
                            h.update(os.path.relpath(os.path.join(d, f), a.sound_overlay).replace(os.sep, "/").encode() + bytes(1))
                            h.update(open(os.path.join(d, f), "rb").read())
                    stamp = h.hexdigest()[:16]
            add_bundle(os.path.join(jout, "dh2-java-raw.apk"), braw, zdata, stamp)
            if zdata != a.bundle_data:
                os.remove(zdata)
            sign(braw, os.path.join(OUT, "dh2-trackb-bundled.apk"))
            os.remove(braw)
        else:
            sign(os.path.join(jout, "dh2-java-raw.apk"), os.path.join(OUT, "dh2-trackb-source.apk"))   # same key as the origdex APK

    # 3. original-dex APK: the original APK's dex/resources, the manifest compiled from the same source manifest (ids are
    #    pinned identical to the original's resources.arsc), our libs, and DataSetup (the first-run data unpacker) as classes2.dex
    if a.only != "source":
        d8dir = os.path.join(OUTROOT, "datasetup-dex")
        shutil.rmtree(d8dir, ignore_errors=True)
        os.makedirs(d8dir)
        cls = os.path.join(jout, "classes")
        ds = os.path.join(cls, "com", "gameloft", "android", "GAND", "GloftD2SS")
        ds_classes = [os.path.join(ds, f) for f in os.listdir(ds) if f == "DataSetup.class" or f.startswith("DataSetup$")]
        run(BT + "/d8" + BAT, "--min-api", a.min_sdk, "--lib", PLAT + "/android.jar", "--classpath", os.path.join(jout, "classes.jar"),
            "--output", d8dir, *ds_classes)
        # Port (SDK1): the origdex manifest is compiled from the same source manifest with its own (lower) targetSdk; the resource ids stay pinned
        if a.orig_target_sdk != a.target_sdk:
            ojout = os.path.join(OUTROOT, "java-out-orig")
            run(sys.executable, os.path.join(ROOT, "tools", "trackb", "java", "build_apk.py"), "--out", ojout,
                "--min-sdk", a.min_sdk, "--target-sdk", a.orig_target_sdk)
        else:
            ojout = jout
        manifest = zipfile.ZipFile(os.path.join(ojout, "base.apk")).read("AndroidManifest.xml")
        raw = os.path.join(OUTROOT, "dh2-origdex-raw.apk")
        zi = zipfile.ZipFile(a.apk)
        with zipfile.ZipFile(raw, "w", zipfile.ZIP_DEFLATED) as zo:
            for i in zi.infolist():
                n = i.filename
                if n.startswith("META-INF/") or n.startswith("lib/") or n == "AndroidManifest.xml":
                    continue
                zo.writestr(n, zi.read(n), zipfile.ZIP_STORED if n == "resources.arsc" else zipfile.ZIP_DEFLATED)
            zo.writestr("AndroidManifest.xml", manifest)
            zo.write(os.path.join(d8dir, "classes.dex"), "classes2.dex")
            zo.write(stripped, "lib/arm64-v8a/libDungeonHunter2.so", compress_type=zipfile.ZIP_STORED)
            zo.write(storm, "lib/arm64-v8a/libStormGLOFT.so", compress_type=zipfile.ZIP_STORED)
        sign(raw, os.path.join(OUT, "dh2-trackb-origdex.apk"))

    for f in sorted(os.listdir(OUT)):
        print("%10d  %s" % (os.path.getsize(os.path.join(OUT, f)), os.path.relpath(os.path.join(OUT, f), ROOT)))

    # 4. optional install
    if a.install:
        which = "dh2-trackb-bundled.apk" if a.bundle_data else "dh2-trackb-source.apk" if a.only == "source" else "dh2-trackb-origdex.apk"
        s = ["-s", a.serial] if a.serial else []
        run(ADB, *s, "install", "-r", "-g", os.path.join(OUT, which))
        # Android 10+ refuses TelephonyManager.getDeviceId to unprivileged apps; the original dex does not catch that
        # (the source build does), so the origdex build needs this app-op once.
        run(ADB, *s, "shell", "appops", "set", PKG, "USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER", "allow")
        print("installed", which, "- data: see docs/ANDROID-RUN.md (copy the cache zip to the device, first start unpacks it)")


if __name__ == "__main__":
    main()
