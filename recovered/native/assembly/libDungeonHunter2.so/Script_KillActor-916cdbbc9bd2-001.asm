; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455830, declared_size=8, range_size=8, mode=arm
; class-group: Script_KillActor
; alias: _ZNK16Script_KillActor10IsBlockingEv
; demangled: Script_KillActor::IsBlocking() const
; decoder-mode: arm
00455830  00 00 a0 e3                                      mov r0, #0
00455834  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045ea04, declared_size=272, range_size=272, mode=arm
; class-group: Script_KillActor
; alias: _ZN16Script_KillActor7ExecuteEbi
; demangled: Script_KillActor::Execute(bool, int)
; decoder-mode: arm
0045ea04  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045ea08  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
0045ea0c  f0 60 9f e5                                      ldr r6, [pc, #0xf0]
0045ea10  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
0045ea14  04 40 8f e0                                      add r4, pc, r4
0045ea18  06 30 94 e7                                      ldr r3, [r4, r6]
0045ea1c  01 80 94 e7                                      ldr r8, [r4, r1]
0045ea20  38 d0 4d e2                                      sub sp, sp, #0x38
0045ea24  00 30 93 e5                                      ldr r3, [r3]
0045ea28  02 90 a0 e1                                      mov sb, r2
0045ea2c  1c 70 8d e2                                      add r7, sp, #0x1c
0045ea30  34 30 8d e5                                      str r3, [sp, #0x34]
0045ea34  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0045ea38  08 00 a0 e1                                      mov r0, r8
0045ea3c  91 63 fb eb                                      bl #0x337888
0045ea40  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
0045ea44  18 20 8d e2                                      add r2, sp, #0x18
0045ea48  07 00 a0 e1                                      mov r0, r7
0045ea4c  01 10 8f e0                                      add r1, pc, r1
0045ea50  a5 d5 fa eb                                      bl #0x3140ec
0045ea54  07 10 a0 e1                                      mov r1, r7
0045ea58  08 00 a0 e1                                      mov r0, r8
0045ea5c  09 64 fb eb                                      bl #0x337a88
0045ea60  07 00 a0 e1                                      mov r0, r7
0045ea64  fa e5 fa eb                                      bl #0x318254
0045ea68  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
0045ea6c  0c 50 8d e2                                      add r5, sp, #0xc
0045ea70  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0045ea74  01 10 94 e7                                      ldr r1, [r4, r1]
0045ea78  00 70 a0 e3                                      mov r7, #0
0045ea7c  09 30 a0 e1                                      mov r3, sb
0045ea80  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045ea84  05 00 a0 e1                                      mov r0, r5
0045ea88  00 70 8d e5                                      str r7, [sp]
0045ea8c  04 70 8d e5                                      str r7, [sp, #4]
0045ea90  82 b0 fb eb                                      bl #0x34aca0
0045ea94  05 00 a0 e1                                      mov r0, r5
0045ea98  07 10 a0 e1                                      mov r1, r7
0045ea9c  c7 84 fb eb                                      bl #0x33fdc0
0045eaa0  07 00 50 e1                                      cmp r0, r7
0045eaa4  06 00 00 1a                                      bne #0x45eac4
0045eaa8  06 30 94 e7                                      ldr r3, [r4, r6]
0045eaac  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045eab0  00 30 93 e5                                      ldr r3, [r3]
0045eab4  03 00 52 e1                                      cmp r2, r3
0045eab8  0f 00 00 1a                                      bne #0x45eafc
0045eabc  38 d0 8d e2                                      add sp, sp, #0x38
0045eac0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045eac4  05 00 a0 e1                                      mov r0, r5
0045eac8  21 85 fb eb                                      bl #0x33ff54
0045eacc  00 50 50 e2                                      subs r5, r0, #0
0045ead0  f4 ff ff 0a                                      beq #0x45eaa8
0045ead4  78 33 95 e5                                      ldr r3, [r5, #0x378]
0045ead8  01 20 a0 e3                                      mov r2, #1
0045eadc  07 10 a0 e1                                      mov r1, r7
0045eae0  09 20 c3 e5                                      strb r2, [r3, #9]
0045eae4  78 03 95 e5                                      ldr r0, [r5, #0x378]
0045eae8  07 20 a0 e1                                      mov r2, r7
0045eaec  06 9b fe eb                                      bl #0x40570c
0045eaf0  78 33 95 e5                                      ldr r3, [r5, #0x378]
0045eaf4  09 70 c3 e5                                      strb r7, [r3, #9]
0045eaf8  ea ff ff ea                                      b #0x45eaa8
0045eafc  03 be fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045eb00  7c 60 53 00 ac 40 00 00 84 08 00 00 34 e6 46 00  .byte 0x7c, 0x60, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x34, 0xe6, 0x46, 0x00
0045eb10  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
