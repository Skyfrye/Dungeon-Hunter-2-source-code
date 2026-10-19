; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076a010, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_8as_valueENS_20stringi_hash_functorIS1_EEE5entryC1ERKS1_RKS2_ii
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry::entry(gameswf::tu_stringi const&, gameswf::as_value const&, int, int)
; decoder-mode: arm
0076a010  70 40 2d e9                                      push {r4, r5, r6, lr}
0076a014  00 30 80 e5                                      str r3, [r0]
0076a018  10 30 9d e5                                      ldr r3, [sp, #0x10]
0076a01c  00 40 a0 e1                                      mov r4, r0
0076a020  02 50 a0 e1                                      mov r5, r2
0076a024  04 30 80 e5                                      str r3, [r0, #4]
0076a028  08 00 80 e2                                      add r0, r0, #8
0076a02c  fe a3 ff eb                                      bl #0x75302c
0076a030  00 30 a0 e3                                      mov r3, #0
0076a034  1c 00 84 e2                                      add r0, r4, #0x1c
0076a038  1d 30 c4 e5                                      strb r3, [r4, #0x1d]
0076a03c  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
0076a040  05 10 a0 e1                                      mov r1, r5
0076a044  bc b5 00 eb                                      bl #0x79773c
0076a048  04 00 a0 e1                                      mov r0, r4
0076a04c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0076a050, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry
; alias: _ZN7gameswf4hashINS_10tu_stringiENS_8as_valueENS_20stringi_hash_functorIS1_EEE5entryC1ERKS6_
; demangled: gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry::entry(gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::entry const&)
; decoder-mode: arm
0076a050  70 40 2d e9                                      push {r4, r5, r6, lr}
0076a054  00 30 91 e5                                      ldr r3, [r1]
0076a058  01 50 a0 e1                                      mov r5, r1
0076a05c  00 40 a0 e1                                      mov r4, r0
0076a060  00 30 80 e5                                      str r3, [r0]
0076a064  04 30 95 e5                                      ldr r3, [r5, #4]
0076a068  08 10 81 e2                                      add r1, r1, #8
0076a06c  08 00 80 e2                                      add r0, r0, #8
0076a070  04 30 84 e5                                      str r3, [r4, #4]
0076a074  ec a3 ff eb                                      bl #0x75302c
0076a078  00 30 a0 e3                                      mov r3, #0
0076a07c  1c 00 84 e2                                      add r0, r4, #0x1c
0076a080  1d 30 c4 e5                                      strb r3, [r4, #0x1d]
0076a084  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
0076a088  1c 10 85 e2                                      add r1, r5, #0x1c
0076a08c  aa b5 00 eb                                      bl #0x79773c
0076a090  04 00 a0 e1                                      mov r0, r4
0076a094  70 80 bd e8                                      pop {r4, r5, r6, pc}
