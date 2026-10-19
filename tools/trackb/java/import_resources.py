#!/usr/bin/env python3
"""Import the original resources and the native libraries into port/android-trackb (nothing here is tracked by git).

usage: py -3 tools/trackb/java/import_resources.py [--apk PATH] [--so build/own-arm64/libdh2.so] [--jadx DIR] [--no-storm-stub]

The reconstructed Java project contains source only. Everything that is game data comes from the user's own copy of
Dungeon-Hunter-2-HD-v1-0-2.apk at build time:
  * res/        decoded to editable source XML/PNG with jadx (the APK's res/ is compiled binary XML); res/values/public.xml
                carries the original numeric ids, which the Gameloft code uses as literals
  * assets/     copied unchanged (the original has only data.save, the payload of a repack-injected component that is
                deliberately not reconstructed, so it is skipped and assets/ stays empty)
  * resources/  i18n/*.properties and plasma.properties (read through Class.getResourceAsStream at run time)
and the native side:
  * jniLibs/arm64-v8a/libDungeonHunter2.so  = our rebuilt libdh2.so (stripped), under the name System.loadLibrary("DungeonHunter2") expects
  * jniLibs/arm64-v8a/libStormGLOFT.so      = tools/trackb/boot/storm_stub.c (the closed arm32 Gameloft library is only loaded, never linked)

jadx is a reverse-engineering tool, not game code. If --jadx is not given the script uses %TEMP%/jadx (or downloads
jadx 1.5.6 there and verifies the archive SHA-256 before unpacking).
"""
import argparse, hashlib, os, shutil, subprocess, sys, tempfile, urllib.request, zipfile

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))
PROJ = os.path.join(ROOT, "port", "android-trackb", "app", "src", "main")
DEFAULT_APK = os.path.expanduser("~") + r"/Documents/Projects/Dungeon Hunter 2 Recomp/Dungeon-Hunter-2-HD-v1-0-2.apk"
SDK = (os.environ.get("ANDROID_HOME") or os.environ.get("ANDROID_SDK_ROOT") or os.path.expanduser("~/AppData/Local/Android/Sdk"))
NDKB = SDK + "/ndk/29.0.14206865/toolchains/llvm/prebuilt/windows-x86_64/bin"
JADX_URL = "https://github.com/skylot/jadx/releases/download/v1.5.6/jadx-1.5.6.zip"
JADX_SHA256 = "545ea2be9c242511bc145755cf4bda2485ade42966e096f8b4d3da2a230e8974"


def ensure_jadx(explicit):
    if explicit:
        return explicit
    base = os.path.join(tempfile.gettempdir(), "jadx")
    exe = os.path.join(base, "bin", "jadx.bat" if os.name == "nt" else "jadx")
    if os.path.exists(exe):
        return base
    zpath = os.path.join(tempfile.gettempdir(), "jadx-1.5.6.zip")
    if not os.path.exists(zpath):
        print("downloading", JADX_URL)
        urllib.request.urlretrieve(JADX_URL, zpath)
    digest = hashlib.sha256(open(zpath, "rb").read()).hexdigest()
    if digest != JADX_SHA256:
        sys.exit("jadx archive SHA-256 mismatch: " + digest)
    with zipfile.ZipFile(zpath) as z:
        z.extractall(base)
    return base


def framework_attr_tables():
    """android attr name -> ('enum'|'flags', [(symbol, int)]) from the platform's attrs.xml."""
    import xml.etree.ElementTree as ET
    path = SDK + "/platforms/android-37.0/data/res/values/attrs.xml"
    tables = {}
    for el in ET.parse(path).getroot().iter("attr"):
        name = el.get("name")
        kids = [(k.get("name"), int(k.get("value"), 0)) for k in el if k.tag in ("enum", "flag")]
        if name and kids:
            tables[name] = ("enum" if el[0].tag == "enum" else "flags", kids)
    return tables


def symbolize_attrs(res_dir):
    """jadx writes enum/flag attribute values as numbers in values/styles.xml; aapt2 needs the symbolic names."""
    import re
    tables = framework_attr_tables()
    item = re.compile(r'(<item name="android:(\w+)">)(-?(?:0x[0-9a-fA-F]+|\d+))(</item>)')

    def conv(m):
        name = m.group(2)
        if name not in tables:
            return m.group(0)
        kind, kids = tables[name]
        v = int(m.group(3), 0)
        if kind == "enum":
            for sym, val in kids:
                if val == v:
                    return m.group(1) + sym + m.group(4)
            return m.group(0)
        syms, rest = [], v
        for sym, val in sorted(kids, key=lambda k: -bin(k[1]).count("1")):
            if val != 0 and (rest & val) == val and (v & val) == val:
                syms.append(sym)
                rest &= ~val
        if rest == 0 and syms:
            return m.group(1) + "|".join(syms) + m.group(4)
        for sym, val in kids:
            if val == v:
                return m.group(1) + sym + m.group(4)
        return m.group(0)

    for dp, _, fs in os.walk(res_dir):
        for f in fs:
            if f.endswith(".xml"):
                fp = os.path.join(dp, f)
                t = open(fp, encoding="utf-8").read()
                t2 = item.sub(conv, t)
                if t2 != t:
                    open(fp, "w", encoding="utf-8").write(t2)


