#!/usr/bin/env python3
"""Sound overlay: the sound-pack files the Android 1.0.2 data lacks, taken from YOUR OWN iOS 1.0.0 copy (IPA).

usage: py -3 -I tools/trackb/sounds/ios_sound_overlay.py --ipa Dungeon_Hunter_2_HD_1.0.0_ios_3.2.ipa --data build_data/files --out build_data/ios-sounds
       [--write-manifest]   (re)write tools/trackb/sounds/ios_sound_manifest.json (names, sizes, sha256; no audio bytes)
       [--check]            only verify an existing --out folder against the manifest

Why: data/sounds/sounds.xml (578 entries, identical on iOS and Android) names 284 files (324 entries) that the Android cache zip
does not ship, so VoxSoundManager::LoadSound gets no data and IsReady stays 0 (vase, chest, loot, gold, ...). The iOS build has them in
data/sounds/sounds.zip, stored as pack data/fileNNNNNN.dat (the logical->pack map is data/file00000-plantext.dat); only the first four
bytes of the pack are XOR-obfuscated (the zip local-header magic), the members are plain. The WAVs are MS-WAVE PCM (tag 1) or IMA ADPCM
(tag 17), the two sub-decoders of vox::DecoderMSWav (the 233 sound files both builds ship are byte-identical), so nothing needs
transcoding: a member in a codec vox cannot decode would be re-encoded with ffmpeg (PCM s16 / IMA ADPCM, same rate and channels)
and the manifest records it (none in 1.0.0). Output: <out>/data/sounds/<filename>, i.e. the files/ layout the game reads
(RES_PATH + "data/sounds/" + filename); build_release.py --sound-overlay <out> adds it to the bundled data.
Game data never goes into git: the overlay folder lives outside the tracked tree (build_data/ is git-ignored).
"""
import argparse, hashlib, io, json, os, shutil, struct, subprocess, sys, tempfile, zipfile
import xml.etree.ElementTree as ET

HERE = os.path.dirname(os.path.abspath(__file__))
MANIFEST = os.path.join(HERE, "ios_sound_manifest.json")
IOS_APP = "Payload/dungeonhunter2iPad.app/"
IOS_MEMBER = "_build_iphone/data/sounds/"
TAGS = {"pcm": 1, "adpcm": 17}


def sha(b):
    return hashlib.sha256(b).hexdigest()


def wav_fmt(b):
    """(format tag, channels, rate, bits) of a RIFF/WAVE file, None if it is not one."""
    if len(b) < 12 or b[:4] != b"RIFF" or b[8:12] != b"WAVE":
        return None
    o = 12
    while o + 8 <= len(b):
        cid, n = b[o:o + 4], struct.unpack_from("<I", b, o + 4)[0]
        if cid == b"fmt ":
            tag, ch, rate = struct.unpack_from("<HHI", b, o + 8)
            bits = struct.unpack_from("<H", b, o + 22)[0]
            return tag, ch, rate, bits
        o += 8 + n + (n & 1)
    return None


def catalog(data):
    rows = [r.attrib for r in ET.parse(os.path.join(data, "data", "sounds", "sounds.xml")).getroot().findall("./sounds/sound")]
    if not rows:
        sys.exit("no <sound> rows in " + data + "/data/sounds/sounds.xml")
    return rows


def ios_sounds_zip(ipa):
    """the iOS sounds.zip, header restored, as an open ZipFile (plus the pack's member name in the IPA)."""
    z = zipfile.ZipFile(ipa)
    index = z.read(IOS_APP + "data/file00000-plantext.dat").decode("utf-8-sig")
    pack = None
    for line in index.splitlines():
        if ":" in line:
            p, logical = line.split(":", 1)
            if logical.replace("\\", "/").strip() in ("data/sounds/sounds.zip", "sounds/sounds.zip"):
                pack = p.replace("\\", "/").strip()
    if pack is None:
        sys.exit("the IPA's plaintext index has no sounds/sounds.zip entry")
    member = IOS_APP + (pack if pack.startswith("data/") else "data/" + pack)
    raw = z.read(member)
    return zipfile.ZipFile(io.BytesIO(b"PK\x03\x04" + raw[4:])), member


