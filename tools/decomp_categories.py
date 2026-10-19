#!/usr/bin/env python3
"""Split unreconstructed decompiled functions into non-overlapping categories.

Input: reports/decomp-reconstruction/inventory.csv (tools/decomp_inventory.py).
Output: reports/decomp-reconstruction/categories.json and
port/decomp-reconstruction/<category>/queue.csv (functions still to do).

Ownership rules, applied in order:
1. Functions already claimed by maintained port/ code are done.
2. Thunks, the compatibility-wrapper library and STL runtime are not
   reconstruction targets (the toolchain/runtime supplies them).
3. Game classes the live-gameplay reconstruction session already works in
   (any claimed function in the class, or a RESERVED name pattern) stay with
   that session; their remaining functions are listed but not queued here.
4. Everything else gets exactly one category from CATEGORY_RULES.

Track B (branch track-b/development) reconstructs the whole game, so rules 1 and 3
no longer hold functions back. Claimed and reserved functions are routed like any
other: game-bucket rows that the net and pydata rules do not take go to the game-*
categories in GAME_RULES; other buckets go through CATEGORY_RULES. Rows that rules 1
and 3 used to hold back only ever add to a queue, so earlier queues keep their rows.
"""
from __future__ import annotations

import csv
import json
import re
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
REPORT = ROOT / "reports" / "decomp-reconstruction"
PORT = ROOT / "port" / "decomp-reconstruction"

# Live gameplay, UI, rendering, audio playback and level-script areas owned by the
# "Dungeon Hunter II native reconstruction" session (feature/desktop-gameplay-loop).
RESERVED = re.compile(
    r"^(Character|Char[A-Z]|CS[A-Z]|AIS|GameObject|PO[A-Z]|Level|GSLevel|ObjectManager|ObjectSearcher|ObjectHandle|ObjectBase|"
    r"Player|Savegame|SavegameManager|LevelSavegame|QuestSavegame|Quest|QE_|Objective|Reward|Condition|Script_|ScriptManager|ScriptCmd|"
    r"Item|Container|OpenableContainer|DestructibleContainer|SlotContainer|Door|Trigger|Projectile|LaserType|Spawn|Room|CRoom|Zone|ZoneEx|"
    r"CheckpointZone|PF|Physical|Liftable|Decor|AnimatedDecor|Dummy|Floor|ColBox|Menu|MultiMenu|HUD|InfoHUD|GameSWF|SWF|Flash|FSCommand|"
    r"Camera|Light|PlayerLight|VisualObject|VisualFX|AnimatedFX|Anim|BlendedAnim|Animator|Animation|Lua|sfc|Random|rnd|StreamReader|"
    r"Application|GS[A-Z]|GS_|StateMachine|StateBase|SceneManager|RootSceneNode|AssetManager|GameEvent|GameEventManager|EventManager|"
    r"Module|SortModule|Sort|Drag|Drop|Anchor|DialogMsg|CharMenu|AchievementMsg|SlideEvent|TrophyManager|TrophyData|LevelConfig|LevelMap|"
    r"v2|InputManager|InputDevice|Gamepad|Keyboard|Mouse|ZoomHandler|SoundEmitter|DebugCached|Test|PolyStat|MaterialData|IrrFactory|"
    r"ColladaFactory|.*SceneNode$|BufferedRenderer|Billboard|batch|Vector3DFList|SearchFail|ByteArray|Point[23]D|DebugSwitches|"
    r"OnScreenKeyboard|DataReloader|IDataReloader|PlayerStat|UserProperties|Dragable|Dropable|AbstractTableModel|CharPropTextField|"
    r"ConditionData|VectorSet|lstr|Property|PropertyInstance|PropertyMap|SimpleTypeProperty|.*Trap$)"
)

# Free functions that are gameplay/UI callbacks (gameswf natives, Lua bindings, AI).
GLOBAL_RESERVED = re.compile(r"^(?:\S+ )?(Native|Trophy|Lua|lua_|Get[A-Z]|Set[A-Z]|Is[A-Z]|Has[A-Z]|Do[A-Z]|On[A-Z]|Spawn|Kill|Quest|Level|Player|Char|Item|Menu|HUD|Script|AI|Anim|Camera|FX)")

def strip_return_type(d: str) -> str:
    """Drop a leading return type, so a return type such as boost::enable_if<...>::type never decides the category.

    The return type ends at the last space outside template brackets before the function's own
    qualified name. A name that starts with "operator" is left alone.
    """
    depth, cut = 0, -1
    for i, c in enumerate(d):
        if c == "(":
            break
        if c == "<":
            depth += 1
        elif c == ">":
            depth -= 1
        elif c == " " and depth == 0:
            cut = i
    if cut < 0:
        return d
    rest = d[cut + 1:]
    if rest.startswith("operator") or not re.match(r"[A-Za-z_]\w*(?:<|::)", rest):
        return d
    return rest


