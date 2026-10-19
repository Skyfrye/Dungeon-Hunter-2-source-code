#!/usr/bin/env python3
"""Chaos tester for the Track B Android build (owner M). Output only under build/own-m/sessions.

usage: py -3 tools/trackb/boot/chaos.py --serial emulator-5558 --seeds 1 2 3 [--mode game|menu] [--secs 120] [--so build/own-m-arm64/libdh2.so]
Per seed: force-stop, clear logcat, launch, (optionally navigate title -> single player), then a seeded random
action stream (stick swipes, attack/skill/potion taps, random taps, BACK, HOME+resume, rotate, trim-memory, monkey bursts,
kill+relaunch). Afterwards logcat is scanned for native crashes (tombstone / DH2CRASH), ANR, FORTIFY reports, process death
and our own DH2 error lines; native pcs are symbolized against the unstripped .so and the session is deduped by top frames.
The seed fully determines the action list (timing of the emulator is not deterministic).
"""
import argparse, os, random, re, subprocess, sys, time, json, hashlib

SDK = r"<home>/Documents/Codex/2026-10-09/find/work/tools/android-sdk"
ADB = SDK + "/platform-tools/adb.exe"
A2L = SDK + "/ndk/29.0.14206865/toolchains/llvm/prebuilt/windows-x86_64/bin/llvm-addr2line.exe"
PKG = "com.gameloft.android.GAND.GloftD2SS"
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", "..", ".."))
OUT = os.path.join(ROOT, "build", "own-m", "sessions")


class Dev:
    def __init__(self, serial):
        self.s = serial
        w, h = 2400, 1080
        try:
            o = self.sh("wm size").strip().splitlines()[-1]
            m = re.search(r"(\d+)x(\d+)", o)
            w, h = int(m.group(1)), int(m.group(2))
        except Exception:
            pass
        self.w, self.h = max(w, h), min(w, h)

    def adb(self, *a, timeout=60, out=True):
        try:
            r = subprocess.run([ADB, "-s", self.s] + list(a), capture_output=True, timeout=timeout)
            return r.stdout.decode("utf8", "replace") if out else ""
        except subprocess.TimeoutExpired:
            return ""

    def sh(self, cmd, timeout=60):
        return self.adb("shell", cmd, timeout=timeout)

    def pid(self):
        return self.sh("pidof " + PKG).strip()

    def setup(self):
        self.adb("root")
        self.adb("wait-for-device")
        for p in ("READ_PHONE_STATE", "WRITE_EXTERNAL_STORAGE", "READ_EXTERNAL_STORAGE"):
            self.sh("pm grant %s android.permission.%s" % (PKG, p))
        self.sh("appops set %s USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER allow" % PKG)
        self.sh("settings put system accelerometer_rotation 0")
        self.sh("settings put system user_rotation 1")

    def launch(self):
        self.sh("am start -n %s/.DungeonHunter2" % PKG)

    def tap(self, x, y):
        self.sh("input tap %d %d" % (x, y))


def sx(d, f):
    return int(d.w * f)


def sy(d, f):
    return int(d.h * f)


def actions_for(rng, d, n):
    """seeded list of (name, argv-ish tuple)"""
    acts = []
    names = ["stick", "attack", "skill", "potion", "tap", "back", "home", "rotate", "trim", "monkey", "kill", "menu_spam",
             "swipe", "longpress", "pause"]
    wts = [14, 14, 8, 5, 12, 6, 3, 3, 2, 3, 2, 8, 6, 3, 3]
    for _ in range(n):
        a = rng.choices(names, wts)[0]
        if a == "stick":
            cx, cy = sx(d, 0.175), sy(d, 0.77)
            ang = rng.random() * 6.283
            import math
            r = rng.choice([40, 100, 160])
            acts.append((a, (cx, cy, int(cx + r * math.cos(ang)), int(cy + r * math.sin(ang)), rng.choice([300, 800, 2000, 4000]))))
        elif a in ("attack", "skill", "potion"):
            # right-bottom button area
            x = sx(d, rng.uniform(0.70, 0.97)); y = sy(d, rng.uniform(0.45, 0.95))
            acts.append((a, (x, y, rng.choice([1, 1, 3, 8, 15]))))
        elif a == "tap":
            acts.append((a, (rng.randrange(d.w), rng.randrange(d.h))))
        elif a == "swipe":
            acts.append((a, (rng.randrange(d.w), rng.randrange(d.h), rng.randrange(d.w), rng.randrange(d.h), rng.choice([60, 200, 600]))))
        elif a == "longpress":
            x, y = rng.randrange(d.w), rng.randrange(d.h)
            acts.append((a, (x, y, rng.choice([500, 1500, 4000]))))
        elif a == "rotate":
            acts.append((a, (rng.choice([0, 1, 2, 3]),)))
        elif a == "monkey":
            acts.append((a, (rng.randrange(1 << 30), rng.choice([100, 300, 1000]))))
        elif a == "menu_spam":
            acts.append((a, (rng.choice([6, 12, 24]),)))
        elif a == "home":
            acts.append((a, (rng.choice([1, 3, 8]),)))
        elif a == "trim":
            acts.append((a, (rng.choice(["RUNNING_CRITICAL", "COMPLETE", "MODERATE", "UI_HIDDEN", "BACKGROUND"]),)))
        elif a == "pause":
            acts.append((a, (rng.choice([1, 3, 6]),)))
        else:
            acts.append((a, ()))
    return acts


