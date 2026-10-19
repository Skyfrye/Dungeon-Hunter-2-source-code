; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493924, declared_size=104, range_size=104, mode=arm
; class-group: VisualFXManager::AnimFXSetInfo
; alias: _ZN15VisualFXManager13AnimFXSetInfoC1ERKS0_
; demangled: VisualFXManager::AnimFXSetInfo::AnimFXSetInfo(VisualFXManager::AnimFXSetInfo const&)
; decoder-mode: arm
00493924  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00493928  01 60 a0 e1                                      mov r6, r1
0049392c  04 30 91 e4                                      ldr r3, [r1], #4
00493930  00 50 a0 e1                                      mov r5, r0
00493934  10 40 85 e2                                      add r4, r5, #0x10
00493938  04 30 80 e4                                      str r3, [r0], #4
0049393c  d8 ff ff eb                                      bl #0x4938a4
00493940  10 40 85 e5                                      str r4, [r5, #0x10]
00493944  14 40 85 e5                                      str r4, [r5, #0x14]
00493948  10 70 b6 e5                                      ldr r7, [r6, #0x10]!
0049394c  06 00 57 e1                                      cmp r7, r6
00493950  0b 00 00 0a                                      beq #0x493984
00493954  04 00 a0 e1                                      mov r0, r4
00493958  ad ff ff eb                                      bl #0x493814
0049395c  08 30 97 e5                                      ldr r3, [r7, #8]
00493960  08 30 80 e5                                      str r3, [r0, #8]
00493964  04 30 94 e5                                      ldr r3, [r4, #4]
00493968  00 40 80 e5                                      str r4, [r0]
0049396c  04 30 80 e5                                      str r3, [r0, #4]
00493970  00 00 83 e5                                      str r0, [r3]
00493974  04 00 84 e5                                      str r0, [r4, #4]
00493978  00 70 97 e5                                      ldr r7, [r7]
0049397c  07 00 56 e1                                      cmp r6, r7
00493980  f3 ff ff 1a                                      bne #0x493954
00493984  05 00 a0 e1                                      mov r0, r5
00493988  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x004940d8, declared_size=124, range_size=124, mode=arm
; class-group: VisualFXManager::AnimFXSetInfo
; alias: _ZN15VisualFXManager13AnimFXSetInfoD1Ev
; demangled: VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo()
; decoder-mode: arm
004940d8  70 40 2d e9                                      push {r4, r5, r6, lr}
004940dc  00 60 a0 e1                                      mov r6, r0
004940e0  10 00 90 e5                                      ldr r0, [r0, #0x10]
004940e4  10 50 86 e2                                      add r5, r6, #0x10
004940e8  05 00 50 e1                                      cmp r0, r5
004940ec  01 00 00 1a                                      bne #0x4940f8
004940f0  06 00 00 ea                                      b #0x494110
004940f4  04 00 a0 e1                                      mov r0, r4
004940f8  00 40 90 e5                                      ldr r4, [r0]
004940fc  0c 10 a0 e3                                      mov r1, #0xc
00494100  7e d3 09 eb                                      bl #0x708f00
00494104  05 00 54 e1                                      cmp r4, r5
00494108  f9 ff ff 1a                                      bne #0x4940f4
0049410c  05 00 a0 e1                                      mov r0, r5
00494110  10 00 86 e5                                      str r0, [r6, #0x10]
00494114  04 00 85 e5                                      str r0, [r5, #4]
00494118  04 00 96 e5                                      ldr r0, [r6, #4]
0049411c  04 30 86 e2                                      add r3, r6, #4
00494120  00 00 50 e3                                      cmp r0, #0
00494124  05 00 00 0a                                      beq #0x494140
00494128  08 10 93 e5                                      ldr r1, [r3, #8]
0049412c  01 10 60 e0                                      rsb r1, r0, r1
00494130  03 10 c1 e3                                      bic r1, r1, #3
00494134  80 00 51 e3                                      cmp r1, #0x80
00494138  02 00 00 8a                                      bhi #0x494148
0049413c  6f d3 09 eb                                      bl #0x708f00
00494140  06 00 a0 e1                                      mov r0, r6
00494144  70 80 bd e8                                      pop {r4, r5, r6, pc}
00494148  bc f0 f9 eb                                      bl #0x310440
0049414c  06 00 a0 e1                                      mov r0, r6
00494150  70 80 bd e8                                      pop {r4, r5, r6, pc}
