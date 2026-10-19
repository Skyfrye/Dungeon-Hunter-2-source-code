; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00608874, declared_size=228, range_size=228, mode=arm
; class-group: glitch::core::STransformTexCoordComponent
; alias: _ZN6glitch4core27STransformTexCoordComponent14setConvertTypeEPv
; demangled: glitch::core::STransformTexCoordComponent::setConvertType(void*)
; decoder-mode: arm
00608874  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00608878  40 50 d0 e5                                      ldrb r5, [r0, #0x40]
0060887c  00 40 a0 e1                                      mov r4, r0
00608880  00 00 55 e3                                      cmp r5, #0
00608884  32 00 00 1a                                      bne #0x608954
00608888  48 30 90 e5                                      ldr r3, [r0, #0x48]
0060888c  04 10 90 e5                                      ldr r1, [r0, #4]
00608890  00 70 93 e5                                      ldr r7, [r3]
00608894  04 60 93 e5                                      ldr r6, [r3, #4]
00608898  07 00 a0 e1                                      mov r0, r7
0060889c  32 19 f4 eb                                      bl #0x30ed6c
006088a0  14 10 94 e5                                      ldr r1, [r4, #0x14]
006088a4  00 80 a0 e1                                      mov r8, r0
006088a8  06 00 a0 e1                                      mov r0, r6
006088ac  2e 19 f4 eb                                      bl #0x30ed6c
006088b0  00 10 a0 e1                                      mov r1, r0
006088b4  08 00 a0 e1                                      mov r0, r8
006088b8  b9 18 f4 eb                                      bl #0x30eba4
006088bc  24 10 94 e5                                      ldr r1, [r4, #0x24]
006088c0  b7 18 f4 eb                                      bl #0x30eba4
006088c4  00 10 94 e5                                      ldr r1, [r4]
006088c8  00 80 a0 e1                                      mov r8, r0
006088cc  07 00 a0 e1                                      mov r0, r7
006088d0  25 19 f4 eb                                      bl #0x30ed6c
006088d4  10 10 94 e5                                      ldr r1, [r4, #0x10]
006088d8  00 70 a0 e1                                      mov r7, r0
006088dc  06 00 a0 e1                                      mov r0, r6
006088e0  21 19 f4 eb                                      bl #0x30ed6c
006088e4  00 10 a0 e1                                      mov r1, r0
006088e8  07 00 a0 e1                                      mov r0, r7
006088ec  ac 18 f4 eb                                      bl #0x30eba4
006088f0  00 10 a0 e1                                      mov r1, r0
006088f4  20 00 94 e5                                      ldr r0, [r4, #0x20]
006088f8  a9 18 f4 eb                                      bl #0x30eba4
006088fc  44 30 94 e5                                      ldr r3, [r4, #0x44]
00608900  20 00 84 e5                                      str r0, [r4, #0x20]
00608904  24 80 84 e5                                      str r8, [r4, #0x24]
00608908  40 50 c4 e5                                      strb r5, [r4, #0x40]
0060890c  00 60 93 e5                                      ldr r6, [r3]
00608910  00 00 94 e5                                      ldr r0, [r4]
00608914  04 50 93 e5                                      ldr r5, [r3, #4]
00608918  06 10 a0 e1                                      mov r1, r6
0060891c  12 19 f4 eb                                      bl #0x30ed6c
00608920  06 10 a0 e1                                      mov r1, r6
00608924  00 00 84 e5                                      str r0, [r4]
00608928  04 00 94 e5                                      ldr r0, [r4, #4]
0060892c  0e 19 f4 eb                                      bl #0x30ed6c
00608930  05 10 a0 e1                                      mov r1, r5
00608934  04 00 84 e5                                      str r0, [r4, #4]
00608938  10 00 94 e5                                      ldr r0, [r4, #0x10]
0060893c  0a 19 f4 eb                                      bl #0x30ed6c
00608940  05 10 a0 e1                                      mov r1, r5
00608944  10 00 84 e5                                      str r0, [r4, #0x10]
00608948  14 00 94 e5                                      ldr r0, [r4, #0x14]
0060894c  06 19 f4 eb                                      bl #0x30ed6c
00608950  14 00 84 e5                                      str r0, [r4, #0x14]
00608954  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
