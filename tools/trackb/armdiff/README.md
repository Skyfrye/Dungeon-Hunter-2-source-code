# armdiff: reconstructed functions against the original ARM machine code

armdiff runs a function of the original `libDungeonHunter2.so` and the same function from the Track B
reconstruction on identical input memory and compares what they do. It is a differential tester for the
ledger rows with status `reconstructed`. It does not change a ledger and it never edits a source.

Design (decided by the integrator): the reconstruction is built for **ARM32** with the Android NDK clang
(`armv7a-linux-androideabi21`, ARM mode, soft-float, `-O1`, position independent, `-fno-exceptions` where the
source allows it). The original library and the reconstructed code are then loaded into **one Unicorn ARM32
address space**. Both are 32-bit, so a faithful reconstruction has the same struct layout byte for byte, and
a layout error is itself a difference the tool reports.

```
 original libDungeonHunter2.so ──┐                      ┌─► return registers
 (relocated, base 0x10000000)    │   same inputs,       ├─► every byte written outside the callee's own stack frame
 reconstruction .so (one TU)     ├─► two runs of one ──►├─► effectful library calls (new/delete/malloc/free/...)
 (ARM32 build, 0x20000000)       │   function           └─► verdict per case, then per function
 compiler-rt helpers (0x28000000)┘
```

## Requirements

- Windows with `py -3` (Python 3.10 or newer; tested with 3.14), `unicorn` 2.1.4 and `capstone`. No `pyelftools`:
  the ELF reader is in `elf32.py`.
