# libjpeg 6b (IJG, upstream source, DH2 build configuration)

Third-party upstream code, not Track B reconstruction.

## Provenance

- Archive: `jpegsrc.v6b.tar.gz`, from the Independent JPEG Group (`https://www.ijg.org/files/jpegsrc.v6b.tar.gz`).
- SHA-256 of the archive: `75c3ec241e9996504fe02a9ed4d12f16b74ade713972f3db9e65ce95cd27e35d`.
- Downloaded 2026-10-13 into a scratch folder, extracted there, and only the files below were copied.
- License: the IJG license in `README` (copied unchanged).

## Version evidence

- The binary exports the 6b entry points (`jpeg_CreateDecompress`, `jpeg_read_header`, `jpeg_start_decompress`, `jpeg_read_scanlines`, `jpeg_finish_decompress`, `jpeg_resync_to_restart`, `jpeg_std_error`), and the 6b-era unit list in `build-source-filenames.json`. `JPEG_LIB_VERSION` is 62 (`jpeglib.h`), as in 6b.
- The DWARF unit list is the 6b file set without `jdatasrc.c`, `jdatadst.c`, `jctrans.c`, `jdtrans.c` and the memory-system files `jmemansi.c`, `jmemdos.c`, `jmemmac.c`, `jmemname.c`, `jmemnobs.c`. The binary has its own source manager (`CImageLoaderJPG::init_source` and the other `CImageLoaderJPG` methods), and its memory-system unit is `jmemirr.c`, which is not in 6b (Gameloft code).

## Files

- `jcapimin.c` ... `jutils.c`: the 41 units the binary has (`jmemmgr.c`, `jquant1.c`, `jquant2.c` included).
- `jmemnobs.c` (see the next section).
- Headers: `jchuff.h`, `jdct.h`, `jdhuff.h`, `jerror.h`, `jinclude.h`, `jmemsys.h`, `jmorecfg.h`, `jpegint.h`, `jpeglib.h`, `jversion.h`, and `jconfig.h` (written for the host build, see below).
- `README`: the IJG license and notes.

## Stand-in unit (not upstream)

The binary's memory-system unit is `jmemirr.c`, Gameloft code. Its eight entry points are `jpeg_get_small`, `jpeg_free_small`, `jpeg_get_large`, `jpeg_free_large`, `jpeg_mem_available`, `jpeg_open_backing_store`, `jpeg_mem_init` and `jpeg_mem_term`, with sizes 8, 8, 8, 8, 8, 32, 8 and 4 bytes. The 6b unit `jmemnobs.c` defines the same eight functions with the same behaviour (malloc/free, no backing store) and the same sizes, so it is vendored as a stand-in so that the library links. Its ledger rows are left as they are, with a note.

## DH2 changes and host-build configuration

1. `jconfig.h` (HOST-PORT: written by hand, because the upstream `jconfig.cfg` is processed by `configure`, which this build does not run). `JPEG_LIB_VERSION` is 62 (DH2: version 6b, as the binary's entry points show).

No other source changes.

## Build

`CMakeLists.txt` builds `dh2_vendor_jpeg` from the 42 `.c` units (C, `-w`).
