; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078a948, declared_size=72, range_size=72, mode=arm
; class-group: void gameswf::array<gameswf::text_glyph_record>
; alias: _ZN7gameswf5arrayINS_17text_glyph_recordEE9push_backIS1_EEvRKT_
; demangled: void gameswf::array<gameswf::text_glyph_record>::push_back<gameswf::text_glyph_record>(gameswf::text_glyph_record const&)
; decoder-mode: arm
0078a948  70 40 2d e9                                      push {r4, r5, r6, lr}
0078a94c  04 30 90 e5                                      ldr r3, [r0, #4]
0078a950  08 20 90 e5                                      ldr r2, [r0, #8]
0078a954  00 40 a0 e1                                      mov r4, r0
0078a958  01 50 83 e2                                      add r5, r3, #1
0078a95c  02 00 55 e1                                      cmp r5, r2
0078a960  01 60 a0 e1                                      mov r6, r1
0078a964  02 00 00 da                                      ble #0x78a974
0078a968  c5 10 85 e0                                      add r1, r5, r5, asr #1
0078a96c  20 ff ff eb                                      bl #0x78a5f4
0078a970  04 30 94 e5                                      ldr r3, [r4, #4]
0078a974  00 20 94 e5                                      ldr r2, [r4]
0078a978  30 00 a0 e3                                      mov r0, #0x30
0078a97c  06 10 a0 e1                                      mov r1, r6
0078a980  90 23 20 e0                                      mla r0, r0, r3, r2
0078a984  cb ff ff eb                                      bl #0x78a8b8
0078a988  04 50 84 e5                                      str r5, [r4, #4]
0078a98c  70 80 bd e8                                      pop {r4, r5, r6, pc}
