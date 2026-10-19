; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00608960, declared_size=308, range_size=308, mode=arm
; class-group: glitch::core::STransformPositionComponent
; alias: _ZN6glitch4core27STransformPositionComponent14setConvertTypeEPv
; demangled: glitch::core::STransformPositionComponent::setConvertType(void*)
; decoder-mode: arm
00608960  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00608964  40 50 d0 e5                                      ldrb r5, [r0, #0x40]
00608968  00 40 a0 e1                                      mov r4, r0
0060896c  00 00 55 e3                                      cmp r5, #0
00608970  46 00 00 1a                                      bne #0x608a90
00608974  48 30 90 e5                                      ldr r3, [r0, #0x48]
00608978  00 10 90 e5                                      ldr r1, [r0]
0060897c  00 80 93 e5                                      ldr r8, [r3]
00608980  04 70 93 e5                                      ldr r7, [r3, #4]
00608984  08 60 93 e5                                      ldr r6, [r3, #8]
00608988  08 00 a0 e1                                      mov r0, r8
0060898c  f6 18 f4 eb                                      bl #0x30ed6c
00608990  10 10 94 e5                                      ldr r1, [r4, #0x10]
00608994  00 a0 a0 e1                                      mov sl, r0
00608998  07 00 a0 e1                                      mov r0, r7
0060899c  f2 18 f4 eb                                      bl #0x30ed6c
006089a0  00 10 a0 e1                                      mov r1, r0
006089a4  0a 00 a0 e1                                      mov r0, sl
006089a8  7d 18 f4 eb                                      bl #0x30eba4
006089ac  20 10 94 e5                                      ldr r1, [r4, #0x20]
006089b0  00 a0 a0 e1                                      mov sl, r0
006089b4  06 00 a0 e1                                      mov r0, r6
006089b8  eb 18 f4 eb                                      bl #0x30ed6c
006089bc  00 10 a0 e1                                      mov r1, r0
006089c0  0a 00 a0 e1                                      mov r0, sl
006089c4  76 18 f4 eb                                      bl #0x30eba4
006089c8  30 10 94 e5                                      ldr r1, [r4, #0x30]
006089cc  74 18 f4 eb                                      bl #0x30eba4
006089d0  04 10 94 e5                                      ldr r1, [r4, #4]
006089d4  00 90 a0 e1                                      mov sb, r0
006089d8  08 00 a0 e1                                      mov r0, r8
006089dc  e2 18 f4 eb                                      bl #0x30ed6c
006089e0  14 10 94 e5                                      ldr r1, [r4, #0x14]
006089e4  00 a0 a0 e1                                      mov sl, r0
006089e8  07 00 a0 e1                                      mov r0, r7
006089ec  de 18 f4 eb                                      bl #0x30ed6c
006089f0  00 10 a0 e1                                      mov r1, r0
006089f4  0a 00 a0 e1                                      mov r0, sl
006089f8  69 18 f4 eb                                      bl #0x30eba4
006089fc  24 10 94 e5                                      ldr r1, [r4, #0x24]
00608a00  00 a0 a0 e1                                      mov sl, r0
00608a04  06 00 a0 e1                                      mov r0, r6
00608a08  d7 18 f4 eb                                      bl #0x30ed6c
00608a0c  00 10 a0 e1                                      mov r1, r0
00608a10  0a 00 a0 e1                                      mov r0, sl
00608a14  62 18 f4 eb                                      bl #0x30eba4
00608a18  34 10 94 e5                                      ldr r1, [r4, #0x34]
00608a1c  60 18 f4 eb                                      bl #0x30eba4
00608a20  08 10 94 e5                                      ldr r1, [r4, #8]
00608a24  00 a0 a0 e1                                      mov sl, r0
00608a28  08 00 a0 e1                                      mov r0, r8
00608a2c  ce 18 f4 eb                                      bl #0x30ed6c
00608a30  18 10 94 e5                                      ldr r1, [r4, #0x18]
00608a34  00 80 a0 e1                                      mov r8, r0
00608a38  07 00 a0 e1                                      mov r0, r7
00608a3c  ca 18 f4 eb                                      bl #0x30ed6c
00608a40  00 10 a0 e1                                      mov r1, r0
00608a44  08 00 a0 e1                                      mov r0, r8
00608a48  55 18 f4 eb                                      bl #0x30eba4
00608a4c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00608a50  00 70 a0 e1                                      mov r7, r0
00608a54  06 00 a0 e1                                      mov r0, r6
00608a58  c3 18 f4 eb                                      bl #0x30ed6c
00608a5c  00 10 a0 e1                                      mov r1, r0
00608a60  07 00 a0 e1                                      mov r0, r7
00608a64  4e 18 f4 eb                                      bl #0x30eba4
00608a68  38 10 94 e5                                      ldr r1, [r4, #0x38]
00608a6c  4c 18 f4 eb                                      bl #0x30eba4
00608a70  40 50 c4 e5                                      strb r5, [r4, #0x40]
00608a74  44 10 94 e5                                      ldr r1, [r4, #0x44]
00608a78  38 00 84 e5                                      str r0, [r4, #0x38]
00608a7c  04 00 a0 e1                                      mov r0, r4
00608a80  30 90 84 e5                                      str sb, [r4, #0x30]
00608a84  34 a0 84 e5                                      str sl, [r4, #0x34]
00608a88  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00608a8c  3d 3b fe ea                                      b #0x597788
00608a90  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
