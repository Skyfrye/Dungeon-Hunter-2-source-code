; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455820, declared_size=8, range_size=8, mode=arm
; class-group: Script_ShowActor
; alias: _ZNK16Script_ShowActor10IsBlockingEv
; demangled: Script_ShowActor::IsBlocking() const
; decoder-mode: arm
00455820  00 00 a0 e3                                      mov r0, #0
00455824  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045eb14, declared_size=316, range_size=316, mode=arm
; class-group: Script_ShowActor
; alias: _ZN16Script_ShowActor7ExecuteEbi
; demangled: Script_ShowActor::Execute(bool, int)
; decoder-mode: arm
0045eb14  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045eb18  1c 41 9f e5                                      ldr r4, [pc, #0x11c]
0045eb1c  1c 51 9f e5                                      ldr r5, [pc, #0x11c]
0045eb20  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
0045eb24  04 40 8f e0                                      add r4, pc, r4
0045eb28  05 30 94 e7                                      ldr r3, [r4, r5]
0045eb2c  01 60 94 e7                                      ldr r6, [r4, r1]
0045eb30  10 71 9f e5                                      ldr r7, [pc, #0x110]
0045eb34  00 30 93 e5                                      ldr r3, [r3]
0045eb38  50 d0 4d e2                                      sub sp, sp, #0x50
0045eb3c  34 80 8d e2                                      add r8, sp, #0x34
0045eb40  07 70 8f e0                                      add r7, pc, r7
0045eb44  00 a0 a0 e1                                      mov sl, r0
0045eb48  06 00 a0 e1                                      mov r0, r6
0045eb4c  4c 30 8d e5                                      str r3, [sp, #0x4c]
0045eb50  02 90 a0 e1                                      mov sb, r2
0045eb54  4b 63 fb eb                                      bl #0x337888
0045eb58  18 20 8d e2                                      add r2, sp, #0x18
0045eb5c  07 10 a0 e1                                      mov r1, r7
0045eb60  08 00 a0 e1                                      mov r0, r8
0045eb64  60 d5 fa eb                                      bl #0x3140ec
0045eb68  08 10 a0 e1                                      mov r1, r8
0045eb6c  06 00 a0 e1                                      mov r0, r6
0045eb70  c4 63 fb eb                                      bl #0x337a88
0045eb74  08 00 a0 e1                                      mov r0, r8
0045eb78  b5 e5 fa eb                                      bl #0x318254
0045eb7c  1c 80 8d e2                                      add r8, sp, #0x1c
0045eb80  06 00 a0 e1                                      mov r0, r6
0045eb84  0c a0 9a e5                                      ldr sl, [sl, #0xc]
0045eb88  3e 63 fb eb                                      bl #0x337888
0045eb8c  14 20 8d e2                                      add r2, sp, #0x14
0045eb90  07 10 a0 e1                                      mov r1, r7
0045eb94  08 00 a0 e1                                      mov r0, r8
0045eb98  53 d5 fa eb                                      bl #0x3140ec
0045eb9c  08 10 a0 e1                                      mov r1, r8
0045eba0  06 00 a0 e1                                      mov r0, r6
0045eba4  b7 63 fb eb                                      bl #0x337a88
0045eba8  08 00 a0 e1                                      mov r0, r8
0045ebac  a8 e5 fa eb                                      bl #0x318254
0045ebb0  94 30 9f e5                                      ldr r3, [pc, #0x94]
0045ebb4  08 60 8d e2                                      add r6, sp, #8
0045ebb8  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0045ebbc  03 10 94 e7                                      ldr r1, [r4, r3]
0045ebc0  00 70 a0 e3                                      mov r7, #0
0045ebc4  09 30 a0 e1                                      mov r3, sb
0045ebc8  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045ebcc  06 00 a0 e1                                      mov r0, r6
0045ebd0  00 70 8d e5                                      str r7, [sp]
0045ebd4  04 70 8d e5                                      str r7, [sp, #4]
0045ebd8  30 b0 fb eb                                      bl #0x34aca0
0045ebdc  06 00 a0 e1                                      mov r0, r6
0045ebe0  07 10 a0 e1                                      mov r1, r7
0045ebe4  75 84 fb eb                                      bl #0x33fdc0
0045ebe8  07 00 50 e1                                      cmp r0, r7
0045ebec  06 00 00 1a                                      bne #0x45ec0c
0045ebf0  05 30 94 e7                                      ldr r3, [r4, r5]
0045ebf4  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0045ebf8  00 30 93 e5                                      ldr r3, [r3]
0045ebfc  03 00 52 e1                                      cmp r2, r3
0045ec00  0c 00 00 1a                                      bne #0x45ec38
0045ec04  50 d0 8d e2                                      add sp, sp, #0x50
0045ec08  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045ec0c  06 00 a0 e1                                      mov r0, r6
0045ec10  b3 84 fb eb                                      bl #0x33fee4
0045ec14  00 60 50 e2                                      subs r6, r0, #0
0045ec18  f4 ff ff 0a                                      beq #0x45ebf0
0045ec1c  77 b6 fc eb                                      bl #0x38c600
0045ec20  06 00 a0 e1                                      mov r0, r6
0045ec24  00 30 96 e5                                      ldr r3, [r6]
0045ec28  01 10 a0 e3                                      mov r1, #1
0045ec2c  0f e0 a0 e1                                      mov lr, pc
0045ec30  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0045ec34  ed ff ff ea                                      b #0x45ebf0
0045ec38  b4 bd fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045ec3c  6c 5f 53 00 ac 40 00 00 84 08 00 00 40 e5 46 00  .byte 0x6c, 0x5f, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x40, 0xe5, 0x46, 0x00
0045ec4c  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
