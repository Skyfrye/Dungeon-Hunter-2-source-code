; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455650, declared_size=8, range_size=8, mode=arm
; class-group: Script_PlaySound
; alias: _ZNK16Script_PlaySound10IsBlockingEv
; demangled: Script_PlaySound::IsBlocking() const
; decoder-mode: arm
00455650  00 00 a0 e3                                      mov r0, #0
00455654  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045fefc, declared_size=264, range_size=264, mode=arm
; class-group: Script_PlaySound
; alias: _ZN16Script_PlaySound7ExecuteEbi
; demangled: Script_PlaySound::Execute(bool, int)
; decoder-mode: arm
0045fefc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045ff00  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
0045ff04  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
0045ff08  28 d0 4d e2                                      sub sp, sp, #0x28
0045ff0c  04 40 8f e0                                      add r4, pc, r4
0045ff10  05 30 94 e7                                      ldr r3, [r4, r5]
0045ff14  00 00 51 e3                                      cmp r1, #0
0045ff18  00 30 93 e5                                      ldr r3, [r3]
0045ff1c  24 30 8d e5                                      str r3, [sp, #0x24]
0045ff20  0c 60 90 e5                                      ldr r6, [r0, #0xc]
0045ff24  02 00 00 0a                                      beq #0x45ff34
0045ff28  0c 30 d6 e5                                      ldrb r3, [r6, #0xc]
0045ff2c  00 00 53 e3                                      cmp r3, #0
0045ff30  1a 00 00 0a                                      beq #0x45ffa0
0045ff34  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
0045ff38  0c 70 8d e2                                      add r7, sp, #0xc
0045ff3c  03 80 94 e7                                      ldr r8, [r4, r3]
0045ff40  08 00 a0 e1                                      mov r0, r8
0045ff44  4f 5e fb eb                                      bl #0x337888
0045ff48  ac 10 9f e5                                      ldr r1, [pc, #0xac]
0045ff4c  08 20 8d e2                                      add r2, sp, #8
0045ff50  07 00 a0 e1                                      mov r0, r7
0045ff54  01 10 8f e0                                      add r1, pc, r1
0045ff58  63 d0 fa eb                                      bl #0x3140ec
0045ff5c  07 10 a0 e1                                      mov r1, r7
0045ff60  08 00 a0 e1                                      mov r0, r8
0045ff64  c7 5e fb eb                                      bl #0x337a88
0045ff68  07 00 a0 e1                                      mov r0, r7
0045ff6c  b8 e0 fa eb                                      bl #0x318254
0045ff70  0c c0 d6 e5                                      ldrb ip, [r6, #0xc]
0045ff74  00 00 5c e3                                      cmp ip, #0
0045ff78  0f 00 00 1a                                      bne #0x45ffbc
0045ff7c  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0045ff80  08 30 96 e5                                      ldr r3, [r6, #8]
0045ff84  10 10 96 e5                                      ldr r1, [r6, #0x10]
0045ff88  02 00 94 e7                                      ldr r0, [r4, r2]
0045ff8c  0d 20 d6 e5                                      ldrb r2, [r6, #0xd]
0045ff90  00 00 90 e5                                      ldr r0, [r0]
0045ff94  04 c0 8d e5                                      str ip, [sp, #4]
0045ff98  00 c0 8d e5                                      str ip, [sp]
0045ff9c  1a 2e fc eb                                      bl #0x36b80c
0045ffa0  05 30 94 e7                                      ldr r3, [r4, r5]
0045ffa4  24 20 9d e5                                      ldr r2, [sp, #0x24]
0045ffa8  00 30 93 e5                                      ldr r3, [r3]
0045ffac  03 00 52 e1                                      cmp r2, r3
0045ffb0  0d 00 00 1a                                      bne #0x45ffec
0045ffb4  28 d0 8d e2                                      add sp, sp, #0x28
0045ffb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045ffbc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0045ffc0  08 30 96 e5                                      ldr r3, [r6, #8]
0045ffc4  10 10 96 e5                                      ldr r1, [r6, #0x10]
0045ffc8  02 00 94 e7                                      ldr r0, [r4, r2]
0045ffcc  7d ce a0 e3                                      mov ip, #0x7d0
0045ffd0  0d 20 d6 e5                                      ldrb r2, [r6, #0xd]
0045ffd4  00 00 90 e5                                      ldr r0, [r0]
0045ffd8  00 30 53 e2                                      subs r3, r3, #0
0045ffdc  01 30 a0 13                                      movne r3, #1
0045ffe0  00 c0 8d e5                                      str ip, [sp]
0045ffe4  63 2f fc eb                                      bl #0x36bd78
0045ffe8  ec ff ff ea                                      b #0x45ffa0
0045ffec  c7 b8 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045fff0  84 4b 53 00 ac 40 00 00 84 08 00 00 2c d1 46 00  .byte 0x84, 0x4b, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x2c, 0xd1, 0x46, 0x00
00460000  a4 0d 00 00                                      .byte 0xa4, 0x0d, 0x00, 0x00
