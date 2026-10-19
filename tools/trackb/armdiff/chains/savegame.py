"""Savegame: PlayerSavegame section handlers (__Save*/__Load*) on populated slots, bytes against the original."""
import random

from chain import Chain, World
from chains import services
from chains.common import make_stream, new_stream, stream_bytes
from chains.charprops import table_size
from chains.combat import make_char

PS_SIZE = 0x400
ORIG = {"m_playerLevel": 0x30, "m_playerClass": 0x34, "m_saveDate": 0x38, "m_unlockedDifficulty": 0x3c,
        "m_levelEntryPoint": 0x40, "m_useSpawnPoint": 0x4c, "m_seeds": 0x5c, "m_currentFaery": 0xac}
SECTIONS = ["PlayerName", "LevelEntryPoint", "DifficultyLevel", "PlayerLevel", "UseSpawnPoint", "LevelName", "CurrentFaery",
            "Faeries", "PlayerClass", "FastTravelList", "Skills", "LevelStates"]


def off(w, name):
    return ORIG[name] if w.side == "orig" else w.field_offset("PlayerSavegame", name)


def populate(w: World, ps: int, rnd: random.Random) -> None:
    w.put_u32(ps + off(w, "m_playerLevel"), rnd.randrange(1, 70))
    w.put_u32(ps + off(w, "m_playerClass"), rnd.randrange(0, 3))
    w.put_u32(ps + off(w, "m_saveDate"), rnd.randrange(1, 1 << 30))
    w.put_u32(ps + off(w, "m_unlockedDifficulty"), rnd.randrange(0, 3))
    for d in range(3):
        w.put_u32(ps + off(w, "m_levelEntryPoint") + 4 * d, rnd.randrange(0, 9))
        w.put_u32(ps + off(w, "m_currentFaery") + 4 * d, rnd.randrange(0, 5))
        w.write(ps + off(w, "m_useSpawnPoint") + d, bytes([rnd.randrange(0, 2)]))
        w.put_u32(ps + off(w, "m_seeds") + 4 * d, rnd.randrange(1 << 24))
    for row in range(6):
        w.call(w.fn("PlayerSavegame", "SG_SetSkillLevel"), ps, row, rnd.randrange(0, 6), fatal=False, ret="void")
    for slot in range(4):
        w.call(w.fn("PlayerSavegame", "SG_SetSkillInSlot"), ps, slot, rnd.randrange(0, 6), fatal=False, ret="void")
    for d in range(3):
        for fid in range(5):
            w.call(w.fn("PlayerSavegame", "SG_SetFaerieState"), ps, fid, rnd.randrange(0, 2), d, fatal=False, ret="u32")
            w.call(w.fn("PlayerSavegame", "SG_SetFaerieLevel"), ps, fid, rnd.randrange(0, 12), d, fatal=False, ret="u32")
        for lv in range(0, table_size(w, "LevelList"), 3):
            w.call(w.fn("PlayerSavegame", "SG_SetLevelState"), ps, lv, rnd.randrange(0, 4), d, fatal=False, ret="void")
        for loc in range(0, table_size(w, "WorldMap"), 2):
            w.call(w.fn("PlayerSavegame", "SG_SetMapLocState"), ps, loc, rnd.randrange(0, 3), d, fatal=False, ret="void")


def new_slot(w: World) -> int:
    """A blank slot with its per-difficulty tables allocated (what _Load does after the constructor)."""
    ps = w.heap(PS_SIZE, "@skip")
    w.call("_ZN14PlayerSavegameC1Ev", ps, ret="void")
    w.put_u32(ps + off(w, "m_playerClass"), 0)          # _InitSkills sizes the skill rows from the class
    ch = make_char(w, 5, "pl")
    cp = 0x13c8 if w.side == "orig" else w.field_offset("Character", "m_charPropsId")
    w.write(ch + cp, bytes([5, 0]))                     # Character::m_charPropsId: the CharacterTable row (skill list id)
    w.put_u32(ps + (0x10 if w.side == "orig" else w.field_offset("PlayerSavegame", "m_player")), ch)
    for f in ("_InitSkills", "_InitFaeries", "_InitLevelStates"):
        w.call(w.fn("PlayerSavegame", f), ps, ret="void", fatal=False)
    return ps


def run_sections(w: World):
    services.install_files(w)
    services.install_constants(w)
    services.install_strings(w)
    rnd = random.Random(7)
    out = {}
    ps = new_slot(w)
    populate(w, ps, rnd)
    saved = {}
    for sec in SECTIONS:
        sb = new_stream(w)
        w.call(f"_ZN14PlayerSavegame{len('__Save' + sec)}__Save{sec}EP11IStreamBasePv", sb, ps, ret="void", fatal=False)
        saved[sec] = stream_bytes(w, sb)
        out[f"save.{sec}"] = saved[sec].hex()
    # load every section into a fresh slot and save again: the bytes must come back unchanged
    ps2 = new_slot(w)
    for sec in SECTIONS:
        if not saved[sec]:
            continue
        src = make_stream(w, saved[sec])
        w.call(f"_ZN14PlayerSavegame{len('__Load' + sec)}__Load{sec}EP11IStreamBasePv", src, ps2, ret="void", fatal=False)
        sb = new_stream(w)
        w.call(f"_ZN14PlayerSavegame{len('__Save' + sec)}__Save{sec}EP11IStreamBasePv", sb, ps2, ret="void", fatal=False)
        out[f"resave.{sec}"] = stream_bytes(w, sb).hex()
    return out