def convert(src, fmt, want_tag):
    """ffmpeg re-encode to the catalog's codec at the same rate/channels (only used if a member does not match)."""
    codec = "pcm_s16le" if want_tag == 1 else "adpcm_ima_wav"
    with tempfile.TemporaryDirectory(dir=os.path.dirname(MANIFEST)) as t:
        a, b = os.path.join(t, "in.wav"), os.path.join(t, "out.wav")
        open(a, "wb").write(src)
        subprocess.check_call(["ffmpeg", "-v", "error", "-y", "-i", a, "-c:a", codec, "-ar", str(fmt[2]), "-ac", str(fmt[1]), b])
        return open(b, "rb").read()


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--data", required=True, help="the Android files/ folder (unpacked 1.0.2 cache): sounds.xml + the sounds it already has")
    ap.add_argument("--out", required=True, help="overlay folder to write (<out>/data/sounds/...)")
    ap.add_argument("--ipa", help="your iOS Dungeon_Hunter_2_HD_1.0.0_ios_3.2.ipa (read only)")
    ap.add_argument("--write-manifest", action="store_true")
    ap.add_argument("--check", action="store_true")
    a = ap.parse_args()

    rows = catalog(a.data)
    have = set(os.listdir(os.path.join(a.data, "data", "sounds")))
    missing = {}
    for r in rows:
        if r["filename"] not in have:
            missing.setdefault(r["filename"], []).append(r)
    entries = sum(len(v) for v in missing.values())
    print("catalog: %d entries, %d files; missing on Android: %d entries / %d files" % (len(rows), len({r['filename'] for r in rows}), entries, len(missing)))
    sdir = os.path.join(a.out, "data", "sounds")

    if a.check:
        m = json.load(open(MANIFEST, encoding="utf-8"))
        bad = 0
        for f in m["files"]:
            p = os.path.join(sdir, f["name"])
            if not os.path.exists(p) or sha(open(p, "rb").read()) != f["sha256"]:
                print("BAD", f["name"])
                bad += 1
        print("checked %d files, %d bad" % (len(m["files"]), bad))
        sys.exit(1 if bad else 0)

    if not a.ipa:
        sys.exit("--ipa is required")
    sz, pack = ios_sounds_zip(a.ipa)
    names = set(sz.namelist())
    os.makedirs(sdir, exist_ok=True)
    files, absent, same_as_android = [], [], 0
    # members present on both sides: confirm the iOS bytes are the Android format (identical files)
    for n in sorted(have):
        if IOS_MEMBER + n in names and n.endswith((".wav", ".vxn")):
            same_as_android += sz.read(IOS_MEMBER + n) == open(os.path.join(a.data, "data", "sounds", n), "rb").read()
    for name in sorted(missing):
        rs = missing[name]
        info = {"name": name, "uids": sorted(int(r["uid"]) for r in rs), "format": rs[0]["format"], "bank": rs[0]["bank"]}
        if IOS_MEMBER + name not in names:
            absent.append(info)
            continue
        src = sz.read(IOS_MEMBER + name)
        out, conv = src, None
        if info["format"] in TAGS:
            fmt = wav_fmt(src)
            if fmt is None:
                sys.exit("not a WAVE file: " + name)
            # "pcm" and "adpcm" rows load the same way (sound_pack_xml_load: both are the MS-WAVE decoder, which picks its
            # sub-decoder from the file's own tag), so a tag-1 file under an "adpcm" row is kept byte-exact; only a codec
            # vox cannot decode is re-encoded
            if (fmt[0], fmt[3]) not in ((1, 16), (17, 4)):
                out = convert(src, fmt, TAGS[info["format"]])
                conv = "ffmpeg tag %d/%d bits -> %d" % (fmt[0], fmt[3], TAGS[info["format"]])
            info["wave"] = "tag=%d ch=%d rate=%d bits=%d" % wav_fmt(out)
        open(os.path.join(sdir, name), "wb").write(out)
        info.update({"source": pack + "!" + IOS_MEMBER + name, "size": len(out), "sha256": sha(out), "converted": conv})
        files.append(info)
    added = sum(len(f["uids"]) for f in files)
    print("written: %d files (%d entries) to %s, converted: %d; iOS lacks %d files (%d entries); %d files present on both sides are byte-identical"
          % (len(files), added, sdir, sum(1 for f in files if f["converted"]), len(absent), sum(len(f["uids"]) for f in absent), same_as_android))
    for f in absent:
        print("  not in the iOS copy either:", f["name"], "uids", f["uids"])
    if a.write_manifest:
        with open(MANIFEST, "w", encoding="utf-8", newline="\n") as fo:
            json.dump({"source": "Dungeon_Hunter_2_HD_1.0.0_ios_3.2.ipa, " + pack + " (data/sounds/sounds.zip)",
                       "missing_entries": entries, "missing_files": len(missing), "added_entries": added, "added_files": len(files),
                       "files": files, "absent_in_ios": absent}, fo, indent=1)
            fo.write("\n")
        print("manifest:", MANIFEST)


if __name__ == "__main__":
    main()
