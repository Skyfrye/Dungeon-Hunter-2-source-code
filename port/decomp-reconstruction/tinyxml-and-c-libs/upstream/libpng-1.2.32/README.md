# libpng 1.2.32 (upstream source, DH2 build configuration)

Third-party upstream code, not Track B reconstruction.

## Provenance

- Archive: `libpng-1.2.32.tar.gz`, from the libpng SourceForge release area (`libpng12/older-releases/1.2.32`).
- SHA-256 of the archive: `f49e68a3d9749ec0d2cbcf3fde4054ff64e2f7aaa15fcc8f045b8f607b649f3d`.
- Downloaded 2026-10-16 into a scratch folder, extracted there, and only the files below were copied.
- License: `LICENSE` (libpng license, copied unchanged).

## Version evidence

libDungeonHunter2.so contains the strings `1.2.32` (png_libpng_ver) and ` libpng version 1.2.32 - September 18, 2008`, plus the libpng 1.2.x error texts (`libpng error: %s, offset=%d`, `Width too large for libpng to process image data.`) and exports `png_get_libpng_ver` / `png_libpng_ver`. zlib in the binary is 1.2.3 (`inflate 1.2.3 Copyright 1995-2005 Mark Adler`); the build uses the repo's zlib target (`dh2_vendor_zlib`).

## Files

- The 15 library units `png.c`, `pngerror.c`, `pngget.c`, `pngmem.c`, `pngpread.c`, `pngread.c`, `pngrio.c`, `pngrtran.c`, `pngrutil.c`, `pngset.c`, `pngtrans.c`, `pngwio.c`, `pngwrite.c`, `pngwtran.c`, `pngwutil.c`.
- `png.h`, `pngconf.h` (1.2.x has no `pnglibconf.h`), `LICENSE`, `README`.
- Not copied: `pnggccrd.c`, `pngvcrd.c` (x86 assembler), tests, contrib, projects, scripts.

## DH2 changes

None to the sources. `CMakeLists.txt` defines `PNG_NO_ASSEMBLER_CODE` for the library and links it to `dh2_vendor_zlib`.

## Build

`dh2_vendor_png` (C, `-w`), part of `DH2_LIBS`.
