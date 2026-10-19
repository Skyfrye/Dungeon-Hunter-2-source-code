; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00767418, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_13character_defEEENS_20stringi_hash_functorIS1_EEE5entryC1ERKS1_RKS4_ii
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry::entry(gameswf::tu_stringi const&, gameswf::smart_ptr<gameswf::character_def> const&, int, int)
; decoder-mode: arm
00767418  70 40 2d e9                                      push {r4, r5, r6, lr}
0076741c  00 30 80 e5                                      str r3, [r0]
00767420  10 30 9d e5                                      ldr r3, [sp, #0x10]
00767424  00 40 a0 e1                                      mov r4, r0
00767428  02 50 a0 e1                                      mov r5, r2
0076742c  04 30 80 e5                                      str r3, [r0, #4]
00767430  08 00 80 e2                                      add r0, r0, #8
00767434  fc ae ff eb                                      bl #0x75302c
00767438  00 00 95 e5                                      ldr r0, [r5]
0076743c  00 00 50 e3                                      cmp r0, #0
00767440  1c 00 84 e5                                      str r0, [r4, #0x1c]
00767444  00 00 00 0a                                      beq #0x76744c
00767448  05 ca ff eb                                      bl #0x759c64
0076744c  04 00 a0 e1                                      mov r0, r4
00767450  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00767454, declared_size=68, range_size=68, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9smart_ptrINS_13character_defEEENS_20stringi_hash_functorIS1_EEE5entryC1ERKS8_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry::entry(gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry const&)
; decoder-mode: arm
00767454  70 40 2d e9                                      push {r4, r5, r6, lr}
00767458  00 30 91 e5                                      ldr r3, [r1]
0076745c  00 40 a0 e1                                      mov r4, r0
00767460  01 50 a0 e1                                      mov r5, r1
00767464  00 30 84 e5                                      str r3, [r4]
00767468  04 30 91 e5                                      ldr r3, [r1, #4]
0076746c  08 00 80 e2                                      add r0, r0, #8
00767470  08 10 81 e2                                      add r1, r1, #8
00767474  04 30 84 e5                                      str r3, [r4, #4]
00767478  eb ae ff eb                                      bl #0x75302c
0076747c  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00767480  00 00 50 e3                                      cmp r0, #0
00767484  1c 00 84 e5                                      str r0, [r4, #0x1c]
00767488  00 00 00 0a                                      beq #0x767490
0076748c  f4 c9 ff eb                                      bl #0x759c64
00767490  04 00 a0 e1                                      mov r0, r4
00767494  70 80 bd e8                                      pop {r4, r5, r6, pc}
