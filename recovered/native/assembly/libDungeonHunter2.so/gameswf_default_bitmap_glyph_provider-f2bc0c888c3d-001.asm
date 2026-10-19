; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a9634, declared_size=48, range_size=48, mode=arm
; class-group: gameswf::default_bitmap_glyph_provider
; alias: _ZN7gameswf29default_bitmap_glyph_provider20get_font_entity_implERKNS_9tu_stringE
; demangled: gameswf::default_bitmap_glyph_provider::get_font_entity_impl(gameswf::tu_string const&)
; decoder-mode: arm
007a9634  70 40 2d e9                                      push {r4, r5, r6, lr}
007a9638  00 60 a0 e1                                      mov r6, r0
007a963c  01 50 a0 e1                                      mov r5, r1
007a9640  64 00 a0 e3                                      mov r0, #0x64
007a9644  00 10 a0 e3                                      mov r1, #0
007a9648  56 a5 fe eb                                      bl #0x752ba8
007a964c  06 10 a0 e1                                      mov r1, r6
007a9650  00 40 a0 e1                                      mov r4, r0
007a9654  05 20 a0 e1                                      mov r2, r5
007a9658  99 74 00 eb                                      bl #0x7c68c4
007a965c  04 00 a0 e1                                      mov r0, r4
007a9660  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007a9664, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::default_bitmap_glyph_provider
; alias: _ZN7gameswf29default_bitmap_glyph_providerD1Ev
; demangled: gameswf::default_bitmap_glyph_provider::~default_bitmap_glyph_provider()
; decoder-mode: arm
007a9664  24 30 9f e5                                      ldr r3, [pc, #0x24]
007a9668  24 20 9f e5                                      ldr r2, [pc, #0x24]
007a966c  10 40 2d e9                                      push {r4, lr}
007a9670  03 30 8f e0                                      add r3, pc, r3
007a9674  02 20 93 e7                                      ldr r2, [r3, r2]
007a9678  00 40 a0 e1                                      mov r4, r0
007a967c  08 20 82 e2                                      add r2, r2, #8
007a9680  00 20 80 e5                                      str r2, [r0]
007a9684  ea 6d 00 eb                                      bl #0x7c4e34
007a9688  04 00 a0 e1                                      mov r0, r4
007a968c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a9690  20 b4 1e 00 74 25 00 00                          .byte 0x20, 0xb4, 0x1e, 0x00, 0x74, 0x25, 0x00, 0x00

; FUNCTION 0x007a99f8, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::default_bitmap_glyph_provider
; alias: _ZN7gameswf29default_bitmap_glyph_providerD0Ev
; demangled: gameswf::default_bitmap_glyph_provider::~default_bitmap_glyph_provider()
; decoder-mode: arm
007a99f8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007a99fc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007a9a00  10 40 2d e9                                      push {r4, lr}
007a9a04  03 30 8f e0                                      add r3, pc, r3
007a9a08  02 20 93 e7                                      ldr r2, [r3, r2]
007a9a0c  00 40 a0 e1                                      mov r4, r0
007a9a10  08 20 82 e2                                      add r2, r2, #8
007a9a14  00 20 80 e5                                      str r2, [r0]
007a9a18  05 6d 00 eb                                      bl #0x7c4e34
007a9a1c  04 00 a0 e1                                      mov r0, r4
007a9a20  22 92 ed eb                                      bl #0x30e2b0
007a9a24  04 00 a0 e1                                      mov r0, r4
007a9a28  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007a9a2c  8c b0 1e 00 74 25 00 00                          .byte 0x8c, 0xb0, 0x1e, 0x00, 0x74, 0x25, 0x00, 0x00
