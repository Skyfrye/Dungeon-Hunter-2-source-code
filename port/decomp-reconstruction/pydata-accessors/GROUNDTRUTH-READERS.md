# Ground truth: the original pydata registration tables (iPhone 1.0.0 headers)

Extracted from the SCons build tree that shipped in a repack:

```
reference-binaries/dh2-scons-dev/gameloft/games/GloftD2HP/scons/pydata/
```

* `pyarray__reader.h` is the master include list: it names the **35** `*_pyarray_readers.h` in the order the
  original translation unit pulled them in.
* Those 35 headers hold the whole table: **142 `addFuncsForFile(file, read, finalize)`** and
  **142 `registerClassByName(name, factory)`** calls.
* The `*_pyarray.h` / `*_pycst.h` / `*_pystruct*.h` headers carry **no** table calls (the `pycst` headers are
  enum-only constant tables) — verified by scanning every `.h` in the directory.

`readers-groundtruth-calllist.csv` is the extracted list in master-include order (284 rows + header):
`order,kind,arg1_file_or_class,arg2_read_or_factory,arg3_finalize,source_header`.

## Three-way comparison — result: 284/284 identical

| source | rows |
|---|---|
| A. the 35 readers headers (iPhone 1.0.0) | 142 add + 142 reg |
| B. Hex-Rays listing of `PyDataArrays::C2` (0x4c0ddc, Android) | 142 add + 142 reg |
| C. `src/w7_pydata12.cpp` (the transcription) | 142 add + 142 reg |

A vs B, A vs C and B vs C are **equal as ordered sequences**: 0 missing, 0 extra, 0 slot disagreements
(no wrong filename, no wrong class name, no wrong callee). The only irregularity in all three is the
`ColladaFile` struct factory registered five times (once per `*_dictionary` header), which all three agree on.
The project's transcription is therefore complete and correct; no table entry had to be added.

**Version note.** The iPhone headers and the Android listing agree entry-for-entry, so no filename or class
name differs between the two data sets. Nothing here is a version difference.

## The real defect this uncovered (link-time, currently latent)

The 142 `registerClassByName` rows need **71** distinct `Arrays::GetMemberIDByString<T>` instances and
**67** `Structs::…`. `src/member_ids.cpp` declared only 68 of the Arrays ones; the other three are the explicit specializations in `src/tb_accessors-Arrays-0.cpp`. The original binary has all
three symbols the table needs:

| symbol | address | referenced from |
|---|---|---|
| `_ZN6Arrays19GetMemberIDByStringINS_11TrophyTableEEEiPKc` | `0x3a3f70` | `BL 0x4c3144` (`"TrophyTable"`) |
| `_ZN6Arrays19GetMemberIDByStringINS_14CharacterTableEEEiPKc` | `0x3fa188` | `BL 0x4c1140` (`"CharacterTable"`) |
| `_ZN6Arrays19GetMemberIDByStringINS_9ItemTableEEEiPKc` | `0x4ad5f8` | `BL 0x4c2b4c` (`"ItemTable"`) |

`member_names.hpp` only *declares* the template, so taking its address in `w7_pydata12.cpp` produces an
external reference with no implicit instantiation: `PyDataArrays::C1/C2` would compile and then fail to
**link**. All three are defined, once, in `src/tb_accessors-Arrays-0.cpp` (an earlier edit also instantiated them in `src/member_ids.cpp`; that gave each symbol two strong definitions and was removed). `ItemTable`'s address (`0x4ad5f8`) sits exactly in the
gap between `ItemTypeList` (`0x4ad554`) and `ItemList` (`0x4ad6c8`), which is where the missing slot was.

The 284 `Arrays::X::read/finalize/skipNames/readNames/finalizeNames` callees the table references were also
checked: every one has a definition under `src/`, so no other symbol of the table is missing.

## Verification run

`tools/trackb/check_tu.sh port/decomp-reconstruction/pydata-accessors/src/member_ids.cpp` → `OK`.
The missing instantiation is a **link**-time defect, so a single-file compile check cannot see it; the evidence
that the three symbols are genuinely required is (a) their presence in the original binary at the addresses
above and (b) the listing of `0x4c0ddc` taking each one's address.
