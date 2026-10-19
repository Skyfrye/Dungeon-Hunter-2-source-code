# STLport vs host/NDK libc++: decision paper (owner S, 2026-10-16)

Research and prototype only. No category source was edited. Prototype files are in
`%TEMP%\stlp\` (STLport copy `gbp\`, test TUs and shims `proto\`); nothing was added to the tree.

## 1. Version evidence

| evidence | finding |
|---|---|
| DWARF producer (`libDungeonHunter2.so`, 32 CUs) | `GNU C++ 4.4.3` for the 24 STLport CUs and the 7 ALC CUs; `GNU AS 2.19` for libgcc asm |
| DWARF file paths | `C:/android-ndk-r5b/sources/cxx-stl/stlport/stlport/stl/_string_base.h` and about 150 more under `.../stlport/stlport/stl/`, `.../stlport/src/` (`locale.cpp`, `num_put_float.cpp`, `stdio_streambuf.cpp`, ...). The library build dir is `/opt/digit/repo/gingerbread/ndk/tests/build/prebuild-stlport` |
| Release | NDK r5b, STLport 5.2.1 with the Android patches (`README.android`: "Version: 5.2.1", `_stlport_version.h` 0x521). The googlesource `platform/ndk` branch `gingerbread` carries exactly this tree (the r5b tag does not exist in the mirror; the branch tip was used, so patch-level differences from r5b are possible but not expected in the layout) |
| Namespace | **`std`**, not `stlp_std` and not `_STL`. `_STLP_NO_OWN_NAMESPACE` is set by `config/_android.h` (needs `-DANDROID`). Mangled names are therefore plain `_ZNSs...`, `St6vectorIiSaIiEE`, `St3mapIiSsSt4lessIiESaISt4pairIKiSsEEE`. Internals are in `std::priv::` (`_STLP_alloc_proxy`, `_Rb_tree_iterator`, `_List_iterator`, `_Slist_*`, `_String_base`) |
| Config macros seen in DWARF | `_Buffers` union of 16 bytes (`_M_end_of_storage` / `char _M_static_buf[16]`, `_string_base.h` line 54): short-string optimisation on. `__iostring_allocator`, `__node_alloc` (simple node alloc), `__stlport_class` wrappers, no `_STL::` anywhere (0 hits for `_STL::`, 0 for `stlp_std` among 95,087 strings) |
| Linking | STLport was linked **statically** into the game (the `.symtab` has `_ZNSs9_M_appendEPKcS0_`, `_ZNSs20_M_compute_next_sizeEj`, `_ZNSt11_STLP_mutexD1Ev`, ...) |

Correction to the premise in the task: the original symbols do not name `_STL::`/`stlp_std::`. They are ordinary Itanium `std::` names. That makes
the symbol problem much smaller than assumed (section 2).

## 2. Counts

Ledger: 25,218 rows in 18 `ledger.csv` (19,819 reconstructed, 24 partial, 3,989 upstream, 1,386 skipped).
Original symbol resolved by `elf_address` in the reference `.symtab`; 19,618 reconstructed or partial rows have a mangled original name.

| measure | rows |
|---|---:|
| rows whose original symbol mentions `std::` (demangled) | **286** (1.5 percent) |
| of those: STLport-internal type in the signature (`std::priv::_List_iterator`, `_Rb_tree_iterator`, `_MapTraitsT`, `__true_type`, `__move_source`) | 22 |
| iostream types (`basic_istream`, `basic_ostream`) | 12 |
| plain `std::string`/`vector`/`map`/`list`/`pair`/`bitset` | 151 |
| std container with the glitch allocator (`std::basic_string<char, ..., glitch::core::SAllocator<char,0>>`, `std::vector<T, SAllocator<T,0>>`) | 101 |
| rows that differ from our compiled symbol **only** by the std namespace (`std::__ndk1::` vs `std::`, plus `size_t` width on arm64) | 139 of 286, checked by demangling the original and `llvm-nm` of `build/own-arm64/libdh2.so` and normalising |
| rows with no counterpart in that build | 147: all 22 internals; 99 of the 101 SAllocator rows (our tree evidently uses a different allocator or does not compile them: separate defect, independent of STLport); the rest absent from that (15 Oct) build |
| rows kept partial for the STL name alone | 3 (the `SIDedCollection` SEntry/set rows, glitch-core-io); the other 21 partial rows are for unrelated reasons |
| armdiff `C-stl` layout mismatches | 113 (sweep) plus 348 STL-excluded rows |
| armdiff `A-abi-align` (as_value) | 14 |

So symbol damage from not using STLport is 286 of 19,618 rows (1.5 percent). Layout damage is larger but is fully accounted for by the size table.

Host libstdc++ (MinGW GCC 16.2) mangles `std::string` as `NSt7__cxx1112basic_string...`. With `-D_GLIBCXX_USE_CXX11_ABI=0` it produces
byte-identical text to the original (`_Z3useRSsRSt6vectorIiSaIiEERSt3mapIiSsSt4lessIiESaISt4pairIKiSsEEE`), tested with `g++`. The NDK libc++ cannot: it emits
`NSt6__ndk112basic_string...` whatever the flags.

## 3. Prototype: build STLport 5.2.1 with the NDK 29 clang 21

Tree fetched (open licence, Boris Fomitchev, free use, keep notices): `https://android.googlesource.com/platform/ndk/+archive/refs/heads/gingerbread/sources/cxx-stl/stlport.tar.gz`, 541 KB, 3.8 MB unpacked.

