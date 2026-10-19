; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c4c90, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_18bitmap_font_entityEEENS_20stringi_hash_functorIS1_EEE5entry5clearEv
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry::clear()
; decoder-mode: arm
007c4c90  10 40 2d e9                                      push {r4, lr}
007c4c94  d8 30 d0 e1                                      ldrsb r3, [r0, #8]
007c4c98  00 40 a0 e1                                      mov r4, r0
007c4c9c  01 00 73 e3                                      cmn r3, #1
007c4ca0  08 00 00 0a                                      beq #0x7c4cc8
007c4ca4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
007c4ca8  00 00 50 e3                                      cmp r0, #0
007c4cac  00 00 00 0a                                      beq #0x7c4cb4
007c4cb0  62 55 fe eb                                      bl #0x75a240
007c4cb4  00 30 a0 e3                                      mov r3, #0
007c4cb8  04 30 84 e5                                      str r3, [r4, #4]
007c4cbc  01 30 e0 e3                                      mvn r3, #1
007c4cc0  00 30 84 e5                                      str r3, [r4]
007c4cc4  10 80 bd e8                                      pop {r4, pc}
007c4cc8  14 00 90 e5                                      ldr r0, [r0, #0x14]
007c4ccc  10 10 94 e5                                      ldr r1, [r4, #0x10]
007c4cd0  98 37 fe eb                                      bl #0x752b38
007c4cd4  f2 ff ff ea                                      b #0x7c4ca4

; FUNCTION 0x007c5c10, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_18bitmap_font_entityEEENS_20stringi_hash_functorIS1_EEE5entryC1ERKS1_RKS4_ii
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry::entry(gameswf::tu_stringi const&, gameswf::smart_ptr<gameswf::bitmap_font_entity> const&, int, int)
; decoder-mode: arm
007c5c10  70 40 2d e9                                      push {r4, r5, r6, lr}
007c5c14  00 30 80 e5                                      str r3, [r0]
007c5c18  10 30 9d e5                                      ldr r3, [sp, #0x10]
007c5c1c  00 40 a0 e1                                      mov r4, r0
007c5c20  02 50 a0 e1                                      mov r5, r2
007c5c24  04 30 80 e5                                      str r3, [r0, #4]
007c5c28  08 00 80 e2                                      add r0, r0, #8
007c5c2c  fe 34 fe eb                                      bl #0x75302c
007c5c30  00 00 95 e5                                      ldr r0, [r5]
007c5c34  00 00 50 e3                                      cmp r0, #0
007c5c38  1c 00 84 e5                                      str r0, [r4, #0x1c]
007c5c3c  00 00 00 0a                                      beq #0x7c5c44
007c5c40  07 50 fe eb                                      bl #0x759c64
007c5c44  04 00 a0 e1                                      mov r0, r4
007c5c48  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007c5c4c, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_18bitmap_font_entityEEENS_20stringi_hash_functorIS1_EEE5entryC1ERKS8_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry::entry(gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry const&)
; decoder-mode: arm
007c5c4c  70 40 2d e9                                      push {r4, r5, r6, lr}
007c5c50  00 30 91 e5                                      ldr r3, [r1]
007c5c54  00 40 a0 e1                                      mov r4, r0
007c5c58  01 50 a0 e1                                      mov r5, r1
007c5c5c  00 30 84 e5                                      str r3, [r4]
007c5c60  04 30 91 e5                                      ldr r3, [r1, #4]
007c5c64  08 00 80 e2                                      add r0, r0, #8
007c5c68  08 10 81 e2                                      add r1, r1, #8
007c5c6c  04 30 84 e5                                      str r3, [r4, #4]
007c5c70  ed 34 fe eb                                      bl #0x75302c
007c5c74  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
007c5c78  00 00 50 e3                                      cmp r0, #0
007c5c7c  1c 00 84 e5                                      str r0, [r4, #0x1c]
007c5c80  00 00 00 0a                                      beq #0x7c5c88
007c5c84  f6 4f fe eb                                      bl #0x759c64
007c5c88  04 00 a0 e1                                      mov r0, r4
007c5c8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
