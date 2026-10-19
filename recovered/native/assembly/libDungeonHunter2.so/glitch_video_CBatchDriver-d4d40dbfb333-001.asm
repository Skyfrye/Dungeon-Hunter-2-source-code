; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00589f40, declared_size=100, range_size=100, mode=arm
; class-group: glitch::video::CBatchDriver
; alias: _ZN6glitch5video12CBatchDriver13releaseBufferEv
; demangled: glitch::video::CBatchDriver::releaseBuffer()
; decoder-mode: arm
00589f40  10 40 2d e9                                      push {r4, lr}
00589f44  20 31 90 e5                                      ldr r3, [r0, #0x120]
00589f48  08 d0 4d e2                                      sub sp, sp, #8
00589f4c  00 40 a0 e1                                      mov r4, r0
00589f50  00 00 53 e3                                      cmp r3, #0
00589f54  08 00 00 0a                                      beq #0x589f7c
00589f58  10 11 90 e5                                      ldr r1, [r0, #0x110]
00589f5c  14 21 90 e5                                      ldr r2, [r0, #0x114]
00589f60  02 00 51 e1                                      cmp r1, r2
00589f64  02 00 00 0a                                      beq #0x589f74
00589f68  11 0e 80 e2                                      add r0, r0, #0x110
00589f6c  04 30 8d e2                                      add r3, sp, #4
00589f70  6e fe ff eb                                      bl #0x589930
00589f74  00 30 a0 e3                                      mov r3, #0
00589f78  20 31 84 e5                                      str r3, [r4, #0x120]
00589f7c  28 01 94 e5                                      ldr r0, [r4, #0x128]
00589f80  00 30 a0 e3                                      mov r3, #0
00589f84  28 31 84 e5                                      str r3, [r4, #0x128]
00589f88  03 00 50 e1                                      cmp r0, r3
00589f8c  00 00 00 0a                                      beq #0x589f94
00589f90  7b 4d f6 eb                                      bl #0x31d584
00589f94  04 00 a0 e1                                      mov r0, r4
00589f98  10 90 00 eb                                      bl #0x5adfe0
00589f9c  08 d0 8d e2                                      add sp, sp, #8
00589fa0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0058a920, declared_size=364, range_size=364, mode=arm
; class-group: glitch::video::CBatchDriver
; alias: _ZN6glitch5video12CBatchDriver10initBufferEv
; demangled: glitch::video::CBatchDriver::initBuffer()
; decoder-mode: arm
0058a920  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0058a924  20 11 90 e5                                      ldr r1, [r0, #0x120]
0058a928  08 d0 4d e2                                      sub sp, sp, #8
0058a92c  00 40 a0 e1                                      mov r4, r0
0058a930  00 00 51 e3                                      cmp r1, #0
0058a934  01 00 00 0a                                      beq #0x58a940
0058a938  08 d0 8d e2                                      add sp, sp, #8
0058a93c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0058a940  70 00 a0 e3                                      mov r0, #0x70
0058a944  18 a6 fe eb                                      bl #0x5341ac
0058a948  01 c0 a0 e3                                      mov ip, #1
0058a94c  04 30 a0 e1                                      mov r3, r4
0058a950  2c 12 94 e5                                      ldr r1, [r4, #0x22c]
0058a954  30 22 94 e5                                      ldr r2, [r4, #0x230]
0058a958  00 c0 8d e5                                      str ip, [sp]
0058a95c  00 c0 e0 e3                                      mvn ip, #0
0058a960  00 50 a0 e1                                      mov r5, r0
0058a964  04 c0 8d e5                                      str ip, [sp, #4]
0058a968  d1 b8 04 eb                                      bl #0x6b8cb4
0058a96c  00 00 55 e3                                      cmp r5, #0
0058a970  04 30 95 15                                      ldrne r3, [r5, #4]
0058a974  01 30 83 12                                      addne r3, r3, #1
0058a978  04 30 85 15                                      strne r3, [r5, #4]
0058a97c  14 31 94 e5                                      ldr r3, [r4, #0x114]
0058a980  18 61 94 e5                                      ldr r6, [r4, #0x118]
0058a984  06 00 53 e1                                      cmp r3, r6
0058a988  0f 00 00 0a                                      beq #0x58a9cc
0058a98c  00 50 83 e5                                      str r5, [r3]
0058a990  00 00 55 e3                                      cmp r5, #0
0058a994  04 30 95 15                                      ldrne r3, [r5, #4]
0058a998  01 30 83 12                                      addne r3, r3, #1
0058a99c  04 30 85 15                                      strne r3, [r5, #4]
0058a9a0  14 31 94 e5                                      ldr r3, [r4, #0x114]
0058a9a4  04 30 83 e2                                      add r3, r3, #4
0058a9a8  14 31 84 e5                                      str r3, [r4, #0x114]
0058a9ac  00 00 55 e3                                      cmp r5, #0
0058a9b0  01 00 00 0a                                      beq #0x58a9bc
0058a9b4  05 00 a0 e1                                      mov r0, r5
0058a9b8  f1 4a f6 eb                                      bl #0x31d584
0058a9bc  10 31 94 e5                                      ldr r3, [r4, #0x110]
0058a9c0  00 30 93 e5                                      ldr r3, [r3]
0058a9c4  20 31 84 e5                                      str r3, [r4, #0x120]
0058a9c8  da ff ff ea                                      b #0x58a938
0058a9cc  10 31 94 e5                                      ldr r3, [r4, #0x110]
0058a9d0  06 30 63 e0                                      rsb r3, r3, r6
0058a9d4  43 31 a0 e1                                      asr r3, r3, #2
0058a9d8  01 00 53 e3                                      cmp r3, #1
0058a9dc  03 70 83 20                                      addhs r7, r3, r3
0058a9e0  01 70 83 32                                      addlo r7, r3, #1
0058a9e4  07 01 77 e3                                      cmn r7, #0xc0000001
0058a9e8  25 00 00 8a                                      bhi #0x58aa84
0058a9ec  07 00 53 e1                                      cmp r3, r7
0058a9f0  07 71 a0 91                                      lslls r7, r7, #2
0058a9f4  22 00 00 8a                                      bhi #0x58aa84
0058a9f8  07 00 a0 e1                                      mov r0, r7
0058a9fc  00 10 a0 e3                                      mov r1, #0
0058aa00  d8 16 f6 eb                                      bl #0x310568
0058aa04  10 c1 94 e5                                      ldr ip, [r4, #0x110]
0058aa08  00 80 a0 e1                                      mov r8, r0
0058aa0c  06 60 6c e0                                      rsb r6, ip, r6
0058aa10  46 61 a0 e1                                      asr r6, r6, #2
0058aa14  00 00 56 e3                                      cmp r6, #0
0058aa18  00 60 a0 d1                                      movle r6, r0
0058aa1c  0b 00 00 da                                      ble #0x58aa50
0058aa20  06 10 a0 e1                                      mov r1, r6
0058aa24  00 20 a0 e3                                      mov r2, #0
0058aa28  02 30 9c e7                                      ldr r3, [ip, r2]
0058aa2c  00 00 53 e3                                      cmp r3, #0
0058aa30  02 30 88 e7                                      str r3, [r8, r2]
0058aa34  04 00 93 15                                      ldrne r0, [r3, #4]
0058aa38  04 20 82 e2                                      add r2, r2, #4
0058aa3c  01 00 80 12                                      addne r0, r0, #1
0058aa40  04 00 83 15                                      strne r0, [r3, #4]
0058aa44  01 10 51 e2                                      subs r1, r1, #1
0058aa48  f6 ff ff 1a                                      bne #0x58aa28
0058aa4c  06 61 88 e0                                      add r6, r8, r6, lsl #2
0058aa50  00 00 55 e3                                      cmp r5, #0
0058aa54  00 50 86 e5                                      str r5, [r6]
0058aa58  04 30 95 15                                      ldrne r3, [r5, #4]
0058aa5c  11 0e 84 e2                                      add r0, r4, #0x110
0058aa60  07 70 88 e0                                      add r7, r8, r7
0058aa64  01 30 83 12                                      addne r3, r3, #1
0058aa68  04 30 85 15                                      strne r3, [r5, #4]
0058aa6c  04 60 86 e2                                      add r6, r6, #4
0058aa70  32 fc ff eb                                      bl #0x589b40
0058aa74  14 61 84 e5                                      str r6, [r4, #0x114]
0058aa78  18 71 84 e5                                      str r7, [r4, #0x118]
0058aa7c  10 81 84 e5                                      str r8, [r4, #0x110]
0058aa80  c9 ff ff ea                                      b #0x58a9ac
0058aa84  03 70 e0 e3                                      mvn r7, #3
0058aa88  da ff ff ea                                      b #0x58a9f8

; FUNCTION 0x005a2e20, declared_size=184, range_size=184, mode=arm
; class-group: glitch::video::CBatchDriver
; alias: _ZN6glitch5video12CBatchDriverC1EjjPNS0_12IVideoDriverE
; demangled: glitch::video::CBatchDriver::CBatchDriver(unsigned int, unsigned int, glitch::video::IVideoDriver*)
; decoder-mode: arm
005a2e20  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005a2e24  01 80 a0 e1                                      mov r8, r1
005a2e28  a0 70 9f e5                                      ldr r7, [pc, #0xa0]
005a2e2c  03 10 a0 e1                                      mov r1, r3
005a2e30  00 40 a0 e1                                      mov r4, r0
005a2e34  02 a0 a0 e1                                      mov sl, r2
005a2e38  03 50 a0 e1                                      mov r5, r3
005a2e3c  48 5a 00 eb                                      bl #0x5b9764
005a2e40  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
005a2e44  07 70 8f e0                                      add r7, pc, r7
005a2e48  00 60 a0 e3                                      mov r6, #0
005a2e4c  02 20 97 e7                                      ldr r2, [r7, r2]
005a2e50  00 30 a0 e3                                      mov r3, #0
005a2e54  58 32 84 e5                                      str r3, [r4, #0x258]
005a2e58  08 20 82 e2                                      add r2, r2, #8
005a2e5c  00 20 84 e5                                      str r2, [r4]
005a2e60  50 32 84 e5                                      str r3, [r4, #0x250]
005a2e64  54 32 84 e5                                      str r3, [r4, #0x254]
005a2e68  04 00 a0 e1                                      mov r0, r4
005a2e6c  2c 82 84 e5                                      str r8, [r4, #0x22c]
005a2e70  30 a2 84 e5                                      str sl, [r4, #0x230]
005a2e74  34 62 84 e5                                      str r6, [r4, #0x234]
005a2e78  38 62 84 e5                                      str r6, [r4, #0x238]
005a2e7c  3c 62 84 e5                                      str r6, [r4, #0x23c]
005a2e80  40 62 84 e5                                      str r6, [r4, #0x240]
005a2e84  48 62 84 e5                                      str r6, [r4, #0x248]
005a2e88  5c 62 84 e5                                      str r6, [r4, #0x25c]
005a2e8c  01 1c a0 e3                                      mov r1, #0x100
005a2e90  01 20 a0 e3                                      mov r2, #1
005a2e94  85 18 00 eb                                      bl #0x5a90b0
005a2e98  9c 30 94 e5                                      ldr r3, [r4, #0x9c]
005a2e9c  01 00 a0 e3                                      mov r0, #1
005a2ea0  1f 20 06 e2                                      and r2, r6, #0x1f
005a2ea4  10 22 a0 e1                                      lsl r2, r0, r2
005a2ea8  9c 10 95 e5                                      ldr r1, [r5, #0x9c]
005a2eac  01 60 86 e2                                      add r6, r6, #1
005a2eb0  01 00 12 e1                                      tst r2, r1
005a2eb4  02 30 83 11                                      orrne r3, r3, r2
005a2eb8  02 30 c3 01                                      biceq r3, r3, r2
005a2ebc  19 00 56 e3                                      cmp r6, #0x19
005a2ec0  9c 30 84 e5                                      str r3, [r4, #0x9c]
005a2ec4  f5 ff ff 1a                                      bne #0x5a2ea0
005a2ec8  04 00 a0 e1                                      mov r0, r4
005a2ecc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005a2ed0  4c 1c 3f 00 28 43 00 00                          .byte 0x4c, 0x1c, 0x3f, 0x00, 0x28, 0x43, 0x00, 0x00

; FUNCTION 0x005a2ed8, declared_size=184, range_size=184, mode=arm
; class-group: glitch::video::CBatchDriver
; alias: _ZN6glitch5video12CBatchDriverC2EjjPNS0_12IVideoDriverE
; demangled: glitch::video::CBatchDriver::CBatchDriver(unsigned int, unsigned int, glitch::video::IVideoDriver*)
; decoder-mode: arm
005a2ed8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005a2edc  01 80 a0 e1                                      mov r8, r1
005a2ee0  a0 70 9f e5                                      ldr r7, [pc, #0xa0]
005a2ee4  03 10 a0 e1                                      mov r1, r3
005a2ee8  00 40 a0 e1                                      mov r4, r0
005a2eec  02 a0 a0 e1                                      mov sl, r2
005a2ef0  03 50 a0 e1                                      mov r5, r3
005a2ef4  1a 5a 00 eb                                      bl #0x5b9764
005a2ef8  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
005a2efc  07 70 8f e0                                      add r7, pc, r7
005a2f00  00 60 a0 e3                                      mov r6, #0
005a2f04  02 20 97 e7                                      ldr r2, [r7, r2]
005a2f08  00 30 a0 e3                                      mov r3, #0
005a2f0c  58 32 84 e5                                      str r3, [r4, #0x258]
005a2f10  08 20 82 e2                                      add r2, r2, #8
005a2f14  00 20 84 e5                                      str r2, [r4]
005a2f18  50 32 84 e5                                      str r3, [r4, #0x250]
005a2f1c  54 32 84 e5                                      str r3, [r4, #0x254]
005a2f20  04 00 a0 e1                                      mov r0, r4
005a2f24  2c 82 84 e5                                      str r8, [r4, #0x22c]
005a2f28  30 a2 84 e5                                      str sl, [r4, #0x230]
005a2f2c  34 62 84 e5                                      str r6, [r4, #0x234]
005a2f30  38 62 84 e5                                      str r6, [r4, #0x238]
005a2f34  3c 62 84 e5                                      str r6, [r4, #0x23c]
005a2f38  40 62 84 e5                                      str r6, [r4, #0x240]
005a2f3c  48 62 84 e5                                      str r6, [r4, #0x248]
005a2f40  5c 62 84 e5                                      str r6, [r4, #0x25c]
005a2f44  01 1c a0 e3                                      mov r1, #0x100
005a2f48  01 20 a0 e3                                      mov r2, #1
005a2f4c  57 18 00 eb                                      bl #0x5a90b0
005a2f50  9c 30 94 e5                                      ldr r3, [r4, #0x9c]
005a2f54  01 00 a0 e3                                      mov r0, #1
005a2f58  1f 20 06 e2                                      and r2, r6, #0x1f
005a2f5c  10 22 a0 e1                                      lsl r2, r0, r2
005a2f60  9c 10 95 e5                                      ldr r1, [r5, #0x9c]
005a2f64  01 60 86 e2                                      add r6, r6, #1
005a2f68  01 00 12 e1                                      tst r2, r1
005a2f6c  02 30 83 11                                      orrne r3, r3, r2
005a2f70  02 30 c3 01                                      biceq r3, r3, r2
005a2f74  19 00 56 e3                                      cmp r6, #0x19
005a2f78  9c 30 84 e5                                      str r3, [r4, #0x9c]
005a2f7c  f5 ff ff 1a                                      bne #0x5a2f58
005a2f80  04 00 a0 e1                                      mov r0, r4
005a2f84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005a2f88  94 1b 3f 00 28 43 00 00                          .byte 0x94, 0x1b, 0x3f, 0x00, 0x28, 0x43, 0x00, 0x00

; FUNCTION 0x005a3a20, declared_size=280, range_size=280, mode=arm
; class-group: glitch::video::CBatchDriver
; alias: _ZN6glitch5video12CBatchDriver5flushEv
; demangled: glitch::video::CBatchDriver::flush()
; decoder-mode: arm
005a3a20  70 40 2d e9                                      push {r4, r5, r6, lr}
005a3a24  20 51 90 e5                                      ldr r5, [r0, #0x120]
005a3a28  00 40 a0 e1                                      mov r4, r0
005a3a2c  50 30 95 e5                                      ldr r3, [r5, #0x50]
005a3a30  00 00 53 e3                                      cmp r3, #0
005a3a34  15 00 00 0a                                      beq #0x5a3a90
005a3a38  58 60 95 e5                                      ldr r6, [r5, #0x58]
005a3a3c  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
005a3a40  1f 20 03 e2                                      and r2, r3, #0x1f
005a3a44  01 00 52 e3                                      cmp r2, #1
005a3a48  20 00 00 9a                                      bls #0x5a3ad0
005a3a4c  01 20 42 e2                                      sub r2, r2, #1
005a3a50  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a3a54  03 30 82 e1                                      orr r3, r2, r3
005a3a58  13 30 c6 e5                                      strb r3, [r6, #0x13]
005a3a5c  5c 60 95 e5                                      ldr r6, [r5, #0x5c]
005a3a60  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
005a3a64  1f 20 03 e2                                      and r2, r3, #0x1f
005a3a68  01 00 52 e3                                      cmp r2, #1
005a3a6c  21 00 00 9a                                      bls #0x5a3af8
005a3a70  01 20 42 e2                                      sub r2, r2, #1
005a3a74  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a3a78  03 30 82 e1                                      orr r3, r2, r3
005a3a7c  13 30 c6 e5                                      strb r3, [r6, #0x13]
005a3a80  00 30 a0 e3                                      mov r3, #0
005a3a84  54 30 85 e5                                      str r3, [r5, #0x54]
005a3a88  50 30 85 e5                                      str r3, [r5, #0x50]
005a3a8c  20 51 94 e5                                      ldr r5, [r4, #0x120]
005a3a90  34 32 94 e5                                      ldr r3, [r4, #0x234]
005a3a94  00 00 53 e3                                      cmp r3, #0
005a3a98  09 00 00 0a                                      beq #0x5a3ac4
005a3a9c  3c 20 95 e5                                      ldr r2, [r5, #0x3c]
005a3aa0  00 00 52 e3                                      cmp r2, #0
005a3aa4  06 00 00 0a                                      beq #0x5a3ac4
005a3aa8  05 10 a0 e1                                      mov r1, r5
005a3aac  03 00 a0 e1                                      mov r0, r3
005a3ab0  49 2f 84 e2                                      add r2, r4, #0x124
005a3ab4  00 30 93 e5                                      ldr r3, [r3]
005a3ab8  0f e0 a0 e1                                      mov lr, pc
005a3abc  08 f0 93 e5                                      ldr pc, [r3, #8]
005a3ac0  20 51 94 e5                                      ldr r5, [r4, #0x120]
005a3ac4  05 00 a0 e1                                      mov r0, r5
005a3ac8  70 40 bd e8                                      pop {r4, r5, r6, lr}
005a3acc  69 53 04 ea                                      b #0x6b8878
005a3ad0  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
005a3ad4  20 00 13 e3                                      tst r3, #0x20
005a3ad8  11 00 00 1a                                      bne #0x5a3b24
005a3adc  00 30 a0 e3                                      mov r3, #0
005a3ae0  13 30 c6 e5                                      strb r3, [r6, #0x13]
005a3ae4  5c 60 95 e5                                      ldr r6, [r5, #0x5c]
005a3ae8  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
005a3aec  1f 20 03 e2                                      and r2, r3, #0x1f
005a3af0  01 00 52 e3                                      cmp r2, #1
005a3af4  dd ff ff 8a                                      bhi #0x5a3a70
005a3af8  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
005a3afc  20 00 13 e3                                      tst r3, #0x20
005a3b00  02 00 00 1a                                      bne #0x5a3b10
005a3b04  00 30 a0 e3                                      mov r3, #0
005a3b08  13 30 c6 e5                                      strb r3, [r6, #0x13]
005a3b0c  db ff ff ea                                      b #0x5a3a80
005a3b10  00 30 96 e5                                      ldr r3, [r6]
005a3b14  06 00 a0 e1                                      mov r0, r6
005a3b18  0f e0 a0 e1                                      mov lr, pc
005a3b1c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005a3b20  f7 ff ff ea                                      b #0x5a3b04
005a3b24  00 30 96 e5                                      ldr r3, [r6]
005a3b28  06 00 a0 e1                                      mov r0, r6
005a3b2c  0f e0 a0 e1                                      mov lr, pc
005a3b30  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005a3b34  e8 ff ff ea                                      b #0x5a3adc

; FUNCTION 0x005a3d50, declared_size=136, range_size=136, mode=arm
; class-group: glitch::video::CBatchDriver
; alias: _ZN6glitch5video12CBatchDriverD1Ev
; demangled: glitch::video::CBatchDriver::~CBatchDriver()
; decoder-mode: arm
005a3d50  70 40 2d e9                                      push {r4, r5, r6, lr}
005a3d54  74 30 9f e5                                      ldr r3, [pc, #0x74]
005a3d58  74 20 9f e5                                      ldr r2, [pc, #0x74]
005a3d5c  00 40 a0 e1                                      mov r4, r0
005a3d60  03 30 8f e0                                      add r3, pc, r3
005a3d64  48 02 90 e5                                      ldr r0, [r0, #0x248]
005a3d68  02 20 93 e7                                      ldr r2, [r3, r2]
005a3d6c  00 00 50 e3                                      cmp r0, #0
005a3d70  08 20 82 e2                                      add r2, r2, #8
005a3d74  00 20 84 e5                                      str r2, [r4]
005a3d78  00 00 00 0a                                      beq #0x5a3d80
005a3d7c  00 e6 f5 eb                                      bl #0x31d584
005a3d80  40 52 94 e5                                      ldr r5, [r4, #0x240]
005a3d84  00 00 55 e3                                      cmp r5, #0
005a3d88  04 00 00 0a                                      beq #0x5a3da0
005a3d8c  00 30 95 e5                                      ldr r3, [r5]
005a3d90  01 30 43 e2                                      sub r3, r3, #1
005a3d94  00 00 53 e3                                      cmp r3, #0
005a3d98  00 30 85 e5                                      str r3, [r5]
005a3d9c  03 00 00 0a                                      beq #0x5a3db0
005a3da0  04 00 a0 e1                                      mov r0, r4
005a3da4  de 55 00 eb                                      bl #0x5b9524
005a3da8  04 00 a0 e1                                      mov r0, r4
005a3dac  70 80 bd e8                                      pop {r4, r5, r6, pc}
005a3db0  05 00 a0 e1                                      mov r0, r5
005a3db4  18 f3 ff eb                                      bl #0x5a0a1c
005a3db8  05 00 a0 e1                                      mov r0, r5
005a3dbc  3b a9 f5 eb                                      bl #0x30e2b0
005a3dc0  04 00 a0 e1                                      mov r0, r4
005a3dc4  d6 55 00 eb                                      bl #0x5b9524
005a3dc8  04 00 a0 e1                                      mov r0, r4
005a3dcc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005a3dd0  30 0d 3f 00 28 43 00 00                          .byte 0x30, 0x0d, 0x3f, 0x00, 0x28, 0x43, 0x00, 0x00

; FUNCTION 0x005a3dd8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CBatchDriver
; alias: _ZN6glitch5video12CBatchDriverD0Ev
; demangled: glitch::video::CBatchDriver::~CBatchDriver()
; decoder-mode: arm
005a3dd8  10 40 2d e9                                      push {r4, lr}
005a3ddc  00 40 a0 e1                                      mov r4, r0
005a3de0  da ff ff eb                                      bl #0x5a3d50
005a3de4  04 00 a0 e1                                      mov r0, r4
005a3de8  30 a9 f5 eb                                      bl #0x30e2b0
005a3dec  04 00 a0 e1                                      mov r0, r4
005a3df0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005a6fe0, declared_size=6816, range_size=6816, mode=arm
; class-group: glitch::video::CBatchDriver
; alias: _ZN6glitch5video12CBatchDriver15thisAppendBatchERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamERKNS3_IKNS_5scene11CMeshBufferEEE
; demangled: glitch::video::CBatchDriver::thisAppendBatch(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
; decoder-mode: arm
005a6fe0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005a6fe4  4b df 4d e2                                      sub sp, sp, #0x12c
005a6fe8  58 00 8d e5                                      str r0, [sp, #0x58]
005a6fec  3c c2 90 e5                                      ldr ip, [r0, #0x23c]
005a6ff0  6c 0f 9f e5                                      ldr r0, [pc, #0xf6c]
005a6ff4  4a ef 8d e2                                      add lr, sp, #0x128
005a6ff8  4c 10 8d e5                                      str r1, [sp, #0x4c]
005a6ffc  74 00 8d e5                                      str r0, [sp, #0x74]
005a7000  00 00 a0 e3                                      mov r0, #0
005a7004  00 00 5c e1                                      cmp ip, r0
005a7008  74 c0 9d e5                                      ldr ip, [sp, #0x74]
005a700c  50 00 6e e5                                      strb r0, [lr, #-0x50]!
005a7010  70 e0 8d e5                                      str lr, [sp, #0x70]
005a7014  0c c0 8f e0                                      add ip, pc, ip
005a7018  74 c0 8d e5                                      str ip, [sp, #0x74]
005a701c  e8 00 8d e5                                      str r0, [sp, #0xe8]
005a7020  64 20 8d e5                                      str r2, [sp, #0x64]
005a7024  84 30 8d e5                                      str r3, [sp, #0x84]
005a7028  dc 00 8d e5                                      str r0, [sp, #0xdc]
005a702c  e0 e0 8d e5                                      str lr, [sp, #0xe0]
005a7030  e4 e0 8d e5                                      str lr, [sp, #0xe4]
005a7034  e9 04 00 0a                                      beq #0x5a83e0
005a7038  00 30 91 e5                                      ldr r3, [r1]
005a703c  00 00 53 e1                                      cmp r3, r0
005a7040  00 20 93 15                                      ldrne r2, [r3]
005a7044  01 20 82 12                                      addne r2, r2, #1
005a7048  00 20 83 15                                      strne r2, [r3]
005a704c  58 e0 9d e5                                      ldr lr, [sp, #0x58]
005a7050  40 42 9e e5                                      ldr r4, [lr, #0x240]
005a7054  40 32 8e e5                                      str r3, [lr, #0x240]
005a7058  00 00 54 e3                                      cmp r4, #0
005a705c  04 00 00 0a                                      beq #0x5a7074
005a7060  00 30 94 e5                                      ldr r3, [r4]
005a7064  01 30 43 e2                                      sub r3, r3, #1
005a7068  00 00 53 e3                                      cmp r3, #0
005a706c  00 30 84 e5                                      str r3, [r4]
005a7070  47 06 00 0a                                      beq #0x5a8994
005a7074  64 00 9d e5                                      ldr r0, [sp, #0x64]
005a7078  58 10 9d e5                                      ldr r1, [sp, #0x58]
005a707c  44 02 81 e5                                      str r0, [r1, #0x244]
005a7080  84 20 9d e5                                      ldr r2, [sp, #0x84]
005a7084  00 30 92 e5                                      ldr r3, [r2]
005a7088  00 00 53 e3                                      cmp r3, #0
005a708c  04 20 93 15                                      ldrne r2, [r3, #4]
005a7090  01 20 82 12                                      addne r2, r2, #1
005a7094  04 20 83 15                                      strne r2, [r3, #4]
005a7098  58 c0 9d e5                                      ldr ip, [sp, #0x58]
005a709c  48 02 9c e5                                      ldr r0, [ip, #0x248]
005a70a0  48 32 8c e5                                      str r3, [ip, #0x248]
005a70a4  00 00 50 e3                                      cmp r0, #0
005a70a8  00 00 00 0a                                      beq #0x5a70b0
005a70ac  34 d9 f5 eb                                      bl #0x31d584
005a70b0  58 e0 9d e5                                      ldr lr, [sp, #0x58]
005a70b4  00 10 a0 e3                                      mov r1, #0
005a70b8  01 20 a0 e1                                      mov r2, r1
005a70bc  3c 32 9e e5                                      ldr r3, [lr, #0x23c]
005a70c0  03 00 a0 e1                                      mov r0, r3
005a70c4  00 c0 93 e5                                      ldr ip, [r3]
005a70c8  09 3d 8e e2                                      add r3, lr, #0x240
005a70cc  0f e0 a0 e1                                      mov lr, pc
005a70d0  08 f0 9c e5                                      ldr pc, [ip, #8]
005a70d4  00 00 50 e3                                      cmp r0, #0
005a70d8  c0 04 00 1a                                      bne #0x5a83e0
005a70dc  e8 20 9d e5                                      ldr r2, [sp, #0xe8]
005a70e0  00 30 a0 e3                                      mov r3, #0
005a70e4  f0 30 8d e5                                      str r3, [sp, #0xf0]
005a70e8  01 00 52 e3                                      cmp r2, #1
005a70ec  f4 30 8d e5                                      str r3, [sp, #0xf4]
005a70f0  f8 30 8d e5                                      str r3, [sp, #0xf8]
005a70f4  6c 04 00 9a                                      bls #0x5a82ac
005a70f8  49 1f 8d e2                                      add r1, sp, #0x124
005a70fc  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
005a7100  bb ec ff eb                                      bl #0x5a23f4
005a7104  e0 a0 9d e5                                      ldr sl, [sp, #0xe0]
005a7108  50 00 8d e5                                      str r0, [sp, #0x50]
005a710c  f0 c0 8d e2                                      add ip, sp, #0xf0
005a7110  c0 e0 8d e2                                      add lr, sp, #0xc0
005a7114  45 0f 8d e2                                      add r0, sp, #0x114
005a7118  42 1f 8d e2                                      add r1, sp, #0x108
005a711c  78 c0 8d e5                                      str ip, [sp, #0x78]
005a7120  5c e0 8d e5                                      str lr, [sp, #0x5c]
005a7124  60 00 8d e5                                      str r0, [sp, #0x60]
005a7128  7c 10 8d e5                                      str r1, [sp, #0x7c]
005a712c  70 e0 9d e5                                      ldr lr, [sp, #0x70]
005a7130  0e 00 5a e1                                      cmp sl, lr
005a7134  77 01 00 0a                                      beq #0x5a7718
005a7138  50 20 9d e5                                      ldr r2, [sp, #0x50]
005a713c  00 50 a0 e3                                      mov r5, #0
005a7140  c0 50 8d e5                                      str r5, [sp, #0xc0]
005a7144  00 00 52 e3                                      cmp r2, #0
005a7148  df 03 00 1a                                      bne #0x5a80cc
005a714c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005a7150  00 60 93 e5                                      ldr r6, [r3]
005a7154  10 20 96 e5                                      ldr r2, [r6, #0x10]
005a7158  14 30 86 e2                                      add r3, r6, #0x14
005a715c  03 00 52 e1                                      cmp r2, r3
005a7160  50 40 9d 05                                      ldreq r4, [sp, #0x50]
005a7164  37 00 00 0a                                      beq #0x5a7248
005a7168  f8 3d 9f e5                                      ldr r3, [pc, #0xdf8]
005a716c  74 c0 9d e5                                      ldr ip, [sp, #0x74]
005a7170  50 70 9d e5                                      ldr r7, [sp, #0x50]
005a7174  24 60 86 e2                                      add r6, r6, #0x24
005a7178  03 30 9c e7                                      ldr r3, [ip, r3]
005a717c  07 40 a0 e1                                      mov r4, r7
005a7180  54 a0 8d e5                                      str sl, [sp, #0x54]
005a7184  48 30 8d e5                                      str r3, [sp, #0x48]
005a7188  10 50 16 e5                                      ldr r5, [r6, #-0x10]
005a718c  04 20 a0 e1                                      mov r2, r4
005a7190  00 00 55 e3                                      cmp r5, #0
005a7194  04 30 95 15                                      ldrne r3, [r5, #4]
005a7198  01 30 83 12                                      addne r3, r3, #1
005a719c  04 30 85 15                                      strne r3, [r5, #4]
005a71a0  b6 b0 56 e1                                      ldrh fp, [r6, #-6]
005a71a4  48 e0 9d e5                                      ldr lr, [sp, #0x48]
005a71a8  00 00 55 e3                                      cmp r5, #0
005a71ac  04 10 95 15                                      ldrne r1, [r5, #4]
005a71b0  c0 a0 9d e5                                      ldr sl, [sp, #0xc0]
005a71b4  0b 30 de e7                                      ldrb r3, [lr, fp]
005a71b8  b4 90 56 e1                                      ldrh sb, [r6, #-4]
005a71bc  01 10 81 12                                      addne r1, r1, #1
005a71c0  14 80 8a e2                                      add r8, sl, #0x14
005a71c4  07 80 88 e0                                      add r8, r8, r7
005a71c8  99 43 24 e0                                      mla r4, sb, r3, r4
005a71cc  b2 30 56 e1                                      ldrh r3, [r6, #-2]
005a71d0  04 10 85 15                                      strne r1, [r5, #4]
005a71d4  00 00 98 e5                                      ldr r0, [r8]
005a71d8  10 70 87 e2                                      add r7, r7, #0x10
005a71dc  00 50 88 e5                                      str r5, [r8]
005a71e0  00 00 50 e3                                      cmp r0, #0
005a71e4  04 00 00 0a                                      beq #0x5a71fc
005a71e8  40 20 8d e5                                      str r2, [sp, #0x40]
005a71ec  3c 30 8d e5                                      str r3, [sp, #0x3c]
005a71f0  e3 d8 f5 eb                                      bl #0x31d584
005a71f4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005a71f8  40 20 9d e5                                      ldr r2, [sp, #0x40]
005a71fc  0a 00 a0 e1                                      mov r0, sl
005a7200  04 20 88 e5                                      str r2, [r8, #4]
005a7204  be 30 c8 e1                                      strh r3, [r8, #0xe]
005a7208  ba b0 c8 e1                                      strh fp, [r8, #0xa]
005a720c  bc 90 c8 e1                                      strh sb, [r8, #0xc]
005a7210  00 10 a0 e3                                      mov r1, #0
005a7214  78 e6 ff eb                                      bl #0x5a0bfc
005a7218  00 00 55 e3                                      cmp r5, #0
005a721c  05 00 a0 e1                                      mov r0, r5
005a7220  00 00 00 0a                                      beq #0x5a7228
005a7224  d6 d8 f5 eb                                      bl #0x31d584
005a7228  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
005a722c  06 20 a0 e1                                      mov r2, r6
005a7230  10 60 86 e2                                      add r6, r6, #0x10
005a7234  00 30 90 e5                                      ldr r3, [r0]
005a7238  10 30 93 e5                                      ldr r3, [r3, #0x10]
005a723c  03 00 52 e1                                      cmp r2, r3
005a7240  d0 ff ff 1a                                      bne #0x5a7188
005a7244  54 a0 9d e5                                      ldr sl, [sp, #0x54]
005a7248  18 00 9a e5                                      ldr r0, [sl, #0x18]
005a724c  14 20 9a e5                                      ldr r2, [sl, #0x14]
005a7250  58 10 9d e5                                      ldr r1, [sp, #0x58]
005a7254  00 20 62 e0                                      rsb r2, r2, r0
005a7258  42 61 a0 e1                                      asr r6, r2, #2
005a725c  00 30 91 e5                                      ldr r3, [r1]
005a7260  86 60 86 e0                                      add r6, r6, r6, lsl #1
005a7264  94 06 06 e0                                      mul r6, r4, r6
005a7268  00 10 a0 e3                                      mov r1, #0
005a726c  06 00 a0 e1                                      mov r0, r6
005a7270  78 50 93 e5                                      ldr r5, [r3, #0x78]
005a7274  cb 33 fe eb                                      bl #0x5341a8
005a7278  01 30 a0 e3                                      mov r3, #1
005a727c  09 00 8d e9                                      stmib sp, {r0, r3}
005a7280  12 0e 8d e2                                      add r0, sp, #0x120
005a7284  04 30 a0 e3                                      mov r3, #4
005a7288  00 60 8d e5                                      str r6, [sp]
005a728c  58 10 9d e5                                      ldr r1, [sp, #0x58]
005a7290  00 20 a0 e3                                      mov r2, #0
005a7294  35 ff 2f e1                                      blx r5
005a7298  20 01 9d e5                                      ldr r0, [sp, #0x120]
005a729c  00 00 50 e3                                      cmp r0, #0
005a72a0  04 30 90 15                                      ldrne r3, [r0, #4]
005a72a4  00 90 a0 e1                                      mov sb, r0
005a72a8  01 30 83 12                                      addne r3, r3, #1
005a72ac  04 30 80 15                                      strne r3, [r0, #4]
005a72b0  20 01 9d 15                                      ldrne r0, [sp, #0x120]
005a72b4  00 00 50 e3                                      cmp r0, #0
005a72b8  00 00 00 0a                                      beq #0x5a72c0
005a72bc  b0 d8 f5 eb                                      bl #0x31d584
005a72c0  c0 50 9d e5                                      ldr r5, [sp, #0xc0]
005a72c4  10 30 95 e5                                      ldr r3, [r5, #0x10]
005a72c8  14 50 85 e2                                      add r5, r5, #0x14
005a72cc  03 00 55 e1                                      cmp r5, r3
005a72d0  17 00 00 0a                                      beq #0x5a7334
005a72d4  74 40 ff e6                                      uxth r4, r4
005a72d8  00 60 a0 e3                                      mov r6, #0
005a72dc  be 40 c5 e1                                      strh r4, [r5, #0xe]
005a72e0  00 00 59 e3                                      cmp sb, #0
005a72e4  04 20 99 15                                      ldrne r2, [sb, #4]
005a72e8  c0 70 9d e5                                      ldr r7, [sp, #0xc0]
005a72ec  10 50 85 e2                                      add r5, r5, #0x10
005a72f0  01 20 82 12                                      addne r2, r2, #1
005a72f4  14 30 87 e2                                      add r3, r7, #0x14
005a72f8  06 30 83 e0                                      add r3, r3, r6
005a72fc  04 20 89 15                                      strne r2, [sb, #4]
005a7300  00 00 93 e5                                      ldr r0, [r3]
005a7304  10 60 86 e2                                      add r6, r6, #0x10
005a7308  00 90 83 e5                                      str sb, [r3]
005a730c  00 00 50 e3                                      cmp r0, #0
005a7310  00 00 00 0a                                      beq #0x5a7318
005a7314  9a d8 f5 eb                                      bl #0x31d584
005a7318  07 00 a0 e1                                      mov r0, r7
005a731c  00 10 a0 e3                                      mov r1, #0
005a7320  35 e6 ff eb                                      bl #0x5a0bfc
005a7324  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
005a7328  10 30 93 e5                                      ldr r3, [r3, #0x10]
005a732c  03 00 55 e1                                      cmp r5, r3
005a7330  e9 ff ff 1a                                      bne #0x5a72dc
005a7334  18 20 9a e5                                      ldr r2, [sl, #0x18]
005a7338  14 30 9a e5                                      ldr r3, [sl, #0x14]
005a733c  58 00 9d e5                                      ldr r0, [sp, #0x58]
005a7340  06 70 a0 e3                                      mov r7, #6
005a7344  02 30 63 e0                                      rsb r3, r3, r2
005a7348  43 31 a0 e1                                      asr r3, r3, #2
005a734c  97 03 07 e0                                      mul r7, r7, r3
005a7350  00 10 a0 e3                                      mov r1, #0
005a7354  00 30 90 e5                                      ldr r3, [r0]
005a7358  4a 5f 8d e2                                      add r5, sp, #0x128
005a735c  80 10 65 e5                                      strb r1, [r5, #-0x80]!
005a7360  ac 10 8d e5                                      str r1, [sp, #0xac]
005a7364  b8 10 8d e5                                      str r1, [sp, #0xb8]
005a7368  b0 50 8d e5                                      str r5, [sp, #0xb0]
005a736c  b4 50 8d e5                                      str r5, [sp, #0xb4]
005a7370  07 00 a0 e1                                      mov r0, r7
005a7374  78 60 93 e5                                      ldr r6, [r3, #0x78]
005a7378  8a 33 fe eb                                      bl #0x5341a8
005a737c  01 40 a0 e3                                      mov r4, #1
005a7380  04 20 a0 e1                                      mov r2, r4
005a7384  04 30 a0 e3                                      mov r3, #4
005a7388  04 00 8d e5                                      str r0, [sp, #4]
005a738c  58 10 9d e5                                      ldr r1, [sp, #0x58]
005a7390  fc 00 8d e2                                      add r0, sp, #0xfc
005a7394  00 70 8d e5                                      str r7, [sp]
005a7398  08 40 8d e5                                      str r4, [sp, #8]
005a739c  36 ff 2f e1                                      blx r6
005a73a0  04 10 a0 e3                                      mov r1, #4
005a73a4  fc 00 9d e5                                      ldr r0, [sp, #0xfc]
005a73a8  90 e9 ff eb                                      bl #0x5a19f0
005a73ac  04 10 a0 e3                                      mov r1, #4
005a73b0  00 60 a0 e1                                      mov r6, r0
005a73b4  09 00 a0 e1                                      mov r0, sb
005a73b8  8c e9 ff eb                                      bl #0x5a19f0
005a73bc  50 10 9d e5                                      ldr r1, [sp, #0x50]
005a73c0  14 01 8d e5                                      str r0, [sp, #0x114]
005a73c4  00 00 51 e3                                      cmp r1, #0
005a73c8  54 10 8d 05                                      streq r1, [sp, #0x54]
005a73cc  a0 03 00 1a                                      bne #0x5a8254
005a73d0  64 30 9d e5                                      ldr r3, [sp, #0x64]
005a73d4  01 10 a0 e3                                      mov r1, #1
005a73d8  00 00 93 e5                                      ldr r0, [r3]
005a73dc  be e9 ff eb                                      bl #0x5a1adc
005a73e0  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005a73e4  14 80 9a e5                                      ldr r8, [sl, #0x14]
005a73e8  18 30 9a e5                                      ldr r3, [sl, #0x18]
005a73ec  04 b0 9c e5                                      ldr fp, [ip, #4]
005a73f0  03 00 58 e1                                      cmp r8, r3
005a73f4  00 10 a0 03                                      moveq r1, #0
005a73f8  0b b0 80 e0                                      add fp, r0, fp
005a73fc  48 10 8d 05                                      streq r1, [sp, #0x48]
005a7400  31 00 00 0a                                      beq #0x5a74cc
005a7404  00 e0 a0 e3                                      mov lr, #0
005a7408  11 0e 8d e2                                      add r0, sp, #0x110
005a740c  43 1f 8d e2                                      add r1, sp, #0x10c
005a7410  80 90 8d e5                                      str sb, [sp, #0x80]
005a7414  48 e0 8d e5                                      str lr, [sp, #0x48]
005a7418  06 30 a0 e1                                      mov r3, r6
005a741c  68 00 8d e5                                      str r0, [sp, #0x68]
005a7420  6c 10 8d e5                                      str r1, [sp, #0x6c]
005a7424  0e 90 a0 e1                                      mov sb, lr
005a7428  02 70 83 e2                                      add r7, r3, #2
005a742c  00 60 a0 e3                                      mov r6, #0
005a7430  00 30 98 e5                                      ldr r3, [r8]
005a7434  ac c0 9d e5                                      ldr ip, [sp, #0xac]
005a7438  83 30 83 e0                                      add r3, r3, r3, lsl #1
005a743c  06 30 83 e0                                      add r3, r3, r6
005a7440  83 30 a0 e1                                      lsl r3, r3, #1
005a7444  00 00 5c e3                                      cmp ip, #0
005a7448  b3 40 9b e1                                      ldrh r4, [fp, r3]
005a744c  f3 02 00 0a                                      beq #0x5a8020
005a7450  0c 30 a0 e1                                      mov r3, ip
005a7454  05 10 a0 e1                                      mov r1, r5
005a7458  00 00 00 ea                                      b #0x5a7460
005a745c  02 30 a0 e1                                      mov r3, r2
005a7460  b0 21 d3 e1                                      ldrh r2, [r3, #0x10]
005a7464  04 00 52 e1                                      cmp r2, r4
005a7468  0c 20 93 35                                      ldrlo r2, [r3, #0xc]
005a746c  08 20 93 25                                      ldrhs r2, [r3, #8]
005a7470  01 30 a0 31                                      movlo r3, r1
005a7474  03 10 a0 e1                                      mov r1, r3
005a7478  00 00 52 e3                                      cmp r2, #0
005a747c  f6 ff ff 1a                                      bne #0x5a745c
005a7480  05 00 53 e1                                      cmp r3, r5
005a7484  e5 02 00 0a                                      beq #0x5a8020
005a7488  b0 21 d3 e1                                      ldrh r2, [r3, #0x10]
005a748c  04 00 52 e1                                      cmp r2, r4
005a7490  05 30 a0 81                                      movhi r3, r5
005a7494  05 00 53 e1                                      cmp r3, r5
005a7498  ac 02 00 0a                                      beq #0x5a7f50
005a749c  b2 31 d3 e1                                      ldrh r3, [r3, #0x12]
005a74a0  b2 30 47 e1                                      strh r3, [r7, #-2]
005a74a4  07 30 a0 e1                                      mov r3, r7
005a74a8  01 60 86 e2                                      add r6, r6, #1
005a74ac  03 00 56 e3                                      cmp r6, #3
005a74b0  02 70 87 e2                                      add r7, r7, #2
005a74b4  dd ff ff 1a                                      bne #0x5a7430
005a74b8  18 20 9a e5                                      ldr r2, [sl, #0x18]
005a74bc  04 80 88 e2                                      add r8, r8, #4
005a74c0  02 00 58 e1                                      cmp r8, r2
005a74c4  d7 ff ff 1a                                      bne #0x5a7428
005a74c8  80 90 9d e5                                      ldr sb, [sp, #0x80]
005a74cc  fc 40 9d e5                                      ldr r4, [sp, #0xfc]
005a74d0  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
005a74d4  1f 20 03 e2                                      and r2, r3, #0x1f
005a74d8  01 00 52 e3                                      cmp r2, #1
005a74dc  eb 02 00 9a                                      bls #0x5a8090
005a74e0  01 20 42 e2                                      sub r2, r2, #1
005a74e4  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a74e8  03 30 82 e1                                      orr r3, r2, r3
005a74ec  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a74f0  13 30 d9 e5                                      ldrb r3, [sb, #0x13]
005a74f4  1f 20 03 e2                                      and r2, r3, #0x1f
005a74f8  01 00 52 e3                                      cmp r2, #1
005a74fc  dd 02 00 9a                                      bls #0x5a8078
005a7500  01 20 42 e2                                      sub r2, r2, #1
005a7504  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a7508  03 30 82 e1                                      orr r3, r2, r3
005a750c  13 30 c9 e5                                      strb r3, [sb, #0x13]
005a7510  64 20 9d e5                                      ldr r2, [sp, #0x64]
005a7514  00 40 92 e5                                      ldr r4, [r2]
005a7518  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
005a751c  1f 20 03 e2                                      and r2, r3, #0x1f
005a7520  01 00 52 e3                                      cmp r2, #1
005a7524  bf 02 00 9a                                      bls #0x5a8028
005a7528  01 20 42 e2                                      sub r2, r2, #1
005a752c  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a7530  03 30 82 e1                                      orr r3, r2, r3
005a7534  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a7538  50 30 9d e5                                      ldr r3, [sp, #0x50]
005a753c  00 00 53 e3                                      cmp r3, #0
005a7540  c0 02 00 1a                                      bne #0x5a8048
005a7544  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
005a7548  48 e0 9d e5                                      ldr lr, [sp, #0x48]
005a754c  08 e0 83 e5                                      str lr, [r3, #8]
005a7550  fc 40 9d e5                                      ldr r4, [sp, #0xfc]
005a7554  00 00 54 e3                                      cmp r4, #0
005a7558  04 30 94 15                                      ldrne r3, [r4, #4]
005a755c  01 30 83 12                                      addne r3, r3, #1
005a7560  04 30 84 15                                      strne r3, [r4, #4]
005a7564  18 00 9a e5                                      ldr r0, [sl, #0x18]
005a7568  14 10 9a e5                                      ldr r1, [sl, #0x14]
005a756c  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
005a7570  00 30 a0 e3                                      mov r3, #0
005a7574  00 10 61 e0                                      rsb r1, r1, r0
005a7578  41 61 a0 e1                                      asr r6, r1, #2
005a757c  ff 00 a0 e3                                      mov r0, #0xff
005a7580  06 10 a0 e3                                      mov r1, #6
005a7584  8c 30 8d e5                                      str r3, [sp, #0x8c]
005a7588  03 00 52 e1                                      cmp r2, r3
005a758c  a0 30 8d e5                                      str r3, [sp, #0xa0]
005a7590  90 30 8d e5                                      str r3, [sp, #0x90]
005a7594  94 30 8d e5                                      str r3, [sp, #0x94]
005a7598  98 30 8d e5                                      str r3, [sp, #0x98]
005a759c  9c 30 8d e5                                      str r3, [sp, #0x9c]
005a75a0  b4 0a cd e1                                      strh r0, [sp, #0xa4]
005a75a4  b6 1a cd e1                                      strh r1, [sp, #0xa6]
005a75a8  00 30 92 15                                      ldrne r3, [r2]
005a75ac  86 60 86 e0                                      add r6, r6, r6, lsl #1
005a75b0  01 30 83 12                                      addne r3, r3, #1
005a75b4  00 30 82 15                                      strne r3, [r2]
005a75b8  8c 70 9d e5                                      ldr r7, [sp, #0x8c]
005a75bc  8c 20 8d e5                                      str r2, [sp, #0x8c]
005a75c0  00 00 57 e3                                      cmp r7, #0
005a75c4  08 00 00 0a                                      beq #0x5a75ec
005a75c8  00 30 97 e5                                      ldr r3, [r7]
005a75cc  01 30 43 e2                                      sub r3, r3, #1
005a75d0  00 00 53 e3                                      cmp r3, #0
005a75d4  00 30 87 e5                                      str r3, [r7]
005a75d8  03 00 00 1a                                      bne #0x5a75ec
005a75dc  07 00 a0 e1                                      mov r0, r7
005a75e0  0d e5 ff eb                                      bl #0x5a0a1c
005a75e4  07 00 a0 e1                                      mov r0, r7
005a75e8  30 9b f5 eb                                      bl #0x30e2b0
005a75ec  00 00 54 e3                                      cmp r4, #0
005a75f0  04 30 94 15                                      ldrne r3, [r4, #4]
005a75f4  01 30 83 12                                      addne r3, r3, #1
005a75f8  04 30 84 15                                      strne r3, [r4, #4]
005a75fc  90 00 9d e5                                      ldr r0, [sp, #0x90]
005a7600  90 40 8d e5                                      str r4, [sp, #0x90]
005a7604  00 00 50 e3                                      cmp r0, #0
005a7608  00 00 00 0a                                      beq #0x5a7610
005a760c  dc d7 f5 eb                                      bl #0x31d584
005a7610  48 20 9d e5                                      ldr r2, [sp, #0x48]
005a7614  00 30 a0 e3                                      mov r3, #0
005a7618  78 00 9d e5                                      ldr r0, [sp, #0x78]
005a761c  9c 30 8d e5                                      str r3, [sp, #0x9c]
005a7620  94 30 8d e5                                      str r3, [sp, #0x94]
005a7624  06 c0 a0 e3                                      mov ip, #6
005a7628  01 30 a0 e3                                      mov r3, #1
005a762c  8c 10 8d e2                                      add r1, sp, #0x8c
005a7630  98 60 8d e5                                      str r6, [sp, #0x98]
005a7634  a0 20 8d e5                                      str r2, [sp, #0xa0]
005a7638  b4 3a cd e1                                      strh r3, [sp, #0xa4]
005a763c  b6 ca cd e1                                      strh ip, [sp, #0xa6]
005a7640  45 f4 ff eb                                      bl #0x5a475c
005a7644  90 00 9d e5                                      ldr r0, [sp, #0x90]
005a7648  00 00 50 e3                                      cmp r0, #0
005a764c  00 00 00 0a                                      beq #0x5a7654
005a7650  cb d7 f5 eb                                      bl #0x31d584
005a7654  8c 60 9d e5                                      ldr r6, [sp, #0x8c]
005a7658  00 00 56 e3                                      cmp r6, #0
005a765c  08 00 00 0a                                      beq #0x5a7684
005a7660  00 30 96 e5                                      ldr r3, [r6]
005a7664  01 30 43 e2                                      sub r3, r3, #1
005a7668  00 00 53 e3                                      cmp r3, #0
005a766c  00 30 86 e5                                      str r3, [r6]
005a7670  03 00 00 1a                                      bne #0x5a7684
005a7674  06 00 a0 e1                                      mov r0, r6
005a7678  e7 e4 ff eb                                      bl #0x5a0a1c
005a767c  06 00 a0 e1                                      mov r0, r6
005a7680  0a 9b f5 eb                                      bl #0x30e2b0
005a7684  fc 00 9d e5                                      ldr r0, [sp, #0xfc]
005a7688  00 00 50 e3                                      cmp r0, #0
005a768c  00 00 00 0a                                      beq #0x5a7694
005a7690  bb d7 f5 eb                                      bl #0x31d584
005a7694  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
005a7698  00 00 53 e3                                      cmp r3, #0
005a769c  81 02 00 1a                                      bne #0x5a80a8
005a76a0  00 00 54 e3                                      cmp r4, #0
005a76a4  01 00 00 0a                                      beq #0x5a76b0
005a76a8  04 00 a0 e1                                      mov r0, r4
005a76ac  b4 d7 f5 eb                                      bl #0x31d584
005a76b0  c0 40 9d e5                                      ldr r4, [sp, #0xc0]
005a76b4  00 00 54 e3                                      cmp r4, #0
005a76b8  08 00 00 0a                                      beq #0x5a76e0
005a76bc  00 30 94 e5                                      ldr r3, [r4]
005a76c0  01 30 43 e2                                      sub r3, r3, #1
005a76c4  00 00 53 e3                                      cmp r3, #0
005a76c8  00 30 84 e5                                      str r3, [r4]
005a76cc  03 00 00 1a                                      bne #0x5a76e0
005a76d0  04 00 a0 e1                                      mov r0, r4
005a76d4  d0 e4 ff eb                                      bl #0x5a0a1c
005a76d8  04 00 a0 e1                                      mov r0, r4
005a76dc  f3 9a f5 eb                                      bl #0x30e2b0
005a76e0  09 00 a0 e1                                      mov r0, sb
005a76e4  a6 d7 f5 eb                                      bl #0x31d584
005a76e8  0c 20 9a e5                                      ldr r2, [sl, #0xc]
005a76ec  00 00 52 e3                                      cmp r2, #0
005a76f0  e0 02 00 0a                                      beq #0x5a8278
005a76f4  02 a0 a0 e1                                      mov sl, r2
005a76f8  00 00 00 ea                                      b #0x5a7700
005a76fc  03 a0 a0 e1                                      mov sl, r3
005a7700  08 30 9a e5                                      ldr r3, [sl, #8]
005a7704  00 00 53 e3                                      cmp r3, #0
005a7708  fb ff ff 1a                                      bne #0x5a76fc
005a770c  70 e0 9d e5                                      ldr lr, [sp, #0x70]
005a7710  0e 00 5a e1                                      cmp sl, lr
005a7714  87 fe ff 1a                                      bne #0x5a7138
005a7718  58 c0 9d e5                                      ldr ip, [sp, #0x58]
005a771c  20 01 9c e5                                      ldr r0, [ip, #0x120]
005a7720  e5 eb ff eb                                      bl #0x5a26bc
005a7724  f0 50 9d e5                                      ldr r5, [sp, #0xf0]
005a7728  f4 20 9d e5                                      ldr r2, [sp, #0xf4]
005a772c  02 00 55 e1                                      cmp r5, r2
005a7730  fb 01 00 0a                                      beq #0x5a7f24
005a7734  58 00 9d e5                                      ldr r0, [sp, #0x58]
005a7738  2c e8 9f e5                                      ldr lr, [pc, #0x82c]
005a773c  2c 48 9f e5                                      ldr r4, [pc, #0x82c]
005a7740  ab 7a 0a e3                                      movw r7, #0xaaab
005a7744  aa 7a 4a e3                                      movt r7, #0xaaaa
005a7748  09 0d 80 e2                                      add r0, r0, #0x240
005a774c  4c e0 8d e5                                      str lr, [sp, #0x4c]
005a7750  04 40 8f e0                                      add r4, pc, r4
005a7754  48 00 8d e5                                      str r0, [sp, #0x48]
005a7758  58 60 9d e5                                      ldr r6, [sp, #0x58]
005a775c  07 80 a0 e1                                      mov r8, r7
005a7760  02 00 00 ea                                      b #0x5a7770
005a7764  1c 50 85 e2                                      add r5, r5, #0x1c
005a7768  02 00 55 e1                                      cmp r5, r2
005a776c  ec 01 00 0a                                      beq #0x5a7f24
005a7770  ba 31 d5 e1                                      ldrh r3, [r5, #0x1a]
005a7774  03 00 53 e3                                      cmp r3, #3
005a7778  f9 ff ff da                                      ble #0x5a7764
005a777c  b8 31 d5 e1                                      ldrh r3, [r5, #0x18]
005a7780  01 00 53 e3                                      cmp r3, #1
005a7784  f6 ff ff 1a                                      bne #0x5a7764
005a7788  10 30 95 e5                                      ldr r3, [r5, #0x10]
005a778c  14 90 95 e5                                      ldr sb, [r5, #0x14]
005a7790  04 70 85 e2                                      add r7, r5, #4
005a7794  07 00 a0 e1                                      mov r0, r7
005a7798  09 90 63 e0                                      rsb sb, r3, sb
005a779c  20 a1 96 e5                                      ldr sl, [r6, #0x120]
005a77a0  d6 e2 ff eb                                      bl #0x5a0300
005a77a4  09 10 a0 e1                                      mov r1, sb
005a77a8  80 20 80 e0                                      add r2, r0, r0, lsl #1
005a77ac  0a 00 a0 e1                                      mov r0, sl
005a77b0  22 ea ff eb                                      bl #0x5a2040
005a77b4  00 00 50 e3                                      cmp r0, #0
005a77b8  3f 01 00 1a                                      bne #0x5a7cbc
005a77bc  04 00 a0 e1                                      mov r0, r4
005a77c0  3f 9a f5 eb                                      bl #0x30e0c4
005a77c4  04 00 a0 e1                                      mov r0, r4
005a77c8  3d 9a f5 eb                                      bl #0x30e0c4
005a77cc  04 00 a0 e1                                      mov r0, r4
005a77d0  3b 9a f5 eb                                      bl #0x30e0c4
005a77d4  04 00 a0 e1                                      mov r0, r4
005a77d8  39 9a f5 eb                                      bl #0x30e0c4
005a77dc  04 00 a0 e1                                      mov r0, r4
005a77e0  37 9a f5 eb                                      bl #0x30e0c4
005a77e4  04 00 a0 e1                                      mov r0, r4
005a77e8  35 9a f5 eb                                      bl #0x30e0c4
005a77ec  04 00 a0 e1                                      mov r0, r4
005a77f0  33 9a f5 eb                                      bl #0x30e0c4
005a77f4  04 00 a0 e1                                      mov r0, r4
005a77f8  31 9a f5 eb                                      bl #0x30e0c4
005a77fc  04 00 a0 e1                                      mov r0, r4
005a7800  2f 9a f5 eb                                      bl #0x30e0c4
005a7804  04 00 a0 e1                                      mov r0, r4
005a7808  2d 9a f5 eb                                      bl #0x30e0c4
005a780c  04 00 a0 e1                                      mov r0, r4
005a7810  2b 9a f5 eb                                      bl #0x30e0c4
005a7814  04 00 a0 e1                                      mov r0, r4
005a7818  29 9a f5 eb                                      bl #0x30e0c4
005a781c  04 00 a0 e1                                      mov r0, r4
005a7820  27 9a f5 eb                                      bl #0x30e0c4
005a7824  04 00 a0 e1                                      mov r0, r4
005a7828  25 9a f5 eb                                      bl #0x30e0c4
005a782c  04 00 a0 e1                                      mov r0, r4
005a7830  23 9a f5 eb                                      bl #0x30e0c4
005a7834  04 00 a0 e1                                      mov r0, r4
005a7838  21 9a f5 eb                                      bl #0x30e0c4
005a783c  04 00 a0 e1                                      mov r0, r4
005a7840  1f 9a f5 eb                                      bl #0x30e0c4
005a7844  04 00 a0 e1                                      mov r0, r4
005a7848  1d 9a f5 eb                                      bl #0x30e0c4
005a784c  04 00 a0 e1                                      mov r0, r4
005a7850  1b 9a f5 eb                                      bl #0x30e0c4
005a7854  04 00 a0 e1                                      mov r0, r4
005a7858  19 9a f5 eb                                      bl #0x30e0c4
005a785c  04 00 a0 e1                                      mov r0, r4
005a7860  17 9a f5 eb                                      bl #0x30e0c4
005a7864  04 00 a0 e1                                      mov r0, r4
005a7868  15 9a f5 eb                                      bl #0x30e0c4
005a786c  04 00 a0 e1                                      mov r0, r4
005a7870  13 9a f5 eb                                      bl #0x30e0c4
005a7874  04 00 a0 e1                                      mov r0, r4
005a7878  11 9a f5 eb                                      bl #0x30e0c4
005a787c  04 00 a0 e1                                      mov r0, r4
005a7880  0f 9a f5 eb                                      bl #0x30e0c4
005a7884  04 00 a0 e1                                      mov r0, r4
005a7888  0d 9a f5 eb                                      bl #0x30e0c4
005a788c  04 00 a0 e1                                      mov r0, r4
005a7890  0b 9a f5 eb                                      bl #0x30e0c4
005a7894  04 00 a0 e1                                      mov r0, r4
005a7898  09 9a f5 eb                                      bl #0x30e0c4
005a789c  04 00 a0 e1                                      mov r0, r4
005a78a0  07 9a f5 eb                                      bl #0x30e0c4
005a78a4  04 00 a0 e1                                      mov r0, r4
005a78a8  05 9a f5 eb                                      bl #0x30e0c4
005a78ac  04 00 a0 e1                                      mov r0, r4
005a78b0  03 9a f5 eb                                      bl #0x30e0c4
005a78b4  04 00 a0 e1                                      mov r0, r4
005a78b8  01 9a f5 eb                                      bl #0x30e0c4
005a78bc  04 00 a0 e1                                      mov r0, r4
005a78c0  ff 99 f5 eb                                      bl #0x30e0c4
005a78c4  04 00 a0 e1                                      mov r0, r4
005a78c8  fd 99 f5 eb                                      bl #0x30e0c4
005a78cc  04 00 a0 e1                                      mov r0, r4
005a78d0  fb 99 f5 eb                                      bl #0x30e0c4
005a78d4  04 00 a0 e1                                      mov r0, r4
005a78d8  f9 99 f5 eb                                      bl #0x30e0c4
005a78dc  04 00 a0 e1                                      mov r0, r4
005a78e0  f7 99 f5 eb                                      bl #0x30e0c4
005a78e4  04 00 a0 e1                                      mov r0, r4
005a78e8  f5 99 f5 eb                                      bl #0x30e0c4
005a78ec  04 00 a0 e1                                      mov r0, r4
005a78f0  f3 99 f5 eb                                      bl #0x30e0c4
005a78f4  04 00 a0 e1                                      mov r0, r4
005a78f8  f1 99 f5 eb                                      bl #0x30e0c4
005a78fc  04 00 a0 e1                                      mov r0, r4
005a7900  ef 99 f5 eb                                      bl #0x30e0c4
005a7904  04 00 a0 e1                                      mov r0, r4
005a7908  ed 99 f5 eb                                      bl #0x30e0c4
005a790c  04 00 a0 e1                                      mov r0, r4
005a7910  eb 99 f5 eb                                      bl #0x30e0c4
005a7914  04 00 a0 e1                                      mov r0, r4
005a7918  e9 99 f5 eb                                      bl #0x30e0c4
005a791c  04 00 a0 e1                                      mov r0, r4
005a7920  e7 99 f5 eb                                      bl #0x30e0c4
005a7924  04 00 a0 e1                                      mov r0, r4
005a7928  e5 99 f5 eb                                      bl #0x30e0c4
005a792c  04 00 a0 e1                                      mov r0, r4
005a7930  e3 99 f5 eb                                      bl #0x30e0c4
005a7934  04 00 a0 e1                                      mov r0, r4
005a7938  e1 99 f5 eb                                      bl #0x30e0c4
005a793c  04 00 a0 e1                                      mov r0, r4
005a7940  df 99 f5 eb                                      bl #0x30e0c4
005a7944  04 00 a0 e1                                      mov r0, r4
005a7948  dd 99 f5 eb                                      bl #0x30e0c4
005a794c  04 00 a0 e1                                      mov r0, r4
005a7950  db 99 f5 eb                                      bl #0x30e0c4
005a7954  04 00 a0 e1                                      mov r0, r4
005a7958  d9 99 f5 eb                                      bl #0x30e0c4
005a795c  04 00 a0 e1                                      mov r0, r4
005a7960  d7 99 f5 eb                                      bl #0x30e0c4
005a7964  04 00 a0 e1                                      mov r0, r4
005a7968  d5 99 f5 eb                                      bl #0x30e0c4
005a796c  04 00 a0 e1                                      mov r0, r4
005a7970  d3 99 f5 eb                                      bl #0x30e0c4
005a7974  04 00 a0 e1                                      mov r0, r4
005a7978  d1 99 f5 eb                                      bl #0x30e0c4
005a797c  04 00 a0 e1                                      mov r0, r4
005a7980  cf 99 f5 eb                                      bl #0x30e0c4
005a7984  04 00 a0 e1                                      mov r0, r4
005a7988  cd 99 f5 eb                                      bl #0x30e0c4
005a798c  04 00 a0 e1                                      mov r0, r4
005a7990  cb 99 f5 eb                                      bl #0x30e0c4
005a7994  04 00 a0 e1                                      mov r0, r4
005a7998  c9 99 f5 eb                                      bl #0x30e0c4
005a799c  04 00 a0 e1                                      mov r0, r4
005a79a0  c7 99 f5 eb                                      bl #0x30e0c4
005a79a4  04 00 a0 e1                                      mov r0, r4
005a79a8  c5 99 f5 eb                                      bl #0x30e0c4
005a79ac  04 00 a0 e1                                      mov r0, r4
005a79b0  c3 99 f5 eb                                      bl #0x30e0c4
005a79b4  04 00 a0 e1                                      mov r0, r4
005a79b8  c1 99 f5 eb                                      bl #0x30e0c4
005a79bc  04 00 a0 e1                                      mov r0, r4
005a79c0  bf 99 f5 eb                                      bl #0x30e0c4
005a79c4  04 00 a0 e1                                      mov r0, r4
005a79c8  bd 99 f5 eb                                      bl #0x30e0c4
005a79cc  04 00 a0 e1                                      mov r0, r4
005a79d0  bb 99 f5 eb                                      bl #0x30e0c4
005a79d4  04 00 a0 e1                                      mov r0, r4
005a79d8  b9 99 f5 eb                                      bl #0x30e0c4
005a79dc  04 00 a0 e1                                      mov r0, r4
005a79e0  b7 99 f5 eb                                      bl #0x30e0c4
005a79e4  04 00 a0 e1                                      mov r0, r4
005a79e8  b5 99 f5 eb                                      bl #0x30e0c4
005a79ec  04 00 a0 e1                                      mov r0, r4
005a79f0  b3 99 f5 eb                                      bl #0x30e0c4
005a79f4  04 00 a0 e1                                      mov r0, r4
005a79f8  b1 99 f5 eb                                      bl #0x30e0c4
005a79fc  04 00 a0 e1                                      mov r0, r4
005a7a00  af 99 f5 eb                                      bl #0x30e0c4
005a7a04  04 00 a0 e1                                      mov r0, r4
005a7a08  ad 99 f5 eb                                      bl #0x30e0c4
005a7a0c  04 00 a0 e1                                      mov r0, r4
005a7a10  ab 99 f5 eb                                      bl #0x30e0c4
005a7a14  04 00 a0 e1                                      mov r0, r4
005a7a18  a9 99 f5 eb                                      bl #0x30e0c4
005a7a1c  04 00 a0 e1                                      mov r0, r4
005a7a20  a7 99 f5 eb                                      bl #0x30e0c4
005a7a24  04 00 a0 e1                                      mov r0, r4
005a7a28  a5 99 f5 eb                                      bl #0x30e0c4
005a7a2c  04 00 a0 e1                                      mov r0, r4
005a7a30  a3 99 f5 eb                                      bl #0x30e0c4
005a7a34  04 00 a0 e1                                      mov r0, r4
005a7a38  a1 99 f5 eb                                      bl #0x30e0c4
005a7a3c  04 00 a0 e1                                      mov r0, r4
005a7a40  9f 99 f5 eb                                      bl #0x30e0c4
005a7a44  04 00 a0 e1                                      mov r0, r4
005a7a48  9d 99 f5 eb                                      bl #0x30e0c4
005a7a4c  04 00 a0 e1                                      mov r0, r4
005a7a50  9b 99 f5 eb                                      bl #0x30e0c4
005a7a54  04 00 a0 e1                                      mov r0, r4
005a7a58  99 99 f5 eb                                      bl #0x30e0c4
005a7a5c  04 00 a0 e1                                      mov r0, r4
005a7a60  97 99 f5 eb                                      bl #0x30e0c4
005a7a64  04 00 a0 e1                                      mov r0, r4
005a7a68  95 99 f5 eb                                      bl #0x30e0c4
005a7a6c  04 00 a0 e1                                      mov r0, r4
005a7a70  93 99 f5 eb                                      bl #0x30e0c4
005a7a74  04 00 a0 e1                                      mov r0, r4
005a7a78  91 99 f5 eb                                      bl #0x30e0c4
005a7a7c  04 00 a0 e1                                      mov r0, r4
005a7a80  8f 99 f5 eb                                      bl #0x30e0c4
005a7a84  04 00 a0 e1                                      mov r0, r4
005a7a88  8d 99 f5 eb                                      bl #0x30e0c4
005a7a8c  04 00 a0 e1                                      mov r0, r4
005a7a90  8b 99 f5 eb                                      bl #0x30e0c4
005a7a94  04 00 a0 e1                                      mov r0, r4
005a7a98  89 99 f5 eb                                      bl #0x30e0c4
005a7a9c  04 00 a0 e1                                      mov r0, r4
005a7aa0  87 99 f5 eb                                      bl #0x30e0c4
005a7aa4  04 00 a0 e1                                      mov r0, r4
005a7aa8  85 99 f5 eb                                      bl #0x30e0c4
005a7aac  04 00 a0 e1                                      mov r0, r4
005a7ab0  83 99 f5 eb                                      bl #0x30e0c4
005a7ab4  04 00 a0 e1                                      mov r0, r4
005a7ab8  81 99 f5 eb                                      bl #0x30e0c4
005a7abc  04 00 a0 e1                                      mov r0, r4
005a7ac0  7f 99 f5 eb                                      bl #0x30e0c4
005a7ac4  04 00 a0 e1                                      mov r0, r4
005a7ac8  7d 99 f5 eb                                      bl #0x30e0c4
005a7acc  04 00 a0 e1                                      mov r0, r4
005a7ad0  7b 99 f5 eb                                      bl #0x30e0c4
005a7ad4  04 00 a0 e1                                      mov r0, r4
005a7ad8  79 99 f5 eb                                      bl #0x30e0c4
005a7adc  04 00 a0 e1                                      mov r0, r4
005a7ae0  77 99 f5 eb                                      bl #0x30e0c4
005a7ae4  04 00 a0 e1                                      mov r0, r4
005a7ae8  75 99 f5 eb                                      bl #0x30e0c4
005a7aec  04 00 a0 e1                                      mov r0, r4
005a7af0  73 99 f5 eb                                      bl #0x30e0c4
005a7af4  04 00 a0 e1                                      mov r0, r4
005a7af8  71 99 f5 eb                                      bl #0x30e0c4
005a7afc  04 00 a0 e1                                      mov r0, r4
005a7b00  6f 99 f5 eb                                      bl #0x30e0c4
005a7b04  04 00 a0 e1                                      mov r0, r4
005a7b08  6d 99 f5 eb                                      bl #0x30e0c4
005a7b0c  04 00 a0 e1                                      mov r0, r4
005a7b10  6b 99 f5 eb                                      bl #0x30e0c4
005a7b14  04 00 a0 e1                                      mov r0, r4
005a7b18  69 99 f5 eb                                      bl #0x30e0c4
005a7b1c  04 00 a0 e1                                      mov r0, r4
005a7b20  67 99 f5 eb                                      bl #0x30e0c4
005a7b24  04 00 a0 e1                                      mov r0, r4
005a7b28  65 99 f5 eb                                      bl #0x30e0c4
005a7b2c  04 00 a0 e1                                      mov r0, r4
005a7b30  63 99 f5 eb                                      bl #0x30e0c4
005a7b34  04 00 a0 e1                                      mov r0, r4
005a7b38  61 99 f5 eb                                      bl #0x30e0c4
005a7b3c  04 00 a0 e1                                      mov r0, r4
005a7b40  5f 99 f5 eb                                      bl #0x30e0c4
005a7b44  04 00 a0 e1                                      mov r0, r4
005a7b48  5d 99 f5 eb                                      bl #0x30e0c4
005a7b4c  04 00 a0 e1                                      mov r0, r4
005a7b50  5b 99 f5 eb                                      bl #0x30e0c4
005a7b54  04 00 a0 e1                                      mov r0, r4
005a7b58  59 99 f5 eb                                      bl #0x30e0c4
005a7b5c  04 00 a0 e1                                      mov r0, r4
005a7b60  57 99 f5 eb                                      bl #0x30e0c4
005a7b64  04 00 a0 e1                                      mov r0, r4
005a7b68  55 99 f5 eb                                      bl #0x30e0c4
005a7b6c  04 00 a0 e1                                      mov r0, r4
005a7b70  53 99 f5 eb                                      bl #0x30e0c4
005a7b74  04 00 a0 e1                                      mov r0, r4
005a7b78  51 99 f5 eb                                      bl #0x30e0c4
005a7b7c  04 00 a0 e1                                      mov r0, r4
005a7b80  4f 99 f5 eb                                      bl #0x30e0c4
005a7b84  04 00 a0 e1                                      mov r0, r4
005a7b88  4d 99 f5 eb                                      bl #0x30e0c4
005a7b8c  04 00 a0 e1                                      mov r0, r4
005a7b90  4b 99 f5 eb                                      bl #0x30e0c4
005a7b94  04 00 a0 e1                                      mov r0, r4
005a7b98  49 99 f5 eb                                      bl #0x30e0c4
005a7b9c  04 00 a0 e1                                      mov r0, r4
005a7ba0  47 99 f5 eb                                      bl #0x30e0c4
005a7ba4  04 00 a0 e1                                      mov r0, r4
005a7ba8  45 99 f5 eb                                      bl #0x30e0c4
005a7bac  04 00 a0 e1                                      mov r0, r4
005a7bb0  43 99 f5 eb                                      bl #0x30e0c4
005a7bb4  04 00 a0 e1                                      mov r0, r4
005a7bb8  41 99 f5 eb                                      bl #0x30e0c4
005a7bbc  04 00 a0 e1                                      mov r0, r4
005a7bc0  3f 99 f5 eb                                      bl #0x30e0c4
005a7bc4  04 00 a0 e1                                      mov r0, r4
005a7bc8  3d 99 f5 eb                                      bl #0x30e0c4
005a7bcc  04 00 a0 e1                                      mov r0, r4
005a7bd0  3b 99 f5 eb                                      bl #0x30e0c4
005a7bd4  04 00 a0 e1                                      mov r0, r4
005a7bd8  39 99 f5 eb                                      bl #0x30e0c4
005a7bdc  04 00 a0 e1                                      mov r0, r4
005a7be0  37 99 f5 eb                                      bl #0x30e0c4
005a7be4  04 00 a0 e1                                      mov r0, r4
005a7be8  35 99 f5 eb                                      bl #0x30e0c4
005a7bec  04 00 a0 e1                                      mov r0, r4
005a7bf0  33 99 f5 eb                                      bl #0x30e0c4
005a7bf4  04 00 a0 e1                                      mov r0, r4
005a7bf8  31 99 f5 eb                                      bl #0x30e0c4
005a7bfc  04 00 a0 e1                                      mov r0, r4
005a7c00  2f 99 f5 eb                                      bl #0x30e0c4
005a7c04  04 00 a0 e1                                      mov r0, r4
005a7c08  2d 99 f5 eb                                      bl #0x30e0c4
005a7c0c  04 00 a0 e1                                      mov r0, r4
005a7c10  2b 99 f5 eb                                      bl #0x30e0c4
005a7c14  04 00 a0 e1                                      mov r0, r4
005a7c18  29 99 f5 eb                                      bl #0x30e0c4
005a7c1c  04 00 a0 e1                                      mov r0, r4
005a7c20  27 99 f5 eb                                      bl #0x30e0c4
005a7c24  04 00 a0 e1                                      mov r0, r4
005a7c28  25 99 f5 eb                                      bl #0x30e0c4
005a7c2c  04 00 a0 e1                                      mov r0, r4
005a7c30  23 99 f5 eb                                      bl #0x30e0c4
005a7c34  04 00 a0 e1                                      mov r0, r4
005a7c38  21 99 f5 eb                                      bl #0x30e0c4
005a7c3c  04 00 a0 e1                                      mov r0, r4
005a7c40  1f 99 f5 eb                                      bl #0x30e0c4
005a7c44  04 00 a0 e1                                      mov r0, r4
005a7c48  1d 99 f5 eb                                      bl #0x30e0c4
005a7c4c  04 00 a0 e1                                      mov r0, r4
005a7c50  1b 99 f5 eb                                      bl #0x30e0c4
005a7c54  04 00 a0 e1                                      mov r0, r4
005a7c58  19 99 f5 eb                                      bl #0x30e0c4
005a7c5c  04 00 a0 e1                                      mov r0, r4
005a7c60  17 99 f5 eb                                      bl #0x30e0c4
005a7c64  04 00 a0 e1                                      mov r0, r4
005a7c68  15 99 f5 eb                                      bl #0x30e0c4
005a7c6c  04 00 a0 e1                                      mov r0, r4
005a7c70  13 99 f5 eb                                      bl #0x30e0c4
005a7c74  04 00 a0 e1                                      mov r0, r4
005a7c78  11 99 f5 eb                                      bl #0x30e0c4
005a7c7c  04 00 a0 e1                                      mov r0, r4
005a7c80  0f 99 f5 eb                                      bl #0x30e0c4
005a7c84  04 00 a0 e1                                      mov r0, r4
005a7c88  0d 99 f5 eb                                      bl #0x30e0c4
005a7c8c  04 00 a0 e1                                      mov r0, r4
005a7c90  0b 99 f5 eb                                      bl #0x30e0c4
005a7c94  04 00 a0 e1                                      mov r0, r4
005a7c98  09 99 f5 eb                                      bl #0x30e0c4
005a7c9c  04 00 a0 e1                                      mov r0, r4
005a7ca0  07 99 f5 eb                                      bl #0x30e0c4
005a7ca4  04 00 a0 e1                                      mov r0, r4
005a7ca8  05 99 f5 eb                                      bl #0x30e0c4
005a7cac  00 30 96 e5                                      ldr r3, [r6]
005a7cb0  06 00 a0 e1                                      mov r0, r6
005a7cb4  0f e0 a0 e1                                      mov lr, pc
005a7cb8  fc f1 93 e5                                      ldr pc, [r3, #0x1fc]
005a7cbc  e8 90 96 e5                                      ldr sb, [r6, #0xe8]
005a7cc0  00 a0 95 e5                                      ldr sl, [r5]
005a7cc4  00 00 59 e3                                      cmp sb, #0
005a7cc8  3c 03 00 0a                                      beq #0x5a89c0
005a7ccc  00 b0 99 e5                                      ldr fp, [sb]
005a7cd0  04 b0 8b e2                                      add fp, fp, #4
005a7cd4  2c e1 96 e5                                      ldr lr, [r6, #0x12c]
005a7cd8  28 a1 96 e5                                      ldr sl, [r6, #0x128]
005a7cdc  20 31 96 e5                                      ldr r3, [r6, #0x120]
005a7ce0  54 e0 8d e5                                      str lr, [sp, #0x54]
005a7ce4  00 10 9a e5                                      ldr r1, [sl]
005a7ce8  34 21 d6 e5                                      ldrb r2, [r6, #0x134]
005a7cec  0a 00 a0 e1                                      mov r0, sl
005a7cf0  0c c0 91 e5                                      ldr ip, [r1, #0xc]
005a7cf4  5c c0 8d e5                                      str ip, [sp, #0x5c]
005a7cf8  24 c1 96 e5                                      ldr ip, [r6, #0x124]
005a7cfc  40 20 8d e5                                      str r2, [sp, #0x40]
005a7d00  3c 30 8d e5                                      str r3, [sp, #0x3c]
005a7d04  44 c0 8d e5                                      str ip, [sp, #0x44]
005a7d08  0f e0 a0 e1                                      mov lr, pc
005a7d0c  14 f0 91 e5                                      ldr pc, [r1, #0x14]
005a7d10  00 10 90 e5                                      ldr r1, [r0]
005a7d14  10 e0 95 e5                                      ldr lr, [r5, #0x10]
005a7d18  07 00 a0 e1                                      mov r0, r7
005a7d1c  04 10 81 e2                                      add r1, r1, #4
005a7d20  50 e0 8d e5                                      str lr, [sp, #0x50]
005a7d24  64 10 8d e5                                      str r1, [sp, #0x64]
005a7d28  14 10 95 e5                                      ldr r1, [r5, #0x14]
005a7d2c  58 10 8d e5                                      str r1, [sp, #0x58]
005a7d30  72 e1 ff eb                                      bl #0x5a0300
005a7d34  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005a7d38  40 20 9d e5                                      ldr r2, [sp, #0x40]
005a7d3c  44 c0 9d e5                                      ldr ip, [sp, #0x44]
005a7d40  18 10 83 e2                                      add r1, r3, #0x18
005a7d44  14 30 83 e2                                      add r3, r3, #0x14
005a7d48  20 91 96 e5                                      ldr sb, [r6, #0x120]
005a7d4c  00 20 8d e5                                      str r2, [sp]
005a7d50  08 30 8d e5                                      str r3, [sp, #8]
005a7d54  64 20 9d e5                                      ldr r2, [sp, #0x64]
005a7d58  50 30 9d e5                                      ldr r3, [sp, #0x50]
005a7d5c  10 c0 8d e5                                      str ip, [sp, #0x10]
005a7d60  58 c0 9d e5                                      ldr ip, [sp, #0x58]
005a7d64  00 e0 a0 e3                                      mov lr, #0
005a7d68  24 e0 8d e5                                      str lr, [sp, #0x24]
005a7d6c  14 20 8d e5                                      str r2, [sp, #0x14]
005a7d70  1c 30 8d e5                                      str r3, [sp, #0x1c]
005a7d74  20 c0 8d e5                                      str ip, [sp, #0x20]
005a7d78  04 b0 8d e5                                      str fp, [sp, #4]
005a7d7c  0c 10 8d e5                                      str r1, [sp, #0xc]
005a7d80  28 00 8d e5                                      str r0, [sp, #0x28]
005a7d84  18 60 8d e5                                      str r6, [sp, #0x18]
005a7d88  48 10 99 e5                                      ldr r1, [sb, #0x48]
005a7d8c  3c 00 99 e5                                      ldr r0, [sb, #0x3c]
005a7d90  ad 9b f5 eb                                      bl #0x30ec4c
005a7d94  2c 00 8d e5                                      str r0, [sp, #0x2c]
005a7d98  4c 10 99 e5                                      ldr r1, [sb, #0x4c]
005a7d9c  44 00 99 e5                                      ldr r0, [sb, #0x44]
005a7da0  a9 9b f5 eb                                      bl #0x30ec4c
005a7da4  98 10 80 e0                                      umull r1, r0, r8, r0
005a7da8  00 20 e0 e3                                      mvn r2, #0
005a7dac  a0 00 a0 e1                                      lsr r0, r0, #1
005a7db0  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
005a7db4  54 30 9d e5                                      ldr r3, [sp, #0x54]
005a7db8  30 00 8d e5                                      str r0, [sp, #0x30]
005a7dbc  34 20 8d e5                                      str r2, [sp, #0x34]
005a7dc0  0a 00 a0 e1                                      mov r0, sl
005a7dc4  07 20 a0 e1                                      mov r2, r7
005a7dc8  05 10 a0 e1                                      mov r1, r5
005a7dcc  3c ff 2f e1                                      blx ip
005a7dd0  20 a1 96 e5                                      ldr sl, [r6, #0x120]
005a7dd4  10 20 95 e5                                      ldr r2, [r5, #0x10]
005a7dd8  14 b0 95 e5                                      ldr fp, [r5, #0x14]
005a7ddc  3c 30 9a e5                                      ldr r3, [sl, #0x3c]
005a7de0  48 90 9a e5                                      ldr sb, [sl, #0x48]
005a7de4  0b b0 62 e0                                      rsb fp, r2, fp
005a7de8  03 00 a0 e1                                      mov r0, r3
005a7dec  09 10 a0 e1                                      mov r1, sb
005a7df0  3c 30 8d e5                                      str r3, [sp, #0x3c]
005a7df4  94 9b f5 eb                                      bl #0x30ec4c
005a7df8  7b b0 ff e6                                      uxth fp, fp
005a7dfc  70 00 fb e6                                      uxtah r0, fp, r0
005a7e00  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
005a7e04  99 00 09 e0                                      mul sb, sb, r0
005a7e08  14 20 9a e5                                      ldr r2, [sl, #0x14]
005a7e0c  03 00 59 e1                                      cmp sb, r3
005a7e10  09 30 a0 21                                      movhs r3, sb
005a7e14  3c 30 8a e5                                      str r3, [sl, #0x3c]
005a7e18  08 30 82 e5                                      str r3, [r2, #8]
005a7e1c  20 a1 96 e5                                      ldr sl, [r6, #0x120]
005a7e20  4c 10 9a e5                                      ldr r1, [sl, #0x4c]
005a7e24  44 00 9a e5                                      ldr r0, [sl, #0x44]
005a7e28  87 9b f5 eb                                      bl #0x30ec4c
005a7e2c  98 e0 89 e0                                      umull lr, sb, r8, r0
005a7e30  07 00 a0 e1                                      mov r0, r7
005a7e34  31 e1 ff eb                                      bl #0x5a0300
005a7e38  4c 30 9a e5                                      ldr r3, [sl, #0x4c]
005a7e3c  a9 90 a0 e1                                      lsr sb, sb, #1
005a7e40  09 00 80 e0                                      add r0, r0, sb
005a7e44  83 30 83 e0                                      add r3, r3, r3, lsl #1
005a7e48  90 03 01 e0                                      mul r1, r0, r3
005a7e4c  44 20 9a e5                                      ldr r2, [sl, #0x44]
005a7e50  3c 30 9a e5                                      ldr r3, [sl, #0x3c]
005a7e54  00 00 a0 e3                                      mov r0, #0
005a7e58  02 00 51 e1                                      cmp r1, r2
005a7e5c  01 20 a0 21                                      movhs r2, r1
005a7e60  20 20 8a e5                                      str r2, [sl, #0x20]
005a7e64  28 30 8a e5                                      str r3, [sl, #0x28]
005a7e68  44 20 8a e5                                      str r2, [sl, #0x44]
005a7e6c  24 00 8a e5                                      str r0, [sl, #0x24]
005a7e70  38 32 96 e5                                      ldr r3, [r6, #0x238]
005a7e74  00 00 53 e1                                      cmp r3, r0
005a7e78  25 00 00 0a                                      beq #0x5a7f14
005a7e7c  00 30 95 e5                                      ldr r3, [r5]
005a7e80  00 00 53 e3                                      cmp r3, #0
005a7e84  00 20 93 15                                      ldrne r2, [r3]
005a7e88  01 20 82 12                                      addne r2, r2, #1
005a7e8c  00 20 83 15                                      strne r2, [r3]
005a7e90  40 a2 96 e5                                      ldr sl, [r6, #0x240]
005a7e94  40 32 86 e5                                      str r3, [r6, #0x240]
005a7e98  00 00 5a e3                                      cmp sl, #0
005a7e9c  08 00 00 0a                                      beq #0x5a7ec4
005a7ea0  00 30 9a e5                                      ldr r3, [sl]
005a7ea4  01 30 43 e2                                      sub r3, r3, #1
005a7ea8  00 00 53 e3                                      cmp r3, #0
005a7eac  00 30 8a e5                                      str r3, [sl]
005a7eb0  03 00 00 1a                                      bne #0x5a7ec4
005a7eb4  0a 00 a0 e1                                      mov r0, sl
005a7eb8  d7 e2 ff eb                                      bl #0x5a0a1c
005a7ebc  0a 00 a0 e1                                      mov r0, sl
005a7ec0  fa 98 f5 eb                                      bl #0x30e2b0
005a7ec4  44 72 86 e5                                      str r7, [r6, #0x244]
005a7ec8  84 10 9d e5                                      ldr r1, [sp, #0x84]
005a7ecc  00 30 91 e5                                      ldr r3, [r1]
005a7ed0  00 00 53 e3                                      cmp r3, #0
005a7ed4  04 20 93 15                                      ldrne r2, [r3, #4]
005a7ed8  01 20 82 12                                      addne r2, r2, #1
005a7edc  04 20 83 15                                      strne r2, [r3, #4]
005a7ee0  48 02 96 e5                                      ldr r0, [r6, #0x248]
005a7ee4  48 32 86 e5                                      str r3, [r6, #0x248]
005a7ee8  00 00 50 e3                                      cmp r0, #0
005a7eec  00 00 00 0a                                      beq #0x5a7ef4
005a7ef0  a3 d5 f5 eb                                      bl #0x31d584
005a7ef4  38 32 96 e5                                      ldr r3, [r6, #0x238]
005a7ef8  00 10 a0 e3                                      mov r1, #0
005a7efc  01 20 a0 e1                                      mov r2, r1
005a7f00  03 00 a0 e1                                      mov r0, r3
005a7f04  00 c0 93 e5                                      ldr ip, [r3]
005a7f08  48 30 9d e5                                      ldr r3, [sp, #0x48]
005a7f0c  0f e0 a0 e1                                      mov lr, pc
005a7f10  08 f0 9c e5                                      ldr pc, [ip, #8]
005a7f14  f4 20 9d e5                                      ldr r2, [sp, #0xf4]
005a7f18  1c 50 85 e2                                      add r5, r5, #0x1c
005a7f1c  02 00 55 e1                                      cmp r5, r2
005a7f20  12 fe ff 1a                                      bne #0x5a7770
005a7f24  78 00 9d e5                                      ldr r0, [sp, #0x78]
005a7f28  49 ef ff eb                                      bl #0x5a3c54
005a7f2c  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
005a7f30  00 00 53 e3                                      cmp r3, #0
005a7f34  02 00 00 0a                                      beq #0x5a7f44
005a7f38  70 00 9d e5                                      ldr r0, [sp, #0x70]
005a7f3c  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
005a7f40  ab ef ff eb                                      bl #0x5a3df4
005a7f44  00 00 a0 e3                                      mov r0, #0
005a7f48  4b df 8d e2                                      add sp, sp, #0x12c
005a7f4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005a7f50  00 00 5c e3                                      cmp ip, #0
005a7f54  05 c0 a0 01                                      moveq ip, r5
005a7f58  14 00 00 0a                                      beq #0x5a7fb0
005a7f5c  05 20 a0 e1                                      mov r2, r5
005a7f60  04 00 00 ea                                      b #0x5a7f78
; mapping-symbol data/literal pool
005a7f64  7c da 3e 00 08 11 00 00 b8 39 00 00 d0 85 33 00  .byte 0x7c, 0xda, 0x3e, 0x00, 0x08, 0x11, 0x00, 0x00, 0xb8, 0x39, 0x00, 0x00, 0xd0, 0x85, 0x33, 0x00
; decoder-mode: arm
005a7f74  03 c0 a0 e1                                      mov ip, r3
005a7f78  b0 31 dc e1                                      ldrh r3, [ip, #0x10]
005a7f7c  04 00 53 e1                                      cmp r3, r4
005a7f80  0c 30 9c 35                                      ldrlo r3, [ip, #0xc]
005a7f84  08 30 9c 25                                      ldrhs r3, [ip, #8]
005a7f88  02 c0 a0 31                                      movlo ip, r2
005a7f8c  0c 20 a0 e1                                      mov r2, ip
005a7f90  00 00 53 e3                                      cmp r3, #0
005a7f94  f6 ff ff 1a                                      bne #0x5a7f74
005a7f98  05 00 5c e1                                      cmp ip, r5
005a7f9c  03 00 00 0a                                      beq #0x5a7fb0
005a7fa0  b0 21 dc e1                                      ldrh r2, [ip, #0x10]
005a7fa4  0c 30 a0 e1                                      mov r3, ip
005a7fa8  04 00 52 e1                                      cmp r2, r4
005a7fac  0a 00 00 9a                                      bls #0x5a7fdc
005a7fb0  10 c1 8d e5                                      str ip, [sp, #0x110]
005a7fb4  00 e0 a0 e3                                      mov lr, #0
005a7fb8  01 cc 8d e2                                      add ip, sp, #0x100
005a7fbc  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
005a7fc0  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
005a7fc4  68 20 9d e5                                      ldr r2, [sp, #0x68]
005a7fc8  05 10 a0 e1                                      mov r1, r5
005a7fcc  bc 40 cc e1                                      strh r4, [ip, #0xc]
005a7fd0  be e0 cc e1                                      strh lr, [ip, #0xe]
005a7fd4  24 fb ff eb                                      bl #0x5a6c6c
005a7fd8  08 31 9d e5                                      ldr r3, [sp, #0x108]
005a7fdc  b2 91 c3 e1                                      strh sb, [r3, #0x12]
005a7fe0  60 c0 9d e5                                      ldr ip, [sp, #0x60]
005a7fe4  50 e0 9d e5                                      ldr lr, [sp, #0x50]
005a7fe8  04 00 a0 e1                                      mov r0, r4
005a7fec  54 30 9d e5                                      ldr r3, [sp, #0x54]
005a7ff0  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005a7ff4  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
005a7ff8  00 50 8d e8                                      stm sp, {ip, lr}
005a7ffc  c5 ea ff eb                                      bl #0x5a2b18
005a8000  b2 90 47 e1                                      strh sb, [r7, #-2]
005a8004  48 00 9d e5                                      ldr r0, [sp, #0x48]
005a8008  01 30 89 e2                                      add r3, sb, #1
005a800c  73 90 ff e6                                      uxth sb, r3
005a8010  01 00 80 e2                                      add r0, r0, #1
005a8014  48 00 8d e5                                      str r0, [sp, #0x48]
005a8018  07 30 a0 e1                                      mov r3, r7
005a801c  21 fd ff ea                                      b #0x5a74a8
005a8020  05 30 a0 e1                                      mov r3, r5
005a8024  1a fd ff ea                                      b #0x5a7494
005a8028  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005a802c  20 00 13 e3                                      tst r3, #0x20
005a8030  36 02 00 1a                                      bne #0x5a8910
005a8034  00 30 a0 e3                                      mov r3, #0
005a8038  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a803c  50 30 9d e5                                      ldr r3, [sp, #0x50]
005a8040  00 00 53 e3                                      cmp r3, #0
005a8044  3e fd ff 0a                                      beq #0x5a7544
005a8048  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
005a804c  00 30 9c e5                                      ldr r3, [ip]
005a8050  14 40 93 e5                                      ldr r4, [r3, #0x14]
005a8054  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
005a8058  1f 20 03 e2                                      and r2, r3, #0x1f
005a805c  01 00 52 e3                                      cmp r2, #1
005a8060  24 02 00 9a                                      bls #0x5a88f8
005a8064  01 20 42 e2                                      sub r2, r2, #1
005a8068  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a806c  03 30 82 e1                                      orr r3, r2, r3
005a8070  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a8074  32 fd ff ea                                      b #0x5a7544
005a8078  12 30 d9 e5                                      ldrb r3, [sb, #0x12]
005a807c  20 00 13 e3                                      tst r3, #0x20
005a8080  2c 02 00 1a                                      bne #0x5a8938
005a8084  00 30 a0 e3                                      mov r3, #0
005a8088  13 30 c9 e5                                      strb r3, [sb, #0x13]
005a808c  1f fd ff ea                                      b #0x5a7510
005a8090  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005a8094  20 00 13 e3                                      tst r3, #0x20
005a8098  21 02 00 1a                                      bne #0x5a8924
005a809c  00 30 a0 e3                                      mov r3, #0
005a80a0  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a80a4  11 fd ff ea                                      b #0x5a74f0
005a80a8  05 00 a0 e1                                      mov r0, r5
005a80ac  ac 10 9d e5                                      ldr r1, [sp, #0xac]
005a80b0  4c ee ff eb                                      bl #0x5a39e8
005a80b4  00 30 a0 e3                                      mov r3, #0
005a80b8  b4 50 8d e5                                      str r5, [sp, #0xb4]
005a80bc  b8 30 8d e5                                      str r3, [sp, #0xb8]
005a80c0  b0 50 8d e5                                      str r5, [sp, #0xb0]
005a80c4  ac 30 8d e5                                      str r3, [sp, #0xac]
005a80c8  74 fd ff ea                                      b #0x5a76a0
005a80cc  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005a80d0  18 10 9a e5                                      ldr r1, [sl, #0x18]
005a80d4  58 c0 9d e5                                      ldr ip, [sp, #0x58]
005a80d8  00 20 93 e5                                      ldr r2, [r3]
005a80dc  14 30 9a e5                                      ldr r3, [sl, #0x14]
005a80e0  b2 22 d2 e1                                      ldrh r2, [r2, #0x22]
005a80e4  01 30 63 e0                                      rsb r3, r3, r1
005a80e8  03 10 a0 e3                                      mov r1, #3
005a80ec  91 02 02 e0                                      mul r2, r1, r2
005a80f0  43 31 a0 e1                                      asr r3, r3, #2
005a80f4  93 02 06 e0                                      mul r6, r3, r2
005a80f8  00 30 9c e5                                      ldr r3, [ip]
005a80fc  05 10 a0 e1                                      mov r1, r5
005a8100  06 00 a0 e1                                      mov r0, r6
005a8104  78 40 93 e5                                      ldr r4, [r3, #0x78]
005a8108  26 30 fe eb                                      bl #0x5341a8
005a810c  01 30 a0 e3                                      mov r3, #1
005a8110  09 00 8d e9                                      stmib sp, {r0, r3}
005a8114  47 0f 8d e2                                      add r0, sp, #0x11c
005a8118  03 30 83 e2                                      add r3, r3, #3
005a811c  00 60 8d e5                                      str r6, [sp]
005a8120  05 20 a0 e1                                      mov r2, r5
005a8124  58 10 9d e5                                      ldr r1, [sp, #0x58]
005a8128  34 ff 2f e1                                      blx r4
005a812c  1c 01 9d e5                                      ldr r0, [sp, #0x11c]
005a8130  00 00 50 e3                                      cmp r0, #0
005a8134  04 30 90 15                                      ldrne r3, [r0, #4]
005a8138  00 90 a0 e1                                      mov sb, r0
005a813c  01 30 83 12                                      addne r3, r3, #1
005a8140  04 30 80 15                                      strne r3, [r0, #4]
005a8144  1c 01 9d 15                                      ldrne r0, [sp, #0x11c]
005a8148  00 00 50 e3                                      cmp r0, #0
005a814c  00 00 00 0a                                      beq #0x5a8154
005a8150  0b d5 f5 eb                                      bl #0x31d584
005a8154  4c e0 9d e5                                      ldr lr, [sp, #0x4c]
005a8158  46 0f 8d e2                                      add r0, sp, #0x118
005a815c  00 10 9e e5                                      ldr r1, [lr]
005a8160  6a e4 ff eb                                      bl #0x5a1310
005a8164  18 31 9d e5                                      ldr r3, [sp, #0x118]
005a8168  00 00 53 e3                                      cmp r3, #0
005a816c  00 20 93 15                                      ldrne r2, [r3]
005a8170  01 20 82 12                                      addne r2, r2, #1
005a8174  00 20 83 15                                      strne r2, [r3]
005a8178  c0 40 9d e5                                      ldr r4, [sp, #0xc0]
005a817c  c0 30 8d e5                                      str r3, [sp, #0xc0]
005a8180  00 00 54 e3                                      cmp r4, #0
005a8184  08 00 00 0a                                      beq #0x5a81ac
005a8188  00 30 94 e5                                      ldr r3, [r4]
005a818c  01 30 43 e2                                      sub r3, r3, #1
005a8190  00 00 53 e3                                      cmp r3, #0
005a8194  00 30 84 e5                                      str r3, [r4]
005a8198  03 00 00 1a                                      bne #0x5a81ac
005a819c  04 00 a0 e1                                      mov r0, r4
005a81a0  1d e2 ff eb                                      bl #0x5a0a1c
005a81a4  04 00 a0 e1                                      mov r0, r4
005a81a8  40 98 f5 eb                                      bl #0x30e2b0
005a81ac  18 41 9d e5                                      ldr r4, [sp, #0x118]
005a81b0  00 00 54 e3                                      cmp r4, #0
005a81b4  08 00 00 0a                                      beq #0x5a81dc
005a81b8  00 30 94 e5                                      ldr r3, [r4]
005a81bc  01 30 43 e2                                      sub r3, r3, #1
005a81c0  00 00 53 e3                                      cmp r3, #0
005a81c4  00 30 84 e5                                      str r3, [r4]
005a81c8  03 00 00 1a                                      bne #0x5a81dc
005a81cc  04 00 a0 e1                                      mov r0, r4
005a81d0  11 e2 ff eb                                      bl #0x5a0a1c
005a81d4  04 00 a0 e1                                      mov r0, r4
005a81d8  34 98 f5 eb                                      bl #0x30e2b0
005a81dc  c0 50 9d e5                                      ldr r5, [sp, #0xc0]
005a81e0  10 20 95 e5                                      ldr r2, [r5, #0x10]
005a81e4  14 30 85 e2                                      add r3, r5, #0x14
005a81e8  03 00 52 e1                                      cmp r2, r3
005a81ec  50 fc ff 0a                                      beq #0x5a7334
005a81f0  24 40 85 e2                                      add r4, r5, #0x24
005a81f4  00 00 59 e3                                      cmp sb, #0
005a81f8  04 30 99 15                                      ldrne r3, [sb, #4]
005a81fc  01 30 83 12                                      addne r3, r3, #1
005a8200  04 30 89 15                                      strne r3, [sb, #4]
005a8204  10 00 14 e5                                      ldr r0, [r4, #-0x10]
005a8208  10 90 04 e5                                      str sb, [r4, #-0x10]
005a820c  00 00 50 e3                                      cmp r0, #0
005a8210  00 00 00 0a                                      beq #0x5a8218
005a8214  da d4 f5 eb                                      bl #0x31d584
005a8218  00 10 a0 e3                                      mov r1, #0
005a821c  05 00 a0 e1                                      mov r0, r5
005a8220  75 e2 ff eb                                      bl #0x5a0bfc
005a8224  24 31 9d e5                                      ldr r3, [sp, #0x124]
005a8228  04 20 a0 e1                                      mov r2, r4
005a822c  00 00 53 e3                                      cmp r3, #0
005a8230  0c 10 14 15                                      ldrne r1, [r4, #-0xc]
005a8234  01 30 63 10                                      rsbne r3, r3, r1
005a8238  0c 30 04 15                                      strne r3, [r4, #-0xc]
005a823c  c0 50 9d e5                                      ldr r5, [sp, #0xc0]
005a8240  10 40 84 e2                                      add r4, r4, #0x10
005a8244  10 30 95 e5                                      ldr r3, [r5, #0x10]
005a8248  03 00 52 e1                                      cmp r2, r3
005a824c  e8 ff ff 1a                                      bne #0x5a81f4
005a8250  37 fc ff ea                                      b #0x5a7334
005a8254  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005a8258  04 10 a0 e1                                      mov r1, r4
005a825c  00 30 92 e5                                      ldr r3, [r2]
005a8260  14 00 93 e5                                      ldr r0, [r3, #0x14]
005a8264  1c e6 ff eb                                      bl #0x5a1adc
005a8268  24 31 9d e5                                      ldr r3, [sp, #0x124]
005a826c  03 30 80 e0                                      add r3, r0, r3
005a8270  54 30 8d e5                                      str r3, [sp, #0x54]
005a8274  55 fc ff ea                                      b #0x5a73d0
005a8278  04 30 9a e5                                      ldr r3, [sl, #4]
005a827c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
005a8280  01 00 5a e1                                      cmp sl, r1
005a8284  05 00 00 1a                                      bne #0x5a82a0
005a8288  03 a0 a0 e1                                      mov sl, r3
005a828c  04 30 93 e5                                      ldr r3, [r3, #4]
005a8290  0c 20 93 e5                                      ldr r2, [r3, #0xc]
005a8294  0a 00 52 e1                                      cmp r2, sl
005a8298  fa ff ff 0a                                      beq #0x5a8288
005a829c  0c 20 9a e5                                      ldr r2, [sl, #0xc]
005a82a0  02 00 53 e1                                      cmp r3, r2
005a82a4  03 a0 a0 11                                      movne sl, r3
005a82a8  9f fb ff ea                                      b #0x5a712c
005a82ac  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
005a82b0  ff 10 a0 e3                                      mov r1, #0xff
005a82b4  00 20 90 e5                                      ldr r2, [r0]
005a82b8  8c 30 8d e5                                      str r3, [sp, #0x8c]
005a82bc  a0 30 8d e5                                      str r3, [sp, #0xa0]
005a82c0  90 30 8d e5                                      str r3, [sp, #0x90]
005a82c4  94 30 8d e5                                      str r3, [sp, #0x94]
005a82c8  98 30 8d e5                                      str r3, [sp, #0x98]
005a82cc  9c 30 8d e5                                      str r3, [sp, #0x9c]
005a82d0  06 30 a0 e3                                      mov r3, #6
005a82d4  00 00 52 e3                                      cmp r2, #0
005a82d8  b6 3a cd e1                                      strh r3, [sp, #0xa6]
005a82dc  b4 1a cd e1                                      strh r1, [sp, #0xa4]
005a82e0  00 30 92 15                                      ldrne r3, [r2]
005a82e4  01 30 83 12                                      addne r3, r3, #1
005a82e8  00 30 82 15                                      strne r3, [r2]
005a82ec  8c 40 9d e5                                      ldr r4, [sp, #0x8c]
005a82f0  8c 20 8d e5                                      str r2, [sp, #0x8c]
005a82f4  00 00 54 e3                                      cmp r4, #0
005a82f8  08 00 00 0a                                      beq #0x5a8320
005a82fc  00 30 94 e5                                      ldr r3, [r4]
005a8300  01 30 43 e2                                      sub r3, r3, #1
005a8304  00 00 53 e3                                      cmp r3, #0
005a8308  00 30 84 e5                                      str r3, [r4]
005a830c  03 00 00 1a                                      bne #0x5a8320
005a8310  04 00 a0 e1                                      mov r0, r4
005a8314  c0 e1 ff eb                                      bl #0x5a0a1c
005a8318  04 00 a0 e1                                      mov r0, r4
005a831c  e3 97 f5 eb                                      bl #0x30e2b0
005a8320  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005a8324  00 30 9c e5                                      ldr r3, [ip]
005a8328  00 00 53 e3                                      cmp r3, #0
005a832c  04 20 93 15                                      ldrne r2, [r3, #4]
005a8330  01 20 82 12                                      addne r2, r2, #1
005a8334  04 20 83 15                                      strne r2, [r3, #4]
005a8338  90 00 9d e5                                      ldr r0, [sp, #0x90]
005a833c  90 30 8d e5                                      str r3, [sp, #0x90]
005a8340  00 00 50 e3                                      cmp r0, #0
005a8344  00 00 00 0a                                      beq #0x5a834c
005a8348  8d d4 f5 eb                                      bl #0x31d584
005a834c  64 00 9d e5                                      ldr r0, [sp, #0x64]
005a8350  f0 10 8d e2                                      add r1, sp, #0xf0
005a8354  0c 20 90 e5                                      ldr r2, [r0, #0xc]
005a8358  10 30 90 e5                                      ldr r3, [r0, #0x10]
005a835c  04 e0 90 e5                                      ldr lr, [r0, #4]
005a8360  08 c0 90 e5                                      ldr ip, [r0, #8]
005a8364  9c 20 8d e5                                      str r2, [sp, #0x9c]
005a8368  64 20 9d e5                                      ldr r2, [sp, #0x64]
005a836c  78 10 8d e5                                      str r1, [sp, #0x78]
005a8370  a0 30 8d e5                                      str r3, [sp, #0xa0]
005a8374  94 e0 8d e5                                      str lr, [sp, #0x94]
005a8378  98 c0 8d e5                                      str ip, [sp, #0x98]
005a837c  b6 21 d2 e1                                      ldrh r2, [r2, #0x16]
005a8380  64 30 9d e5                                      ldr r3, [sp, #0x64]
005a8384  01 00 a0 e1                                      mov r0, r1
005a8388  b6 2a cd e1                                      strh r2, [sp, #0xa6]
005a838c  b4 31 d3 e1                                      ldrh r3, [r3, #0x14]
005a8390  8c 10 8d e2                                      add r1, sp, #0x8c
005a8394  b4 3a cd e1                                      strh r3, [sp, #0xa4]
005a8398  ef f0 ff eb                                      bl #0x5a475c
005a839c  90 00 9d e5                                      ldr r0, [sp, #0x90]
005a83a0  00 00 50 e3                                      cmp r0, #0
005a83a4  00 00 00 0a                                      beq #0x5a83ac
005a83a8  75 d4 f5 eb                                      bl #0x31d584
005a83ac  8c 40 9d e5                                      ldr r4, [sp, #0x8c]
005a83b0  00 00 54 e3                                      cmp r4, #0
005a83b4  d7 fc ff 0a                                      beq #0x5a7718
005a83b8  00 30 94 e5                                      ldr r3, [r4]
005a83bc  01 30 43 e2                                      sub r3, r3, #1
005a83c0  00 00 53 e3                                      cmp r3, #0
005a83c4  00 30 84 e5                                      str r3, [r4]
005a83c8  d2 fc ff 1a                                      bne #0x5a7718
005a83cc  04 00 a0 e1                                      mov r0, r4
005a83d0  91 e1 ff eb                                      bl #0x5a0a1c
005a83d4  04 00 a0 e1                                      mov r0, r4
005a83d8  b4 97 f5 eb                                      bl #0x30e2b0
005a83dc  cd fc ff ea                                      b #0x5a7718
005a83e0  58 10 9d e5                                      ldr r1, [sp, #0x58]
005a83e4  50 02 91 e5                                      ldr r0, [r1, #0x250]
005a83e8  00 10 a0 e3                                      mov r1, #0
005a83ec  e6 96 f5 eb                                      bl #0x30df8c
005a83f0  00 00 50 e3                                      cmp r0, #0
005a83f4  54 01 00 1a                                      bne #0x5a894c
005a83f8  58 c0 9d e5                                      ldr ip, [sp, #0x58]
005a83fc  60 32 dc e5                                      ldrb r3, [ip, #0x260]
005a8400  00 00 53 e3                                      cmp r3, #0
005a8404  06 00 00 0a                                      beq #0x5a8424
005a8408  58 e0 9d e5                                      ldr lr, [sp, #0x58]
005a840c  5c 32 9e e5                                      ldr r3, [lr, #0x25c]
005a8410  00 00 53 e3                                      cmp r3, #0
005a8414  30 fb ff 0a                                      beq #0x5a70dc
005a8418  60 32 de e5                                      ldrb r3, [lr, #0x260]
005a841c  00 00 53 e3                                      cmp r3, #0
005a8420  2d fb ff 0a                                      beq #0x5a70dc
005a8424  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
005a8428  02 21 e0 e3                                      mvn r2, #0x80000000
005a842c  02 15 e0 e3                                      mvn r1, #0x800000
005a8430  00 30 90 e5                                      ldr r3, [r0]
005a8434  02 25 42 e2                                      sub r2, r2, #0x800000
005a8438  d4 10 8d e5                                      str r1, [sp, #0xd4]
005a843c  c8 20 8d e5                                      str r2, [sp, #0xc8]
005a8440  cc 10 8d e5                                      str r1, [sp, #0xcc]
005a8444  d0 10 8d e5                                      str r1, [sp, #0xd0]
005a8448  c0 20 8d e5                                      str r2, [sp, #0xc0]
005a844c  c4 20 8d e5                                      str r2, [sp, #0xc4]
005a8450  64 20 9d e5                                      ldr r2, [sp, #0x64]
005a8454  b2 32 d3 e1                                      ldrh r3, [r3, #0x22]
005a8458  01 10 a0 e3                                      mov r1, #1
005a845c  00 00 92 e5                                      ldr r0, [r2]
005a8460  68 30 8d e5                                      str r3, [sp, #0x68]
005a8464  9c e5 ff eb                                      bl #0x5a1adc
005a8468  64 30 9d e5                                      ldr r3, [sp, #0x64]
005a846c  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
005a8470  01 10 a0 e3                                      mov r1, #1
005a8474  04 b0 93 e5                                      ldr fp, [r3, #4]
005a8478  00 30 9c e5                                      ldr r3, [ip]
005a847c  0b b0 80 e0                                      add fp, r0, fp
005a8480  14 00 93 e5                                      ldr r0, [r3, #0x14]
005a8484  94 e5 ff eb                                      bl #0x5a1adc
005a8488  4c e0 9d e5                                      ldr lr, [sp, #0x4c]
005a848c  fc 10 8d e2                                      add r1, sp, #0xfc
005a8490  00 20 a0 e3                                      mov r2, #0
005a8494  00 30 9e e5                                      ldr r3, [lr]
005a8498  6c 10 8d e5                                      str r1, [sp, #0x6c]
005a849c  48 20 8d e5                                      str r2, [sp, #0x48]
005a84a0  18 90 93 e5                                      ldr sb, [r3, #0x18]
005a84a4  50 20 8d e5                                      str r2, [sp, #0x50]
005a84a8  09 90 80 e0                                      add sb, r0, sb
005a84ac  64 00 9d e5                                      ldr r0, [sp, #0x64]
005a84b0  92 df ff eb                                      bl #0x5a0300
005a84b4  00 10 a0 e1                                      mov r1, r0
005a84b8  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
005a84bc  8d e8 ff eb                                      bl #0x5a26f8
005a84c0  c9 00 00 ea                                      b #0x5a87ec
005a84c4  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005a84c8  b0 30 db e1                                      ldrh r3, [fp]
005a84cc  02 15 e0 e3                                      mvn r1, #0x800000
005a84d0  93 0c 03 e0                                      mul r3, r3, ip
005a84d4  03 80 99 e7                                      ldr r8, [sb, r3]
005a84d8  03 30 89 e0                                      add r3, sb, r3
005a84dc  08 60 93 e5                                      ldr r6, [r3, #8]
005a84e0  08 00 a0 e1                                      mov r0, r8
005a84e4  04 70 93 e5                                      ldr r7, [r3, #4]
005a84e8  82 97 f5 eb                                      bl #0x30e2f8
005a84ec  02 15 e0 e3                                      mvn r1, #0x800000
005a84f0  00 00 50 e3                                      cmp r0, #0
005a84f4  07 00 a0 e1                                      mov r0, r7
005a84f8  08 50 a0 11                                      movne r5, r8
005a84fc  02 55 e0 03                                      mvneq r5, #0x800000
005a8500  7c 97 f5 eb                                      bl #0x30e2f8
005a8504  02 15 e0 e3                                      mvn r1, #0x800000
005a8508  00 00 50 e3                                      cmp r0, #0
005a850c  06 00 a0 e1                                      mov r0, r6
005a8510  07 40 a0 11                                      movne r4, r7
005a8514  02 45 e0 03                                      mvneq r4, #0x800000
005a8518  76 97 f5 eb                                      bl #0x30e2f8
005a851c  02 11 e0 e3                                      mvn r1, #0x80000000
005a8520  00 00 50 e3                                      cmp r0, #0
005a8524  02 15 41 e2                                      sub r1, r1, #0x800000
005a8528  08 00 a0 e1                                      mov r0, r8
005a852c  06 a0 a0 11                                      movne sl, r6
005a8530  02 a5 e0 03                                      mvneq sl, #0x800000
005a8534  74 98 f5 eb                                      bl #0x30e70c
005a8538  02 11 e0 e3                                      mvn r1, #0x80000000
005a853c  00 00 50 e3                                      cmp r0, #0
005a8540  02 81 e0 03                                      mvneq r8, #0x80000000
005a8544  07 00 a0 e1                                      mov r0, r7
005a8548  02 15 41 e2                                      sub r1, r1, #0x800000
005a854c  02 85 48 02                                      subeq r8, r8, #0x800000
005a8550  6d 98 f5 eb                                      bl #0x30e70c
005a8554  02 11 e0 e3                                      mvn r1, #0x80000000
005a8558  00 00 50 e3                                      cmp r0, #0
005a855c  02 71 e0 03                                      mvneq r7, #0x80000000
005a8560  06 00 a0 e1                                      mov r0, r6
005a8564  02 15 41 e2                                      sub r1, r1, #0x800000
005a8568  02 75 47 02                                      subeq r7, r7, #0x800000
005a856c  66 98 f5 eb                                      bl #0x30e70c
005a8570  68 e0 9d e5                                      ldr lr, [sp, #0x68]
005a8574  b2 30 db e1                                      ldrh r3, [fp, #2]
005a8578  00 00 50 e3                                      cmp r0, #0
005a857c  02 61 e0 03                                      mvneq r6, #0x80000000
005a8580  9e 03 03 e0                                      mul r3, lr, r3
005a8584  05 10 a0 e1                                      mov r1, r5
005a8588  03 00 99 e7                                      ldr r0, [sb, r3]
005a858c  03 30 89 e0                                      add r3, sb, r3
005a8590  02 65 46 02                                      subeq r6, r6, #0x800000
005a8594  60 00 8d e5                                      str r0, [sp, #0x60]
005a8598  08 20 93 e5                                      ldr r2, [r3, #8]
005a859c  54 20 8d e5                                      str r2, [sp, #0x54]
005a85a0  04 30 93 e5                                      ldr r3, [r3, #4]
005a85a4  5c 30 8d e5                                      str r3, [sp, #0x5c]
005a85a8  52 97 f5 eb                                      bl #0x30e2f8
005a85ac  04 10 a0 e1                                      mov r1, r4
005a85b0  00 00 50 e3                                      cmp r0, #0
005a85b4  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005a85b8  60 50 9d 15                                      ldrne r5, [sp, #0x60]
005a85bc  4d 97 f5 eb                                      bl #0x30e2f8
005a85c0  0a 10 a0 e1                                      mov r1, sl
005a85c4  00 00 50 e3                                      cmp r0, #0
005a85c8  54 00 9d e5                                      ldr r0, [sp, #0x54]
005a85cc  5c 40 9d 15                                      ldrne r4, [sp, #0x5c]
005a85d0  48 97 f5 eb                                      bl #0x30e2f8
005a85d4  60 10 9d e5                                      ldr r1, [sp, #0x60]
005a85d8  00 00 50 e3                                      cmp r0, #0
005a85dc  08 00 a0 e1                                      mov r0, r8
005a85e0  54 a0 9d 15                                      ldrne sl, [sp, #0x54]
005a85e4  43 97 f5 eb                                      bl #0x30e2f8
005a85e8  07 10 a0 e1                                      mov r1, r7
005a85ec  00 00 50 e3                                      cmp r0, #0
005a85f0  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005a85f4  60 80 9d 15                                      ldrne r8, [sp, #0x60]
005a85f8  43 98 f5 eb                                      bl #0x30e70c
005a85fc  54 10 9d e5                                      ldr r1, [sp, #0x54]
005a8600  00 00 50 e3                                      cmp r0, #0
005a8604  06 00 a0 e1                                      mov r0, r6
005a8608  5c 70 9d 15                                      ldrne r7, [sp, #0x5c]
005a860c  39 97 f5 eb                                      bl #0x30e2f8
005a8610  68 c0 9d e5                                      ldr ip, [sp, #0x68]
005a8614  b4 30 db e1                                      ldrh r3, [fp, #4]
005a8618  00 00 50 e3                                      cmp r0, #0
005a861c  54 60 9d 15                                      ldrne r6, [sp, #0x54]
005a8620  9c 03 03 e0                                      mul r3, ip, r3
005a8624  05 10 a0 e1                                      mov r1, r5
005a8628  03 e0 99 e7                                      ldr lr, [sb, r3]
005a862c  03 30 89 e0                                      add r3, sb, r3
005a8630  06 b0 8b e2                                      add fp, fp, #6
005a8634  60 e0 8d e5                                      str lr, [sp, #0x60]
005a8638  08 00 93 e5                                      ldr r0, [r3, #8]
005a863c  54 00 8d e5                                      str r0, [sp, #0x54]
005a8640  04 30 93 e5                                      ldr r3, [r3, #4]
005a8644  0e 00 a0 e1                                      mov r0, lr
005a8648  5c 30 8d e5                                      str r3, [sp, #0x5c]
005a864c  29 97 f5 eb                                      bl #0x30e2f8
005a8650  04 10 a0 e1                                      mov r1, r4
005a8654  00 00 50 e3                                      cmp r0, #0
005a8658  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
005a865c  60 50 9d 15                                      ldrne r5, [sp, #0x60]
005a8660  24 97 f5 eb                                      bl #0x30e2f8
005a8664  54 10 9d e5                                      ldr r1, [sp, #0x54]
005a8668  00 00 50 e3                                      cmp r0, #0
005a866c  0a 00 a0 e1                                      mov r0, sl
005a8670  5c 40 9d 15                                      ldrne r4, [sp, #0x5c]
005a8674  24 98 f5 eb                                      bl #0x30e70c
005a8678  60 10 9d e5                                      ldr r1, [sp, #0x60]
005a867c  00 00 50 e3                                      cmp r0, #0
005a8680  08 00 a0 e1                                      mov r0, r8
005a8684  54 a0 9d 15                                      ldrne sl, [sp, #0x54]
005a8688  1a 97 f5 eb                                      bl #0x30e2f8
005a868c  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
005a8690  00 00 50 e3                                      cmp r0, #0
005a8694  07 00 a0 e1                                      mov r0, r7
005a8698  60 80 9d 15                                      ldrne r8, [sp, #0x60]
005a869c  15 97 f5 eb                                      bl #0x30e2f8
005a86a0  06 10 a0 e1                                      mov r1, r6
005a86a4  00 00 50 e3                                      cmp r0, #0
005a86a8  54 00 9d e5                                      ldr r0, [sp, #0x54]
005a86ac  5c 70 9d 15                                      ldrne r7, [sp, #0x5c]
005a86b0  15 98 f5 eb                                      bl #0x30e70c
005a86b4  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
005a86b8  00 00 50 e3                                      cmp r0, #0
005a86bc  05 00 a0 e1                                      mov r0, r5
005a86c0  54 60 9d 15                                      ldrne r6, [sp, #0x54]
005a86c4  0b 97 f5 eb                                      bl #0x30e2f8
005a86c8  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
005a86cc  00 00 50 e3                                      cmp r0, #0
005a86d0  04 00 a0 e1                                      mov r0, r4
005a86d4  cc 50 8d 15                                      strne r5, [sp, #0xcc]
005a86d8  06 97 f5 eb                                      bl #0x30e2f8
005a86dc  0a 10 a0 e1                                      mov r1, sl
005a86e0  00 00 50 e3                                      cmp r0, #0
005a86e4  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
005a86e8  d0 40 8d 15                                      strne r4, [sp, #0xd0]
005a86ec  06 98 f5 eb                                      bl #0x30e70c
005a86f0  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
005a86f4  00 00 50 e3                                      cmp r0, #0
005a86f8  05 00 a0 e1                                      mov r0, r5
005a86fc  d4 a0 8d 15                                      strne sl, [sp, #0xd4]
005a8700  01 98 f5 eb                                      bl #0x30e70c
005a8704  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
005a8708  00 00 50 e3                                      cmp r0, #0
005a870c  04 00 a0 e1                                      mov r0, r4
005a8710  c0 50 8d 15                                      strne r5, [sp, #0xc0]
005a8714  fc 97 f5 eb                                      bl #0x30e70c
005a8718  0a 10 a0 e1                                      mov r1, sl
005a871c  00 00 50 e3                                      cmp r0, #0
005a8720  c8 00 9d e5                                      ldr r0, [sp, #0xc8]
005a8724  c4 40 8d 15                                      strne r4, [sp, #0xc4]
005a8728  f2 96 f5 eb                                      bl #0x30e2f8
005a872c  08 10 a0 e1                                      mov r1, r8
005a8730  00 00 50 e3                                      cmp r0, #0
005a8734  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
005a8738  c8 a0 8d 15                                      strne sl, [sp, #0xc8]
005a873c  f2 97 f5 eb                                      bl #0x30e70c
005a8740  00 00 50 e3                                      cmp r0, #0
005a8744  cc 80 8d 15                                      strne r8, [sp, #0xcc]
005a8748  07 00 a0 e1                                      mov r0, r7
005a874c  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
005a8750  e8 96 f5 eb                                      bl #0x30e2f8
005a8754  06 10 a0 e1                                      mov r1, r6
005a8758  00 00 50 e3                                      cmp r0, #0
005a875c  d4 00 9d e5                                      ldr r0, [sp, #0xd4]
005a8760  d0 70 8d 15                                      strne r7, [sp, #0xd0]
005a8764  e8 97 f5 eb                                      bl #0x30e70c
005a8768  08 10 a0 e1                                      mov r1, r8
005a876c  00 00 50 e3                                      cmp r0, #0
005a8770  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
005a8774  d4 60 8d 15                                      strne r6, [sp, #0xd4]
005a8778  de 96 f5 eb                                      bl #0x30e2f8
005a877c  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
005a8780  00 00 50 e3                                      cmp r0, #0
005a8784  07 00 a0 e1                                      mov r0, r7
005a8788  c0 80 8d 15                                      strne r8, [sp, #0xc0]
005a878c  de 97 f5 eb                                      bl #0x30e70c
005a8790  06 10 a0 e1                                      mov r1, r6
005a8794  00 00 50 e3                                      cmp r0, #0
005a8798  c8 00 9d e5                                      ldr r0, [sp, #0xc8]
005a879c  c4 70 8d 15                                      strne r7, [sp, #0xc4]
005a87a0  d4 96 f5 eb                                      bl #0x30e2f8
005a87a4  48 10 9d e5                                      ldr r1, [sp, #0x48]
005a87a8  50 20 9d e5                                      ldr r2, [sp, #0x50]
005a87ac  fc 30 9d e5                                      ldr r3, [sp, #0xfc]
005a87b0  00 00 50 e3                                      cmp r0, #0
005a87b4  c8 60 8d 15                                      strne r6, [sp, #0xc8]
005a87b8  01 20 83 e7                                      str r2, [r3, r1]
005a87bc  fc 30 9d e5                                      ldr r3, [sp, #0xfc]
005a87c0  01 20 82 e2                                      add r2, r2, #1
005a87c4  50 20 8d e5                                      str r2, [sp, #0x50]
005a87c8  01 30 83 e0                                      add r3, r3, r1
005a87cc  1c 10 81 e2                                      add r1, r1, #0x1c
005a87d0  18 a0 83 e5                                      str sl, [r3, #0x18]
005a87d4  04 80 83 e5                                      str r8, [r3, #4]
005a87d8  08 70 83 e5                                      str r7, [r3, #8]
005a87dc  0c 60 83 e5                                      str r6, [r3, #0xc]
005a87e0  10 50 83 e5                                      str r5, [r3, #0x10]
005a87e4  14 40 83 e5                                      str r4, [r3, #0x14]
005a87e8  48 10 8d e5                                      str r1, [sp, #0x48]
005a87ec  64 00 9d e5                                      ldr r0, [sp, #0x64]
005a87f0  c2 de ff eb                                      bl #0x5a0300
005a87f4  50 30 9d e5                                      ldr r3, [sp, #0x50]
005a87f8  00 00 53 e1                                      cmp r3, r0
005a87fc  30 ff ff 3a                                      blo #0x5a84c4
005a8800  64 c0 9d e5                                      ldr ip, [sp, #0x64]
005a8804  00 40 9c e5                                      ldr r4, [ip]
005a8808  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
005a880c  1f 20 03 e2                                      and r2, r3, #0x1f
005a8810  01 00 52 e3                                      cmp r2, #1
005a8814  89 00 00 9a                                      bls #0x5a8a40
005a8818  01 20 42 e2                                      sub r2, r2, #1
005a881c  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a8820  03 30 82 e1                                      orr r3, r2, r3
005a8824  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a8828  4c e0 9d e5                                      ldr lr, [sp, #0x4c]
005a882c  00 30 9e e5                                      ldr r3, [lr]
005a8830  14 40 93 e5                                      ldr r4, [r3, #0x14]
005a8834  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
005a8838  1f 20 03 e2                                      and r2, r3, #0x1f
005a883c  01 00 52 e3                                      cmp r2, #1
005a8840  78 00 00 9a                                      bls #0x5a8a28
005a8844  01 20 42 e2                                      sub r2, r2, #1
005a8848  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a884c  03 30 82 e1                                      orr r3, r2, r3
005a8850  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a8854  58 00 9d e5                                      ldr r0, [sp, #0x58]
005a8858  60 32 d0 e5                                      ldrb r3, [r0, #0x260]
005a885c  00 00 53 e3                                      cmp r3, #0
005a8860  50 00 00 0a                                      beq #0x5a89a8
005a8864  64 10 9d e5                                      ldr r1, [sp, #0x64]
005a8868  68 20 9d e5                                      ldr r2, [sp, #0x68]
005a886c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005a8870  10 40 91 e5                                      ldr r4, [r1, #0x10]
005a8874  5c 12 90 e5                                      ldr r1, [r0, #0x25c]
005a8878  04 40 63 e0                                      rsb r4, r3, r4
005a887c  94 02 00 e0                                      mul r0, r4, r2
005a8880  f1 98 f5 eb                                      bl #0x30ec4c
005a8884  01 00 50 e3                                      cmp r0, #1
005a8888  00 10 a0 e1                                      mov r1, r0
005a888c  06 00 00 9a                                      bls #0x5a88ac
005a8890  04 00 a0 e1                                      mov r0, r4
005a8894  ec 98 f5 eb                                      bl #0x30ec4c
005a8898  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005a889c  00 20 a0 e1                                      mov r2, r0
005a88a0  c0 30 8d e2                                      add r3, sp, #0xc0
005a88a4  70 00 9d e5                                      ldr r0, [sp, #0x70]
005a88a8  2e f7 ff eb                                      bl #0x5a6568
005a88ac  00 31 9d e5                                      ldr r3, [sp, #0x100]
005a88b0  fc 00 9d e5                                      ldr r0, [sp, #0xfc]
005a88b4  00 00 53 e1                                      cmp r3, r0
005a88b8  0a 00 00 0a                                      beq #0x5a88e8
005a88bc  1c 10 43 e2                                      sub r1, r3, #0x1c
005a88c0  01 10 60 e0                                      rsb r1, r0, r1
005a88c4  b7 2d 06 e3                                      movw r2, #0x6db7
005a88c8  21 11 a0 e1                                      lsr r1, r1, #2
005a88cc  db 26 43 e3                                      movt r2, #0x36db
005a88d0  92 01 02 e0                                      mul r2, r2, r1
005a88d4  1b 10 e0 e3                                      mvn r1, #0x1b
005a88d8  03 21 c2 e3                                      bic r2, r2, #0xc0000000
005a88dc  91 02 02 e0                                      mul r2, r1, r2
005a88e0  01 20 82 e0                                      add r2, r2, r1
005a88e4  02 30 83 e0                                      add r3, r3, r2
005a88e8  00 00 53 e3                                      cmp r3, #0
005a88ec  fa f9 ff 0a                                      beq #0x5a70dc
005a88f0  d6 9e f5 eb                                      bl #0x310450
005a88f4  f8 f9 ff ea                                      b #0x5a70dc
005a88f8  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005a88fc  20 00 13 e3                                      tst r3, #0x20
005a8900  1e 00 00 1a                                      bne #0x5a8980
005a8904  00 30 a0 e3                                      mov r3, #0
005a8908  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a890c  0c fb ff ea                                      b #0x5a7544
005a8910  00 30 94 e5                                      ldr r3, [r4]
005a8914  04 00 a0 e1                                      mov r0, r4
005a8918  0f e0 a0 e1                                      mov lr, pc
005a891c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005a8920  c3 fd ff ea                                      b #0x5a8034
005a8924  00 30 94 e5                                      ldr r3, [r4]
005a8928  04 00 a0 e1                                      mov r0, r4
005a892c  0f e0 a0 e1                                      mov lr, pc
005a8930  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005a8934  d8 fd ff ea                                      b #0x5a809c
005a8938  00 30 99 e5                                      ldr r3, [sb]
005a893c  09 00 a0 e1                                      mov r0, sb
005a8940  0f e0 a0 e1                                      mov lr, pc
005a8944  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005a8948  cd fd ff ea                                      b #0x5a8084
005a894c  58 20 9d e5                                      ldr r2, [sp, #0x58]
005a8950  00 10 a0 e3                                      mov r1, #0
005a8954  54 02 92 e5                                      ldr r0, [r2, #0x254]
005a8958  8b 95 f5 eb                                      bl #0x30df8c
005a895c  00 00 50 e3                                      cmp r0, #0
005a8960  a4 fe ff 0a                                      beq #0x5a83f8
005a8964  58 30 9d e5                                      ldr r3, [sp, #0x58]
005a8968  00 10 a0 e3                                      mov r1, #0
005a896c  58 02 93 e5                                      ldr r0, [r3, #0x258]
005a8970  85 95 f5 eb                                      bl #0x30df8c
005a8974  00 00 50 e3                                      cmp r0, #0
005a8978  a2 fe ff 1a                                      bne #0x5a8408
005a897c  9d fe ff ea                                      b #0x5a83f8
005a8980  00 30 94 e5                                      ldr r3, [r4]
005a8984  04 00 a0 e1                                      mov r0, r4
005a8988  0f e0 a0 e1                                      mov lr, pc
005a898c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005a8990  db ff ff ea                                      b #0x5a8904
005a8994  04 00 a0 e1                                      mov r0, r4
005a8998  1f e0 ff eb                                      bl #0x5a0a1c
005a899c  04 00 a0 e1                                      mov r0, r4
005a89a0  42 96 f5 eb                                      bl #0x30e2b0
005a89a4  b2 f9 ff ea                                      b #0x5a7074
005a89a8  58 30 9d e5                                      ldr r3, [sp, #0x58]
005a89ac  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
005a89b0  70 00 9d e5                                      ldr r0, [sp, #0x70]
005a89b4  25 2e 83 e2                                      add r2, r3, #0x250
005a89b8  a8 f3 ff eb                                      bl #0x5a5860
005a89bc  ba ff ff ea                                      b #0x5a88ac
005a89c0  74 20 9d e5                                      ldr r2, [sp, #0x74]
005a89c4  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005a89c8  01 b0 92 e7                                      ldr fp, [r2, r1]
005a89cc  1e 20 a0 e3                                      mov r2, #0x1e
005a89d0  ff 10 a0 e3                                      mov r1, #0xff
005a89d4  0b 00 a0 e1                                      mov r0, fp
005a89d8  a0 96 f5 eb                                      bl #0x30e460
005a89dc  10 30 9a e5                                      ldr r3, [sl, #0x10]
005a89e0  14 20 8a e2                                      add r2, sl, #0x14
005a89e4  02 00 53 e1                                      cmp r3, r2
005a89e8  0a 00 00 0a                                      beq #0x5a8a18
005a89ec  24 20 8a e2                                      add r2, sl, #0x24
005a89f0  03 30 62 e0                                      rsb r3, r2, r3
005a89f4  0f 30 c3 e3                                      bic r3, r3, #0xf
005a89f8  10 30 83 e2                                      add r3, r3, #0x10
005a89fc  bc 21 da e1                                      ldrh r2, [sl, #0x1c]
005a8a00  49 12 a0 e1                                      asr r1, sb, #4
005a8a04  10 90 89 e2                                      add sb, sb, #0x10
005a8a08  03 00 59 e1                                      cmp sb, r3
005a8a0c  0b 10 c2 e7                                      strb r1, [r2, fp]
005a8a10  10 a0 8a e2                                      add sl, sl, #0x10
005a8a14  f8 ff ff 1a                                      bne #0x5a89fc
005a8a18  74 c0 9d e5                                      ldr ip, [sp, #0x74]
005a8a1c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005a8a20  03 b0 9c e7                                      ldr fp, [ip, r3]
005a8a24  aa fc ff ea                                      b #0x5a7cd4
005a8a28  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005a8a2c  20 00 13 e3                                      tst r3, #0x20
005a8a30  08 00 00 1a                                      bne #0x5a8a58
005a8a34  00 30 a0 e3                                      mov r3, #0
005a8a38  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a8a3c  84 ff ff ea                                      b #0x5a8854
005a8a40  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
005a8a44  20 00 13 e3                                      tst r3, #0x20
005a8a48  07 00 00 1a                                      bne #0x5a8a6c
005a8a4c  00 30 a0 e3                                      mov r3, #0
005a8a50  13 30 c4 e5                                      strb r3, [r4, #0x13]
005a8a54  73 ff ff ea                                      b #0x5a8828
005a8a58  00 30 94 e5                                      ldr r3, [r4]
005a8a5c  04 00 a0 e1                                      mov r0, r4
005a8a60  0f e0 a0 e1                                      mov lr, pc
005a8a64  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005a8a68  f1 ff ff ea                                      b #0x5a8a34
005a8a6c  00 30 94 e5                                      ldr r3, [r4]
005a8a70  04 00 a0 e1                                      mov r0, r4
005a8a74  0f e0 a0 e1                                      mov lr, pc
005a8a78  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005a8a7c  f2 ff ff ea                                      b #0x5a8a4c

; FUNCTION 0x005a8a80, declared_size=8, range_size=8, mode=arm
; class-group: glitch::video::CBatchDriver
; alias: _ZN6glitch5video12CBatchDriver4drawERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingERKNS3_IKNS_5scene11CMeshBufferEEE
; demangled: glitch::video::CBatchDriver::draw(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::video::CPrimitiveStream const&, glitch::video::CDriverBinding**, boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
; decoder-mode: arm
005a8a80  00 30 9d e5                                      ldr r3, [sp]
005a8a84  55 f9 ff ea                                      b #0x5a6fe0
