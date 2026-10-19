# game-world: class layouts and open questions

## The five game-object constructors that are inlined into their factories

`ColBox`, `Floor`, `Dummy`, `Decor` and `AnimatedDecor` have **no standalone constructor symbol in
`libDungeonHunter2.so`** (checked against `recovered/native/symbols/libDungeonHunter2.so/symbols.csv`:
neither `_ZN*C1EN10ObjectBase6GO_IDSE` nor the `C2` spelling exists for any of them, in `.dynsym` or
`.symtab`; only the destructors and virtuals do). Their constructors are the inline expansion inside
`GetNewInstance<T>()`, so the factory address in `game-app/ledger.csv` is the only ledger row for that
code and the constructor body has no address of its own. Adding a ledger row for the constructor would
be an address that is not in any `queue.csv`, which `tools/trackb/merge_ledger.py` and
`tools/decomp_progress.py` both reject; the definitions are therefore recorded here and in the factory
rows' notes.

| constructor | factory row | definition | inlined body (asm) |
|---|---|---|---|
| `ColBox::ColBox(GO_IDS)` | `0x340fe0` | `src/g1-game-world-pack0-9565e8-0.cpp` | `asm_chunk_001.asm` 0x340FE0 |
| `Floor::Floor(GO_IDS)` | `0x34104c` | `src/g1-game-world-pack1-bc81ef-0.cpp` | `asm_chunk_001.asm` 0x34104C |
| `Dummy::Dummy(GO_IDS)` | `0x3410a4` | `src/g1-game-world-pack1-bc81ef-0.cpp` | `asm_chunk_001.asm` 0x3410A4 |
| `Decor::Decor(GO_IDS)` | `0x3410fc` | `src/g1-game-world-pack0-9565e8-0.cpp` | `asm_chunk_001.asm` 0x3410FC |
| `AnimatedDecor::AnimatedDecor(GO_IDS)` | `0x342600` | `../game-anim/src/g1-game-anim-pack0-625644-0.cpp` | `asm_chunk_001.asm` 0x342600 |

Shared shape (`operator new` is dropped, the host build calls the C++ `new`): `GameObject::GameObject(id)`
with `MOV R1,#0x14` (GO_IDS 20), then the primary vptr at `+0x00`, the third vptr at `+0x04` and the
second at `+0x24` (the same `vtable+0x08 / vtable+0xE4 / vtable+0xD8` triple that
`Decor::~Decor` and the non-virtual thunks at `this-4` / `this-0x24` confirm; all five vtables are the
same 244 bytes = 61 slots, payload starting at `vtable+8`). The vptr stores and the base call are what a
C++ constructor emits, so each body is only its flag stores:

- `ColBox`: `m_static` `+0x84` = 1 and the three words `+0x374/+0x378/+0x37C` = 0 (`Point3D<float>
  m_dimensions`, 12 bytes; the host emitter writes `movq` + `movl`).
- `Floor` and `Dummy`: `m_static` `+0x84` = 1 only (no members of their own; both are 0x374 bytes).
- `Decor`: `m_static` `+0x84`, `m_floorMapPending` `+0x375`, `m_isSolid` `+0x376` = 1, one byte each.
- `AnimatedDecor`: `m_static` `+0x84` = 1 (stored twice in the asm), `m_floorMapPending` `+0x375` = 1 then
  0 (final 0), `m_isSolid` `+0x376` = 1, and the empty `m_startAnim` at `+0x37C` built inline
  (`_M_allocate_block(0x10)`, data and end both re-seated on `+0x37C`, terminator written). It does NOT
  call `Decor::Decor(GO_IDS)`.

`Decor::Decor(GO_IDS)` is already used as the base of `Module` (0x389fa8 / 0x38a100), which inlines the
same three flag stores; `Decor.hpp` also declares an inline `Decor(GO_IDS, bool)` that runs `GameObject`
and skips the two flags, because C++ cannot run a grandparent's constructor from `AnimatedDecor` and the
original does exactly that. The variant is inline, is named by no original symbol, and every call to it is
inlined, so it adds no original symbol. It is not in `link-stubs/link_stubs.csv` either, so it must not
collide there:

```
T _ZN5DecorC2EN10ObjectBase6GO_IDSEb   (the two-argument variant, global/unique in this TU)
  ... same TU: T _ZN5DecorC1... and T _ZN5DecorC2EN10ObjectBase6GO_IDSE  <- no 'b': the real Decor ctor
```

The MinGW object spells the two-argument symbol without a comdat suffix but with a `T` binding, and the
one-argument `C2` with the same binding: distinct names, so both definitions coexist. The build links
with `-Wl,--allow-multiple-definition` for the tests (CMakeLists.txt lines 301-318), which is why a
duplicate would not be caught there; the symbol names do not collide in the first place.

### Symbol check

`nm` on the compiled translation units (MinGW g++, the same flags as `tools/trackb/check_tu.sh`) emits
both the complete-object and base-object spellings for every one of the five:

```
g1-game-world-pack0-9565e8-0.cpp.o:  T _ZN6ColBoxC1EN10ObjectBase6GO_IDSE  T _ZN6ColBoxC2EN10ObjectBase6GO_IDSE
                                     T _ZN5DecorC1EN10ObjectBase6GO_IDSE   T _ZN5DecorC2EN10ObjectBase6GO_IDSE
g1-game-world-pack1-bc81ef-0.cpp.o:  T _ZN5DummyC1EN10ObjectBase6GO_IDSE  T _ZN5DummyC2EN10ObjectBase6GO_IDSE
                                     T _ZN5FloorC1EN10ObjectBase6GO_IDSE  T _ZN5FloorC2EN10ObjectBase6GO_IDSE
g1-game-anim-pack0-625644-0.cpp.o:   T _ZN13AnimatedDecorC1EN10ObjectBase6GO_IDSE
                                     T _ZN13AnimatedDecorC2EN10ObjectBase6GO_IDSE
```

`C1` is what a `new` expression calls, so each `GetNewInstance<T>` resolves to its own constructor.

### Follow-up for the integrator

The constructors above define the five `C1` symbols the factory rows needed, which makes their rows in
`link-stubs/link_stubs.csv` (rows 23, 31-35: `AnimatedDecorC1`, `DecorC1`, `DecorC2`, `DummyC1`,
`FloorC1`, `ColBoxC1`) stale stubs. `link/library-duplicates` (CMakeLists.txt lines 329-359) links every
library and that stub library with `--whole-archive` and no `--allow-multiple-definition`, and fails on
any `multiple definition` line, so those six rows have to go before that test is green again (then `cmake`
must be re-run, because the stubs are generated one file per CSV row index). This file only records it:
`link-stubs/link_stubs.csv` is the integrator's to regenerate.
