// 0x876298 _Z26get_stb_vorbis_struct_sizev
// Returns the size of the Gameloft stb_vorbis state struct: 0x5a8 bytes (MOVW R0, #0x5A8).
// The library itself is not retyped (see NOTES.md, Decisions); this is only the size query.
int get_stb_vorbis_struct_size() { return 0x5a8; }