Result of a TU with string / wstring / vector / vector<bool> / map / set / list / deque / bitset<128>:

| step | result |
|---|---|
| compile with `clang++ --target=armv7a-linux-androideabi26 -std=gnu++98 -fno-exceptions -fno-rtti -nostdinc++ -DANDROID=1` | **builds** after 5 environment fixes (below). The same flags for `aarch64-linux-android26` also build |
| fixes needed | (1) `_android.h` native-header macros use the NDK r5 directory layout: replaced with plain `<header>` plus `-D_STLP_HAS_INCLUDE_NEXT=1`; (2) `-D_STLP_NO_NEW_C_HEADERS=1` (bionic API 26 `mblen` and wrappers); (3) a shim `exception` header (the NDK 29 `cxx-stl/system/include` has no `exception`, no `bad_alloc`); (4) `-D_STLP_NO_BAD_ALLOC -D_STLP_NEW_DONT_THROW_BAD_ALLOC`; (5) a force-included header defining the glibc `_ISspace` family that `c_locale.h` expects |
| `-std=c++17` | fails in `_cstdio.h` (`gets` removed from the C library); fixable, not pursued. The tree is C++17, so a real integration would need that fixed |
| STLport runtime (30 files in `src/`) | 29 of 30 compile with clang 21 after `-include string` (a two-phase-lookup order bug in `locale.h`); `iostream.cpp` fails on `FILE` being incomplete in new bionic. The original binary links these exact 24 units statically |
| mangling | with `-DANDROID` `use(std::string&, std::vector<int>&, std::map<int,std::string>&)` gives `_Z3useRSsRSt6vectorIiSaIiEERSt3mapIiSsSt4lessIiESaISt4pairIKiSsEEE`: equal to the Itanium text the ledger carries. Without `-DANDROID` the namespace becomes `stlp_std`, wrong |

sizeof on ARM32 (`armv7a`), STLport 5.2.1 against NDK libc++:

| type | STLport 5.2.1 | libc++ (NDK) | binary evidence |
|---|---:|---:|---|
| `std::string` | 24 | 12 | DWARF `_Buffers` = 16 plus `_M_start`, `_M_finish`; sweep "24/12" |
| `std::wstring` | 72 | 12 | sweep "72/12" |
| `std::vector<int>` | 12 | 12 | equal |
| `std::vector<bool>` | 20 | 12 | sweep "20/12" |
| `std::map` / `std::set` | 24 / 24 | 12 / 12 | sweep "24/12" |
| `std::list` | 8 | 12 | sweep "8/12" |
| `std::deque<int>` | 40 | 24 | not in the sweep; STLport value is from the headers |
| `std::bitset<128>` | 16 | 16 | equal |

