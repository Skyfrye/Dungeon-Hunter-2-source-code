; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d3e8, declared_size=28, range_size=28, mode=arm
; class-group: NetStructString<32u>
; alias: _ZN15NetStructStringILj32EE9TestValueERKSs
; demangled: NetStructString<32u>::TestValue(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0036d3e8  14 30 91 e5                                      ldr r3, [r1, #0x14]
0036d3ec  10 00 91 e5                                      ldr r0, [r1, #0x10]
0036d3f0  00 00 63 e0                                      rsb r0, r3, r0
0036d3f4  1f 00 50 e3                                      cmp r0, #0x1f
0036d3f8  00 00 a0 83                                      movhi r0, #0
0036d3fc  01 00 a0 93                                      movls r0, #1
0036d400  1e ff 2f e1                                      bx lr

; FUNCTION 0x00371150, declared_size=52, range_size=52, mode=arm
; class-group: NetStructString<32u>
; alias: _ZN15NetStructStringILj32EED1Ev
; demangled: NetStructString<32u>::~NetStructString()
; decoder-mode: arm
00371150  24 30 9f e5                                      ldr r3, [pc, #0x24]
00371154  24 20 9f e5                                      ldr r2, [pc, #0x24]
00371158  10 40 2d e9                                      push {r4, lr}
0037115c  03 30 8f e0                                      add r3, pc, r3
00371160  02 20 93 e7                                      ldr r2, [r3, r2]
00371164  00 40 a0 e1                                      mov r4, r0
00371168  08 20 82 e2                                      add r2, r2, #8
0037116c  20 20 80 e4                                      str r2, [r0], #0x20
00371170  37 9c fe eb                                      bl #0x318254
00371174  04 00 a0 e1                                      mov r0, r4
00371178  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0037117c  34 39 62 00 30 3e 00 00                          .byte 0x34, 0x39, 0x62, 0x00, 0x30, 0x3e, 0x00, 0x00

; FUNCTION 0x00371184, declared_size=112, range_size=112, mode=arm
; class-group: NetStructString<32u>
; alias: _ZN15NetStructStringILj32EE4ReadER12NetBitStream
; demangled: NetStructString<32u>::Read(NetBitStream&)
; decoder-mode: arm
00371184  60 30 9f e5                                      ldr r3, [pc, #0x60]
00371188  60 20 9f e5                                      ldr r2, [pc, #0x60]
0037118c  70 40 2d e9                                      push {r4, r5, r6, lr}
00371190  03 30 8f e0                                      add r3, pc, r3
00371194  02 50 93 e7                                      ldr r5, [r3, r2]
00371198  20 d0 4d e2                                      sub sp, sp, #0x20
0037119c  04 40 8d e2                                      add r4, sp, #4
003711a0  00 20 95 e5                                      ldr r2, [r5]
003711a4  00 60 a0 e1                                      mov r6, r0
003711a8  04 00 a0 e1                                      mov r0, r4
003711ac  1c 20 8d e5                                      str r2, [sp, #0x1c]
003711b0  9e 76 12 eb                                      bl #0x80ec30
003711b4  00 30 96 e5                                      ldr r3, [r6]
003711b8  06 00 a0 e1                                      mov r0, r6
003711bc  04 10 a0 e1                                      mov r1, r4
003711c0  0f e0 a0 e1                                      mov lr, pc
003711c4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003711c8  04 00 a0 e1                                      mov r0, r4
003711cc  20 9c fe eb                                      bl #0x318254
003711d0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003711d4  00 30 95 e5                                      ldr r3, [r5]
003711d8  03 00 52 e1                                      cmp r2, r3
003711dc  01 00 00 1a                                      bne #0x3711e8
003711e0  20 d0 8d e2                                      add sp, sp, #0x20
003711e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003711e8  48 74 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003711ec  00 39 62 00 ac 40 00 00                          .byte 0x00, 0x39, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00371244, declared_size=80, range_size=80, mode=arm
; class-group: NetStructString<32u>
; alias: _ZN15NetStructStringILj32EED0Ev
; demangled: NetStructString<32u>::~NetStructString()
; decoder-mode: arm
00371244  70 40 2d e9                                      push {r4, r5, r6, lr}
00371248  38 40 9f e5                                      ldr r4, [pc, #0x38]
0037124c  38 30 9f e5                                      ldr r3, [pc, #0x38]
00371250  00 50 a0 e1                                      mov r5, r0
00371254  04 40 8f e0                                      add r4, pc, r4
00371258  03 30 94 e7                                      ldr r3, [r4, r3]
0037125c  08 30 83 e2                                      add r3, r3, #8
00371260  20 30 80 e4                                      str r3, [r0], #0x20
00371264  fa 9b fe eb                                      bl #0x318254
00371268  20 30 9f e5                                      ldr r3, [pc, #0x20]
0037126c  05 00 a0 e1                                      mov r0, r5
00371270  03 30 94 e7                                      ldr r3, [r4, r3]
00371274  08 30 83 e2                                      add r3, r3, #8
00371278  00 30 85 e5                                      str r3, [r5]
0037127c  6f 7c fe eb                                      bl #0x310440
00371280  05 00 a0 e1                                      mov r0, r5
00371284  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00371288  3c 38 62 00 30 3e 00 00 a8 10 00 00              .byte 0x3c, 0x38, 0x62, 0x00, 0x30, 0x3e, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00371b78, declared_size=116, range_size=116, mode=arm
; class-group: NetStructString<32u>
; alias: _ZN15NetStructStringILj32EE5WriteER12NetBitStream
; demangled: NetStructString<32u>::Write(NetBitStream&)
; decoder-mode: arm
00371b78  64 30 9f e5                                      ldr r3, [pc, #0x64]
00371b7c  64 20 9f e5                                      ldr r2, [pc, #0x64]
00371b80  70 40 2d e9                                      push {r4, r5, r6, lr}
00371b84  03 30 8f e0                                      add r3, pc, r3
00371b88  02 50 93 e7                                      ldr r5, [r3, r2]
00371b8c  20 d0 4d e2                                      sub sp, sp, #0x20
00371b90  04 40 8d e2                                      add r4, sp, #4
00371b94  00 20 95 e5                                      ldr r2, [r5]
00371b98  20 00 80 e2                                      add r0, r0, #0x20
00371b9c  01 60 a0 e1                                      mov r6, r1
00371ba0  00 10 a0 e1                                      mov r1, r0
00371ba4  04 00 a0 e1                                      mov r0, r4
00371ba8  1c 20 8d e5                                      str r2, [sp, #0x1c]
00371bac  59 e7 fe eb                                      bl #0x32b918
00371bb0  20 20 a0 e3                                      mov r2, #0x20
00371bb4  06 00 a0 e1                                      mov r0, r6
00371bb8  04 10 a0 e1                                      mov r1, r4
00371bbc  7b 74 12 eb                                      bl #0x80edb0
00371bc0  04 00 a0 e1                                      mov r0, r4
00371bc4  a2 99 fe eb                                      bl #0x318254
00371bc8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00371bcc  00 30 95 e5                                      ldr r3, [r5]
00371bd0  03 00 52 e1                                      cmp r2, r3
00371bd4  01 00 00 1a                                      bne #0x371be0
00371bd8  20 d0 8d e2                                      add sp, sp, #0x20
00371bdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00371be0  ca 71 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00371be4  0c 2f 62 00 ac 40 00 00                          .byte 0x0c, 0x2f, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00371bec, declared_size=224, range_size=224, mode=arm
; class-group: NetStructString<32u>
; alias: _ZN15NetStructStringILj32EEC1ESs
; demangled: NetStructString<32u>::NetStructString(std::basic_string<char, std::char_traits<char>, std::allocator<char> >)
; decoder-mode: arm
00371bec  f0 4d 2d e9                                      push {r4, r5, r6, r7, r8, sl, fp, lr}
00371bf0  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
00371bf4  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
00371bf8  20 d0 4d e2                                      sub sp, sp, #0x20
00371bfc  05 50 8f e0                                      add r5, pc, r5
00371c00  03 80 95 e7                                      ldr r8, [r5, r3]
00371c04  04 60 8d e2                                      add r6, sp, #4
00371c08  00 40 a0 e1                                      mov r4, r0
00371c0c  00 30 98 e5                                      ldr r3, [r8]
00371c10  06 00 a0 e1                                      mov r0, r6
00371c14  00 70 a0 e3                                      mov r7, #0
00371c18  1c 30 8d e5                                      str r3, [sp, #0x1c]
00371c1c  3d e7 fe eb                                      bl #0x32b918
00371c20  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
00371c24  04 30 a0 e1                                      mov r3, r4
00371c28  00 10 e0 e3                                      mvn r1, #0
00371c2c  02 20 95 e7                                      ldr r2, [r5, r2]
00371c30  01 0c a0 e3                                      mov r0, #0x100
00371c34  00 a0 a0 e3                                      mov sl, #0
00371c38  08 20 82 e2                                      add r2, r2, #8
00371c3c  00 b0 a0 e3                                      mov fp, #0
00371c40  04 00 84 e5                                      str r0, [r4, #4]
00371c44  14 10 84 e5                                      str r1, [r4, #0x14]
00371c48  10 10 84 e5                                      str r1, [r4, #0x10]
00371c4c  f8 a0 c4 e1                                      strd sl, fp, [r4, #8]
00371c50  18 70 84 e5                                      str r7, [r4, #0x18]
00371c54  1c 70 c4 e5                                      strb r7, [r4, #0x1c]
00371c58  20 20 83 e4                                      str r2, [r3], #0x20
00371c5c  03 00 a0 e1                                      mov r0, r3
00371c60  30 30 84 e5                                      str r3, [r4, #0x30]
00371c64  34 30 84 e5                                      str r3, [r4, #0x34]
00371c68  10 10 a0 e3                                      mov r1, #0x10
00371c6c  82 7e fe eb                                      bl #0x31167c
00371c70  30 30 94 e5                                      ldr r3, [r4, #0x30]
00371c74  06 10 a0 e1                                      mov r1, r6
00371c78  04 00 a0 e1                                      mov r0, r4
00371c7c  00 70 c3 e5                                      strb r7, [r3]
00371c80  f1 f7 ff eb                                      bl #0x36fc4c
00371c84  06 00 a0 e1                                      mov r0, r6
00371c88  71 99 fe eb                                      bl #0x318254
00371c8c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00371c90  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00371c94  04 00 a0 e1                                      mov r0, r4
00371c98  03 30 95 e7                                      ldr r3, [r5, r3]
00371c9c  08 30 83 e2                                      add r3, r3, #8
00371ca0  00 30 84 e5                                      str r3, [r4]
00371ca4  00 30 98 e5                                      ldr r3, [r8]
00371ca8  03 00 52 e1                                      cmp r2, r3
00371cac  01 00 00 1a                                      bne #0x371cb8
00371cb0  20 d0 8d e2                                      add sp, sp, #0x20
00371cb4  f0 8d bd e8                                      pop {r4, r5, r6, r7, r8, sl, fp, pc}
00371cb8  94 71 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00371cbc  94 2e 62 00 ac 40 00 00 30 3e 00 00 44 1d 00 00  .byte 0x94, 0x2e, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x3e, 0x00, 0x00, 0x44, 0x1d, 0x00, 0x00
