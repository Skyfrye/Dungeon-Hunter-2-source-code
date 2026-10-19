; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006126c8, declared_size=220, range_size=220, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SLightColor, -1, unsigned char>, unsigned char, 3, glitch::collada::animation_track::SUseDefaultLerp<unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi3ENS1_11SLightColorELin1EhEEhLi3ENS1_15SUseDefaultLerpIhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SLightColor, -1, unsigned char>, unsigned char, 3, glitch::collada::animation_track::SUseDefaultLerp<unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006126c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006126cc  01 40 a0 e1                                      mov r4, r1
006126d0  1c d0 4d e2                                      sub sp, sp, #0x1c
006126d4  00 10 a0 e3                                      mov r1, #0
006126d8  03 50 a0 e1                                      mov r5, r3
006126dc  d0 5d 01 eb                                      bl #0x669e24
006126e0  05 10 a0 e1                                      mov r1, r5
006126e4  00 60 a0 e1                                      mov r6, r0
006126e8  fe 05 a0 e3                                      mov r0, #0x3f800000
006126ec  2e ef f3 eb                                      bl #0x30e3ac
006126f0  14 50 8d e5                                      str r5, [sp, #0x14]
006126f4  10 00 8d e5                                      str r0, [sp, #0x10]
006126f8  04 80 96 e5                                      ldr r8, [r6, #4]
006126fc  84 40 84 e0                                      add r4, r4, r4, lsl #1
00612700  00 60 a0 e3                                      mov r6, #0
00612704  04 80 88 e0                                      add r8, r8, r4
00612708  04 60 8d e5                                      str r6, [sp, #4]
0061270c  08 60 8d e5                                      str r6, [sp, #8]
00612710  0c 60 8d e5                                      str r6, [sp, #0xc]
00612714  00 a0 a0 e3                                      mov sl, #0
00612718  04 70 8d e2                                      add r7, sp, #4
0061271c  10 b0 8d e2                                      add fp, sp, #0x10
00612720  0a 90 9b e7                                      ldr sb, [fp, sl]
00612724  00 40 a0 e3                                      mov r4, #0
00612728  04 50 a0 e1                                      mov r5, r4
0061272c  05 00 d8 e7                                      ldrb r0, [r8, r5]
00612730  8b f0 f3 eb                                      bl #0x30e964
00612734  09 10 a0 e1                                      mov r1, sb
00612738  8b f1 f3 eb                                      bl #0x30ed6c
0061273c  06 10 a0 e1                                      mov r1, r6
00612740  17 f1 f3 eb                                      bl #0x30eba4
00612744  04 00 87 e7                                      str r0, [r7, r4]
00612748  04 40 84 e2                                      add r4, r4, #4
0061274c  0c 00 54 e3                                      cmp r4, #0xc
00612750  01 50 85 e2                                      add r5, r5, #1
00612754  04 60 97 17                                      ldrne r6, [r7, r4]
00612758  f3 ff ff 1a                                      bne #0x61272c
0061275c  04 a0 8a e2                                      add sl, sl, #4
00612760  08 00 5a e3                                      cmp sl, #8
00612764  03 80 88 e2                                      add r8, r8, #3
00612768  04 60 9d 15                                      ldrne r6, [sp, #4]
0061276c  eb ff ff 1a                                      bne #0x612720
00612770  04 00 9d e5                                      ldr r0, [sp, #4]
00612774  c9 ae 0a eb                                      bl #0x8be2a0
00612778  40 40 9d e5                                      ldr r4, [sp, #0x40]
0061277c  01 00 c4 e4                                      strb r0, [r4], #1
00612780  08 00 9d e5                                      ldr r0, [sp, #8]
00612784  c5 ae 0a eb                                      bl #0x8be2a0
00612788  40 30 9d e5                                      ldr r3, [sp, #0x40]
0061278c  01 00 c3 e5                                      strb r0, [r3, #1]
00612790  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00612794  c1 ae 0a eb                                      bl #0x8be2a0
00612798  01 00 c4 e5                                      strb r0, [r4, #1]
0061279c  1c d0 8d e2                                      add sp, sp, #0x1c
006127a0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00612874, declared_size=148, range_size=148, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SLightColor, -1, unsigned char>, unsigned char, 3, glitch::collada::animation_track::SUseDefaultLerp<unsigned char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_6CMixinIhLi3ENS1_11SLightColorELin1EhEEhLi3ENS1_15SUseDefaultLerpIhEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CMixin<unsigned char, 3, glitch::collada::animation_track::SLightColor, -1, unsigned char>, unsigned char, 3, glitch::collada::animation_track::SUseDefaultLerp<unsigned char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
00612874  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00612878  01 40 a0 e1                                      mov r4, r1
0061287c  00 10 a0 e3                                      mov r1, #0
00612880  03 60 a0 e1                                      mov r6, r3
00612884  02 50 a0 e1                                      mov r5, r2
00612888  28 90 9d e5                                      ldr sb, [sp, #0x28]
0061288c  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
00612890  63 5d 01 eb                                      bl #0x669e24
00612894  04 30 90 e5                                      ldr r3, [r0, #4]
00612898  86 60 86 e0                                      add r6, r6, r6, lsl #1
0061289c  85 50 85 e0                                      add r5, r5, r5, lsl #1
006128a0  84 40 84 e0                                      add r4, r4, r4, lsl #1
006128a4  06 80 83 e0                                      add r8, r3, r6
006128a8  04 40 83 e0                                      add r4, r3, r4
006128ac  05 50 83 e0                                      add r5, r3, r5
006128b0  00 60 a0 e3                                      mov r6, #0
006128b4  06 b0 d5 e7                                      ldrb fp, [r5, r6]
006128b8  0b 00 a0 e1                                      mov r0, fp
006128bc  28 f0 f3 eb                                      bl #0x30e964
006128c0  00 70 a0 e1                                      mov r7, r0
006128c4  06 00 d8 e7                                      ldrb r0, [r8, r6]
006128c8  00 00 6b e0                                      rsb r0, fp, r0
006128cc  24 f0 f3 eb                                      bl #0x30e964
006128d0  00 10 a0 e1                                      mov r1, r0
006128d4  09 00 a0 e1                                      mov r0, sb
006128d8  23 f1 f3 eb                                      bl #0x30ed6c
006128dc  00 10 a0 e1                                      mov r1, r0
006128e0  07 00 a0 e1                                      mov r0, r7
006128e4  ae f0 f3 eb                                      bl #0x30eba4
006128e8  6c ae 0a eb                                      bl #0x8be2a0
006128ec  06 30 d4 e7                                      ldrb r3, [r4, r6]
006128f0  00 30 63 e0                                      rsb r3, r3, r0
006128f4  06 30 ca e7                                      strb r3, [sl, r6]
006128f8  01 60 86 e2                                      add r6, r6, #1
006128fc  03 00 56 e3                                      cmp r6, #3
00612900  eb ff ff 1a                                      bne #0x6128b4
00612904  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
