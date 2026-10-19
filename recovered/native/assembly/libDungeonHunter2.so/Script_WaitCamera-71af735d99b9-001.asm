; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045932c, declared_size=68, range_size=68, mode=arm
; class-group: Script_WaitCamera
; alias: _ZNK17Script_WaitCamera10IsBlockingEv
; demangled: Script_WaitCamera::IsBlocking() const
; decoder-mode: arm
0045932c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00459330  34 20 9f e5                                      ldr r2, [pc, #0x34]
00459334  10 40 2d e9                                      push {r4, lr}
00459338  03 30 8f e0                                      add r3, pc, r3
0045933c  02 00 93 e7                                      ldr r0, [r3, r2]
00459340  93 18 fb eb                                      bl #0x31f594
00459344  00 00 50 e3                                      cmp r0, #0
00459348  04 00 00 0a                                      beq #0x459360
0045934c  28 31 90 e5                                      ldr r3, [r0, #0x128]
00459350  00 00 53 e3                                      cmp r3, #0
00459354  01 00 00 0a                                      beq #0x459360
00459358  84 00 d3 e5                                      ldrb r0, [r3, #0x84]
0045935c  10 80 bd e8                                      pop {r4, pc}
00459360  00 00 a0 e3                                      mov r0, #0
00459364  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00459368  58 b7 53 00 f4 37 00 00                          .byte 0x58, 0xb7, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0045c5e8, declared_size=136, range_size=136, mode=arm
; class-group: Script_WaitCamera
; alias: _ZN17Script_WaitCamera7ExecuteEbi
; demangled: Script_WaitCamera::Execute(bool, int)
; decoder-mode: arm
0045c5e8  70 30 9f e5                                      ldr r3, [pc, #0x70]
0045c5ec  70 20 9f e5                                      ldr r2, [pc, #0x70]
0045c5f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0045c5f4  03 30 8f e0                                      add r3, pc, r3
0045c5f8  02 50 93 e7                                      ldr r5, [r3, r2]
0045c5fc  64 20 9f e5                                      ldr r2, [pc, #0x64]
0045c600  20 d0 4d e2                                      sub sp, sp, #0x20
0045c604  04 40 8d e2                                      add r4, sp, #4
0045c608  02 60 93 e7                                      ldr r6, [r3, r2]
0045c60c  00 30 95 e5                                      ldr r3, [r5]
0045c610  06 00 a0 e1                                      mov r0, r6
0045c614  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045c618  9a 6c fb eb                                      bl #0x337888
0045c61c  48 10 9f e5                                      ldr r1, [pc, #0x48]
0045c620  0d 20 a0 e1                                      mov r2, sp
0045c624  04 00 a0 e1                                      mov r0, r4
0045c628  01 10 8f e0                                      add r1, pc, r1
0045c62c  ae de fa eb                                      bl #0x3140ec
0045c630  04 10 a0 e1                                      mov r1, r4
0045c634  06 00 a0 e1                                      mov r0, r6
0045c638  12 6d fb eb                                      bl #0x337a88
0045c63c  04 00 a0 e1                                      mov r0, r4
0045c640  03 ef fa eb                                      bl #0x318254
0045c644  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045c648  00 30 95 e5                                      ldr r3, [r5]
0045c64c  03 00 52 e1                                      cmp r2, r3
0045c650  01 00 00 1a                                      bne #0x45c65c
0045c654  20 d0 8d e2                                      add sp, sp, #0x20
0045c658  70 80 bd e8                                      pop {r4, r5, r6, pc}
0045c65c  2b c7 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045c660  9c 84 53 00 ac 40 00 00 84 08 00 00 58 0a 47 00  .byte 0x9c, 0x84, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x58, 0x0a, 0x47, 0x00
