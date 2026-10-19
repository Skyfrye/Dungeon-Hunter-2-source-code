# SGI libtess (GLU 1.3-era tessellator), from Mesa GLU 9.0.0 (upstream source, DH2 build configuration)

Third-party upstream code, not Track B reconstruction.

## Provenance

- Archive: `glu-9.0.0.tar.gz`, from the Mesa archive (`https://archive.mesa3d.org/glu/glu-9.0.0.tar.gz`). It is the oldest GLU release in that directory, and it carries `src/libtess` (the SGI Free Software License B 2.0 code).
- SHA-256 of the archive: `4387476a1933f36fec1531178ea204057bbeb04cc2d8396c9ea32720a1f7e264`.
- Downloaded 2026-10-13 into a scratch folder, extracted there, and only the files below were copied. The license is in each file header (SGI Free Software License B, Version 2.0).

## Version evidence

- The binary's GLU symbol set is the SGI libtess one: `gluNewTess`, `gluDeleteTess`, `gluTessProperty`, `gluGetTessProperty`, `gluTessNormal`, `gluTessCallback`, `gluTessBeginPolygon`, `gluTessBeginContour`, `gluTessVertex`, `gluTessEndContour`, `gluTessEndPolygon`, `gluBeginPolygon`, `gluNextContour`, `gluEndPolygon`, and the `__gl_*` internals (`__gl_meshNewMesh`, `__gl_pqSortInit`, `__gl_renderMesh`, `__gl_computeInterior`, ...).
- The DWARF units are `dict.cpp`, `geom.cpp`, `mesh.cpp`, `normal.cpp`, `priorityq.cpp`, `render.cpp`, `sweep.cpp`, `tess.cpp` and `tessmono.cpp`, so the binary compiles these files as C++ (its symbols are C++-mangled). `memalloc.c` is not in the DWARF list.
- Limits: the bodies are not byte-compared with 9.0.0. The binary's `gluNewTess` allocates with its malloc wrapper and has no `memInit` call, so that body differs from 9.0.0's `tess.c`. No older GLU release was fetched.

## Files

- `src/libtess/`: `dict.c`, `geom.c`, `mesh.c`, `normal.c`, `priorityq.c`, `priorityq-heap.c` (included by `priorityq.c`), `render.c`, `sweep.c`, `tess.c`, `tessmono.c`, and their headers.
- `src/include/gluos.h`, `include/GL/glu.h`, `include/GL/glu_mangle.h`.

Not vendored: `src/libtess/memalloc.c` (not in the binary; see the DH2 changes), and the rest of GLU.

## DH2 changes (marked `// DH2:`)

1. `include/GL/glu.h`: the `extern "C"` blocks are off (`#if 0`). The binary's GLU entry points have C++ linkage (mangled names, `_Z10gluNewTessv`, ...), and `vendor-gameswf/include/vendor-gameswf/glu_tessellator.hpp` declares them that way.
2. `include/GL/glu.h`: after `#include <GL/gl.h>`, `#define GLenum int`. The binary's libtess takes `int` where the system header has `unsigned` (`gluTessProperty`, `gluTessCallback`, `gluNextContour`, `gluGetTessProperty`, `__gl_noBeginData`, ... all mangle with `i`), and the callers reference those symbols.
3. `src/libtess/memalloc.h`: `memInit(maxFast)` is `(1)`. `memalloc.c` is not in the DH2 build, and the binary's `gluNewTess` has no `memInit` call. `memAlloc` stays `malloc`.

## Build

`CMakeLists.txt` builds `dh2_vendor_libtess` from the nine `.c` units compiled as C++ (`LANGUAGE CXX`), with `-w`.
