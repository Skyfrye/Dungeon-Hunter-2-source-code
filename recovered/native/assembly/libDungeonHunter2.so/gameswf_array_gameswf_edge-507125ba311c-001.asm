; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007616b0, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::edge>
; alias: _ZN7gameswf5arrayINS_4edgeEE7reserveEi
; demangled: gameswf::array<gameswf::edge>::reserve(int)
; decoder-mode: arm
007616b0  10 40 2d e9                                      push {r4, lr}
007616b4  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007616b8  00 40 a0 e1                                      mov r4, r0
007616bc  00 00 53 e3                                      cmp r3, #0
007616c0  0f 00 00 1a                                      bne #0x761704
007616c4  00 00 51 e3                                      cmp r1, #0
007616c8  08 20 90 e5                                      ldr r2, [r0, #8]
007616cc  08 10 80 e5                                      str r1, [r0, #8]
007616d0  0c 00 00 1a                                      bne #0x761708
007616d4  00 00 90 e5                                      ldr r0, [r0]
007616d8  00 00 50 e3                                      cmp r0, #0
007616dc  01 00 00 0a                                      beq #0x7616e8
007616e0  02 12 a0 e1                                      lsl r1, r2, #4
007616e4  13 c5 ff eb                                      bl #0x752b38
007616e8  00 30 a0 e3                                      mov r3, #0
007616ec  00 30 84 e5                                      str r3, [r4]
007616f0  10 80 bd e8                                      pop {r4, pc}
007616f4  01 02 a0 e1                                      lsl r0, r1, #4
007616f8  0c 10 a0 e1                                      mov r1, ip
007616fc  26 c5 ff eb                                      bl #0x752b9c
00761700  00 00 84 e5                                      str r0, [r4]
00761704  10 80 bd e8                                      pop {r4, pc}
00761708  00 c0 90 e5                                      ldr ip, [r0]
0076170c  00 00 5c e3                                      cmp ip, #0
00761710  f7 ff ff 0a                                      beq #0x7616f4
00761714  0c 00 a0 e1                                      mov r0, ip
00761718  01 12 a0 e1                                      lsl r1, r1, #4
0076171c  02 22 a0 e1                                      lsl r2, r2, #4
00761720  21 c5 ff eb                                      bl #0x752bac
00761724  00 00 84 e5                                      str r0, [r4]
00761728  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00761a8c, declared_size=96, range_size=96, mode=arm
; class-group: gameswf::array<gameswf::edge>
; alias: _ZN7gameswf5arrayINS_4edgeEE6resizeEi
; demangled: gameswf::array<gameswf::edge>::resize(int)
; decoder-mode: arm
00761a8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00761a90  00 40 51 e2                                      subs r4, r1, #0
00761a94  00 50 a0 e1                                      mov r5, r0
00761a98  04 60 90 e5                                      ldr r6, [r0, #4]
00761a9c  02 00 00 0a                                      beq #0x761aac
00761aa0  08 30 90 e5                                      ldr r3, [r0, #8]
00761aa4  03 00 54 e1                                      cmp r4, r3
00761aa8  0c 00 00 ca                                      bgt #0x761ae0
00761aac  04 00 56 e1                                      cmp r6, r4
00761ab0  08 00 00 aa                                      bge #0x761ad8
00761ab4  06 70 a0 e1                                      mov r7, r6
00761ab8  06 62 a0 e1                                      lsl r6, r6, #4
00761abc  00 00 95 e5                                      ldr r0, [r5]
00761ac0  01 70 87 e2                                      add r7, r7, #1
00761ac4  06 00 80 e0                                      add r0, r0, r6
00761ac8  7a 5d 00 eb                                      bl #0x7790b8
00761acc  04 00 57 e1                                      cmp r7, r4
00761ad0  10 60 86 e2                                      add r6, r6, #0x10
00761ad4  f8 ff ff 1a                                      bne #0x761abc
00761ad8  04 40 85 e5                                      str r4, [r5, #4]
00761adc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00761ae0  c4 10 84 e0                                      add r1, r4, r4, asr #1
00761ae4  f1 fe ff eb                                      bl #0x7616b0
00761ae8  ef ff ff ea                                      b #0x761aac
