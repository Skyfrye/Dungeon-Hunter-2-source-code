# tinyxml-and-c-libs notes

## Vendored upstream (2026-10-13)

Upstream sources are in `upstream/`, one folder per library. Each folder's README.md gives the URL, the SHA-256 of the
archive, the version evidence and the DH2 changes (`// DH2:`; host-build fixes `HOST-PORT:`).

- `tinyxml-2.5.3/`: tinyxml.cpp, tinyxmlerror.cpp, tinyxmlparser.cpp, tinyxml.h. This is the one definition of the TiXml
  classes. `tixml_dh.hpp` keeps only the game's `TiXmlPrinterDH`; the `tb/*.hpp` headers forward to tinyxml.h.
- `freetype-2.3.7/`: the 24 single-object units the binary has, with their include closure, and `include/`. FreeType's
  own zlib copy is not vendored (the DH2 build uses the system zlib, `FT_CONFIG_OPTION_SYSTEM_ZLIB`).
- `libjpeg-6b/`: the 41 units the binary has, `jmemnobs.c` as the link stand-in for the Gameloft memory unit `jmemirr.c`,
  and a hand-written `jconfig.h` (HOST-PORT).
- `libtess-glu-9.0.0/`: the nine SGI libtess units, compiled as C++ because the binary's symbols are C++-mangled.

Ledger: `ledger.d/vendor-2.csv` (1332 rows, merged by `merge_ledger.py`). 1225 rows name the vendored file in
`source_file`: TinyXML 161, FreeType 784, libjpeg 229, libtess 51. The other rows keep their status with a note when
the body size is outside the gate (99 rows in total, including the 8 jmemirr stand-ins) or when several C statics share
the name (for example `emit_bits` in jchuff.c and jcphuff.c). zlib and libpng rows are not covered by this step and are
unchanged.

The "Status", "Libraries identified" and "Recommended vendoring" sections below predate this step. Where they say that
TinyXML, FreeType, libjpeg or libtess is not vendored, they are superseded.

## Status (this session)

Ledger: all 1846 queued functions have a row. 7 reconstructed, 1755 upstream, 8 partial, 76 skipped.

The 53 that were unledgered are now resolved:

- Upstream, matched by name against sources vendored in this repo (not byte-diffed):
  - FreeType 2.3.7 (`port/engine-ui/vendor/freetype-2.3.7-hud`): `ttinterp.c` (Dual_Project, Project,
    Project_x, Project_y, Compute_Funcs, Compute_Point_Displacement, Normalize, SkipCode), `ftraster.c` (Sort),
    `ftgzip.c` (ft_gzip_file_fill_output), `bdflib.c` (hash_bucket, hash_insert, hash_free). 13 functions.
  - libjpeg (`port/irrlicht-prototype/upstream/.../jpeglib`, JPEG_LIB_VERSION 80): jquant2.c (update_box),
    jcmaster.c (pass_startup), jmemmgr.c (self_destruct), jccolor.c (null_method). 4 functions.
  - stb_vorbis (start_page, start_packet, start_decoder, start_page_no_capturepattern): name match only. The
    library is not vendored in this repo, so the bodies were not compared. vox-audio owns stb_vorbis and should
    confirm.
- Reconstructed (`src/ssencdec.cpp`, `src/nvthread.cpp`, tests in `tests/`): SSEncDec key table (both copies),
  SSEncDec ByteArray2Blob (non-LC), NVThreadInit, NVThreadSleep.
- Partial: SSEncDec decode and string wrappers, and the LC data copies. The logic is ported, but they call
  LC_API_STRLEN, LC_API_STRLEN_0 or LC_API_MEMSET. Those have no definition in this repo, so they were taken as
  libc and not verified. XP_API_STRLEN and XP_API_MEMSET are libc, confirmed in net-session-online's xp_api.cpp.
