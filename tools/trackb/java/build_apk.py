#!/usr/bin/env python3
"""Build the reconstructed Java side into an installable APK with the plain Android SDK tools (no Gradle).

Same pipeline AGP runs: aapt2 compile/link -> javac -> d8 -> zip -> zipalign (16 KiB) -> apksigner (debug key).
Use this when Gradle cannot run (e.g. a sandbox without Selector/loopback support); `./gradlew assembleDebug` in
port/android-trackb builds the same sources and is the canonical build.

usage: py -3 tools/trackb/java/build_apk.py [--out build/own-j/apk-out] [--min-sdk 26] [--target-sdk 35]
Prerequisite: py -3 tools/trackb/java/import_resources.py   (res/, assets, resources, jniLibs; none of it is tracked)
Output (untracked): <out>/dh2-java-debug.apk
"""
import argparse, glob, os, re, shutil, subprocess, sys, zipfile

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))
PROJ = os.path.join(ROOT, "port", "android-trackb", "app", "src", "main")
SDK = os.environ.get("ANDROID_HOME", r"<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk")
BT = SDK + "/build-tools/37.0.0"
PLAT = SDK + "/platforms/android-37.0"
PKG = "com.gameloft.android.GAND.GloftD2SS"
EXE = ".exe" if os.name == "nt" else ""


def run(*a, **k):
    print(">", " ".join(str(x) for x in a))
    subprocess.check_call([str(x) for x in a], **k)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=os.path.join(ROOT, "build", "own-j", "apk-out"))
    ap.add_argument("--min-sdk", type=int, default=26)
    ap.add_argument("--target-sdk", type=int, default=35)
    ap.add_argument("--version-code", type=int, default=102)
    ap.add_argument("--version-name", default="1.0.2")
    a = ap.parse_args()
    out = a.out
    shutil.rmtree(out, ignore_errors=True)
    os.makedirs(out)
    for need in ("res", "jniLibs"):
        if not os.path.isdir(os.path.join(PROJ, need)):
            sys.exit("missing %s: run tools/trackb/java/import_resources.py first" % need)

    # manifest: what the Gradle manifest merger does (package, versionCode/Name, uses-sdk)
    m = open(os.path.join(PROJ, "AndroidManifest.xml"), encoding="utf-8").read()
    m = m.replace('<manifest xmlns:android="http://schemas.android.com/apk/res/android"',
                  '<manifest xmlns:android="http://schemas.android.com/apk/res/android"\n    package="%s"\n'
                  '    android:versionCode="%d"\n    android:versionName="%s"' % (PKG, a.version_code, a.version_name), 1)
    m = m.replace("</manifest>", '    <uses-sdk android:minSdkVersion="%d" android:targetSdkVersion="%d"/>\n</manifest>' % (a.min_sdk, a.target_sdk))
    mf = os.path.join(out, "AndroidManifest.xml")
    open(mf, "w", encoding="utf-8").write(m)

    # resources (ids pinned by res/values/public.xml)
    flat = os.path.join(out, "res.zip")
    # --no-crunch: the 9-patch PNGs from the APK are already in compiled form (npTc chunk), they must be copied untouched
    run(BT + "/aapt2" + EXE, "compile", "--no-crunch", "--dir", os.path.join(PROJ, "res"), "-o", flat)
    base = os.path.join(out, "base.apk")
    run(BT + "/aapt2" + EXE, "link", "-o", base, "-I", PLAT + "/android.jar", "--manifest", mf,
        "--min-sdk-version", a.min_sdk, "--target-sdk-version", a.target_sdk,
        "--version-code", a.version_code, "--version-name", a.version_name,
        "--no-auto-version", flat, *(["-A", os.path.join(PROJ, "assets")] if os.path.isdir(os.path.join(PROJ, "assets")) else []))

    # java -> classes -> dex
    cls = os.path.join(out, "classes")
    os.makedirs(cls)
    srcs = glob.glob(os.path.join(PROJ, "java", "**", "*.java"), recursive=True)
    lst = os.path.join(out, "srcs.txt")
    # javac argument files need quotes around paths that contain spaces
    open(lst, "w").write("\n".join('"' + s.replace("\\", "/") + '"' for s in srcs))
    # (the @file also needs the classpath quoted for the same reason, so pass it as separate argv, not through the file)
    cp = PLAT + "/android.jar" + os.pathsep + PLAT + "/optional/org.apache.http.legacy.jar"
    run("javac", "-nowarn", "-encoding", "UTF-8", "--release", "17", "-Xlint:none", "-cp", cp, "-d", cls, "@" + lst)
    dexdir = os.path.join(out, "dex")
    os.makedirs(dexdir)
    # d8 takes one jar (hundreds of .class paths overflow the Windows command line)
    jar = os.path.join(out, "classes.jar")
    with zipfile.ZipFile(jar, "w", zipfile.ZIP_DEFLATED) as zj:
        for dp, _, fs in os.walk(cls):
            for f in fs:
                if f.endswith(".class"):
                    zj.write(os.path.join(dp, f), os.path.relpath(os.path.join(dp, f), cls).replace("\\", "/"))
    d8 = BT + "/d8" + (".bat" if os.name == "nt" else "")
    run(d8, "--min-api", a.min_sdk, "--lib", PLAT + "/android.jar", "--classpath", PLAT + "/optional/org.apache.http.legacy.jar",
        "--output", dexdir, jar)

    # assemble: base.apk (manifest, arsc, res, assets) + classes.dex + lib/ + java resources
    raw = os.path.join(out, "dh2-java-raw.apk")
    with zipfile.ZipFile(base) as zi, zipfile.ZipFile(raw, "w", zipfile.ZIP_DEFLATED) as zo:
        for i in zi.infolist():
            data = zi.read(i.filename)
            zo.writestr(i.filename, data, zipfile.ZIP_STORED if i.filename == "resources.arsc" or i.compress_type == 0 else zipfile.ZIP_DEFLATED)
        zo.write(os.path.join(dexdir, "classes.dex"), "classes.dex")
        for dp, _, fs in os.walk(os.path.join(PROJ, "jniLibs")):
            for f in fs:
                p = os.path.join(dp, f)
                rel = os.path.relpath(p, os.path.join(PROJ, "jniLibs")).replace("\\", "/")
                zo.write(p, "lib/" + rel, compress_type=zipfile.ZIP_STORED)
        resdir = os.path.join(PROJ, "resources")
        for dp, _, fs in os.walk(resdir):
            for f in fs:
                p = os.path.join(dp, f)
                zo.write(p, os.path.relpath(p, resdir).replace("\\", "/"))
    aligned = os.path.join(out, "dh2-java-aligned.apk")
    run(BT + "/zipalign" + EXE, "-p", "-f", "16384", raw, aligned)
    ks = os.path.join(ROOT, "build", "own-r", "debug.keystore")
    if not os.path.exists(ks):
        ks = os.path.join(ROOT, "build", "own-j", "debug.keystore")
        if not os.path.exists(ks):
            run("keytool", "-genkeypair", "-keystore", ks, "-storepass", "android", "-keypass", "android", "-alias", "androiddebugkey",
                "-keyalg", "RSA", "-keysize", "2048", "-validity", "10000", "-dname", "CN=Android Debug,O=Android,C=US")
    final = os.path.join(out, "dh2-java-debug.apk")
    run(BT + "/apksigner" + (".bat" if os.name == "nt" else ""), "sign", "--ks", ks, "--ks-pass", "pass:android", "--key-pass", "pass:android",
        "--ks-key-alias", "androiddebugkey", "--out", final, aligned)
    print("OK", final)


if __name__ == "__main__":
    main()
