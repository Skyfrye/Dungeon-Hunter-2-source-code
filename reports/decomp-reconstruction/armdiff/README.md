# armdiff pilot: reconstructed functions against the original ARM code

Run on 2026-10-13 with the first version of `tools/trackb/armdiff` (see its `README.md` for the design). The original
is `libDungeonHunter2.so` (SHA-256 `36498eb8...`, checked by the tool). The reconstruction was built for ARM32 with the
NDK 29.0.14206865 clang (`armv7a-linux-androideabi21`, ARM mode, soft-float, `-O1`). No ledger status was changed.

The sources are edited by other waves while this runs. Every row carries `src_sha1`, the hash of the translation unit
that was built, and every number below is a snapshot of the working tree taken during this run. For example, between two
runs three `game-anim` sources went from not compiling (`getType` return type) to compiling, and nine functions moved
from `excluded` to `match`.

## Files

| File | Content |
|---|---|
| `game-anim.csv`, `glitch-core-io.csv` | **the pilot**: every ledger row with status `reconstructed`; rows whose original body makes calls are listed as excluded |
| `game-anim-with-imports.csv`, `glitch-core-io-with-imports.csv` | the same two categories also running functions that call modelled imports (libm, soft-float, `operator new`, ...). Exploratory |
| `game-app.csv`, `game-character.csv`, `game-items-save.csv`, `game-ui.csv`, `game-world.csv` | the other game categories, no-call functions only, run to see the tool scale. Exploratory |
| `layout-audit.csv` | the `// +0x..` member offset comments of the game headers against the ARM32 compile. Bonus |

Columns are described in `tools/trackb/armdiff/README.md`. `py -3 tools/trackb/armdiff/summarize.py <category>` makes the tables
below from a CSV.

## Pilot result

Command: `py -3 tools/trackb/armdiff/run.py -c game-anim -c glitch-core-io --no-call-only` (48 cases per function, extended up
to four times while the original still has unexecuted code; seed 1; about one minute with a warm build).

| category | ledger rows `reconstructed` | original body has no call | match | mismatch | excluded |
|---|---:|---:|---:|---:|---:|
| game-anim | 216 | 80 | 73 | 2 | 5 |
| glitch-core-io | 1016 | 326 | 173 | 8 | 145 |
| total | 1232 | 406 | 246 | 10 | 150 |

The other 826 rows call other code (BL, BLX, a tail branch or an indirect call) and are out of the pilot's scope; the CSVs list
them as `excluded: original body makes calls`. Of the 246 matches, 140 (53 + 87) are functions of 8
bytes or less (`bx lr`, a constant return, a single store), which a faithful and an unfaithful reconstruction can both pass; the
CSV column `orig_size` separates them. The remaining 106 matches are real bodies (12 to 196 bytes). On 241 of the 246 matches the inputs
executed every instruction of the original, on the other five 88 to 95%, counting a conditional instruction only when its
condition held (`orig_coverage_pct`). 14,294 cases (each two emulated calls) were run.

### Mismatches (10)

All ten are in the reconstruction's data layout or in an intended deviation. None looks like a harness artefact: each was
reproduced with `-v`, and the disassembly of the original confirms the offsets for `AnimatedFX`, `CMemoryReadFile`,
`IDevice::isFullscreen` and `CZipWriter` (the offset of `getVideoModeList` follows from its return value).

