# vendor-box2d: Box2D 2.0.1 in libDungeonHunter2.so

Queue: `queue.csv`, 318 rows (294 exact name matches and 24 compiler-generated destructors).

## Ledger: 280 rows, status `upstream`

- `ledger.d/upstream-1.csv`: 31 unclaimed rows. 23 exact name matches inside the size gate and 8 compiler-generated destructors.
- `ledger.d/upstream-2.csv`: 249 rows. 191 claimed exact name matches inside the size gate, 16 claimed compiler-generated destructors, 30 claimed tiny bodies and 12 unclaimed tiny bodies.

Breakdown: 214 size-gate passes (median bytes per source token 1.48, 4x band), 42 tiny bodies (under 8 bytes, name only, note "body too small for the size gate"), 24 compiler-generated destructors. Destructors have no source body in 2.0.1, so `source_file` is the header that declares the class. Claimed rows are ledgered like any other.

## Left for reconstruction or review: 38 rows

- 9 unclaimed rows outside the size gate (flagged).
- 29 claimed rows outside the size gate (flagged).

## Vendored source: `upstream/box2d-2.0.1/`

- 65 files, copied as-is (CRLF kept).
- DH2 settings marked `// DH2:` (8 markers in 2 files): `b2_maxProxies` 2048 and `b2_maxPairs` 16384 in `b2Settings.h`; the aligned allocation header in `b2Settings.cpp`.
- `b2Collision.cpp` is vendored but not in the DH2 build.
- Details: `upstream/box2d-2.0.1/README.md`.

## Build needs (not added to CMake)

- 30 `.cpp` units (all except `b2Collision.cpp`), C++ with `-fno-fast-math -ffp-contract=off` and a forced `<cstring>` include, as in `port/physics-backend`.
- No external libraries. Track A's build is a 64-bit host build. The DH2 Box2D is ARM32, so the ledger rows are name and size matches, not compiled comparisons.