def do_action(d, rng, name, args):
    if name == "stick":
        x0, y0, x1, y1, ms = args
        d.sh("input swipe %d %d %d %d %d" % (x0, y0, x1, y1, ms))
    elif name in ("attack", "skill", "potion"):
        x, y, n = args
        d.sh("for i in $(seq %d); do input tap %d %d; done" % (n, x, y))
    elif name == "tap":
        d.tap(*args)
    elif name == "swipe":
        d.sh("input swipe %d %d %d %d %d" % args)
    elif name == "longpress":
        x, y, ms = args
        d.sh("input swipe %d %d %d %d %d" % (x, y, x, y, ms))
    elif name == "back":
        d.sh("input keyevent 4")
    elif name == "home":
        for _ in range(args[0]):
            d.sh("input keyevent 3"); time.sleep(1.5)
            d.sh("monkey -p %s -c android.intent.category.LAUNCHER 1" % PKG) if False else d.launch()
            time.sleep(2.5)
    elif name == "rotate":
        d.sh("settings put system user_rotation %d" % args[0])
    elif name == "trim":
        d.sh("am send-trim-memory %s %s" % (PKG, args[0]))
    elif name == "monkey":
        seed, thr = args
        d.sh("monkey -p %s -s %d --throttle %d --pct-touch 55 --pct-motion 25 --pct-trackball 0 --pct-nav 0 --pct-majornav 5 "
             "--pct-syskeys 2 --pct-appswitch 5 --pct-anyevent 8 --ignore-crashes --ignore-timeouts -v 0 150" % (PKG, seed, thr),
             timeout=180)
    elif name == "kill":
        d.sh("am force-stop " + PKG); time.sleep(1.5); d.launch(); time.sleep(6)
        d.need_nav = True
    elif name == "menu_spam":
        # rapid back / tap in the menu area, left column and centre
        for i in range(args[0]):
            if rng.random() < 0.4:
                d.sh("input keyevent 4")
            else:
                d.tap(rng.randrange(d.w), rng.randrange(d.h))
    elif name == "pause":
        d.sh("input keyevent 3"); time.sleep(args[0]); d.launch(); time.sleep(3)


def navigate_to_game(d, log):
    # the same coordinates as to_game.sh (2400x1080 AVD): dismiss SDK dialog, tap to continue, Start, Single player
    time.sleep(2); d.tap(1884, 656)
    log("waiting for title")
    time.sleep(70)
    d.tap(1000, 700); time.sleep(20)
    d.tap(2148, 322); time.sleep(8)
    d.tap(2136, 368)
    log("waiting for level load")
    def cnt():
        try:
            return open(d.lcpath, encoding="utf8", errors="replace").read().count("IS FINISHED")
        except Exception:
            return 0
    t = time.time()
    while cnt() == 0 and time.time() - t < 240 and d.pid():
        time.sleep(5)
    for _ in range(8):
        d.tap(1200, 540); time.sleep(4)
        c0 = cnt(); time.sleep(4)
        if cnt() == c0:
            break
    log("level entered")


def symbolize(so, pcs):
    if not pcs:
        return []
    try:
        r = subprocess.run([A2L, "-f", "-C", "-e", so] + pcs, capture_output=True, timeout=120)
        lines = r.stdout.decode("utf8", "replace").splitlines()
    except Exception as e:
        return ["?"] * len(pcs)
    res = []
    for i in range(0, len(lines) - 1, 2):
        f = lines[i]; loc = lines[i + 1]
        loc = re.sub(r".*/port/decomp-reconstruction/", "", loc.replace("\\", "/"))
        res.append("%s @ %s" % (f, loc))
    return res


