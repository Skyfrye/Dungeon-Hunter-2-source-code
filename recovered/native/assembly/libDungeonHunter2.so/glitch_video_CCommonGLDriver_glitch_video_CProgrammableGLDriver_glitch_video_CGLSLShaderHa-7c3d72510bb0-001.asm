; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005b051c, declared_size=120, range_size=120, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBuffer10unbindImplEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unbindImpl()
; decoder-mode: arm
005b051c  10 40 2d e9                                      push {r4, lr}
005b0520  14 30 90 e5                                      ldr r3, [r0, #0x14]
005b0524  10 20 d0 e5                                      ldrb r2, [r0, #0x10]
005b0528  00 40 a0 e1                                      mov r4, r0
005b052c  95 3f 83 e2                                      add r3, r3, #0x254
005b0530  18 10 90 e5                                      ldr r1, [r0, #0x18]
005b0534  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005b0538  01 00 50 e1                                      cmp r0, r1
005b053c  00 10 a0 03                                      moveq r1, #0
005b0540  02 11 83 07                                      streq r1, [r3, r2, lsl #2]
005b0544  01 00 a0 e3                                      mov r0, #1
005b0548  18 10 84 e2                                      add r1, r4, #0x18
005b054c  df 79 f5 eb                                      bl #0x30ecd0
005b0550  14 30 94 e5                                      ldr r3, [r4, #0x14]
005b0554  18 10 94 e5                                      ldr r1, [r4, #0x18]
005b0558  03 00 a0 e1                                      mov r0, r3
005b055c  00 30 93 e5                                      ldr r3, [r3]
005b0560  0f e0 a0 e1                                      mov lr, pc
005b0564  50 f0 93 e5                                      ldr pc, [r3, #0x50]
005b0568  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005b056c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b0570  e7 30 03 e2                                      and r3, r3, #0xe7
005b0574  00 00 52 e3                                      cmp r2, #0
005b0578  12 30 c4 e5                                      strb r3, [r4, #0x12]
005b057c  02 30 83 13                                      orrne r3, r3, #2
005b0580  00 20 a0 e3                                      mov r2, #0
005b0584  04 30 c3 13                                      bicne r3, r3, #4
005b0588  18 20 84 e5                                      str r2, [r4, #0x18]
005b058c  12 30 c4 15                                      strbne r3, [r4, #0x12]
005b0590  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b1480, declared_size=368, range_size=368, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer
; alias: _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBuffer9cloneImplEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::cloneImpl() const
; decoder-mode: arm
005b1480  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005b1484  00 30 a0 e3                                      mov r3, #0
005b1488  00 30 80 e5                                      str r3, [r0]
005b148c  08 60 91 e5                                      ldr r6, [r1, #8]
005b1490  50 41 9f e5                                      ldr r4, [pc, #0x150]
005b1494  24 d0 4d e2                                      sub sp, sp, #0x24
005b1498  03 00 56 e1                                      cmp r6, r3
005b149c  00 50 a0 e1                                      mov r5, r0
005b14a0  01 70 a0 e1                                      mov r7, r1
005b14a4  04 40 8f e0                                      add r4, pc, r4
005b14a8  20 00 00 0a                                      beq #0x5b1530
005b14ac  12 c0 d1 e5                                      ldrb ip, [r1, #0x12]
005b14b0  14 90 91 e5                                      ldr sb, [r1, #0x14]
005b14b4  10 a0 d1 e5                                      ldrb sl, [r1, #0x10]
005b14b8  11 80 d1 e5                                      ldrb r8, [r1, #0x11]
005b14bc  0c b0 91 e5                                      ldr fp, [r1, #0xc]
005b14c0  01 c0 0c e2                                      and ip, ip, #1
005b14c4  03 10 a0 e1                                      mov r1, r3
005b14c8  20 00 a0 e3                                      mov r0, #0x20
005b14cc  14 c0 8d e5                                      str ip, [sp, #0x14]
005b14d0  35 0b fe eb                                      bl #0x5341ac
005b14d4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005b14d8  0a 20 a0 e1                                      mov r2, sl
005b14dc  08 30 a0 e1                                      mov r3, r8
005b14e0  09 10 a0 e1                                      mov r1, sb
005b14e4  00 70 a0 e1                                      mov r7, r0
005b14e8  00 b0 8d e5                                      str fp, [sp]
005b14ec  40 10 8d e9                                      stmib sp, {r6, ip}
005b14f0  a3 b2 04 eb                                      bl #0x6ddf84
005b14f4  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
005b14f8  04 20 97 e5                                      ldr r2, [r7, #4]
005b14fc  03 30 94 e7                                      ldr r3, [r4, r3]
005b1500  01 20 82 e2                                      add r2, r2, #1
005b1504  04 20 87 e5                                      str r2, [r7, #4]
005b1508  08 30 83 e2                                      add r3, r3, #8
005b150c  00 30 87 e5                                      str r3, [r7]
005b1510  00 00 95 e5                                      ldr r0, [r5]
005b1514  00 70 85 e5                                      str r7, [r5]
005b1518  00 00 50 e3                                      cmp r0, #0
005b151c  00 00 00 0a                                      beq #0x5b1524
005b1520  17 b0 f5 eb                                      bl #0x31d584
005b1524  05 00 a0 e1                                      mov r0, r5
005b1528  24 d0 8d e2                                      add sp, sp, #0x24
005b152c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b1530  04 30 91 e5                                      ldr r3, [r1, #4]
005b1534  07 00 a0 e1                                      mov r0, r7
005b1538  06 10 a0 e1                                      mov r1, r6
005b153c  02 30 83 e2                                      add r3, r3, #2
005b1540  04 30 87 e5                                      str r3, [r7, #4]
005b1544  18 70 8d e5                                      str r7, [sp, #0x18]
005b1548  63 c1 ff eb                                      bl #0x5a1adc
005b154c  1c 00 8d e5                                      str r0, [sp, #0x1c]
005b1550  07 00 a0 e1                                      mov r0, r7
005b1554  0a b0 f5 eb                                      bl #0x31d584
005b1558  06 10 a0 e1                                      mov r1, r6
005b155c  0c 00 97 e5                                      ldr r0, [r7, #0xc]
005b1560  10 0b fe eb                                      bl #0x5341a8
005b1564  0c 20 97 e5                                      ldr r2, [r7, #0xc]
005b1568  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005b156c  00 b0 a0 e1                                      mov fp, r0
005b1570  bc 74 f5 eb                                      bl #0x30e868
005b1574  06 10 a0 e1                                      mov r1, r6
005b1578  20 00 a0 e3                                      mov r0, #0x20
005b157c  14 90 97 e5                                      ldr sb, [r7, #0x14]
005b1580  10 a0 d7 e5                                      ldrb sl, [r7, #0x10]
005b1584  11 80 d7 e5                                      ldrb r8, [r7, #0x11]
005b1588  0c 70 97 e5                                      ldr r7, [r7, #0xc]
005b158c  06 0b fe eb                                      bl #0x5341ac
005b1590  0a 20 a0 e1                                      mov r2, sl
005b1594  08 30 a0 e1                                      mov r3, r8
005b1598  01 c0 a0 e3                                      mov ip, #1
005b159c  09 10 a0 e1                                      mov r1, sb
005b15a0  00 60 a0 e1                                      mov r6, r0
005b15a4  80 18 8d e8                                      stm sp, {r7, fp, ip}
005b15a8  75 b2 04 eb                                      bl #0x6ddf84
005b15ac  38 30 9f e5                                      ldr r3, [pc, #0x38]
005b15b0  04 20 96 e5                                      ldr r2, [r6, #4]
005b15b4  03 30 94 e7                                      ldr r3, [r4, r3]
005b15b8  01 20 82 e2                                      add r2, r2, #1
005b15bc  04 20 86 e5                                      str r2, [r6, #4]
005b15c0  08 30 83 e2                                      add r3, r3, #8
005b15c4  00 30 86 e5                                      str r3, [r6]
005b15c8  00 00 95 e5                                      ldr r0, [r5]
005b15cc  00 60 85 e5                                      str r6, [r5]
005b15d0  00 00 50 e3                                      cmp r0, #0
005b15d4  00 00 00 0a                                      beq #0x5b15dc
005b15d8  e9 af f5 eb                                      bl #0x31d584
005b15dc  18 00 8d e2                                      add r0, sp, #0x18
005b15e0  73 f6 ff eb                                      bl #0x5aefb4
005b15e4  ce ff ff ea                                      b #0x5b1524
; mapping-symbol data/literal pool
005b15e8  ec 35 3e 00 14 14 00 00                          .byte 0xec, 0x35, 0x3e, 0x00, 0x14, 0x14, 0x00, 0x00

; FUNCTION 0x005b2468, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer
; alias: _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBuffer9unmapImplEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::unmapImpl() const
; decoder-mode: arm
005b2468  70 40 2d e9                                      push {r4, r5, r6, lr}
005b246c  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
005b2470  14 20 90 e5                                      ldr r2, [r0, #0x14]
005b2474  18 50 90 e5                                      ldr r5, [r0, #0x18]
005b2478  94 60 83 e2                                      add r6, r3, #0x94
005b247c  06 61 82 e0                                      add r6, r2, r6, lsl #2
005b2480  04 20 96 e5                                      ldr r2, [r6, #4]
005b2484  00 40 a0 e1                                      mov r4, r0
005b2488  02 00 55 e1                                      cmp r5, r2
005b248c  06 00 00 0a                                      beq #0x5b24ac
005b2490  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
005b2494  05 10 a0 e1                                      mov r1, r5
005b2498  02 20 8f e0                                      add r2, pc, r2
005b249c  11 2e 82 e2                                      add r2, r2, #0x110
005b24a0  03 01 92 e7                                      ldr r0, [r2, r3, lsl #2]
005b24a4  52 6e f5 eb                                      bl #0x30ddf4
005b24a8  04 50 86 e5                                      str r5, [r6, #4]
005b24ac  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005b24b0  00 20 a0 e3                                      mov r2, #0
005b24b4  1c 20 84 e5                                      str r2, [r4, #0x1c]
005b24b8  20 30 c3 e3                                      bic r3, r3, #0x20
005b24bc  12 30 c4 e5                                      strb r3, [r4, #0x12]
005b24c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005b24c4  9c db 32 00                                      .byte 0x9c, 0xdb, 0x32, 0x00

; FUNCTION 0x005b24c8, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBufferD1Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer()
; decoder-mode: arm
005b24c8  70 40 2d e9                                      push {r4, r5, r6, lr}
005b24cc  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
005b24d0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
005b24d4  12 20 d0 e5                                      ldrb r2, [r0, #0x12]
005b24d8  05 50 8f e0                                      add r5, pc, r5
005b24dc  03 30 95 e7                                      ldr r3, [r5, r3]
005b24e0  20 00 12 e3                                      tst r2, #0x20
005b24e4  00 40 a0 e1                                      mov r4, r0
005b24e8  08 30 83 e2                                      add r3, r3, #8
005b24ec  00 30 80 e5                                      str r3, [r0]
005b24f0  0b 00 00 1a                                      bne #0x5b2524
005b24f4  08 00 12 e3                                      tst r2, #8
005b24f8  01 00 00 0a                                      beq #0x5b2504
005b24fc  04 00 a0 e1                                      mov r0, r4
005b2500  05 f8 ff eb                                      bl #0x5b051c
005b2504  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005b2508  04 00 a0 e1                                      mov r0, r4
005b250c  03 30 95 e7                                      ldr r3, [r5, r3]
005b2510  08 30 83 e2                                      add r3, r3, #8
005b2514  00 30 84 e5                                      str r3, [r4]
005b2518  4f be ff eb                                      bl #0x5a1e5c
005b251c  04 00 a0 e1                                      mov r0, r4
005b2520  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b2524  cf ff ff eb                                      bl #0x5b2468
005b2528  12 20 d4 e5                                      ldrb r2, [r4, #0x12]
005b252c  f0 ff ff ea                                      b #0x5b24f4
; mapping-symbol data/literal pool
005b2530  b8 25 3e 00 14 14 00 00 7c 1f 00 00              .byte 0xb8, 0x25, 0x3e, 0x00, 0x14, 0x14, 0x00, 0x00, 0x7c, 0x1f, 0x00, 0x00

; FUNCTION 0x005b253c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBufferD0Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::~CBuffer()
; decoder-mode: arm
005b253c  10 40 2d e9                                      push {r4, lr}
005b2540  00 40 a0 e1                                      mov r4, r0
005b2544  df ff ff eb                                      bl #0x5b24c8
005b2548  04 00 a0 e1                                      mov r0, r4
005b254c  57 6f f5 eb                                      bl #0x30e2b0
005b2550  04 00 a0 e1                                      mov r0, r4
005b2554  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b3a1c, declared_size=224, range_size=224, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer
; alias: _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBuffer7mapImplEj
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::mapImpl(unsigned int) const
; decoder-mode: arm
005b3a1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b3a20  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
005b3a24  10 20 d0 e5                                      ldrb r2, [r0, #0x10]
005b3a28  00 40 a0 e1                                      mov r4, r0
005b3a2c  03 30 8f e0                                      add r3, pc, r3
005b3a30  11 0e 83 e2                                      add r0, r3, #0x110
005b3a34  02 01 90 e7                                      ldr r0, [r0, r2, lsl #2]
005b3a38  01 50 a0 e1                                      mov r5, r1
005b3a3c  00 00 50 e3                                      cmp r0, #0
005b3a40  03 00 00 0a                                      beq #0x5b3a54
005b3a44  01 31 83 e0                                      add r3, r3, r1, lsl #2
005b3a48  24 31 93 e5                                      ldr r3, [r3, #0x124]
005b3a4c  00 00 53 e3                                      cmp r3, #0
005b3a50  08 00 00 1a                                      bne #0x5b3a78
005b3a54  08 30 94 e5                                      ldr r3, [r4, #8]
005b3a58  00 00 53 e3                                      cmp r3, #0
005b3a5c  18 00 00 0a                                      beq #0x5b3ac4
005b3a60  02 00 55 e3                                      cmp r5, #2
005b3a64  0a 00 00 8a                                      bhi #0x5b3a94
005b3a68  21 20 a0 e3                                      mov r2, #0x21
005b3a6c  13 20 c4 e5                                      strb r2, [r4, #0x13]
005b3a70  03 00 a0 e1                                      mov r0, r3
005b3a74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b3a78  02 00 51 e3                                      cmp r1, #2
005b3a7c  12 00 00 9a                                      bls #0x5b3acc
005b3a80  04 00 51 e3                                      cmp r1, #4
005b3a84  10 00 00 8a                                      bhi #0x5b3acc
005b3a88  08 30 94 e5                                      ldr r3, [r4, #8]
005b3a8c  00 00 53 e3                                      cmp r3, #0
005b3a90  0d 00 00 0a                                      beq #0x5b3acc
005b3a94  11 20 d4 e5                                      ldrb r2, [r4, #0x11]
005b3a98  04 00 52 e3                                      cmp r2, #4
005b3a9c  12 20 d4 15                                      ldrbne r2, [r4, #0x12]
005b3aa0  02 20 82 13                                      orrne r2, r2, #2
005b3aa4  12 20 c4 15                                      strbne r2, [r4, #0x12]
005b3aa8  03 00 55 e3                                      cmp r5, #3
005b3aac  75 20 ef 16                                      uxtbne r2, r5
005b3ab0  a1 20 a0 03                                      moveq r2, #0xa1
005b3ab4  82 22 a0 11                                      lslne r2, r2, #5
005b3ab8  01 20 82 13                                      orrne r2, r2, #1
005b3abc  72 20 ef 16                                      uxtbne r2, r2
005b3ac0  13 20 c4 e5                                      strb r2, [r4, #0x13]
005b3ac4  03 00 a0 e1                                      mov r0, r3
005b3ac8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b3acc  14 30 94 e5                                      ldr r3, [r4, #0x14]
005b3ad0  94 20 82 e2                                      add r2, r2, #0x94
005b3ad4  18 60 94 e5                                      ldr r6, [r4, #0x18]
005b3ad8  02 71 83 e0                                      add r7, r3, r2, lsl #2
005b3adc  04 30 97 e5                                      ldr r3, [r7, #4]
005b3ae0  03 00 56 e1                                      cmp r6, r3
005b3ae4  da ff ff 0a                                      beq #0x5b3a54
005b3ae8  06 10 a0 e1                                      mov r1, r6
005b3aec  c0 68 f5 eb                                      bl #0x30ddf4
005b3af0  04 60 87 e5                                      str r6, [r7, #4]
005b3af4  d6 ff ff ea                                      b #0x5b3a54
; mapping-symbol data/literal pool
005b3af8  08 c6 32 00                                      .byte 0x08, 0xc6, 0x32, 0x00

; FUNCTION 0x005b6374, declared_size=332, range_size=332, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBuffer6updateEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::update()
; decoder-mode: arm
005b6374  70 40 2d e9                                      push {r4, r5, r6, lr}
005b6378  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
005b637c  14 20 90 e5                                      ldr r2, [r0, #0x14]
005b6380  18 50 90 e5                                      ldr r5, [r0, #0x18]
005b6384  94 60 83 e2                                      add r6, r3, #0x94
005b6388  06 61 82 e0                                      add r6, r2, r6, lsl #2
005b638c  04 20 96 e5                                      ldr r2, [r6, #4]
005b6390  00 40 a0 e1                                      mov r4, r0
005b6394  02 00 55 e1                                      cmp r5, r2
005b6398  06 00 00 0a                                      beq #0x5b63b8
005b639c  10 21 9f e5                                      ldr r2, [pc, #0x110]
005b63a0  05 10 a0 e1                                      mov r1, r5
005b63a4  02 20 8f e0                                      add r2, pc, r2
005b63a8  11 2e 82 e2                                      add r2, r2, #0x110
005b63ac  03 01 92 e7                                      ldr r0, [r2, r3, lsl #2]
005b63b0  8f 5e f5 eb                                      bl #0x30ddf4
005b63b4  04 50 86 e5                                      str r5, [r6, #4]
005b63b8  12 10 d4 e5                                      ldrb r1, [r4, #0x12]
005b63bc  02 10 11 e2                                      ands r1, r1, #2
005b63c0  12 00 00 0a                                      beq #0x5b6410
005b63c4  77 5f f5 eb                                      bl #0x30e1a8
005b63c8  e8 10 9f e5                                      ldr r1, [pc, #0xe8]
005b63cc  11 20 d4 e5                                      ldrb r2, [r4, #0x11]
005b63d0  10 00 d4 e5                                      ldrb r0, [r4, #0x10]
005b63d4  01 10 8f e0                                      add r1, pc, r1
005b63d8  4f 3f 81 e2                                      add r3, r1, #0x13c
005b63dc  11 1e 81 e2                                      add r1, r1, #0x110
005b63e0  00 01 91 e7                                      ldr r0, [r1, r0, lsl #2]
005b63e4  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005b63e8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005b63ec  08 20 94 e5                                      ldr r2, [r4, #8]
005b63f0  fb 60 f5 eb                                      bl #0x30e7e4
005b63f4  6b 5f f5 eb                                      bl #0x30e1a8
005b63f8  00 00 50 e3                                      cmp r0, #0
005b63fc  0f 00 00 1a                                      bne #0x5b6440
005b6400  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005b6404  02 30 c3 e3                                      bic r3, r3, #2
005b6408  12 30 c4 e5                                      strb r3, [r4, #0x12]
005b640c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b6410  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
005b6414  10 20 d4 e5                                      ldrb r2, [r4, #0x10]
005b6418  03 30 8f e0                                      add r3, pc, r3
005b641c  11 3e 83 e2                                      add r3, r3, #0x110
005b6420  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005b6424  08 30 94 e5                                      ldr r3, [r4, #8]
005b6428  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005b642c  01 61 f5 eb                                      bl #0x30e838
005b6430  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005b6434  02 30 c3 e3                                      bic r3, r3, #2
005b6438  12 30 c4 e5                                      strb r3, [r4, #0x12]
005b643c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b6440  01 00 a0 e3                                      mov r0, #1
005b6444  18 10 84 e2                                      add r1, r4, #0x18
005b6448  20 62 f5 eb                                      bl #0x30ecd0
005b644c  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
005b6450  00 20 a0 e3                                      mov r2, #0
005b6454  18 20 84 e5                                      str r2, [r4, #0x18]
005b6458  04 00 53 e3                                      cmp r3, #4
005b645c  e7 ff ff 0a                                      beq #0x5b6400
005b6460  08 20 94 e5                                      ldr r2, [r4, #8]
005b6464  00 00 52 e3                                      cmp r2, #0
005b6468  12 20 d4 e5                                      ldrb r2, [r4, #0x12]
005b646c  10 20 82 03                                      orreq r2, r2, #0x10
005b6470  12 20 82 13                                      orrne r2, r2, #0x12
005b6474  04 00 53 e3                                      cmp r3, #4
005b6478  12 20 c4 e5                                      strb r2, [r4, #0x12]
005b647c  df ff ff 0a                                      beq #0x5b6400
005b6480  08 00 12 e3                                      tst r2, #8
005b6484  05 00 00 1a                                      bne #0x5b64a0
005b6488  04 30 a0 e3                                      mov r3, #4
005b648c  11 30 c4 e5                                      strb r3, [r4, #0x11]
005b6490  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005b6494  02 30 c3 e3                                      bic r3, r3, #2
005b6498  12 30 c4 e5                                      strb r3, [r4, #0x12]
005b649c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b64a0  00 30 94 e5                                      ldr r3, [r4]
005b64a4  04 00 a0 e1                                      mov r0, r4
005b64a8  0f e0 a0 e1                                      mov lr, pc
005b64ac  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005b64b0  f4 ff ff ea                                      b #0x5b6488
; mapping-symbol data/literal pool
005b64b4  90 9c 32 00 60 9c 32 00 1c 9c 32 00              .byte 0x90, 0x9c, 0x32, 0x00, 0x60, 0x9c, 0x32, 0x00, 0x1c, 0x9c, 0x32, 0x00

; FUNCTION 0x005b67b0, declared_size=528, range_size=528, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE7CBuffer8bindImplEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CBuffer::bindImpl(bool)
; decoder-mode: arm
005b67b0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005b67b4  18 30 90 e5                                      ldr r3, [r0, #0x18]
005b67b8  0c d0 4d e2                                      sub sp, sp, #0xc
005b67bc  00 40 a0 e1                                      mov r4, r0
005b67c0  00 00 53 e3                                      cmp r3, #0
005b67c4  01 50 a0 e1                                      mov r5, r1
005b67c8  11 00 00 0a                                      beq #0x5b6814
005b67cc  12 30 d0 e5                                      ldrb r3, [r0, #0x12]
005b67d0  02 00 13 e3                                      tst r3, #2
005b67d4  23 00 00 1a                                      bne #0x5b6868
005b67d8  00 00 55 e3                                      cmp r5, #0
005b67dc  0a 00 00 0a                                      beq #0x5b680c
005b67e0  08 30 94 e5                                      ldr r3, [r4, #8]
005b67e4  00 00 53 e3                                      cmp r3, #0
005b67e8  07 00 00 0a                                      beq #0x5b680c
005b67ec  01 30 a0 e3                                      mov r3, #1
005b67f0  04 00 a0 e1                                      mov r0, r4
005b67f4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005b67f8  00 20 a0 e3                                      mov r2, #0
005b67fc  2c ad ff eb                                      bl #0x5a1cb4
005b6800  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005b6804  02 30 c3 e3                                      bic r3, r3, #2
005b6808  12 30 c4 e5                                      strb r3, [r4, #0x12]
005b680c  0c d0 8d e2                                      add sp, sp, #0xc
005b6810  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005b6814  9c 71 9f e5                                      ldr r7, [pc, #0x19c]
005b6818  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
005b681c  07 70 8f e0                                      add r7, pc, r7
005b6820  11 7e 87 e2                                      add r7, r7, #0x110
005b6824  03 31 97 e7                                      ldr r3, [r7, r3, lsl #2]
005b6828  00 00 53 e3                                      cmp r3, #0
005b682c  f6 ff ff 0a                                      beq #0x5b680c
005b6830  18 60 80 e2                                      add r6, r0, #0x18
005b6834  06 10 a0 e1                                      mov r1, r6
005b6838  01 00 a0 e3                                      mov r0, #1
005b683c  3b 5e f5 eb                                      bl #0x30e130
005b6840  18 80 94 e5                                      ldr r8, [r4, #0x18]
005b6844  00 00 58 e3                                      cmp r8, #0
005b6848  ef ff ff 0a                                      beq #0x5b680c
005b684c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005b6850  00 00 53 e3                                      cmp r3, #0
005b6854  12 30 d4 05                                      ldrbeq r3, [r4, #0x12]
005b6858  06 00 00 1a                                      bne #0x5b6878
005b685c  08 30 83 e3                                      orr r3, r3, #8
005b6860  12 30 c4 e5                                      strb r3, [r4, #0x12]
005b6864  e8 ff ff ea                                      b #0x5b680c
005b6868  c1 fe ff eb                                      bl #0x5b6374
005b686c  00 00 55 e3                                      cmp r5, #0
005b6870  e5 ff ff 0a                                      beq #0x5b680c
005b6874  d9 ff ff ea                                      b #0x5b67e0
005b6878  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
005b687c  14 20 94 e5                                      ldr r2, [r4, #0x14]
005b6880  94 a0 83 e2                                      add sl, r3, #0x94
005b6884  0a a1 82 e0                                      add sl, r2, sl, lsl #2
005b6888  04 20 9a e5                                      ldr r2, [sl, #4]
005b688c  02 00 58 e1                                      cmp r8, r2
005b6890  03 00 00 0a                                      beq #0x5b68a4
005b6894  03 01 97 e7                                      ldr r0, [r7, r3, lsl #2]
005b6898  08 10 a0 e1                                      mov r1, r8
005b689c  54 5d f5 eb                                      bl #0x30ddf4
005b68a0  04 80 8a e5                                      str r8, [sl, #4]
005b68a4  10 71 9f e5                                      ldr r7, [pc, #0x110]
005b68a8  3e 5e f5 eb                                      bl #0x30e1a8
005b68ac  10 20 d4 e5                                      ldrb r2, [r4, #0x10]
005b68b0  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
005b68b4  07 70 8f e0                                      add r7, pc, r7
005b68b8  4f 8f 87 e2                                      add r8, r7, #0x13c
005b68bc  11 7e 87 e2                                      add r7, r7, #0x110
005b68c0  02 01 97 e7                                      ldr r0, [r7, r2, lsl #2]
005b68c4  03 31 98 e7                                      ldr r3, [r8, r3, lsl #2]
005b68c8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005b68cc  08 20 94 e5                                      ldr r2, [r4, #8]
005b68d0  c3 5f f5 eb                                      bl #0x30e7e4
005b68d4  10 20 d4 e5                                      ldrb r2, [r4, #0x10]
005b68d8  14 c0 94 e5                                      ldr ip, [r4, #0x14]
005b68dc  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
005b68e0  02 21 97 e7                                      ldr r2, [r7, r2, lsl #2]
005b68e4  08 e0 94 e5                                      ldr lr, [r4, #8]
005b68e8  0c 70 94 e5                                      ldr r7, [r4, #0xc]
005b68ec  03 31 98 e7                                      ldr r3, [r8, r3, lsl #2]
005b68f0  18 10 94 e5                                      ldr r1, [r4, #0x18]
005b68f4  0c 00 a0 e1                                      mov r0, ip
005b68f8  00 c0 9c e5                                      ldr ip, [ip]
005b68fc  80 40 8d e8                                      stm sp, {r7, lr}
005b6900  0f e0 a0 e1                                      mov lr, pc
005b6904  48 f0 9c e5                                      ldr pc, [ip, #0x48]
005b6908  26 5e f5 eb                                      bl #0x30e1a8
005b690c  00 20 50 e2                                      subs r2, r0, #0
005b6910  05 00 00 1a                                      bne #0x5b692c
005b6914  00 00 55 e3                                      cmp r5, #0
005b6918  19 00 00 1a                                      bne #0x5b6984
005b691c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005b6920  fd 30 03 e2                                      and r3, r3, #0xfd
005b6924  12 30 c4 e5                                      strb r3, [r4, #0x12]
005b6928  cb ff ff ea                                      b #0x5b685c
005b692c  06 10 a0 e1                                      mov r1, r6
005b6930  01 00 a0 e3                                      mov r0, #1
005b6934  e5 60 f5 eb                                      bl #0x30ecd0
005b6938  11 30 d4 e5                                      ldrb r3, [r4, #0x11]
005b693c  00 20 a0 e3                                      mov r2, #0
005b6940  18 20 84 e5                                      str r2, [r4, #0x18]
005b6944  04 00 53 e3                                      cmp r3, #4
005b6948  af ff ff 0a                                      beq #0x5b680c
005b694c  08 20 94 e5                                      ldr r2, [r4, #8]
005b6950  00 00 52 e3                                      cmp r2, #0
005b6954  12 20 d4 e5                                      ldrb r2, [r4, #0x12]
005b6958  10 20 82 03                                      orreq r2, r2, #0x10
005b695c  12 20 82 13                                      orrne r2, r2, #0x12
005b6960  04 00 53 e3                                      cmp r3, #4
005b6964  12 20 c4 e5                                      strb r2, [r4, #0x12]
005b6968  a7 ff ff 0a                                      beq #0x5b680c
005b696c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005b6970  08 00 13 e3                                      tst r3, #8
005b6974  0a 00 00 1a                                      bne #0x5b69a4
005b6978  04 30 a0 e3                                      mov r3, #4
005b697c  11 30 c4 e5                                      strb r3, [r4, #0x11]
005b6980  a1 ff ff ea                                      b #0x5b680c
005b6984  01 30 a0 e3                                      mov r3, #1
005b6988  04 00 a0 e1                                      mov r0, r4
005b698c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005b6990  c7 ac ff eb                                      bl #0x5a1cb4
005b6994  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005b6998  fd 30 03 e2                                      and r3, r3, #0xfd
005b699c  12 30 c4 e5                                      strb r3, [r4, #0x12]
005b69a0  ad ff ff ea                                      b #0x5b685c
005b69a4  00 30 94 e5                                      ldr r3, [r4]
005b69a8  04 00 a0 e1                                      mov r0, r4
005b69ac  0f e0 a0 e1                                      mov lr, pc
005b69b0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005b69b4  ef ff ff ea                                      b #0x5b6978
; mapping-symbol data/literal pool
005b69b8  18 98 32 00 80 97 32 00                          .byte 0x18, 0x98, 0x32, 0x00, 0x80, 0x97, 0x32, 0x00
