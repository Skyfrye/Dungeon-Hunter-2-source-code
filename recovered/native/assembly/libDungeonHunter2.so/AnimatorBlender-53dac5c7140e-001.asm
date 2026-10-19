; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00366620, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorBlender
; alias: _ZNK15AnimatorBlender7getTypeEv
; demangled: AnimatorBlender::getType() const
; decoder-mode: arm
00366620  0c 00 a0 e3                                      mov r0, #0xc
00366624  1e ff 2f e1                                      bx lr

; FUNCTION 0x00366628, declared_size=160, range_size=160, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlender17_HandleAnimEndingEPN6glitch5scene19ITimelineControllerE
; demangled: AnimatorBlender::_HandleAnimEnding(glitch::scene::ITimelineController*)
; decoder-mode: arm
00366628  70 40 2d e9                                      push {r4, r5, r6, lr}
0036662c  70 20 90 e5                                      ldr r2, [r0, #0x70]
00366630  28 30 90 e5                                      ldr r3, [r0, #0x28]
00366634  00 40 a0 e1                                      mov r4, r0
00366638  01 60 a0 e1                                      mov r6, r1
0036663c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00366640  03 00 a0 e1                                      mov r0, r3
00366644  00 30 93 e5                                      ldr r3, [r3]
00366648  0f e0 a0 e1                                      mov lr, pc
0036664c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00366650  06 00 50 e1                                      cmp r0, r6
00366654  00 50 a0 e1                                      mov r5, r0
00366658  00 00 00 0a                                      beq #0x366660
0036665c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00366660  00 00 50 e3                                      cmp r0, #0
00366664  14 00 00 0a                                      beq #0x3666bc
00366668  11 13 a0 e3                                      mov r1, #0x44000000
0036666c  7a 18 81 e2                                      add r1, r1, #0x7a0000
00366670  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00366674  bc a1 fe eb                                      bl #0x30ed6c
00366678  93 9f fe eb                                      bl #0x30e4cc
0036667c  11 13 a0 e3                                      mov r1, #0x44000000
00366680  00 60 a0 e1                                      mov r6, r0
00366684  7a 18 81 e2                                      add r1, r1, #0x7a0000
00366688  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
0036668c  b6 a1 fe eb                                      bl #0x30ed6c
00366690  8d 9f fe eb                                      bl #0x30e4cc
00366694  04 30 95 e5                                      ldr r3, [r5, #4]
00366698  00 00 63 e0                                      rsb r0, r3, r0
0036669c  06 00 50 e1                                      cmp r0, r6
003666a0  00 30 a0 a3                                      movge r3, #0
003666a4  01 30 a0 b3                                      movlt r3, #1
003666a8  00 00 50 e3                                      cmp r0, #0
003666ac  00 30 a0 b3                                      movlt r3, #0
003666b0  00 00 53 e3                                      cmp r3, #0
003666b4  06 30 60 10                                      rsbne r3, r0, r6
003666b8  98 30 84 e5                                      str r3, [r4, #0x98]
003666bc  01 30 a0 e3                                      mov r3, #1
003666c0  b8 30 c4 e5                                      strb r3, [r4, #0xb8]
003666c4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003666c8, declared_size=16, range_size=16, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlender7_CBAnimEPN6glitch5scene19ITimelineControllerEPv
; demangled: AnimatorBlender::_CBAnim(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
003666c8  00 30 a0 e1                                      mov r3, r0
003666cc  01 00 a0 e1                                      mov r0, r1
003666d0  03 10 a0 e1                                      mov r1, r3
003666d4  d3 ff ff ea                                      b #0x366628

; FUNCTION 0x003666d8, declared_size=104, range_size=104, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlender8SetScaleEf
; demangled: AnimatorBlender::SetScale(float)
; decoder-mode: arm
003666d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003666dc  28 30 90 e5                                      ldr r3, [r0, #0x28]
003666e0  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
003666e4  00 50 a0 e1                                      mov r5, r0
003666e8  01 70 a0 e1                                      mov r7, r1
003666ec  06 60 63 e0                                      rsb r6, r3, r6
003666f0  46 61 b0 e1                                      asrs r6, r6, #2
003666f4  10 00 00 0a                                      beq #0x36673c
003666f8  00 40 a0 e3                                      mov r4, #0
003666fc  00 00 00 ea                                      b #0x366704
00366700  28 30 95 e5                                      ldr r3, [r5, #0x28]
00366704  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00366708  01 40 84 e2                                      add r4, r4, #1
0036670c  03 00 a0 e1                                      mov r0, r3
00366710  00 30 93 e5                                      ldr r3, [r3]
00366714  0f e0 a0 e1                                      mov lr, pc
00366718  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0036671c  00 30 50 e2                                      subs r3, r0, #0
00366720  07 10 a0 e1                                      mov r1, r7
00366724  02 00 00 0a                                      beq #0x366734
00366728  00 30 93 e5                                      ldr r3, [r3]
0036672c  0f e0 a0 e1                                      mov lr, pc
00366730  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00366734  06 00 54 e1                                      cmp r4, r6
00366738  f0 ff ff 1a                                      bne #0x366700
0036673c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00366740, declared_size=4, range_size=4, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlender9BlendPostEv
; demangled: AnimatorBlender::BlendPost()
; decoder-mode: arm
00366740  1e ff 2f e1                                      bx lr

; FUNCTION 0x00366764, declared_size=4, range_size=4, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlender7compileEPSt6vectorIhN6glitch4core10SAllocatorIhLNS1_6memory13E_MEMORY_HINTE0EEEE
; demangled: AnimatorBlender::compile(std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >*)
; decoder-mode: arm
00366764  8b e1 0b ea                                      b #0x65ed98

; FUNCTION 0x0036679c, declared_size=236, range_size=236, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlender5BlendEi
; demangled: AnimatorBlender::Blend(int)
; decoder-mode: arm
0036679c  70 40 2d e9                                      push {r4, r5, r6, lr}
003667a0  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
003667a4  28 20 90 e5                                      ldr r2, [r0, #0x28]
003667a8  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
003667ac  08 d0 4d e2                                      sub sp, sp, #8
003667b0  05 50 62 e0                                      rsb r5, r2, r5
003667b4  45 51 a0 e1                                      asr r5, r5, #2
003667b8  02 00 55 e3                                      cmp r5, #2
003667bc  00 40 a0 e1                                      mov r4, r0
003667c0  01 60 a0 e1                                      mov r6, r1
003667c4  03 30 8f e0                                      add r3, pc, r3
003667c8  08 00 00 0a                                      beq #0x3667f0
003667cc  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
003667d0  02 20 93 e7                                      ldr r2, [r3, r2]
003667d4  00 20 92 e5                                      ldr r2, [r2]
003667d8  02 00 52 e3                                      cmp r2, #2
003667dc  00 30 a0 03                                      moveq r3, #0
003667e0  00 30 83 05                                      streq r3, [r3]
003667e4  01 00 00 0a                                      beq #0x3667f0
003667e8  01 00 52 e3                                      cmp r2, #1
003667ec  12 00 00 0a                                      beq #0x36683c
003667f0  70 00 94 e5                                      ldr r0, [r4, #0x70]
003667f4  05 10 a0 e1                                      mov r1, r5
003667f8  74 00 84 e5                                      str r0, [r4, #0x74]
003667fc  01 00 80 e2                                      add r0, r0, #1
00366800  c9 a0 fe eb                                      bl #0x30eb2c
00366804  78 00 94 e5                                      ldr r0, [r4, #0x78]
00366808  70 10 84 e5                                      str r1, [r4, #0x70]
0036680c  00 00 50 e3                                      cmp r0, #0
00366810  7c 00 84 e5                                      str r0, [r4, #0x7c]
00366814  04 00 00 da                                      ble #0x36682c
00366818  51 a0 fe eb                                      bl #0x30e964
0036681c  00 10 a0 e1                                      mov r1, r0
00366820  fe 05 a0 e3                                      mov r0, #0x3f800000
00366824  1a a1 fe eb                                      bl #0x30ec94
00366828  80 00 84 e5                                      str r0, [r4, #0x80]
0036682c  c6 6f c6 e1                                      bic r6, r6, r6, asr #31
00366830  78 60 84 e5                                      str r6, [r4, #0x78]
00366834  08 d0 8d e2                                      add sp, sp, #8
00366838  70 80 bd e8                                      pop {r4, r5, r6, pc}
0036683c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00366840  34 10 9f e5                                      ldr r1, [pc, #0x34]
00366844  34 20 9f e5                                      ldr r2, [pc, #0x34]
00366848  00 00 93 e7                                      ldr r0, [r3, r0]
0036684c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00366850  7a c0 a0 e3                                      mov ip, #0x7a
00366854  01 10 8f e0                                      add r1, pc, r1
00366858  02 20 8f e0                                      add r2, pc, r2
0036685c  03 30 8f e0                                      add r3, pc, r3
00366860  a8 00 80 e2                                      add r0, r0, #0xa8
00366864  00 c0 8d e5                                      str ip, [sp]
00366868  e5 9d fe eb                                      bl #0x30e004
0036686c  df ff ff ea                                      b #0x3667f0
; mapping-symbol data/literal pool
00366870  cc e2 62 00 c0 39 00 00 c0 19 00 00 84 7b 55 00  .byte 0xcc, 0xe2, 0x62, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x84, 0x7b, 0x55, 0x00
00366880  88 a5 55 00 9c a5 55 00                          .byte 0x88, 0xa5, 0x55, 0x00, 0x9c, 0xa5, 0x55, 0x00

; FUNCTION 0x00366c8c, declared_size=40, range_size=40, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlender8onUnbindEPN6glitch5scene10ISceneNodeE
; demangled: AnimatorBlender::onUnbind(glitch::scene::ISceneNode*)
; decoder-mode: arm
00366c8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00366c90  00 40 a0 e1                                      mov r4, r0
00366c94  01 50 a0 e1                                      mov r5, r1
00366c98  88 00 80 e2                                      add r0, r0, #0x88
00366c9c  00 10 a0 e3                                      mov r1, #0
00366ca0  b6 ff ff eb                                      bl #0x366b80
00366ca4  04 00 a0 e1                                      mov r0, r4
00366ca8  05 10 a0 e1                                      mov r1, r5
00366cac  70 40 bd e8                                      pop {r4, r5, r6, lr}
00366cb0  39 04 0c ea                                      b #0x667d9c

; FUNCTION 0x00366cb4, declared_size=220, range_size=220, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlender11animateNodeEPN6glitch5scene10ISceneNodeEj
; demangled: AnimatorBlender::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
00366cb4  70 40 2d e9                                      push {r4, r5, r6, lr}
00366cb8  7c 30 90 e5                                      ldr r3, [r0, #0x7c]
00366cbc  00 40 a0 e1                                      mov r4, r0
00366cc0  02 50 a0 e1                                      mov r5, r2
00366cc4  00 00 53 e3                                      cmp r3, #0
00366cc8  84 00 90 e5                                      ldr r0, [r0, #0x84]
00366ccc  11 00 00 ba                                      blt #0x366d18
00366cd0  02 00 60 e0                                      rsb r0, r0, r2
00366cd4  03 00 60 e0                                      rsb r0, r0, r3
00366cd8  00 00 50 e3                                      cmp r0, #0
00366cdc  7c 00 84 e5                                      str r0, [r4, #0x7c]
00366ce0  21 00 00 da                                      ble #0x366d6c
00366ce4  1e 9f fe eb                                      bl #0x30e964
00366ce8  80 10 94 e5                                      ldr r1, [r4, #0x80]
00366cec  1e a0 fe eb                                      bl #0x30ed6c
00366cf0  34 20 94 e5                                      ldr r2, [r4, #0x34]
00366cf4  74 c0 94 e5                                      ldr ip, [r4, #0x74]
00366cf8  00 30 a0 e1                                      mov r3, r0
00366cfc  00 10 a0 e1                                      mov r1, r0
00366d00  0c 31 82 e7                                      str r3, [r2, ip, lsl #2]
00366d04  fe 05 a0 e3                                      mov r0, #0x3f800000
00366d08  a7 9d fe eb                                      bl #0x30e3ac
00366d0c  70 20 94 e5                                      ldr r2, [r4, #0x70]
00366d10  34 30 94 e5                                      ldr r3, [r4, #0x34]
00366d14  02 01 83 e7                                      str r0, [r3, r2, lsl #2]
00366d18  00 30 94 e5                                      ldr r3, [r4]
00366d1c  04 00 a0 e1                                      mov r0, r4
00366d20  05 10 a0 e1                                      mov r1, r5
00366d24  88 60 84 e2                                      add r6, r4, #0x88
00366d28  0f e0 a0 e1                                      mov lr, pc
00366d2c  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00366d30  05 10 a0 e1                                      mov r1, r5
00366d34  06 00 a0 e1                                      mov r0, r6
00366d38  d2 fe ff eb                                      bl #0x366888
00366d3c  70 20 94 e5                                      ldr r2, [r4, #0x70]
00366d40  28 30 94 e5                                      ldr r3, [r4, #0x28]
00366d44  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00366d48  03 00 a0 e1                                      mov r0, r3
00366d4c  00 30 93 e5                                      ldr r3, [r3]
00366d50  0f e0 a0 e1                                      mov lr, pc
00366d54  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00366d58  00 10 a0 e1                                      mov r1, r0
00366d5c  06 00 a0 e1                                      mov r0, r6
00366d60  a9 f5 ff eb                                      bl #0x36440c
00366d64  84 50 84 e5                                      str r5, [r4, #0x84]
00366d68  70 80 bd e8                                      pop {r4, r5, r6, pc}
00366d6c  74 20 94 e5                                      ldr r2, [r4, #0x74]
00366d70  34 30 94 e5                                      ldr r3, [r4, #0x34]
00366d74  00 10 a0 e3                                      mov r1, #0
00366d78  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
00366d7c  70 20 94 e5                                      ldr r2, [r4, #0x70]
00366d80  34 30 94 e5                                      ldr r3, [r4, #0x34]
00366d84  fe 15 a0 e3                                      mov r1, #0x3f800000
00366d88  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
00366d8c  e1 ff ff ea                                      b #0x366d18

; FUNCTION 0x00366d90, declared_size=296, range_size=296, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlender10updateTimeEj
; demangled: AnimatorBlender::updateTime(unsigned int)
; decoder-mode: arm
00366d90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00366d94  7c 30 90 e5                                      ldr r3, [r0, #0x7c]
00366d98  00 50 a0 e1                                      mov r5, r0
00366d9c  01 70 a0 e1                                      mov r7, r1
00366da0  00 00 53 e3                                      cmp r3, #0
00366da4  84 00 90 e5                                      ldr r0, [r0, #0x84]
00366da8  11 00 00 ba                                      blt #0x366df4
00366dac  01 00 60 e0                                      rsb r0, r0, r1
00366db0  03 00 60 e0                                      rsb r0, r0, r3
00366db4  00 00 50 e3                                      cmp r0, #0
00366db8  7c 00 85 e5                                      str r0, [r5, #0x7c]
00366dbc  34 00 00 da                                      ble #0x366e94
00366dc0  e7 9e fe eb                                      bl #0x30e964
00366dc4  80 10 95 e5                                      ldr r1, [r5, #0x80]
00366dc8  e7 9f fe eb                                      bl #0x30ed6c
00366dcc  34 20 95 e5                                      ldr r2, [r5, #0x34]
00366dd0  74 c0 95 e5                                      ldr ip, [r5, #0x74]
00366dd4  00 30 a0 e1                                      mov r3, r0
00366dd8  00 10 a0 e1                                      mov r1, r0
00366ddc  0c 31 82 e7                                      str r3, [r2, ip, lsl #2]
00366de0  fe 05 a0 e3                                      mov r0, #0x3f800000
00366de4  70 9d fe eb                                      bl #0x30e3ac
00366de8  70 20 95 e5                                      ldr r2, [r5, #0x70]
00366dec  34 30 95 e5                                      ldr r3, [r5, #0x34]
00366df0  02 01 83 e7                                      str r0, [r3, r2, lsl #2]
00366df4  2c 60 95 e5                                      ldr r6, [r5, #0x2c]
00366df8  28 30 95 e5                                      ldr r3, [r5, #0x28]
00366dfc  06 60 63 e0                                      rsb r6, r3, r6
00366e00  46 61 b0 e1                                      asrs r6, r6, #2
00366e04  14 00 00 0a                                      beq #0x366e5c
00366e08  00 40 a0 e3                                      mov r4, #0
00366e0c  02 00 00 ea                                      b #0x366e1c
00366e10  01 40 84 e2                                      add r4, r4, #1
00366e14  06 00 54 e1                                      cmp r4, r6
00366e18  0f 00 00 0a                                      beq #0x366e5c
00366e1c  34 30 95 e5                                      ldr r3, [r5, #0x34]
00366e20  00 10 a0 e3                                      mov r1, #0
00366e24  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00366e28  57 9c fe eb                                      bl #0x30df8c
00366e2c  00 00 50 e3                                      cmp r0, #0
00366e30  f6 ff ff 1a                                      bne #0x366e10
00366e34  28 30 95 e5                                      ldr r3, [r5, #0x28]
00366e38  07 10 a0 e1                                      mov r1, r7
00366e3c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00366e40  01 40 84 e2                                      add r4, r4, #1
00366e44  03 00 a0 e1                                      mov r0, r3
00366e48  00 30 93 e5                                      ldr r3, [r3]
00366e4c  0f e0 a0 e1                                      mov lr, pc
00366e50  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00366e54  06 00 54 e1                                      cmp r4, r6
00366e58  ef ff ff 1a                                      bne #0x366e1c
00366e5c  05 00 a0 e1                                      mov r0, r5
00366e60  cb fd ff eb                                      bl #0x366594
00366e64  70 20 95 e5                                      ldr r2, [r5, #0x70]
00366e68  28 30 95 e5                                      ldr r3, [r5, #0x28]
00366e6c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00366e70  03 00 a0 e1                                      mov r0, r3
00366e74  00 30 93 e5                                      ldr r3, [r3]
00366e78  0f e0 a0 e1                                      mov lr, pc
00366e7c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00366e80  00 10 a0 e1                                      mov r1, r0
00366e84  88 00 85 e2                                      add r0, r5, #0x88
00366e88  5f f5 ff eb                                      bl #0x36440c
00366e8c  84 70 85 e5                                      str r7, [r5, #0x84]
00366e90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00366e94  74 20 95 e5                                      ldr r2, [r5, #0x74]
00366e98  34 30 95 e5                                      ldr r3, [r5, #0x34]
00366e9c  00 10 a0 e3                                      mov r1, #0
00366ea0  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
00366ea4  70 20 95 e5                                      ldr r2, [r5, #0x70]
00366ea8  34 30 95 e5                                      ldr r3, [r5, #0x34]
00366eac  fe 15 a0 e3                                      mov r1, #0x3f800000
00366eb0  02 11 83 e7                                      str r1, [r3, r2, lsl #2]
00366eb4  ce ff ff ea                                      b #0x366df4

; FUNCTION 0x00366eb8, declared_size=196, range_size=196, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlender12SetCallbacksEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
; demangled: AnimatorBlender::SetCallbacks(void (*)(glitch::scene::ITimelineController*, void*), void*, void (*)(glitch::collada::STriggeredEvent const&, void*), void*)
; decoder-mode: arm
00366eb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00366ebc  00 40 a0 e1                                      mov r4, r0
00366ec0  2c 60 94 e5                                      ldr r6, [r4, #0x2c]
00366ec4  28 00 90 e5                                      ldr r0, [r0, #0x28]
00366ec8  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
00366ecc  0c d0 4d e2                                      sub sp, sp, #0xc
00366ed0  06 60 60 e0                                      rsb r6, r0, r6
00366ed4  46 61 b0 e1                                      asrs r6, r6, #2
00366ed8  05 50 8f e0                                      add r5, pc, r5
00366edc  01 80 a0 e1                                      mov r8, r1
00366ee0  02 70 a0 e1                                      mov r7, r2
00366ee4  03 90 a0 e1                                      mov sb, r3
00366ee8  30 b0 9d e5                                      ldr fp, [sp, #0x30]
00366eec  1a 00 00 0a                                      beq #0x366f5c
00366ef0  80 20 9f e5                                      ldr r2, [pc, #0x80]
00366ef4  00 a0 a0 e3                                      mov sl, #0
00366ef8  04 20 8d e5                                      str r2, [sp, #4]
00366efc  00 00 00 ea                                      b #0x366f04
00366f00  28 00 94 e5                                      ldr r0, [r4, #0x28]
00366f04  0a 31 90 e7                                      ldr r3, [r0, sl, lsl #2]
00366f08  0a 11 a0 e1                                      lsl r1, sl, #2
00366f0c  01 a0 8a e2                                      add sl, sl, #1
00366f10  18 20 93 e5                                      ldr r2, [r3, #0x18]
00366f14  1c 90 83 e5                                      str sb, [r3, #0x1c]
00366f18  20 b0 83 e5                                      str fp, [r3, #0x20]
00366f1c  00 00 52 e3                                      cmp r2, #0
00366f20  0c b0 82 15                                      strne fp, [r2, #0xc]
00366f24  08 90 82 15                                      strne sb, [r2, #8]
00366f28  28 30 94 e5                                      ldr r3, [r4, #0x28]
00366f2c  01 30 93 e7                                      ldr r3, [r3, r1]
00366f30  03 00 a0 e1                                      mov r0, r3
00366f34  00 30 93 e5                                      ldr r3, [r3]
00366f38  0f e0 a0 e1                                      mov lr, pc
00366f3c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00366f40  00 00 50 e3                                      cmp r0, #0
00366f44  04 20 9d 15                                      ldrne r2, [sp, #4]
00366f48  0c 40 80 15                                      strne r4, [r0, #0xc]
00366f4c  02 30 95 17                                      ldrne r3, [r5, r2]
00366f50  08 30 80 15                                      strne r3, [r0, #8]
00366f54  06 00 5a e1                                      cmp sl, r6
00366f58  e8 ff ff 1a                                      bne #0x366f00
00366f5c  88 00 84 e2                                      add r0, r4, #0x88
00366f60  08 10 a0 e1                                      mov r1, r8
00366f64  07 20 a0 e1                                      mov r2, r7
00366f68  0c d0 8d e2                                      add sp, sp, #0xc
00366f6c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00366f70  22 f5 ff ea                                      b #0x364400
; mapping-symbol data/literal pool
00366f74  b8 db 62 00 dc 23 00 00                          .byte 0xb8, 0xdb, 0x62, 0x00, 0xdc, 0x23, 0x00, 0x00

; FUNCTION 0x00367018, declared_size=176, range_size=176, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlenderC1Ev
; demangled: AnimatorBlender::AnimatorBlender()
; decoder-mode: arm
00367018  70 40 2d e9                                      push {r4, r5, r6, lr}
0036701c  90 50 9f e5                                      ldr r5, [pc, #0x90]
00367020  90 30 9f e5                                      ldr r3, [pc, #0x90]
00367024  90 10 9f e5                                      ldr r1, [pc, #0x90]
00367028  05 50 8f e0                                      add r5, pc, r5
0036702c  03 30 95 e7                                      ldr r3, [r5, r3]
00367030  01 10 95 e7                                      ldr r1, [r5, r1]
00367034  01 20 a0 e3                                      mov r2, #1
00367038  08 30 83 e2                                      add r3, r3, #8
0036703c  cc 20 80 e5                                      str r2, [r0, #0xcc]
00367040  c8 30 80 e5                                      str r3, [r0, #0xc8]
00367044  04 10 81 e2                                      add r1, r1, #4
00367048  00 40 a0 e1                                      mov r4, r0
0036704c  ca ff ff eb                                      bl #0x366f7c
00367050  68 20 9f e5                                      ldr r2, [pc, #0x68]
00367054  00 10 a0 e3                                      mov r1, #0
00367058  00 30 a0 e3                                      mov r3, #0
0036705c  02 20 95 e7                                      ldr r2, [r5, r2]
00367060  80 10 84 e5                                      str r1, [r4, #0x80]
00367064  84 30 84 e5                                      str r3, [r4, #0x84]
00367068  a0 10 82 e2                                      add r1, r2, #0xa0
0036706c  0c 00 82 e2                                      add r0, r2, #0xc
00367070  bc 20 82 e2                                      add r2, r2, #0xbc
00367074  03 00 84 e8                                      stm r4, {r0, r1}
00367078  70 30 84 e5                                      str r3, [r4, #0x70]
0036707c  74 30 84 e5                                      str r3, [r4, #0x74]
00367080  78 30 84 e5                                      str r3, [r4, #0x78]
00367084  7c 30 84 e5                                      str r3, [r4, #0x7c]
00367088  c8 20 84 e5                                      str r2, [r4, #0xc8]
0036708c  88 00 84 e2                                      add r0, r4, #0x88
00367090  04 10 a0 e1                                      mov r1, r4
00367094  a5 f4 ff eb                                      bl #0x364330
00367098  24 30 9f e5                                      ldr r3, [pc, #0x24]
0036709c  c4 40 84 e5                                      str r4, [r4, #0xc4]
003670a0  04 00 a0 e1                                      mov r0, r4
003670a4  03 30 95 e7                                      ldr r3, [r5, r3]
003670a8  08 30 83 e2                                      add r3, r3, #8
003670ac  88 30 84 e5                                      str r3, [r4, #0x88]
003670b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003670b4  68 da 62 00 44 2b 00 00 40 17 00 00 24 33 00 00  .byte 0x68, 0xda, 0x62, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x40, 0x17, 0x00, 0x00, 0x24, 0x33, 0x00, 0x00
003670c4  e0 4a 00 00                                      .byte 0xe0, 0x4a, 0x00, 0x00

; FUNCTION 0x003670c8, declared_size=148, range_size=148, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlenderC2Ev
; demangled: AnimatorBlender::AnimatorBlender()
; decoder-mode: arm
003670c8  70 40 2d e9                                      push {r4, r5, r6, lr}
003670cc  01 60 a0 e1                                      mov r6, r1
003670d0  78 50 9f e5                                      ldr r5, [pc, #0x78]
003670d4  04 10 81 e2                                      add r1, r1, #4
003670d8  00 40 a0 e1                                      mov r4, r0
003670dc  a6 ff ff eb                                      bl #0x366f7c
003670e0  00 20 96 e5                                      ldr r2, [r6]
003670e4  68 30 9f e5                                      ldr r3, [pc, #0x68]
003670e8  05 50 8f e0                                      add r5, pc, r5
003670ec  00 20 84 e5                                      str r2, [r4]
003670f0  03 30 95 e7                                      ldr r3, [r5, r3]
003670f4  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
003670f8  24 00 96 e5                                      ldr r0, [r6, #0x24]
003670fc  a0 20 83 e2                                      add r2, r3, #0xa0
00367100  00 30 a0 e3                                      mov r3, #0
00367104  01 00 84 e7                                      str r0, [r4, r1]
00367108  04 20 84 e5                                      str r2, [r4, #4]
0036710c  00 20 a0 e3                                      mov r2, #0
00367110  84 30 84 e5                                      str r3, [r4, #0x84]
00367114  70 30 84 e5                                      str r3, [r4, #0x70]
00367118  74 30 84 e5                                      str r3, [r4, #0x74]
0036711c  78 30 84 e5                                      str r3, [r4, #0x78]
00367120  7c 30 84 e5                                      str r3, [r4, #0x7c]
00367124  80 20 84 e5                                      str r2, [r4, #0x80]
00367128  88 00 84 e2                                      add r0, r4, #0x88
0036712c  04 10 a0 e1                                      mov r1, r4
00367130  7e f4 ff eb                                      bl #0x364330
00367134  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
00367138  c4 40 84 e5                                      str r4, [r4, #0xc4]
0036713c  04 00 a0 e1                                      mov r0, r4
00367140  03 30 95 e7                                      ldr r3, [r5, r3]
00367144  08 30 83 e2                                      add r3, r3, #8
00367148  88 30 84 e5                                      str r3, [r4, #0x88]
0036714c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00367150  a8 d9 62 00 24 33 00 00 e0 4a 00 00              .byte 0xa8, 0xd9, 0x62, 0x00, 0x24, 0x33, 0x00, 0x00, 0xe0, 0x4a, 0x00, 0x00

; FUNCTION 0x0036715c, declared_size=108, range_size=108, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlenderD2Ev
; demangled: AnimatorBlender::~AnimatorBlender()
; decoder-mode: arm
0036715c  70 40 2d e9                                      push {r4, r5, r6, lr}
00367160  54 30 9f e5                                      ldr r3, [pc, #0x54]
00367164  00 c0 91 e5                                      ldr ip, [r1]
00367168  01 50 a0 e1                                      mov r5, r1
0036716c  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00367170  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
00367174  03 30 8f e0                                      add r3, pc, r3
00367178  00 c0 80 e5                                      str ip, [r0]
0036717c  02 20 93 e7                                      ldr r2, [r3, r2]
00367180  01 10 93 e7                                      ldr r1, [r3, r1]
00367184  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
00367188  24 e0 95 e5                                      ldr lr, [r5, #0x24]
0036718c  00 40 a0 e1                                      mov r4, r0
00367190  08 20 82 e2                                      add r2, r2, #8
00367194  a0 10 81 e2                                      add r1, r1, #0xa0
00367198  0c e0 84 e7                                      str lr, [r4, ip]
0036719c  04 10 84 e5                                      str r1, [r4, #4]
003671a0  88 20 a0 e5                                      str r2, [r0, #0x88]!
003671a4  b1 f5 ff eb                                      bl #0x364870
003671a8  04 00 a0 e1                                      mov r0, r4
003671ac  04 10 85 e2                                      add r1, r5, #4
003671b0  30 de 0b eb                                      bl #0x65ea78
003671b4  04 00 a0 e1                                      mov r0, r4
003671b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003671bc  1c d9 62 00 e0 4a 00 00 24 33 00 00              .byte 0x1c, 0xd9, 0x62, 0x00, 0xe0, 0x4a, 0x00, 0x00, 0x24, 0x33, 0x00, 0x00

; FUNCTION 0x00367204, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorBlender
; alias: _ZThn4_N15AnimatorBlenderD1Ev
; demangled: non-virtual thunk to AnimatorBlender::~AnimatorBlender()
; decoder-mode: arm
00367204  04 00 40 e2                                      sub r0, r0, #4
00367208  ff ff ff ea                                      b #0x36720c

; FUNCTION 0x0036720c, declared_size=112, range_size=112, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlenderD1Ev
; demangled: AnimatorBlender::~AnimatorBlender()
; decoder-mode: arm
0036720c  70 40 2d e9                                      push {r4, r5, r6, lr}
00367210  54 50 9f e5                                      ldr r5, [pc, #0x54]
00367214  54 30 9f e5                                      ldr r3, [pc, #0x54]
00367218  54 20 9f e5                                      ldr r2, [pc, #0x54]
0036721c  05 50 8f e0                                      add r5, pc, r5
00367220  03 30 95 e7                                      ldr r3, [r5, r3]
00367224  02 20 95 e7                                      ldr r2, [r5, r2]
00367228  00 40 a0 e1                                      mov r4, r0
0036722c  0c c0 83 e2                                      add ip, r3, #0xc
00367230  a0 10 83 e2                                      add r1, r3, #0xa0
00367234  08 20 82 e2                                      add r2, r2, #8
00367238  bc 30 83 e2                                      add r3, r3, #0xbc
0036723c  00 c0 84 e5                                      str ip, [r4]
00367240  c8 30 84 e5                                      str r3, [r4, #0xc8]
00367244  04 10 84 e5                                      str r1, [r4, #4]
00367248  88 20 a0 e5                                      str r2, [r0, #0x88]!
0036724c  87 f5 ff eb                                      bl #0x364870
00367250  20 10 9f e5                                      ldr r1, [pc, #0x20]
00367254  04 00 a0 e1                                      mov r0, r4
00367258  01 10 95 e7                                      ldr r1, [r5, r1]
0036725c  04 10 81 e2                                      add r1, r1, #4
00367260  04 de 0b eb                                      bl #0x65ea78
00367264  04 00 a0 e1                                      mov r0, r4
00367268  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0036726c  74 d8 62 00 24 33 00 00 e0 4a 00 00 40 17 00 00  .byte 0x74, 0xd8, 0x62, 0x00, 0x24, 0x33, 0x00, 0x00, 0xe0, 0x4a, 0x00, 0x00, 0x40, 0x17, 0x00, 0x00

; FUNCTION 0x0036727c, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorBlender
; alias: _ZThn4_N15AnimatorBlenderD0Ev
; demangled: non-virtual thunk to AnimatorBlender::~AnimatorBlender()
; decoder-mode: arm
0036727c  04 00 40 e2                                      sub r0, r0, #4
00367280  ff ff ff ea                                      b #0x367284

; FUNCTION 0x00367284, declared_size=28, range_size=28, mode=arm
; class-group: AnimatorBlender
; alias: _ZN15AnimatorBlenderD0Ev
; demangled: AnimatorBlender::~AnimatorBlender()
; decoder-mode: arm
00367284  10 40 2d e9                                      push {r4, lr}
00367288  00 40 a0 e1                                      mov r4, r0
0036728c  de ff ff eb                                      bl #0x36720c
00367290  04 00 a0 e1                                      mov r0, r4
00367294  69 a4 fe eb                                      bl #0x310440
00367298  04 00 a0 e1                                      mov r0, r4
0036729c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003672a0, declared_size=16, range_size=16, mode=arm
; class-group: AnimatorBlender
; alias: _ZTv0_n12_N15AnimatorBlenderD0Ev
; demangled: virtual thunk to AnimatorBlender::~AnimatorBlender()
; decoder-mode: arm
003672a0  00 30 90 e5                                      ldr r3, [r0]
003672a4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003672a8  03 00 80 e0                                      add r0, r0, r3
003672ac  f4 ff ff ea                                      b #0x367284

; FUNCTION 0x003672b0, declared_size=16, range_size=16, mode=arm
; class-group: AnimatorBlender
; alias: _ZTv0_n12_N15AnimatorBlenderD1Ev
; demangled: virtual thunk to AnimatorBlender::~AnimatorBlender()
; decoder-mode: arm
003672b0  00 30 90 e5                                      ldr r3, [r0]
003672b4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003672b8  03 00 80 e0                                      add r0, r0, r3
003672bc  d2 ff ff ea                                      b #0x36720c