def head(d: str) -> str:
    """The function name without its return type or parameter list, so neither decides the category."""
    return strip_return_type(d).split("(", 1)[0]


CATEGORY_RULES = [
    ("pydata-accessors", lambda o, d, b: b == "game" and re.match(r"^(Structs|Arrays|PyData)", o)),
    ("net-transport", lambda o, d, b: b == "game" and re.match(
        r"^(C?Net|NetStruct|NetBitStream|C(Android|LC)?Socket|LCAndroidSocket|CSocket|CBluetooth|CTcp|CUdp|CTransport|CPacket|"
        r"DataPacket|DefaultDataPacket|CConnection|Connection|CMutex|CNetMutex|CSemaphore|CReadWriteLock|Thread|updateJob|CNetworkEmulation|"
        r"CNetworkId|CNetLog|CDataStats|Buffer$|StreamBuffer|BufferedStream)", o)),
    ("net-session-online", lambda o, d, b: b == "lib-online-glx" or (b == "game" and re.match(
        r"^(CMsg|CMessage|CMessaging|CEvent|IEvent|CLobby|ConnectionLobby|DataPacketLobby|Multiplayer|CNetPlayer|GameCenter|CSignIn|"
        r"tFriend|tRoom|tGLRoom|tMember|tMatching|_LiveFeed|CBluetoothNetRoom|MultiplayerStateMachine|channel|item$)", o))),
    ("tinyxml-and-c-libs", lambda o, d, b: b == "lib-image-zip-font" or (b == "game" and re.match(r"^(TiXml)", o))
        or (b == "game" and o == "<global>" and re.search(r"GLU|PriorityQ|GLUtesselator|^no[A-Z]", d))
        or (b == "game" and o == "<global>" and re.match(r"^(__gl_|glu|gl[A-Z]|T42_|PCF_|BDF_|FNT_|PS_|II_|SS|NV|VZ|zlib|start_|process_|_W)", d))),
    ("vox-audio", lambda o, d, b: b == "lib-vox-audio" or (b == "game" and (re.match(r"^(AdpcmState)", o)
        or re.search(r"stb_vorbis|vox::", d)))),
    ("glitch-core-io", lambda o, d, b: b == "engine-glitch" and re.match(r"^(?:\S+ )?(glitch::(core|io|os|memory|IReferenceCounted|ITimer|IDevice|CTimer|IEventReceiver|irr)|boost::)", head(d))),
    ("glitch-video", lambda o, d, b: b == "engine-glitch" and re.match(r"^(?:\S+ )?glitch::(video|res)", head(d))),
    ("glitch-scene-collada-gui", lambda o, d, b: b == "engine-glitch"),
    ("core-platform", lambda o, d, b: b in ("game", "lib-libnativeinterface")),
]


# Track B gameplay categories, for the game-bucket functions the live-gameplay session
# used to own. Applied in order; game-app is the catch-all.
GAME_RULES = [
    ("game-anim", lambda o, d: re.match(r"^(Anim|Animator|BlendedAnim|v2[A-Z]|AnimationSet|AnimSet|CharAnim)", o)),
    ("game-character", lambda o, d: re.match(r"^(Character|Char[A-Z]|CS[A-Z]|AIS|AI[A-Z_]|Player(Info|Light)?$|PlayerManager|Monster|NPC|Faery|Spawn)", o)),
    ("game-ui", lambda o, d: re.match(r"^(RenderFX|Menu|MultiMenu|HUD|InfoHUD|GameSWF|SWF|Flash|FSCommand|Dialog|CharMenu|AchievementMsg|SlideEvent|"
                                      r"OnScreenKeyboard|Drag|Drop|Anchor|Sort|AbstractTableModel|CharPropTextField|StringManager|Font)", o)),
    ("game-items-save", lambda o, d: re.match(r"^(Item|Quest|QE_|Objective|Reward|Condition|Savegame|SavegameManager|LevelSavegame|"
                                              r"PlayerSavegame|QuestSavegame|Property|PropertyInstance|PropertyMap|SimpleTypeProperty|"
                                              r"Trophy|PlayerStat|UserProperties|Loot|Gold|Potion|Inventory)", o)),
    ("game-world", lambda o, d: re.match(r"^(GameObject|ObjectManager|ObjectSearcher|ObjectHandle|ObjectBase|Level|GSLevel|Room|CRoom|Zone|"
                                         r"CheckpointZone|Trigger|Door|Container|OpenableContainer|DestructibleContainer|SlotContainer|"
                                         r"Projectile|LaserType|.*Trap$|PF|Physical|Liftable|Decor|AnimatedDecor|Dummy|Floor|ColBox|"
                                         r"VisualObject|VisualFX|AnimatedFX|Light|Camera|SceneManager|RootSceneNode|.*SceneNode$|"
                                         r"AssetManager|IrrFactory|ColladaFactory|BufferedRenderer|Billboard|batch|MaterialData|Module|"
                                         r"LevelConfig|LevelMap|SoundEmitter|Vector3DFList|Point[23]D|PolyStat)", o)),
    ("game-app", lambda o, d: True),
]


