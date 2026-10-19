"""Items: ItemInstance from real ItemTable rows, inventories, loot tables."""
from chain import Chain, World
from chains.charprops import table_size
from chains import services
from chains.common import read_std_string

ITEMINSTANCE_SIZE = 0x6c


def run_item_instances(w: World):
    services.install_files(w)
    services.install_constants(w)
    services.install_strings(w)
    n = table_size(w, "ItemTable")
    step = max(1, n // 40)
    items = []
    for i in range(0, n, step):
        it = w.heap(ITEMINSTANCE_SIZE, "ItemInstance")
        w.call("_ZN12ItemInstanceC1Eij", it, i, 1, ret="void")
        w.root(f"item{i}", it)
        items.append(it)
        w.call(w.fn("ItemInstance", "GetItemId"), it)
        w.call(w.fn("ItemInstance", "GetPickUpType"), it, mask=0xFFFF)
        w.call(w.fn("ItemInstance", "IsStackable"), it, mask=0xFF)
        w.call(w.fn("ItemInstance", "IsEquippable"), it, mask=0xFF)
    return {"rows": n}


CHAINS = [Chain("item_instances", "pydata", run_item_instances, "ItemInstance ctor for a sample of ItemTable rows")]
BOOTS = []


def item_fields(w: World, it: int) -> dict:
    """One ItemInstance, field by field (members at their side's offsets; the original's: qty +0x50, value +0x54,
    name +0x08, stats +0x20, requirements +0x38)."""
    off = (lambda name, o: o) if w.side == "orig" else (lambda name, o: w.field_offset("ItemInstance", name))
    d = {
        "id": w.call(w.fn("ItemInstance", "GetItemId"), it),
        "qty": w.u32(it + off("m_qty", 0x50)) & 0xFFFF,
        "value": w.u32(it + off("m_value", 0x54)),
        "pick": w.u32(it + off("m_pickUpType", 0x58)) & 0xFFFF,
        "name": read_std_string(w, it + off("m_name", 0x08)),
        "stats": read_std_string(w, it + off("m_stats", 0x20)),
        "reqs": read_std_string(w, it + off("m_requirements", 0x38)),
    }
    n = w.call(w.fn("ItemInstance", "GetNumPowers"), it)
    d["powers"] = [w.call(w.fn("ItemInstance", "GetPowerId"), it, j) for j in range(min(n, 16))]
    return d


def inventory_values(w: World, inv: int, tag: str) -> dict:
    out = {}
    n = w.call(w.fn("ItemInventory", "GetNumItems"), inv)
    out[f"{tag}.count"] = n
    for i in range(min(n, 200)):
        it = w.call(w.fn("ItemInventory", "GetItem", const=False), inv, i)
        out[f"{tag}.item{i}"] = item_fields(w, it) if it else None
    return out


def run_loot(w: World):
    services.install_files(w)
    services.install_constants(w)
    services.install_strings(w)
    pm = w.heap(0x720, "@skip")
    # PlayerManager::m_numCharacters stays 0 (original +0x6c4): no owned characters, so the class-weighted loot rows see an empty party
    services.set_app_field(w, "m_playerManager", 0x40, pm)
    n = table_size(w, "LootTable")
    out = {"loot_tables": n}
    for t in range(0, n, max(1, n // 30)):
        inv = w.heap(0x80, "@skip")
        w.call("_ZN13ItemInventoryC1Ev", inv, ret="void")
        w.call(w.fn("ItemInventory", "AddLoot"), inv, t, 10, 0, 0, 0, fatal=False, ret="void")
        out.update(inventory_values(w, inv, f"loot{t}"))
    return out


CHAINS.append(Chain("loot_tables", "pydata", run_loot, "ItemInventory::AddLoot over real LootTable rows"))


def run_loot_deep(w: World):
    """Every LootTable row rolled for several seeds, character levels and arguments: items, powers and values."""
    services.install_files(w)
    services.install_constants(w)
    services.install_strings(w)
    pm = w.heap(0x720, "@skip")
    services.set_app_field(w, "m_playerManager", 0x40, pm)
    n = table_size(w, "LootTable")
    out = {"loot_tables": n}
    seed_addr = w.sym("_ZN6Random6s_seedE")
    for t in range(n):
        for k, (seed, level, b, c, flag) in enumerate(((11, 1, 0, 0, 0), (4242, 25, 0, 0, 0), (999983, 60, 3, 1, 1))):
            w.put_u32(seed_addr, seed + t)
            inv = w.heap(0x80, "@skip")
            w.call("_ZN13ItemInventoryC1Ev", inv, ret="void")
            w.call(w.fn("ItemInventory", "AddLoot"), inv, t, level, b, c, flag, fatal=False, ret="void")
            out.update(inventory_values(w, inv, f"l{t}.{k}"))
    out["seed_end"] = w.u32(seed_addr)
    return out


CHAINS.append(Chain("loot_deep", "pydata", run_loot_deep, "every LootTable row x 3 seeds/levels/flags", compare_heap=False, budget=500_000_000))


def run_inventory_ops(w: World):
    """A real Character's inventory driven through add / stack / split / consume / remove / transfer / equip / swap sets."""
    from chains.combat import real_char
    w.sheets = {}
    services.install_files(w)
    services.install_constants(w)
    services.install_strings(w)
    services.install_savegame_manager(w)
    services.set_app_field(w, "m_playerManager", 0x40, w.heap(0x720, "@skip"))
    w.neuter("_ZN9Character7SG_SaveEv")
    n = table_size(w, "ItemTable")
    out = {}
    for row in (5, 150):
        ch = real_char(w, row, f"i{row}")
        inv = ch + (0x37c if w.side == "orig" else w.base_offset("Character", "ItemInventory"))
        w.put_u32(inv + (4 if w.side == "orig" else w.field_offset("ItemInventory", "m_character")), ch)
        other = w.heap(0x80, "@skip")
        w.call("_ZN13ItemInventoryC1Ev", other, ret="void")
        tag = f"c{row}"
        w.call(w.fn("ItemInventory", "SetGold"), inv, 5000, ret="void", fatal=False)
        w.call(w.fn("ItemInventory", "AddGold"), inv, 250, ret="void", fatal=False)
        for k, item_id in enumerate(range(3, n, max(1, n // 45))):
            it = w.heap(ITEMINSTANCE_SIZE, "@skip")
            w.call("_ZN12ItemInstanceC1Eij", it, item_id, 1 + k % 4, ret="void", fatal=False)
            r = w.call(w.fn("ItemInventory", "AddItemInstance"), inv, it, 1, 0, fatal=False)
            out[f"{tag}.add{k}"] = r
        out.update(inventory_values(w, inv, tag + ".a"))
        cnt = w.call(w.fn("ItemInventory", "GetNumItems"), inv)
        for i in range(min(cnt, 40)):
            out[f"{tag}.eq{i}"] = [w.call(w.fn("ItemInventory", "IsItemEquippable", const=True), inv, i, fatal=False, mask=0xFF),
                                    w.call(w.fn("Character", "EquipItemAuto"), ch, i, fatal=False, mask=0xFF),
                                    w.call(w.fn("ItemInventory", "IsItemEquipped"), inv, i, fatal=False, mask=0xFF)]
        w.call(w.fn("ItemInventory", "SwapEquipmentSet"), inv, ret="void", fatal=False)
        for i in range(min(cnt, 40)):
            w.call(w.fn("Character", "EquipItemAuto"), ch, i, fatal=False, mask=0xFF)
        w.call(w.fn("ItemInventory", "SwapEquipmentSet"), inv, ret="void", fatal=False)
        for slot in range(9):
            out[f"{tag}.slot{slot}"] = w.call(w.fn("ItemInventory", "IsEquipmentSlotTaken"), inv, slot, mask=0xFF, fatal=False)
        out[f"{tag}.combat"] = [w.call(w.fn("ItemInventory", f), inv, mask=0xFF, fatal=False)
                                for f in ("HasMainHandWeapon", "HasRangedWeapon", "HasAxeOrMace", "HasBow", "HasStaff", "HasShield",
                                          "HasOffHandWeapon", "IsDualWielding", "CanMeleeAttack")]
        for i in range(0, min(cnt, 40), 5):
            w.call(w.fn("ItemInventory", "TransferItemTo", nth=0), inv, i, other, 1, 1, 0, fatal=False)
        out.update(inventory_values(w, inv, tag + ".b"))
        out.update(inventory_values(w, other, tag + ".o"))
        out[f"{tag}.consume"] = [w.call(w.fn("ItemInventory", "TryConsuming"), inv, k, 1, fatal=False) for k in range(0, n, max(1, n // 10))]
        w.call(w.fn("ItemInventory", "TransferInventoryTo"), inv, other, 1, 0, fatal=False)
        out.update(inventory_values(w, other, tag + ".t"))
        w.call(w.fn("ItemInventory", "RemoveAllItems"), inv, 1, ret="void", fatal=False)
        out[f"{tag}.sheet"] = w.words(w.sheets[f"i{row}"] + 0xa94, 225)
    return out


CHAINS.append(Chain("inventory_ops", "pydata", run_inventory_ops, "ItemInventory add/stack/equip/swap/transfer/consume on a real Character", compare_heap=False, budget=300_000_000))
