# Musepack libmpcdec, r475 (upstream source, DH2 build configuration)

Third-party upstream code, not Track B reconstruction.

## Provenance

- Archive: `musepack_src_r475.tar.gz`, the Musepack source release r475 (`https://files.musepack.net/source/musepack_src_r475.tar.gz`, linked from `http://www.musepack.net/index.php?pg=src`).
- SHA-256 of the archive: `a4b1742f997f83e1056142d556a8c20845ba764b70365ff9ccf2e3f81c427b2b`.
- Downloaded 2026-10-13 into a scratch folder, extracted there, and only the files below were copied. The license is in the file headers of the copied files.

## Version evidence

- The binary's SV8 decoder symbols are in this release: `mpc_demux_init`, `mpc_demux_decode`, `mpc_demux_seek_sample`, `mpc_demux_chap_find`, `mpc_decoder_read_bitstream_sv8`, `mpc_bits_enum_dec`, `mpc_streaminfo_get_length_samples`, `mpc_get_encoder_string`, `mpc_set_replay_level` and the `mpc_table_*` / `mpc_can_*` tables.
- The DWARF units are `mpc_bits_reader.c`, `mpc_decoder.c`, `mpc_demux.c`, `huffman.c`, `requant.c`, `streaminfo.c` and `synth_filter.c`. These are the seven r475 `libmpcdec` units other than `mpc_reader.c`, which the DH2 binary replaces with Gameloft's reader (`vox-audio/src/mpc_reader.cpp`; the binary's `mpc_read`, `mpc_seek`, `mpc_tell` and `mpc_getsize` are C++-mangled).
- The musepack.net libmpcdec releases 1.2.1, 1.2.2, 1.2.3, 1.2.4, 1.2.5 and 1.2.6 were checked and rejected: their `src/` has no `mpc_demux.c`, `mpc_bits_reader.c` or `huffman.c` (SV7 only).

## Files

- `libmpcdec/`: `mpc_bits_reader.c`, `mpc_decoder.c`, `mpc_demux.c`, `huffman.c`, `requant.c`, `streaminfo.c`, `synth_filter.c`, and the headers `decoder.h`, `huffman.h`, `internal.h`, `mpc_bits_reader.h`, `mpcdec_math.h`, `requant.h`.
- `include/mpc/`: `datatypes.h`, `minimax.h`, `mpcdec.h`, `mpcmath.h`, `mpc_types.h`, `reader.h`, `streaminfo.h`.

Not vendored: `mpc_reader.c` (replaced by the Gameloft reader), and the encoder, psy, tools and win32 folders of the release.

## DH2 changes

None to the source. The units compile as C (`-w`, `PRIVATE` include directories).

Host-build fixes: one. `libmpcdec/requant.h` declares `Res_bit`, `__Cc` and `__Dc` with `extern`. Without it
each is a tentative definition in C, so every translation unit that includes the header (`mpc_decoder.c` as
well as `requant.c`) emits its own copy and the link reports `multiple definition`. This was not merely a link
error: the test links use `--allow-multiple-definition` and keep the *first* definition, which was
`mpc_decoder.c.obj`'s zero-filled copy, so requantisation read empty tables. The `extern` leaves `requant.c`'s
`.rodata` tables as the only definitions, which is what the binary has (0x911544, 0x911558, 0x9115a4).

## Build

`CMakeLists.txt` builds `dh2_vendor_mpc` from the seven `.c` units.
