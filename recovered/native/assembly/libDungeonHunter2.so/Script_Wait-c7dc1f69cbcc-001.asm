; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455754, declared_size=24, range_size=24, mode=arm
; class-group: Script_Wait
; alias: _ZNK11Script_Wait10IsBlockingEv
; demangled: Script_Wait::IsBlocking() const
; decoder-mode: arm
00455754  14 30 90 e5                                      ldr r3, [r0, #0x14]
00455758  10 00 90 e5                                      ldr r0, [r0, #0x10]
0045575c  03 00 50 e1                                      cmp r0, r3
00455760  00 00 a0 a3                                      movge r0, #0
00455764  01 00 a0 b3                                      movlt r0, #1
00455768  1e ff 2f e1                                      bx lr

; FUNCTION 0x004597b4, declared_size=52, range_size=52, mode=arm
; class-group: Script_Wait
; alias: _ZN11Script_Wait6UpdateEv
; demangled: Script_Wait::Update()
; decoder-mode: arm
004597b4  70 40 2d e9                                      push {r4, r5, r6, lr}
004597b8  20 30 9f e5                                      ldr r3, [pc, #0x20]
004597bc  20 20 9f e5                                      ldr r2, [pc, #0x20]
004597c0  00 40 a0 e1                                      mov r4, r0
004597c4  03 30 8f e0                                      add r3, pc, r3
004597c8  02 00 93 e7                                      ldr r0, [r3, r2]
004597cc  10 50 94 e5                                      ldr r5, [r4, #0x10]
004597d0  a5 17 fb eb                                      bl #0x31f66c
004597d4  05 00 80 e0                                      add r0, r0, r5
004597d8  10 00 84 e5                                      str r0, [r4, #0x10]
004597dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004597e0  cc b2 53 00 f4 37 00 00                          .byte 0xcc, 0xb2, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0045c438, declared_size=160, range_size=160, mode=arm
; class-group: Script_Wait
; alias: _ZN11Script_Wait7ExecuteEbi
; demangled: Script_Wait::Execute(bool, int)
; decoder-mode: arm
0045c438  88 30 9f e5                                      ldr r3, [pc, #0x88]
0045c43c  88 20 9f e5                                      ldr r2, [pc, #0x88]
0045c440  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045c444  03 30 8f e0                                      add r3, pc, r3
0045c448  02 60 93 e7                                      ldr r6, [r3, r2]
0045c44c  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0045c450  20 d0 4d e2                                      sub sp, sp, #0x20
0045c454  00 40 a0 e1                                      mov r4, r0
0045c458  02 70 93 e7                                      ldr r7, [r3, r2]
0045c45c  00 20 96 e5                                      ldr r2, [r6]
0045c460  0c 80 94 e5                                      ldr r8, [r4, #0xc]
0045c464  07 00 a0 e1                                      mov r0, r7
0045c468  1c 20 8d e5                                      str r2, [sp, #0x1c]
0045c46c  05 6d fb eb                                      bl #0x337888
0045c470  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0045c474  04 50 8d e2                                      add r5, sp, #4
0045c478  0d 20 a0 e1                                      mov r2, sp
0045c47c  01 10 8f e0                                      add r1, pc, r1
0045c480  05 00 a0 e1                                      mov r0, r5
0045c484  18 df fa eb                                      bl #0x3140ec
0045c488  05 10 a0 e1                                      mov r1, r5
0045c48c  07 00 a0 e1                                      mov r0, r7
0045c490  7c 6d fb eb                                      bl #0x337a88
0045c494  05 00 a0 e1                                      mov r0, r5
0045c498  6d ef fa eb                                      bl #0x318254
0045c49c  00 30 a0 e3                                      mov r3, #0
0045c4a0  10 30 84 e5                                      str r3, [r4, #0x10]
0045c4a4  08 30 98 e5                                      ldr r3, [r8, #8]
0045c4a8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045c4ac  14 30 84 e5                                      str r3, [r4, #0x14]
0045c4b0  00 30 96 e5                                      ldr r3, [r6]
0045c4b4  03 00 52 e1                                      cmp r2, r3
0045c4b8  01 00 00 1a                                      bne #0x45c4c4
0045c4bc  20 d0 8d e2                                      add sp, sp, #0x20
0045c4c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045c4c4  91 c7 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045c4c8  4c 86 53 00 ac 40 00 00 84 08 00 00 04 0c 47 00  .byte 0x4c, 0x86, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x04, 0x0c, 0x47, 0x00
