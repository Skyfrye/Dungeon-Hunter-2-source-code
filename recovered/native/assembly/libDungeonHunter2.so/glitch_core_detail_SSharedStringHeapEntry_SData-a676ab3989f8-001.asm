; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a4d9c, declared_size=380, range_size=380, mode=arm
; class-group: glitch::core::detail::SSharedStringHeapEntry::SData
; alias: _ZN6glitch4core6detail22SSharedStringHeapEntry5SData7releaseEPS3_
; demangled: glitch::core::detail::SSharedStringHeapEntry::SData::release(glitch::core::detail::SSharedStringHeapEntry::SData*)
; decoder-mode: arm
006a4d9c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006a4da0  04 50 90 e5                                      ldr r5, [r0, #4]
006a4da4  68 31 9f e5                                      ldr r3, [pc, #0x168]
006a4da8  00 60 a0 e1                                      mov r6, r0
006a4dac  00 00 55 e3                                      cmp r5, #0
006a4db0  03 80 9f e7                                      ldr r8, [pc, r3]
006a4db4  00 30 90 05                                      ldreq r3, [r0]
006a4db8  04 30 80 12                                      addne r3, r0, #4
006a4dbc  14 70 98 e5                                      ldr r7, [r8, #0x14]
006a4dc0  00 a0 d3 e5                                      ldrb sl, [r3]
006a4dc4  00 00 5a e3                                      cmp sl, #0
006a4dc8  00 00 a0 13                                      movne r0, #0
006a4dcc  0c 00 00 0a                                      beq #0x6a4e04
006a4dd0  00 13 a0 e1                                      lsl r1, r0, #6
006a4dd4  7a 10 a1 e6                                      sxtab r1, r1, sl
006a4dd8  b9 29 07 e3                                      movw r2, #0x79b9
006a4ddc  01 a0 f3 e5                                      ldrb sl, [r3, #1]!
006a4de0  37 2e 49 e3                                      movt r2, #0x9e37
006a4de4  02 20 81 e0                                      add r2, r1, r2
006a4de8  20 21 82 e0                                      add r2, r2, r0, lsr #2
006a4dec  00 00 5a e3                                      cmp sl, #0
006a4df0  02 00 20 e0                                      eor r0, r0, r2
006a4df4  f5 ff ff 1a                                      bne #0x6a4dd0
006a4df8  18 10 98 e5                                      ldr r1, [r8, #0x18]
006a4dfc  4a a7 f1 eb                                      bl #0x30eb2c
006a4e00  01 a1 a0 e1                                      lsl sl, r1, #2
006a4e04  0a 40 97 e7                                      ldr r4, [r7, sl]
006a4e08  0a a0 87 e0                                      add sl, r7, sl
006a4e0c  0a 70 a0 e1                                      mov r7, sl
006a4e10  00 00 54 e3                                      cmp r4, #0
006a4e14  0d 00 00 0a                                      beq #0x6a4e50
006a4e18  00 00 55 e3                                      cmp r5, #0
006a4e1c  04 90 86 e2                                      add sb, r6, #4
006a4e20  1f 00 00 1a                                      bne #0x6a4ea4
006a4e24  04 30 14 e5                                      ldr r3, [r4, #-4]
006a4e28  00 00 96 e5                                      ldr r0, [r6]
006a4e2c  04 20 93 e5                                      ldr r2, [r3, #4]
006a4e30  04 10 83 e2                                      add r1, r3, #4
006a4e34  00 00 52 e3                                      cmp r2, #0
006a4e38  1e 00 00 0a                                      beq #0x6a4eb8
006a4e3c  36 a5 f1 eb                                      bl #0x30e31c
006a4e40  01 00 70 e2                                      rsbs r0, r0, #1
006a4e44  00 00 a0 33                                      movlo r0, #0
006a4e48  00 00 50 e3                                      cmp r0, #0
006a4e4c  0e 00 00 0a                                      beq #0x6a4e8c
006a4e50  00 00 97 e5                                      ldr r0, [r7]
006a4e54  00 00 50 e3                                      cmp r0, #0
006a4e58  08 00 00 0a                                      beq #0x6a4e80
006a4e5c  04 30 10 e4                                      ldr r3, [r0], #-4
006a4e60  00 30 87 e5                                      str r3, [r7]
006a4e64  20 30 98 e5                                      ldr r3, [r8, #0x20]
006a4e68  01 30 43 e2                                      sub r3, r3, #1
006a4e6c  20 30 88 e5                                      str r3, [r8, #0x20]
006a4e70  76 ad f1 eb                                      bl #0x310450
006a4e74  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
006a4e78  03 00 5a e1                                      cmp sl, r3
006a4e7c  13 00 00 0a                                      beq #0x6a4ed0
006a4e80  06 00 a0 e1                                      mov r0, r6
006a4e84  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
006a4e88  8a a4 f1 ea                                      b #0x30e0b8
006a4e8c  04 70 a0 e1                                      mov r7, r4
006a4e90  00 40 94 e5                                      ldr r4, [r4]
006a4e94  00 00 54 e3                                      cmp r4, #0
006a4e98  ec ff ff 0a                                      beq #0x6a4e50
006a4e9c  00 00 55 e3                                      cmp r5, #0
006a4ea0  df ff ff 0a                                      beq #0x6a4e24
006a4ea4  04 30 14 e5                                      ldr r3, [r4, #-4]
006a4ea8  09 00 a0 e1                                      mov r0, sb
006a4eac  04 20 93 e5                                      ldr r2, [r3, #4]
006a4eb0  00 00 52 e3                                      cmp r2, #0
006a4eb4  01 00 00 1a                                      bne #0x6a4ec0
006a4eb8  00 10 93 e5                                      ldr r1, [r3]
006a4ebc  de ff ff ea                                      b #0x6a4e3c
006a4ec0  03 00 56 e1                                      cmp r6, r3
006a4ec4  00 00 a0 13                                      movne r0, #0
006a4ec8  01 00 a0 03                                      moveq r0, #1
006a4ecc  dd ff ff ea                                      b #0x6a4e48
006a4ed0  20 30 98 e5                                      ldr r3, [r8, #0x20]
006a4ed4  00 00 53 e3                                      cmp r3, #0
006a4ed8  08 00 00 0a                                      beq #0x6a4f00
006a4edc  00 30 9a e5                                      ldr r3, [sl]
006a4ee0  00 00 53 e3                                      cmp r3, #0
006a4ee4  e5 ff ff 1a                                      bne #0x6a4e80
006a4ee8  04 a0 8a e2                                      add sl, sl, #4
006a4eec  1c a0 88 e5                                      str sl, [r8, #0x1c]
006a4ef0  00 30 9a e5                                      ldr r3, [sl]
006a4ef4  00 00 53 e3                                      cmp r3, #0
006a4ef8  fa ff ff 0a                                      beq #0x6a4ee8
006a4efc  df ff ff ea                                      b #0x6a4e80
006a4f00  18 20 98 e5                                      ldr r2, [r8, #0x18]
006a4f04  14 30 98 e5                                      ldr r3, [r8, #0x14]
006a4f08  02 31 83 e0                                      add r3, r3, r2, lsl #2
006a4f0c  1c 30 88 e5                                      str r3, [r8, #0x1c]
006a4f10  da ff ff ea                                      b #0x6a4e80
; mapping-symbol data/literal pool
006a4f14  a4 28 35 00                                      .byte 0xa4, 0x28, 0x35, 0x00

; FUNCTION 0x006a5074, declared_size=1116, range_size=1116, mode=arm
; class-group: glitch::core::detail::SSharedStringHeapEntry::SData
; alias: _ZN6glitch4core6detail22SSharedStringHeapEntry5SData3getEPKcb
; demangled: glitch::core::detail::SSharedStringHeapEntry::SData::get(char const*, bool)
; decoder-mode: arm
006a5074  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006a5078  44 34 9f e5                                      ldr r3, [pc, #0x444]
006a507c  44 64 9f e5                                      ldr r6, [pc, #0x444]
006a5080  00 00 50 e3                                      cmp r0, #0
006a5084  30 d0 4d e2                                      sub sp, sp, #0x30
006a5088  06 60 8f e0                                      add r6, pc, r6
006a508c  03 50 9f e7                                      ldr r5, [pc, r3]
006a5090  02 00 00 1a                                      bne #0x6a50a0
006a5094  00 00 a0 e3                                      mov r0, #0
006a5098  30 d0 8d e2                                      add sp, sp, #0x30
006a509c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006a50a0  d0 30 d0 e1                                      ldrsb r3, [r0]
006a50a4  00 00 53 e3                                      cmp r3, #0
006a50a8  f9 ff ff 0a                                      beq #0x6a5094
006a50ac  00 40 a0 e3                                      mov r4, #0
006a50b0  00 00 51 e3                                      cmp r1, #0
006a50b4  20 00 8d e5                                      str r0, [sp, #0x20]
006a50b8  24 40 8d e5                                      str r4, [sp, #0x24]
006a50bc  db 00 00 0a                                      beq #0x6a5430
006a50c0  20 30 8d e2                                      add r3, sp, #0x20
006a50c4  28 30 8d e5                                      str r3, [sp, #0x28]
006a50c8  00 20 d0 e5                                      ldrb r2, [r0]
006a50cc  04 00 52 e1                                      cmp r2, r4
006a50d0  02 40 a0 01                                      moveq r4, r2
006a50d4  09 00 00 0a                                      beq #0x6a5100
006a50d8  04 13 a0 e1                                      lsl r1, r4, #6
006a50dc  72 10 a1 e6                                      sxtab r1, r1, r2
006a50e0  b9 39 07 e3                                      movw r3, #0x79b9
006a50e4  01 20 f0 e5                                      ldrb r2, [r0, #1]!
006a50e8  37 3e 49 e3                                      movt r3, #0x9e37
006a50ec  03 30 81 e0                                      add r3, r1, r3
006a50f0  24 31 83 e0                                      add r3, r3, r4, lsr #2
006a50f4  00 00 52 e3                                      cmp r2, #0
006a50f8  03 40 24 e0                                      eor r4, r4, r3
006a50fc  f5 ff ff 1a                                      bne #0x6a50d8
006a5100  18 10 95 e5                                      ldr r1, [r5, #0x18]
006a5104  04 00 a0 e1                                      mov r0, r4
006a5108  87 a6 f1 eb                                      bl #0x30eb2c
006a510c  14 80 95 e5                                      ldr r8, [r5, #0x14]
006a5110  05 00 a0 e1                                      mov r0, r5
006a5114  28 20 8d e2                                      add r2, sp, #0x28
006a5118  01 81 88 e0                                      add r8, r8, r1, lsl #2
006a511c  08 10 a0 e1                                      mov r1, r8
006a5120  f7 fe ff eb                                      bl #0x6a4d04
006a5124  00 a0 50 e2                                      subs sl, r0, #0
006a5128  04 00 1a 15                                      ldrne r0, [sl, #-4]
006a512c  d9 ff ff 1a                                      bne #0x6a5098
006a5130  0a 10 a0 e1                                      mov r1, sl
006a5134  08 00 a0 e3                                      mov r0, #8
006a5138  0a ad f1 eb                                      bl #0x310568
006a513c  18 a0 8d e5                                      str sl, [sp, #0x18]
006a5140  1c a0 8d e5                                      str sl, [sp, #0x1c]
006a5144  00 a0 80 e5                                      str sl, [r0]
006a5148  04 a0 80 e5                                      str sl, [r0, #4]
006a514c  28 30 9d e5                                      ldr r3, [sp, #0x28]
006a5150  00 70 a0 e1                                      mov r7, r0
006a5154  00 30 80 e5                                      str r3, [r0]
006a5158  20 30 95 e5                                      ldr r3, [r5, #0x20]
006a515c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
006a5160  01 20 83 e2                                      add r2, r3, #1
006a5164  01 00 52 e1                                      cmp r2, r1
006a5168  a2 00 00 3a                                      blo #0x6a53f8
006a516c  a3 30 83 e0                                      add r3, r3, r3, lsr #1
006a5170  02 00 53 e1                                      cmp r3, r2
006a5174  03 00 a0 21                                      movhs r0, r3
006a5178  02 00 a0 31                                      movlo r0, r2
006a517c  4f a3 f1 eb                                      bl #0x30dec0
006a5180  00 80 a0 e1                                      mov r8, r0
006a5184  08 00 95 e5                                      ldr r0, [r5, #8]
006a5188  01 90 a0 e1                                      mov sb, r1
006a518c  c4 a5 f1 eb                                      bl #0x30e8a4
006a5190  00 20 a0 e1                                      mov r2, r0
006a5194  01 30 a0 e1                                      mov r3, r1
006a5198  08 00 a0 e1                                      mov r0, r8
006a519c  09 10 a0 e1                                      mov r1, sb
006a51a0  66 a4 f1 eb                                      bl #0x30e340
006a51a4  45 a6 f1 eb                                      bl #0x30eac0
006a51a8  02 21 a0 e3                                      mov r2, #0x80000000
006a51ac  be 34 e0 e3                                      mvn r3, #0xbe000000
006a51b0  42 25 a0 e1                                      asr r2, r2, #0xa
006a51b4  01 36 43 e2                                      sub r3, r3, #0x100000
006a51b8  00 80 a0 e1                                      mov r8, r0
006a51bc  01 90 a0 e1                                      mov sb, r1
006a51c0  82 a4 f1 eb                                      bl #0x30e3d0
006a51c4  00 00 50 e3                                      cmp r0, #0
006a51c8  00 00 e0 13                                      mvnne r0, #0
006a51cc  02 00 00 1a                                      bne #0x6a51dc
006a51d0  08 00 a0 e1                                      mov r0, r8
006a51d4  09 10 a0 e1                                      mov r1, sb
006a51d8  fc a5 f1 eb                                      bl #0x30e9d0
006a51dc  e8 82 9f e5                                      ldr r8, [pc, #0x2e8]
006a51e0  01 e0 80 e2                                      add lr, r0, #1
006a51e4  28 00 a0 e3                                      mov r0, #0x28
006a51e8  08 20 96 e7                                      ldr r2, [r6, r8]
006a51ec  c0 30 a0 e1                                      asr r3, r0, #1
006a51f0  03 00 00 ea                                      b #0x6a5204
006a51f4  00 00 53 e3                                      cmp r3, #0
006a51f8  03 00 a0 e1                                      mov r0, r3
006a51fc  c3 30 a0 e1                                      asr r3, r3, #1
006a5200  08 00 00 da                                      ble #0x6a5228
006a5204  03 11 92 e7                                      ldr r1, [r2, r3, lsl #2]
006a5208  03 c1 82 e0                                      add ip, r2, r3, lsl #2
006a520c  01 00 5e e1                                      cmp lr, r1
006a5210  f7 ff ff 9a                                      bls #0x6a51f4
006a5214  01 00 40 e2                                      sub r0, r0, #1
006a5218  00 00 63 e0                                      rsb r0, r3, r0
006a521c  00 00 50 e3                                      cmp r0, #0
006a5220  04 20 8c e2                                      add r2, ip, #4
006a5224  f0 ff ff ca                                      bgt #0x6a51ec
006a5228  08 30 96 e7                                      ldr r3, [r6, r8]
006a522c  a0 10 83 e2                                      add r1, r3, #0xa0
006a5230  01 00 52 e1                                      cmp r2, r1
006a5234  9c 20 83 02                                      addeq r2, r3, #0x9c
006a5238  00 20 92 e5                                      ldr r2, [r2]
006a523c  18 30 95 e5                                      ldr r3, [r5, #0x18]
006a5240  03 00 52 e1                                      cmp r2, r3
006a5244  66 00 00 0a                                      beq #0x6a53e4
006a5248  04 60 8d e2                                      add r6, sp, #4
006a524c  06 00 a0 e1                                      mov r0, r6
006a5250  10 10 85 e2                                      add r1, r5, #0x10
006a5254  5f ff ff eb                                      bl #0x6a4fd8
006a5258  14 30 85 e2                                      add r3, r5, #0x14
006a525c  08 06 93 e8                                      ldm r3, {r3, sb, sl}
006a5260  09 91 83 e0                                      add sb, r3, sb, lsl #2
006a5264  0a 00 59 e1                                      cmp sb, sl
006a5268  32 00 00 0a                                      beq #0x6a5338
006a526c  00 80 9a e5                                      ldr r8, [sl]
006a5270  00 00 58 e3                                      cmp r8, #0
006a5274  29 00 00 0a                                      beq #0x6a5320
006a5278  04 10 18 e5                                      ldr r1, [r8, #-4]
006a527c  04 30 91 e5                                      ldr r3, [r1, #4]
006a5280  00 00 53 e3                                      cmp r3, #0
006a5284  00 10 91 05                                      ldreq r1, [r1]
006a5288  04 10 81 12                                      addne r1, r1, #4
006a528c  00 20 d1 e5                                      ldrb r2, [r1]
006a5290  00 00 52 e3                                      cmp r2, #0
006a5294  02 10 a0 01                                      moveq r1, r2
006a5298  0d 00 00 0a                                      beq #0x6a52d4
006a529c  00 00 a0 e3                                      mov r0, #0
006a52a0  00 c3 a0 e1                                      lsl ip, r0, #6
006a52a4  72 c0 ac e6                                      sxtab ip, ip, r2
006a52a8  b9 39 07 e3                                      movw r3, #0x79b9
006a52ac  01 20 f1 e5                                      ldrb r2, [r1, #1]!
006a52b0  37 3e 49 e3                                      movt r3, #0x9e37
006a52b4  03 30 8c e0                                      add r3, ip, r3
006a52b8  20 31 83 e0                                      add r3, r3, r0, lsr #2
006a52bc  00 00 52 e3                                      cmp r2, #0
006a52c0  03 00 20 e0                                      eor r0, r0, r3
006a52c4  f5 ff ff 1a                                      bne #0x6a52a0
006a52c8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006a52cc  16 a6 f1 eb                                      bl #0x30eb2c
006a52d0  01 11 a0 e1                                      lsl r1, r1, #2
006a52d4  00 20 98 e5                                      ldr r2, [r8]
006a52d8  08 30 9d e5                                      ldr r3, [sp, #8]
006a52dc  00 20 8a e5                                      str r2, [sl]
006a52e0  20 00 95 e5                                      ldr r0, [r5, #0x20]
006a52e4  01 20 83 e0                                      add r2, r3, r1
006a52e8  01 00 40 e2                                      sub r0, r0, #1
006a52ec  20 00 85 e5                                      str r0, [r5, #0x20]
006a52f0  01 00 93 e7                                      ldr r0, [r3, r1]
006a52f4  00 00 88 e5                                      str r0, [r8]
006a52f8  01 80 83 e7                                      str r8, [r3, r1]
006a52fc  14 30 9d e5                                      ldr r3, [sp, #0x14]
006a5300  10 10 9d e5                                      ldr r1, [sp, #0x10]
006a5304  01 30 83 e2                                      add r3, r3, #1
006a5308  01 00 52 e1                                      cmp r2, r1
006a530c  10 20 8d 35                                      strlo r2, [sp, #0x10]
006a5310  14 30 8d e5                                      str r3, [sp, #0x14]
006a5314  00 80 9a e5                                      ldr r8, [sl]
006a5318  00 00 58 e3                                      cmp r8, #0
006a531c  d5 ff ff 1a                                      bne #0x6a5278
006a5320  1c a0 95 e5                                      ldr sl, [r5, #0x1c]
006a5324  04 a0 8a e2                                      add sl, sl, #4
006a5328  0a 00 59 e1                                      cmp sb, sl
006a532c  1c a0 85 e5                                      str sl, [r5, #0x1c]
006a5330  cd ff ff 1a                                      bne #0x6a526c
006a5334  14 30 95 e5                                      ldr r3, [r5, #0x14]
006a5338  08 10 9d e5                                      ldr r1, [sp, #8]
006a533c  08 30 8d e5                                      str r3, [sp, #8]
006a5340  18 20 95 e5                                      ldr r2, [r5, #0x18]
006a5344  14 10 85 e5                                      str r1, [r5, #0x14]
006a5348  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006a534c  0c 20 8d e5                                      str r2, [sp, #0xc]
006a5350  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
006a5354  18 30 85 e5                                      str r3, [r5, #0x18]
006a5358  10 30 9d e5                                      ldr r3, [sp, #0x10]
006a535c  10 20 8d e5                                      str r2, [sp, #0x10]
006a5360  20 20 95 e5                                      ldr r2, [r5, #0x20]
006a5364  1c 30 85 e5                                      str r3, [r5, #0x1c]
006a5368  14 30 9d e5                                      ldr r3, [sp, #0x14]
006a536c  14 20 8d e5                                      str r2, [sp, #0x14]
006a5370  08 00 95 e5                                      ldr r0, [r5, #8]
006a5374  20 30 85 e5                                      str r3, [r5, #0x20]
006a5378  49 a5 f1 eb                                      bl #0x30e8a4
006a537c  00 80 a0 e1                                      mov r8, r0
006a5380  18 00 95 e5                                      ldr r0, [r5, #0x18]
006a5384  01 90 a0 e1                                      mov sb, r1
006a5388  cc a2 f1 eb                                      bl #0x30dec0
006a538c  00 20 a0 e1                                      mov r2, r0
006a5390  01 30 a0 e1                                      mov r3, r1
006a5394  08 00 a0 e1                                      mov r0, r8
006a5398  09 10 a0 e1                                      mov r1, sb
006a539c  c4 a5 f1 eb                                      bl #0x30eab4
006a53a0  f3 a5 f1 eb                                      bl #0x30eb74
006a53a4  02 21 a0 e3                                      mov r2, #0x80000000
006a53a8  be 34 e0 e3                                      mvn r3, #0xbe000000
006a53ac  42 25 a0 e1                                      asr r2, r2, #0xa
006a53b0  01 36 43 e2                                      sub r3, r3, #0x100000
006a53b4  00 80 a0 e1                                      mov r8, r0
006a53b8  01 90 a0 e1                                      mov sb, r1
006a53bc  03 a4 f1 eb                                      bl #0x30e3d0
006a53c0  00 00 50 e3                                      cmp r0, #0
006a53c4  00 00 e0 13                                      mvnne r0, #0
006a53c8  02 00 00 1a                                      bne #0x6a53d8
006a53cc  08 00 a0 e1                                      mov r0, r8
006a53d0  09 10 a0 e1                                      mov r1, sb
006a53d4  7d a5 f1 eb                                      bl #0x30e9d0
006a53d8  0c 00 85 e5                                      str r0, [r5, #0xc]
006a53dc  06 00 a0 e1                                      mov r0, r6
006a53e0  cc fe ff eb                                      bl #0x6a4f18
006a53e4  04 00 a0 e1                                      mov r0, r4
006a53e8  18 10 95 e5                                      ldr r1, [r5, #0x18]
006a53ec  ce a5 f1 eb                                      bl #0x30eb2c
006a53f0  14 80 95 e5                                      ldr r8, [r5, #0x14]
006a53f4  01 81 88 e0                                      add r8, r8, r1, lsl #2
006a53f8  00 30 98 e5                                      ldr r3, [r8]
006a53fc  04 a0 87 e2                                      add sl, r7, #4
006a5400  04 00 4a e2                                      sub r0, sl, #4
006a5404  04 30 87 e5                                      str r3, [r7, #4]
006a5408  00 a0 88 e5                                      str sl, [r8]
006a540c  20 30 95 e5                                      ldr r3, [r5, #0x20]
006a5410  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
006a5414  01 30 83 e2                                      add r3, r3, #1
006a5418  02 00 58 e1                                      cmp r8, r2
006a541c  20 30 85 e5                                      str r3, [r5, #0x20]
006a5420  1c 80 85 35                                      strlo r8, [r5, #0x1c]
006a5424  23 fe ff eb                                      bl #0x6a4cb8
006a5428  04 00 1a e5                                      ldr r0, [sl, #-4]
006a542c  19 ff ff ea                                      b #0x6a5098
006a5430  20 30 8d e2                                      add r3, sp, #0x20
006a5434  2c 30 8d e5                                      str r3, [sp, #0x2c]
006a5438  00 20 d0 e5                                      ldrb r2, [r0]
006a543c  14 40 95 e5                                      ldr r4, [r5, #0x14]
006a5440  00 00 52 e3                                      cmp r2, #0
006a5444  02 10 a0 01                                      moveq r1, r2
006a5448  09 00 00 0a                                      beq #0x6a5474
006a544c  01 c3 a0 e1                                      lsl ip, r1, #6
006a5450  72 c0 ac e6                                      sxtab ip, ip, r2
006a5454  b9 39 07 e3                                      movw r3, #0x79b9
006a5458  01 20 f0 e5                                      ldrb r2, [r0, #1]!
006a545c  37 3e 49 e3                                      movt r3, #0x9e37
006a5460  03 30 8c e0                                      add r3, ip, r3
006a5464  21 31 83 e0                                      add r3, r3, r1, lsr #2
006a5468  00 00 52 e3                                      cmp r2, #0
006a546c  03 10 21 e0                                      eor r1, r1, r3
006a5470  f5 ff ff 1a                                      bne #0x6a544c
006a5474  01 00 a0 e1                                      mov r0, r1
006a5478  18 10 95 e5                                      ldr r1, [r5, #0x18]
006a547c  aa a5 f1 eb                                      bl #0x30eb2c
006a5480  2c 20 8d e2                                      add r2, sp, #0x2c
006a5484  05 00 a0 e1                                      mov r0, r5
006a5488  01 11 84 e0                                      add r1, r4, r1, lsl #2
006a548c  1c fe ff eb                                      bl #0x6a4d04
006a5490  00 00 50 e3                                      cmp r0, #0
006a5494  14 30 95 05                                      ldreq r3, [r5, #0x14]
006a5498  18 20 95 05                                      ldreq r2, [r5, #0x18]
006a549c  18 20 95 15                                      ldrne r2, [r5, #0x18]
006a54a0  14 30 95 15                                      ldrne r3, [r5, #0x14]
006a54a4  02 01 93 07                                      ldreq r0, [r3, r2, lsl #2]
006a54a8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
006a54ac  00 00 53 e1                                      cmp r3, r0
006a54b0  f7 fe ff 0a                                      beq #0x6a5094
006a54b4  00 00 50 e3                                      cmp r0, #0
006a54b8  04 00 40 12                                      subne r0, r0, #4
006a54bc  00 00 90 e5                                      ldr r0, [r0]
006a54c0  f4 fe ff ea                                      b #0x6a5098
; mapping-symbol data/literal pool
006a54c4  c8 25 35 00 08 fa 2e 00 90 20 00 00              .byte 0xc8, 0x25, 0x35, 0x00, 0x08, 0xfa, 0x2e, 0x00, 0x90, 0x20, 0x00, 0x00
