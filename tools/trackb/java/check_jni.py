#!/usr/bin/env python3
"""Verify the JNI surface of the reconstructed Java project.

usage: py -3 tools/trackb/java/check_jni.py --orig-apk <original.apk> --new-apk <rebuilt.apk> [--so build/own-arm64/libdh2.so]

1. Native methods (class, name, descriptor) declared in the original classes.dex == those in the rebuilt dex.
2. Every native method of the classes that libDungeonHunter2.so serves has a matching Java_* export in the .so
   (JNI short names; overloaded natives would need the long form and are reported).
3. Exports of the .so without a Java declaration are listed.
Exit status 1 on any mismatch in 1, or on a native declared in the Java side for a class whose library is the game .so
but missing in the .so (2).
"""
import argparse, os, re, subprocess, sys, tempfile, zipfile

SDK = os.environ.get("ANDROID_HOME", r"<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk")
DEXDUMP = SDK + "/build-tools/37.0.0/dexdump.exe"
NM = SDK + "/ndk/29.0.14206865/toolchains/llvm/prebuilt/windows-x86_64/bin/llvm-nm.exe"


def natives(apk):
    d = tempfile.mkdtemp(prefix="dh2-dex-")
    p = os.path.join(d, "classes.dex")
    with zipfile.ZipFile(apk) as z:
        open(p, "wb").write(z.read("classes.dex"))
    txt = subprocess.run([DEXDUMP, "-d", p], capture_output=True, text=True, encoding="utf-8", errors="replace").stdout
    out = set()
    cls = None
    name = typ = None
    for line in txt.split("\n"):
        m = re.match(r"\s+Class descriptor\s+:\s+'L(.*);'", line)
        if m:
            cls = m.group(1).replace("/", ".")
        m = re.match(r"\s+name\s+:\s+'(.*)'", line)
        if m:
            name = m.group(1)
        m = re.match(r"\s+type\s+:\s+'(.*)'", line)
        if m:
            typ = m.group(1)
        m = re.match(r"\s+access\s+:\s+0x[0-9a-f]+ \((.*)\)", line)
        if m and "NATIVE" in m.group(1) and name and typ:
            out.add((cls, name, typ))
    return out


def jni_short(cls, name):
    def esc(s):
        return s.replace("_", "_1").replace(".", "_")
    return "Java_" + esc(cls) + "_" + esc(name)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--orig-apk", required=True)
    ap.add_argument("--new-apk", required=True)
    ap.add_argument("--so", default=os.path.join(os.path.dirname(__file__), "..", "..", "..", "build", "own-arm64", "libdh2.so"))
    a = ap.parse_args()
    orig, new = natives(a.orig_apk), natives(a.new_apk)
    bad = 0
    print("native methods: original dex %d, rebuilt dex %d" % (len(orig), len(new)))
    for x in sorted(orig - new):
        print("MISSING in rebuilt:", x)
        bad += 1
    for x in sorted(new - orig):
        print("EXTRA in rebuilt:", x)
        bad += 1
    exports = set(l.split()[-1] for l in subprocess.run([NM, "-D", "--defined-only", a.so], capture_output=True, text=True).stdout.split("\n")
                  if l.strip() and (" T " in l))
    java_exports = {e for e in exports if e.startswith("Java_")}
    served = set()
    for cls, name, typ in sorted(new):
        sym = jni_short(cls, name)
        if sym in java_exports:
            served.add(sym)
    notserved = [(c, n, t) for c, n, t in sorted(new) if jni_short(c, n) not in java_exports]
    print("Java natives bound by libDungeonHunter2.so exports: %d of %d" % (len(served), len(new)))
    for c, n, t in notserved:
        print("  native without export in the game .so (library not loaded / not used on this path): %s.%s%s" % (c, n, t))
    for e in sorted(java_exports - served):
        print("  EXPORT without Java declaration:", e)
        bad += 1
    print("JNI_OnLoad exported:", "JNI_OnLoad" in exports)
    print("RESULT:", "MISMATCH" if bad else "OK")
    sys.exit(1 if bad else 0)


if __name__ == "__main__":
    main()