- Skipped, not rebuilt:
  - VZPurchase_* (10): JNI forwarders that need the JNIEnv table and the mMethodVZ* IDs.
  - NVThreadSpawnJNIThread, NVThreadGetCurrentJNIEnv, NVThreadSpawnProc: need pthread and JNI attach/detach.
  - Java_..._nativeInit: a thunk to ADevice::Init, and ADevice is not in the port.
  - II_Item_sortby* (3): need the ItemInventory::Item layout (+84, +105) and ItemInstance::operator<.
  - OutputDebugStringA: a 4-byte branch to a Win32 import.

Ledger generation: map_upstream.py (in this folder) reads queue.csv and writes
`upstream` rows by name pattern. Rows are name-matched, and a spot check of about
10 bodies per library found no obvious local modifications. They are not
byte-diffed against upstream. The 22 rows above that were matched by hand use the same
convention.

## Libraries identified

| library | version evidence | functions queued | status |
| --- | --- | --- | --- |
| TinyXML | std::string-based API with TiXmlAttributeSet sentinel list and TIXML_ERROR codes, consistent with TinyXML 2.5.x. No version string in strings.csv; exact patch level not confirmed. | 219 (TiXml*) | 216 upstream/skipped, TiXmlPrinterDH::VisitEnter partial |
| zlib | strings: " inflate 1.2.3 Copyright 1995-2005 Mark Adler", " deflate 1.2.3 ..." | 71 | upstream |
| libpng | strings: "libpng version 1.2.32 - September 18, 2008" | 311 | upstream |
| libjpeg (IJG) | jpeg_* imports, CImageLoaderJPG; no version string found; 6b-era API | 155+105 | upstream (name pattern) |
| FreeType | FT_* exports; source paths from glitch freetype build; vendored copy is 2.3.7 | 668+178 | upstream (name pattern) |
| GLU tessellator (SGI libtess) | __gl_* / glu* symbol names, plus static helpers in the 0x7aed38-0x7e15c4 block | 97 | upstream |
| libpng, zlib, libjpeg, FreeType | queued under owner `lib-image-zip-font` | about 1300 | not started |
| misc (VZPurchase, NVThread, SSEncDec, stb_vorbis, Java glue) | game code | about 50 | not started |

No upstream TinyXML source is vendored in the repository, so "upstream" in
the ledger means behaviour matches TinyXML 2.5.x as read from the pseudocode, not
a byte-level diff against the release.

## Recommended vendoring

- TinyXML: vendor the upstream 2.5.x sources and keep only TiXmlPrinterDH
  (`include/tinyxml-and-c-libs/tixml_dh.hpp`, `src/tixml_dh.cpp`) as a game overlay.
- zlib, libpng, libjpeg, FreeType, GLU: vendor the upstream releases. Their
  functions should be ledgered `upstream` and not rebuilt. Versions still need to
  be confirmed from strings.

## Layouts inferred

The original TiXmlPrinter is 32-bit ARM-era: vptr +0x00, depth +0x04, buffer
(std::string) +0x0c, indent string at +0x34..+0x38. The header uses std::string
members instead, so these offsets are documentation only and are not used for
pointer arithmetic.

TiXmlAttribute: value at +0x40 (returned by Value()), name at +0x24..+0x28,
next/prev sentinel links at +0x44/+0x48. TiXmlAttributeSet is a circular list
whose sentinel is the set itself (+0x44 = last, +0x48 = first).

## Open questions

- TiXmlPrinterDH::VisitEnter: the pseudocode ends in a non-returning call, so
  attribute printing and the return value are not confirmed.
- TiXmlAttribute::SetIntValue and SetDoubleValue, TiXmlAttributeSet::Find(std::string),
  and TiXmlElement::Attribute(std::string): the pseudocode lost the return or the
  string assignment, so these are not ledgered.
- The rest of the TiXml family (Parse*, StreamIn*, Print, TiXmlDocument, TiXmlHandle,
  TiXmlNode accessors, EncodeString, ConvertUTF32ToUTF8, GetEntity, GetChar,
  ReadName, ReadText, StreamTo, StreamWhiteSpace, TiXmlHandle::Child*, ...) is
  still queued.

## Tests

tests/tixml_dh_test.cpp checks TiXmlPrinterDH::VisitEnter indentation and element name output.