Every size armdiff derived from the binary matches the STLport 5.2.1 `sizeof` exactly (item ii confirmed). On arm64 STLport doubles the pointers (string 48, wstring 144,
map 48), as expected under decision 2 (host width).

## 4. `gameswf::as_value`: 24 versus 12 bytes

The header (`vendor-gameswf/as_value.hpp`) lays out `m_flags` +0, `m_type` +1, an anonymous union `{double; bool; tu_string*; as_object*}` and `ref_counted* m_owner`.
The binary has the double at +4 and `m_owner` at +8, which **overlaps the high word of the double** (types 3 and 6 use `m_owner`, number types do not, so the overlay is harmless).
On ARM32 clang aligns the double to 8: `m_flags`+0, double at +8, `m_owner` at +16, size 24, align 8. Anything after an `as_value` in `as_object` moves by 12, which is the A-abi-align class.
GCC 4.4 would also align a bare double to 8, so the binary's layout can only come from `pack(4)` (or the equivalent `__attribute__((packed, aligned(4)))`) on the value type. A global `-fpack-struct=4` was tried by the sweep and lost matches (2,701 against 2,863) because it also packs unrelated structs.

Minimal fix, verified on a mock of the struct with clang for both targets:

```cpp
#pragma pack(push, 4)
struct as_value {
    mutable std::uint8_t m_flags;   // +0
    std::uint8_t m_type;            // +1
    union {                         // +4
        double m_number;
        bool   m_bool;
        struct {
            union { ::tu_string* m_string; as_object* m_object; };   // +4
            ref_counted* m_owner;                                   // +8 (overlays the high word of m_number)
        };
    };
};
#pragma pack(pop)
```

| | current | with the pack | binary |
|---|---:|---:|---:|
| armv7a: sizeof / alignof / double / m_owner | 24 / 8 / +8 / +16 | **12 / 4 / +4 / +8** | 12 / 4 / +4 / +8 |
| armv7a: struct `{as_value; int}`: offset of int | 24 | **12** | 12 |
| arm64: sizeof / m_owner | 24 / +16 | 20 / +12 (host width, no static_assert per decision 2) | n/a |

The member names and all accessors keep working (anonymous struct and union are accepted by clang and GCC). A pragma scoped to `as_value` only keeps the other structs as they were. Only
`as_value.hpp` changes; the 14 A-abi-align rows and every class that embeds an `as_value` after an `as_object` (these show up as offset errors in the sweep) should flip. The cost is half an hour plus an armdiff rerun of `vendor-gameswf`; the owner of the gameswf header does it. Unaligned double access on arm64/x86 host is legal with the `pack` (clang emits the unaligned form); on ARM32 it is a `vldr` of an unaligned address only if the address is not 4-aligned, which the binary has too.

## 5. Recommendation

**A, with three cheap mitigations; do not do B for the whole tree.**

A. Keep NDK libc++ on Android and the host libstdc++. Record it as decision 12: std-typed symbols are compared after canonicalising `std::__ndk1`/`std::__cxx11` to `std` and `Ss` to `std::string`; STLport-internal types in a signature (22 rows) and the glitch-allocator containers are documented deviations.
 Cost: about 2 hours. Changes `tools/trackb/armdiff/conformance.py` only. Recovers 139 of the 286 std rows at once and turns the remaining ones into a named list instead of a silent defect.
 Mitigations: (1) the `as_value` pack above; (2) host: `-D_GLIBCXX_USE_CXX11_ABI=0` for the host build if byte-identical host symbols are wanted (check that all vendored libs agree; cost small, but it also changes host `std::string` to a 8-byte COW string, so only do it if nothing relies on the host layout); (3) look at why 99 `SAllocator` rows have no counterpart: that is a tree defect that STLport would not fix.
 Residual: the 113 `C-stl` mismatches and the 348 STL-excluded armdiff rows stay explained by the size table, not turned into results.