| Function | Difference | Cause |
|---|---|---|
| `AnimatedFX::AnimatedFX(int)` 0x4922e0 and 0x492374 | `this+0x4 (m_endOfLoop)`: original leaves it, reconstruction writes 0 | Intended and documented in the source ("the original leaves it unset"). It is the only difference. |
| `glitch::io::CMemoryReadFile::getBuffer`, `isValid`, `seek`, `getSize` (0x56eb6c, 0x56eb8c, 0x56ec3c, 0x56ec78) | the reconstruction reads and writes every field 4 bytes lower | The original has buffer at +0xc, size +0x18, position +0x1c. In the ARM32 compile `IReadFile` is 8 bytes, so buffer is at +8, size +0x14, position +0x18, although the header comments say +0xc. The base class is 4 bytes too small. |
| `glitch::IDevice::getVideoModeList`, `isFullscreen` (0x67143c, 0x671494) | the original returns `this+0x3c` and reads the byte at `this+0x6a`; the reconstruction uses `this+0x10` and `this+0x1f` | `IDevice` is 108 bytes in the reconstruction (`SCreationParameters` is much smaller than the original's). |
| `glitch::io::CZipWriter::CZipWriter(IWriteFile*)` 0x6b4f34 and 0x6b4f90 | the original constructor writes `this+0x1c`; the reconstruction class ends at 28 bytes | a missing member. |

The exploratory runs (`glitch-core-io-with-imports.csv`) show more of the same kind: `vector2d<float>::getAngle` returns a
`double` in the original (the epilogue moves the result into `r0:r1`) and a `float` here; the original `IAttribute::getMatrix` writes one
byte past a 64-byte matrix, so `CMatrix4<float>` probably carries a flag the reconstruction lacks; `rotateXYBy`, `rotateYZBy` and
`rotateXZBy` give different float results (the argument already passed to `cos` differs); `getRotationDegrees` gives NaN where the
original gives 0.

### Exclusions among the 406 no-call rows (150)

| Reason | game-anim | glitch-core-io |
|---|---:|---:|
| `sid_collection.hpp`: the reconstruction declares `glitch::core::detail::sid_layout::SIDedCollection`, the original symbols are `glitch::core::detail::SIDedCollection<...>`, so no name can match (the compiler suggests the right namespace) | 0 | 88 |
| STL layout: the class holds a `std::string` or `std::map` (STLport 24 bytes, libc++ 12) and every case differs only at or after it | 5 | 32 |
| no definition with the original's mangled name: a template instance with another signature (`computeBoundingBox` takes `int stride` in the reconstruction, the original `unsigned`), `IAttribute::setX(by value)` against `const&`, header-inline functions never emitted | 0 | 21 |
| too few comparable cases: the reconstruction keeps `ProcessBufferHeap` state under a different name, so the two sides hold different globals | 0 | 4 |

A function whose class has an STL member is still run. A difference is counted only when neither side read the object at or
beyond the STL member and the difference is before it; otherwise the case is not counted, and a function with no credible case
is excluded. 150 of the 246 matches (145 in `glitch-core-io`, 5 in `game-anim`) are in such classes (flag `stl_class`): they
are valid for the offsets before the member, which is where the function read.

### Signature drift seen while matching names

47 methods of `glitch-core-io` (flag `const_differs`; 41 match, 6 excluded) are declared `const` in the reconstruction and not in
the original symbol, for example the `IAttribute::getInt/getFloat/getColor/...` family. They are compared with the other variant and
match or mismatch on behaviour, but the mangled names differ, so a name-based link against original symbols would fail.

## Other game categories (exploratory, no-call functions only, `--no-call-only`)

| category | no-call rows | match | mismatch | excluded |
|---|---:|---:|---:|---:|
| game-app | 245 | 204 | 11 | 30 |
| game-character | 184 | 154 | 5 | 25 |
| game-items-save | 113 | 94 | 13 | 6 |
| game-ui | 86 | 68 | 2 | 16 |
| game-world | 306 | 225 | 25 | 56 |

3,718 functions in 79 s, no harness error. Mismatches are mostly two kinds: a field read or written at another offset (a
layout difference: different fault addresses for the same null pointer, or different `r0`), and constructors or getters of
property templates (`SimpleTypeProperty<T>::SetToDefaultValue`, 6 of the 13 in game-items-save). These need a person to read
them; they were not triaged.

## Functions that call imports (exploratory)

`--shape default` also runs functions that call only modelled imports. In `glitch-core-io`: 148 such rows, 77 match, 12
mismatch, 59 excluded; in `game-anim`: 16 rows, 0 match, 1 mismatch, 15 excluded. These runs go through the soft-float helpers
and libm models (checked separately: 400 random float pairs through compiler-rt's `__aeabi_fadd/fsub/fmul/fdiv/f2iz/fcmplt`
agreed with IEEE binary32 arithmetic). Functions with internal or indirect calls run only with `--shape any`; most of their
cases are inconclusive because garbage inputs rarely make a real call graph work. That is the phase-2 work.

## ARM32 build coverage

`build_arm.py` compiled 1,015 of 1,017 translation units of the 15 non-vendor categories (engine and game) with the NDK in the
last build: `g1-game-app-pack1-dbf367-0.cpp` (`glitch::SEvent` has no member `type`) and
`tb_scene-collada-gui-glitch_scene-0.cpp` (an explicit instantiation outside its namespace) fail. Earlier in the session up to eight
failed (members used but not declared, `getType` return types, a `reinterpret_cast`), which other waves have since fixed or
changed. A few sources use `throw` and are built with exceptions on.
`port/decomp-reconstruction/android-armv7a.cmake` builds a whole library with the same flags (verified with
`dh2_glitch_core_io`, `-DDH2_ARM_EXCEPTIONS=ON`).

## Layout audit (bonus)

The member comments `// +0x..` in `game/include/dh2` are the original 32-bit offsets (TRACK-B.md). `layout_audit.py` checks
them against the ARM32 compile: 2,338 annotated members in 361 classes, 1,101 equal, 323 explained by a preceding
`std::string`/`map` (-12 bytes each), 759 after an STL member with another delta, 35 off with no STL member before them,
94 in classes no built unit uses, 26 not found by name. The first deviating member of each class says where it starts. Ten classes deviate
with no STL member before the first deviation (a base class or member of the wrong size, or a missing field):
`RootSceneNode` (368 bytes short), `ShadowModularSkinnedMeshSceneNode` and `XrayModularSkinnedMeshSceneNode` (372),
`ModularSkinnedMeshSceneNode` (376), `MeshSceneNode` (304), `SkyBoxMeshSceneNode` (300), `ItemInventory::QuestGatheredItem` (8),
`GSInit` (4), `SceneManager` (3), `InputManagerWin32` (3). The scene-node ones are the same cause: the engine scene node base
class in the reconstruction is a stand-in far smaller than the original. 65 further classes have a deviation after an STL
member that the STL sizes do not explain; they need either an offset map or an STLport-sized `std::string`.

## Tool validation

- `selftest/selftest.py` (7 controls): two faithful clones of original functions are reported `match`; five deliberately wrong
  clones (wrong return value, a store into the wrong field, an increment by 2, a missing conditional store, an extra `operator new`)
  are reported `mismatch`. It passes. An earlier version of the case generator failed this test (the conditional store was
  not reached), which is why cases now use flag-like, byte-sparse buffers and extend while coverage grows.
- Original library: all relocation types applied (49,132 `RELATIVE`, 4,969 `ABS32`, 11 `GLOB_DAT`, 351 `JUMP_SLOT`; no other
  type occurs), stack guard and ctype tables provided.
- Runs are reproducible: seeds are fixed and the demand-paged garbage memory is derived from the case seed and the page address.

## What the integrator decides

armdiff reports; it does not rule. Questions it leaves open: whether `match` on an 8-byte function should count at all; whether a
mismatch caused by a layout error in a base class (for example `IReadFile`) is one finding or the many it shows as; whether the
`sid_layout` namespace in `sid_collection.hpp` is intended; and whether `const_differs` signatures should be corrected to the
original's mangling.

## Next steps

1. Fix the layout findings above (`IReadFile`, `IDevice`, `CZipWriter`, the scene-node base, `CMatrix4` flag) and rerun
   `run.py --category <cat> --no-call-only`; mismatches that remain are logic.
2. STL: compile the ARM32 side with an STLport-sized `std::string` and `std::map` (a shim header added with `-include`) or add an
   offset map to `stl_incompatible()`. That turns the 37 STL-excluded no-call functions of the two pilot categories (44 in
   game-world, 22 in game-character) into results.
3. Header functions: derive the explicit instantiations from the ledger instead of the demangled names so that namespace and signature drift is
   reported by name rather than as "no definition".
4. Phase 2, callees: `--callee original` already binds every call that leaves the unit to the original function, so functions with
   `imports` shape run now; internal and indirect shapes need object graphs (vtables of fixtures, linked lists), which the
   garbage-memory inputs do not provide. A per-callee policy table (original, scripted, reconstructed) is the next piece.
5. Run armdiff after each wave (`merge_ledger.py` then `run.py --category ...`) and keep the CSVs: the `src_sha1` column shows which
   rows a source edit invalidates.
6. Report return types separately (`getAngle` returns a double in the original) by comparing `r1` when the original writes it.

Superseded by `SWEEP-2026-10-16.md` (full sweep of all categories, triage of every mismatch, fixes).
