; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007643c0, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<int>
; alias: _ZN7gameswf5arrayIiE7reserveEi
; demangled: gameswf::array<int>::reserve(int)
; decoder-mode: arm
007643c0  10 40 2d e9                                      push {r4, lr}
007643c4  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007643c8  00 40 a0 e1                                      mov r4, r0
007643cc  00 00 53 e3                                      cmp r3, #0
007643d0  0f 00 00 1a                                      bne #0x764414
007643d4  00 00 51 e3                                      cmp r1, #0
007643d8  08 20 90 e5                                      ldr r2, [r0, #8]
007643dc  08 10 80 e5                                      str r1, [r0, #8]
007643e0  0c 00 00 1a                                      bne #0x764418
007643e4  00 00 90 e5                                      ldr r0, [r0]
007643e8  00 00 50 e3                                      cmp r0, #0
007643ec  01 00 00 0a                                      beq #0x7643f8
007643f0  02 11 a0 e1                                      lsl r1, r2, #2
007643f4  cf b9 ff eb                                      bl #0x752b38
007643f8  00 30 a0 e3                                      mov r3, #0
007643fc  00 30 84 e5                                      str r3, [r4]
00764400  10 80 bd e8                                      pop {r4, pc}
00764404  01 01 a0 e1                                      lsl r0, r1, #2
00764408  0c 10 a0 e1                                      mov r1, ip
0076440c  e2 b9 ff eb                                      bl #0x752b9c
00764410  00 00 84 e5                                      str r0, [r4]
00764414  10 80 bd e8                                      pop {r4, pc}
00764418  00 c0 90 e5                                      ldr ip, [r0]
0076441c  00 00 5c e3                                      cmp ip, #0
00764420  f7 ff ff 0a                                      beq #0x764404
00764424  0c 00 a0 e1                                      mov r0, ip
00764428  01 11 a0 e1                                      lsl r1, r1, #2
0076442c  02 21 a0 e1                                      lsl r2, r2, #2
00764430  dd b9 ff eb                                      bl #0x752bac
00764434  00 00 84 e5                                      str r0, [r4]
00764438  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007648bc, declared_size=128, range_size=128, mode=arm
; class-group: gameswf::array<int>
; alias: _ZN7gameswf5arrayIiE6insertEiRKi
; demangled: gameswf::array<int>::insert(int, int const&)
; decoder-mode: arm
007648bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007648c0  04 50 90 e5                                      ldr r5, [r0, #4]
007648c4  00 40 a0 e1                                      mov r4, r0
007648c8  01 60 a0 e1                                      mov r6, r1
007648cc  01 70 95 e2                                      adds r7, r5, #1
007648d0  02 80 a0 e1                                      mov r8, r2
007648d4  02 00 00 0a                                      beq #0x7648e4
007648d8  08 30 90 e5                                      ldr r3, [r0, #8]
007648dc  03 00 57 e1                                      cmp r7, r3
007648e0  12 00 00 ca                                      bgt #0x764930
007648e4  00 30 94 e5                                      ldr r3, [r4]
007648e8  06 00 55 e1                                      cmp r5, r6
007648ec  00 20 a0 e3                                      mov r2, #0
007648f0  05 21 83 e7                                      str r2, [r3, r5, lsl #2]
007648f4  04 70 84 e5                                      str r7, [r4, #4]
007648f8  06 71 a0 d1                                      lslle r7, r6, #2
007648fc  07 00 00 da                                      ble #0x764920
00764900  00 10 94 e5                                      ldr r1, [r4]
00764904  05 20 66 e0                                      rsb r2, r6, r5
00764908  06 71 a0 e1                                      lsl r7, r6, #2
0076490c  01 00 86 e2                                      add r0, r6, #1
00764910  00 01 81 e0                                      add r0, r1, r0, lsl #2
00764914  02 21 a0 e1                                      lsl r2, r2, #2
00764918  07 10 81 e0                                      add r1, r1, r7
0076491c  85 a5 ee eb                                      bl #0x30df38
00764920  00 30 94 e5                                      ldr r3, [r4]
00764924  00 20 98 e5                                      ldr r2, [r8]
00764928  07 20 83 e7                                      str r2, [r3, r7]
0076492c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00764930  c7 10 87 e0                                      add r1, r7, r7, asr #1
00764934  a1 fe ff eb                                      bl #0x7643c0
00764938  e9 ff ff ea                                      b #0x7648e4

; FUNCTION 0x007b98d4, declared_size=100, range_size=100, mode=arm
; class-group: gameswf::array<int>
; alias: _ZN7gameswf5arrayIiED1Ev
; demangled: gameswf::array<int>::~array()
; decoder-mode: arm
007b98d4  10 40 2d e9                                      push {r4, lr}
007b98d8  04 30 90 e5                                      ldr r3, [r0, #4]
007b98dc  00 40 a0 e1                                      mov r4, r0
007b98e0  00 00 53 e3                                      cmp r3, #0
007b98e4  05 00 00 da                                      ble #0x7b9900
007b98e8  00 10 a0 e3                                      mov r1, #0
007b98ec  04 00 a0 e1                                      mov r0, r4
007b98f0  04 10 84 e5                                      str r1, [r4, #4]
007b98f4  b1 aa fe eb                                      bl #0x7643c0
007b98f8  04 00 a0 e1                                      mov r0, r4
007b98fc  10 80 bd e8                                      pop {r4, pc}
007b9900  f8 ff ff aa                                      bge #0x7b98e8
007b9904  03 21 a0 e1                                      lsl r2, r3, #2
007b9908  00 00 a0 e3                                      mov r0, #0
007b990c  00 10 94 e5                                      ldr r1, [r4]
007b9910  01 30 93 e2                                      adds r3, r3, #1
007b9914  02 00 81 e7                                      str r0, [r1, r2]
007b9918  04 20 82 e2                                      add r2, r2, #4
007b991c  fa ff ff 1a                                      bne #0x7b990c
007b9920  00 10 a0 e3                                      mov r1, #0
007b9924  04 00 a0 e1                                      mov r0, r4
007b9928  04 10 84 e5                                      str r1, [r4, #4]
007b992c  a3 aa fe eb                                      bl #0x7643c0
007b9930  04 00 a0 e1                                      mov r0, r4
007b9934  10 80 bd e8                                      pop {r4, pc}