B. Vendor STLport 5.2.1 for the Android target (and optionally the host).
 What it buys: exact `Ss`/`St6vector` names, the 22 internal-type rows, and ARM32 `sizeof`/offsets of every std member (turns the 113 plus 348 rows into results).
 What it costs: (i) 3.8 MB tree plus about 6 shim files (above) and a C++17 fix for `_cstdio.h`, `iostream.cpp` and `locale.h` (roughly 1 to 2 days); (ii) STLport 5.2.1 is a C++98 library: no `unique_ptr`, `array`, `chrono`, `thread`/`mutex`, `atomic`, `make_unique`, `optional`, `tuple`, `function`, `to_string`. Our tree uses them in 39, 23, 32, 26, 5, 27, 6, 1, 1 and 36 files (about 150 files of 3,336), and 13 files use `initializer_list`; each needs a compat header or a rewrite (3 to 6 days plus regressions); (iii) the host build (MinGW) cannot use STLport without further patching, so tests would diverge from the shipping target; (iv) every `-D` and include path leaks into 1,070 files that include standard headers; (v) the glitch allocator issue is untouched.
 Payoff for the remaining work is about 2 percent of symbols and a verification harness upgrade. Not worth the risk before the game is linking.

B-lite (optional, if armdiff coverage matters later): build only the armdiff harness TUs against STLport for TUs that avoid the C++11 library. Estimated 2 to 3 days; evaluate after A.

## 6. Follow-up results (owner T, 2026-10-16)

Recorded as decisions 12 and 13 in `port/decomp-reconstruction/TRACK-B.md`.

**Checker.** `conformance.py` `norm_std` drops `std::__ndk1/__1/__cxx11/__cxx1998` and `[abi:...]`, folds the expanded `basic_string<char|wchar_t>` and
`basic_istream/ostream/iostream<char>` to `string/wstring/istream/ostream/iostream`, and reads `unsigned long` inside a std type as `unsigned int` (64-bit `size_t`).
Class `stl_abi` covers these. A run over glitch-core-io and core-platform without a rebuild gives 13 `stl_abi` and 21 `param_drift_stl` (the SAllocator rows below).

