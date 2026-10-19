; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455828, declared_size=8, range_size=8, mode=arm
; class-group: Script_HideActor
; alias: _ZNK16Script_HideActor10IsBlockingEv
; demangled: Script_HideActor::IsBlocking() const
; decoder-mode: arm
00455828  00 00 a0 e3                                      mov r0, #0
0045582c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045e028, declared_size=252, range_size=252, mode=arm
; class-group: Script_HideActor
; alias: _ZN16Script_HideActor7ExecuteEbi
; demangled: Script_HideActor::Execute(bool, int)
; decoder-mode: arm
0045e028  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045e02c  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
0045e030  dc 60 9f e5                                      ldr r6, [pc, #0xdc]
0045e034  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
0045e038  04 40 8f e0                                      add r4, pc, r4
0045e03c  06 30 94 e7                                      ldr r3, [r4, r6]
0045e040  01 80 94 e7                                      ldr r8, [r4, r1]
0045e044  38 d0 4d e2                                      sub sp, sp, #0x38
0045e048  00 30 93 e5                                      ldr r3, [r3]
0045e04c  02 90 a0 e1                                      mov sb, r2
0045e050  1c 70 8d e2                                      add r7, sp, #0x1c
0045e054  34 30 8d e5                                      str r3, [sp, #0x34]
0045e058  0c a0 90 e5                                      ldr sl, [r0, #0xc]
0045e05c  08 00 a0 e1                                      mov r0, r8
0045e060  08 66 fb eb                                      bl #0x337888
0045e064  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0045e068  18 20 8d e2                                      add r2, sp, #0x18
0045e06c  07 00 a0 e1                                      mov r0, r7
0045e070  01 10 8f e0                                      add r1, pc, r1
0045e074  1c d8 fa eb                                      bl #0x3140ec
0045e078  07 10 a0 e1                                      mov r1, r7
0045e07c  08 00 a0 e1                                      mov r0, r8
0045e080  80 66 fb eb                                      bl #0x337a88
0045e084  07 00 a0 e1                                      mov r0, r7
0045e088  71 e8 fa eb                                      bl #0x318254
0045e08c  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
0045e090  0c 50 8d e2                                      add r5, sp, #0xc
0045e094  0c 20 9a e5                                      ldr r2, [sl, #0xc]
0045e098  01 10 94 e7                                      ldr r1, [r4, r1]
0045e09c  00 70 a0 e3                                      mov r7, #0
0045e0a0  09 30 a0 e1                                      mov r3, sb
0045e0a4  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045e0a8  05 00 a0 e1                                      mov r0, r5
0045e0ac  00 70 8d e5                                      str r7, [sp]
0045e0b0  04 70 8d e5                                      str r7, [sp, #4]
0045e0b4  f9 b2 fb eb                                      bl #0x34aca0
0045e0b8  05 00 a0 e1                                      mov r0, r5
0045e0bc  07 10 a0 e1                                      mov r1, r7
0045e0c0  3e 87 fb eb                                      bl #0x33fdc0
0045e0c4  07 00 50 e1                                      cmp r0, r7
0045e0c8  06 00 00 1a                                      bne #0x45e0e8
0045e0cc  06 30 94 e7                                      ldr r3, [r4, r6]
0045e0d0  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045e0d4  00 30 93 e5                                      ldr r3, [r3]
0045e0d8  03 00 52 e1                                      cmp r2, r3
0045e0dc  0a 00 00 1a                                      bne #0x45e10c
0045e0e0  38 d0 8d e2                                      add sp, sp, #0x38
0045e0e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045e0e8  05 00 a0 e1                                      mov r0, r5
0045e0ec  7c 87 fb eb                                      bl #0x33fee4
0045e0f0  00 30 50 e2                                      subs r3, r0, #0
0045e0f4  f4 ff ff 0a                                      beq #0x45e0cc
0045e0f8  00 30 93 e5                                      ldr r3, [r3]
0045e0fc  07 10 a0 e1                                      mov r1, r7
0045e100  0f e0 a0 e1                                      mov lr, pc
0045e104  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0045e108  ef ff ff ea                                      b #0x45e0cc
0045e10c  7f c0 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045e110  58 6a 53 00 ac 40 00 00 84 08 00 00 10 f0 46 00  .byte 0x58, 0x6a, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x10, 0xf0, 0x46, 0x00
0045e120  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
