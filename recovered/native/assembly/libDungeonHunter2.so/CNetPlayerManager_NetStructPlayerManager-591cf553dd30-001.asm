; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00810d90, declared_size=312, range_size=312, mode=arm
; class-group: CNetPlayerManager::NetStructPlayerManager
; alias: _ZN17CNetPlayerManager22NetStructPlayerManagerC1Ev
; demangled: CNetPlayerManager::NetStructPlayerManager::NetStructPlayerManager()
; decoder-mode: arm
00810d90  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
00810d94  1c 51 9f e5                                      ldr r5, [pc, #0x11c]
00810d98  2c d0 4d e2                                      sub sp, sp, #0x2c
00810d9c  00 40 a0 e1                                      mov r4, r0
00810da0  d3 0a 00 eb                                      bl #0x8138f4
00810da4  10 31 9f e5                                      ldr r3, [pc, #0x110]
00810da8  10 81 9f e5                                      ldr r8, [pc, #0x110]
00810dac  05 50 8f e0                                      add r5, pc, r5
00810db0  03 30 95 e7                                      ldr r3, [r5, r3]
00810db4  50 21 94 e5                                      ldr r2, [r4, #0x150]
00810db8  08 00 95 e7                                      ldr r0, [r5, r8]
00810dbc  08 30 83 e2                                      add r3, r3, #8
00810dc0  00 60 a0 e3                                      mov r6, #0
00810dc4  00 70 a0 e3                                      mov r7, #0
00810dc8  4e cf a0 e3                                      mov ip, #0x138
00810dcc  fc 60 84 e1                                      strd r6, r7, [r4, ip]
00810dd0  00 00 52 e3                                      cmp r2, #0
00810dd4  00 10 e0 e3                                      mvn r1, #0
00810dd8  00 20 a0 e3                                      mov r2, #0
00810ddc  08 00 80 e2                                      add r0, r0, #8
00810de0  00 30 84 e5                                      str r3, [r4]
00810de4  06 30 a0 e3                                      mov r3, #6
00810de8  34 31 84 e5                                      str r3, [r4, #0x134]
00810dec  44 11 84 e5                                      str r1, [r4, #0x144]
00810df0  30 01 84 e5                                      str r0, [r4, #0x130]
00810df4  40 11 84 e5                                      str r1, [r4, #0x140]
00810df8  48 21 84 e5                                      str r2, [r4, #0x148]
00810dfc  4c 21 c4 e5                                      strb r2, [r4, #0x14c]
00810e00  13 6e 84 02                                      addeq r6, r4, #0x130
00810e04  03 00 00 0a                                      beq #0x810e18
00810e08  13 6e 84 e2                                      add r6, r4, #0x130
00810e0c  50 21 84 e5                                      str r2, [r4, #0x150]
00810e10  06 00 a0 e1                                      mov r0, r6
00810e14  5a 10 00 eb                                      bl #0x814f84
00810e18  a4 70 9f e5                                      ldr r7, [pc, #0xa4]
00810e1c  04 00 a0 e1                                      mov r0, r4
00810e20  06 10 a0 e1                                      mov r1, r6
00810e24  07 30 95 e7                                      ldr r3, [r5, r7]
00810e28  00 90 a0 e3                                      mov sb, #0
00810e2c  08 30 83 e2                                      add r3, r3, #8
00810e30  30 31 84 e5                                      str r3, [r4, #0x130]
00810e34  04 09 00 eb                                      bl #0x81324c
00810e38  08 10 95 e7                                      ldr r1, [r5, r8]
00810e3c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00810e40  00 30 e0 e3                                      mvn r3, #0
00810e44  00 80 a0 e3                                      mov r8, #0
00810e48  03 00 52 e1                                      cmp r2, r3
00810e4c  08 10 81 e2                                      add r1, r1, #8
00810e50  00 20 a0 e3                                      mov r2, #0
00810e54  06 00 a0 e3                                      mov r0, #6
00810e58  f8 80 cd e1                                      strd r8, sb, [sp, #8]
00810e5c  04 00 8d e5                                      str r0, [sp, #4]
00810e60  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00810e64  00 10 8d e5                                      str r1, [sp]
00810e68  10 30 8d e5                                      str r3, [sp, #0x10]
00810e6c  14 30 8d e5                                      str r3, [sp, #0x14]
00810e70  18 20 8d e5                                      str r2, [sp, #0x18]
00810e74  0d 80 a0 01                                      moveq r8, sp
00810e78  03 00 00 0a                                      beq #0x810e8c
00810e7c  0d 00 a0 e1                                      mov r0, sp
00810e80  0d 80 a0 e1                                      mov r8, sp
00810e84  20 30 8d e5                                      str r3, [sp, #0x20]
00810e88  3d 10 00 eb                                      bl #0x814f84
00810e8c  07 30 95 e7                                      ldr r3, [r5, r7]
00810e90  06 00 a0 e1                                      mov r0, r6
00810e94  20 10 88 e2                                      add r1, r8, #0x20
00810e98  08 30 83 e2                                      add r3, r3, #8
00810e9c  00 30 8d e5                                      str r3, [sp]
00810ea0  30 31 94 e5                                      ldr r3, [r4, #0x130]
00810ea4  0f e0 a0 e1                                      mov lr, pc
00810ea8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00810eac  04 00 a0 e1                                      mov r0, r4
00810eb0  2c d0 8d e2                                      add sp, sp, #0x2c
00810eb4  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
; mapping-symbol data/literal pool
00810eb8  e4 3c 18 00 78 0a 00 00 84 29 00 00 b8 1f 00 00  .byte 0xe4, 0x3c, 0x18, 0x00, 0x78, 0x0a, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0xb8, 0x1f, 0x00, 0x00

; FUNCTION 0x00810ec8, declared_size=116, range_size=116, mode=arm
; class-group: CNetPlayerManager::NetStructPlayerManager
; alias: _ZN17CNetPlayerManager22NetStructPlayerManagerD1Ev
; demangled: CNetPlayerManager::NetStructPlayerManager::~NetStructPlayerManager()
; decoder-mode: arm
00810ec8  70 40 2d e9                                      push {r4, r5, r6, lr}
00810ecc  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00810ed0  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00810ed4  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00810ed8  03 30 8f e0                                      add r3, pc, r3
00810edc  00 40 a0 e1                                      mov r4, r0
00810ee0  01 10 93 e7                                      ldr r1, [r3, r1]
00810ee4  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
00810ee8  02 20 93 e7                                      ldr r2, [r3, r2]
00810eec  08 10 81 e2                                      add r1, r1, #8
00810ef0  00 00 50 e3                                      cmp r0, #0
00810ef4  08 20 82 e2                                      add r2, r2, #8
00810ef8  30 21 84 e5                                      str r2, [r4, #0x130]
00810efc  00 10 84 e5                                      str r1, [r4]
00810f00  08 00 00 0a                                      beq #0x810f28
00810f04  43 5f 84 e2                                      add r5, r4, #0x10c
00810f08  05 00 a0 e1                                      mov r0, r5
00810f0c  10 11 94 e5                                      ldr r1, [r4, #0x110]
00810f10  2e 80 ed eb                                      bl #0x370fd0
00810f14  00 30 a0 e3                                      mov r3, #0
00810f18  18 51 84 e5                                      str r5, [r4, #0x118]
00810f1c  1c 31 84 e5                                      str r3, [r4, #0x11c]
00810f20  14 51 84 e5                                      str r5, [r4, #0x114]
00810f24  10 31 84 e5                                      str r3, [r4, #0x110]
00810f28  04 00 a0 e1                                      mov r0, r4
00810f2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00810f30  b8 3b 18 00 a8 10 00 00 c4 43 00 00              .byte 0xb8, 0x3b, 0x18, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x00810f3c, declared_size=124, range_size=124, mode=arm
; class-group: CNetPlayerManager::NetStructPlayerManager
; alias: _ZN17CNetPlayerManager22NetStructPlayerManagerD0Ev
; demangled: CNetPlayerManager::NetStructPlayerManager::~NetStructPlayerManager()
; decoder-mode: arm
00810f3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00810f40  64 30 9f e5                                      ldr r3, [pc, #0x64]
00810f44  64 20 9f e5                                      ldr r2, [pc, #0x64]
00810f48  64 10 9f e5                                      ldr r1, [pc, #0x64]
00810f4c  03 30 8f e0                                      add r3, pc, r3
00810f50  00 40 a0 e1                                      mov r4, r0
00810f54  01 10 93 e7                                      ldr r1, [r3, r1]
00810f58  1c 01 90 e5                                      ldr r0, [r0, #0x11c]
00810f5c  02 20 93 e7                                      ldr r2, [r3, r2]
00810f60  08 10 81 e2                                      add r1, r1, #8
00810f64  00 00 50 e3                                      cmp r0, #0
00810f68  08 20 82 e2                                      add r2, r2, #8
00810f6c  30 21 84 e5                                      str r2, [r4, #0x130]
00810f70  00 10 84 e5                                      str r1, [r4]
00810f74  08 00 00 0a                                      beq #0x810f9c
00810f78  43 5f 84 e2                                      add r5, r4, #0x10c
00810f7c  05 00 a0 e1                                      mov r0, r5
00810f80  10 11 94 e5                                      ldr r1, [r4, #0x110]
00810f84  11 80 ed eb                                      bl #0x370fd0
00810f88  00 30 a0 e3                                      mov r3, #0
00810f8c  18 51 84 e5                                      str r5, [r4, #0x118]
00810f90  1c 31 84 e5                                      str r3, [r4, #0x11c]
00810f94  14 51 84 e5                                      str r5, [r4, #0x114]
00810f98  10 31 84 e5                                      str r3, [r4, #0x110]
00810f9c  04 00 a0 e1                                      mov r0, r4
00810fa0  26 fd eb eb                                      bl #0x310440
00810fa4  04 00 a0 e1                                      mov r0, r4
00810fa8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00810fac  44 3b 18 00 a8 10 00 00 c4 43 00 00              .byte 0x44, 0x3b, 0x18, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00