def clean(path):
    if os.path.isdir(path):
        shutil.rmtree(path)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apk", default=DEFAULT_APK)
    ap.add_argument("--so", default=os.path.join(ROOT, "build", "own-arm64", "libdh2.so"))
    ap.add_argument("--jadx")
    ap.add_argument("--no-storm-stub", action="store_true")
    a = ap.parse_args()
    if not os.path.exists(a.apk):
        sys.exit("original APK not found: " + a.apk)

    # raw files: assets/, i18n/, plasma.properties
    clean(os.path.join(PROJ, "assets"))
    clean(os.path.join(PROJ, "resources"))
    with zipfile.ZipFile(a.apk) as z:
        for n in z.namelist():
            if n == "assets/data.save":
                continue  # payload of the repack-injected com.savegame.SavesRestoringPortable, which is not reconstructed (see README)
            if n.startswith("assets/"):
                dest = os.path.join(PROJ, n)
            elif n.startswith("i18n/") or n == "plasma.properties":
                dest = os.path.join(PROJ, "resources", n)
            else:
                continue
            if n.endswith("/"):
                continue
            os.makedirs(os.path.dirname(dest), exist_ok=True)
            with open(dest, "wb") as f:
                f.write(z.read(n))
    print("assets + resources imported")

    # decoded res/
    jadx = ensure_jadx(a.jadx)
    tmp = tempfile.mkdtemp(prefix="dh2-jadx-res-")
    env = dict(os.environ)
    if "JAVA_HOME" not in env:
        for cand in (r"C:/Program Files/Eclipse Adoptium/jdk-17.0.20.101-hotspot",):
            if os.path.isdir(cand):
                env["JAVA_HOME"] = cand
    exe = os.path.join(jadx, "bin", "jadx.bat" if os.name == "nt" else "jadx")
    subprocess.check_call([exe, "-d", tmp, "-s", a.apk], env=env, stdout=subprocess.DEVNULL)
    clean(os.path.join(PROJ, "res"))
    shutil.copytree(os.path.join(tmp, "resources", "res"), os.path.join(PROJ, "res"))
    shutil.rmtree(tmp, ignore_errors=True)
    # The APK's *.9.png are already in compiled form (npTc chunk instead of the 1px border), which aapt2 rejects as
    # source. Keep the bytes and drop the ".9" so aapt2 (compile --no-crunch) copies them; the framework builds a
    # NinePatchDrawable from the embedded chunk regardless of the file name.
    for dp, _, fs in os.walk(os.path.join(PROJ, "res")):
        for f in fs:
            if f.endswith(".9.png"):
                os.replace(os.path.join(dp, f), os.path.join(dp, f[:-6] + ".png"))
    # jadx writes numeric values where aapt2 wants the enum names (layout_width/height are dimension-or-enum attributes)
    import re
    enum_fix = re.compile(r'(android:layout_(?:width|height)">|android:layout_(?:width|height)=")(-1|-2)(?=["<])')
    for dp, _, fs in os.walk(os.path.join(PROJ, "res")):
        for f in fs:
            if f.endswith(".xml"):
                fp = os.path.join(dp, f)
                t = open(fp, encoding="utf-8").read()
                t2 = enum_fix.sub(lambda m: m.group(1) + ("match_parent" if m.group(2) == "-1" else "wrap_content"), t)
                if t2 != t:
                    open(fp, "w", encoding="utf-8").write(t2)
    symbolize_attrs(os.path.join(PROJ, "res"))
    print("res decoded; ids pinned by res/values/public.xml")

    # Gradle wrapper jar (a build tool binary, not tracked here; the scripts and properties are)
    wj = os.path.join(ROOT, "port", "android-trackb", "gradle", "wrapper", "gradle-wrapper.jar")
    src = os.path.join(ROOT, "port", "android-native", "gradle", "wrapper", "gradle-wrapper.jar")
    if not os.path.exists(wj) and os.path.exists(src):
        shutil.copyfile(src, wj)

    # native libraries
    lib = os.path.join(PROJ, "jniLibs", "arm64-v8a")
    os.makedirs(lib, exist_ok=True)
    if not os.path.exists(a.so):
        sys.exit("libdh2.so not found (build it per port/decomp-reconstruction/ANDROID-BUILD.md): " + a.so)
    strip = NDKB + "/llvm-strip" + (".exe" if os.name == "nt" else "")
    subprocess.check_call([strip, "--strip-unneeded", "-o", os.path.join(lib, "libDungeonHunter2.so"), a.so])
    if not a.no_storm_stub:
        cc = NDKB + "/aarch64-linux-android26-clang" + (".cmd" if os.name == "nt" else "")
        stub = os.path.join(ROOT, "tools", "trackb", "boot", "storm_stub.c")
        subprocess.check_call([cc, "-shared", "-llog", "-Wl,-z,max-page-size=16384", "-o", os.path.join(lib, "libStormGLOFT.so"), stub])
    print("native libraries placed in", lib)


if __name__ == "__main__":
    main()
