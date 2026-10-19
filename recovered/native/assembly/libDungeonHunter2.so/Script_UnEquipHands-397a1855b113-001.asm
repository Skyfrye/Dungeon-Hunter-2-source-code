; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455800, declared_size=8, range_size=8, mode=arm
; class-group: Script_UnEquipHands
; alias: _ZNK19Script_UnEquipHands10IsBlockingEv
; demangled: Script_UnEquipHands::IsBlocking() const
; decoder-mode: arm
00455800  00 00 a0 e3                                      mov r0, #0
00455804  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045ded0, declared_size=344, range_size=344, mode=arm
; class-group: Script_UnEquipHands
; alias: _ZN19Script_UnEquipHands7ExecuteEbi
; demangled: Script_UnEquipHands::Execute(bool, int)
; decoder-mode: arm
0045ded0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045ded4  38 41 9f e5                                      ldr r4, [pc, #0x138]
0045ded8  38 61 9f e5                                      ldr r6, [pc, #0x138]
0045dedc  38 11 9f e5                                      ldr r1, [pc, #0x138]
0045dee0  04 40 8f e0                                      add r4, pc, r4
0045dee4  06 30 94 e7                                      ldr r3, [r4, r6]
0045dee8  01 80 94 e7                                      ldr r8, [r4, r1]
0045deec  38 d0 4d e2                                      sub sp, sp, #0x38
0045def0  00 30 93 e5                                      ldr r3, [r3]
0045def4  02 90 a0 e1                                      mov sb, r2
0045def8  1c 70 8d e2                                      add r7, sp, #0x1c
0045defc  34 30 8d e5                                      str r3, [sp, #0x34]
0045df00  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0045df04  08 00 a0 e1                                      mov r0, r8
0045df08  5e 66 fb eb                                      bl #0x337888
0045df0c  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
0045df10  18 20 8d e2                                      add r2, sp, #0x18
0045df14  07 00 a0 e1                                      mov r0, r7
0045df18  01 10 8f e0                                      add r1, pc, r1
0045df1c  72 d8 fa eb                                      bl #0x3140ec
0045df20  07 10 a0 e1                                      mov r1, r7
0045df24  08 00 a0 e1                                      mov r0, r8
0045df28  d6 66 fb eb                                      bl #0x337a88
0045df2c  07 00 a0 e1                                      mov r0, r7
0045df30  c7 e8 fa eb                                      bl #0x318254
0045df34  e8 10 9f e5                                      ldr r1, [pc, #0xe8]
0045df38  0c 50 8d e2                                      add r5, sp, #0xc
0045df3c  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0045df40  01 10 94 e7                                      ldr r1, [r4, r1]
0045df44  00 70 a0 e3                                      mov r7, #0
0045df48  09 30 a0 e1                                      mov r3, sb
0045df4c  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045df50  05 00 a0 e1                                      mov r0, r5
0045df54  00 70 8d e5                                      str r7, [sp]
0045df58  04 70 8d e5                                      str r7, [sp, #4]
0045df5c  4f b3 fb eb                                      bl #0x34aca0
0045df60  05 00 a0 e1                                      mov r0, r5
0045df64  07 10 a0 e1                                      mov r1, r7
0045df68  94 87 fb eb                                      bl #0x33fdc0
0045df6c  07 00 50 e1                                      cmp r0, r7
0045df70  06 00 00 1a                                      bne #0x45df90
0045df74  06 30 94 e7                                      ldr r3, [r4, r6]
0045df78  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045df7c  00 30 93 e5                                      ldr r3, [r3]
0045df80  03 00 52 e1                                      cmp r2, r3
0045df84  21 00 00 1a                                      bne #0x45e010
0045df88  38 d0 8d e2                                      add sp, sp, #0x38
0045df8c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045df90  05 00 a0 e1                                      mov r0, r5
0045df94  ee 87 fb eb                                      bl #0x33ff54
0045df98  00 50 50 e2                                      subs r5, r0, #0
0045df9c  f4 ff ff 0a                                      beq #0x45df74
0045dfa0  df 7f 85 e2                                      add r7, r5, #0x37c
0045dfa4  07 00 a0 e1                                      mov r0, r7
0045dfa8  01 10 a0 e3                                      mov r1, #1
0045dfac  a2 87 fe eb                                      bl #0x3ffe3c
0045dfb0  00 10 a0 e1                                      mov r1, r0
0045dfb4  07 00 a0 e1                                      mov r0, r7
0045dfb8  9f 79 fe eb                                      bl #0x3fc63c
0045dfbc  f4 34 01 e3                                      movw r3, #0x14f4
0045dfc0  03 00 85 e7                                      str r0, [r5, r3]
0045dfc4  02 10 a0 e3                                      mov r1, #2
0045dfc8  07 00 a0 e1                                      mov r0, r7
0045dfcc  9a 87 fe eb                                      bl #0x3ffe3c
0045dfd0  00 10 a0 e1                                      mov r1, r0
0045dfd4  07 00 a0 e1                                      mov r0, r7
0045dfd8  97 79 fe eb                                      bl #0x3fc63c
0045dfdc  f8 34 01 e3                                      movw r3, #0x14f8
0045dfe0  03 00 85 e7                                      str r0, [r5, r3]
0045dfe4  00 30 95 e5                                      ldr r3, [r5]
0045dfe8  05 00 a0 e1                                      mov r0, r5
0045dfec  01 10 a0 e3                                      mov r1, #1
0045dff0  0f e0 a0 e1                                      mov lr, pc
0045dff4  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0045dff8  05 00 a0 e1                                      mov r0, r5
0045dffc  00 30 95 e5                                      ldr r3, [r5]
0045e000  02 10 a0 e3                                      mov r1, #2
0045e004  0f e0 a0 e1                                      mov lr, pc
0045e008  44 f1 93 e5                                      ldr pc, [r3, #0x144]
0045e00c  d8 ff ff ea                                      b #0x45df74
0045e010  be c0 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045e014  b0 6b 53 00 ac 40 00 00 84 08 00 00 68 f1 46 00  .byte 0xb0, 0x6b, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x68, 0xf1, 0x46, 0x00
0045e024  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
