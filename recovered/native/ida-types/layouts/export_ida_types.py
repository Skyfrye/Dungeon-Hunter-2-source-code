import json, os, traceback
import ida_auto, ida_typeinf, idc

OUT = os.path.expanduser("~") + "/AppData/Local/Temp/claude/C--Users-user-Documents-Projects-Dungeon-Hunter-2-Recomp/bac0a85d-4469-4656-be80-86863e147f70/scratchpad/ida-types"
os.makedirs(OUT, exist_ok=True)
LOG = open(OUT + "/dump.log", "w")

def log(msg):
    LOG.write(str(msg) + "\n")
    LOG.flush()

ida_auto.auto_wait()
idati = ida_typeinf.get_idati()
qty = ida_typeinf.get_ordinal_limit(idati) - 1
log("ordinal_limit=%d" % (qty + 1))

def kind_of(tif):
    if tif.is_struct():
        return "struct"
    if tif.is_union():
        return "union"
    if tif.is_enum():
        return "enum"
    if tif.is_typedef():
        return "typedef"
    if tif.is_func():
        return "function"
    if tif.is_ptr():
        return "pointer"
    if tif.is_array():
        return "array"
    return "other"

def decl(tif, name):
    try:
        return tif._print(name, ida_typeinf.PRTYPE_DEF | ida_typeinf.PRTYPE_SEMI)
    except Exception as e:
        return "/* decl failed: %s */" % e

types = []
headers_fwd = []
headers_def = []
type_count = 0
errors = 0

for o in range(1, qty + 1):
    try:
        tif = ida_typeinf.tinfo_t()
        if not tif.get_numbered_type(idati, o):
            continue
        name = tif.get_type_name() or ("ord_%d" % o)
        kind = kind_of(tif)
        size = tif.get_size()
        rec = {"ordinal": o, "name": name, "kind": kind,
               "size": size if size != ida_typeinf.BADSIZE else None,
               "members": []}
        if tif.is_udt():
            udt = ida_typeinf.udt_type_data_t()
            if tif.get_udt_details(udt):
                rec["is_union"] = bool(tif.is_union())
                for m in udt:
                    ms = m.size // 8 if m.size else 0
                    rec["members"].append({
                        "name": m.name,
                        "offset": m.offset // 8,
                        "offset_bits": m.offset,
                        "size": m.size // 8,
                        "size_bits": m.size,
                        "type": m.type.dstr(),
                        "is_baseclass": bool(m.is_baseclass()),
                        "is_vftable": bool(m.is_vftable()),
                        "is_gap": bool(m.is_gap()),
                        "comment": m.cmt or "",
                    })
        if kind == "enum":
            ed = ida_typeinf.enum_type_data_t()
            if tif.get_enum_details(ed):
                rec["enum_values"] = [[e.name, e.value] for e in ed]
        types.append(rec)
        type_count += 1
        if kind in ("struct", "union", "enum"):
            headers_fwd.append("%s %s;" % (kind if kind != "enum" else "enum", name))
            headers_def.append(decl(tif, name))
        else:
            headers_def.append(decl(tif, name))
    except Exception:
        errors += 1
        log("ordinal %d failed: %s" % (o, traceback.format_exc()))

with open(OUT + "/types.json", "w") as f:
    json.dump({"source": "libDungeonHunter2.so.i64 (IDA %s)" % idc.get_idb_path(),
               "count": type_count, "errors": errors, "types": types}, f, indent=1)

with open(OUT + "/types.h", "w") as f:
    f.write("/* Generated from IDA local type library, %d types. */\n" % type_count)
    f.write("#pragma once\n#include <stdint.h>\n\n")
    f.write("/* Forward declarations */\n")
    f.write("\n".join(headers_fwd) + "\n\n")
    f.write("/* Layouts */\n")
    f.write("\n\n".join(headers_def) + "\n")

log("exported=%d errors=%d" % (type_count, errors))
LOG.close()
idc.qexit(0)
