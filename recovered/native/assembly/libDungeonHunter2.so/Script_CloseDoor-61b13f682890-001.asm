; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455884, declared_size=56, range_size=56, mode=arm
; class-group: Script_CloseDoor
; alias: _ZNK16Script_CloseDoor10IsBlockingEv
; demangled: Script_CloseDoor::IsBlocking() const
; decoder-mode: arm
00455884  10 30 90 e5                                      ldr r3, [r0, #0x10]
00455888  00 00 53 e3                                      cmp r3, #0
0045588c  08 00 00 0a                                      beq #0x4558b4
00455890  14 20 d0 e5                                      ldrb r2, [r0, #0x14]
00455894  00 00 52 e3                                      cmp r2, #0
00455898  05 00 00 0a                                      beq #0x4558b4
0045589c  a8 03 93 e5                                      ldr r0, [r3, #0x3a8]
004558a0  01 00 50 e3                                      cmp r0, #1
004558a4  03 00 50 13                                      cmpne r0, #3
004558a8  00 00 a0 13                                      movne r0, #0
004558ac  01 00 a0 03                                      moveq r0, #1
004558b0  1e ff 2f e1                                      bx lr
004558b4  00 00 a0 e3                                      mov r0, #0
004558b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045d650, declared_size=268, range_size=268, mode=arm
; class-group: Script_CloseDoor
; alias: _ZN16Script_CloseDoor7ExecuteEbi
; demangled: Script_CloseDoor::Execute(bool, int)
; decoder-mode: arm
0045d650  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0045d654  ec 40 9f e5                                      ldr r4, [pc, #0xec]
0045d658  ec 50 9f e5                                      ldr r5, [pc, #0xec]
0045d65c  ec c0 9f e5                                      ldr ip, [pc, #0xec]
0045d660  04 40 8f e0                                      add r4, pc, r4
0045d664  05 30 94 e7                                      ldr r3, [r4, r5]
0045d668  0c a0 94 e7                                      ldr sl, [r4, ip]
0045d66c  3c d0 4d e2                                      sub sp, sp, #0x3c
0045d670  00 30 93 e5                                      ldr r3, [r3]
0045d674  00 80 a0 e1                                      mov r8, r0
0045d678  0a 00 a0 e1                                      mov r0, sl
0045d67c  34 30 8d e5                                      str r3, [sp, #0x34]
0045d680  02 90 a0 e1                                      mov sb, r2
0045d684  01 b0 a0 e1                                      mov fp, r1
0045d688  0c 70 98 e5                                      ldr r7, [r8, #0xc]
0045d68c  7d 68 fb eb                                      bl #0x337888
0045d690  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0045d694  1c 60 8d e2                                      add r6, sp, #0x1c
0045d698  18 20 8d e2                                      add r2, sp, #0x18
0045d69c  01 10 8f e0                                      add r1, pc, r1
0045d6a0  06 00 a0 e1                                      mov r0, r6
0045d6a4  90 da fa eb                                      bl #0x3140ec
0045d6a8  06 10 a0 e1                                      mov r1, r6
0045d6ac  0a 00 a0 e1                                      mov r0, sl
0045d6b0  f4 68 fb eb                                      bl #0x337a88
0045d6b4  06 00 a0 e1                                      mov r0, r6
0045d6b8  e5 ea fa eb                                      bl #0x318254
0045d6bc  94 30 9f e5                                      ldr r3, [pc, #0x94]
0045d6c0  0c a0 8d e2                                      add sl, sp, #0xc
0045d6c4  0c 20 97 e5                                      ldr r2, [r7, #0xc]
0045d6c8  03 10 94 e7                                      ldr r1, [r4, r3]
0045d6cc  00 60 a0 e3                                      mov r6, #0
0045d6d0  09 30 a0 e1                                      mov r3, sb
0045d6d4  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045d6d8  0a 00 a0 e1                                      mov r0, sl
0045d6dc  00 60 8d e5                                      str r6, [sp]
0045d6e0  04 60 8d e5                                      str r6, [sp, #4]
0045d6e4  6d b5 fb eb                                      bl #0x34aca0
0045d6e8  0a 00 a0 e1                                      mov r0, sl
0045d6ec  06 10 a0 e1                                      mov r1, r6
0045d6f0  b2 89 fb eb                                      bl #0x33fdc0
0045d6f4  00 30 50 e2                                      subs r3, r0, #0
0045d6f8  02 00 00 0a                                      beq #0x45d708
0045d6fc  f4 20 93 e5                                      ldr r2, [r3, #0xf4]
0045d700  02 00 52 e3                                      cmp r2, #2
0045d704  08 00 00 0a                                      beq #0x45d72c
0045d708  00 30 a0 e3                                      mov r3, #0
0045d70c  10 30 88 e5                                      str r3, [r8, #0x10]
0045d710  05 30 94 e7                                      ldr r3, [r4, r5]
0045d714  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045d718  00 30 93 e5                                      ldr r3, [r3]
0045d71c  03 00 52 e1                                      cmp r2, r3
0045d720  07 00 00 1a                                      bne #0x45d744
0045d724  3c d0 8d e2                                      add sp, sp, #0x3c
0045d728  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0045d72c  10 30 88 e5                                      str r3, [r8, #0x10]
0045d730  10 30 d7 e5                                      ldrb r3, [r7, #0x10]
0045d734  0b 10 a0 e1                                      mov r1, fp
0045d738  14 30 c8 e5                                      strb r3, [r8, #0x14]
0045d73c  be 27 fe eb                                      bl #0x3e763c
0045d740  f2 ff ff ea                                      b #0x45d710
0045d744  f1 c2 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045d748  30 74 53 00 ac 40 00 00 84 08 00 00 e4 f9 46 00  .byte 0x30, 0x74, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xe4, 0xf9, 0x46, 0x00
0045d758  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
