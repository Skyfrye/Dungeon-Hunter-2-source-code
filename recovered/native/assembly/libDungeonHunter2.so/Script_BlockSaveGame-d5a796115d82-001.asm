; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455930, declared_size=8, range_size=8, mode=arm
; class-group: Script_BlockSaveGame
; alias: _ZNK20Script_BlockSaveGame10IsBlockingEv
; demangled: Script_BlockSaveGame::IsBlocking() const
; decoder-mode: arm
00455930  00 00 a0 e3                                      mov r0, #0
00455934  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045c8c0, declared_size=212, range_size=212, mode=arm
; class-group: Script_BlockSaveGame
; alias: _ZN20Script_BlockSaveGame7ExecuteEbi
; demangled: Script_BlockSaveGame::Execute(bool, int)
; decoder-mode: arm
0045c8c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045c8c4  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
0045c8c8  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
0045c8cc  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0045c8d0  04 40 8f e0                                      add r4, pc, r4
0045c8d4  06 30 94 e7                                      ldr r3, [r4, r6]
0045c8d8  02 80 94 e7                                      ldr r8, [r4, r2]
0045c8dc  20 d0 4d e2                                      sub sp, sp, #0x20
0045c8e0  00 30 93 e5                                      ldr r3, [r3]
0045c8e4  08 00 a0 e1                                      mov r0, r8
0045c8e8  04 50 8d e2                                      add r5, sp, #4
0045c8ec  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045c8f0  e4 6b fb eb                                      bl #0x337888
0045c8f4  90 10 9f e5                                      ldr r1, [pc, #0x90]
0045c8f8  0d 20 a0 e1                                      mov r2, sp
0045c8fc  8c 70 9f e5                                      ldr r7, [pc, #0x8c]
0045c900  01 10 8f e0                                      add r1, pc, r1
0045c904  05 00 a0 e1                                      mov r0, r5
0045c908  f7 dd fa eb                                      bl #0x3140ec
0045c90c  05 10 a0 e1                                      mov r1, r5
0045c910  08 00 a0 e1                                      mov r0, r8
0045c914  5b 6c fb eb                                      bl #0x337a88
0045c918  05 00 a0 e1                                      mov r0, r5
0045c91c  4c ee fa eb                                      bl #0x318254
0045c920  07 30 94 e7                                      ldr r3, [r4, r7]
0045c924  00 10 a0 e3                                      mov r1, #0
0045c928  01 20 a0 e3                                      mov r2, #1
0045c92c  40 00 93 e5                                      ldr r0, [r3, #0x40]
0045c930  d0 46 fc eb                                      bl #0x36e478
0045c934  60 06 90 e5                                      ldr r0, [r0, #0x660]
0045c938  00 00 50 e3                                      cmp r0, #0
0045c93c  01 00 00 0a                                      beq #0x45c948
0045c940  01 10 a0 e3                                      mov r1, #1
0045c944  89 7b fd eb                                      bl #0x3bb770
0045c948  07 00 94 e7                                      ldr r0, [r4, r7]
0045c94c  10 0b fb eb                                      bl #0x31f594
0045c950  00 00 50 e3                                      cmp r0, #0
0045c954  01 00 00 0a                                      beq #0x45c960
0045c958  01 10 a0 e3                                      mov r1, #1
0045c95c  35 4a fe eb                                      bl #0x3ef238
0045c960  06 30 94 e7                                      ldr r3, [r4, r6]
0045c964  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045c968  00 30 93 e5                                      ldr r3, [r3]
0045c96c  03 00 52 e1                                      cmp r2, r3
0045c970  01 00 00 1a                                      bne #0x45c97c
0045c974  20 d0 8d e2                                      add sp, sp, #0x20
0045c978  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045c97c  63 c6 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045c980  c0 81 53 00 ac 40 00 00 84 08 00 00 80 07 47 00  .byte 0xc0, 0x81, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x80, 0x07, 0x47, 0x00
0045c990  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
