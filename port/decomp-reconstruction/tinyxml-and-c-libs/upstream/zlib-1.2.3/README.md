# zlib 1.2.3 (upstream source, DH2 build configuration)

Third-party upstream code, not Track B reconstruction.

## Provenance

- Archive: `zlib-1.2.3.tar.gz`, from `https://zlib.net/fossils/zlib-1.2.3.tar.gz`.
- SHA-256 of the archive: `1795c7d067a43174113fdf03447532f373e1c6c57c08d61d9e4e9be5e244b05e`.
- Downloaded 2026-10-16 into a scratch folder, extracted there, and only the files below were copied.
- License: the zlib license in the header of `zlib.h` and in `README` (copied unchanged).

## Version evidence

libDungeonHunter2.so carries the strings `1.2.3` (zlibVersion) and ` inflate 1.2.3 Copyright 1995-2005 Mark Adler `, and exports `zlibVersion` and `zlibCompileFlags`.

## Files

`adler32.c compress.c crc32.c deflate.c gzio.c infback.c inffast.c inflate.c inftrees.c trees.c uncompr.c zutil.c` and their headers (`zlib.h zconf.h zutil.h deflate.h inffast.h inffixed.h inflate.h inftrees.h crc32.h trees.h`), `README`. Not copied: examples, contrib, projects, minigzip/example tests.

## DH2 changes

None to the sources. `CMakeLists.txt` builds them as `dh2_vendor_zlib` (C, `-w`, `Z_HAVE_UNISTD_H` off the Windows host).