# Upstream libraries linked into the game (see reports/decomp-reconstruction/vendored-libraries.md):
# Lua 5.1.4 (float lua_Number), Box2D 2.0.1 (DH2 b2Settings), gameswf r1714 plus Gameloft changes.
# They are queued like any category; rows that match upstream are ledgered `upstream`, the rest rebuilt.
VENDOR_CATEGORIES = {"vendor-lua", "vendor-box2d", "vendor-gameswf"}


FUN_NAME = re.compile(r"^(?:thunk_)?FUN_([0-9a-fA-F]+)$")


def fix_fun_addresses(rows: list[dict]) -> list[dict]:
    """Move Ghidra FUN_ entries to the address in their name.

    Ghidra's elf_address for these is 0x10000 below the address in the name, and IDA has the
    function at the name's address (checked against the Hex-Rays export). Named entries are
    already right. An entry whose address also holds a named entry is dropped, so the same
    function is not queued twice. Owners are not changed here, so neighbouring queues stay put.
    """
    named = {int(r["elf_address"], 16) for r in rows if r["library"] == "libDungeonHunter2.so" and not FUN_NAME.match(r["name"])}
    kept = []
    for r in rows:
        m = FUN_NAME.match(r["name"]) if r["library"] == "libDungeonHunter2.so" else None
        if m:
            a = int(m.group(1), 16)
            if a in named:
                continue
            r = dict(r, elf_address=f"{a:x}")
        kept.append(r)
    return kept


def main() -> int:
    rows = fix_fun_addresses(list(csv.DictReader((REPORT / "inventory.csv").open(encoding="utf-8"))))
    owner_claimed = Counter(r["owner"] for r in rows if r["claimed"] == "1" and r["bucket"] == "game")
    cats = defaultdict(list)
    for r in rows:
        b, o, d = r["bucket"], r["owner"], r["demangled"]
        held = r["claimed"] == "1" or (b == "game" and ((o != "<global>" and owner_claimed[o]) or RESERVED.match(o)
                                                     or (o == "<global>" and GLOBAL_RESERVED.match(d)))
                                       and not re.match(r"^(Structs|Arrays|PyData)", o))
        if b in ("thunk", "wrapper-stormgloft", "runtime-stl"):
            cats["skip-" + b].append(r)
        elif b == "lib-gameswf" and re.match(r"^(?:\S+ )?RenderFX", strip_return_type(d)):
            cats["game-ui"].append(r)          # RenderFX is DH2 game glue, not gameswf (vendored-libraries.md)
        elif b == "lib-gameswf" and re.match(r"^(?:\S+ )?glitch::", head(d)):
            cats[next(name for name, rule in CATEGORY_RULES if rule(o, d, "engine-glitch"))].append(r)
        elif b == "lib-lua" and re.search(r"sfc::script::lua|LuaAllocator", d):
            cats["game-app"].append(r)         # Gameloft's C++ wrapper over Lua, not Lua itself
        elif b in ("lib-gameswf", "lib-lua", "lib-box2d"):
            cats["vendor-" + b.removeprefix("lib-")].append(r)
        elif held and b == "game" and not any(rule(o, d, b) for name, rule in CATEGORY_RULES
                                              if name in ("pydata-accessors", "net-transport", "net-session-online")):
            cats[next(name for name, rule in GAME_RULES if rule(o, d))].append(r)
        else:
            for name, rule in CATEGORY_RULES:
                if rule(o, d, b):
                    cats[name].append(r)
                    break
            else:
                cats["unassigned"].append(r)
    summary = {}
    for name, items in sorted(cats.items()):
        summary[name] = {"functions": len(items), "bytes": sum(int(i["body_bytes"]) for i in items),
                         "top_owners": Counter(i["owner"] for i in items).most_common(12)}
        if name in {n for n, _ in CATEGORY_RULES} | {n for n, _ in GAME_RULES} | VENDOR_CATEGORIES:
            out = PORT / name
            out.mkdir(parents=True, exist_ok=True)
            items.sort(key=lambda i: (i["owner"], int(i["elf_address"], 16)))
            with (out / "queue.csv").open("w", newline="", encoding="utf-8") as fh:
                w = csv.writer(fh)
                w.writerow(["elf_address", "body_bytes", "owner", "name", "demangled"])
                for i in items:
                    w.writerow([i["elf_address"], i["body_bytes"], i["owner"], i["name"], i["demangled"]])
    (REPORT / "categories.json").write_text(json.dumps(summary, indent=1) + "\n", encoding="utf-8")
    for k, v in summary.items():
        print(f"{k:34} {v['functions']:6} {v['bytes']:9}  {', '.join(o for o, _ in v['top_owners'][:6])}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