**as_value.** Applied as section 4 describes (`#pragma pack(push, 4)`, the owner in an anonymous struct that shares the payload union). Host: 20 bytes; the number
constructors no longer write `m_owner` (it overlays the double). ARM32 build: `as_value` 12/4, `as_object` 0x38, `sprite_instance` and `character` offsets agree with the binary.
Of the 14 `A-abi-align` rows, 8 now match: `as_value(int)` 0x439d50, `character::advance` 0x752d88, five `sprite_instance` getters (get_character_def, get_movie_definition,
get_current_frame, get_loading_frame, get_play_state) and `RenderFX::SetRenderCachingEnabled` 0x7a7ccc. `as_date::get_time` 0x79d650 matches once `tu_datetime::m_time` is `int64_t`
(the binary reads two words at +0x38; upstream has `time_t`, 4 bytes on the ARM32 NDK). Five were misfiled and are not as_value: `bitmap_info_ogl::get_internal_width/height/p2`
(the texture is reached through a glitch string: `ITexture::m_width` is at +0x14 in libc++ and +0x20 in the original, the known `C-stl` class), `sprite_instance::get_drag_state` 0x77e02c
(a void function whose r0 is a leftover register: harness artefact) and `button_character_instance::has_keypress_event` 0x7c6b4c (the fault address differs by one byte; not an
as_value offset, left for the row's owner). The vendor-gameswf sweep goes from 107 match / 20 mismatch to 114 / 13 with no regression, and all 86 vendor-gameswf and game-ui host tests pass.
The armdiff build cache keys on the source file only: rebuild with `build_arm.py --force` after a header layout change.

**SAllocator (99 rows).** A declaration defect, not a build artefact. The tree declares every glitch string, array and vector with `std::allocator`; the original types are
`std::basic_string<char, char_traits<char>, glitch::core::SAllocator<char,0> >` (`stringc`), the same with `wchar_t` (`stringw`), `std::vector<T, glitch::core::SAllocator<T,0> >`, and in
vox-audio `vox::SAllocator<T, (vox::VoxMemHint)0>` (10 rows, a different template). `glitch::core::SAllocator` exists only in `core-platform/include/core-platform/stlport_alloc.hpp`
(plus a forward declaration in `glitch-core-io/.../shared_string_table.hpp`); glitch-video's `batch_driver.hpp` and `c2d_driver.hpp` already use it for their vectors.
Breakdown of the 87 rows visible in the last conformance run: about 36 `stringc` parameters (CFileSystem, FileSystemBase, ISceneNode::setName, CResFactory, CUnzipReadFile, ...), 11 `stringw`,
10 `vector<stringw>` / `vector<stringc>` (CAttributes arrays, CXMLWriter), about 40 vectors of pointers or PODs (ISceneNode*, triangle3d, unsigned char, int, float, vector3d, ITexture) in
CSceneManager, CTriangleSelector, the animators, CTerrainSceneNode and SceneManager, and the 10 vox rows. The allocator is stateless, so `sizeof` does not change: the difference is the symbol and
where the memory comes from (the original calls GlitchAlloc, the tree `operator new`).
Not fixed, because it is not contained: the string type is part of virtual interfaces (`IFileSystem`, `ISceneNode::setName`, `IAttribute::setArray`), the types ripple into about 70 call sites in
game code and into glitch-scene-collada-gui (owner B3 is working there), and `SAllocator` has to move first from core-platform into glitch-core-io so that every engine category can name it.
Proposed wave: (1) move `SAllocator` and add `glitch::core::stringc`, `stringw` and a vector alias to glitch-core-io; (2) change the interface headers (`file_system.hpp`, `attributes.hpp`,
`ISceneNode.hpp`, `CSceneManager.hpp`, `CTriangleSelector.hpp`) and their definitions; (3) fix the callers and rerun conformance, where the SAllocator `param_drift` and `param_drift_stl` rows should become exact.

**SAllocator switch (owner SA, 2026-10-17).** Done as proposed. `glitch::core::SAllocator<T, E_MEMORY_HINT>`, `stringc`, `stringw`, `svector<T>` and the `to_std`/`to_stringc` copies live in `glitch-core-io/core/allocator.hpp`
(`allocate` is `GlitchAlloc(n*sizeof(T), hint)`, `deallocate` is `GlitchFree`, the body of `_String_base::_M_allocate_block` 0x3209a8 / `_M_deallocate_block` 0x56c2bc); `vox::SAllocator<T, VoxMemHint>` with `VoxString`, `VoxVector`, `VoxMap`
in `vox-audio/vox/allocator.hpp` (`VoxAlloc`/`VoxFree`). The glitch strings and vectors of the virtual interfaces (`IFileSystem`, `ISceneNode::setName`, `IAttribute::setArray`), CSceneManager, CTriangleSelector, the animators,
CTerrainSceneNode, CGUI*, CMeshCache, SceneManager (game-world) and the vox comparators/decoders/containers now use them; the callers in game, game-world, game-anim, game-ui, net-transport and glitch-video were adjusted.
Result against the ARM32 conformance run (same checker, decision 12): of the 98 ledger rows whose original symbol names an SAllocator, 61 are now exact or `stl_abi` (before: 0 exact, 87 rows all drifting), 2 `param_drift_stl`, 18 `param_drift`,
8 `missing`, 7 `unchecked` (header templates), 2 `no_source`. The remaining `param_drift` rows no longer differ in the allocator: they are scoped-enum parameters read as `unsigned int` (renderList, renderCustomList, SearchByType),
`const&` against `&` (CXMLReaderImpl::replaceSpecialCharacters), `int` against `unsigned` (getIndicesForPatch), the VoxNativeSubDecoder constructors (the original takes `NativeChunks*, States*, AudioSegments*, TransitionRules*`,
the tree takes `NativeHeaderWords const&` and plain vectors) and CResFileManager::unload (an STLport map iterator). The `missing` rows are the seven anonymous-namespace `createTriangles<T>` templates and `CKdTree::findKNearest`.
Verification: host build in build/own-sa clean, serial ctest 852/853 (the one failure, `vox-audio/stream_test`, comes from another owner's `StreamCFile` constructor change at 00:09 that now calls `Init()` and breaks the test's `opens_ == 1`);
arm64 build (build/own-sa-arm64): all 24 libraries build, `android_link_report.py` shows 0 undefined symbols.
