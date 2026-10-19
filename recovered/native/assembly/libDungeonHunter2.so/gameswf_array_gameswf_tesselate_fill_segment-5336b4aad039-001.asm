; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007856d4, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::tesselate::fill_segment>
; alias: _ZN7gameswf5arrayINS_9tesselate12fill_segmentEE7reserveEi
; demangled: gameswf::array<gameswf::tesselate::fill_segment>::reserve(int)
; decoder-mode: arm
007856d4  10 40 2d e9                                      push {r4, lr}
007856d8  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007856dc  00 40 a0 e1                                      mov r4, r0
007856e0  00 00 53 e3                                      cmp r3, #0
007856e4  11 00 00 1a                                      bne #0x785730
007856e8  00 00 51 e3                                      cmp r1, #0
007856ec  08 20 90 e5                                      ldr r2, [r0, #8]
007856f0  08 10 80 e5                                      str r1, [r0, #8]
007856f4  0e 00 00 1a                                      bne #0x785734
007856f8  00 00 90 e5                                      ldr r0, [r0]
007856fc  00 00 50 e3                                      cmp r0, #0
00785700  02 00 00 0a                                      beq #0x785710
00785704  1c 10 a0 e3                                      mov r1, #0x1c
00785708  91 02 01 e0                                      mul r1, r1, r2
0078570c  09 35 ff eb                                      bl #0x752b38
00785710  00 30 a0 e3                                      mov r3, #0
00785714  00 30 84 e5                                      str r3, [r4]
00785718  10 80 bd e8                                      pop {r4, pc}
0078571c  1c 00 a0 e3                                      mov r0, #0x1c
00785720  90 01 00 e0                                      mul r0, r0, r1
00785724  0c 10 a0 e1                                      mov r1, ip
00785728  1b 35 ff eb                                      bl #0x752b9c
0078572c  00 00 84 e5                                      str r0, [r4]
00785730  10 80 bd e8                                      pop {r4, pc}
00785734  00 c0 90 e5                                      ldr ip, [r0]
00785738  00 00 5c e3                                      cmp ip, #0
0078573c  f6 ff ff 0a                                      beq #0x78571c
00785740  1c e0 a0 e3                                      mov lr, #0x1c
00785744  9e 02 02 e0                                      mul r2, lr, r2
00785748  0c 00 a0 e1                                      mov r0, ip
0078574c  9e 01 01 e0                                      mul r1, lr, r1
00785750  15 35 ff eb                                      bl #0x752bac
00785754  00 00 84 e5                                      str r0, [r4]
00785758  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00785c44, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::array<gameswf::tesselate::fill_segment>
; alias: _ZN7gameswf5arrayINS_9tesselate12fill_segmentEE6removeEi
; demangled: gameswf::array<gameswf::tesselate::fill_segment>::remove(int)
; decoder-mode: arm
00785c44  10 40 2d e9                                      push {r4, lr}
00785c48  04 20 90 e5                                      ldr r2, [r0, #4]
00785c4c  00 40 a0 e1                                      mov r4, r0
00785c50  01 30 a0 e1                                      mov r3, r1
00785c54  01 00 52 e3                                      cmp r2, #1
00785c58  0c 00 00 0a                                      beq #0x785c90
00785c5c  1c 00 a0 e3                                      mov r0, #0x1c
00785c60  00 c0 94 e5                                      ldr ip, [r4]
00785c64  91 00 21 e0                                      mla r1, r1, r0, r0
00785c68  01 20 42 e2                                      sub r2, r2, #1
00785c6c  02 20 63 e0                                      rsb r2, r3, r2
00785c70  90 02 02 e0                                      mul r2, r0, r2
00785c74  01 10 8c e0                                      add r1, ip, r1
00785c78  90 c3 20 e0                                      mla r0, r0, r3, ip
00785c7c  ad 20 ee eb                                      bl #0x30df38
00785c80  04 30 94 e5                                      ldr r3, [r4, #4]
00785c84  01 30 43 e2                                      sub r3, r3, #1
00785c88  04 30 84 e5                                      str r3, [r4, #4]
00785c8c  10 80 bd e8                                      pop {r4, pc}
00785c90  00 30 a0 e3                                      mov r3, #0
00785c94  04 30 80 e5                                      str r3, [r0, #4]
00785c98  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007862b8, declared_size=120, range_size=120, mode=arm
; class-group: gameswf::array<gameswf::tesselate::fill_segment>
; alias: _ZN7gameswf5arrayINS_9tesselate12fill_segmentEED1Ev
; demangled: gameswf::array<gameswf::tesselate::fill_segment>::~array()
; decoder-mode: arm
007862b8  10 40 2d e9                                      push {r4, lr}
007862bc  00 40 a0 e1                                      mov r4, r0
007862c0  04 00 90 e5                                      ldr r0, [r0, #4]
007862c4  00 00 50 e3                                      cmp r0, #0
007862c8  05 00 00 da                                      ble #0x7862e4
007862cc  00 10 a0 e3                                      mov r1, #0
007862d0  04 00 a0 e1                                      mov r0, r4
007862d4  04 10 84 e5                                      str r1, [r4, #4]
007862d8  fd fc ff eb                                      bl #0x7856d4
007862dc  04 00 a0 e1                                      mov r0, r4
007862e0  10 80 bd e8                                      pop {r4, pc}
007862e4  f8 ff ff aa                                      bge #0x7862cc
007862e8  1c 20 a0 e3                                      mov r2, #0x1c
007862ec  92 00 02 e0                                      mul r2, r2, r0
007862f0  00 30 a0 e3                                      mov r3, #0
007862f4  00 c0 94 e5                                      ldr ip, [r4]
007862f8  01 00 90 e2                                      adds r0, r0, #1
007862fc  02 10 8c e0                                      add r1, ip, r2
00786300  02 30 8c e7                                      str r3, [ip, r2]
00786304  0c 30 81 e5                                      str r3, [r1, #0xc]
00786308  04 30 81 e5                                      str r3, [r1, #4]
0078630c  08 30 81 e5                                      str r3, [r1, #8]
00786310  1c 20 82 e2                                      add r2, r2, #0x1c
00786314  f6 ff ff 1a                                      bne #0x7862f4
00786318  00 10 a0 e3                                      mov r1, #0
0078631c  04 00 a0 e1                                      mov r0, r4
00786320  04 10 84 e5                                      str r1, [r4, #4]
00786324  ea fc ff eb                                      bl #0x7856d4
00786328  04 00 a0 e1                                      mov r0, r4
0078632c  10 80 bd e8                                      pop {r4, pc}
