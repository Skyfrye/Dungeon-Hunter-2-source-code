"""Combat formulas (CF_*): attacker and defender stat sheets built from real CharacterTable rows.

The Character is a partial object: the original Character constructor needs a scene, so the chain builds a zeroed
Character-sized block and constructs the parts the formulas read with the original/reconstructed constructors:
the embedded CharProperties (orig +1376), loaded from the real pydata row with LoadBaseProperties/RecalcProperties,
plus the CharStateMachine word and the 16-bit counter at Character +0x14d0. The offsets are the original's; for the
reconstruction they come from its own record layout (clang), so a layout error shows as a difference.
"""
from chain import Chain, World, ChainError
from chains.charprops import boot_pydata, table_size, BOOTS as _B

CHAR_BLOCK = 0x2400
ORIG_PROPS_OFF = 1376          # Character -> CharProperties base (original)
ORIG_SM_OFF = 1276             # Character -> CharStateMachine (original)
ORIG_F14D0 = 0x14d0


def make_char(w: World, row: int, name: str, level_boost: int = 0):
    c = w.heap(CHAR_BLOCK, "@skip")
    off = lambda base, o: o if w.side == "orig" else w.base_offset("Character", base)
    w.call("_ZN13ItemInventoryC2Ev", c + off("ItemInventory", 0x37c), ret="void")
    w.call("_ZN10CharTimersC2Ev", c + off("CharTimers", 0x3b4), ret="void")
    w.call("_ZN16CharStateMachineC2Ev", c + off("CharStateMachine", 0x4fc), ret="void")
    po = off("CharProperties", ORIG_PROPS_OFF)
    props = c + po
    w.call("_ZN14CharPropertiesC2Ev", props, ret="void")
    w.call(w.fn("CharProperties", "SetCharacter"), props, c, ret="void")
    w.call(w.fn("CharProperties", "LoadBaseProperties"), props, row, ret="void")
    w.call(w.fn("CharProperties", "RecalcProperties"), props, 1, ret="void")
    getattr(w, "sheets", {}).__setitem__(name, props) if hasattr(w, "sheets") else None
    return c


def sheet_values(w: World):
    """The four stat sheets of every fake Character, word by word (their offsets inside CharProperties are the original's)."""
    out = {}
    for name, props in w.sheets.items():
        for k, so in enumerate((0x8, 0x38c, 0x710, 0xa94)):
            out[f"{name}.sheet{k}"] = w.words(props + so, 225)
    return out


