#!/usr/bin/env python3
"""Build the Track B first-boot test APK (output only under build/own-r; nothing here is tracked).

usage: py -3 tools/trackb/boot/build_apk.py [--orig-apk PATH] [--so build/own-arm64/libdh2.so]
Original dex/manifest/resources come from Dungeon-Hunter-2-HD-v1-0-2.apk (its libDungeonHunter2.so is
byte-identical to the reference armeabi-v7a .so). The only manifest edit is minSdkVersion 8 -> 26 so the
(absent) targetSdk follows and Android 14+ accepts the install.
"""
import argparse, os, shutil, struct, subprocess, sys, zipfile
SDK = (os.environ.get("ANDROID_HOME") or os.environ.get("ANDROID_SDK_ROOT") or os.path.expanduser("~/AppData/Local/Android/Sdk"))
BT = SDK + "/build-tools/37.0.0"
NDKB = SDK + "/ndk/29.0.14206865/toolchains/llvm/prebuilt/windows-x86_64/bin"
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))
OUT = os.path.join(ROOT, "build", "own-m")
ORIG = os.path.expanduser("~") + r"/Documents/Projects/Dungeon Hunter 2 Recomp/Dungeon-Hunter-2-HD-v1-0-2.apk"

def patch_min_sdk(axml, new):
    # find resource id 0x0101020c (minSdkVersion) index in the RESOURCE_MAP chunk, then the attribute using it
    pos = 8; rm = None
    while pos < len(axml):
        t, hs, sz = struct.unpack_from("<HHI", axml, pos)
        if t == 0x0180: rm = (pos, hs, sz)
        pos += sz
    ids = struct.unpack_from("<%dI" % ((rm[2] - rm[1]) // 4), axml, rm[0] + rm[1])
    idx = ids.index(0x0101020c)
    b = bytearray(axml); done = 0
    pos = 8
    while pos < len(b):
        t, hs, sz = struct.unpack_from("<HHI", b, pos)
        if t == 0x0102:
            ns, name, cnt_off = None, None, None
            attrStart, attrSize, attrCount = struct.unpack_from("<HHH", b, pos + 24)
            for i in range(attrCount):
                a = pos + 16 + attrStart + i * 20
                an, = struct.unpack_from("<I", b, a + 4)
                if an == idx:
                    ty = b[a + 15]
                    assert ty == 0x10
                    struct.pack_into("<I", b, a + 16, new); done += 1
        pos += sz
    assert done == 1
    return bytes(b)

def run(*a):
    print(">", " ".join(a)); subprocess.check_call(a)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--orig-apk", default=ORIG)
    ap.add_argument("--so", default=os.path.join(ROOT, "build", "own-m-arm64", "libdh2.so"))
    ap.add_argument("--min-sdk", type=int, default=26)
    ap.add_argument("--no-strip", action="store_true")
    a = ap.parse_args()
    os.makedirs(OUT, exist_ok=True)
    stripped = os.path.join(OUT, "libDungeonHunter2.so")
    if a.no_strip: shutil.copy(a.so, stripped)
    else: run(NDKB + "/llvm-strip.exe", "--strip-unneeded", "-o", stripped, a.so)
    # empty libStormGLOFT.so: the Java class loads it in <clinit> but libDungeonHunter2.so does not link against it
    storm = os.path.join(OUT, "libStormGLOFT.so")
    c = os.path.join(os.path.dirname(os.path.abspath(__file__)), "storm_stub.c")
    run(NDKB + "/aarch64-linux-android26-clang.cmd", "-shared", "-llog", "-Wl,-z,max-page-size=16384", "-o", storm, c)
    # keystore
    ks = os.path.join(OUT, "debug.keystore")
    if not os.path.exists(ks):
        run("keytool", "-genkeypair", "-keystore", ks, "-storepass", "android", "-keypass", "android", "-alias", "androiddebugkey",
            "-keyalg", "RSA", "-keysize", "2048", "-validity", "10000", "-dname", "CN=Android Debug,O=Android,C=US")
    raw = os.path.join(OUT, "dh2-raw.apk")
    zi = zipfile.ZipFile(a.orig_apk)
    with zipfile.ZipFile(raw, "w", zipfile.ZIP_DEFLATED) as zo:
        for i in zi.infolist():
            n = i.filename
            if n.startswith("META-INF/") or n.startswith("lib/"): continue
            data = zi.read(n)
            if n == "AndroidManifest.xml": data = patch_min_sdk(data, a.min_sdk)
            zo.writestr(n, data, zipfile.ZIP_STORED if n == "resources.arsc" else zipfile.ZIP_DEFLATED)
        zo.write(stripped, "lib/arm64-v8a/libDungeonHunter2.so", compress_type=zipfile.ZIP_STORED)
        zo.write(storm, "lib/arm64-v8a/libStormGLOFT.so", compress_type=zipfile.ZIP_STORED)
    al = os.path.join(OUT, "dh2-aligned.apk")
    if os.path.exists(al): os.remove(al)
    run(BT + "/zipalign.exe", "-p", "-f", "16384", raw, al)
    sg = os.path.join(OUT, "dh2-debug.apk")
    run("cmd", "/c", (BT + "/apksigner.bat").replace("/", "\\"), "sign", "--ks", ks, "--ks-pass", "pass:android", "--key-pass", "pass:android", "--out", sg, al)
    print("OK", sg)
main()