CHAINS = [Chain("savegame_sections", "pydata", run_sections, "PlayerSavegame __Save*/__Load* sections: bytes and round trip", compare_heap=False)]
BOOTS = []


def run_quests(w: World):
    """QuestSavegame: one Quest per v2Quests row, objectives and conditions compiled from the real pydata, packed to bytes."""
    services.install_files(w)
    services.install_constants(w)
    services.install_strings(w)
    qs = w.heap(0x80, "@skip")
    w.call("_ZN13QuestSavegameC1Ev", qs, ret="void")
    ch = make_char(w, 5, "owner")
    w.put_u32(qs + (0x5c if w.side == "orig" else w.field_offset("QuestSavegame", "m_owner")), ch)
    out = {}
    w.call(w.fn("QuestSavegame", "InitQuests"), qs, ret="void", fatal=False)
    w.call(w.fn("QuestSavegame", "CompileQuests"), qs, 1, ret="void", fatal=False)
    for d in range(3):
        sb = new_stream(w)
        w.call(w.fn("QuestSavegame", "PackQuests"), qs, d, sb, ret="void", fatal=False)
        out[f"pack{d}"] = stream_bytes(w, sb).hex()
        out[f"num{d}"] = w.call(w.fn("QuestSavegame", "SG_GetNumQuests"), qs, 0, d, fatal=False)
    return out


CHAINS.append(Chain("quest_savegame", "pydata", run_quests, "QuestSavegame InitQuests/CompileQuests/PackQuests on the real v2Quests table", compare_heap=False))


def run_skills(w: World):
    """Skill availability, spending skill points, skill slots: a real Character with a PlayerSavegame behind it."""
    from chains.combat import real_char
    from chains.charprops import table_size as ts
    services.install_files(w)
    services.install_constants(w)
    services.install_strings(w)
    services.install_savegame_manager(w)
    services.set_app_field(w, "m_playerManager", 0x40, w.heap(0x720, "@skip"))
    w.sheets = {}
    w.neuter("_ZN9Character7SG_SaveEv")
    out = {}
    for row in (5, 140, 290):
        ch = real_char(w, row, f"k{row}")
        props = w.sheets[f"k{row}"]
        ps = w.heap(PS_SIZE, "@skip")
        w.call("_ZN14PlayerSavegameC1Ev", ps, ret="void")
        w.put_u32(ps + off(w, "m_playerClass"), row)
        w.put_u32(ps + (0x10 if w.side == "orig" else w.field_offset("PlayerSavegame", "m_player")), ch)
        w.put_u32(ch + (0x14e8 if w.side == "orig" else w.field_offset("Character", "m_savegame")), ps)
        for f in ("_InitSkills", "_InitFaeries", "_InitLevelStates"):
            w.call(w.fn("PlayerSavegame", f), ps, ret="void", fatal=False)
        nsk = w.u32(ps + (0x84 if w.side == "orig" else w.field_offset("PlayerSavegame", "m_skillsSize")))
        out[f"k{row}.nskills"] = nsk
        for level in (3, 15, 40):
            w.call(w.fn("CharProperties", "PROPS_SetInt"), props, 19, level, ret="void", fatal=False)
            w.call(w.fn("CharProperties", "PROPS_AddInt"), props, 157, 6, ret="void", fatal=False)
            w.call(w.fn("CharProperties", "RecalcProperties"), props, 1, ret="void", fatal=False)
            for sk in range(min(nsk, 24)):
                out[f"k{row}.L{level}.s{sk}"] = [
                    w.call(w.fn("Character", "IsSkillAvailable"), ch, sk, mask=0xFF, fatal=False),
                    w.call(w.fn("Character", "CanIncrementSkill"), ch, sk, mask=0xFF, fatal=False),
                    w.call(w.fn("Character", "IncSkill"), ch, sk, 0, mask=0xFF, fatal=False),
                    w.call(w.fn("Character", "IsSkillEquippable"), ch, sk, mask=0xFF, fatal=False),
                    w.call(w.fn("Character", "SG_GetSkillLevel"), ch, sk, fatal=False),
                    w.call(w.fn("Character", "GetSkillIDFromOID"), ch, sk, fatal=False)]
            out[f"k{row}.L{level}.sheet"] = w.words(props + 0xa94, 225)
        sb = new_stream(w)
        w.call("_ZN14PlayerSavegame12__SaveSkillsEP11IStreamBasePv", sb, ps, ret="void", fatal=False)
        out[f"k{row}.skills"] = stream_bytes(w, sb).hex()
    return out


CHAINS.append(Chain("char_skills", "pydata", run_skills, "real Character + PlayerSavegame: skill availability, IncSkill, skill rows", compare_heap=False))