def run_cf(w: World):
    w.sheets = {}
    n = table_size(w, "CharacterTable")
    rows = list(range(0, n, max(1, n // 24)))[:24]
    atk = [make_char(w, r, f"a{r}") for r in rows]
    dfn = [make_char(w, r, f"d{r}") for r in rows[::-1]]
    out = w.alloc(64, None, "CombatDamage")
    dot = w.alloc(16, None, "DotDamage")
    cd = "_Z14CF__CalcDamageP9CharacterS0_iiibb"
    w.neuter("_ZN13DebugSwitches4loadEv")
    for i, a in enumerate(atk):
        for j, d in enumerate(dfn):
            if (i * 7 + j * 3) % 5:
                continue
            for el, off, skill in ((0, False, False), (3, True, False), (1, False, True)):
                w.call("_Z16CF_SetCombatantsP9CharacterS0_ibb", a, d, el, int(off), int(skill))
                for a3 in (0, 9000, 20000, 25088, 30000):
                    for a4 in (0, 1, 2):
                        w.call("_Z19CF__CalcMissOrDodgeP9CharacterS0_iiib", a, d, a3, a4, el, int(off), mask=0xFFFF)
                for a3, a4 in ((5, 0), (-3, 1), (20, 2), (100, 3), (0, 0)):
                    w.call("_Z12CF__CalcCritP9CharacterS0_ii", a, d, a3, a4, mask=0xFF)
                    w.call("_Z13CF__CalcBlockP9CharacterS0_ii", a, d, a3, a4, mask=0xFF)
                for mode in (0, 1, 2, 3):
                    for dotflag in (0, 1):
                        w.call(cd, out, a, d, 256 * 10, mode, el, int(off), dotflag, ret="void", capture=(out, 7))
                w.call("_Z16CF_CalcDotDamageP9CharacterS0_b", dot, a, d, 1, ret="void", capture=(dot, 3))
                w.call("_Z16CF_CalcDotDamageP9CharacterS0_b", dot, a, d, 0, ret="void", capture=(dot, 3))
                for fn in ("Slow", "Fear", "Push", "Hurt", "Stun"):
                    for a3 in (0, 3, 40):
                        w.call(f"_Z12CF__Calc{fn}P9CharacterS0_ii", a, d, a3, 0, mask=0xFF)
                w.call("_Z16GetLevelScaledXPfP9CharacterS0_", ("f32", 100.0), a, d, ret="u32")
    return sheet_values(w)


CHAINS = [Chain("combat_cf", "pydata", run_cf, "CF_SetCombatants/CalcMissOrDodge/Crit/Block/Damage/status rolls on real stat sheets")]
BOOTS = []


def run_equip(w: World):
    """Loot into a fake Character's inventory, equip it, recompute the gear sheet: equip stat changes on real item rows."""
    from chains import services
    from chains.charprops import table_size as ts
    w.sheets = {}
    services.install_files(w)
    services.install_constants(w)
    services.install_strings(w)
    pm = w.heap(0x720, "@skip")
    services.set_app_field(w, "m_playerManager", 0x40, pm)
    n = ts(w, "CharacterTable")
    nloot = ts(w, "LootTable")
    out = {}
    for k, row in enumerate(list(range(0, n, max(1, n // 6)))[:6]):
        c = make_char(w, row, f"e{row}")
        inv_off = 0x37c if w.side == "orig" else w.base_offset("Character", "ItemInventory")
        inv = c + inv_off
        # ItemInventory::m_character (+4) -> the fake Character
        w.put_u32(inv + (4 if w.side == "orig" else w.field_offset("ItemInventory", "m_character")), c)
        for t in range(k, nloot, max(1, nloot // 8)):
            w.call(w.fn("ItemInventory", "AddLoot"), inv, t, 12, 0, 0, 0, fatal=False, ret="void")
        cnt = w.call(w.fn("ItemInventory", "GetNumItems"), inv)
        for i in range(min(cnt, 12)):
            w.call(w.fn("ItemInventory", "EquipItemAuto"), inv, i, fatal=False)
        props = c + (ORIG_PROPS_OFF if w.side == "orig" else w.base_offset("Character", "CharProperties"))
        w.call(w.fn("CharProperties", "UpdateGearsProperties"), props, fatal=False, ret="void")
        out[f"inv{row}.count"] = cnt
        w.sheets[f"e{row}"] = props
    out.update(sheet_values(w))
    return out


CHAINS.append(Chain("equip_gear", "pydata", run_equip, "AddLoot + EquipItemAuto + UpdateGearsProperties on fake Characters"))


def run_props_all(w: World):
    """Every CharacterTable row loaded and recalculated, then every ClassTable row applied on top: the final sheets."""
    from chains.charprops import table_size as ts
    w.sheets = {}
    n = ts(w, "CharacterTable")
    ncls = ts(w, "ClassTable")
    out = {}
    for row in range(n):
        c = make_char(w, row, f"r{row}")
        props = w.sheets[f"r{row}"]
        out[f"r{row}.final"] = w.words(props + 0xa94, 225)
        out[f"r{row}.walk"] = [w.call(w.fn("CharProperties", f), props, mask=0xFFFFFFFF, fatal=False) for f in
                               ("PROPS_GetWalkSpeed", "PROPS_GetRotationSpeed", "PROPS_GetAttackSpeed", "PROPS_GetOpacity")]
        out[f"r{row}.get"] = [w.call(w.fn("CharProperties", "PROPS_GetInt"), props, p, 0, fatal=False) for p in range(0, 225, 7)]
        if row % 9 == 0:
            for cl in range(ncls):
                w.call(w.fn("CharProperties", "PROPS_ApplyClass"), props, cl, 0, ret="void", fatal=False)
                w.call(w.fn("CharProperties", "RecalcProperties"), props, 0, ret="void", fatal=False)
                out[f"r{row}.cls{cl}"] = w.words(props + 0xa94, 225)
    return out


CHAINS.append(Chain("charprops_all_rows", "pydata", run_props_all, "all CharacterTable rows loaded/recalculated, ClassTable rows applied", compare_heap=False))


def real_char(w: World, row: int, name: str, goid: int = 0):
    """A Character built by its real constructor (the vtable and every base subobject are in place), with the row's
    stat sheet loaded the way Character::InitPost does it (LoadBaseProperties + RecalcProperties)."""
    c = w.heap(CHAR_BLOCK, "@skip")
    w.call("_ZN9CharacterC1EN10ObjectBase6GO_IDSE", c, goid, ret="void")
    w.write(c + (0x13c8 if w.side == "orig" else w.field_offset("Character", "m_charPropsId")), bytes([row & 0xFF, (row >> 8) & 0xFF]))
    props = c + (ORIG_PROPS_OFF if w.side == "orig" else w.base_offset("Character", "CharProperties"))
    w.call(w.fn("CharProperties", "SetCharacter"), props, c, ret="void")
    w.call(w.fn("CharProperties", "LoadBaseProperties"), props, row, ret="void")
    w.call(w.fn("CharProperties", "RecalcProperties"), props, 1, ret="void")
    w.sheets[name] = props
    return c


def run_stats(w: World):
    """Stat point spending, mana, resets, HP/MP regeneration on a real Character."""
    from chains import services
    from chains.charprops import table_size as ts
    w.sheets = {}
    services.install_files(w)
    services.install_constants(w)
    services.install_strings(w)
    services.install_savegame_manager(w)
    w.neuter("_ZN9Character7SG_SaveEv")
    n = ts(w, "CharacterTable")
    out = {}
    for row in range(0, n, max(1, n // 10))[:10]:
        c = real_char(w, row, f"s{row}")
        props = w.sheets[f"s{row}"]
        w.call(w.fn("CharProperties", "PROPS_AddInt"), props, 148, 5, ret="void", fatal=False)
        for f in ("IncStatStr", "IncStatDex", "IncStatNrg", "IncStatEnd", "IncStatStr"):
            w.call(w.fn("Character", f), c, ret="void", fatal=False)
        w.call(w.fn("Character", "ResetStats"), c, ret="void", fatal=False)
        for amt in (0, 100, 1000, -1):
            w.call(w.fn("Character", "RegenMP"), c, amt, ret="void", fatal=False)
            w.call(w.fn("Character", "RegenHP"), c, amt, ret="void", fatal=False)
        for m in (0, 300, 100000):
            w.call(w.fn("Character", "HasMana"), c, m, mask=0xFF, fatal=False)
            w.call(w.fn("Character", "UseMana"), c, m, ret="void", fatal=False)
        out[f"s{row}.level"] = w.call(w.fn("Character", "GetLevel"), c, fatal=False)
        out[f"s{row}.final"] = w.words(props + 0xa94, 225)
        out[f"s{row}.saved"] = w.words(props + 0x38c, 225)
    return out


CHAINS.append(Chain("char_stats", "pydata", run_stats, "real Character: stat points, mana/HP regeneration, resets", compare_heap=False))


def run_buffs(w: World):
    """Buffs and damage over time on a real Character: AddBuff/DelBuff/RemoveAllBuffs/AddDot/HandleDots for ClassTable rows."""
    from chains import services
    from chains.charprops import table_size as ts
    w.sheets = {}
    services.install_files(w)
    services.install_constants(w)
    services.install_savegame_manager(w)
    services.set_app_field(w, "m_playerManager", 0x40, w.heap(0x720, "@skip"))
    w.neuter("_ZN9Character7SG_SaveEv")
    w.neuter("_ZN15VisualFXManager10GrabAnimFXEiP10GameObject")        # the buff effect scene node is not modelled
    w.neuter(w.fn("VisualFXManager", "DropAnimatedFX"))
    ncls = ts(w, "ClassTable")
    out = {}
    for row in (2, 40, 120):
        c = real_char(w, row, f"b{row}")
        props = w.sheets[f"b{row}"]
        for cl in range(0, ncls, max(1, ncls // 12)):
            r = w.call(w.fn("CharProperties", "PROPS_AddBuff"), props, cl, 5000, 3, 2, -1, w.cstr("buff"), fatal=False)
            out[f"b{row}.add{cl}"] = bool(r)
            out[f"b{row}.after{cl}"] = w.words(props + 0xa94, 225)
        out[f"b{row}.dotadd"] = bool(w.call(w.fn("CharProperties", "PROPS_AddDot"), props, 4000, 256 * 7, 1, fatal=False, norec=True))
        w.call(w.fn("CharProperties", "HandleDots"), props, ret="void", fatal=False)
        out[f"b{row}.dot"] = w.words(props + 0xa94, 225)
        w.call(w.fn("CharProperties", "PROPS_RemoveAllBuffs"), props, ret="void", fatal=False)
        out[f"b{row}.removed"] = w.words(props + 0xa94, 225)
    return out


CHAINS.append(Chain("char_buffs", "pydata", run_buffs, "PROPS_AddBuff/AddDot/HandleDots/RemoveAllBuffs on a real Character", compare_heap=False))


def run_ai(w: World):
    """CharAI aggro table and faction relations between real Characters built from different CharacterTable rows."""
    from chains import services
    from chains.charprops import table_size as ts
    w.sheets = {}
    services.install_files(w)
    services.install_constants(w)
    services.install_savegame_manager(w)
    om = services.install_object_manager(w)
    n = ts(w, "CharacterTable")
    rows = list(range(3, n, max(1, n // 10)))[:10]
    chars = []
    for r in rows:
        c = real_char(w, r, f"c{r}")
        w.call(w.fn("ObjectManager", "Add"), w.alloc_service(16), om, c, w.cstr(f"char{r}"), w.cstr("Character"), -1, 0, fatal=False, ret="void")
        ai = c + (0x3c8 if w.side == "orig" else w.base_offset("Character", "CharAI"))
        w.put_u32(ai + 4, c)                                # CharAI::m_character (+0x04 in both layouts)
        chars.append((c, ai))
    out = {}
    fam = lambda n_: w.fn("CharAI", n_)
    for i, (c, ai) in enumerate(chars):
        out[f"c{i}.factionId"] = w.call(w.fn("Character", "GetCharAIFactionId"), c, fatal=False)
        for j, (d, dai) in enumerate(chars):
            if i == j:
                continue
            out[f"rel{i}.{j}"] = [w.call(fam("AI_IsFriend"), ai, d, mask=0xFF, fatal=False),
                                  w.call(fam("AI_IsEnemy"), ai, d, mask=0xFF, fatal=False),
                                  w.call(fam("AI_CanAttack"), ai, d, mask=0xFF, fatal=False)]
    amounts = (1.0, 25.5, 300.0, 0.25, 7.0)
    for i, (c, ai) in enumerate(chars):
        for j, (d, dai) in enumerate(chars):
            if i == j or (i + 2 * j) % 3:
                continue
            for a in amounts[(i + j) % 3:] + amounts[:(i + j) % 3]:
                w.call(fam("AI_AddAggro"), ai, d, ("f32", a), fatal=False)
            w.call(fam("AI_SetAggro"), ai, d, ("f32", amounts[(i * j) % 5]), fatal=False)
        out[f"agg{i}.count"] = w.call(fam("AI_GetAggroCount"), ai, fatal=False)
        out[f"agg{i}.hi"] = [w.call(fam("AI_GetAggro"), ai, d, fatal=False) for d, _ in chars]
        hi = w.call(fam("AI_GetHighestAggro"), ai, fatal=False)
        out[f"agg{i}.highest"] = [k for k, (d, _) in enumerate(chars) if d == hi]
    for i, (c, ai) in enumerate(chars):
        if i % 2:
            w.call(fam("AI_ClearAllAggro"), ai, ret="void", fatal=False)
        else:
            w.call(fam("AI_ClearAggro"), ai, chars[(i + 3) % len(chars)][0], ret="void", fatal=False)
        out[f"aft{i}.count"] = w.call(fam("AI_GetAggroCount"), ai, fatal=False)
    return out


CHAINS.append(Chain("ai_aggro", "pydata", run_ai, "CharAI aggro table, friend/enemy/attack relations between real Characters", compare_heap=False))


def run_control_mutation(w: World):
    """Negative control: the reconstruction's CharProperties::RecalcProperty is replaced by `return 0` (a function-level
    mutation). The stat sheets of the real rows must differ; the harness must report it."""
    from chains.charprops import table_size as ts
    w.sheets = {}
    if w.side == "recon":
        w.neuter(w.fn("CharProperties", "RecalcProperty"), 0, only_recon=True)
    out = {}
    for row in (5, 100, 300):
        make_char(w, row, f"m{row}")
    out.update(sheet_values(w))
    return out


CHAINS.append(Chain("control_mutated_function", "pydata", run_control_mutation,
                    "negative control: RecalcProperty returns 0 in the reconstruction only; must be reported", compare_heap=False))


def ai_world(w: World, rows):
    """Real Characters registered in an ObjectManager, CharAI.m_character set; returns [(char, ai, props)]."""
    from chains import services
    w.sheets = {}
    services.install_files(w)
    services.install_constants(w)
    services.install_strings(w)
    services.install_savegame_manager(w)
    pmgr = w.heap(0x720, "@skip")
    w.call("_ZN13PlayerManagerC1Ev", pmgr, ret="void", fatal=False)
    services.set_app_field(w, "m_playerManager", 0x40, pmgr)
    om = services.install_object_manager(w)
    services.install_lua_manager(w)
    w.neuter("_ZN9Character7SG_SaveEv")
    for nm in ("PlayAnimFXSet", "GrabAnimFX", "DropAnimatedFX"):
        w.neuter_prefix(f"_ZN15VisualFXManager{len(nm)}{nm}E")
    w.neuter("_Z24GetScreenPosFromWorldPosRKN6glitch4core8vector3dIfEERNS0_10position2dIiEE")
    w.neuter_prefix("_ZN16FlashAnimManager13PlayFlashAnim")
    w.put_u32(w.sym("_ZN7GSLevel7s_levelE"), w.heap(0x400, "@skip"))      # a blank Level: difficulty 0, nothing loaded
    out = []
    for r in rows:
        c = real_char(w, r, f"a{r}")
        w.call(w.fn("ObjectManager", "Add"), w.alloc_service(16), om, c, w.cstr(f"char{r}"), w.cstr("Character"), -1, 0, fatal=False, ret="void")
        ai = c + (0x3c8 if w.side == "orig" else w.base_offset("Character", "CharAI"))
        w.put_u32(ai + 4, c)
        sm = c + (0x4fc if w.side == "orig" else w.base_offset("Character", "CharStateMachine"))
        w.call(w.fn("CharStateMachine", "SM_SetIdleState"), sm, 1, ret="void", fatal=False)
        fl = sm + (0x24 if w.side == "orig" else w.field_offset("CharStateMachine", "m_stateFlags"))
        w.put_u32(fl, w.u32(fl) | 0x2100)                  # "interactive" flag the idle state's animation start sets
        w.write(c + (0x2f0 if w.side == "orig" else w.field_offset("GameObject", "m_inZone")), bytes([1]))   # inside a room zone
        out.append((c, ai, w.sheets[f"a{r}"]))
    return out


def run_melee(w: World):
    """The enemy attack path: AISDefault::OnAttack -> F_MeleeAttack -> F_ApplyResult -> damage on the target's sheet."""
    from chains.charprops import table_size as ts
    n = ts(w, "CharacterTable")
    rows = list(range(3, n, max(1, n // 8)))[:8]
    cs = ai_world(w, rows)
    res = w.alloc_service(64)
    out = {}
    for i, (a, aai, aprops) in enumerate(cs):
        for j, (d, dai, dprops) in enumerate(cs):
            if i == j or (i + j) % 2:
                continue
            for flag in (0, 1):
                # static in the binary; the reconstruction declares it a member (hidden this = the attacker)
                pre = (a,) if w.side == "recon" else ()
                w.call("_ZN9Character13F_MeleeAttackERNS_12AttackResultEPS_S2_bb", *pre, res, a, d, flag, 0, ret="void", fatal=False,
                       capture=(res, 10))
                w.call("_ZN9Character13F_ApplyResultERKNS_12AttackResultEPS_S3_b", res, a, d, 0, ret="void", fatal=False,
                       capture=(res, 10))
            out[f"hit{i}.{j}"] = w.words(dprops + 0xa94, 225)
            out[f"dead{i}.{j}"] = w.call(w.fn("Character", "IsDead"), d, mask=0xFF, fatal=False)
    return out


CHAINS.append(Chain("melee_hit", "pydata", run_melee, "F_MeleeAttack + F_ApplyResult between real Characters: damage on the target sheet", compare_heap=False))


def run_targets(w: World):
    """ObjectSearcher::TargetList over real Characters at fixed positions: range/angle/rect searches, three sort orders,
    several filter masks; the hits are read back through the backup-results list."""
    import struct as _s
    from chains.charprops import table_size as ts
    n = ts(w, "CharacterTable")
    rows = list(range(3, n, max(1, n // 12)))[:12]
    cs = ai_world(w, rows)
    w.budget = 3_000_000                      # a search that does not finish is a finding, not a wait
    om = None
    om = w.u32(w.sym("_ZN9SingletonI11ApplicationE6s_instE") + (0x38 if w.side == "orig" else w.field_offset("Application", "m_objectManager")))
    posoff = 0x160 if w.side == "orig" else w.field_offset("GameObject", "m_position")
    for k, (c, ai, props) in enumerate(cs):
        w.write(c + (0x2f0 if w.side == "orig" else w.field_offset("GameObject", "m_inZone")), bytes([1]))      # the object is in a zone
        w.write(c + posoff, _s.pack("<3f", 3.0 * (k % 4) - 4.5, 2.0 * (k // 4) - 2.0, 0.0))
    lst = om + (0x60 if w.side == "orig" else w.field_offset("ObjectManager", "m_characters"))
    begin = w.u32(lst + (0 if w.side == "orig" else 4))
    vt = w.sym("_ZTVN14ObjectSearcher13CharacterListE") + 8
    out = {}
    for ri, (ref, _ai, _p) in enumerate(cs[:6]):
        out[f"interactive{ri}"] = [w.call("_ZNK9Character13IsInteractiveEP10GameObject", d, ref, mask=0xFF, fatal=False) for d, _a, _q in cs]
        for sort in (0, 1, 2):
            for mask in (0x7FFFFFFF, 1, 0x10):
                cl = w.alloc_service(0x20, _s.pack("<IIII", vt, lst, begin, lst))
                out[f"listsize{ri}.{sort}.{mask:x}"] = w.call("_ZN14ObjectSearcher13CharacterList4SizeEv", cl, fatal=False)
                tl = w.heap(0x100, "@skip")
                w.call("_ZN14ObjectSearcher10TargetListC1EP10GameObjectiii", tl, ref, mask, 0, sort, ret="void", fatal=False)
                for rng, ang in ((6.0, 6.3), (3.0, 1.0), (12.0, 0.6)):
                    pos = w.alloc_service(24, _s.pack("<6f", *_s.unpack("<3f", w.read(ref + posoff, 12)), 1.0, 0.0, 0.0))
                    w.call("_ZN14ObjectSearcher10TargetList6SearchERK7Point3DIfEfS4_fRNS_11IObjectListE",
                           tl, pos, ("f32", rng), pos + 12, ("f32", ang), cl, ret="void", fatal=False)
                    w.call(w.fn("ObjectSearcher::TargetList", "BackupResults"), tl, w.cstr("r"), ret="void", fatal=False)
                    bl = w.call(w.fn("ObjectSearcher::TargetList", "GetResultsBackup"), tl, w.cstr("r"), fatal=False, norec=True)
                    hits = []
                    if bl:
                        b, e = w.u32(bl + 4), w.u32(bl + 8)
                        out[f"raw{ri}.{sort}.{mask:x}.{rng}"] = (e - b) // 4
                        hits = [cs_idx for cs_idx, (c, _a, _q) in enumerate(cs) for p in range(b, e, 4) if w.u32(p) == c]
                    out[f"t{ri}.{sort}.{mask:x}.{rng}"] = hits
    return out


CHAINS.append(Chain("ai_targets", "pydata", run_targets, "TargetList searches (range/angle, sort orders, filter masks) between positioned real Characters", compare_heap=False))


def run_ai_update(w: World):
    """A monster with the AISMonster script next to a hero: CharAI::Update steps; per step the monster's state, its
    target and the hero's sheet. This is the path that has to end in OnAttack -> F_MeleeAttack -> damage."""
    import struct as _s
    from chains.charprops import table_size as ts
    # find a monster row (char type 4) and a player row (char type 1) by building the characters
    probe = ai_world(w, list(range(0, ts(w, "CharacterTable"), 5)))
    types = {}
    for (pc, _a, _p), r in zip(probe, range(0, ts(w, "CharacterTable"), 5)):
        types[r] = w.call(w.fn("Character", "GetCharType"), pc, fatal=False)
    mrow = next(r for r, ty in types.items() if ty == 4)
    hrow = next(r for r, ty in types.items() if ty == 1)
    prow = list(range(0, ts(w, "CharacterTable"), 5))
    cs = [probe[prow.index(mrow)], probe[prow.index(hrow)]]       # (a second ai_world would not re-register the same names)
    w.budget = 20_000_000
    posoff = 0x160 if w.side == "orig" else w.field_offset("GameObject", "m_position")
    (mon, mai, mprops), (hero, hai, hprops) = cs
    for c, x in ((mon, 0.0), (hero, 1.5)):
        w.write(c + (0x2f0 if w.side == "orig" else w.field_offset("GameObject", "m_inZone")), bytes([1]))
        w.write(c + posoff, _s.pack("<3f", x, 0.0, 0.0))
    w.call("_ZN6CharAI9SetScriptI10AISMonsterEEvv", mai, ret="void", fatal=False)
    for _ in range(10):
        w.call(w.fn("CharAI", "LoadScriptProcess"), mai, ret="void", fatal=False)
        if w.call(w.fn("CharAI", "IsScriptProcessLoaded"), mai, mask=0xFF, fatal=False):
            break
    w.call(w.fn("CharAI", "OnInit"), mai, ret="void", fatal=False)
    msm = mon + (0x4fc if w.side == "orig" else w.base_offset("Character", "CharStateMachine"))
    out = {"script": w.u32(mai + 0x1c) != 0 if w.side == "orig" else w.u32(mai + w.field_offset("CharAI", "m_script")) != 0}
    tgt_off = 0x40 if w.side == "orig" else w.field_offset("CharAI", "m_target")
    w.call(w.fn("CharAI", "AI_SetTarget"), mai, hero, 1, ret="void", fatal=False)
    out["target"] = w.u32(mai + tgt_off) == hero
    # the attack trigger: the animation reaches its hit event while the monster is in the attack state
    w.call(w.fn("CharStateMachine", "SM_SetAttackState"), msm, 0, 0, ret="void", fatal=False)
    out["state"] = w.call(w.fn("CharStateMachine", "SM_GetState"), msm, fatal=False)
    for rep in range(6):
        for ev in ("attack_mainhand", "attack_offhand", "ev_x", "do_skill"):
            w.call(w.fn("CharAI", "_OnAnimEvent"), mai, w.cstr(ev), fatal=False, norec=True)
        out[f"hero{rep}"] = w.words(hprops + 0xa94, 225)
        out[f"dead{rep}"] = w.call(w.fn("Character", "IsDead"), hero, mask=0xFF, fatal=False)
    return out


CHAINS.append(Chain("ai_update", "pydata", run_ai_update, "AISMonster script: CharAI::Update steps next to a hero (state, target, hero sheet)", compare_heap=False))


def run_levelup(w: World):
    """Character::LevelUp and _GiveXP on a player Character: level, XP, stat/skill points, HP/MP refill."""
    from chains import services
    from chains.charprops import table_size as ts
    prow = list(range(0, ts(w, "CharacterTable"), 5))
    probe = ai_world(w, prow)
    types = {r: w.call(w.fn("Character", "GetCharType"), pc, fatal=False) for (pc, _a, _p), r in zip(probe, prow)}
    hrows = [r for r, ty in types.items() if ty == 1][:3]
    w.neuter_prefix("_ZN11MenuManager10GetHUDRoot")
    w.neuter_prefix("_ZN13ScriptManager11StartScript")
    w.neuter_prefix("_ZN13ScriptManager13GetIDFromName", 0xFF)
    w.neuter_prefix("_ZN17MenuMessageManager")
    w.neuter_prefix("_ZN9Character13SG_SetPlayerLevel")
    out = {}
    for r in hrows:
        c, ai, props = probe[prow.index(r)]
        for step in range(4):
            w.call(w.fn("Character", "_GiveXP"), c, 256 * 50 * (step + 1), 1, fatal=False, norec=True)
            out[f"{r}.xp{step}"] = w.words(props + 0xa94, 225)
        for lv in (1, 2):
            w.call(w.fn("Character", "LevelUp"), c, lv, ret="void", fatal=False)
            out[f"{r}.lv{lv}"] = w.words(props + 0xa94, 225)
    return out


CHAINS.append(Chain("char_levelup", "pydata", run_levelup, "Character::_GiveXP / LevelUp on player Characters", compare_heap=False))
