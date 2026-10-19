; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045576c, declared_size=8, range_size=8, mode=arm
; class-group: Script_SetFaeryState
; alias: _ZNK20Script_SetFaeryState10IsBlockingEv
; demangled: Script_SetFaeryState::IsBlocking() const
; decoder-mode: arm
0045576c  00 00 a0 e3                                      mov r0, #0
00455770  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045f6c8, declared_size=196, range_size=196, mode=arm
; class-group: Script_SetFaeryState
; alias: _ZN20Script_SetFaeryState7ExecuteEbi
; demangled: Script_SetFaeryState::Execute(bool, int)
; decoder-mode: arm
0045f6c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045f6cc  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
0045f6d0  a4 60 9f e5                                      ldr r6, [pc, #0xa4]
0045f6d4  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0045f6d8  04 40 8f e0                                      add r4, pc, r4
0045f6dc  06 30 94 e7                                      ldr r3, [r4, r6]
0045f6e0  02 70 94 e7                                      ldr r7, [r4, r2]
0045f6e4  20 d0 4d e2                                      sub sp, sp, #0x20
0045f6e8  00 30 93 e5                                      ldr r3, [r3]
0045f6ec  04 50 8d e2                                      add r5, sp, #4
0045f6f0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045f6f4  0c 80 90 e5                                      ldr r8, [r0, #0xc]
0045f6f8  07 00 a0 e1                                      mov r0, r7
0045f6fc  61 60 fb eb                                      bl #0x337888
0045f700  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0045f704  0d 20 a0 e1                                      mov r2, sp
0045f708  05 00 a0 e1                                      mov r0, r5
0045f70c  01 10 8f e0                                      add r1, pc, r1
0045f710  75 d2 fa eb                                      bl #0x3140ec
0045f714  05 10 a0 e1                                      mov r1, r5
0045f718  07 00 a0 e1                                      mov r0, r7
0045f71c  d9 60 fb eb                                      bl #0x337a88
0045f720  05 00 a0 e1                                      mov r0, r5
0045f724  ca e2 fa eb                                      bl #0x318254
0045f728  58 30 9f e5                                      ldr r3, [pc, #0x58]
0045f72c  00 10 a0 e3                                      mov r1, #0
0045f730  01 20 a0 e3                                      mov r2, #1
0045f734  03 30 94 e7                                      ldr r3, [r4, r3]
0045f738  40 00 93 e5                                      ldr r0, [r3, #0x40]
0045f73c  4d 3b fc eb                                      bl #0x36e478
0045f740  60 06 90 e5                                      ldr r0, [r0, #0x660]
0045f744  00 00 50 e3                                      cmp r0, #0
0045f748  02 00 00 0a                                      beq #0x45f758
0045f74c  0c 20 98 e5                                      ldr r2, [r8, #0xc]
0045f750  08 10 98 e5                                      ldr r1, [r8, #8]
0045f754  1e 3c fd eb                                      bl #0x3ae7d4
0045f758  06 30 94 e7                                      ldr r3, [r4, r6]
0045f75c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045f760  00 30 93 e5                                      ldr r3, [r3]
0045f764  03 00 52 e1                                      cmp r2, r3
0045f768  01 00 00 1a                                      bne #0x45f774
0045f76c  20 d0 8d e2                                      add sp, sp, #0x20
0045f770  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045f774  e5 ba fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045f778  b8 53 53 00 ac 40 00 00 84 08 00 00 74 d9 46 00  .byte 0xb8, 0x53, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x74, 0xd9, 0x46, 0x00
0045f788  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
