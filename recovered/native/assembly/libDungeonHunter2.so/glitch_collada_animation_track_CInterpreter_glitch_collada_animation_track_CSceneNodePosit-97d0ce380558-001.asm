; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00616318, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionZExIcEEfLi3ENS1_17SUseDefaultValuesILi2EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, void*)
; decoder-mode: arm
00616318  70 40 2d e9                                      push {r4, r5, r6, lr}
0061631c  00 40 a0 e1                                      mov r4, r0
00616320  10 d0 4d e2                                      sub sp, sp, #0x10
00616324  01 50 a0 e1                                      mov r5, r1
00616328  04 00 8d e2                                      add r0, sp, #4
0061632c  04 10 a0 e1                                      mov r1, r4
00616330  02 60 a0 e1                                      mov r6, r2
00616334  aa f6 ff eb                                      bl #0x613de4
00616338  04 30 9d e5                                      ldr r3, [sp, #4]
0061633c  04 30 93 e5                                      ldr r3, [r3, #4]
00616340  d5 00 93 e1                                      ldrsb r0, [r3, r5]
00616344  86 e1 f3 eb                                      bl #0x30e964
00616348  08 30 9d e5                                      ldr r3, [sp, #8]
0061634c  00 10 93 e5                                      ldr r1, [r3]
00616350  85 e2 f3 eb                                      bl #0x30ed6c
00616354  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616358  00 10 93 e5                                      ldr r1, [r3]
0061635c  10 e2 f3 eb                                      bl #0x30eba4
00616360  00 50 a0 e1                                      mov r5, r0
00616364  04 00 a0 e1                                      mov r0, r4
00616368  b9 4e 01 eb                                      bl #0x669e54
0061636c  00 00 50 e3                                      cmp r0, #0
00616370  02 00 00 1a                                      bne #0x616380
00616374  00 50 86 e5                                      str r5, [r6]
00616378  10 d0 8d e2                                      add sp, sp, #0x10
0061637c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00616380  04 00 a0 e1                                      mov r0, r4
00616384  b7 4e 01 eb                                      bl #0x669e68
00616388  00 00 50 e3                                      cmp r0, #0
0061638c  f8 ff ff 0a                                      beq #0x616374
00616390  04 00 a0 e1                                      mov r0, r4
00616394  b3 4e 01 eb                                      bl #0x669e68
00616398  00 20 90 e5                                      ldr r2, [r0]
0061639c  06 30 a0 e1                                      mov r3, r6
006163a0  04 20 83 e4                                      str r2, [r3], #4
006163a4  04 20 90 e5                                      ldr r2, [r0, #4]
006163a8  04 20 86 e5                                      str r2, [r6, #4]
006163ac  04 50 83 e5                                      str r5, [r3, #4]
006163b0  f0 ff ff ea                                      b #0x616378

; FUNCTION 0x006163c4, declared_size=260, range_size=260, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionZExIcEEfLi3ENS1_17SUseDefaultValuesILi2EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, float, void*)
; decoder-mode: arm
006163c4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006163c8  00 40 a0 e1                                      mov r4, r0
006163cc  14 d0 4d e2                                      sub sp, sp, #0x14
006163d0  01 50 a0 e1                                      mov r5, r1
006163d4  04 00 8d e2                                      add r0, sp, #4
006163d8  04 10 a0 e1                                      mov r1, r4
006163dc  02 60 a0 e1                                      mov r6, r2
006163e0  03 b0 a0 e1                                      mov fp, r3
006163e4  38 70 9d e5                                      ldr r7, [sp, #0x38]
006163e8  7d f6 ff eb                                      bl #0x613de4
006163ec  04 30 9d e5                                      ldr r3, [sp, #4]
006163f0  04 90 93 e5                                      ldr sb, [r3, #4]
006163f4  08 30 9d e5                                      ldr r3, [sp, #8]
006163f8  d5 00 99 e1                                      ldrsb r0, [sb, r5]
006163fc  00 a0 93 e5                                      ldr sl, [r3]
00616400  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616404  00 80 93 e5                                      ldr r8, [r3]
00616408  55 e1 f3 eb                                      bl #0x30e964
0061640c  0a 10 a0 e1                                      mov r1, sl
00616410  55 e2 f3 eb                                      bl #0x30ed6c
00616414  08 10 a0 e1                                      mov r1, r8
00616418  e1 e1 f3 eb                                      bl #0x30eba4
0061641c  00 50 a0 e1                                      mov r5, r0
00616420  d6 00 99 e1                                      ldrsb r0, [sb, r6]
00616424  4e e1 f3 eb                                      bl #0x30e964
00616428  00 10 a0 e1                                      mov r1, r0
0061642c  0a 00 a0 e1                                      mov r0, sl
00616430  4d e2 f3 eb                                      bl #0x30ed6c
00616434  00 10 a0 e1                                      mov r1, r0
00616438  08 00 a0 e1                                      mov r0, r8
0061643c  d8 e1 f3 eb                                      bl #0x30eba4
00616440  00 60 a0 e1                                      mov r6, r0
00616444  04 00 a0 e1                                      mov r0, r4
00616448  81 4e 01 eb                                      bl #0x669e54
0061644c  00 00 50 e3                                      cmp r0, #0
00616450  12 00 00 0a                                      beq #0x6164a0
00616454  04 00 a0 e1                                      mov r0, r4
00616458  82 4e 01 eb                                      bl #0x669e68
0061645c  00 30 90 e5                                      ldr r3, [r0]
00616460  04 00 a0 e1                                      mov r0, r4
00616464  00 30 87 e5                                      str r3, [r7]
00616468  7e 4e 01 eb                                      bl #0x669e68
0061646c  04 30 90 e5                                      ldr r3, [r0, #4]
00616470  05 10 a0 e1                                      mov r1, r5
00616474  06 00 a0 e1                                      mov r0, r6
00616478  04 30 87 e5                                      str r3, [r7, #4]
0061647c  ca df f3 eb                                      bl #0x30e3ac
00616480  00 10 a0 e1                                      mov r1, r0
00616484  0b 00 a0 e1                                      mov r0, fp
00616488  37 e2 f3 eb                                      bl #0x30ed6c
0061648c  05 10 a0 e1                                      mov r1, r5
00616490  c3 e1 f3 eb                                      bl #0x30eba4
00616494  08 00 87 e5                                      str r0, [r7, #8]
00616498  14 d0 8d e2                                      add sp, sp, #0x14
0061649c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006164a0  05 10 a0 e1                                      mov r1, r5
006164a4  06 00 a0 e1                                      mov r0, r6
006164a8  bf df f3 eb                                      bl #0x30e3ac
006164ac  00 10 a0 e1                                      mov r1, r0
006164b0  0b 00 a0 e1                                      mov r0, fp
006164b4  2c e2 f3 eb                                      bl #0x30ed6c
006164b8  05 10 a0 e1                                      mov r1, r5
006164bc  b8 e1 f3 eb                                      bl #0x30eba4
006164c0  00 00 87 e5                                      str r0, [r7]
006164c4  f3 ff ff ea                                      b #0x616498

; FUNCTION 0x006164e4, declared_size=200, range_size=200, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionZExIcEEfLi3ENS1_17SUseDefaultValuesILi2EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, void*)
; decoder-mode: arm
006164e4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006164e8  00 40 a0 e1                                      mov r4, r0
006164ec  10 d0 4d e2                                      sub sp, sp, #0x10
006164f0  01 50 a0 e1                                      mov r5, r1
006164f4  04 00 8d e2                                      add r0, sp, #4
006164f8  04 10 a0 e1                                      mov r1, r4
006164fc  02 60 a0 e1                                      mov r6, r2
00616500  03 90 a0 e1                                      mov sb, r3
00616504  36 f6 ff eb                                      bl #0x613de4
00616508  04 30 9d e5                                      ldr r3, [sp, #4]
0061650c  04 a0 93 e5                                      ldr sl, [r3, #4]
00616510  08 30 9d e5                                      ldr r3, [sp, #8]
00616514  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00616518  00 80 93 e5                                      ldr r8, [r3]
0061651c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616520  00 70 93 e5                                      ldr r7, [r3]
00616524  0e e1 f3 eb                                      bl #0x30e964
00616528  00 10 a0 e1                                      mov r1, r0
0061652c  08 00 a0 e1                                      mov r0, r8
00616530  0d e2 f3 eb                                      bl #0x30ed6c
00616534  00 10 a0 e1                                      mov r1, r0
00616538  07 00 a0 e1                                      mov r0, r7
0061653c  98 e1 f3 eb                                      bl #0x30eba4
00616540  00 60 a0 e1                                      mov r6, r0
00616544  d5 00 9a e1                                      ldrsb r0, [sl, r5]
00616548  05 e1 f3 eb                                      bl #0x30e964
0061654c  08 10 a0 e1                                      mov r1, r8
00616550  05 e2 f3 eb                                      bl #0x30ed6c
00616554  07 10 a0 e1                                      mov r1, r7
00616558  91 e1 f3 eb                                      bl #0x30eba4
0061655c  00 10 a0 e1                                      mov r1, r0
00616560  06 00 a0 e1                                      mov r0, r6
00616564  90 df f3 eb                                      bl #0x30e3ac
00616568  00 50 a0 e1                                      mov r5, r0
0061656c  04 00 a0 e1                                      mov r0, r4
00616570  37 4e 01 eb                                      bl #0x669e54
00616574  00 00 50 e3                                      cmp r0, #0
00616578  00 50 89 05                                      streq r5, [sb]
0061657c  01 00 00 1a                                      bne #0x616588
00616580  10 d0 8d e2                                      add sp, sp, #0x10
00616584  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00616588  04 00 a0 e1                                      mov r0, r4
0061658c  35 4e 01 eb                                      bl #0x669e68
00616590  00 20 90 e5                                      ldr r2, [r0]
00616594  09 30 a0 e1                                      mov r3, sb
00616598  04 20 83 e4                                      str r2, [r3], #4
0061659c  04 20 90 e5                                      ldr r2, [r0, #4]
006165a0  04 20 89 e5                                      str r2, [sb, #4]
006165a4  04 50 83 e5                                      str r5, [r3, #4]
006165a8  f4 ff ff ea                                      b #0x616580

; FUNCTION 0x006165c0, declared_size=320, range_size=320, mode=arm
; class-group: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >
; alias: _ZN6glitch7collada15animation_track12CInterpreterINS1_21CSceneNodePositionZExIcEEfLi3ENS1_17SUseDefaultValuesILi2EcEEE18getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
; demangled: glitch::collada::animation_track::CInterpreter<glitch::collada::animation_track::CSceneNodePositionZEx<char>, float, 3, glitch::collada::animation_track::SUseDefaultValues<2, char> >::getKeyBasedValueEx(glitch::collada::SAnimationAccessor const&, int, int, int, float, void*)
; decoder-mode: arm
006165c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006165c4  00 40 a0 e1                                      mov r4, r0
006165c8  14 d0 4d e2                                      sub sp, sp, #0x14
006165cc  01 50 a0 e1                                      mov r5, r1
006165d0  04 00 8d e2                                      add r0, sp, #4
006165d4  04 10 a0 e1                                      mov r1, r4
006165d8  02 60 a0 e1                                      mov r6, r2
006165dc  03 b0 a0 e1                                      mov fp, r3
006165e0  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
006165e4  fe f5 ff eb                                      bl #0x613de4
006165e8  04 30 9d e5                                      ldr r3, [sp, #4]
006165ec  04 a0 93 e5                                      ldr sl, [r3, #4]
006165f0  08 30 9d e5                                      ldr r3, [sp, #8]
006165f4  d5 00 9a e1                                      ldrsb r0, [sl, r5]
006165f8  00 80 93 e5                                      ldr r8, [r3]
006165fc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00616600  00 70 93 e5                                      ldr r7, [r3]
00616604  d6 e0 f3 eb                                      bl #0x30e964
00616608  08 10 a0 e1                                      mov r1, r8
0061660c  d6 e1 f3 eb                                      bl #0x30ed6c
00616610  07 10 a0 e1                                      mov r1, r7
00616614  62 e1 f3 eb                                      bl #0x30eba4
00616618  00 50 a0 e1                                      mov r5, r0
0061661c  d6 00 9a e1                                      ldrsb r0, [sl, r6]
00616620  cf e0 f3 eb                                      bl #0x30e964
00616624  00 10 a0 e1                                      mov r1, r0
00616628  08 00 a0 e1                                      mov r0, r8
0061662c  ce e1 f3 eb                                      bl #0x30ed6c
00616630  00 10 a0 e1                                      mov r1, r0
00616634  07 00 a0 e1                                      mov r0, r7
00616638  59 e1 f3 eb                                      bl #0x30eba4
0061663c  05 10 a0 e1                                      mov r1, r5
00616640  59 df f3 eb                                      bl #0x30e3ac
00616644  00 60 a0 e1                                      mov r6, r0
00616648  db 00 9a e1                                      ldrsb r0, [sl, fp]
0061664c  c4 e0 f3 eb                                      bl #0x30e964
00616650  00 10 a0 e1                                      mov r1, r0
00616654  08 00 a0 e1                                      mov r0, r8
00616658  c3 e1 f3 eb                                      bl #0x30ed6c
0061665c  00 10 a0 e1                                      mov r1, r0
00616660  07 00 a0 e1                                      mov r0, r7
00616664  4e e1 f3 eb                                      bl #0x30eba4
00616668  05 10 a0 e1                                      mov r1, r5
0061666c  4e df f3 eb                                      bl #0x30e3ac
00616670  00 50 a0 e1                                      mov r5, r0
00616674  04 00 a0 e1                                      mov r0, r4
00616678  f5 4d 01 eb                                      bl #0x669e54
0061667c  00 00 50 e3                                      cmp r0, #0
00616680  0b 00 00 1a                                      bne #0x6166b4
00616684  06 10 a0 e1                                      mov r1, r6
00616688  05 00 a0 e1                                      mov r0, r5
0061668c  46 df f3 eb                                      bl #0x30e3ac
00616690  00 10 a0 e1                                      mov r1, r0
00616694  38 00 9d e5                                      ldr r0, [sp, #0x38]
00616698  b3 e1 f3 eb                                      bl #0x30ed6c
0061669c  00 10 a0 e1                                      mov r1, r0
006166a0  06 00 a0 e1                                      mov r0, r6
006166a4  3e e1 f3 eb                                      bl #0x30eba4
006166a8  00 00 89 e5                                      str r0, [sb]
006166ac  14 d0 8d e2                                      add sp, sp, #0x14
006166b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006166b4  04 00 a0 e1                                      mov r0, r4
006166b8  ea 4d 01 eb                                      bl #0x669e68
006166bc  00 20 90 e5                                      ldr r2, [r0]
006166c0  09 40 a0 e1                                      mov r4, sb
006166c4  00 30 a0 e1                                      mov r3, r0
006166c8  04 20 84 e4                                      str r2, [r4], #4
006166cc  04 30 93 e5                                      ldr r3, [r3, #4]
006166d0  06 10 a0 e1                                      mov r1, r6
006166d4  05 00 a0 e1                                      mov r0, r5
006166d8  04 30 89 e5                                      str r3, [sb, #4]
006166dc  32 df f3 eb                                      bl #0x30e3ac
006166e0  00 10 a0 e1                                      mov r1, r0
006166e4  38 00 9d e5                                      ldr r0, [sp, #0x38]
006166e8  9f e1 f3 eb                                      bl #0x30ed6c
006166ec  00 10 a0 e1                                      mov r1, r0
006166f0  06 00 a0 e1                                      mov r0, r6
006166f4  2a e1 f3 eb                                      bl #0x30eba4
006166f8  04 00 84 e5                                      str r0, [r4, #4]
006166fc  ea ff ff ea                                      b #0x6166ac