def analyze(logtxt, so, alive_end):
    """returns list of findings dicts {kind, frames, detail}"""
    finds = []
    lines = logtxt.splitlines()
    # native crashes: DEBUG tombstone backtrace
    pcs = [m.group(1) for l in lines for m in [re.search(r"DEBUG +: +#\d+ pc ([0-9a-f]+) .*libDungeonHunter2\.so", l)] if m]
    sig = [l for l in lines if "Fatal signal" in l]
    if sig:
        sym = symbolize(so, ["0x" + p for p in pcs[:14]])
        finds.append({"kind": "native-crash", "detail": sig[0][-160:], "frames": sym})
    # guest handler
    offs = []
    for l in lines:
        if "DH2CRASH" in l:
            m = re.search(r"off (0x[0-9a-f]+)", l)
            if m:
                offs.append(m.group(1))
    if offs and not sig:
        sym = symbolize(so, offs[:14])
        det = next((l for l in lines if "DH2CRASH" in l and "signal" in l), "DH2CRASH")
        finds.append({"kind": "guest-crash", "detail": det[-160:], "frames": sym})
    for l in lines:
        if re.search(r"ANR in " + re.escape(PKG), l) or "am_anr" in l and PKG in l:
            finds.append({"kind": "anr", "detail": l[-200:], "frames": []}); break
    for l in lines:
        if "DH2FORTIFY" in l:
            finds.append({"kind": "fortify", "detail": l[-200:], "frames": []}); break
    for l in lines:
        if "AndroidRuntime" in l and ("FATAL" in l):
            finds.append({"kind": "java-crash", "detail": l[-200:], "frames": []}); break
    errs = [l for l in lines if re.search(r" E DH2(GL|DBG|SWF)? ", l) and " bt off" not in l and "updateData" not in l]
    if errs:
        finds.append({"kind": "log-error", "detail": "\n".join(x[-180:] for x in errs[:5]), "frames": []})
    if not alive_end and not any(f["kind"] in ("native-crash", "guest-crash", "java-crash") for f in finds):
        finds.append({"kind": "silent-death", "detail": "process gone, no crash record", "frames": []})
    return finds


def sig_of(f):
    if f["frames"]:
        top = [x.split(" @ ")[0] for x in f["frames"][:3]]
        return f["kind"] + ":" + "|".join(top)
    return f["kind"] + ":" + re.sub(r"[0-9a-fx]{4,}|\d+", "N", f["detail"].splitlines()[0])[:80]


def run_session(d, seed, mode, secs, so, nact):
    sd = os.path.join(OUT, "s%s" % seed)
    os.makedirs(sd, exist_ok=True)
    lf = open(os.path.join(sd, "actions.log"), "w")

    def log(m):
        s = "[%s] %s" % (time.strftime("%H:%M:%S"), m)
        print(s, flush=True); lf.write(s + "\n"); lf.flush()

    rng = random.Random(seed)
    d.setup()
    d.sh("am force-stop " + PKG)
    d.adb("logcat", "-c")
    d.adb("logcat", "-G", "64M")
    lcf = open(os.path.join(sd, "logcat.txt"), "wb")
    lcp = subprocess.Popen([ADB, "-s", d.s, "logcat", "-v", "threadtime", "-b", "main,system,crash", "*:I", "DH2GLT:S", "skia:S", "DH2STDOUT:S"],
                           stdout=lcf, stderr=subprocess.DEVNULL)
    d.need_nav = False
    d.lcpath = os.path.join(sd, "logcat.txt")
    t0 = time.time()
    d.launch()
    log("seed %d mode %s launched" % (seed, mode))
    if mode == "game":
        navigate_to_game(d, log)
    else:
        time.sleep(10); d.tap(1884, 656); time.sleep(60); d.tap(1000, 700); time.sleep(10)
    acts = actions_for(rng, d, nact)
    i = 0
    died = False
    while time.time() - t0 < secs and i < len(acts):
        name, args = acts[i]; i += 1
        log("act %d %s %s" % (i, name, args))
        do_action(d, rng, name, args)
        if d.pid() and d.need_nav and mode == "game":
            d.need_nav = False
            log("re-navigating after relaunch")
            navigate_to_game(d, log)
        if not d.pid():
            log("process died after act %d (%s)" % (i, name))
            died = True
            break
    time.sleep(2)
    alive = bool(d.pid())
    subprocess.run([ADB, "-s", d.s, "exec-out", "screencap", "-p"], stdout=open(os.path.join(sd, "end.png"), "wb"))
    time.sleep(1); lcp.terminate(); lcf.close()
    txt = open(os.path.join(sd, "logcat.txt"), encoding="utf8", errors="replace").read()
    finds = analyze(txt, so, alive)
    for f in finds:
        f["sig"] = sig_of(f)
    with open(os.path.join(sd, "findings.json"), "w") as f:
        json.dump(finds, f, indent=1)
    log("alive=%s findings=%s" % (alive, [x["sig"] for x in finds]))
    return finds


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--serial", default="emulator-5558")
    ap.add_argument("--seeds", type=int, nargs="+", default=[1])
    ap.add_argument("--mode", default="game")
    ap.add_argument("--secs", type=int, default=240)
    ap.add_argument("--acts", type=int, default=60)
    ap.add_argument("--so", default=os.path.join(ROOT, "build", "own-m-arm64", "libdh2.so"))
    a = ap.parse_args()
    d = Dev(a.serial)
    seen = {}
    for s in a.seeds:
        fs = run_session(d, s, a.mode, a.secs, a.so, a.acts)
        for f in fs:
            seen.setdefault(f["sig"], []).append(s)
    print("==== summary")
    for k, v in seen.items():
        print(k, "seeds", v)


main()
