; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493f88, declared_size=76, range_size=76, mode=arm
; class-group: VisualFXManager::AnimatedFXInfo
; alias: _ZN15VisualFXManager14AnimatedFXInfoD1Ev
; demangled: VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo()
; decoder-mode: arm
00493f88  10 40 2d e9                                      push {r4, lr}
00493f8c  00 40 a0 e1                                      mov r4, r0
00493f90  10 00 80 e2                                      add r0, r0, #0x10
00493f94  1a ff ff eb                                      bl #0x493c04
00493f98  04 00 94 e5                                      ldr r0, [r4, #4]
00493f9c  04 30 84 e2                                      add r3, r4, #4
00493fa0  00 00 50 e3                                      cmp r0, #0
00493fa4  05 00 00 0a                                      beq #0x493fc0
00493fa8  08 10 93 e5                                      ldr r1, [r3, #8]
00493fac  01 10 60 e0                                      rsb r1, r0, r1
00493fb0  03 10 c1 e3                                      bic r1, r1, #3
00493fb4  80 00 51 e3                                      cmp r1, #0x80
00493fb8  02 00 00 8a                                      bhi #0x493fc8
00493fbc  cf d3 09 eb                                      bl #0x708f00
00493fc0  04 00 a0 e1                                      mov r0, r4
00493fc4  10 80 bd e8                                      pop {r4, pc}
00493fc8  1c f1 f9 eb                                      bl #0x310440
00493fcc  04 00 a0 e1                                      mov r0, r4
00493fd0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004951d8, declared_size=104, range_size=104, mode=arm
; class-group: VisualFXManager::AnimatedFXInfo
; alias: _ZN15VisualFXManager14AnimatedFXInfoC1ERKS0_
; demangled: VisualFXManager::AnimatedFXInfo::AnimatedFXInfo(VisualFXManager::AnimatedFXInfo const&)
; decoder-mode: arm
004951d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004951dc  01 60 a0 e1                                      mov r6, r1
004951e0  04 30 91 e4                                      ldr r3, [r1], #4
004951e4  00 50 a0 e1                                      mov r5, r0
004951e8  10 40 85 e2                                      add r4, r5, #0x10
004951ec  04 30 80 e4                                      str r3, [r0], #4
004951f0  1f fa ff eb                                      bl #0x493a74
004951f4  10 40 85 e5                                      str r4, [r5, #0x10]
004951f8  14 40 85 e5                                      str r4, [r5, #0x14]
004951fc  10 70 b6 e5                                      ldr r7, [r6, #0x10]!
00495200  06 00 57 e1                                      cmp r7, r6
00495204  0b 00 00 0a                                      beq #0x495238
00495208  04 00 a0 e1                                      mov r0, r4
0049520c  28 fe ff eb                                      bl #0x494ab4
00495210  08 30 97 e5                                      ldr r3, [r7, #8]
00495214  08 30 80 e5                                      str r3, [r0, #8]
00495218  04 30 94 e5                                      ldr r3, [r4, #4]
0049521c  00 40 80 e5                                      str r4, [r0]
00495220  04 30 80 e5                                      str r3, [r0, #4]
00495224  00 00 83 e5                                      str r0, [r3]
00495228  04 00 84 e5                                      str r0, [r4, #4]
0049522c  00 70 97 e5                                      ldr r7, [r7]
00495230  07 00 56 e1                                      cmp r6, r7
00495234  f3 ff ff 1a                                      bne #0x495208
00495238  05 00 a0 e1                                      mov r0, r5
0049523c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
