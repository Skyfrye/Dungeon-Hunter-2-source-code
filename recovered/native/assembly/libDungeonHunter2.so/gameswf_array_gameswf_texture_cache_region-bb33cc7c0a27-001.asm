; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00757484, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::texture_cache::region>
; alias: _ZN7gameswf5arrayINS_13texture_cache6regionEE7reserveEi
; demangled: gameswf::array<gameswf::texture_cache::region>::reserve(int)
; decoder-mode: arm
00757484  10 40 2d e9                                      push {r4, lr}
00757488  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0075748c  00 40 a0 e1                                      mov r4, r0
00757490  00 00 53 e3                                      cmp r3, #0
00757494  0f 00 00 1a                                      bne #0x7574d8
00757498  00 00 51 e3                                      cmp r1, #0
0075749c  08 20 90 e5                                      ldr r2, [r0, #8]
007574a0  08 10 80 e5                                      str r1, [r0, #8]
007574a4  0c 00 00 1a                                      bne #0x7574dc
007574a8  00 00 90 e5                                      ldr r0, [r0]
007574ac  00 00 50 e3                                      cmp r0, #0
007574b0  01 00 00 0a                                      beq #0x7574bc
007574b4  02 12 a0 e1                                      lsl r1, r2, #4
007574b8  9e ed ff eb                                      bl #0x752b38
007574bc  00 30 a0 e3                                      mov r3, #0
007574c0  00 30 84 e5                                      str r3, [r4]
007574c4  10 80 bd e8                                      pop {r4, pc}
007574c8  01 02 a0 e1                                      lsl r0, r1, #4
007574cc  0c 10 a0 e1                                      mov r1, ip
007574d0  b1 ed ff eb                                      bl #0x752b9c
007574d4  00 00 84 e5                                      str r0, [r4]
007574d8  10 80 bd e8                                      pop {r4, pc}
007574dc  00 c0 90 e5                                      ldr ip, [r0]
007574e0  00 00 5c e3                                      cmp ip, #0
007574e4  f7 ff ff 0a                                      beq #0x7574c8
007574e8  0c 00 a0 e1                                      mov r0, ip
007574ec  01 12 a0 e1                                      lsl r1, r1, #4
007574f0  02 22 a0 e1                                      lsl r2, r2, #4
007574f4  ac ed ff eb                                      bl #0x752bac
007574f8  00 00 84 e5                                      str r0, [r4]
007574fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00793968, declared_size=116, range_size=116, mode=arm
; class-group: gameswf::array<gameswf::texture_cache::region>
; alias: _ZN7gameswf5arrayINS_13texture_cache6regionEE6resizeEi
; demangled: gameswf::array<gameswf::texture_cache::region>::resize(int)
; decoder-mode: arm
00793968  70 43 2d e9                                      push {r4, r5, r6, r8, sb, lr}
0079396c  00 40 51 e2                                      subs r4, r1, #0
00793970  00 50 a0 e1                                      mov r5, r0
00793974  04 60 90 e5                                      ldr r6, [r0, #4]
00793978  02 00 00 0a                                      beq #0x793988
0079397c  08 30 90 e5                                      ldr r3, [r0, #8]
00793980  03 00 54 e1                                      cmp r4, r3
00793984  11 00 00 ca                                      bgt #0x7939d0
00793988  04 00 56 e1                                      cmp r6, r4
0079398c  0d 00 00 aa                                      bge #0x7939c8
00793990  06 30 a0 e1                                      mov r3, r6
00793994  00 80 a0 e3                                      mov r8, #0
00793998  06 62 a0 e1                                      lsl r6, r6, #4
0079399c  00 90 a0 e3                                      mov sb, #0
007939a0  00 00 a0 e3                                      mov r0, #0
007939a4  00 10 95 e5                                      ldr r1, [r5]
007939a8  01 30 83 e2                                      add r3, r3, #1
007939ac  04 00 53 e1                                      cmp r3, r4
007939b0  06 20 81 e0                                      add r2, r1, r6
007939b4  f6 80 81 e1                                      strd r8, sb, [r1, r6]
007939b8  0c 00 82 e5                                      str r0, [r2, #0xc]
007939bc  08 00 82 e5                                      str r0, [r2, #8]
007939c0  10 60 86 e2                                      add r6, r6, #0x10
007939c4  f6 ff ff 1a                                      bne #0x7939a4
007939c8  04 40 85 e5                                      str r4, [r5, #4]
007939cc  70 83 bd e8                                      pop {r4, r5, r6, r8, sb, pc}
007939d0  c4 10 84 e0                                      add r1, r4, r4, asr #1
007939d4  aa 0e ff eb                                      bl #0x757484
007939d8  ea ff ff ea                                      b #0x793988
