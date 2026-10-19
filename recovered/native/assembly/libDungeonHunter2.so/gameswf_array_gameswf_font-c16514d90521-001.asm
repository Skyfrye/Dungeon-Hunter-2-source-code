; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00764344, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::font*>
; alias: _ZN7gameswf5arrayIPNS_4fontEE7reserveEi
; demangled: gameswf::array<gameswf::font*>::reserve(int)
; decoder-mode: arm
00764344  10 40 2d e9                                      push {r4, lr}
00764348  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0076434c  00 40 a0 e1                                      mov r4, r0
00764350  00 00 53 e3                                      cmp r3, #0
00764354  0f 00 00 1a                                      bne #0x764398
00764358  00 00 51 e3                                      cmp r1, #0
0076435c  08 20 90 e5                                      ldr r2, [r0, #8]
00764360  08 10 80 e5                                      str r1, [r0, #8]
00764364  0c 00 00 1a                                      bne #0x76439c
00764368  00 00 90 e5                                      ldr r0, [r0]
0076436c  00 00 50 e3                                      cmp r0, #0
00764370  01 00 00 0a                                      beq #0x76437c
00764374  02 11 a0 e1                                      lsl r1, r2, #2
00764378  ee b9 ff eb                                      bl #0x752b38
0076437c  00 30 a0 e3                                      mov r3, #0
00764380  00 30 84 e5                                      str r3, [r4]
00764384  10 80 bd e8                                      pop {r4, pc}
00764388  01 01 a0 e1                                      lsl r0, r1, #2
0076438c  0c 10 a0 e1                                      mov r1, ip
00764390  01 ba ff eb                                      bl #0x752b9c
00764394  00 00 84 e5                                      str r0, [r4]
00764398  10 80 bd e8                                      pop {r4, pc}
0076439c  00 c0 90 e5                                      ldr ip, [r0]
007643a0  00 00 5c e3                                      cmp ip, #0
007643a4  f7 ff ff 0a                                      beq #0x764388
007643a8  0c 00 a0 e1                                      mov r0, ip
007643ac  01 11 a0 e1                                      lsl r1, r1, #2
007643b0  02 21 a0 e1                                      lsl r2, r2, #2
007643b4  fc b9 ff eb                                      bl #0x752bac
007643b8  00 00 84 e5                                      str r0, [r4]
007643bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00765858, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::array<gameswf::font*>
; alias: _ZN7gameswf5arrayIPNS_4fontEE6insertEiRKS2_
; demangled: gameswf::array<gameswf::font*>::insert(int, gameswf::font* const&)
; decoder-mode: arm
00765858  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0076585c  04 50 90 e5                                      ldr r5, [r0, #4]
00765860  00 40 a0 e1                                      mov r4, r0
00765864  01 60 a0 e1                                      mov r6, r1
00765868  01 70 95 e2                                      adds r7, r5, #1
0076586c  02 80 a0 e1                                      mov r8, r2
00765870  02 00 00 0a                                      beq #0x765880
00765874  08 30 90 e5                                      ldr r3, [r0, #8]
00765878  03 00 57 e1                                      cmp r7, r3
0076587c  12 00 00 ca                                      bgt #0x7658cc
00765880  00 30 94 e5                                      ldr r3, [r4]
00765884  06 00 55 e1                                      cmp r5, r6
00765888  00 20 a0 e3                                      mov r2, #0
0076588c  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
00765890  04 70 84 e5                                      str r7, [r4, #4]
00765894  06 71 a0 d1                                      lslle r7, r6, #2
00765898  07 00 00 da                                      ble #0x7658bc
0076589c  00 10 94 e5                                      ldr r1, [r4]
007658a0  05 20 66 e0                                      rsb r2, r6, r5
007658a4  06 71 a0 e1                                      lsl r7, r6, #2
007658a8  01 00 86 e2                                      add r0, r6, #1
007658ac  00 01 81 e0                                      add r0, r1, r0, lsl #2
007658b0  02 21 a0 e1                                      lsl r2, r2, #2
007658b4  07 10 81 e0                                      add r1, r1, r7
007658b8  9e a1 ee eb                                      bl #0x30df38
007658bc  00 30 94 e5                                      ldr r3, [r4]
007658c0  00 20 98 e5                                      ldr r2, [r8]
007658c4  07 20 83 e7                                      str r2, [r3, r7]
007658c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007658cc  c7 10 87 e0                                      add r1, r7, r7, asr #1
007658d0  9b fa ff eb                                      bl #0x764344
007658d4  e9 ff ff ea                                      b #0x765880
