# FreeType 2.3.7 (upstream source, DH2 build configuration)

Third-party upstream code, not Track B reconstruction.

## Provenance

- Archive: `freetype-2.3.7.tar.bz2`. The URL in the brief, `download.savannah.gnu.org/releases/freetype/freetype-2.3.7.tar.bz2`, redirects to a mirror that returns 404 for this release. The same file is served by the official host at `https://download.savannah.gnu.org/releases/freetype/freetype-old/freetype-2.3.7.tar.bz2` (the old-releases directory), which is the URL used.
- SHA-256 of the archive: `4ecf879eb69fc323669981f02aebff1e3045de415303e86ee67f2080cb3ee888`.
- Downloaded 2026-10-13 into a scratch folder, extracted there, and only the files below were copied.
- License: `docs/FTL.TXT` (FreeType License), `docs/GPL.TXT` and `docs/LICENSE.TXT` (copied unchanged).

## Version evidence

- The binary's compile units (`build-source-filenames.json`) are the 2.3.7 single-object modules: `ftbase.c`, `ftbitmap.c`, `ftdebug.c`, `ftgzip.c`, `ftinit.c`, `ftlzw.c`, `ftsynth.c`, `ftsystem.c`, `autofit.c`, `bdf.c`, `cff.c`, `pcf.c`, `pfr.c`, `psaux.c`, `pshinter.c`, `psmodule.c`, `raster.c`, `sfnt.c`, `smooth.c`, `truetype.c`, `type1.c`, `type1cid.c`, `type42.c`, `winfnt.c`. Each one `#include`s the sources of its module, so the vendored tree has the closure of these units.
- The official 2.3.7 files match the Track A partial copy (`port/engine-ui/vendor/freetype-2.3.7-hud`) byte-for-byte after CR normalization (`ftobjs.c`, `ftbase.c`, `ttinterp.c`, `ftraster.c`, `freetype.h`), and `FREETYPE_MAJOR/MINOR/PATCH` are 2/3/7.
- The binary's `ft_gzip_file_fill_output` (8,476 bytes) and `FT_Stream_OpenGzip` exist, so `FT_CONFIG_OPTION_USE_ZLIB` is on. The DWARF list has the zlib units (`deflate.c`, `trees.c`, `inffast.c`, ...) as a separate library, so `FT_CONFIG_OPTION_SYSTEM_ZLIB` is on too.

## Files

- `include/`: all 82 headers of the tarball (`freetype/`, `ft2build.h`).
- `src/`: the 24 units above and their quoted-include closure (206 files in total, including `ftobjs.c`, `ttinterp.c`, `ftraster.c`, `pstables.h` and the module headers).
- `docs/`: `FTL.TXT`, `GPL.TXT`, `LICENSE.TXT`.

Not vendored: the FreeType copy of zlib in `src/gzip` (`adler32.c`, `inflate.c`, `inftrees.c`, `infblock.c`, `infcodes.c`, `infutil.c`, `zutil.c`, `zlib.h`, `zconf.h`, `zutil.h`, `inftrees.h`, `infblock.h`, `infcodes.h`, `infutil.h`, `inffixed.h`). With the system zlib option the DH2 build compiles none of these; `ftgzip.c` includes the zlib library's `<zlib.h>`, which the `dh2_vendor_zlib` target provides. The `ftmac.c` and `ftrfork.c` closure members are present but not compiled on Windows.

## DH2 changes (marked `// DH2:`)

1. `include/freetype/config/ftoption.h`: `FT_CONFIG_OPTION_SYSTEM_ZLIB` is defined (upstream leaves it commented out). The DH2 binary's gzip code calls the zlib that DH2 links, not FreeType's own copy.

## Build

`CMakeLists.txt` builds `dh2_vendor_freetype` from the 24 units with `FT2_BUILD_LIBRARY` and links `dh2_vendor_zlib` privately for the zlib headers.
