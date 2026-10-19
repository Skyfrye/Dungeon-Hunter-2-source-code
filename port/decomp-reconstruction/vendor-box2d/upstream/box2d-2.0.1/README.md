# Box2D 2.0.1 (upstream source, DH2 build configuration)

Third-party upstream code, not Track A reconstruction.

## Provenance

- Copied as-is (bytes, CRLF kept) from `port/physics-backend/box2d-2.0.1` (Track A tree). 65 files, including `Include/Box2D.h`, `License.txt`, `Readme.txt` and `Source/Makefile`.
- Official Box2D 2.0.1 release by Erin Catto. The Track A README (`port/physics-backend/README.md`) records the source archive SHA-1 `27a1a0bd08c81bbf661fa008645ee5c538bb2767` and SHA-256 `62857048aa089b558561074154430883cee491eedd71247f75f488cba859e21f`, and says 63 files match the official bytes. Not re-checked here. The `reference/provenance.json` that README cites is not present in the Track A tree.
- Binary evidence: `b2_version` at 0x99e228 in the DH2 `libDungeonHunter2.so` reads `{2, 0, 1}`.

## DH2 changes (each marked with a `// DH2:` line)

1. `Source/Common/b2Settings.h`: `b2_maxProxies` is 2048 (official 2.0.1: 512). `b2_maxPairs` is `8 * b2_maxProxies`, so 16384 (official 4096). The Track A README says these were recovered from the DH2 binary's `b2BroadPhase` and `b2PairManager` constructor loop bounds. 2 markers.
2. `Source/Common/b2Settings.cpp`: `b2Alloc` and `b2Free` use a naturally aligned malloc header (`alignof(std::max_align_t)`) in place of the official 4-byte size header, so objects holding 64-bit pointers stay aligned. 6 markers.

## Not built by the DH2 library

- `Source/Collision/b2Collision.cpp` has no compile unit in the DH2 build's DWARF list. Its only function, `b2Segment::TestSegment`, is absent from the binary. Keep it out of the build.
- `Source/Common/Fixed.h` (fixed-point classes) is not used. The DH2 Box2D is float.

## Build

Compile the 30 `Source/**/*.cpp` units in the DH2 list (every `.cpp` except `b2Collision.cpp`). Track A's physics port builds with `-fno-fast-math -ffp-contract=off` and a forced `<cstring>` include (see `port/physics-backend/README.md`). No external libraries.

## Host-port changes (Track B, MinGW host build; marked `HOST-PORT:`)

- `Source/Common/b2Math.h`: `b2IsValid` uses `__builtin_isfinite` under MinGW, which has no `finite()`. Same result.
