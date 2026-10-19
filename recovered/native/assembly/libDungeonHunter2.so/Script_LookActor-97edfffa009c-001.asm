; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455818, declared_size=8, range_size=8, mode=arm
; class-group: Script_LookActor
; alias: _ZNK16Script_LookActor10IsBlockingEv
; demangled: Script_LookActor::IsBlocking() const
; decoder-mode: arm
00455818  00 00 a0 e3                                      mov r0, #0
0045581c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045ec50, declared_size=624, range_size=624, mode=arm
; class-group: Script_LookActor
; alias: _ZN16Script_LookActor7ExecuteEbi
; demangled: Script_LookActor::Execute(bool, int)
; decoder-mode: arm
0045ec50  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045ec54  4c 42 9f e5                                      ldr r4, [pc, #0x24c]
0045ec58  4c b2 9f e5                                      ldr fp, [pc, #0x24c]
0045ec5c  4c 12 9f e5                                      ldr r1, [pc, #0x24c]
0045ec60  04 40 8f e0                                      add r4, pc, r4
0045ec64  0b 30 94 e7                                      ldr r3, [r4, fp]
0045ec68  01 70 94 e7                                      ldr r7, [r4, r1]
0045ec6c  54 d0 4d e2                                      sub sp, sp, #0x54
0045ec70  00 30 93 e5                                      ldr r3, [r3]
0045ec74  02 90 a0 e1                                      mov sb, r2
0045ec78  34 50 8d e2                                      add r5, sp, #0x34
0045ec7c  4c 30 8d e5                                      str r3, [sp, #0x4c]
0045ec80  0c 60 90 e5                                      ldr r6, [r0, #0xc]
0045ec84  07 00 a0 e1                                      mov r0, r7
0045ec88  fe 62 fb eb                                      bl #0x337888
0045ec8c  20 12 9f e5                                      ldr r1, [pc, #0x220]
0045ec90  30 20 8d e2                                      add r2, sp, #0x30
0045ec94  05 00 a0 e1                                      mov r0, r5
0045ec98  01 10 8f e0                                      add r1, pc, r1
0045ec9c  14 a2 9f e5                                      ldr sl, [pc, #0x214]
0045eca0  11 d5 fa eb                                      bl #0x3140ec
0045eca4  05 10 a0 e1                                      mov r1, r5
0045eca8  07 00 a0 e1                                      mov r0, r7
0045ecac  75 63 fb eb                                      bl #0x337a88
0045ecb0  05 00 a0 e1                                      mov r0, r5
0045ecb4  66 e5 fa eb                                      bl #0x318254
0045ecb8  0a 30 94 e7                                      ldr r3, [r4, sl]
0045ecbc  24 80 8d e2                                      add r8, sp, #0x24
0045ecc0  14 20 96 e5                                      ldr r2, [r6, #0x14]
0045ecc4  38 10 93 e5                                      ldr r1, [r3, #0x38]
0045ecc8  00 50 a0 e3                                      mov r5, #0
0045eccc  09 30 a0 e1                                      mov r3, sb
0045ecd0  08 00 a0 e1                                      mov r0, r8
0045ecd4  00 50 8d e5                                      str r5, [sp]
0045ecd8  04 50 8d e5                                      str r5, [sp, #4]
0045ecdc  ef af fb eb                                      bl #0x34aca0
0045ece0  08 00 a0 e1                                      mov r0, r8
0045ece4  05 10 a0 e1                                      mov r1, r5
0045ece8  34 84 fb eb                                      bl #0x33fdc0
0045ecec  00 70 50 e2                                      subs r7, r0, #0
0045ecf0  4d 00 00 1a                                      bne #0x45ee2c
0045ecf4  18 50 8d e2                                      add r5, sp, #0x18
0045ecf8  00 10 a0 e3                                      mov r1, #0
0045ecfc  05 00 a0 e1                                      mov r0, r5
0045ed00  07 82 fb eb                                      bl #0x33f524
0045ed04  0c 80 96 e5                                      ldr r8, [r6, #0xc]
0045ed08  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
0045ed0c  08 00 a0 e1                                      mov r0, r8
0045ed10  01 10 8f e0                                      add r1, pc, r1
0045ed14  80 bd fa eb                                      bl #0x30e31c
0045ed18  00 00 50 e3                                      cmp r0, #0
0045ed1c  34 00 00 1a                                      bne #0x45edf4
0045ed20  00 00 8d e5                                      str r0, [sp]
0045ed24  0a 30 94 e7                                      ldr r3, [r4, sl]
0045ed28  14 c0 96 e5                                      ldr ip, [r6, #0x14]
0045ed2c  08 60 8d e2                                      add r6, sp, #8
0045ed30  38 10 93 e5                                      ldr r1, [r3, #0x38]
0045ed34  08 20 a0 e1                                      mov r2, r8
0045ed38  09 30 a0 e1                                      mov r3, sb
0045ed3c  06 00 a0 e1                                      mov r0, r6
0045ed40  04 c0 8d e5                                      str ip, [sp, #4]
0045ed44  d5 af fb eb                                      bl #0x34aca0
0045ed48  08 30 96 e5                                      ldr r3, [r6, #8]
0045ed4c  05 00 a0 e1                                      mov r0, r5
0045ed50  00 10 a0 e3                                      mov r1, #0
0045ed54  08 30 85 e5                                      str r3, [r5, #8]
0045ed58  08 30 9d e5                                      ldr r3, [sp, #8]
0045ed5c  18 30 8d e5                                      str r3, [sp, #0x18]
0045ed60  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0045ed64  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045ed68  14 84 fb eb                                      bl #0x33fdc0
0045ed6c  00 60 50 e2                                      subs r6, r0, #0
0045ed70  29 00 00 1a                                      bne #0x45ee1c
0045ed74  00 00 57 e3                                      cmp r7, #0
0045ed78  13 00 00 0a                                      beq #0x45edcc
0045ed7c  05 00 a0 e1                                      mov r0, r5
0045ed80  00 10 a0 e3                                      mov r1, #0
0045ed84  0d 84 fb eb                                      bl #0x33fdc0
0045ed88  00 00 50 e3                                      cmp r0, #0
0045ed8c  0e 00 00 0a                                      beq #0x45edcc
0045ed90  00 30 97 e5                                      ldr r3, [r7]
0045ed94  07 00 a0 e1                                      mov r0, r7
0045ed98  0f e0 a0 e1                                      mov lr, pc
0045ed9c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0045eda0  00 00 50 e3                                      cmp r0, #0
0045eda4  24 00 00 1a                                      bne #0x45ee3c
0045eda8  78 33 97 e5                                      ldr r3, [r7, #0x378]
0045edac  01 20 a0 e3                                      mov r2, #1
0045edb0  06 10 a0 e1                                      mov r1, r6
0045edb4  09 20 c3 e5                                      strb r2, [r3, #9]
0045edb8  78 03 97 e5                                      ldr r0, [r7, #0x378]
0045edbc  3e 99 fe eb                                      bl #0x4052bc
0045edc0  78 33 97 e5                                      ldr r3, [r7, #0x378]
0045edc4  00 20 a0 e3                                      mov r2, #0
0045edc8  09 20 c3 e5                                      strb r2, [r3, #9]
0045edcc  05 00 a0 e1                                      mov r0, r5
0045edd0  00 10 a0 e3                                      mov r1, #0
0045edd4  f9 83 fb eb                                      bl #0x33fdc0
0045edd8  0b 30 94 e7                                      ldr r3, [r4, fp]
0045eddc  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0045ede0  00 30 93 e5                                      ldr r3, [r3]
0045ede4  03 00 52 e1                                      cmp r2, r3
0045ede8  2d 00 00 1a                                      bne #0x45eea4
0045edec  54 d0 8d e2                                      add sp, sp, #0x54
0045edf0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045edf4  0a 30 94 e7                                      ldr r3, [r4, sl]
0045edf8  00 c0 a0 e3                                      mov ip, #0
0045edfc  08 60 8d e2                                      add r6, sp, #8
0045ee00  38 10 93 e5                                      ldr r1, [r3, #0x38]
0045ee04  08 20 a0 e1                                      mov r2, r8
0045ee08  09 30 a0 e1                                      mov r3, sb
0045ee0c  06 00 a0 e1                                      mov r0, r6
0045ee10  04 c0 8d e5                                      str ip, [sp, #4]
0045ee14  00 c0 8d e5                                      str ip, [sp]
0045ee18  c9 ff ff ea                                      b #0x45ed44
0045ee1c  05 00 a0 e1                                      mov r0, r5
0045ee20  2f 84 fb eb                                      bl #0x33fee4
0045ee24  00 60 a0 e1                                      mov r6, r0
0045ee28  d1 ff ff ea                                      b #0x45ed74
0045ee2c  08 00 a0 e1                                      mov r0, r8
0045ee30  47 84 fb eb                                      bl #0x33ff54
0045ee34  00 70 a0 e1                                      mov r7, r0
0045ee38  ad ff ff ea                                      b #0x45ecf4
0045ee3c  0a a0 94 e7                                      ldr sl, [r4, sl]
0045ee40  0a 00 a0 e1                                      mov r0, sl
0045ee44  d2 01 fb eb                                      bl #0x31f594
0045ee48  00 00 50 e3                                      cmp r0, #0
0045ee4c  d5 ff ff 0a                                      beq #0x45eda8
0045ee50  01 80 a0 e3                                      mov r8, #1
0045ee54  40 00 9a e5                                      ldr r0, [sl, #0x40]
0045ee58  08 10 a0 e1                                      mov r1, r8
0045ee5c  00 20 a0 e3                                      mov r2, #0
0045ee60  37 3e fc eb                                      bl #0x36e744
0045ee64  60 96 90 e5                                      ldr sb, [r0, #0x660]
0045ee68  00 00 59 e3                                      cmp sb, #0
0045ee6c  08 00 00 0a                                      beq #0x45ee94
0045ee70  78 33 99 e5                                      ldr r3, [sb, #0x378]
0045ee74  01 20 a0 e3                                      mov r2, #1
0045ee78  06 10 a0 e1                                      mov r1, r6
0045ee7c  09 20 c3 e5                                      strb r2, [r3, #9]
0045ee80  78 03 99 e5                                      ldr r0, [sb, #0x378]
0045ee84  0c 99 fe eb                                      bl #0x4052bc
0045ee88  78 33 99 e5                                      ldr r3, [sb, #0x378]
0045ee8c  00 20 a0 e3                                      mov r2, #0
0045ee90  09 20 c3 e5                                      strb r2, [r3, #9]
0045ee94  01 80 88 e2                                      add r8, r8, #1
0045ee98  04 00 58 e3                                      cmp r8, #4
0045ee9c  ec ff ff 1a                                      bne #0x45ee54
0045eea0  c0 ff ff ea                                      b #0x45eda8
0045eea4  19 bd fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045eea8  30 5e 53 00 ac 40 00 00 84 08 00 00 e8 e3 46 00  .byte 0x30, 0x5e, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xe8, 0xe3, 0x46, 0x00
0045eeb8  f4 37 00 00 d0 16 46 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0xd0, 0x16, 0x46, 0x00
