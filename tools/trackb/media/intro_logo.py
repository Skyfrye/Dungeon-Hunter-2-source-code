#!/usr/bin/env python3
"""Put the real animated Gameloft logo (with its buzzing cue) in front of the Android intro movies.

The Android 1.0.2 intro.mp4 / intro_jp.mp4 / intro_kr.mp4 open with a STATIC silver logo over a DC hum (0-6 s). The iOS 1.0.0 IPA
carries the real one: Payload/dungeonhunter2iPad.app/LOGO_Gameloft_iPhone.m4v (7.333 s, stereo AAC). New intro = iOS logo
(0-7.333 s) + the Android intro from 6.2 s (narration starts ~6.4 s; 6.2 s keeps the story fade-in). The original movie view ignores
touches for the first 7300 ms, so the logo is not skippable either. Each output is re-encoded to its original's container, codec
(h264 Main 3.1 or MPEG-4 SP), 1280x720, 24 fps, AAC-LC 48 kHz stereo, so Android MediaPlayer plays it as before.

usage: py -3 -I tools/trackb/media/intro_logo.py --ipa GAME.ipa --originals CACHE.zip|DIR --out DIR [--story-start 6.2]
  --originals: the unmodified Android intros (the cache zip data/Dungeon-Hunter-2-HD-v1-0-2-cache.zip, or a folder holding them).
Needs ffmpeg/ffprobe on PATH. Work files go to <out>/.work (removed afterwards)."""
import argparse, json, os, shutil, subprocess, sys, zipfile

LOGO = "Payload/dungeonhunter2iPad.app/LOGO_Gameloft_iPhone.m4v"
NAMES = ["intro.mp4", "intro_jp.mp4", "intro_kr.mp4"]


def run(*a):
    r = subprocess.run(a, capture_output=True, text=True)
    if r.returncode:
        sys.exit("failed: %s\n%s" % (" ".join(a), r.stderr[-2000:]))
    return r.stdout


def probe(p):
    j = json.loads(run("ffprobe", "-v", "error", "-show_streams", "-show_format", "-of", "json", p))
    v = next(s for s in j["streams"] if s["codec_type"] == "video")
    return v["codec_name"], float(j["format"]["duration"])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--ipa", required=True)
    ap.add_argument("--originals", required=True)
    ap.add_argument("--out", required=True)
    ap.add_argument("--story-start", type=float, default=6.2)
    a = ap.parse_args()
    out = os.path.abspath(a.out)
    work = os.path.join(out, ".work")
    shutil.rmtree(work, ignore_errors=True)
    os.makedirs(work)
    logo = os.path.join(work, "logo.m4v")
    with zipfile.ZipFile(a.ipa) as z, open(logo, "wb") as f:
        f.write(z.read(LOGO))
    for n in NAMES:
        src = os.path.join(work, "orig_" + n)
        if os.path.isdir(a.originals):
            shutil.copyfile(os.path.join(a.originals, n), src)
        else:
            with zipfile.ZipFile(a.originals) as z:
                m = [i for i in z.namelist() if i.endswith("/files/" + n) or i == "files/" + n or i == n]
                if not m:
                    sys.exit("%s not in %s" % (n, a.originals))
                open(src, "wb").write(z.read(m[0]))
        codec, dur = probe(src)
        vf = "scale=1280:720:force_original_aspect_ratio=decrease:flags=lanczos,pad=1280:720:(ow-iw)/2:(oh-ih)/2,setsar=1,fps=24,format=yuv420p"
        fc = ("[0:v]%s[lv];[0:a]aresample=48000,aformat=channel_layouts=stereo,afade=t=out:st=7.30:d=0.033[la];"
              "[1:v]trim=start=%f,setpts=PTS-STARTPTS,fps=24,format=yuv420p[sv];"
              "[1:a]atrim=start=%f,asetpts=PTS-STARTPTS,afade=t=in:st=0:d=0.02[sa];"
              "[lv][la][sv][sa]concat=n=2:v=1:a=1[v][a]") % (vf, a.story_start, a.story_start)
        if codec == "h264":
            enc = ["-c:v", "libx264", "-profile:v", "main", "-level", "3.1", "-b:v", "3050k", "-maxrate", "4500k", "-bufsize", "6000k",
                   "-preset", "slow", "-g", "48"]
        else:
            enc = ["-c:v", "mpeg4", "-b:v", "3060k", "-g", "48", "-qmin", "2"]
        dst = os.path.join(out, n)
        run("ffmpeg", "-y", "-v", "error", "-i", logo, "-i", src, "-filter_complex", fc, "-map", "[v]", "-map", "[a]", *enc,
            "-pix_fmt", "yuv420p", "-r", "24", "-c:a", "aac", "-b:a", "164k", "-ar", "48000", "-ac", "2", "-movflags", "+faststart", dst)
        c2, d2 = probe(dst)
        print("%s: %s %.3fs (orig %.3fs, expected %.3fs) %d bytes" % (n, c2, d2, dur, 7.3333 + dur - a.story_start, os.path.getsize(dst)))
    shutil.rmtree(work, ignore_errors=True)


if __name__ == "__main__":
    main()
