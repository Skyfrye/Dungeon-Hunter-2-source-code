# stb_vorbis 0.99996 (Ogg Vorbis decoder, public domain, upstream source, DH2 build configuration)

Third-party upstream code by Sean Barrett, not Track B reconstruction. The file is public domain (see its header).

## Provenance

- Source: `stb_vorbis.c` at commit `e2caccb811d70af0dc359be5522e6b0d3b503e46` ("initial checkin", 2014-05-25) of `https://github.com/nothings/stb`, fetched as `https://raw.githubusercontent.com/nothings/stb/e2caccb811d70af0dc359be5522e6b0d3b503e46/stb_vorbis.c`.
- SHA-256 of the upstream file (before the DH2 changes): `8457ee27a5f9adb442951eb168cf2b2b9d1ff9175891323139d7266d5f9db72b`.
- Downloaded 2026-10-13 into a scratch folder. The DH2 changes below are applied to the copy in this folder.

## Version choice

The brief asks for the oldest revision whose function set matches the binary's `stb_vorbis_*` symbols. `e2caccb811` is the first commit of `stb_vorbis.c` in the stb history. Its public function set matches the binary's, except for these names, which are DH2 code and are absent from every revision checked (about 30 commits from 2014 to 2016, including the initial checkin):

- `get_stb_vorbis_struct_size`, `stb_vorbis_copy`, `stb_vorbis_get_blocksize_1`, `stb_vorbis_get_buffer`, `stb_vorbis_get_channel`, `stb_vorbis_get_previous_window`, `stb_vorbis_get_stream_offset`, `stb_vorbis_set_stream`.

The binary has no pushdata entry points (`stb_vorbis_open_pushdata`, `stb_vorbis_decode_frame_pushdata`, `stb_vorbis_flush_pushdata`). Upstream guards them with `STB_VORBIS_NO_PUSHDATA_API`, which the DH2 build defines. Other names in the file that the binary lacks are pushdata helpers or static helpers that may have been inlined.

The seek helpers `vorbis_seek_base` and `vorbis_seek_frame_from_page` are in this revision and in the binary, but not in the later revisions from 2015-08-31 on (`ebb54fd7a3` and later), so the later revisions match less well.

## Units

One file: `stb_vorbis.c`. The DWARF unit is `stb_vorbis.cpp`, so the binary compiles it as C++ (its symbols are C++-mangled, and `vox-audio/include/vox-audio/vox/stb_vorbis_api.hpp` declares them without `extern "C"`).

## DH2 changes (marked `// DH2:`)

1. `extern "C"` blocks are off (`#if 0`): the binary's entry points have C++ linkage.
2. `STB_VORBIS_NO_PUSHDATA_API` is defined, because the binary has no pushdata entry points.
3. The stream is a `vox::StreamCursorInterface` instead of a `FILE*`: the `FILE *f` member, the `stb_vorbis_open_file` and `stb_vorbis_open_file_section` signatures, and the `fclose` in `vorbis_deinit` (the vox stream belongs to its cursor). The four stdio calls the code makes (`fgetc`, `fread`, `ftell`, `fseek`) resolve to the vox overloads defined in `vox-audio/src/stdio_shim.cpp`, which are declared at the top of the file.
4. `stb_vorbis_open_filename` and `stb_vorbis_decode_filename` are `#if 0`: they use `fopen`, and the DH2 build reads vox streams only. Their prototypes are unchanged. The binary's `stb_vorbis_open_filename` is 20 bytes, so its body is not reproduced here.

## Host-build fixes (marked `// HOST-PORT:`)

`point_compare` and `dct_iv_slow` are `static`. Both are internal to this file, but as globals their names
collided with the reconstructed originals of the same name in `core-platform/src/vorbis_util.cpp`
(0x8764f8 and 0x8784f4, which the tree keeps as the single definitions). Internal linkage keeps the vendored
bodies working for stb_vorbis's own callers with no symbol exported.

## Build

`CMakeLists.txt` builds `dh2_vendor_stb_vorbis` from this file, compiled as C++ (`LANGUAGE CXX`), with `-w`.
