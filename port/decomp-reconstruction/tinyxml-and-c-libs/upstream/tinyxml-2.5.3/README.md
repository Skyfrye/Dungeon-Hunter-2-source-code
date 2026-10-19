# TinyXML 2.5.3 (upstream source, DH2 build configuration)

Third-party upstream code, not Track B reconstruction.

## Provenance

- Archive: `tinyxml_2_5_3.zip`, from SourceForge (`https://downloads.sourceforge.net/project/tinyxml/tinyxml/2.5.3/tinyxml_2_5_3.zip`).
- SHA-256 of the archive: `143590aa5930c1326315fb9fe3c0aab316a43751a44582dedd69331004b2c6a1`.
- Downloaded 2026-10-13 into a scratch folder, extracted there, and only the files below were copied.
- License: the zlib-style license in `readme.txt` (copied unchanged).

## Version evidence

- The binary's TiXml symbols (258 mangled names in `libDungeonHunter2.so`) use only identifiers that exist in 2.5.3, except the game classes (`Level`, `ObjectManager`, `PropertyMap`, `rnd`) and `TiXmlPrinterDH`, which is Gameloft code (`tinyxml-and-c-libs/src/tixml_dh.cpp`).
- `TiXmlElement::SetAttribute(const std::string&, const std::string&)` and the other `std::string` signatures mean `TIXML_USE_STL`. The DWARF units list has `tinyxml.cpp`, `tinyxmlerror.cpp` and `tinyxmlparser.cpp` but no `tinystr.cpp`, whose body is under `#ifndef TIXML_USE_STL`.
- `TiXmlBase::ConvertUTF32ToUTF8`, `TiXmlPrinter` and the `TiXmlVisitor` vtable match the 2.5.3 declarations.

## Files

`tinyxml.cpp`, `tinyxmlerror.cpp`, `tinyxmlparser.cpp`, `tinyxml.h`, `tinystr.h` (header only in the STL build), `readme.txt`. `tinystr.cpp` is not vendored (no body under `TIXML_USE_STL`).

## DH2 changes (marked `// DH2:` in `tinyxml.h`)

1. `TiXmlPrinter()` sets `indent` to a tab (`"\t"`). Upstream sets four spaces. The binary's `TiXmlPrinter::TiXmlPrinter` (0x485aa0) sets a tab.
2. The `TiXmlPrinter` state members (`depth`, `simpleTextPrint`, `buffer`, `indent`, `lineBreak`) are `public` (upstream `private`), so the game's `TiXmlPrinterDH` (in `tinyxml-and-c-libs/include/tinyxml-and-c-libs/tixml_dh.hpp`) and its tests can use them.

Build configuration (in `CMakeLists.txt`, not in the source): `TIXML_USE_STL` is defined for every target.

## Ledger

`tinyxml-and-c-libs/ledger.d/vendor-2.csv` names the file that defines each TiXml row (`source_file`). Rows whose body size is outside the gate keep their status with a note.
