; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455838, declared_size=8, range_size=8, mode=arm
; class-group: Script_SetActorPosition
; alias: _ZNK23Script_SetActorPosition10IsBlockingEv
; demangled: Script_SetActorPosition::IsBlocking() const
; decoder-mode: arm
00455838  00 00 a0 e3                                      mov r0, #0
0045583c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045e5c8, declared_size=712, range_size=712, mode=arm
; class-group: Script_SetActorPosition
; alias: _ZN23Script_SetActorPosition7ExecuteEbi
; demangled: Script_SetActorPosition::Execute(bool, int)
; decoder-mode: arm
0045e5c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045e5cc  a8 42 9f e5                                      ldr r4, [pc, #0x2a8]
0045e5d0  a8 92 9f e5                                      ldr sb, [pc, #0x2a8]
0045e5d4  a8 12 9f e5                                      ldr r1, [pc, #0x2a8]
0045e5d8  04 40 8f e0                                      add r4, pc, r4
0045e5dc  09 30 94 e7                                      ldr r3, [r4, sb]
0045e5e0  01 60 94 e7                                      ldr r6, [r4, r1]
0045e5e4  74 d0 4d e2                                      sub sp, sp, #0x74
0045e5e8  00 30 93 e5                                      ldr r3, [r3]
0045e5ec  02 a0 a0 e1                                      mov sl, r2
0045e5f0  54 50 8d e2                                      add r5, sp, #0x54
0045e5f4  6c 30 8d e5                                      str r3, [sp, #0x6c]
0045e5f8  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0045e5fc  06 00 a0 e1                                      mov r0, r6
0045e600  a0 64 fb eb                                      bl #0x337888
0045e604  7c 12 9f e5                                      ldr r1, [pc, #0x27c]
0045e608  50 20 8d e2                                      add r2, sp, #0x50
0045e60c  05 00 a0 e1                                      mov r0, r5
0045e610  01 10 8f e0                                      add r1, pc, r1
0045e614  70 b2 9f e5                                      ldr fp, [pc, #0x270]
0045e618  b3 d6 fa eb                                      bl #0x3140ec
0045e61c  05 10 a0 e1                                      mov r1, r5
0045e620  06 00 a0 e1                                      mov r0, r6
0045e624  17 65 fb eb                                      bl #0x337a88
0045e628  05 00 a0 e1                                      mov r0, r5
0045e62c  08 e7 fa eb                                      bl #0x318254
0045e630  0b 60 94 e7                                      ldr r6, [r4, fp]
0045e634  44 80 8d e2                                      add r8, sp, #0x44
0045e638  14 20 97 e5                                      ldr r2, [r7, #0x14]
0045e63c  38 10 96 e5                                      ldr r1, [r6, #0x38]
0045e640  00 50 a0 e3                                      mov r5, #0
0045e644  0a 30 a0 e1                                      mov r3, sl
0045e648  08 00 a0 e1                                      mov r0, r8
0045e64c  00 50 8d e5                                      str r5, [sp]
0045e650  04 50 8d e5                                      str r5, [sp, #4]
0045e654  91 b1 fb eb                                      bl #0x34aca0
0045e658  08 00 a0 e1                                      mov r0, r8
0045e65c  20 86 fb eb                                      bl #0x33fee4
0045e660  0c 20 97 e5                                      ldr r2, [r7, #0xc]
0045e664  38 70 8d e2                                      add r7, sp, #0x38
0045e668  38 10 96 e5                                      ldr r1, [r6, #0x38]
0045e66c  00 80 a0 e1                                      mov r8, r0
0045e670  0a 30 a0 e1                                      mov r3, sl
0045e674  07 00 a0 e1                                      mov r0, r7
0045e678  00 50 8d e5                                      str r5, [sp]
0045e67c  04 50 8d e5                                      str r5, [sp, #4]
0045e680  86 b1 fb eb                                      bl #0x34aca0
0045e684  07 00 a0 e1                                      mov r0, r7
0045e688  15 86 fb eb                                      bl #0x33fee4
0045e68c  05 00 50 e1                                      cmp r0, r5
0045e690  05 00 58 11                                      cmpne r8, r5
0045e694  00 70 a0 e1                                      mov r7, r0
0045e698  06 00 00 1a                                      bne #0x45e6b8
0045e69c  09 30 94 e7                                      ldr r3, [r4, sb]
0045e6a0  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0045e6a4  00 30 93 e5                                      ldr r3, [r3]
0045e6a8  03 00 52 e1                                      cmp r2, r3
0045e6ac  71 00 00 1a                                      bne #0x45e878
0045e6b0  74 d0 8d e2                                      add sp, sp, #0x74
0045e6b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045e6b8  2c a0 8d e2                                      add sl, sp, #0x2c
0045e6bc  0a 00 a0 e1                                      mov r0, sl
0045e6c0  08 10 a0 e1                                      mov r1, r8
0045e6c4  98 7d fb eb                                      bl #0x33dd2c
0045e6c8  0a 00 a0 e1                                      mov r0, sl
0045e6cc  20 86 fb eb                                      bl #0x33ff54
0045e6d0  00 a0 50 e2                                      subs sl, r0, #0
0045e6d4  09 00 00 0a                                      beq #0x45e700
0045e6d8  4f 0e 8a e2                                      add r0, sl, #0x4f0
0045e6dc  0c 00 80 e2                                      add r0, r0, #0xc
0045e6e0  05 10 a0 e1                                      mov r1, r5
0045e6e4  c5 8c fd eb                                      bl #0x3c1a00
0045e6e8  0a 00 a0 e1                                      mov r0, sl
0045e6ec  00 30 9a e5                                      ldr r3, [sl]
0045e6f0  0f e0 a0 e1                                      mov lr, pc
0045e6f4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0045e6f8  05 00 50 e1                                      cmp r0, r5
0045e6fc  06 00 00 1a                                      bne #0x45e71c
0045e700  08 00 a0 e1                                      mov r0, r8
0045e704  16 1e 87 e2                                      add r1, r7, #0x160
0045e708  01 20 a0 e3                                      mov r2, #1
0045e70c  a8 d5 fc eb                                      bl #0x393db4
0045e710  08 00 a0 e1                                      mov r0, r8
0045e714  dd d5 fc eb                                      bl #0x393e90
0045e718  df ff ff ea                                      b #0x45e69c
0045e71c  05 20 a0 e1                                      mov r2, r5
0045e720  40 00 96 e5                                      ldr r0, [r6, #0x40]
0045e724  01 10 a0 e3                                      mov r1, #1
0045e728  05 40 fc eb                                      bl #0x36e744
0045e72c  60 56 90 e5                                      ldr r5, [r0, #0x660]
0045e730  00 00 55 e3                                      cmp r5, #0
0045e734  14 00 00 0a                                      beq #0x45e78c
0045e738  64 01 97 e5                                      ldr r0, [r7, #0x164]
0045e73c  00 10 a0 e3                                      mov r1, #0
0045e740  17 c1 fa eb                                      bl #0x30eba4
0045e744  00 10 a0 e3                                      mov r1, #0
0045e748  00 60 a0 e1                                      mov r6, r0
0045e74c  68 01 97 e5                                      ldr r0, [r7, #0x168]
0045e750  13 c1 fa eb                                      bl #0x30eba4
0045e754  c3 14 a0 e3                                      mov r1, #0xc3000000
0045e758  00 a0 a0 e1                                      mov sl, r0
0045e75c  12 17 81 e2                                      add r1, r1, #0x480000
0045e760  60 01 97 e5                                      ldr r0, [r7, #0x160]
0045e764  0e c1 fa eb                                      bl #0x30eba4
0045e768  20 10 8d e2                                      add r1, sp, #0x20
0045e76c  20 00 8d e5                                      str r0, [sp, #0x20]
0045e770  01 20 a0 e3                                      mov r2, #1
0045e774  05 00 a0 e1                                      mov r0, r5
0045e778  24 60 8d e5                                      str r6, [sp, #0x24]
0045e77c  28 a0 8d e5                                      str sl, [sp, #0x28]
0045e780  8b d5 fc eb                                      bl #0x393db4
0045e784  05 00 a0 e1                                      mov r0, r5
0045e788  c0 d5 fc eb                                      bl #0x393e90
0045e78c  0b 30 94 e7                                      ldr r3, [r4, fp]
0045e790  02 10 a0 e3                                      mov r1, #2
0045e794  00 20 a0 e3                                      mov r2, #0
0045e798  40 00 93 e5                                      ldr r0, [r3, #0x40]
0045e79c  e8 3f fc eb                                      bl #0x36e744
0045e7a0  60 56 90 e5                                      ldr r5, [r0, #0x660]
0045e7a4  00 00 55 e3                                      cmp r5, #0
0045e7a8  14 00 00 0a                                      beq #0x45e800
0045e7ac  64 01 97 e5                                      ldr r0, [r7, #0x164]
0045e7b0  00 10 a0 e3                                      mov r1, #0
0045e7b4  fa c0 fa eb                                      bl #0x30eba4
0045e7b8  00 10 a0 e3                                      mov r1, #0
0045e7bc  00 60 a0 e1                                      mov r6, r0
0045e7c0  68 01 97 e5                                      ldr r0, [r7, #0x168]
0045e7c4  f6 c0 fa eb                                      bl #0x30eba4
0045e7c8  43 14 a0 e3                                      mov r1, #0x43000000
0045e7cc  00 a0 a0 e1                                      mov sl, r0
0045e7d0  12 17 81 e2                                      add r1, r1, #0x480000
0045e7d4  60 01 97 e5                                      ldr r0, [r7, #0x160]
0045e7d8  f1 c0 fa eb                                      bl #0x30eba4
0045e7dc  14 10 8d e2                                      add r1, sp, #0x14
0045e7e0  14 00 8d e5                                      str r0, [sp, #0x14]
0045e7e4  01 20 a0 e3                                      mov r2, #1
0045e7e8  05 00 a0 e1                                      mov r0, r5
0045e7ec  18 60 8d e5                                      str r6, [sp, #0x18]
0045e7f0  1c a0 8d e5                                      str sl, [sp, #0x1c]
0045e7f4  6e d5 fc eb                                      bl #0x393db4
0045e7f8  05 00 a0 e1                                      mov r0, r5
0045e7fc  a3 d5 fc eb                                      bl #0x393e90
0045e800  0b 30 94 e7                                      ldr r3, [r4, fp]
0045e804  03 10 a0 e3                                      mov r1, #3
0045e808  00 20 a0 e3                                      mov r2, #0
0045e80c  40 00 93 e5                                      ldr r0, [r3, #0x40]
0045e810  cb 3f fc eb                                      bl #0x36e744
0045e814  60 56 90 e5                                      ldr r5, [r0, #0x660]
0045e818  00 00 55 e3                                      cmp r5, #0
0045e81c  b7 ff ff 0a                                      beq #0x45e700
0045e820  c3 14 a0 e3                                      mov r1, #0xc3000000
0045e824  64 01 97 e5                                      ldr r0, [r7, #0x164]
0045e828  12 17 81 e2                                      add r1, r1, #0x480000
0045e82c  dc c0 fa eb                                      bl #0x30eba4
0045e830  00 10 a0 e3                                      mov r1, #0
0045e834  00 60 a0 e1                                      mov r6, r0
0045e838  68 01 97 e5                                      ldr r0, [r7, #0x168]
0045e83c  d8 c0 fa eb                                      bl #0x30eba4
0045e840  00 10 a0 e3                                      mov r1, #0
0045e844  00 a0 a0 e1                                      mov sl, r0
0045e848  60 01 97 e5                                      ldr r0, [r7, #0x160]
0045e84c  d4 c0 fa eb                                      bl #0x30eba4
0045e850  08 10 8d e2                                      add r1, sp, #8
0045e854  08 00 8d e5                                      str r0, [sp, #8]
0045e858  01 20 a0 e3                                      mov r2, #1
0045e85c  05 00 a0 e1                                      mov r0, r5
0045e860  0c 60 8d e5                                      str r6, [sp, #0xc]
0045e864  10 a0 8d e5                                      str sl, [sp, #0x10]
0045e868  51 d5 fc eb                                      bl #0x393db4
0045e86c  05 00 a0 e1                                      mov r0, r5
0045e870  86 d5 fc eb                                      bl #0x393e90
0045e874  a1 ff ff ea                                      b #0x45e700
0045e878  a4 be fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045e87c  b8 64 53 00 ac 40 00 00 84 08 00 00 70 ea 46 00  .byte 0xb8, 0x64, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x70, 0xea, 0x46, 0x00
0045e88c  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