- The Android NDK (tested with `29.0.14206865`). It is found through `DH2_ANDROID_NDK` (the NDK directory),
  `ANDROID_NDK_HOME`, `ANDROID_NDK_ROOT`, `ANDROID_NDK`, `<ANDROID_SDK_ROOT|ANDROID_HOME>/ndk/<newest>`, and
  finally the path recorded in `build_arm.py` (`DEFAULT_NDK`, this machine's copy).
- The original library, `<home>/Documents/Projects/Dungeon Hunter 2 Recomp/lib/armeabi-v7a/ida/libDungeonHunter2.so`
  (SHA-256 starts `36498eb8`; the tool warns on any other file). Override with `--library`.

## Use

```
py -3 tools/trackb/armdiff/run.py --address 0x3c9228 [--cases 64] [-v]       # one function, every case printed with -v
py -3 tools/trackb/armdiff/run.py --category game-anim --no-call-only         # every no-call function of a category
py -3 tools/trackb/armdiff/run.py --category glitch-core-io --shape imports   # also functions that call libc/libm/soft-float helpers
py -3 tools/trackb/armdiff/run.py --address 0x3c932c --unit my_clone.cpp      # try another implementation of that function
py -3 tools/trackb/armdiff/selftest/selftest.py                               # the negative controls (must pass)
py -3 tools/trackb/armdiff/summarize.py game-anim glitch-core-io              # Markdown tables from the CSVs
py -3 tools/trackb/armdiff/layout_audit.py                                    # header offset comments against the ARM32 compile
py -3 tools/trackb/armdiff/build_arm.py --category game-anim                  # only build (also done by run.py)
py -3 tools/trackb/armdiff/manifest.py --category game-anim --csv shapes.csv  # call-shape census of the original bodies
```

`run.py` options that matter: `--cases N` (default 48), `--seed S` (default 1; runs are reproducible),
`--budget N` (instructions per call, default 400000), `--no-call-only` (original body has no BL/BLX/indirect
call or tail branch, found with capstone), `--shape default|any|none,imports,...` (default `none,imports`
where every imported function has a model), `--callee original|recon`, `--extend K`, `--csv PATH`, `--no-build`.
A category run writes `reports/decomp-reconstruction/armdiff/<category>.csv` (`--csv-suffix with-imports` gives
`<category>-with-imports.csv`; several `--category` options write one CSV each).

The ledger of a category is `ledger.csv` overlaid with the not yet merged `ledger.d/*.csv`, the same rule
`merge_ledger.py` uses. Only rows whose status is `reconstructed` are selected.

### Result columns (CSV)

`category, address, symbol, demangled, source_file, orig_size, shape, result, reason_or_difference, cases, equal,
fault_equal, inconclusive, mismatch, first_case, first_difference, mismatch_class, orig_coverage_pct, flags,
recon_symbol, src_sha1, notes`

- `result` is `match`, `mismatch` or `excluded`. For an excluded row `reason_or_difference` says why.
- A `mismatch` row names the first difference in `reason_or_difference`: `r0: orig=... recon=...`,
  `memory this+0x18 (position): orig=0x00 recon=0x80 ...` (region, byte offset, and the reconstruction's member
  name at that offset), `call #0: orig=... recon=...`, or a fault difference. `first_case` gives the case index
  (`--address A --cases N -v` prints it with its inputs). `mismatch_class` is one of: return value, write to
  this, write through argument, return object (sret), write elsewhere, library call, control flow / fault.
- `shape` is the call shape of the original body: `none`, `imports`, `internal`, `indirect`.
- `orig_coverage_pct` is the share of the original function's code bytes the inputs executed. A `match` with low
  coverage is weak evidence; with `--extend` (default 4) armdiff keeps generating cases, up to four times
  `--cases`, while the original still has unexecuted code and coverage keeps growing.
- `orig_size` is the byte size of the original function. A 4 or 8 byte function (`bx lr`, a constant return) is a
  match that says little beyond "the reconstruction also does nothing / returns that constant".
- `flags`: `stl_class`, `vptr_set`, `const_differs`.
- `src_sha1` is the first 10 hex digits of the SHA-1 of the translation unit that was built (sources change under
  concurrent waves, so a result belongs to that content).

## What happens to one function

1. **Selection.** The ledger row gives the original address and symbol. The original body is disassembled
   (`manifest.py`, literal pools skipped) and classified `none/imports/internal/indirect`.
2. **ARM32 build** (`build_arm.py`). Each translation unit of the category is compiled with the include sets of
   `tools/trackb/check_tu.sh`, linked alone as `build/tb-arm32/<category>/<stem>.so`, and kept with a
   `<stem>.meta.json`: the LLVM IR signatures (argument widths, zeroext/signext, `this`, sret, `dereferenceable`
   size) and the record layouts clang computed (`-fdump-record-layouts`). A function whose source is a header
   gets a synthetic unit (`build/tb-arm32/_hdr`) that includes the header, calls each plain inline function once
   and explicitly instantiates the templates the rows name; it is compiled with `-fno-inline` so that every
   function is emitted. A source that does not compile for ARM32 is excluded with the compiler's message.
3. **Loading** (`machine.py`). One Unicorn ARM32 machine holds the original at `0x10000000`, the reconstruction
   at `0x20000000` and a runtime of compiler-rt's `__aeabi_*` helpers at `0x28000000`. All relocation types the
   libraries use are applied: `RELATIVE`, `ABS32`, `GLOB_DAT` (including `__stack_chk_guard`, `_ctype_`, `__sF`, the
   case tables) and `JUMP_SLOT`. Address 0 up to `0xffff` is never mapped, so a null access is a fault.
4. **Symbol binding.** Imported C library functions run as Python models (`stubs.py`: `memcpy`, `memset`, `strlen`,
   `strcmp`, `operator new/delete`, `malloc/free`, libm, ...). Soft-float and integer division helpers
   (`__aeabi_fadd`, `__aeabi_fmul`, `__aeabi_f2iz`, `__aeabi_idiv`, ...) run natively from compiler-rt on both sides.
   A function the reconstruction calls that lives outside its own translation unit is bound to **the original's
   function of the same mangled name**, so the function under test is isolated from the rest of the
   reconstruction (`--callee recon` binds calls inside the unit to the reconstruction instead). `C2`/`D2` fall back
   to `C1`/`D1` where the original has only one of them. An import with no model stops the case as `unmodeled`.
5. **Inputs** (`cases.py`). Seeded and reproducible (`seed`, function address, case index). Registers and the stack
   are filled by the AAPCS rules from the IR signature: `this`, pointer arguments (valid buffers sized from the IR,
   sometimes null where the type allows it), integers (boundary values, small ranges, random), floats (bit patterns:
   0, ±1, denormals, inf, NaN, ranges) and `bool`/`char`/`short` extended as the signature says. Buffers are filled by
   style: all zero, small counters, mixed random, pointer-rich (words that point at the other buffers), byte-sparse
   (flags that are mostly clear), word-sparse. The `this` buffer carries the original vtable pointer when the class has
   a vtable in the original. Every other address a function touches is demand-paged garbage, identical for the two
   runs of a case.
6. **Comparison** (`compare.py`).
   - Both runs must end the same way. A fault in both with the same kind and address counts as `fault_equal`;
     a fault or a budget overrun in only one is a mismatch; an unmodeled call in the original or two budget overruns
     make the case inconclusive.
   - The return value is compared by type: `r0`, `r0:r1` for 64-bit and double, low byte for bool/char, NaNs all equal.
     The `sret` object is compared in memory.
   - Every page the callee wrote is compared byte for byte, except the callee's own stack frame. Words holding a code
     address are canonicalised to (symbol, offset), stack addresses to `<stack>`, and two pointers to the same C string
     in the two images count as equal. NaN words are equal to each other.
   - The sequence of effectful library calls (`new`, `delete`, `malloc`, `free`, logging, ...) must be identical.
     Memory helpers (their effect is the bytes) and pure functions (libm, `strlen`, ...; their result reaches the
     compared state) are not compared as calls.
   - A function is `match` when no case differs and at least a quarter of the cases (at least 4) ended identically.
     Fewer comparable cases make it `excluded` with the counts.

### Faithful reconstructions compared against the original compiler

Different compilers produce different code for the same source, so armdiff compares behaviour only. It does not
compare instructions, register allocation, stack frame size, or the order of independent stores. A recon that is
correct but calls an out-of-line helper where the original inlined it (a base-class destructor, for example) is
handled by the callee binding above: that helper runs the original's body.

## Known differences armdiff has to work around, and how

| Difference | Handling |
|---|---|
| STLport (original) against libc++ (ARM32 build): `std::string` is 24 bytes against 12, `std::map`/`list` differ | `stl_incompatible()` reads the record layout clang produced. For a class with such a member the function still runs; a difference counts only if neither side read the object at or beyond the first incompatible member and the difference is before it. Otherwise the cases are `STL layout suspect`, and a function with no credible case is excluded with the member and its offset. `std::vector`, `shared_ptr`, `pair` agree in layout; their element types are checked. A signature that contains `std::string`/`map`/`list` is excluded (the mangled names differ anyway). |
| A function the reconstruction calls that is neither in its own unit nor in the original under that name (a libc++ routine, a header-inline helper the original compiler inlined) | The case is inconclusive, not a mismatch: it cannot be run. A real extra call to a modelled function (`operator new`, `malloc`, ...) is caught by the call comparison. |
| A global the reconstruction keeps in its own image (anonymous namespace, internal static) | If the original has an object of the same name and size the bytes are copied in before the run and compared after it. Any other access to the reconstruction's own `.data`/`.bss` makes the case inconclusive ("global state with no counterpart by name"). |
| GCC clones (`foo.clone.3`) | Compared with the base symbol. |
| Const qualifier differs from the original symbol | The other variant is used and the row carries the flag `const_differs`. |
| NaN sign/payload | Not compared. |
| `float -> int` out of range, division by zero | Both sides run the same compiler-rt helper, so they agree. Division by zero faults like Android's libgcc (SIGFPE). |
| Static initialisers (`.init_array`) are not run | State they would set up is absent on both sides. |

## What armdiff cannot do (reported, never counted as a match)

Functions that call into game code which needs real object graphs (`internal` and `indirect` call shapes) run only
with `--shape any`; with garbage inputs most such cases are inconclusive. Printf family, file, socket, GL, time and
dlopen imports have no model (`excluded: calls an import armdiff has no model for`). Thumb functions are excluded
(all 1,106 Thumb symbols are STL runtime). Functions defined in headers need an instantiation the tool can derive
from the symbol; class templates whose namespace differs from the original's cannot be matched by name.

## Files

| File | Role |
|---|---|
| `run.py` | driver: selection, build, case loop, verdicts, CSV |
| `build_arm.py` | NDK clang build per translation unit, header units, IR signatures and record layouts |
| `machine.py` | Unicorn address space, loader and relocations, import stubs, demand paging, write tracking |
| `stubs.py` | Python models of the C library imports and imported data |
| `cases.py` | seeded input generation |
| `compare.py` | return, memory and call comparison; canonicalisation |
| `abi.py` | Itanium names, LLVM IR signatures, AAPCS argument assignment |
| `manifest.py` | ledger overlay, original symbols, capstone call-shape census |
| `elf32.py` | ELF32 reader |
| `summarize.py` | Markdown tables from the result CSVs |
| `layout_audit.py` | compares the `// +0x..` member comments of the game headers with the offsets the ARM32 compile gives (needs `build_arm.py` output); writes `reports/decomp-reconstruction/armdiff/layout-audit.csv` |
| `selftest/` | negative and positive controls (`selftest.py`, `controls.cpp`) |
| `../../../port/decomp-reconstruction/android-armv7a.cmake` | CMake toolchain file for the same ARM32 build |

The CMake toolchain file builds the library targets (`cmake --build ... --target dh2_glitch_core_io`) with the same
flags when a whole-library ARM32 build is wanted; add `-DDH2_ARM_EXCEPTIONS=ON` because a few sources use `throw`.

## Ledger symbols

Most ledger rows carry the mangled original name. Some categories (game-app, for example) carry the demangled name
IDA shows; armdiff then uses the symbol the original ELF has at that address. Rows whose address has no function symbol
are excluded.

## Reproducing a result

Every CSV row has the address, the seed (`--seed`, default 1) and, for a mismatch, the case index. To see that case:

```
py -3 tools/trackb/armdiff/run.py --address 0x56ec3c --cases 12 -v --no-csv
```

prints one line per case with the register and stack inputs (`desc`), the buffers' style (`b3s2` is buffer style 3,
scalar style 2, see `cases.py`) and both sides' status. `build/tb-arm32/<category>/<stem>.so` is the reconstruction
exactly as it was run, and can be inspected with `llvm-objdump -d` from the NDK.

## Changes of 2026-10-16 (verification owner V, `reports/decomp-reconstruction/armdiff/SWEEP-2026-10-16.md`)

- `cases.py`: the typed fill now descends into fixed arrays of records and of bools (`T[N]`, `std::array<T, N>`), so a bool inside an
  array element holds 0 or 1 (clang assumes it does).
- `run.py`: the STLport/libc++ size table counts `std::wstring` as 72 against 12 bytes (not 24 against 12), `std::map`/`set` as 24 against 12
  (20 plus the comparator word; a `pad_` member right after the map in a header gives the 4 bytes back), and `std::vector<bool>` as 20 against 12.
  `stl_expected_delta()` is what the layout audit and the triage use.
- `build_arm.py`: `DH2_ARMDIFF_OUT=<dir>` redirects the build tree, `DH2_ARMDIFF_PACK=<n>` adds `-fpack-struct=<n>`. The binary aligns the double of
  `gameswf::as_value` to 4, so a pack-4 build was tried; it lowered the number of matches (2,701 against 2,863 on the no-call run) and is not the default.
- Header-function results (`_hdr` units) are rebuilt only when a run builds: run `--shape default` without `--no-build` after editing a shared header.
