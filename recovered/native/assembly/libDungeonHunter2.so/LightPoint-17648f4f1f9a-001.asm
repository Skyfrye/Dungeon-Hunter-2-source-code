; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0040b7cc, declared_size=92, range_size=92, mode=arm
; class-group: LightPoint
; alias: _ZN10LightPoint14GetIdsFromNameEPKcRiS2_Rc
; demangled: LightPoint::GetIdsFromName(char const*, int&, int&, char&)
; decoder-mode: arm
0040b7cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0040b7d0  00 40 a0 e1                                      mov r4, r0
0040b7d4  01 00 a0 e1                                      mov r0, r1
0040b7d8  02 50 a0 e1                                      mov r5, r2
0040b7dc  03 60 a0 e1                                      mov r6, r3
0040b7e0  9b 09 fc eb                                      bl #0x30de54
0040b7e4  44 20 94 e5                                      ldr r2, [r4, #0x44]
0040b7e8  d0 30 92 e1                                      ldrsb r3, [r2, r0]
0040b7ec  01 00 a0 e3                                      mov r0, #1
0040b7f0  53 00 53 e3                                      cmp r3, #0x53
0040b7f4  04 30 a0 03                                      moveq r3, #4
0040b7f8  00 30 86 05                                      streq r3, [r6]
0040b7fc  30 30 43 12                                      subne r3, r3, #0x30
0040b800  00 30 a0 03                                      moveq r3, #0
0040b804  00 30 86 15                                      strne r3, [r6]
0040b808  00 30 85 05                                      streq r3, [r5]
0040b80c  00 30 85 15                                      strne r3, [r5]
0040b810  30 20 83 12                                      addne r2, r3, #0x30
0040b814  10 30 9d e5                                      ldr r3, [sp, #0x10]
0040b818  30 20 a0 03                                      moveq r2, #0x30
0040b81c  ff 20 02 12                                      andne r2, r2, #0xff
0040b820  00 20 c3 e5                                      strb r2, [r3]
0040b824  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0040b828, declared_size=484, range_size=484, mode=arm
; class-group: LightPoint
; alias: _ZN10LightPoint13AssignTweakerEii
; demangled: LightPoint::AssignTweaker(int, int)
; decoder-mode: arm
0040b828  d4 c1 9f e5                                      ldr ip, [pc, #0x1d4]
0040b82c  04 00 52 e3                                      cmp r2, #4
0040b830  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0040b834  0c c0 8f e0                                      add ip, pc, ip
0040b838  02 50 a0 e1                                      mov r5, r2
0040b83c  00 40 a0 e1                                      mov r4, r0
0040b840  01 70 a0 e1                                      mov r7, r1
0040b844  6d 00 00 8a                                      bhi #0x40ba00
0040b848  20 31 90 e5                                      ldr r3, [r0, #0x120]
0040b84c  b4 01 9f e5                                      ldr r0, [pc, #0x1b4]
0040b850  00 00 53 e3                                      cmp r3, #0
0040b854  00 60 9c e7                                      ldr r6, [ip, r0]
0040b858  10 00 96 e5                                      ldr r0, [r6, #0x10]
0040b85c  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0040b860  66 00 00 0a                                      beq #0x40ba00
0040b864  4d 3f 83 e2                                      add r3, r3, #0x134
0040b868  a5 0f 80 e2                                      add r0, r0, #0x294
0040b86c  16 70 87 e2                                      add r7, r7, #0x16
0040b870  bc 06 00 eb                                      bl #0x40d368
0040b874  07 61 96 e7                                      ldr r6, [r6, r7, lsl #2]
0040b878  4a 30 85 e2                                      add r3, r5, #0x4a
0040b87c  00 70 e0 e3                                      mvn r7, #0
0040b880  03 41 86 e7                                      str r4, [r6, r3, lsl #2]
0040b884  0c 30 a0 e3                                      mov r3, #0xc
0040b888  3c 21 94 e5                                      ldr r2, [r4, #0x13c]
0040b88c  34 01 94 e5                                      ldr r0, [r4, #0x134]
0040b890  38 11 94 e5                                      ldr r1, [r4, #0x138]
0040b894  93 65 23 e0                                      mla r3, r3, r5, r6
0040b898  84 20 83 e5                                      str r2, [r3, #0x84]
0040b89c  7c 00 83 e5                                      str r0, [r3, #0x7c]
0040b8a0  80 10 83 e5                                      str r1, [r3, #0x80]
0040b8a4  40 01 94 e5                                      ldr r0, [r4, #0x140]
0040b8a8  fd 0b fc eb                                      bl #0x30e8a4
0040b8ac  00 30 0e e3                                      movw r3, #0xe000
0040b8b0  00 20 a0 e3                                      mov r2, #0
0040b8b4  6f 30 44 e3                                      movt r3, #0x406f
0040b8b8  7d 0c fc eb                                      bl #0x30eab4
0040b8bc  43 0c fc eb                                      bl #0x30e9d0
0040b8c0  70 a0 ef e6                                      uxtb sl, r0
0040b8c4  44 01 94 e5                                      ldr r0, [r4, #0x144]
0040b8c8  f5 0b fc eb                                      bl #0x30e8a4
0040b8cc  00 30 0e e3                                      movw r3, #0xe000
0040b8d0  00 20 a0 e3                                      mov r2, #0
0040b8d4  6f 30 44 e3                                      movt r3, #0x406f
0040b8d8  75 0c fc eb                                      bl #0x30eab4
0040b8dc  3b 0c fc eb                                      bl #0x30e9d0
0040b8e0  70 80 ef e6                                      uxtb r8, r0
0040b8e4  48 01 94 e5                                      ldr r0, [r4, #0x148]
0040b8e8  ed 0b fc eb                                      bl #0x30e8a4
0040b8ec  00 30 0e e3                                      movw r3, #0xe000
0040b8f0  00 20 a0 e3                                      mov r2, #0
0040b8f4  6f 30 44 e3                                      movt r3, #0x406f
0040b8f8  6d 0c fc eb                                      bl #0x30eab4
0040b8fc  33 0c fc eb                                      bl #0x30e9d0
0040b900  2e 20 85 e2                                      add r2, r5, #0x2e
0040b904  02 31 86 e0                                      add r3, r6, r2, lsl #2
0040b908  01 80 c3 e5                                      strb r8, [r3, #1]
0040b90c  02 00 c3 e5                                      strb r0, [r3, #2]
0040b910  03 70 c3 e5                                      strb r7, [r3, #3]
0040b914  02 a1 c6 e7                                      strb sl, [r6, r2, lsl #2]
0040b918  4c 01 94 e5                                      ldr r0, [r4, #0x14c]
0040b91c  e0 0b fc eb                                      bl #0x30e8a4
0040b920  00 30 0e e3                                      movw r3, #0xe000
0040b924  00 20 a0 e3                                      mov r2, #0
0040b928  6f 30 44 e3                                      movt r3, #0x406f
0040b92c  60 0c fc eb                                      bl #0x30eab4
0040b930  26 0c fc eb                                      bl #0x30e9d0
0040b934  70 80 ef e6                                      uxtb r8, r0
0040b938  50 01 94 e5                                      ldr r0, [r4, #0x150]
0040b93c  d8 0b fc eb                                      bl #0x30e8a4
0040b940  00 30 0e e3                                      movw r3, #0xe000
0040b944  00 20 a0 e3                                      mov r2, #0
0040b948  6f 30 44 e3                                      movt r3, #0x406f
0040b94c  58 0c fc eb                                      bl #0x30eab4
0040b950  1e 0c fc eb                                      bl #0x30e9d0
0040b954  70 a0 ef e6                                      uxtb sl, r0
0040b958  54 01 94 e5                                      ldr r0, [r4, #0x154]
0040b95c  d0 0b fc eb                                      bl #0x30e8a4
0040b960  00 30 0e e3                                      movw r3, #0xe000
0040b964  00 20 a0 e3                                      mov r2, #0
0040b968  6f 30 44 e3                                      movt r3, #0x406f
0040b96c  50 0c fc eb                                      bl #0x30eab4
0040b970  16 0c fc eb                                      bl #0x30e9d0
0040b974  32 30 85 e2                                      add r3, r5, #0x32
0040b978  03 31 86 e0                                      add r3, r6, r3, lsl #2
0040b97c  04 80 c3 e5                                      strb r8, [r3, #4]
0040b980  05 a0 c3 e5                                      strb sl, [r3, #5]
0040b984  06 00 c3 e5                                      strb r0, [r3, #6]
0040b988  07 70 c3 e5                                      strb r7, [r3, #7]
0040b98c  58 01 94 e5                                      ldr r0, [r4, #0x158]
0040b990  c3 0b fc eb                                      bl #0x30e8a4
0040b994  00 30 0e e3                                      movw r3, #0xe000
0040b998  00 20 a0 e3                                      mov r2, #0
0040b99c  6f 30 44 e3                                      movt r3, #0x406f
0040b9a0  43 0c fc eb                                      bl #0x30eab4
0040b9a4  09 0c fc eb                                      bl #0x30e9d0
0040b9a8  70 a0 ef e6                                      uxtb sl, r0
0040b9ac  5c 01 94 e5                                      ldr r0, [r4, #0x15c]
0040b9b0  bb 0b fc eb                                      bl #0x30e8a4
0040b9b4  00 30 0e e3                                      movw r3, #0xe000
0040b9b8  00 20 a0 e3                                      mov r2, #0
0040b9bc  6f 30 44 e3                                      movt r3, #0x406f
0040b9c0  3b 0c fc eb                                      bl #0x30eab4
0040b9c4  01 0c fc eb                                      bl #0x30e9d0
0040b9c8  70 80 ef e6                                      uxtb r8, r0
0040b9cc  60 01 94 e5                                      ldr r0, [r4, #0x160]
0040b9d0  b3 0b fc eb                                      bl #0x30e8a4
0040b9d4  00 30 0e e3                                      movw r3, #0xe000
0040b9d8  6f 30 44 e3                                      movt r3, #0x406f
0040b9dc  00 20 a0 e3                                      mov r2, #0
0040b9e0  33 0c fc eb                                      bl #0x30eab4
0040b9e4  f9 0b fc eb                                      bl #0x30e9d0
0040b9e8  38 50 85 e2                                      add r5, r5, #0x38
0040b9ec  05 31 86 e0                                      add r3, r6, r5, lsl #2
0040b9f0  03 70 c3 e5                                      strb r7, [r3, #3]
0040b9f4  01 80 c3 e5                                      strb r8, [r3, #1]
0040b9f8  02 00 c3 e5                                      strb r0, [r3, #2]
0040b9fc  05 a1 c6 e7                                      strb sl, [r6, r5, lsl #2]
0040ba00  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0040ba04  5c 92 58 00 f4 37 00 00                          .byte 0x5c, 0x92, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0040ba0c, declared_size=180, range_size=180, mode=arm
; class-group: LightPoint
; alias: _ZN10LightPoint6UpdateEv
; demangled: LightPoint::Update()
; decoder-mode: arm
0040ba0c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0040ba10  00 40 a0 e1                                      mov r4, r0
0040ba14  1c d0 4d e2                                      sub sp, sp, #0x1c
0040ba18  3d fb ff eb                                      bl #0x40a714
0040ba1c  20 31 94 e5                                      ldr r3, [r4, #0x120]
0040ba20  00 00 53 e3                                      cmp r3, #0
0040ba24  17 00 00 0a                                      beq #0x40ba88
0040ba28  66 0f 84 e2                                      add r0, r4, #0x198
0040ba2c  2c d1 fc eb                                      bl #0x33fee4
0040ba30  00 50 50 e2                                      subs r5, r0, #0
0040ba34  15 00 00 0a                                      beq #0x40ba90
0040ba38  20 61 94 e5                                      ldr r6, [r4, #0x120]
0040ba3c  a8 11 94 e5                                      ldr r1, [r4, #0x1a8]
0040ba40  64 01 95 e5                                      ldr r0, [r5, #0x164]
0040ba44  00 30 96 e5                                      ldr r3, [r6]
0040ba48  a4 70 93 e5                                      ldr r7, [r3, #0xa4]
0040ba4c  54 0c fc eb                                      bl #0x30eba4
0040ba50  ac 11 94 e5                                      ldr r1, [r4, #0x1ac]
0040ba54  00 a0 a0 e1                                      mov sl, r0
0040ba58  68 01 95 e5                                      ldr r0, [r5, #0x168]
0040ba5c  50 0c fc eb                                      bl #0x30eba4
0040ba60  a4 11 94 e5                                      ldr r1, [r4, #0x1a4]
0040ba64  00 80 a0 e1                                      mov r8, r0
0040ba68  60 01 95 e5                                      ldr r0, [r5, #0x160]
0040ba6c  4c 0c fc eb                                      bl #0x30eba4
0040ba70  10 a0 8d e5                                      str sl, [sp, #0x10]
0040ba74  0c 00 8d e5                                      str r0, [sp, #0xc]
0040ba78  14 80 8d e5                                      str r8, [sp, #0x14]
0040ba7c  06 00 a0 e1                                      mov r0, r6
0040ba80  0c 10 8d e2                                      add r1, sp, #0xc
0040ba84  37 ff 2f e1                                      blx r7
0040ba88  1c d0 8d e2                                      add sp, sp, #0x1c
0040ba8c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0040ba90  20 01 94 e5                                      ldr r0, [r4, #0x120]
0040ba94  a8 11 94 e5                                      ldr r1, [r4, #0x1a8]
0040ba98  a4 c1 94 e5                                      ldr ip, [r4, #0x1a4]
0040ba9c  00 30 90 e5                                      ldr r3, [r0]
0040baa0  ac 21 94 e5                                      ldr r2, [r4, #0x1ac]
0040baa4  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
0040baa8  04 10 8d e5                                      str r1, [sp, #4]
0040baac  00 c0 8d e5                                      str ip, [sp]
0040bab0  08 20 8d e5                                      str r2, [sp, #8]
0040bab4  0d 10 a0 e1                                      mov r1, sp
0040bab8  33 ff 2f e1                                      blx r3
0040babc  f1 ff ff ea                                      b #0x40ba88

; FUNCTION 0x0040bac0, declared_size=540, range_size=540, mode=arm
; class-group: LightPoint
; alias: _ZN10LightPoint17RefreshAttachmentEv
; demangled: LightPoint::RefreshAttachment()
; decoder-mode: arm
0040bac0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0040bac4  f4 51 9f e5                                      ldr r5, [pc, #0x1f4]
0040bac8  f4 81 9f e5                                      ldr r8, [pc, #0x1f4]
0040bacc  f4 61 9f e5                                      ldr r6, [pc, #0x1f4]
0040bad0  05 50 8f e0                                      add r5, pc, r5
0040bad4  08 20 95 e7                                      ldr r2, [r5, r8]
0040bad8  06 30 95 e7                                      ldr r3, [r5, r6]
0040badc  00 40 a0 e1                                      mov r4, r0
0040bae0  00 20 92 e5                                      ldr r2, [r2]
0040bae4  e0 01 9f e5                                      ldr r0, [pc, #0x1e0]
0040bae8  60 d0 4d e2                                      sub sp, sp, #0x60
0040baec  10 30 93 e5                                      ldr r3, [r3, #0x10]
0040baf0  5c 20 8d e5                                      str r2, [sp, #0x5c]
0040baf4  00 00 8f e0                                      add r0, pc, r0
0040baf8  44 10 94 e5                                      ldr r1, [r4, #0x44]
0040bafc  12 20 a0 e3                                      mov r2, #0x12
0040bb00  1c 90 93 e5                                      ldr sb, [r3, #0x1c]
0040bb04  5c 0c fc eb                                      bl #0x30ec7c
0040bb08  00 00 50 e3                                      cmp r0, #0
0040bb0c  21 00 00 1a                                      bne #0x40bb98
0040bb10  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
0040bb14  44 70 8d e2                                      add r7, sp, #0x44
0040bb18  06 ad 84 e2                                      add sl, r4, #0x180
0040bb1c  01 10 8f e0                                      add r1, pc, r1
0040bb20  07 00 a0 e1                                      mov r0, r7
0040bb24  28 20 8d e2                                      add r2, sp, #0x28
0040bb28  6f 21 fc eb                                      bl #0x3140ec
0040bb2c  07 00 5a e1                                      cmp sl, r7
0040bb30  03 00 00 0a                                      beq #0x40bb44
0040bb34  0a 00 a0 e1                                      mov r0, sl
0040bb38  58 10 9d e5                                      ldr r1, [sp, #0x58]
0040bb3c  54 20 9d e5                                      ldr r2, [sp, #0x54]
0040bb40  a6 13 fc eb                                      bl #0x3109e0
0040bb44  07 00 a0 e1                                      mov r0, r7
0040bb48  97 1f fc eb                                      bl #0x3139ac
0040bb4c  06 30 95 e7                                      ldr r3, [r5, r6]
0040bb50  00 10 a0 e3                                      mov r1, #0
0040bb54  01 20 a0 e3                                      mov r2, #1
0040bb58  40 00 93 e5                                      ldr r0, [r3, #0x40]
0040bb5c  45 8a fd eb                                      bl #0x36e478
0040bb60  60 36 90 e5                                      ldr r3, [r0, #0x660]
0040bb64  00 00 53 e3                                      cmp r3, #0
0040bb68  06 00 00 0a                                      beq #0x40bb88
0040bb6c  44 70 93 e5                                      ldr r7, [r3, #0x44]
0040bb70  07 00 a0 e1                                      mov r0, r7
0040bb74  b6 08 fc eb                                      bl #0x30de54
0040bb78  07 10 a0 e1                                      mov r1, r7
0040bb7c  00 20 87 e0                                      add r2, r7, r0
0040bb80  0a 00 a0 e1                                      mov r0, sl
0040bb84  95 13 fc eb                                      bl #0x3109e0
0040bb88  00 10 a0 e3                                      mov r1, #0
0040bb8c  04 00 a0 e1                                      mov r0, r4
0040bb90  01 20 a0 e1                                      mov r2, r1
0040bb94  23 ff ff eb                                      bl #0x40b828
0040bb98  94 21 94 e5                                      ldr r2, [r4, #0x194]
0040bb9c  90 31 94 e5                                      ldr r3, [r4, #0x190]
0040bba0  02 00 53 e1                                      cmp r3, r2
0040bba4  19 00 00 0a                                      beq #0x40bc10
0040bba8  06 10 95 e7                                      ldr r1, [r5, r6]
0040bbac  18 60 8d e2                                      add r6, sp, #0x18
0040bbb0  64 30 94 e5                                      ldr r3, [r4, #0x64]
0040bbb4  38 10 91 e5                                      ldr r1, [r1, #0x38]
0040bbb8  00 70 a0 e3                                      mov r7, #0
0040bbbc  06 00 a0 e1                                      mov r0, r6
0040bbc0  00 70 8d e5                                      str r7, [sp]
0040bbc4  04 70 8d e5                                      str r7, [sp, #4]
0040bbc8  34 fc fc eb                                      bl #0x34aca0
0040bbcc  06 00 a0 e1                                      mov r0, r6
0040bbd0  07 10 a0 e1                                      mov r1, r7
0040bbd4  79 d0 fc eb                                      bl #0x33fdc0
0040bbd8  07 00 50 e1                                      cmp r0, r7
0040bbdc  05 00 00 0a                                      beq #0x40bbf8
0040bbe0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0040bbe4  08 30 96 e5                                      ldr r3, [r6, #8]
0040bbe8  18 10 9d e5                                      ldr r1, [sp, #0x18]
0040bbec  9c 21 84 e5                                      str r2, [r4, #0x19c]
0040bbf0  a0 31 84 e5                                      str r3, [r4, #0x1a0]
0040bbf4  98 11 84 e5                                      str r1, [r4, #0x198]
0040bbf8  b0 31 d4 e5                                      ldrb r3, [r4, #0x1b0]
0040bbfc  00 00 53 e3                                      cmp r3, #0
0040bc00  02 00 00 0a                                      beq #0x40bc10
0040bc04  b1 31 d4 e5                                      ldrb r3, [r4, #0x1b1]
0040bc08  00 00 53 e3                                      cmp r3, #0
0040bc0c  06 00 00 0a                                      beq #0x40bc2c
0040bc10  08 30 95 e7                                      ldr r3, [r5, r8]
0040bc14  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0040bc18  00 30 93 e5                                      ldr r3, [r3]
0040bc1c  03 00 52 e1                                      cmp r2, r3
0040bc20  25 00 00 1a                                      bne #0x40bcbc
0040bc24  60 d0 8d e2                                      add sp, sp, #0x60
0040bc28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0040bc2c  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0040bc30  2c 70 8d e2                                      add r7, sp, #0x2c
0040bc34  03 a0 95 e7                                      ldr sl, [r5, r3]
0040bc38  0a 00 a0 e1                                      mov r0, sl
0040bc3c  11 af fc eb                                      bl #0x337888
0040bc40  90 10 9f e5                                      ldr r1, [pc, #0x90]
0040bc44  24 20 8d e2                                      add r2, sp, #0x24
0040bc48  07 00 a0 e1                                      mov r0, r7
0040bc4c  01 10 8f e0                                      add r1, pc, r1
0040bc50  25 21 fc eb                                      bl #0x3140ec
0040bc54  0a 00 a0 e1                                      mov r0, sl
0040bc58  07 10 a0 e1                                      mov r1, r7
0040bc5c  89 af fc eb                                      bl #0x337a88
0040bc60  00 a0 a0 e1                                      mov sl, r0
0040bc64  07 00 a0 e1                                      mov r0, r7
0040bc68  4f 1f fc eb                                      bl #0x3139ac
0040bc6c  00 00 5a e3                                      cmp sl, #0
0040bc70  e6 ff ff 1a                                      bne #0x40bc10
0040bc74  20 c1 94 e5                                      ldr ip, [r4, #0x120]
0040bc78  0e 00 96 e8                                      ldm r6, {r1, r2, r3}
0040bc7c  a5 0f 89 e2                                      add r0, sb, #0x294
0040bc80  00 c0 8d e5                                      str ip, [sp]
0040bc84  0c 60 8d e2                                      add r6, sp, #0xc
0040bc88  52 02 00 eb                                      bl #0x40c5d8
0040bc8c  01 30 a0 e3                                      mov r3, #1
0040bc90  b1 31 c4 e5                                      strb r3, [r4, #0x1b1]
0040bc94  0a 10 a0 e1                                      mov r1, sl
0040bc98  06 00 a0 e1                                      mov r0, r6
0040bc9c  20 ce fc eb                                      bl #0x33f524
0040bca0  08 10 96 e5                                      ldr r1, [r6, #8]
0040bca4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0040bca8  10 30 9d e5                                      ldr r3, [sp, #0x10]
0040bcac  a0 11 84 e5                                      str r1, [r4, #0x1a0]
0040bcb0  98 21 84 e5                                      str r2, [r4, #0x198]
0040bcb4  9c 31 84 e5                                      str r3, [r4, #0x19c]
0040bcb8  d4 ff ff ea                                      b #0x40bc10
0040bcbc  93 09 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0040bcc0  c0 8f 58 00 ac 40 00 00 f4 37 00 00 04 c1 4b 00  .byte 0xc0, 0x8f, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x04, 0xc1, 0x4b, 0x00
0040bcd0  f4 c0 4b 00 84 08 00 00 74 3d 4b 00              .byte 0xf4, 0xc0, 0x4b, 0x00, 0x84, 0x08, 0x00, 0x00, 0x74, 0x3d, 0x4b, 0x00

; FUNCTION 0x0040bcdc, declared_size=56, range_size=56, mode=arm
; class-group: LightPoint
; alias: _ZN10LightPoint8InitPostEv
; demangled: LightPoint::InitPost()
; decoder-mode: arm
0040bcdc  70 40 2d e9                                      push {r4, r5, r6, lr}
0040bce0  00 50 a0 e3                                      mov r5, #0
0040bce4  00 40 a0 e1                                      mov r4, r0
0040bce8  b0 51 c0 e5                                      strb r5, [r0, #0x1b0]
0040bcec  b1 51 c0 e5                                      strb r5, [r0, #0x1b1]
0040bcf0  f2 fc ff eb                                      bl #0x40b0c0
0040bcf4  20 31 94 e5                                      ldr r3, [r4, #0x120]
0040bcf8  04 00 a0 e1                                      mov r0, r4
0040bcfc  34 31 93 e5                                      ldr r3, [r3, #0x134]
0040bd00  b8 55 c3 e1                                      strh r5, [r3, #0x58]
0040bd04  00 30 94 e5                                      ldr r3, [r4]
0040bd08  0f e0 a0 e1                                      mov lr, pc
0040bd0c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0040bd10  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0040bd14, declared_size=8, range_size=8, mode=arm
; class-group: LightPoint
; alias: _ZThn36_N10LightPointD1Ev
; demangled: non-virtual thunk to LightPoint::~LightPoint()
; decoder-mode: arm
0040bd14  24 00 40 e2                                      sub r0, r0, #0x24
0040bd18  ff ff ff ea                                      b #0x40bd1c

; FUNCTION 0x0040bd1c, declared_size=76, range_size=76, mode=arm
; class-group: LightPoint
; alias: _ZN10LightPointD1Ev
; demangled: LightPoint::~LightPoint()
; decoder-mode: arm
0040bd1c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0040bd20  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0040bd24  10 40 2d e9                                      push {r4, lr}
0040bd28  02 20 8f e0                                      add r2, pc, r2
0040bd2c  03 30 92 e7                                      ldr r3, [r2, r3]
0040bd30  00 40 a0 e1                                      mov r4, r0
0040bd34  06 0d 80 e2                                      add r0, r0, #0x180
0040bd38  84 20 83 e2                                      add r2, r3, #0x84
0040bd3c  08 10 83 e2                                      add r1, r3, #8
0040bd40  78 30 83 e2                                      add r3, r3, #0x78
0040bd44  0a 00 84 e8                                      stm r4, {r1, r3}
0040bd48  24 20 84 e5                                      str r2, [r4, #0x24]
0040bd4c  16 1f fc eb                                      bl #0x3139ac
0040bd50  04 00 a0 e1                                      mov r0, r4
0040bd54  76 fb ff eb                                      bl #0x40ab34
0040bd58  04 00 a0 e1                                      mov r0, r4
0040bd5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040bd60  68 8d 58 00 10 25 00 00                          .byte 0x68, 0x8d, 0x58, 0x00, 0x10, 0x25, 0x00, 0x00

; FUNCTION 0x0040bd68, declared_size=8, range_size=8, mode=arm
; class-group: LightPoint
; alias: _ZThn36_N10LightPointD0Ev
; demangled: non-virtual thunk to LightPoint::~LightPoint()
; decoder-mode: arm
0040bd68  24 00 40 e2                                      sub r0, r0, #0x24
0040bd6c  ff ff ff ea                                      b #0x40bd70

; FUNCTION 0x0040bd70, declared_size=28, range_size=28, mode=arm
; class-group: LightPoint
; alias: _ZN10LightPointD0Ev
; demangled: LightPoint::~LightPoint()
; decoder-mode: arm
0040bd70  10 40 2d e9                                      push {r4, lr}
0040bd74  00 40 a0 e1                                      mov r4, r0
0040bd78  e7 ff ff eb                                      bl #0x40bd1c
0040bd7c  04 00 a0 e1                                      mov r0, r4
0040bd80  ae 11 fc eb                                      bl #0x310440
0040bd84  04 00 a0 e1                                      mov r0, r4
0040bd88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0040bd8c, declared_size=76, range_size=76, mode=arm
; class-group: LightPoint
; alias: _ZN10LightPointD2Ev
; demangled: LightPoint::~LightPoint()
; decoder-mode: arm
0040bd8c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0040bd90  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0040bd94  10 40 2d e9                                      push {r4, lr}
0040bd98  02 20 8f e0                                      add r2, pc, r2
0040bd9c  03 30 92 e7                                      ldr r3, [r2, r3]
0040bda0  00 40 a0 e1                                      mov r4, r0
0040bda4  06 0d 80 e2                                      add r0, r0, #0x180
0040bda8  84 20 83 e2                                      add r2, r3, #0x84
0040bdac  08 10 83 e2                                      add r1, r3, #8
0040bdb0  78 30 83 e2                                      add r3, r3, #0x78
0040bdb4  0a 00 84 e8                                      stm r4, {r1, r3}
0040bdb8  24 20 84 e5                                      str r2, [r4, #0x24]
0040bdbc  fa 1e fc eb                                      bl #0x3139ac
0040bdc0  04 00 a0 e1                                      mov r0, r4
0040bdc4  5a fb ff eb                                      bl #0x40ab34
0040bdc8  04 00 a0 e1                                      mov r0, r4
0040bdcc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040bdd0  f8 8c 58 00 10 25 00 00                          .byte 0xf8, 0x8c, 0x58, 0x00, 0x10, 0x25, 0x00, 0x00

; FUNCTION 0x0040bdd8, declared_size=132, range_size=132, mode=arm
; class-group: LightPoint
; alias: _ZN10LightPointC1Ev
; demangled: LightPoint::LightPoint()
; decoder-mode: arm
0040bdd8  70 40 2d e9                                      push {r4, r5, r6, lr}
0040bddc  13 10 a0 e3                                      mov r1, #0x13
0040bde0  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
0040bde4  00 40 a0 e1                                      mov r4, r0
0040bde8  9a fb ff eb                                      bl #0x40ac58
0040bdec  64 30 9f e5                                      ldr r3, [pc, #0x64]
0040bdf0  05 50 8f e0                                      add r5, pc, r5
0040bdf4  06 2d 84 e2                                      add r2, r4, #0x180
0040bdf8  03 30 95 e7                                      ldr r3, [r5, r3]
0040bdfc  02 00 a0 e1                                      mov r0, r2
0040be00  90 21 84 e5                                      str r2, [r4, #0x190]
0040be04  08 c0 83 e2                                      add ip, r3, #8
0040be08  84 10 83 e2                                      add r1, r3, #0x84
0040be0c  78 30 83 e2                                      add r3, r3, #0x78
0040be10  00 c0 84 e5                                      str ip, [r4]
0040be14  04 30 84 e5                                      str r3, [r4, #4]
0040be18  24 10 84 e5                                      str r1, [r4, #0x24]
0040be1c  94 21 84 e5                                      str r2, [r4, #0x194]
0040be20  10 10 a0 e3                                      mov r1, #0x10
0040be24  14 16 fc eb                                      bl #0x31167c
0040be28  90 31 94 e5                                      ldr r3, [r4, #0x190]
0040be2c  00 20 a0 e3                                      mov r2, #0
0040be30  66 0f 84 e2                                      add r0, r4, #0x198
0040be34  00 20 c3 e5                                      strb r2, [r3]
0040be38  b3 cd fc eb                                      bl #0x33f50c
0040be3c  00 30 a0 e3                                      mov r3, #0
0040be40  04 00 a0 e1                                      mov r0, r4
0040be44  ac 31 84 e5                                      str r3, [r4, #0x1ac]
0040be48  a4 31 84 e5                                      str r3, [r4, #0x1a4]
0040be4c  a8 31 84 e5                                      str r3, [r4, #0x1a8]
0040be50  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0040be54  a0 8c 58 00 10 25 00 00                          .byte 0xa0, 0x8c, 0x58, 0x00, 0x10, 0x25, 0x00, 0x00

; FUNCTION 0x0040be5c, declared_size=132, range_size=132, mode=arm
; class-group: LightPoint
; alias: _ZN10LightPointC2Ev
; demangled: LightPoint::LightPoint()
; decoder-mode: arm
0040be5c  70 40 2d e9                                      push {r4, r5, r6, lr}
0040be60  13 10 a0 e3                                      mov r1, #0x13
0040be64  6c 50 9f e5                                      ldr r5, [pc, #0x6c]
0040be68  00 40 a0 e1                                      mov r4, r0
0040be6c  79 fb ff eb                                      bl #0x40ac58
0040be70  64 30 9f e5                                      ldr r3, [pc, #0x64]
0040be74  05 50 8f e0                                      add r5, pc, r5
0040be78  06 2d 84 e2                                      add r2, r4, #0x180
0040be7c  03 30 95 e7                                      ldr r3, [r5, r3]
0040be80  02 00 a0 e1                                      mov r0, r2
0040be84  90 21 84 e5                                      str r2, [r4, #0x190]
0040be88  08 c0 83 e2                                      add ip, r3, #8
0040be8c  84 10 83 e2                                      add r1, r3, #0x84
0040be90  78 30 83 e2                                      add r3, r3, #0x78
0040be94  00 c0 84 e5                                      str ip, [r4]
0040be98  04 30 84 e5                                      str r3, [r4, #4]
0040be9c  24 10 84 e5                                      str r1, [r4, #0x24]
0040bea0  94 21 84 e5                                      str r2, [r4, #0x194]
0040bea4  10 10 a0 e3                                      mov r1, #0x10
0040bea8  f3 15 fc eb                                      bl #0x31167c
0040beac  90 31 94 e5                                      ldr r3, [r4, #0x190]
0040beb0  00 20 a0 e3                                      mov r2, #0
0040beb4  66 0f 84 e2                                      add r0, r4, #0x198
0040beb8  00 20 c3 e5                                      strb r2, [r3]
0040bebc  92 cd fc eb                                      bl #0x33f50c
0040bec0  00 30 a0 e3                                      mov r3, #0
0040bec4  04 00 a0 e1                                      mov r0, r4
0040bec8  ac 31 84 e5                                      str r3, [r4, #0x1ac]
0040becc  a4 31 84 e5                                      str r3, [r4, #0x1a4]
0040bed0  a8 31 84 e5                                      str r3, [r4, #0x1a8]
0040bed4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0040bed8  1c 8c 58 00 10 25 00 00                          .byte 0x1c, 0x8c, 0x58, 0x00, 0x10, 0x25, 0x00, 0x00

; FUNCTION 0x0040bfbc, declared_size=8, range_size=8, mode=arm
; class-group: LightPoint
; alias: _ZThn4_N10LightPoint17DeclarePropertiesEv
; demangled: non-virtual thunk to LightPoint::DeclareProperties()
; decoder-mode: arm
0040bfbc  04 00 40 e2                                      sub r0, r0, #4
0040bfc0  ff ff ff ea                                      b #0x40bfc4

; FUNCTION 0x0040bfc4, declared_size=436, range_size=436, mode=arm
; class-group: LightPoint
; alias: _ZN10LightPoint17DeclarePropertiesEv
; demangled: LightPoint::DeclareProperties()
; decoder-mode: arm
0040bfc4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0040bfc8  88 41 9f e5                                      ldr r4, [pc, #0x188]
0040bfcc  88 31 9f e5                                      ldr r3, [pc, #0x188]
0040bfd0  4c d0 4d e2                                      sub sp, sp, #0x4c
0040bfd4  04 40 8f e0                                      add r4, pc, r4
0040bfd8  03 c0 94 e7                                      ldr ip, [r4, r3]
0040bfdc  2c 70 8d e2                                      add r7, sp, #0x2c
0040bfe0  00 b0 a0 e1                                      mov fp, r0
0040bfe4  00 30 9c e5                                      ldr r3, [ip]
0040bfe8  00 c0 8d e5                                      str ip, [sp]
0040bfec  00 90 a0 e3                                      mov sb, #0
0040bff0  44 30 8d e5                                      str r3, [sp, #0x44]
0040bff4  7d fb ff eb                                      bl #0x40adf0
0040bff8  07 00 a0 e1                                      mov r0, r7
0040bffc  10 10 a0 e3                                      mov r1, #0x10
0040c000  3c 70 8d e5                                      str r7, [sp, #0x3c]
0040c004  40 70 8d e5                                      str r7, [sp, #0x40]
0040c008  9b 15 fc eb                                      bl #0x31167c
0040c00c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0040c010  14 80 8d e2                                      add r8, sp, #0x14
0040c014  08 00 a0 e1                                      mov r0, r8
0040c018  00 90 c3 e5                                      strb sb, [r3]
0040c01c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0040c020  40 10 9d e5                                      ldr r1, [sp, #0x40]
0040c024  24 80 8d e5                                      str r8, [sp, #0x24]
0040c028  28 80 8d e5                                      str r8, [sp, #0x28]
0040c02c  ad 15 fc eb                                      bl #0x3116e8
0040c030  09 10 a0 e1                                      mov r1, sb
0040c034  38 00 a0 e3                                      mov r0, #0x38
0040c038  4c 11 fc eb                                      bl #0x310570
0040c03c  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0040c040  1c a1 9f e5                                      ldr sl, [pc, #0x11c]
0040c044  00 50 a0 e1                                      mov r5, r0
0040c048  03 30 94 e7                                      ldr r3, [r4, r3]
0040c04c  0a a0 8f e0                                      add sl, pc, sl
0040c050  0a 10 a0 e1                                      mov r1, sl
0040c054  08 30 83 e2                                      add r3, r3, #8
0040c058  08 30 80 e4                                      str r3, [r0], #8
0040c05c  10 20 8d e2                                      add r2, sp, #0x10
0040c060  04 30 8d e5                                      str r3, [sp, #4]
0040c064  20 20 fc eb                                      bl #0x3140ec
0040c068  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
0040c06c  04 60 8b e2                                      add r6, fp, #4
0040c070  06 1d 8b e2                                      add r1, fp, #0x180
0040c074  02 20 94 e7                                      ldr r2, [r4, r2]
0040c078  05 00 a0 e1                                      mov r0, r5
0040c07c  01 10 66 e0                                      rsb r1, r6, r1
0040c080  08 20 82 e2                                      add r2, r2, #8
0040c084  04 10 85 e5                                      str r1, [r5, #4]
0040c088  20 20 80 e4                                      str r2, [r0], #0x20
0040c08c  30 00 85 e5                                      str r0, [r5, #0x30]
0040c090  34 00 85 e5                                      str r0, [r5, #0x34]
0040c094  28 10 9d e5                                      ldr r1, [sp, #0x28]
0040c098  24 20 9d e5                                      ldr r2, [sp, #0x24]
0040c09c  91 15 fc eb                                      bl #0x3116e8
0040c0a0  0a 10 a0 e1                                      mov r1, sl
0040c0a4  05 20 a0 e1                                      mov r2, r5
0040c0a8  06 00 a0 e1                                      mov r0, r6
0040c0ac  0c 1f 04 eb                                      bl #0x513ce4
0040c0b0  08 00 a0 e1                                      mov r0, r8
0040c0b4  3c 1e fc eb                                      bl #0x3139ac
0040c0b8  07 00 a0 e1                                      mov r0, r7
0040c0bc  3a 1e fc eb                                      bl #0x3139ac
0040c0c0  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0040c0c4  09 10 a0 e1                                      mov r1, sb
0040c0c8  2c 00 a0 e3                                      mov r0, #0x2c
0040c0cc  02 20 94 e7                                      ldr r2, [r4, r2]
0040c0d0  98 70 9f e5                                      ldr r7, [pc, #0x98]
0040c0d4  69 bf 8b e2                                      add fp, fp, #0x1a4
0040c0d8  08 90 92 e5                                      ldr sb, [r2, #8]
0040c0dc  00 80 92 e5                                      ldr r8, [r2]
0040c0e0  04 a0 92 e5                                      ldr sl, [r2, #4]
0040c0e4  21 11 fc eb                                      bl #0x310570
0040c0e8  04 30 9d e5                                      ldr r3, [sp, #4]
0040c0ec  07 70 8f e0                                      add r7, pc, r7
0040c0f0  00 50 a0 e1                                      mov r5, r0
0040c0f4  07 10 a0 e1                                      mov r1, r7
0040c0f8  08 30 80 e4                                      str r3, [r0], #8
0040c0fc  0c 20 8d e2                                      add r2, sp, #0xc
0040c100  f9 1f fc eb                                      bl #0x3140ec
0040c104  68 30 9f e5                                      ldr r3, [pc, #0x68]
0040c108  0b b0 66 e0                                      rsb fp, r6, fp
0040c10c  05 20 a0 e1                                      mov r2, r5
0040c110  03 30 94 e7                                      ldr r3, [r4, r3]
0040c114  04 b0 85 e5                                      str fp, [r5, #4]
0040c118  20 80 85 e5                                      str r8, [r5, #0x20]
0040c11c  08 30 83 e2                                      add r3, r3, #8
0040c120  00 30 85 e5                                      str r3, [r5]
0040c124  24 a0 85 e5                                      str sl, [r5, #0x24]
0040c128  28 90 85 e5                                      str sb, [r5, #0x28]
0040c12c  06 00 a0 e1                                      mov r0, r6
0040c130  07 10 a0 e1                                      mov r1, r7
0040c134  ea 1e 04 eb                                      bl #0x513ce4
0040c138  00 c0 9d e5                                      ldr ip, [sp]
0040c13c  44 20 9d e5                                      ldr r2, [sp, #0x44]
0040c140  00 30 9c e5                                      ldr r3, [ip]
0040c144  03 00 52 e1                                      cmp r2, r3
0040c148  01 00 00 1a                                      bne #0x40c154
0040c14c  4c d0 8d e2                                      add sp, sp, #0x4c
0040c150  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0040c154  6d 08 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0040c158  bc 8a 58 00 ac 40 00 00 30 23 00 00 dc bb 4b 00  .byte 0xbc, 0x8a, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x23, 0x00, 0x00, 0xdc, 0xbb, 0x4b, 0x00
0040c168  94 34 00 00 2c 3f 00 00 4c bb 4b 00 44 0b 00 00  .byte 0x94, 0x34, 0x00, 0x00, 0x2c, 0x3f, 0x00, 0x00, 0x4c, 0xbb, 0x4b, 0x00, 0x44, 0x0b, 0x00, 0x00
