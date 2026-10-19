; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00799b8c, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::as_value* std::priv
; alias: _ZNSt4priv21__unguarded_partitionIPN7gameswf8as_valueES2_NS1_21standard_array_sorterEEET_S5_S5_T0_T1_
; demangled: gameswf::as_value* std::priv::__unguarded_partition<gameswf::as_value*, gameswf::as_value, gameswf::standard_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value, gameswf::standard_array_sorter)
; decoder-mode: arm
00799b8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00799b90  00 50 a0 e1                                      mov r5, r0
00799b94  01 40 a0 e1                                      mov r4, r1
00799b98  02 60 a0 e1                                      mov r6, r2
00799b9c  03 70 a0 e1                                      mov r7, r3
00799ba0  05 10 a0 e1                                      mov r1, r5
00799ba4  07 00 a0 e1                                      mov r0, r7
00799ba8  06 20 a0 e1                                      mov r2, r6
00799bac  cc fa ff eb                                      bl #0x7986e4
00799bb0  00 00 50 e3                                      cmp r0, #0
00799bb4  0c 50 85 12                                      addne r5, r5, #0xc
00799bb8  f8 ff ff 1a                                      bne #0x799ba0
00799bbc  0c 40 44 e2                                      sub r4, r4, #0xc
00799bc0  04 20 a0 e1                                      mov r2, r4
00799bc4  07 00 a0 e1                                      mov r0, r7
00799bc8  06 10 a0 e1                                      mov r1, r6
00799bcc  c4 fa ff eb                                      bl #0x7986e4
00799bd0  00 00 50 e3                                      cmp r0, #0
00799bd4  f8 ff ff 1a                                      bne #0x799bbc
00799bd8  04 00 55 e1                                      cmp r5, r4
00799bdc  04 00 00 2a                                      bhs #0x799bf4
00799be0  05 00 a0 e1                                      mov r0, r5
00799be4  04 10 a0 e1                                      mov r1, r4
00799be8  d2 ff ff eb                                      bl #0x799b38
00799bec  0c 50 85 e2                                      add r5, r5, #0xc
00799bf0  ea ff ff ea                                      b #0x799ba0
00799bf4  05 00 a0 e1                                      mov r0, r5
00799bf8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00799bfc, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::as_value* std::priv
; alias: _ZNSt4priv21__unguarded_partitionIPN7gameswf8as_valueES2_NS1_19custom_array_sorterEEET_S5_S5_T0_T1_
; demangled: gameswf::as_value* std::priv::__unguarded_partition<gameswf::as_value*, gameswf::as_value, gameswf::custom_array_sorter>(gameswf::as_value*, gameswf::as_value*, gameswf::as_value, gameswf::custom_array_sorter)
; decoder-mode: arm
00799bfc  08 d0 4d e2                                      sub sp, sp, #8
00799c00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00799c04  14 40 8d e2                                      add r4, sp, #0x14
00799c08  08 30 a4 e5                                      str r3, [r4, #8]!
00799c0c  00 60 a0 e1                                      mov r6, r0
00799c10  01 50 a0 e1                                      mov r5, r1
00799c14  02 70 a0 e1                                      mov r7, r2
00799c18  06 10 a0 e1                                      mov r1, r6
00799c1c  04 00 a0 e1                                      mov r0, r4
00799c20  07 20 a0 e1                                      mov r2, r7
00799c24  3a fe ff eb                                      bl #0x799514
00799c28  00 00 50 e3                                      cmp r0, #0
00799c2c  0c 60 86 12                                      addne r6, r6, #0xc
00799c30  f8 ff ff 1a                                      bne #0x799c18
00799c34  0c 50 45 e2                                      sub r5, r5, #0xc
00799c38  05 20 a0 e1                                      mov r2, r5
00799c3c  04 00 a0 e1                                      mov r0, r4
00799c40  07 10 a0 e1                                      mov r1, r7
00799c44  32 fe ff eb                                      bl #0x799514
00799c48  00 00 50 e3                                      cmp r0, #0
00799c4c  f8 ff ff 1a                                      bne #0x799c34
00799c50  05 00 56 e1                                      cmp r6, r5
00799c54  04 00 00 2a                                      bhs #0x799c6c
00799c58  06 00 a0 e1                                      mov r0, r6
00799c5c  05 10 a0 e1                                      mov r1, r5
00799c60  b4 ff ff eb                                      bl #0x799b38
00799c64  0c 60 86 e2                                      add r6, r6, #0xc
00799c68  ea ff ff ea                                      b #0x799c18
00799c6c  06 00 a0 e1                                      mov r0, r6
00799c70  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00799c74  08 d0 8d e2                                      add sp, sp, #8
00799c78  1e ff 2f e1                                      bx lr
