; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005afd40, declared_size=688, range_size=688, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture16updateParametersEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::updateParameters() const
; decoder-mode: arm
005afd40  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005afd44  00 40 a0 e1                                      mov r4, r0
005afd48  78 02 9f e5                                      ldr r0, [pc, #0x278]
005afd4c  38 20 94 e5                                      ldr r2, [r4, #0x38]
005afd50  b0 34 d4 e1                                      ldrh r3, [r4, #0x40]
005afd54  70 12 9f e5                                      ldr r1, [pc, #0x270]
005afd58  00 00 8f e0                                      add r0, pc, r0
005afd5c  a4 00 80 e2                                      add r0, r0, #0xa4
005afd60  04 00 13 e3                                      tst r3, #4
005afd64  03 c0 02 e2                                      and ip, r2, #3
005afd68  0c d0 4d e2                                      sub sp, sp, #0xc
005afd6c  0c 51 90 e7                                      ldr r5, [r0, ip, lsl #2]
005afd70  01 10 8f e0                                      add r1, pc, r1
005afd74  0b 00 00 0a                                      beq #0x5afda8
005afd78  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005afd7c  02 00 13 e3                                      tst r3, #2
005afd80  3d 00 00 1a                                      bne #0x5afe7c
005afd84  52 26 e2 e7                                      ubfx r2, r2, #0xc, #3
005afd88  40 32 9f e5                                      ldr r3, [pc, #0x240]
005afd8c  05 00 a0 e1                                      mov r0, r5
005afd90  01 18 02 e3                                      movw r1, #0x2801
005afd94  03 30 8f e0                                      add r3, pc, r3
005afd98  b4 30 83 e2                                      add r3, r3, #0xb4
005afd9c  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
005afda0  da 7a f5 eb                                      bl #0x30e910
005afda4  b0 34 d4 e1                                      ldrh r3, [r4, #0x40]
005afda8  08 00 13 e3                                      tst r3, #8
005afdac  7a 00 00 1a                                      bne #0x5aff9c
005afdb0  10 00 13 e3                                      tst r3, #0x10
005afdb4  6d 00 00 1a                                      bne #0x5aff70
005afdb8  20 00 13 e3                                      tst r3, #0x20
005afdbc  60 00 00 1a                                      bne #0x5aff44
005afdc0  40 00 13 e3                                      tst r3, #0x40
005afdc4  2a 00 00 0a                                      beq #0x5afe74
005afdc8  34 20 94 e5                                      ldr r2, [r4, #0x34]
005afdcc  9c 10 92 e5                                      ldr r1, [r2, #0x9c]
005afdd0  80 00 11 e3                                      tst r1, #0x80
005afdd4  1c 00 00 1a                                      bne #0x5afe4c
005afdd8  80 00 13 e3                                      tst r3, #0x80
005afddc  02 00 00 0a                                      beq #0x5afdec
005afde0  9c 10 92 e5                                      ldr r1, [r2, #0x9c]
005afde4  02 08 11 e3                                      tst r1, #0x20000
005afde8  42 00 00 1a                                      bne #0x5afef8
005afdec  ec 27 92 e5                                      ldr r2, [r2, #0x7ec]
005afdf0  02 07 12 e3                                      tst r2, #0x80000
005afdf4  0e 00 00 0a                                      beq #0x5afe34
005afdf8  01 0b 13 e3                                      tst r3, #0x400
005afdfc  0c 00 00 0a                                      beq #0x5afe34
005afe00  38 30 94 e5                                      ldr r3, [r4, #0x38]
005afe04  53 36 e2 e7                                      ubfx r3, r3, #0xc, #3
005afe08  03 00 53 e3                                      cmp r3, #3
005afe0c  47 00 00 ca                                      bgt #0x5aff30
005afe10  3f 14 a0 e3                                      mov r1, #0x3f000000
005afe14  50 00 94 e5                                      ldr r0, [r4, #0x50]
005afe18  61 7b f5 eb                                      bl #0x30eba4
005afe1c  aa 79 f5 eb                                      bl #0x30e4cc
005afe20  00 20 a0 e1                                      mov r2, r0
005afe24  05 00 a0 e1                                      mov r0, r5
005afe28  3d 11 08 e3                                      movw r1, #0x813d
005afe2c  b7 7a f5 eb                                      bl #0x30e910
005afe30  b0 34 d4 e1                                      ldrh r3, [r4, #0x40]
005afe34  03 20 0e e3                                      movw r2, #0xe003
005afe38  00 20 40 e3                                      movt r2, #0
005afe3c  02 20 03 e0                                      and r2, r3, r2
005afe40  b0 24 c4 e1                                      strh r2, [r4, #0x40]
005afe44  0c d0 8d e2                                      add sp, sp, #0xc
005afe48  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005afe4c  80 31 9f e5                                      ldr r3, [pc, #0x180]
005afe50  38 20 94 e5                                      ldr r2, [r4, #0x38]
005afe54  05 00 a0 e1                                      mov r0, r5
005afe58  03 30 8f e0                                      add r3, pc, r3
005afe5c  cc 30 83 e2                                      add r3, r3, #0xcc
005afe60  d2 2a e2 e7                                      ubfx r2, r2, #0x15, #3
005afe64  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
005afe68  03 18 02 e3                                      movw r1, #0x2803
005afe6c  a7 7a f5 eb                                      bl #0x30e910
005afe70  b0 34 d4 e1                                      ldrh r3, [r4, #0x40]
005afe74  34 20 94 e5                                      ldr r2, [r4, #0x34]
005afe78  d6 ff ff ea                                      b #0x5afdd8
005afe7c  54 01 9f e5                                      ldr r0, [pc, #0x154]
005afe80  52 32 e5 e7                                      ubfx r3, r2, #4, #6
005afe84  00 10 91 e7                                      ldr r1, [r1, r0]
005afe88  28 00 a0 e3                                      mov r0, #0x28
005afe8c  90 03 03 e0                                      mul r3, r0, r3
005afe90  03 30 91 e7                                      ldr r3, [r1, r3]
005afe94  08 00 13 e3                                      tst r3, #8
005afe98  b9 ff ff 0a                                      beq #0x5afd84
005afe9c  00 00 a0 e3                                      mov r0, #0
005afea0  1c 60 94 e5                                      ldr r6, [r4, #0x1c]
005afea4  fd 36 01 eb                                      bl #0x5fdaa0
005afea8  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
005afeac  2c 31 9f e5                                      ldr r3, [pc, #0x12c]
005afeb0  00 c0 90 e5                                      ldr ip, [r0]
005afeb4  06 20 a0 e1                                      mov r2, r6
005afeb8  03 30 8f e0                                      add r3, pc, r3
005afebc  01 10 8f e0                                      add r1, pc, r1
005afec0  03 00 a0 e3                                      mov r0, #3
005afec4  00 c0 8d e5                                      str ip, [sp]
005afec8  59 6c 01 eb                                      bl #0x60b034
005afecc  38 30 94 e5                                      ldr r3, [r4, #0x38]
005afed0  53 26 e2 e7                                      ubfx r2, r3, #0xc, #3
005afed4  00 00 52 e3                                      cmp r2, #0
005afed8  aa ff ff 0a                                      beq #0x5afd88
005afedc  b0 24 d4 e1                                      ldrh r2, [r4, #0x40]
005afee0  07 3a c3 e3                                      bic r3, r3, #0x7000
005afee4  38 30 84 e5                                      str r3, [r4, #0x38]
005afee8  04 30 82 e3                                      orr r3, r2, #4
005afeec  b0 34 c4 e1                                      strh r3, [r4, #0x40]
005afef0  00 20 a0 e3                                      mov r2, #0
005afef4  a3 ff ff ea                                      b #0x5afd88
005afef8  a8 64 92 e5                                      ldr r6, [r2, #0x4a8]
005afefc  44 70 94 e5                                      ldr r7, [r4, #0x44]
005aff00  06 00 a0 e1                                      mov r0, r6
005aff04  07 10 a0 e1                                      mov r1, r7
005aff08  ff 79 f5 eb                                      bl #0x30e70c
005aff0c  00 00 50 e3                                      cmp r0, #0
005aff10  07 60 a0 01                                      moveq r6, r7
005aff14  06 20 a0 e1                                      mov r2, r6
005aff18  05 00 a0 e1                                      mov r0, r5
005aff1c  fe 14 08 e3                                      movw r1, #0x84fe
005aff20  cd 78 f5 eb                                      bl #0x30e25c
005aff24  34 20 94 e5                                      ldr r2, [r4, #0x34]
005aff28  b0 34 d4 e1                                      ldrh r3, [r4, #0x40]
005aff2c  ae ff ff ea                                      b #0x5afdec
005aff30  50 00 94 e5                                      ldr r0, [r4, #0x50]
005aff34  76 79 f5 eb                                      bl #0x30e514
005aff38  63 79 f5 eb                                      bl #0x30e4cc
005aff3c  00 20 a0 e1                                      mov r2, r0
005aff40  b7 ff ff ea                                      b #0x5afe24
005aff44  98 30 9f e5                                      ldr r3, [pc, #0x98]
005aff48  38 20 94 e5                                      ldr r2, [r4, #0x38]
005aff4c  05 00 a0 e1                                      mov r0, r5
005aff50  03 30 8f e0                                      add r3, pc, r3
005aff54  cc 30 83 e2                                      add r3, r3, #0xcc
005aff58  d2 2a e2 e7                                      ubfx r2, r2, #0x15, #3
005aff5c  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
005aff60  03 18 02 e3                                      movw r1, #0x2803
005aff64  69 7a f5 eb                                      bl #0x30e910
005aff68  b0 34 d4 e1                                      ldrh r3, [r4, #0x40]
005aff6c  93 ff ff ea                                      b #0x5afdc0
005aff70  70 30 9f e5                                      ldr r3, [pc, #0x70]
005aff74  38 20 94 e5                                      ldr r2, [r4, #0x38]
005aff78  05 00 a0 e1                                      mov r0, r5
005aff7c  03 30 8f e0                                      add r3, pc, r3
005aff80  cc 30 83 e2                                      add r3, r3, #0xcc
005aff84  52 29 e2 e7                                      ubfx r2, r2, #0x12, #3
005aff88  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
005aff8c  02 18 02 e3                                      movw r1, #0x2802
005aff90  5e 7a f5 eb                                      bl #0x30e910
005aff94  b0 34 d4 e1                                      ldrh r3, [r4, #0x40]
005aff98  86 ff ff ea                                      b #0x5afdb8
005aff9c  48 30 9f e5                                      ldr r3, [pc, #0x48]
005affa0  38 20 94 e5                                      ldr r2, [r4, #0x38]
005affa4  05 00 a0 e1                                      mov r0, r5
005affa8  03 30 8f e0                                      add r3, pc, r3
005affac  b4 30 83 e2                                      add r3, r3, #0xb4
005affb0  d2 27 e2 e7                                      ubfx r2, r2, #0xf, #3
005affb4  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
005affb8  0a 1b a0 e3                                      mov r1, #0x2800
005affbc  53 7a f5 eb                                      bl #0x30e910
005affc0  b0 34 d4 e1                                      ldrh r3, [r4, #0x40]
005affc4  79 ff ff ea                                      b #0x5afdb0
; mapping-symbol data/literal pool
005affc8  dc 02 33 00 20 4d 3e 00 a0 02 33 00 dc 01 33 00  .byte 0xdc, 0x02, 0x33, 0x00, 0x20, 0x4d, 0x3e, 0x00, 0xa0, 0x02, 0x33, 0x00, 0xdc, 0x01, 0x33, 0x00
005affd8  34 1f 00 00 c4 04 33 00 28 05 33 00 e4 00 33 00  .byte 0x34, 0x1f, 0x00, 0x00, 0xc4, 0x04, 0x33, 0x00, 0x28, 0x05, 0x33, 0x00, 0xe4, 0x00, 0x33, 0x00
005affe8  b8 00 33 00 8c 00 33 00                          .byte 0xb8, 0x00, 0x33, 0x00, 0x8c, 0x00, 0x33, 0x00

; FUNCTION 0x005afff0, declared_size=1116, range_size=1116, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10updateDataEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::updateData(bool) const
; decoder-mode: arm
005afff0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005afff4  40 24 9f e5                                      ldr r2, [pc, #0x440]
005afff8  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005afffc  4c d0 4d e2                                      sub sp, sp, #0x4c
005b0000  02 20 8f e0                                      add r2, pc, r2
005b0004  02 00 13 e3                                      tst r3, #2
005b0008  30 20 8d e5                                      str r2, [sp, #0x30]
005b000c  3e c0 d0 05                                      ldrbeq ip, [r0, #0x3e]
005b0010  01 30 a0 13                                      movne r3, #1
005b0014  3e 90 d0 15                                      ldrbne sb, [r0, #0x3e]
005b0018  40 c0 8d 05                                      streq ip, [sp, #0x40]
005b001c  40 30 8d 15                                      strne r3, [sp, #0x40]
005b0020  2c 20 90 e5                                      ldr r2, [r0, #0x2c]
005b0024  30 30 90 e5                                      ldr r3, [r0, #0x30]
005b0028  38 40 90 e5                                      ldr r4, [r0, #0x38]
005b002c  09 80 a0 11                                      movne r8, sb
005b0030  0c 80 a0 01                                      moveq r8, ip
005b0034  01 90 a0 03                                      moveq sb, #1
005b0038  01 80 88 e2                                      add r8, r8, #1
005b003c  00 00 52 e3                                      cmp r2, #0
005b0040  00 50 a0 e1                                      mov r5, r0
005b0044  01 b0 a0 e1                                      mov fp, r1
005b0048  08 81 83 e0                                      add r8, r3, r8, lsl #2
005b004c  54 42 e5 e7                                      ubfx r4, r4, #4, #6
005b0050  34 a0 90 e5                                      ldr sl, [r0, #0x34]
005b0054  0e 00 00 0a                                      beq #0x5b0094
005b0058  04 00 a0 e1                                      mov r0, r4
005b005c  20 10 95 e5                                      ldr r1, [r5, #0x20]
005b0060  a1 f6 00 eb                                      bl #0x5edaec
005b0064  34 60 95 e5                                      ldr r6, [r5, #0x34]
005b0068  01 00 10 e3                                      tst r0, #1
005b006c  03 00 00 e2                                      and r0, r0, #3
005b0070  6c 32 96 e5                                      ldr r3, [r6, #0x26c]
005b0074  01 70 a0 13                                      movne r7, #1
005b0078  04 70 60 02                                      rsbeq r7, r0, #4
005b007c  03 00 57 e1                                      cmp r7, r3
005b0080  03 00 00 0a                                      beq #0x5b0094
005b0084  f5 0c 00 e3                                      movw r0, #0xcf5
005b0088  07 10 a0 e1                                      mov r1, r7
005b008c  36 78 f5 eb                                      bl #0x30e16c
005b0090  6c 72 86 e5                                      str r7, [r6, #0x26c]
005b0094  43 78 f5 eb                                      bl #0x30e1a8
005b0098  14 30 a0 e3                                      mov r3, #0x14
005b009c  93 a4 23 e0                                      mla r3, r3, r4, sl
005b00a0  00 10 a0 e3                                      mov r1, #0
005b00a4  34 30 8d e5                                      str r3, [sp, #0x34]
005b00a8  38 20 95 e5                                      ldr r2, [r5, #0x38]
005b00ac  8c 33 9f e5                                      ldr r3, [pc, #0x38c]
005b00b0  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005b00b4  03 20 02 e2                                      and r2, r2, #3
005b00b8  02 00 52 e3                                      cmp r2, #2
005b00bc  03 30 8f e0                                      add r3, pc, r3
005b00c0  4b ce 8c e2                                      add ip, ip, #0x4b0
005b00c4  06 20 a0 03                                      moveq r2, #6
005b00c8  01 20 a0 13                                      movne r2, #1
005b00cc  04 c0 8c e2                                      add ip, ip, #4
005b00d0  a4 30 83 e2                                      add r3, r3, #0xa4
005b00d4  20 10 8d e5                                      str r1, [sp, #0x20]
005b00d8  44 20 8d e5                                      str r2, [sp, #0x44]
005b00dc  3c c0 8d e5                                      str ip, [sp, #0x3c]
005b00e0  38 30 8d e5                                      str r3, [sp, #0x38]
005b00e4  24 10 8d e5                                      str r1, [sp, #0x24]
005b00e8  01 40 a0 e1                                      mov r4, r1
005b00ec  40 20 9d e5                                      ldr r2, [sp, #0x40]
005b00f0  00 00 52 e3                                      cmp r2, #0
005b00f4  58 00 00 0a                                      beq #0x5b025c
005b00f8  34 30 9d e5                                      ldr r3, [sp, #0x34]
005b00fc  01 a0 42 e2                                      sub sl, r2, #1
005b0100  3c c3 9f e5                                      ldr ip, [pc, #0x33c]
005b0104  7a a0 ef e6                                      uxtb sl, sl
005b0108  4b 3e 83 e2                                      add r3, r3, #0x4b0
005b010c  01 a0 8a e2                                      add sl, sl, #1
005b0110  00 60 a0 e3                                      mov r6, #0
005b0114  08 30 83 e2                                      add r3, r3, #8
005b0118  0a a1 a0 e1                                      lsl sl, sl, #2
005b011c  2c 30 8d e5                                      str r3, [sp, #0x2c]
005b0120  06 70 a0 e1                                      mov r7, r6
005b0124  28 c0 8d e5                                      str ip, [sp, #0x28]
005b0128  00 30 98 e5                                      ldr r3, [r8]
005b012c  01 20 a0 e3                                      mov r2, #1
005b0130  12 34 13 e0                                      ands r3, r3, r2, lsl r4
005b0134  3f 00 00 0a                                      beq #0x5b0238
005b0138  2c e0 95 e5                                      ldr lr, [r5, #0x2c]
005b013c  00 00 5e e3                                      cmp lr, #0
005b0140  08 00 00 0a                                      beq #0x5b0168
005b0144  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b0148  02 00 13 e3                                      tst r3, #2
005b014c  4a 00 00 0a                                      beq #0x5b027c
005b0150  30 30 95 e5                                      ldr r3, [r5, #0x30]
005b0154  20 10 9d e5                                      ldr r1, [sp, #0x20]
005b0158  0c 00 93 e8                                      ldm r3, {r2, r3}
005b015c  03 20 62 e0                                      rsb r2, r2, r3
005b0160  92 01 02 e0                                      mul r2, r2, r1
005b0164  02 e0 8e e0                                      add lr, lr, r2
005b0168  20 30 95 e5                                      ldr r3, [r5, #0x20]
005b016c  24 10 95 e5                                      ldr r1, [r5, #0x24]
005b0170  38 20 95 e5                                      ldr r2, [r5, #0x38]
005b0174  53 37 a0 e1                                      asr r3, r3, r7
005b0178  51 17 a0 e1                                      asr r1, r1, r7
005b017c  03 00 02 e2                                      and r0, r2, #3
005b0180  01 00 53 e3                                      cmp r3, #1
005b0184  01 30 a0 b3                                      movlt r3, #1
005b0188  01 00 51 e3                                      cmp r1, #1
005b018c  01 10 a0 b3                                      movlt r1, #1
005b0190  01 00 50 e3                                      cmp r0, #1
005b0194  22 00 00 0a                                      beq #0x5b0224
005b0198  02 00 50 e3                                      cmp r0, #2
005b019c  24 c0 9d 05                                      ldreq ip, [sp, #0x24]
005b01a0  38 c0 9d 15                                      ldrne ip, [sp, #0x38]
005b01a4  52 22 e5 e7                                      ubfx r2, r2, #4, #6
005b01a8  85 0c 8c 02                                      addeq r0, ip, #0x8500
005b01ac  00 01 9c 17                                      ldrne r0, [ip, r0, lsl #2]
005b01b0  28 c0 a0 e3                                      mov ip, #0x28
005b01b4  9c 02 0c e0                                      mul ip, ip, r2
005b01b8  28 20 9d e5                                      ldr r2, [sp, #0x28]
005b01bc  18 c0 8d e5                                      str ip, [sp, #0x18]
005b01c0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005b01c4  15 00 80 02                                      addeq r0, r0, #0x15
005b01c8  02 20 9c e7                                      ldr r2, [ip, r2]
005b01cc  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005b01d0  0c c0 92 e7                                      ldr ip, [r2, ip]
005b01d4  1c c0 8d e5                                      str ip, [sp, #0x1c]
005b01d8  08 c0 1c e2                                      ands ip, ip, #8
005b01dc  2f 00 00 0a                                      beq #0x5b02a0
005b01e0  00 00 5b e3                                      cmp fp, #0
005b01e4  3e 00 00 0a                                      beq #0x5b02e4
005b01e8  34 20 9d e5                                      ldr r2, [sp, #0x34]
005b01ec  30 c0 95 e5                                      ldr ip, [r5, #0x30]
005b01f0  b0 24 92 e5                                      ldr r2, [r2, #0x4b0]
005b01f4  00 10 8d e5                                      str r1, [sp]
005b01f8  00 10 a0 e3                                      mov r1, #0
005b01fc  04 10 8d e5                                      str r1, [sp, #4]
005b0200  1c 20 8d e5                                      str r2, [sp, #0x1c]
005b0204  06 10 8c e0                                      add r1, ip, r6
005b0208  04 10 91 e5                                      ldr r1, [r1, #4]
005b020c  06 c0 9c e7                                      ldr ip, [ip, r6]
005b0210  0c e0 8d e5                                      str lr, [sp, #0xc]
005b0214  01 c0 6c e0                                      rsb ip, ip, r1
005b0218  07 10 a0 e1                                      mov r1, r7
005b021c  08 c0 8d e5                                      str ip, [sp, #8]
005b0220  c5 7a f5 eb                                      bl #0x30ed3c
005b0224  df 77 f5 eb                                      bl #0x30e1a8
005b0228  00 00 50 e3                                      cmp r0, #0
005b022c  3f 30 d5 15                                      ldrbne r3, [r5, #0x3f]
005b0230  10 30 83 13                                      orrne r3, r3, #0x10
005b0234  3f 30 c5 15                                      strbne r3, [r5, #0x3f]
005b0238  09 40 84 e0                                      add r4, r4, sb
005b023c  1f 00 54 e3                                      cmp r4, #0x1f
005b0240  00 30 a0 83                                      movhi r3, #0
005b0244  04 60 86 e2                                      add r6, r6, #4
005b0248  04 30 88 84                                      strhi r3, [r8], #4
005b024c  20 40 44 82                                      subhi r4, r4, #0x20
005b0250  0a 00 56 e1                                      cmp r6, sl
005b0254  01 70 87 e2                                      add r7, r7, #1
005b0258  b2 ff ff 1a                                      bne #0x5b0128
005b025c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
005b0260  44 10 9d e5                                      ldr r1, [sp, #0x44]
005b0264  01 c0 8c e2                                      add ip, ip, #1
005b0268  01 00 5c e1                                      cmp ip, r1
005b026c  24 c0 8d e5                                      str ip, [sp, #0x24]
005b0270  3a 00 00 aa                                      bge #0x5b0360
005b0274  20 c0 8d e5                                      str ip, [sp, #0x20]
005b0278  9b ff ff ea                                      b #0x5b00ec
005b027c  30 30 95 e5                                      ldr r3, [r5, #0x30]
005b0280  3e 10 d5 e5                                      ldrb r1, [r5, #0x3e]
005b0284  20 c0 9d e5                                      ldr ip, [sp, #0x20]
005b0288  06 20 93 e7                                      ldr r2, [r3, r6]
005b028c  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
005b0290  7f 30 83 e2                                      add r3, r3, #0x7f
005b0294  7f 30 c3 e3                                      bic r3, r3, #0x7f
005b0298  93 2c 22 e0                                      mla r2, r3, ip, r2
005b029c  b0 ff ff ea                                      b #0x5b0164
005b02a0  00 00 5b e3                                      cmp fp, #0
005b02a4  1f 00 00 0a                                      beq #0x5b0328
005b02a8  34 20 9d e5                                      ldr r2, [sp, #0x34]
005b02ac  b0 24 92 e5                                      ldr r2, [r2, #0x4b0]
005b02b0  04 c0 8d e5                                      str ip, [sp, #4]
005b02b4  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
005b02b8  1c 20 8d e5                                      str r2, [sp, #0x1c]
005b02bc  00 10 8d e5                                      str r1, [sp]
005b02c0  00 10 9c e5                                      ldr r1, [ip]
005b02c4  08 10 8d e5                                      str r1, [sp, #8]
005b02c8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
005b02cc  00 c0 91 e5                                      ldr ip, [r1]
005b02d0  07 10 a0 e1                                      mov r1, r7
005b02d4  10 e0 8d e5                                      str lr, [sp, #0x10]
005b02d8  0c c0 8d e5                                      str ip, [sp, #0xc]
005b02dc  4b 77 f5 eb                                      bl #0x30e010
005b02e0  cf ff ff ea                                      b #0x5b0224
005b02e4  34 20 9d e5                                      ldr r2, [sp, #0x34]
005b02e8  04 10 8d e5                                      str r1, [sp, #4]
005b02ec  00 30 8d e5                                      str r3, [sp]
005b02f0  b0 34 92 e5                                      ldr r3, [r2, #0x4b0]
005b02f4  30 20 95 e5                                      ldr r2, [r5, #0x30]
005b02f8  07 10 a0 e1                                      mov r1, r7
005b02fc  08 30 8d e5                                      str r3, [sp, #8]
005b0300  06 30 82 e0                                      add r3, r2, r6
005b0304  06 c0 92 e7                                      ldr ip, [r2, r6]
005b0308  04 30 93 e5                                      ldr r3, [r3, #4]
005b030c  0b 20 a0 e1                                      mov r2, fp
005b0310  10 e0 8d e5                                      str lr, [sp, #0x10]
005b0314  03 c0 6c e0                                      rsb ip, ip, r3
005b0318  0b 30 a0 e1                                      mov r3, fp
005b031c  0c c0 8d e5                                      str ip, [sp, #0xc]
005b0320  9e 76 f5 eb                                      bl #0x30dda0
005b0324  be ff ff ea                                      b #0x5b0224
005b0328  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005b032c  04 10 8d e5                                      str r1, [sp, #4]
005b0330  00 30 8d e5                                      str r3, [sp]
005b0334  00 30 92 e5                                      ldr r3, [r2]
005b0338  07 10 a0 e1                                      mov r1, r7
005b033c  0b 20 a0 e1                                      mov r2, fp
005b0340  08 30 8d e5                                      str r3, [sp, #8]
005b0344  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005b0348  00 c0 93 e5                                      ldr ip, [r3]
005b034c  0b 30 a0 e1                                      mov r3, fp
005b0350  10 e0 8d e5                                      str lr, [sp, #0x10]
005b0354  0c c0 8d e5                                      str ip, [sp, #0xc]
005b0358  fc 79 f5 eb                                      bl #0x30eb50
005b035c  b0 ff ff ea                                      b #0x5b0224
005b0360  00 00 54 e3                                      cmp r4, #0
005b0364  00 30 a0 13                                      movne r3, #0
005b0368  00 30 88 15                                      strne r3, [r8]
005b036c  b0 24 d5 e1                                      ldrh r2, [r5, #0x40]
005b0370  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b0374  03 20 c2 e3                                      bic r2, r2, #3
005b0378  10 00 13 e3                                      tst r3, #0x10
005b037c  b0 24 c5 e1                                      strh r2, [r5, #0x40]
005b0380  16 00 00 1a                                      bne #0x5b03e0
005b0384  3e 20 d5 e5                                      ldrb r2, [r5, #0x3e]
005b0388  01 00 52 e3                                      cmp r2, #1
005b038c  13 00 00 9a                                      bls #0x5b03e0
005b0390  02 00 13 e3                                      tst r3, #2
005b0394  11 00 00 0a                                      beq #0x5b03e0
005b0398  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
005b039c  00 00 53 e3                                      cmp r3, #0
005b03a0  1a 00 00 0a                                      beq #0x5b0410
005b03a4  30 10 9d e5                                      ldr r1, [sp, #0x30]
005b03a8  38 30 95 e5                                      ldr r3, [r5, #0x38]
005b03ac  90 20 9f e5                                      ldr r2, [pc, #0x90]
005b03b0  53 32 e5 e7                                      ubfx r3, r3, #4, #6
005b03b4  02 20 91 e7                                      ldr r2, [r1, r2]
005b03b8  28 10 a0 e3                                      mov r1, #0x28
005b03bc  91 03 03 e0                                      mul r3, r1, r3
005b03c0  03 30 92 e7                                      ldr r3, [r2, r3]
005b03c4  08 00 13 e3                                      tst r3, #8
005b03c8  07 00 00 0a                                      beq #0x5b03ec
005b03cc  74 10 9f e5                                      ldr r1, [pc, #0x74]
005b03d0  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
005b03d4  02 00 a0 e3                                      mov r0, #2
005b03d8  01 10 8f e0                                      add r1, pc, r1
005b03dc  14 6b 01 eb                                      bl #0x60b034
005b03e0  01 00 a0 e3                                      mov r0, #1
005b03e4  4c d0 8d e2                                      add sp, sp, #0x4c
005b03e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005b03ec  34 30 95 e5                                      ldr r3, [r5, #0x34]
005b03f0  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
005b03f4  04 00 13 e3                                      tst r3, #4
005b03f8  f8 ff ff 0a                                      beq #0x5b03e0
005b03fc  05 00 a0 e1                                      mov r0, r5
005b0400  00 30 95 e5                                      ldr r3, [r5]
005b0404  0f e0 a0 e1                                      mov lr, pc
005b0408  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005b040c  f3 ff ff ea                                      b #0x5b03e0
005b0410  38 30 95 e5                                      ldr r3, [r5, #0x38]
005b0414  28 20 9f e5                                      ldr r2, [pc, #0x28]
005b0418  30 c0 9d e5                                      ldr ip, [sp, #0x30]
005b041c  53 32 e5 e7                                      ubfx r3, r3, #4, #6
005b0420  28 10 a0 e3                                      mov r1, #0x28
005b0424  02 20 9c e7                                      ldr r2, [ip, r2]
005b0428  91 03 03 e0                                      mul r3, r1, r3
005b042c  03 30 92 e7                                      ldr r3, [r2, r3]
005b0430  08 00 13 e3                                      tst r3, #8
005b0434  e9 ff ff 0a                                      beq #0x5b03e0
005b0438  e3 ff ff ea                                      b #0x5b03cc
; mapping-symbol data/literal pool
005b043c  90 4a 3e 00 78 ff 32 00 34 1f 00 00 20 00 33 00  .byte 0x90, 0x4a, 0x3e, 0x00, 0x78, 0xff, 0x32, 0x00, 0x34, 0x1f, 0x00, 0x00, 0x20, 0x00, 0x33, 0x00

; FUNCTION 0x005b044c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZNK6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture6updateEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::update(bool) const
; decoder-mode: arm
005b044c  70 40 2d e9                                      push {r4, r5, r6, lr}
005b0450  b0 34 d0 e1                                      ldrh r3, [r0, #0x40]
005b0454  00 40 a0 e1                                      mov r4, r0
005b0458  01 50 a0 e1                                      mov r5, r1
005b045c  03 20 c3 e3                                      bic r2, r3, #3
005b0460  82 29 a0 e1                                      lsl r2, r2, #0x13
005b0464  a2 29 a0 e1                                      lsr r2, r2, #0x13
005b0468  00 00 52 e3                                      cmp r2, #0
005b046c  06 00 00 1a                                      bne #0x5b048c
005b0470  01 00 13 e2                                      ands r0, r3, #1
005b0474  00 00 00 1a                                      bne #0x5b047c
005b0478  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b047c  04 00 a0 e1                                      mov r0, r4
005b0480  05 10 a0 e1                                      mov r1, r5
005b0484  70 40 bd e8                                      pop {r4, r5, r6, lr}
005b0488  d8 fe ff ea                                      b #0x5afff0
005b048c  2b fe ff eb                                      bl #0x5afd40
005b0490  b0 34 d4 e1                                      ldrh r3, [r4, #0x40]
005b0494  f5 ff ff ea                                      b #0x5b0470

; FUNCTION 0x005b280c, declared_size=208, range_size=208, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture19generateMipmapsImplEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::generateMipmapsImpl()
; decoder-mode: arm
005b280c  70 40 2d e9                                      push {r4, r5, r6, lr}
005b2810  00 40 a0 e1                                      mov r4, r0
005b2814  34 00 90 e5                                      ldr r0, [r0, #0x34]
005b2818  38 30 94 e5                                      ldr r3, [r4, #0x38]
005b281c  04 20 a0 e1                                      mov r2, r4
005b2820  4c 50 90 e5                                      ldr r5, [r0, #0x4c]
005b2824  03 30 03 e2                                      and r3, r3, #3
005b2828  01 50 45 e2                                      sub r5, r5, #1
005b282c  05 10 a0 e1                                      mov r1, r5
005b2830  ae ff ff eb                                      bl #0x5b26f0
005b2834  34 60 94 e5                                      ldr r6, [r4, #0x34]
005b2838  68 32 96 e5                                      ldr r3, [r6, #0x268]
005b283c  03 00 55 e1                                      cmp r5, r3
005b2840  03 00 00 0a                                      beq #0x5b2854
005b2844  21 0b 85 e2                                      add r0, r5, #0x8400
005b2848  c0 00 80 e2                                      add r0, r0, #0xc0
005b284c  64 6e f5 eb                                      bl #0x30e1e4
005b2850  68 52 86 e5                                      str r5, [r6, #0x268]
005b2854  38 30 94 e5                                      ldr r3, [r4, #0x38]
005b2858  78 50 9f e5                                      ldr r5, [pc, #0x78]
005b285c  53 26 e2 e7                                      ubfx r2, r3, #0xc, #3
005b2860  05 50 8f e0                                      add r5, pc, r5
005b2864  01 00 52 e3                                      cmp r2, #1
005b2868  03 30 03 e2                                      and r3, r3, #3
005b286c  a4 20 85 e2                                      add r2, r5, #0xa4
005b2870  03 61 92 e7                                      ldr r6, [r2, r3, lsl #2]
005b2874  09 00 00 da                                      ble #0x5b28a0
005b2878  06 00 a0 e1                                      mov r0, r6
005b287c  bb 6e f5 eb                                      bl #0x30e370
005b2880  3f 30 d4 e5                                      ldrb r3, [r4, #0x3f]
005b2884  02 00 13 e3                                      tst r3, #2
005b2888  03 00 00 1a                                      bne #0x5b289c
005b288c  b0 34 d4 e1                                      ldrh r3, [r4, #0x40]
005b2890  02 30 83 e3                                      orr r3, r3, #2
005b2894  b0 34 c4 e1                                      strh r3, [r4, #0x40]
005b2898  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b289c  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b28a0  01 18 02 e3                                      movw r1, #0x2801
005b28a4  27 2c a0 e3                                      mov r2, #0x2700
005b28a8  06 00 a0 e1                                      mov r0, r6
005b28ac  17 70 f5 eb                                      bl #0x30e910
005b28b0  06 00 a0 e1                                      mov r0, r6
005b28b4  ad 6e f5 eb                                      bl #0x30e370
005b28b8  38 30 94 e5                                      ldr r3, [r4, #0x38]
005b28bc  b4 50 85 e2                                      add r5, r5, #0xb4
005b28c0  06 00 a0 e1                                      mov r0, r6
005b28c4  53 36 e2 e7                                      ubfx r3, r3, #0xc, #3
005b28c8  03 21 95 e7                                      ldr r2, [r5, r3, lsl #2]
005b28cc  01 18 02 e3                                      movw r1, #0x2801
005b28d0  0e 70 f5 eb                                      bl #0x30e910
005b28d4  e9 ff ff ea                                      b #0x5b2880
; mapping-symbol data/literal pool
005b28d8  d4 d7 32 00                                      .byte 0xd4, 0xd7, 0x32, 0x00

; FUNCTION 0x005b28dc, declared_size=340, range_size=340, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture10unbindImplEv
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::unbindImpl()
; decoder-mode: arm
005b28dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005b28e0  34 30 90 e5                                      ldr r3, [r0, #0x34]
005b28e4  38 70 90 e5                                      ldr r7, [r0, #0x38]
005b28e8  00 50 a0 e1                                      mov r5, r0
005b28ec  4c 60 93 e5                                      ldr r6, [r3, #0x4c]
005b28f0  03 70 07 e2                                      and r7, r7, #3
005b28f4  42 3e 83 e2                                      add r3, r3, #0x420
005b28f8  00 00 56 e3                                      cmp r6, #0
005b28fc  87 72 83 e0                                      add r7, r3, r7, lsl #5
005b2900  06 00 00 0a                                      beq #0x5b2920
005b2904  00 40 a0 e3                                      mov r4, #0
005b2908  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
005b290c  05 00 53 e1                                      cmp r3, r5
005b2910  29 00 00 0a                                      beq #0x5b29bc
005b2914  01 40 84 e2                                      add r4, r4, #1
005b2918  06 00 54 e1                                      cmp r4, r6
005b291c  f9 ff ff 1a                                      bne #0x5b2908
005b2920  01 00 a0 e3                                      mov r0, #1
005b2924  54 10 85 e2                                      add r1, r5, #0x54
005b2928  ef 6f f5 eb                                      bl #0x30e8ec
005b292c  b0 04 d5 e1                                      ldrh r0, [r5, #0x40]
005b2930  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b2934  00 20 a0 e3                                      mov r2, #0
005b2938  02 00 c0 e3                                      bic r0, r0, #2
005b293c  e7 30 03 e2                                      and r3, r3, #0xe7
005b2940  7f 0d 80 e3                                      orr r0, r0, #0x1fc0
005b2944  3c 00 80 e3                                      orr r0, r0, #0x3c
005b2948  02 00 13 e3                                      tst r3, #2
005b294c  54 20 85 e5                                      str r2, [r5, #0x54]
005b2950  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b2954  b0 04 c5 e1                                      strh r0, [r5, #0x40]
005b2958  1e 00 00 0a                                      beq #0x5b29d8
005b295c  38 70 95 e5                                      ldr r7, [r5, #0x38]
005b2960  3e 10 d5 e5                                      ldrb r1, [r5, #0x3e]
005b2964  01 00 80 e3                                      orr r0, r0, #1
005b2968  03 70 07 e2                                      and r7, r7, #3
005b296c  02 00 57 e3                                      cmp r7, #2
005b2970  b0 04 c5 e1                                      strh r0, [r5, #0x40]
005b2974  06 70 a0 03                                      moveq r7, #6
005b2978  01 70 a0 13                                      movne r7, #1
005b297c  02 30 a0 e1                                      mov r3, r2
005b2980  01 60 a0 e3                                      mov r6, #1
005b2984  30 c0 95 e5                                      ldr ip, [r5, #0x30]
005b2988  01 10 81 e2                                      add r1, r1, #1
005b298c  a3 02 a0 e1                                      lsr r0, r3, #5
005b2990  01 11 8c e0                                      add r1, ip, r1, lsl #2
005b2994  00 c1 91 e7                                      ldr ip, [r1, r0, lsl #2]
005b2998  1f 40 03 e2                                      and r4, r3, #0x1f
005b299c  01 20 82 e2                                      add r2, r2, #1
005b29a0  16 c4 8c e1                                      orr ip, ip, r6, lsl r4
005b29a4  00 c1 81 e7                                      str ip, [r1, r0, lsl #2]
005b29a8  3e 10 d5 e5                                      ldrb r1, [r5, #0x3e]
005b29ac  07 00 52 e1                                      cmp r2, r7
005b29b0  01 30 83 e0                                      add r3, r3, r1
005b29b4  f2 ff ff ba                                      blt #0x5b2984
005b29b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005b29bc  38 30 95 e5                                      ldr r3, [r5, #0x38]
005b29c0  04 10 a0 e1                                      mov r1, r4
005b29c4  34 00 95 e5                                      ldr r0, [r5, #0x34]
005b29c8  03 30 03 e2                                      and r3, r3, #3
005b29cc  00 20 a0 e3                                      mov r2, #0
005b29d0  46 ff ff eb                                      bl #0x5b26f0
005b29d4  ce ff ff ea                                      b #0x5b2914
005b29d8  38 c0 95 e5                                      ldr ip, [r5, #0x38]
005b29dc  3e 20 d5 e5                                      ldrb r2, [r5, #0x3e]
005b29e0  30 30 95 e5                                      ldr r3, [r5, #0x30]
005b29e4  03 c0 0c e2                                      and ip, ip, #3
005b29e8  02 00 5c e3                                      cmp ip, #2
005b29ec  06 c0 a0 03                                      moveq ip, #6
005b29f0  01 c0 a0 13                                      movne ip, #1
005b29f4  92 0c 0c e0                                      mul ip, r2, ip
005b29f8  01 10 82 e2                                      add r1, r2, #1
005b29fc  1f 20 8c e2                                      add r2, ip, #0x1f
005b2a00  a2 22 a0 e1                                      lsr r2, r2, #5
005b2a04  01 31 83 e0                                      add r3, r3, r1, lsl #2
005b2a08  02 21 83 e0                                      add r2, r3, r2, lsl #2
005b2a0c  01 00 80 e3                                      orr r0, r0, #1
005b2a10  02 00 53 e1                                      cmp r3, r2
005b2a14  b0 04 c5 e1                                      strh r0, [r5, #0x40]
005b2a18  03 00 00 0a                                      beq #0x5b2a2c
005b2a1c  00 10 e0 e3                                      mvn r1, #0
005b2a20  04 10 83 e4                                      str r1, [r3], #4
005b2a24  03 00 52 e1                                      cmp r2, r3
005b2a28  fc ff ff 1a                                      bne #0x5b2a20
005b2a2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005b2a30, declared_size=116, range_size=116, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTextureD1Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture()
; decoder-mode: arm
005b2a30  70 40 2d e9                                      push {r4, r5, r6, lr}
005b2a34  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
005b2a38  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
005b2a3c  3f 20 d0 e5                                      ldrb r2, [r0, #0x3f]
005b2a40  05 50 8f e0                                      add r5, pc, r5
005b2a44  03 30 95 e7                                      ldr r3, [r5, r3]
005b2a48  20 00 12 e3                                      tst r2, #0x20
005b2a4c  00 40 a0 e1                                      mov r4, r0
005b2a50  08 30 83 e2                                      add r3, r3, #8
005b2a54  00 30 80 e5                                      str r3, [r0]
005b2a58  0b 00 00 1a                                      bne #0x5b2a8c
005b2a5c  08 00 12 e3                                      tst r2, #8
005b2a60  01 00 00 0a                                      beq #0x5b2a6c
005b2a64  04 00 a0 e1                                      mov r0, r4
005b2a68  9b ff ff eb                                      bl #0x5b28dc
005b2a6c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
005b2a70  04 00 a0 e1                                      mov r0, r4
005b2a74  03 30 95 e7                                      ldr r3, [r5, r3]
005b2a78  08 30 83 e2                                      add r3, r3, #8
005b2a7c  00 30 84 e5                                      str r3, [r4]
005b2a80  44 2e 01 eb                                      bl #0x5fe398
005b2a84  04 00 a0 e1                                      mov r0, r4
005b2a88  70 80 bd e8                                      pop {r4, r5, r6, pc}
005b2a8c  58 a8 04 eb                                      bl #0x6dcbf4
005b2a90  3f 20 d4 e5                                      ldrb r2, [r4, #0x3f]
005b2a94  f0 ff ff ea                                      b #0x5b2a5c
; mapping-symbol data/literal pool
005b2a98  50 20 3e 00 68 09 00 00 10 3c 00 00              .byte 0x50, 0x20, 0x3e, 0x00, 0x68, 0x09, 0x00, 0x00, 0x10, 0x3c, 0x00, 0x00

; FUNCTION 0x005b2aa4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTextureD0Ev
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::~CTexture()
; decoder-mode: arm
005b2aa4  10 40 2d e9                                      push {r4, lr}
005b2aa8  00 40 a0 e1                                      mov r4, r0
005b2aac  df ff ff eb                                      bl #0x5b2a30
005b2ab0  04 00 a0 e1                                      mov r0, r4
005b2ab4  fd 6d f5 eb                                      bl #0x30e2b0
005b2ab8  04 00 a0 e1                                      mov r0, r4
005b2abc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005b5610, declared_size=768, range_size=768, mode=arm
; class-group: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture
; alias: _ZN6glitch5video15CCommonGLDriverINS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEENS0_6detail33CProgrammableGLFunctionPointerSetEE8CTexture8bindImplEb
; demangled: glitch::video::CCommonGLDriver<glitch::video::CProgrammableGLDriver<glitch::video::CGLSLShaderHandler>, glitch::video::detail::CProgrammableGLFunctionPointerSet>::CTexture::bindImpl(bool)
; decoder-mode: arm
005b5610  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005b5614  54 30 90 e5                                      ldr r3, [r0, #0x54]
005b5618  34 40 90 e5                                      ldr r4, [r0, #0x34]
005b561c  38 70 90 e5                                      ldr r7, [r0, #0x38]
005b5620  d8 62 9f e5                                      ldr r6, [pc, #0x2d8]
005b5624  00 00 53 e3                                      cmp r3, #0
005b5628  03 70 07 e2                                      and r7, r7, #3
005b562c  42 3e 84 e2                                      add r3, r4, #0x420
005b5630  00 50 a0 e1                                      mov r5, r0
005b5634  87 72 83 e0                                      add r7, r3, r7, lsl #5
005b5638  06 60 8f e0                                      add r6, pc, r6
005b563c  01 80 a0 e1                                      mov r8, r1
005b5640  35 00 00 0a                                      beq #0x5b571c
005b5644  68 32 94 e5                                      ldr r3, [r4, #0x268]
005b5648  03 21 97 e7                                      ldr r2, [r7, r3, lsl #2]
005b564c  00 00 52 e1                                      cmp r2, r0
005b5650  13 00 00 0a                                      beq #0x5b56a4
005b5654  4c 60 94 e5                                      ldr r6, [r4, #0x4c]
005b5658  01 60 46 e2                                      sub r6, r6, #1
005b565c  06 00 53 e1                                      cmp r3, r6
005b5660  03 00 00 0a                                      beq #0x5b5674
005b5664  21 0b 86 e2                                      add r0, r6, #0x8400
005b5668  c0 00 80 e2                                      add r0, r0, #0xc0
005b566c  dc 62 f5 eb                                      bl #0x30e1e4
005b5670  68 62 84 e5                                      str r6, [r4, #0x268]
005b5674  06 31 97 e7                                      ldr r3, [r7, r6, lsl #2]
005b5678  03 00 55 e1                                      cmp r5, r3
005b567c  08 00 00 0a                                      beq #0x5b56a4
005b5680  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
005b5684  38 20 95 e5                                      ldr r2, [r5, #0x38]
005b5688  54 10 95 e5                                      ldr r1, [r5, #0x54]
005b568c  03 30 8f e0                                      add r3, pc, r3
005b5690  a4 30 83 e2                                      add r3, r3, #0xa4
005b5694  03 20 02 e2                                      and r2, r2, #3
005b5698  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005b569c  47 64 f5 eb                                      bl #0x30e7c0
005b56a0  06 51 87 e7                                      str r5, [r7, r6, lsl #2]
005b56a4  58 10 d5 e5                                      ldrb r1, [r5, #0x58]
005b56a8  00 00 51 e3                                      cmp r1, #0
005b56ac  5d 00 00 1a                                      bne #0x5b5828
005b56b0  b0 44 d5 e1                                      ldrh r4, [r5, #0x40]
005b56b4  02 40 c4 e3                                      bic r4, r4, #2
005b56b8  84 49 a0 e1                                      lsl r4, r4, #0x13
005b56bc  a4 49 a0 e1                                      lsr r4, r4, #0x13
005b56c0  00 00 54 e3                                      cmp r4, #0
005b56c4  5c 00 00 1a                                      bne #0x5b583c
005b56c8  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b56cc  10 10 03 e2                                      and r1, r3, #0x10
005b56d0  71 10 ef e6                                      uxtb r1, r1
005b56d4  00 00 51 e3                                      cmp r1, #0
005b56d8  04 00 00 0a                                      beq #0x5b56f0
005b56dc  54 30 95 e5                                      ldr r3, [r5, #0x54]
005b56e0  00 00 53 e3                                      cmp r3, #0
005b56e4  5e 00 00 1a                                      bne #0x5b5864
005b56e8  04 00 a0 e1                                      mov r0, r4
005b56ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005b56f0  00 00 58 e3                                      cmp r8, #0
005b56f4  fb ff ff 0a                                      beq #0x5b56e8
005b56f8  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
005b56fc  00 00 52 e3                                      cmp r2, #0
005b5700  f8 ff ff 0a                                      beq #0x5b56e8
005b5704  05 00 a0 e1                                      mov r0, r5
005b5708  d3 30 e0 e7                                      ubfx r3, r3, #1, #1
005b570c  01 20 a0 e3                                      mov r2, #1
005b5710  17 22 01 eb                                      bl #0x5fdf74
005b5714  04 00 a0 e1                                      mov r0, r4
005b5718  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005b571c  3f 30 d0 e5                                      ldrb r3, [r0, #0x3f]
005b5720  54 10 85 e2                                      add r1, r5, #0x54
005b5724  01 00 a0 e3                                      mov r0, #1
005b5728  10 30 c3 e3                                      bic r3, r3, #0x10
005b572c  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b5730  7f 64 f5 eb                                      bl #0x30e934
005b5734  54 10 95 e5                                      ldr r1, [r5, #0x54]
005b5738  00 00 51 e3                                      cmp r1, #0
005b573c  43 00 00 0a                                      beq #0x5b5850
005b5740  34 a0 95 e5                                      ldr sl, [r5, #0x34]
005b5744  68 32 9a e5                                      ldr r3, [sl, #0x268]
005b5748  03 21 97 e7                                      ldr r2, [r7, r3, lsl #2]
005b574c  05 00 52 e1                                      cmp r2, r5
005b5750  09 00 00 0a                                      beq #0x5b577c
005b5754  4c 40 9a e5                                      ldr r4, [sl, #0x4c]
005b5758  01 40 44 e2                                      sub r4, r4, #1
005b575c  04 00 53 e1                                      cmp r3, r4
005b5760  03 00 00 0a                                      beq #0x5b5774
005b5764  21 0b 84 e2                                      add r0, r4, #0x8400
005b5768  c0 00 80 e2                                      add r0, r0, #0xc0
005b576c  9c 62 f5 eb                                      bl #0x30e1e4
005b5770  68 42 8a e5                                      str r4, [sl, #0x268]
005b5774  04 51 87 e7                                      str r5, [r7, r4, lsl #2]
005b5778  54 10 95 e5                                      ldr r1, [r5, #0x54]
005b577c  84 31 9f e5                                      ldr r3, [pc, #0x184]
005b5780  38 20 95 e5                                      ldr r2, [r5, #0x38]
005b5784  03 30 8f e0                                      add r3, pc, r3
005b5788  a4 30 83 e2                                      add r3, r3, #0xa4
005b578c  03 20 02 e2                                      and r2, r2, #3
005b5790  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
005b5794  09 64 f5 eb                                      bl #0x30e7c0
005b5798  3e 30 d5 e5                                      ldrb r3, [r5, #0x3e]
005b579c  38 20 95 e5                                      ldr r2, [r5, #0x38]
005b57a0  01 00 53 e3                                      cmp r3, #1
005b57a4  1c 00 00 9a                                      bls #0x5b581c
005b57a8  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b57ac  02 00 13 e3                                      tst r3, #2
005b57b0  03 10 a0 e1                                      mov r1, r3
005b57b4  33 00 00 1a                                      bne #0x5b5888
005b57b8  52 66 e2 e7                                      ubfx r6, r2, #0xc, #3
005b57bc  01 00 56 e3                                      cmp r6, #1
005b57c0  39 00 00 da                                      ble #0x5b58ac
005b57c4  08 30 83 e3                                      orr r3, r3, #8
005b57c8  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b57cc  05 00 a0 e1                                      mov r0, r5
005b57d0  01 10 a0 e3                                      mov r1, #1
005b57d4  1c eb ff eb                                      bl #0x5b044c
005b57d8  02 00 56 e3                                      cmp r6, #2
005b57dc  00 40 a0 e1                                      mov r4, r0
005b57e0  b8 ff ff 0a                                      beq #0x5b56c8
005b57e4  38 30 95 e5                                      ldr r3, [r5, #0x38]
005b57e8  53 26 e2 e7                                      ubfx r2, r3, #0xc, #3
005b57ec  02 00 56 e1                                      cmp r6, r2
005b57f0  b4 ff ff 0a                                      beq #0x5b56c8
005b57f4  3e 20 d5 e5                                      ldrb r2, [r5, #0x3e]
005b57f8  01 00 52 e3                                      cmp r2, #1
005b57fc  39 00 00 9a                                      bls #0x5b58e8
005b5800  b0 24 d5 e1                                      ldrh r2, [r5, #0x40]
005b5804  07 3a c3 e3                                      bic r3, r3, #0x7000
005b5808  06 66 83 e1                                      orr r6, r3, r6, lsl #12
005b580c  04 20 82 e3                                      orr r2, r2, #4
005b5810  38 60 85 e5                                      str r6, [r5, #0x38]
005b5814  b0 24 c5 e1                                      strh r2, [r5, #0x40]
005b5818  aa ff ff ea                                      b #0x5b56c8
005b581c  3f 10 d5 e5                                      ldrb r1, [r5, #0x3f]
005b5820  08 10 81 e3                                      orr r1, r1, #8
005b5824  3f 10 c5 e5                                      strb r1, [r5, #0x3f]
005b5828  05 00 a0 e1                                      mov r0, r5
005b582c  01 10 a0 e3                                      mov r1, #1
005b5830  05 eb ff eb                                      bl #0x5b044c
005b5834  00 40 a0 e1                                      mov r4, r0
005b5838  a2 ff ff ea                                      b #0x5b56c8
005b583c  05 00 a0 e1                                      mov r0, r5
005b5840  01 eb ff eb                                      bl #0x5b044c
005b5844  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b5848  00 40 a0 e1                                      mov r4, r0
005b584c  9e ff ff ea                                      b #0x5b56cc
005b5850  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b5854  01 40 a0 e1                                      mov r4, r1
005b5858  10 30 83 e3                                      orr r3, r3, #0x10
005b585c  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b5860  99 ff ff ea                                      b #0x5b56cc
005b5864  00 30 95 e5                                      ldr r3, [r5]
005b5868  05 00 a0 e1                                      mov r0, r5
005b586c  0f e0 a0 e1                                      mov lr, pc
005b5870  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005b5874  3f 30 d5 e5                                      ldrb r3, [r5, #0x3f]
005b5878  04 00 a0 e1                                      mov r0, r4
005b587c  10 30 83 e3                                      orr r3, r3, #0x10
005b5880  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b5884  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005b5888  7c c0 9f e5                                      ldr ip, [pc, #0x7c]
005b588c  52 02 e5 e7                                      ubfx r0, r2, #4, #6
005b5890  28 e0 a0 e3                                      mov lr, #0x28
005b5894  0c c0 96 e7                                      ldr ip, [r6, ip]
005b5898  9e 00 00 e0                                      mul r0, lr, r0
005b589c  00 00 9c e7                                      ldr r0, [ip, r0]
005b58a0  08 00 10 e3                                      tst r0, #8
005b58a4  dd ff ff 1a                                      bne #0x5b5820
005b58a8  c2 ff ff ea                                      b #0x5b57b8
005b58ac  02 00 56 e3                                      cmp r6, #2
005b58b0  0f 00 00 0a                                      beq #0x5b58f4
005b58b4  b0 04 d5 e1                                      ldrh r0, [r5, #0x40]
005b58b8  07 2a c2 e3                                      bic r2, r2, #0x7000
005b58bc  02 1a 82 e3                                      orr r1, r2, #0x2000
005b58c0  08 30 83 e3                                      orr r3, r3, #8
005b58c4  04 20 80 e3                                      orr r2, r0, #4
005b58c8  38 10 85 e5                                      str r1, [r5, #0x38]
005b58cc  b0 24 c5 e1                                      strh r2, [r5, #0x40]
005b58d0  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b58d4  05 00 a0 e1                                      mov r0, r5
005b58d8  01 10 a0 e3                                      mov r1, #1
005b58dc  da ea ff eb                                      bl #0x5b044c
005b58e0  00 40 a0 e1                                      mov r4, r0
005b58e4  be ff ff ea                                      b #0x5b57e4
005b58e8  01 00 56 e3                                      cmp r6, #1
005b58ec  75 ff ff ca                                      bgt #0x5b56c8
005b58f0  c2 ff ff ea                                      b #0x5b5800
005b58f4  08 30 83 e3                                      orr r3, r3, #8
005b58f8  3f 30 c5 e5                                      strb r3, [r5, #0x3f]
005b58fc  c9 ff ff ea                                      b #0x5b5828
; mapping-symbol data/literal pool
005b5900  58 f4 3d 00 a8 a9 32 00 b0 a8 32 00 34 1f 00 00  .byte 0x58, 0xf4, 0x3d, 0x00, 0xa8, 0xa9, 0x32, 0x00, 0xb0, 0xa8, 0x32, 0x00, 0x34, 0x1f, 0x00, 0x00
