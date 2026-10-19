; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b8384, declared_size=376, range_size=376, mode=arm
; class-group: gameswf::traits_info
; alias: _ZN7gameswf11traits_info4readEPNS_6streamEPNS_7abc_defE
; demangled: gameswf::traits_info::read(gameswf::stream*, gameswf::abc_def*)
; decoder-mode: arm
007b8384  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007b8388  00 50 a0 e1                                      mov r5, r0
007b838c  01 00 a0 e1                                      mov r0, r1
007b8390  01 70 a0 e1                                      mov r7, r1
007b8394  f0 2d ff eb                                      bl #0x783b5c
007b8398  0c 00 85 e5                                      str r0, [r5, #0xc]
007b839c  07 00 a0 e1                                      mov r0, r7
007b83a0  e0 2d ff eb                                      bl #0x783b28
007b83a4  50 32 e7 e7                                      ubfx r3, r0, #4, #8
007b83a8  0f 00 00 e2                                      and r0, r0, #0xf
007b83ac  10 00 c5 e5                                      strb r0, [r5, #0x10]
007b83b0  11 30 c5 e5                                      strb r3, [r5, #0x11]
007b83b4  06 00 50 e3                                      cmp r0, #6
007b83b8  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
007b83bc  0d 00 00 ea                                      b #0x7b83f8
007b83c0  34 00 00 ea                                      b #0x7b8498
007b83c4  0e 00 00 ea                                      b #0x7b8404
007b83c8  0d 00 00 ea                                      b #0x7b8404
007b83cc  0c 00 00 ea                                      b #0x7b8404
007b83d0  01 00 00 ea                                      b #0x7b83dc
007b83d4  00 00 00 ea                                      b #0x7b83dc
007b83d8  2e 00 00 ea                                      b #0x7b8498
007b83dc  07 00 a0 e1                                      mov r0, r7
007b83e0  dd 2d ff eb                                      bl #0x783b5c
007b83e4  14 00 85 e5                                      str r0, [r5, #0x14]
007b83e8  07 00 a0 e1                                      mov r0, r7
007b83ec  da 2d ff eb                                      bl #0x783b5c
007b83f0  11 30 d5 e5                                      ldrb r3, [r5, #0x11]
007b83f4  18 00 85 e5                                      str r0, [r5, #0x18]
007b83f8  04 00 13 e3                                      tst r3, #4
007b83fc  09 00 00 1a                                      bne #0x7b8428
007b8400  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b8404  07 00 a0 e1                                      mov r0, r7
007b8408  d3 2d ff eb                                      bl #0x783b5c
007b840c  14 00 85 e5                                      str r0, [r5, #0x14]
007b8410  07 00 a0 e1                                      mov r0, r7
007b8414  d0 2d ff eb                                      bl #0x783b5c
007b8418  11 30 d5 e5                                      ldrb r3, [r5, #0x11]
007b841c  18 00 85 e5                                      str r0, [r5, #0x18]
007b8420  04 00 13 e3                                      tst r3, #4
007b8424  f5 ff ff 0a                                      beq #0x7b8400
007b8428  07 00 a0 e1                                      mov r0, r7
007b842c  ca 2d ff eb                                      bl #0x783b5c
007b8430  00 60 50 e2                                      subs r6, r0, #0
007b8434  24 80 85 e2                                      add r8, r5, #0x24
007b8438  28 40 95 e5                                      ldr r4, [r5, #0x28]
007b843c  22 00 00 1a                                      bne #0x7b84cc
007b8440  04 00 56 e1                                      cmp r6, r4
007b8444  07 00 00 da                                      ble #0x7b8468
007b8448  04 31 a0 e1                                      lsl r3, r4, #2
007b844c  00 10 a0 e3                                      mov r1, #0
007b8450  00 20 98 e5                                      ldr r2, [r8]
007b8454  01 40 84 e2                                      add r4, r4, #1
007b8458  04 00 56 e1                                      cmp r6, r4
007b845c  03 10 82 e7                                      str r1, [r2, r3]
007b8460  04 30 83 e2                                      add r3, r3, #4
007b8464  f9 ff ff 1a                                      bne #0x7b8450
007b8468  00 00 56 e3                                      cmp r6, #0
007b846c  28 60 85 e5                                      str r6, [r5, #0x28]
007b8470  e2 ff ff da                                      ble #0x7b8400
007b8474  00 40 a0 e3                                      mov r4, #0
007b8478  07 00 a0 e1                                      mov r0, r7
007b847c  24 80 95 e5                                      ldr r8, [r5, #0x24]
007b8480  b5 2d ff eb                                      bl #0x783b5c
007b8484  04 01 88 e7                                      str r0, [r8, r4, lsl #2]
007b8488  01 40 84 e2                                      add r4, r4, #1
007b848c  06 00 54 e1                                      cmp r4, r6
007b8490  f8 ff ff 1a                                      bne #0x7b8478
007b8494  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007b8498  07 00 a0 e1                                      mov r0, r7
007b849c  ae 2d ff eb                                      bl #0x783b5c
007b84a0  14 00 85 e5                                      str r0, [r5, #0x14]
007b84a4  07 00 a0 e1                                      mov r0, r7
007b84a8  ab 2d ff eb                                      bl #0x783b5c
007b84ac  18 00 85 e5                                      str r0, [r5, #0x18]
007b84b0  07 00 a0 e1                                      mov r0, r7
007b84b4  a8 2d ff eb                                      bl #0x783b5c
007b84b8  00 00 50 e3                                      cmp r0, #0
007b84bc  1c 00 85 e5                                      str r0, [r5, #0x1c]
007b84c0  08 00 00 1a                                      bne #0x7b84e8
007b84c4  11 30 d5 e5                                      ldrb r3, [r5, #0x11]
007b84c8  ca ff ff ea                                      b #0x7b83f8
007b84cc  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
007b84d0  03 00 56 e1                                      cmp r6, r3
007b84d4  d9 ff ff da                                      ble #0x7b8440
007b84d8  08 00 a0 e1                                      mov r0, r8
007b84dc  c6 10 86 e0                                      add r1, r6, r6, asr #1
007b84e0  b6 af fe eb                                      bl #0x7643c0
007b84e4  d5 ff ff ea                                      b #0x7b8440
007b84e8  07 00 a0 e1                                      mov r0, r7
007b84ec  8d 2d ff eb                                      bl #0x783b28
007b84f0  11 30 d5 e5                                      ldrb r3, [r5, #0x11]
007b84f4  20 00 c5 e5                                      strb r0, [r5, #0x20]
007b84f8  be ff ff ea                                      b #0x7b83f8

; FUNCTION 0x007b9c18, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::traits_info
; alias: _ZN7gameswf11traits_infoD1Ev
; demangled: gameswf::traits_info::~traits_info()
; decoder-mode: arm
007b9c18  68 30 9f e5                                      ldr r3, [pc, #0x68]
007b9c1c  68 20 9f e5                                      ldr r2, [pc, #0x68]
007b9c20  10 40 2d e9                                      push {r4, lr}
007b9c24  03 30 8f e0                                      add r3, pc, r3
007b9c28  02 20 93 e7                                      ldr r2, [r3, r2]
007b9c2c  00 40 a0 e1                                      mov r4, r0
007b9c30  08 20 82 e2                                      add r2, r2, #8
007b9c34  24 20 80 e4                                      str r2, [r0], #0x24
007b9c38  28 30 94 e5                                      ldr r3, [r4, #0x28]
007b9c3c  00 00 53 e3                                      cmp r3, #0
007b9c40  07 00 00 da                                      ble #0x7b9c64
007b9c44  00 30 a0 e3                                      mov r3, #0
007b9c48  03 10 a0 e1                                      mov r1, r3
007b9c4c  28 30 84 e5                                      str r3, [r4, #0x28]
007b9c50  da a9 fe eb                                      bl #0x7643c0
007b9c54  04 00 a0 e1                                      mov r0, r4
007b9c58  11 90 fe eb                                      bl #0x75dca4
007b9c5c  04 00 a0 e1                                      mov r0, r4
007b9c60  10 80 bd e8                                      pop {r4, pc}
007b9c64  f6 ff ff aa                                      bge #0x7b9c44
007b9c68  03 21 a0 e1                                      lsl r2, r3, #2
007b9c6c  00 c0 a0 e3                                      mov ip, #0
007b9c70  00 10 90 e5                                      ldr r1, [r0]
007b9c74  01 30 93 e2                                      adds r3, r3, #1
007b9c78  02 c0 81 e7                                      str ip, [r1, r2]
007b9c7c  04 20 82 e2                                      add r2, r2, #4
007b9c80  fa ff ff 1a                                      bne #0x7b9c70
007b9c84  ee ff ff ea                                      b #0x7b9c44
; mapping-symbol data/literal pool
007b9c88  6c ae 1d 00 44 36 00 00                          .byte 0x6c, 0xae, 0x1d, 0x00, 0x44, 0x36, 0x00, 0x00

; FUNCTION 0x007ba5e4, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::traits_info
; alias: _ZN7gameswf11traits_infoD0Ev
; demangled: gameswf::traits_info::~traits_info()
; decoder-mode: arm
007ba5e4  70 30 9f e5                                      ldr r3, [pc, #0x70]
007ba5e8  70 20 9f e5                                      ldr r2, [pc, #0x70]
007ba5ec  10 40 2d e9                                      push {r4, lr}
007ba5f0  03 30 8f e0                                      add r3, pc, r3
007ba5f4  02 20 93 e7                                      ldr r2, [r3, r2]
007ba5f8  00 40 a0 e1                                      mov r4, r0
007ba5fc  08 20 82 e2                                      add r2, r2, #8
007ba600  24 20 80 e4                                      str r2, [r0], #0x24
007ba604  28 30 94 e5                                      ldr r3, [r4, #0x28]
007ba608  00 00 53 e3                                      cmp r3, #0
007ba60c  09 00 00 da                                      ble #0x7ba638
007ba610  00 30 a0 e3                                      mov r3, #0
007ba614  03 10 a0 e1                                      mov r1, r3
007ba618  28 30 84 e5                                      str r3, [r4, #0x28]
007ba61c  67 a7 fe eb                                      bl #0x7643c0
007ba620  04 00 a0 e1                                      mov r0, r4
007ba624  9e 8d fe eb                                      bl #0x75dca4
007ba628  04 00 a0 e1                                      mov r0, r4
007ba62c  1f 4f ed eb                                      bl #0x30e2b0
007ba630  04 00 a0 e1                                      mov r0, r4
007ba634  10 80 bd e8                                      pop {r4, pc}
007ba638  f4 ff ff aa                                      bge #0x7ba610
007ba63c  03 21 a0 e1                                      lsl r2, r3, #2
007ba640  00 c0 a0 e3                                      mov ip, #0
007ba644  00 10 90 e5                                      ldr r1, [r0]
007ba648  01 30 93 e2                                      adds r3, r3, #1
007ba64c  02 c0 81 e7                                      str ip, [r1, r2]
007ba650  04 20 82 e2                                      add r2, r2, #4
007ba654  fa ff ff 1a                                      bne #0x7ba644
007ba658  ec ff ff ea                                      b #0x7ba610
; mapping-symbol data/literal pool
007ba65c  a0 a4 1d 00 44 36 00 00                          .byte 0xa0, 0xa4, 0x1d, 0x00, 0x44, 0x36, 0x00, 0x00
