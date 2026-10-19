; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004557d8, declared_size=8, range_size=8, mode=arm
; class-group: Script_AISetInt
; alias: _ZNK15Script_AISetInt10IsBlockingEv
; demangled: Script_AISetInt::IsBlocking() const
; decoder-mode: arm
004557d8  00 00 a0 e3                                      mov r0, #0
004557dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045f2fc, declared_size=260, range_size=260, mode=arm
; class-group: Script_AISetInt
; alias: _ZN15Script_AISetInt7ExecuteEbi
; demangled: Script_AISetInt::Execute(bool, int)
; decoder-mode: arm
0045f2fc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045f300  e4 40 9f e5                                      ldr r4, [pc, #0xe4]
0045f304  e4 80 9f e5                                      ldr r8, [pc, #0xe4]
0045f308  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0045f30c  04 40 8f e0                                      add r4, pc, r4
0045f310  08 30 94 e7                                      ldr r3, [r4, r8]
0045f314  01 a0 94 e7                                      ldr sl, [r4, r1]
0045f318  38 d0 4d e2                                      sub sp, sp, #0x38
0045f31c  00 30 93 e5                                      ldr r3, [r3]
0045f320  02 90 a0 e1                                      mov sb, r2
0045f324  1c 50 8d e2                                      add r5, sp, #0x1c
0045f328  34 30 8d e5                                      str r3, [sp, #0x34]
0045f32c  0c 70 90 e5                                      ldr r7, [r0, #0xc]
0045f330  0a 00 a0 e1                                      mov r0, sl
0045f334  53 61 fb eb                                      bl #0x337888
0045f338  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0045f33c  18 20 8d e2                                      add r2, sp, #0x18
0045f340  05 00 a0 e1                                      mov r0, r5
0045f344  01 10 8f e0                                      add r1, pc, r1
0045f348  67 d3 fa eb                                      bl #0x3140ec
0045f34c  05 10 a0 e1                                      mov r1, r5
0045f350  0a 00 a0 e1                                      mov r0, sl
0045f354  cb 61 fb eb                                      bl #0x337a88
0045f358  05 00 a0 e1                                      mov r0, r5
0045f35c  bc e3 fa eb                                      bl #0x318254
0045f360  94 10 9f e5                                      ldr r1, [pc, #0x94]
0045f364  0c 60 8d e2                                      add r6, sp, #0xc
0045f368  14 20 97 e5                                      ldr r2, [r7, #0x14]
0045f36c  01 10 94 e7                                      ldr r1, [r4, r1]
0045f370  00 50 a0 e3                                      mov r5, #0
0045f374  09 30 a0 e1                                      mov r3, sb
0045f378  38 10 91 e5                                      ldr r1, [r1, #0x38]
0045f37c  06 00 a0 e1                                      mov r0, r6
0045f380  00 50 8d e5                                      str r5, [sp]
0045f384  04 50 8d e5                                      str r5, [sp, #4]
0045f388  44 ae fb eb                                      bl #0x34aca0
0045f38c  05 10 a0 e1                                      mov r1, r5
0045f390  06 00 a0 e1                                      mov r0, r6
0045f394  89 82 fb eb                                      bl #0x33fdc0
0045f398  00 50 50 e2                                      subs r5, r0, #0
0045f39c  0a 00 00 0a                                      beq #0x45f3cc
0045f3a0  00 30 95 e5                                      ldr r3, [r5]
0045f3a4  0f e0 a0 e1                                      mov lr, pc
0045f3a8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0045f3ac  00 00 50 e3                                      cmp r0, #0
0045f3b0  05 00 00 0a                                      beq #0x45f3cc
0045f3b4  e4 03 95 e5                                      ldr r0, [r5, #0x3e4]
0045f3b8  18 20 97 e5                                      ldr r2, [r7, #0x18]
0045f3bc  0c 10 97 e5                                      ldr r1, [r7, #0xc]
0045f3c0  00 00 50 e3                                      cmp r0, #0
0045f3c4  00 00 00 0a                                      beq #0x45f3cc
0045f3c8  70 79 fc eb                                      bl #0x37d990
0045f3cc  08 30 94 e7                                      ldr r3, [r4, r8]
0045f3d0  34 20 9d e5                                      ldr r2, [sp, #0x34]
0045f3d4  00 30 93 e5                                      ldr r3, [r3]
0045f3d8  03 00 52 e1                                      cmp r2, r3
0045f3dc  01 00 00 1a                                      bne #0x45f3e8
0045f3e0  38 d0 8d e2                                      add sp, sp, #0x38
0045f3e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045f3e8  c8 bb fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045f3ec  84 57 53 00 ac 40 00 00 84 08 00 00 3c dd 46 00  .byte 0x84, 0x57, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x3c, 0xdd, 0x46, 0x00
0045f3fc  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
