; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00320e98, declared_size=196, range_size=196, mode=arm
; class-group: OnlineSingleton<OnlineGameState>
; alias: _ZN15OnlineSingletonI15OnlineGameStateE11GetInstanceEv
; demangled: OnlineSingleton<OnlineGameState>::GetInstance()
; decoder-mode: arm
00320e98  70 40 2d e9                                      push {r4, r5, r6, lr}
00320e9c  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
00320ea0  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00320ea4  08 d0 4d e2                                      sub sp, sp, #8
00320ea8  05 50 8f e0                                      add r5, pc, r5
00320eac  03 40 95 e7                                      ldr r4, [r5, r3]
00320eb0  00 60 94 e5                                      ldr r6, [r4]
00320eb4  00 00 56 e3                                      cmp r6, #0
00320eb8  02 00 00 0a                                      beq #0x320ec8
00320ebc  06 00 a0 e1                                      mov r0, r6
00320ec0  08 d0 8d e2                                      add sp, sp, #8
00320ec4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00320ec8  06 10 a0 e1                                      mov r1, r6
00320ecc  5c 00 a0 e3                                      mov r0, #0x5c
00320ed0  a6 bd ff eb                                      bl #0x310570
00320ed4  00 60 a0 e1                                      mov r6, r0
00320ed8  58 fc 05 eb                                      bl #0x4a0040
00320edc  00 00 56 e3                                      cmp r6, #0
00320ee0  00 60 84 e5                                      str r6, [r4]
00320ee4  f4 ff ff 1a                                      bne #0x320ebc
00320ee8  58 30 9f e5                                      ldr r3, [pc, #0x58]
00320eec  03 30 95 e7                                      ldr r3, [r5, r3]
00320ef0  00 30 93 e5                                      ldr r3, [r3]
00320ef4  02 00 53 e3                                      cmp r3, #2
00320ef8  00 60 86 05                                      streq r6, [r6]
00320efc  ee ff ff 0a                                      beq #0x320ebc
00320f00  01 00 53 e3                                      cmp r3, #1
00320f04  ec ff ff 1a                                      bne #0x320ebc
00320f08  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00320f0c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00320f10  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00320f14  00 00 95 e7                                      ldr r0, [r5, r0]
00320f18  38 30 9f e5                                      ldr r3, [pc, #0x38]
00320f1c  98 c0 a0 e3                                      mov ip, #0x98
00320f20  01 10 8f e0                                      add r1, pc, r1
00320f24  a8 00 80 e2                                      add r0, r0, #0xa8
00320f28  02 20 8f e0                                      add r2, pc, r2
00320f2c  03 30 8f e0                                      add r3, pc, r3
00320f30  00 c0 8d e5                                      str ip, [sp]
00320f34  32 b4 ff eb                                      bl #0x30e004
00320f38  00 60 94 e5                                      ldr r6, [r4]
00320f3c  de ff ff ea                                      b #0x320ebc
; mapping-symbol data/literal pool
00320f40  e8 3b 67 00 10 1a 00 00 c0 39 00 00 c0 19 00 00  .byte 0xe8, 0x3b, 0x67, 0x00, 0x10, 0x1a, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00320f50  b8 d4 59 00 20 dd 59 00 2c dd 59 00              .byte 0xb8, 0xd4, 0x59, 0x00, 0x20, 0xdd, 0x59, 0x00, 0x2c, 0xdd, 0x59, 0x00

; FUNCTION 0x00439cb0, declared_size=4, range_size=4, mode=arm
; class-group: OnlineSingleton<OnlineGameState>
; alias: _ZN15OnlineSingletonI15OnlineGameStateED1Ev
; demangled: OnlineSingleton<OnlineGameState>::~OnlineSingleton()
; decoder-mode: arm
00439cb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00439d1c, declared_size=52, range_size=52, mode=arm
; class-group: OnlineSingleton<OnlineGameState>
; alias: _ZN15OnlineSingletonI15OnlineGameStateED0Ev
; demangled: OnlineSingleton<OnlineGameState>::~OnlineSingleton()
; decoder-mode: arm
00439d1c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00439d20  24 20 9f e5                                      ldr r2, [pc, #0x24]
00439d24  10 40 2d e9                                      push {r4, lr}
00439d28  03 30 8f e0                                      add r3, pc, r3
00439d2c  02 20 93 e7                                      ldr r2, [r3, r2]
00439d30  00 40 a0 e1                                      mov r4, r0
00439d34  08 20 82 e2                                      add r2, r2, #8
00439d38  00 20 80 e5                                      str r2, [r0]
00439d3c  bf 59 fb eb                                      bl #0x310440
00439d40  04 00 a0 e1                                      mov r0, r4
00439d44  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00439d48  68 ad 55 00 04 13 00 00                          .byte 0x68, 0xad, 0x55, 0x00, 0x04, 0x13, 0x00, 0x00
