; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076a098, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9as_object8as_watchENS_20stringi_hash_functorIS1_EEE5entryC1ERKS1_RKS3_ii
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry::entry(gameswf::tu_stringi const&, gameswf::as_object::as_watch const&, int, int)
; decoder-mode: arm
0076a098  70 40 2d e9                                      push {r4, r5, r6, lr}
0076a09c  00 30 80 e5                                      str r3, [r0]
0076a0a0  10 30 9d e5                                      ldr r3, [sp, #0x10]
0076a0a4  00 40 a0 e1                                      mov r4, r0
0076a0a8  02 50 a0 e1                                      mov r5, r2
0076a0ac  04 30 80 e5                                      str r3, [r0, #4]
0076a0b0  08 00 80 e2                                      add r0, r0, #8
0076a0b4  dc a3 ff eb                                      bl #0x75302c
0076a0b8  05 10 a0 e1                                      mov r1, r5
0076a0bc  04 20 91 e4                                      ldr r2, [r1], #4
0076a0c0  00 30 a0 e3                                      mov r3, #0
0076a0c4  20 00 84 e2                                      add r0, r4, #0x20
0076a0c8  21 30 c4 e5                                      strb r3, [r4, #0x21]
0076a0cc  1c 20 84 e5                                      str r2, [r4, #0x1c]
0076a0d0  20 30 c4 e5                                      strb r3, [r4, #0x20]
0076a0d4  98 b5 00 eb                                      bl #0x79773c
0076a0d8  04 00 a0 e1                                      mov r0, r4
0076a0dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0076a0e0, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_9as_object8as_watchENS_20stringi_hash_functorIS1_EEE5entryC1ERKS7_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry::entry(gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry const&)
; decoder-mode: arm
0076a0e0  70 40 2d e9                                      push {r4, r5, r6, lr}
0076a0e4  00 30 91 e5                                      ldr r3, [r1]
0076a0e8  01 50 a0 e1                                      mov r5, r1
0076a0ec  00 40 a0 e1                                      mov r4, r0
0076a0f0  00 30 80 e5                                      str r3, [r0]
0076a0f4  04 30 95 e5                                      ldr r3, [r5, #4]
0076a0f8  08 10 81 e2                                      add r1, r1, #8
0076a0fc  08 00 80 e2                                      add r0, r0, #8
0076a100  04 30 84 e5                                      str r3, [r4, #4]
0076a104  c8 a3 ff eb                                      bl #0x75302c
0076a108  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
0076a10c  00 30 a0 e3                                      mov r3, #0
0076a110  20 00 84 e2                                      add r0, r4, #0x20
0076a114  21 30 c4 e5                                      strb r3, [r4, #0x21]
0076a118  1c 20 84 e5                                      str r2, [r4, #0x1c]
0076a11c  20 30 c4 e5                                      strb r3, [r4, #0x20]
0076a120  20 10 85 e2                                      add r1, r5, #0x20
0076a124  84 b5 00 eb                                      bl #0x79773c
0076a128  04 00 a0 e1                                      mov r0, r4
0076a12c  70 80 bd e8                                      pop {r4, r5, r6, pc}
