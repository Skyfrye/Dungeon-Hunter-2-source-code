; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455668, declared_size=8, range_size=8, mode=arm
; class-group: Script_EnterSafeZone
; alias: _ZNK20Script_EnterSafeZone10IsBlockingEv
; demangled: Script_EnterSafeZone::IsBlocking() const
; decoder-mode: arm
00455668  00 00 a0 e3                                      mov r0, #0
0045566c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045fc80, declared_size=160, range_size=160, mode=arm
; class-group: Script_EnterSafeZone
; alias: _ZN20Script_EnterSafeZone7ExecuteEbi
; demangled: Script_EnterSafeZone::Execute(bool, int)
; decoder-mode: arm
0045fc80  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0045fc84  80 40 9f e5                                      ldr r4, [pc, #0x80]
0045fc88  80 30 9f e5                                      ldr r3, [pc, #0x80]
0045fc8c  24 d0 4d e2                                      sub sp, sp, #0x24
0045fc90  04 40 8f e0                                      add r4, pc, r4
0045fc94  03 60 94 e7                                      ldr r6, [r4, r3]
0045fc98  74 30 9f e5                                      ldr r3, [pc, #0x74]
0045fc9c  04 50 8d e2                                      add r5, sp, #4
0045fca0  03 70 94 e7                                      ldr r7, [r4, r3]
0045fca4  00 30 96 e5                                      ldr r3, [r6]
0045fca8  07 00 a0 e1                                      mov r0, r7
0045fcac  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045fcb0  f4 5e fb eb                                      bl #0x337888
0045fcb4  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0045fcb8  0d 20 a0 e1                                      mov r2, sp
0045fcbc  05 00 a0 e1                                      mov r0, r5
0045fcc0  01 10 8f e0                                      add r1, pc, r1
0045fcc4  08 d1 fa eb                                      bl #0x3140ec
0045fcc8  05 10 a0 e1                                      mov r1, r5
0045fccc  07 00 a0 e1                                      mov r0, r7
0045fcd0  6c 5f fb eb                                      bl #0x337a88
0045fcd4  05 00 a0 e1                                      mov r0, r5
0045fcd8  5d e1 fa eb                                      bl #0x318254
0045fcdc  38 30 9f e5                                      ldr r3, [pc, #0x38]
0045fce0  01 10 a0 e3                                      mov r1, #1
0045fce4  03 30 94 e7                                      ldr r3, [r4, r3]
0045fce8  00 00 93 e5                                      ldr r0, [r3]
0045fcec  c8 30 fc eb                                      bl #0x36c014
0045fcf0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045fcf4  00 30 96 e5                                      ldr r3, [r6]
0045fcf8  03 00 52 e1                                      cmp r2, r3
0045fcfc  01 00 00 1a                                      bne #0x45fd08
0045fd00  24 d0 8d e2                                      add sp, sp, #0x24
0045fd04  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0045fd08  80 b9 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045fd0c  00 4e 53 00 ac 40 00 00 84 08 00 00 c0 d3 46 00  .byte 0x00, 0x4e, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc0, 0xd3, 0x46, 0x00
0045fd1c  a4 0d 00 00                                      .byte 0xa4, 0x0d, 0x00, 0x00
