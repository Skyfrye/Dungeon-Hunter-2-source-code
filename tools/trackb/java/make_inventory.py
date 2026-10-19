#!/usr/bin/env python3
"""Write reports/decomp-reconstruction/java-inventory.csv: every class of the original classes.dex, its category and the
reconstructed source file.

usage: py -3 tools/trackb/java/make_inventory.py --orig-apk <original.apk>

Categories
  A  Gameloft game / glue code (reconstructed from the dex)
  C  DRM / licence / billing / in-app purchase code (Gameloft glue and closed vendor SDKs; reconstructed, degrades like the original
     when the service is gone, see port/android-trackb/README.md)
  B  third-party library code that is not Gameloft's (closed Samsung / KDDI SDKs are vendored as reconstructed source, there is no
     public artifact; there are NO maven/AndroidX/ads/analytics libraries in this APK)
  X  injected by whoever repacked the APK (not part of the game, deliberately NOT reconstructed)
"""
import argparse, csv, os, re, subprocess, tempfile, zipfile

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))
SDK = os.environ.get("ANDROID_HOME", r"<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk")
DEXDUMP = SDK + "/build-tools/37.0.0/dexdump.exe"
SRC = os.path.join(ROOT, "port", "android-trackb", "app", "src", "main", "java")
OUT = os.path.join(ROOT, "reports", "decomp-reconstruction", "java-inventory.csv")
G = "com.gameloft.android.GAND.GloftD2SS"

# owner heuristics for the obfuscated helper classes (anonymous listeners/runnables) in the root package: first match wins
OWNERS = [
    (r"Zirconia_DRM|com\.samsung\.zirconia", "C", "Zirconia DRM listener/dialog helper"),
    (r"\bVZBilling\b|\bBilling\b|InAppBilling|SamsungIABActivity|SamsungHelper", "C", "billing helper"),
    (r"GLBluetooth", "A", "Bluetooth multiplayer glue"),
    (r"GLiveMain|IGPActivity|XPlayer|GLUtils\.HTTP", "A", "GLive / IGP portal helper"),
    (r"GameInstaller|installer\.utils", "A", "data downloader (installer) helper"),
    (r"MyVideoView|GLMediaPlayer|Musicplayer|GameGLSurfaceView|GameRenderer|DungeonHunter2", "A", "game activity / media helper"),
]


def dump(apk):
    d = tempfile.mkdtemp(prefix="dh2-inv-")
    p = os.path.join(d, "classes.dex")
    open(p, "wb").write(zipfile.ZipFile(apk).read("classes.dex"))
    return subprocess.run([DEXDUMP, "-d", p], capture_output=True, text=True, encoding="utf-8", errors="replace").stdout


def classes_and_natives(txt):
    classes, natives = [], {}
    cls = None
    name = None
    for line in txt.split("\n"):
        m = re.match(r"\s+Class descriptor\s+:\s+'L(.*);'", line)
        if m:
            cls = m.group(1).replace("/", ".")
            classes.append(cls)
        m = re.match(r"\s+name\s+:\s+'(.*)'", line)
        if m:
            name = m.group(1)
        m = re.match(r"\s+access\s+:\s+0x[0-9a-f]+ \((.*)\)", line)
        if m and "NATIVE" in m.group(1):
            natives[cls] = natives.get(cls, 0) + 1
    return classes, natives


def src_file(top):
    p = os.path.join(SRC, top.replace(".", os.sep) + ".java")
    return os.path.relpath(p, ROOT).replace(os.sep, "/") if os.path.exists(p) else ""


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--orig-apk", required=True)
    a = ap.parse_args()
    classes, natives = classes_and_natives(dump(a.orig_apk))
    rows = []
    cache = {}
    for c in classes:
        top = c.split("$")[0]
        f = src_file(top)
        text = ""
        if f:
            if f not in cache:
                cache[f] = open(os.path.join(ROOT, f), encoding="utf-8").read()
            text = cache[f]
        cat, note = None, ""
        if c.startswith("com.samsung.zirconia"):
            cat, note = "C", "Samsung Zirconia DRM client (closed SDK); natives are in libDungeonHunter2.so, not the original libnativeinterface.so"
        elif c.startswith("com.samsungapps.plasma"):
            cat, note = "C", "Samsung Apps 'Plasma' in-app purchase client (closed SDK)"
        elif c.startswith("com.kddi.market"):
            cat, note = "C", "KDDI au Market ALML licence client (closed SDK)"
        elif c.startswith("a.a."):
            cat, note = "B", "annotation types used only by the Samsung/KDDI library classes"
        elif c.startswith("com.savegame") or c.startswith("android.support.v4.app"):
            cat, note = "X", "injected by the APK repacker (string-obfuscated save/data restorer or watermark), not game code; NOT reconstructed"
        elif c.startswith(G + ".billing") or c.startswith(G + ".iab") or re.search(r"\.(Billing|VZBilling)(\$|$)", c):
            cat, note = "C", "in-app billing glue (Gameloft IAB / Verizon / Samsung IAB)"
        elif c.startswith(G + ".installer"):
            cat, note = "A", "data downloader / installer (Gameloft)"
        elif c.startswith(G + ".GLUtils"):
            cat, note = "A", "Gameloft utility layer (device info, HTTP, XPlayer/GLLive account client, crypto, zip)"
        elif c.startswith("com.gameloft.glf") or c.startswith("com.gameloft.layout"):
            cat, note = "A", "Gameloft config / UI widget"
        elif c.startswith(G):
            short = c[len(G) + 1:].split("$")[0]
            if short in ("DungeonHunter2", "GameRenderer", "GameGLSurfaceView", "GLMediaPlayer", "GLResLoader", "Musicplayer", "MyVideoView",
                         "Sounddefs", "MediaPlayList", "MyList", "GLBluetooth", "GLBluetoothService", "GLiveMain", "IGPActivity",
                         "GetNpost", "ApplicationSetUp"):
                cat, note = "A", "game activity / engine bridge"
            elif short == "Zirconia_DRM":
                cat, note = "C", "launcher activity: Zirconia DRM check, then starts DungeonHunter2"
            elif re.fullmatch(r"b[p-u]", short):
                cat, note = "A", "resource id holder (%s); field names restored from the resource table" % {
                    "bp": "R.drawable", "bq": "R.id", "br": "R.integer", "bs": "R.layout", "bt": "R.raw", "bu": "R.string"}[short]
            else:
                for pat, k, n in OWNERS:
                    if re.search(pat, text):
                        cat, note = k, n
                        break
                else:
                    cat, note = "A", "obfuscated helper class"
        else:
            cat, note = "A", ""
        status = "omitted" if cat == "X" else ("reconstructed" if f else "missing")
        rows.append([c, top, cat, status, f, natives.get(c, 0), note])
    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    with open(OUT, "w", newline="", encoding="utf-8") as fh:
        w = csv.writer(fh)
        w.writerow(["class", "top_level_class", "category", "status", "source_file", "native_methods", "notes"])
        w.writerows(rows)
    by = {}
    for r in rows:
        by[(r[2], r[3])] = by.get((r[2], r[3]), 0) + 1
    print(len(rows), "classes ->", OUT)
    for k in sorted(by):
        print(k, by[k])


if __name__ == "__main__":
    main()
