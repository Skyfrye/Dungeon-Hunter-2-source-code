; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060dfc0, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::animation_track::CApplicator<glitch::collada::animation_track::SLightColor>
; alias: _ZN6glitch7collada15animation_track11CApplicatorINS1_11SLightColorEE12applyValueExEPvS5_PNS1_15CApplicatorInfoE
; demangled: glitch::collada::animation_track::CApplicator<glitch::collada::animation_track::SLightColor>::applyValueEx(void*, void*, glitch::collada::animation_track::CApplicatorInfo*)
; decoder-mode: arm
0060dfc0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060dfc4  00 40 a0 e1                                      mov r4, r0
0060dfc8  00 00 d1 e5                                      ldrb r0, [r1]
0060dfcc  01 50 a0 e1                                      mov r5, r1
0060dfd0  63 02 f4 eb                                      bl #0x30e964
0060dfd4  43 14 a0 e3                                      mov r1, #0x43000000
0060dfd8  7f 18 81 e2                                      add r1, r1, #0x7f0000
0060dfdc  2c 03 f4 eb                                      bl #0x30ec94
0060dfe0  00 70 a0 e1                                      mov r7, r0
0060dfe4  01 00 d5 e5                                      ldrb r0, [r5, #1]
0060dfe8  5d 02 f4 eb                                      bl #0x30e964
0060dfec  43 14 a0 e3                                      mov r1, #0x43000000
0060dff0  7f 18 81 e2                                      add r1, r1, #0x7f0000
0060dff4  26 03 f4 eb                                      bl #0x30ec94
0060dff8  00 60 a0 e1                                      mov r6, r0
0060dffc  02 00 d5 e5                                      ldrb r0, [r5, #2]
0060e000  57 02 f4 eb                                      bl #0x30e964
0060e004  43 14 a0 e3                                      mov r1, #0x43000000
0060e008  7f 18 81 e2                                      add r1, r1, #0x7f0000
0060e00c  20 03 f4 eb                                      bl #0x30ec94
0060e010  fe 35 a0 e3                                      mov r3, #0x3f800000
0060e014  14 70 84 e5                                      str r7, [r4, #0x14]
0060e018  1c 00 84 e5                                      str r0, [r4, #0x1c]
0060e01c  20 30 84 e5                                      str r3, [r4, #0x20]
0060e020  18 60 84 e5                                      str r6, [r4, #0x18]
0060e024  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
