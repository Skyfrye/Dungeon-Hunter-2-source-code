; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00496cc4, declared_size=24, range_size=24, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnim10SetVisibleEb
; demangled: SWFAnim::SetVisible(bool)
; decoder-mode: arm
00496cc4  10 40 2d e9                                      push {r4, lr}
00496cc8  0c 00 80 e2                                      add r0, r0, #0xc
00496ccc  01 40 a0 e1                                      mov r4, r1
00496cd0  1e 44 fe eb                                      bl #0x427d50
00496cd4  9b 40 c0 e5                                      strb r4, [r0, #0x9b]
00496cd8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00496cdc, declared_size=20, range_size=20, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnim9IsVisibleEv
; demangled: SWFAnim::IsVisible()
; decoder-mode: arm
00496cdc  10 40 2d e9                                      push {r4, lr}
00496ce0  0c 00 80 e2                                      add r0, r0, #0xc
00496ce4  19 44 fe eb                                      bl #0x427d50
00496ce8  01 00 a0 e3                                      mov r0, #1
00496cec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00496cf0, declared_size=36, range_size=36, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnim13IsAnimPlayingEv
; demangled: SWFAnim::IsAnimPlaying()
; decoder-mode: arm
00496cf0  10 40 2d e9                                      push {r4, lr}
00496cf4  0c 00 80 e2                                      add r0, r0, #0xc
00496cf8  14 44 fe eb                                      bl #0x427d50
00496cfc  00 30 90 e5                                      ldr r3, [r0]
00496d00  0f e0 a0 e1                                      mov lr, pc
00496d04  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00496d08  01 00 50 e2                                      subs r0, r0, #1
00496d0c  01 00 a0 13                                      movne r0, #1
00496d10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00496d14, declared_size=84, range_size=84, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnim8PlayAnimEPKc
; demangled: SWFAnim::PlayAnim(char const*)
; decoder-mode: arm
00496d14  70 40 2d e9                                      push {r4, r5, r6, lr}
00496d18  0c 40 80 e2                                      add r4, r0, #0xc
00496d1c  08 60 90 e5                                      ldr r6, [r0, #8]
00496d20  04 00 a0 e1                                      mov r0, r4
00496d24  01 50 a0 e1                                      mov r5, r1
00496d28  08 44 fe eb                                      bl #0x427d50
00496d2c  05 20 a0 e1                                      mov r2, r5
00496d30  00 10 a0 e1                                      mov r1, r0
00496d34  00 30 a0 e3                                      mov r3, #0
00496d38  06 00 a0 e1                                      mov r0, r6
00496d3c  30 53 0c eb                                      bl #0x7aba04
00496d40  00 00 50 e3                                      cmp r0, #0
00496d44  06 00 00 0a                                      beq #0x496d64
00496d48  04 00 a0 e1                                      mov r0, r4
00496d4c  ff 43 fe eb                                      bl #0x427d50
00496d50  00 10 a0 e3                                      mov r1, #0
00496d54  00 30 90 e5                                      ldr r3, [r0]
00496d58  0f e0 a0 e1                                      mov lr, pc
00496d5c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00496d60  01 00 a0 e3                                      mov r0, #1
00496d64  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00496d68, declared_size=52, range_size=52, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnim11SetPositionEii
; demangled: SWFAnim::SetPosition(int, int)
; decoder-mode: arm
00496d68  70 40 2d e9                                      push {r4, r5, r6, lr}
00496d6c  00 30 a0 e1                                      mov r3, r0
00496d70  0c 00 80 e2                                      add r0, r0, #0xc
00496d74  01 50 a0 e1                                      mov r5, r1
00496d78  02 40 a0 e1                                      mov r4, r2
00496d7c  08 60 93 e5                                      ldr r6, [r3, #8]
00496d80  f2 43 fe eb                                      bl #0x427d50
00496d84  05 20 a0 e1                                      mov r2, r5
00496d88  00 10 a0 e1                                      mov r1, r0
00496d8c  04 30 a0 e1                                      mov r3, r4
00496d90  06 00 a0 e1                                      mov r0, r6
00496d94  70 40 bd e8                                      pop {r4, r5, r6, lr}
00496d98  94 4d 0c ea                                      b #0x7aa3f0

; FUNCTION 0x00496d9c, declared_size=204, range_size=204, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnim13SetPosition3DERK7Point3DIfE
; demangled: SWFAnim::SetPosition3D(Point3D<float> const&)
; decoder-mode: arm
00496d9c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00496da0  00 e0 91 e5                                      ldr lr, [r1]
00496da4  04 c0 91 e5                                      ldr ip, [r1, #4]
00496da8  08 20 91 e5                                      ldr r2, [r1, #8]
00496dac  1c d0 4d e2                                      sub sp, sp, #0x1c
00496db0  00 40 a0 e1                                      mov r4, r0
00496db4  10 10 8d e2                                      add r1, sp, #0x10
00496db8  00 30 a0 e3                                      mov r3, #0
00496dbc  0c 50 84 e2                                      add r5, r4, #0xc
00496dc0  04 00 8d e2                                      add r0, sp, #4
00496dc4  0c 20 8d e5                                      str r2, [sp, #0xc]
00496dc8  04 e0 8d e5                                      str lr, [sp, #4]
00496dcc  08 c0 8d e5                                      str ip, [sp, #8]
00496dd0  14 30 8d e5                                      str r3, [sp, #0x14]
00496dd4  10 30 8d e5                                      str r3, [sp, #0x10]
00496dd8  94 de 01 eb                                      bl #0x50e830
00496ddc  05 00 a0 e1                                      mov r0, r5
00496de0  10 a0 9d e5                                      ldr sl, [sp, #0x10]
00496de4  14 70 9d e5                                      ldr r7, [sp, #0x14]
00496de8  d8 43 fe eb                                      bl #0x427d50
00496dec  00 30 90 e5                                      ldr r3, [r0]
00496df0  0f e0 a0 e1                                      mov lr, pc
00496df4  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00496df8  ce fd fd eb                                      bl #0x416538
00496dfc  00 80 a0 e1                                      mov r8, r0
00496e00  05 00 a0 e1                                      mov r0, r5
00496e04  d1 43 fe eb                                      bl #0x427d50
00496e08  00 30 90 e5                                      ldr r3, [r0]
00496e0c  0f e0 a0 e1                                      mov lr, pc
00496e10  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00496e14  d7 fd fd eb                                      bl #0x416578
00496e18  00 60 a0 e1                                      mov r6, r0
00496e1c  0a 00 a0 e1                                      mov r0, sl
00496e20  cf de f9 eb                                      bl #0x30e964
00496e24  00 10 a0 e1                                      mov r1, r0
00496e28  08 00 a0 e1                                      mov r0, r8
00496e2c  ce df f9 eb                                      bl #0x30ed6c
00496e30  a5 dd f9 eb                                      bl #0x30e4cc
00496e34  00 50 a0 e1                                      mov r5, r0
00496e38  07 00 a0 e1                                      mov r0, r7
00496e3c  c8 de f9 eb                                      bl #0x30e964
00496e40  00 10 a0 e1                                      mov r1, r0
00496e44  06 00 a0 e1                                      mov r0, r6
00496e48  c7 df f9 eb                                      bl #0x30ed6c
00496e4c  9e dd f9 eb                                      bl #0x30e4cc
00496e50  05 10 a0 e1                                      mov r1, r5
00496e54  00 20 a0 e1                                      mov r2, r0
00496e58  04 00 a0 e1                                      mov r0, r4
00496e5c  c1 ff ff eb                                      bl #0x496d68
00496e60  1c d0 8d e2                                      add sp, sp, #0x1c
00496e64  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00496e68, declared_size=60, range_size=60, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnimD1Ev
; demangled: SWFAnim::~SWFAnim()
; decoder-mode: arm
00496e68  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00496e6c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00496e70  10 40 2d e9                                      push {r4, lr}
00496e74  03 30 8f e0                                      add r3, pc, r3
00496e78  02 20 93 e7                                      ldr r2, [r3, r2]
00496e7c  00 40 a0 e1                                      mov r4, r0
00496e80  08 20 82 e2                                      add r2, r2, #8
00496e84  3c 20 80 e4                                      str r2, [r0], #0x3c
00496e88  db 0e fe eb                                      bl #0x41a9fc
00496e8c  0c 00 84 e2                                      add r0, r4, #0xc
00496e90  d9 0e fe eb                                      bl #0x41a9fc
00496e94  04 00 a0 e1                                      mov r0, r4
00496e98  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00496e9c  1c dc 4f 00 d0 1b 00 00                          .byte 0x1c, 0xdc, 0x4f, 0x00, 0xd0, 0x1b, 0x00, 0x00

; FUNCTION 0x00496ea4, declared_size=28, range_size=28, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnimD0Ev
; demangled: SWFAnim::~SWFAnim()
; decoder-mode: arm
00496ea4  10 40 2d e9                                      push {r4, lr}
00496ea8  00 40 a0 e1                                      mov r4, r0
00496eac  ed ff ff eb                                      bl #0x496e68
00496eb0  04 00 a0 e1                                      mov r0, r4
00496eb4  61 e5 f9 eb                                      bl #0x310440
00496eb8  04 00 a0 e1                                      mov r0, r4
00496ebc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00496ec0, declared_size=60, range_size=60, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnimD2Ev
; demangled: SWFAnim::~SWFAnim()
; decoder-mode: arm
00496ec0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00496ec4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00496ec8  10 40 2d e9                                      push {r4, lr}
00496ecc  03 30 8f e0                                      add r3, pc, r3
00496ed0  02 20 93 e7                                      ldr r2, [r3, r2]
00496ed4  00 40 a0 e1                                      mov r4, r0
00496ed8  08 20 82 e2                                      add r2, r2, #8
00496edc  3c 20 80 e4                                      str r2, [r0], #0x3c
00496ee0  c5 0e fe eb                                      bl #0x41a9fc
00496ee4  0c 00 84 e2                                      add r0, r4, #0xc
00496ee8  c3 0e fe eb                                      bl #0x41a9fc
00496eec  04 00 a0 e1                                      mov r0, r4
00496ef0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00496ef4  c4 db 4f 00 d0 1b 00 00                          .byte 0xc4, 0xdb, 0x4f, 0x00, 0xd0, 0x1b, 0x00, 0x00

; FUNCTION 0x00496efc, declared_size=128, range_size=128, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnim7SetTextEPKc
; demangled: SWFAnim::SetText(char const*)
; decoder-mode: arm
00496efc  70 40 2d e9                                      push {r4, r5, r6, lr}
00496f00  68 30 90 e5                                      ldr r3, [r0, #0x68]
00496f04  00 50 a0 e1                                      mov r5, r0
00496f08  01 40 a0 e1                                      mov r4, r1
00496f0c  00 00 53 e3                                      cmp r3, #0
00496f10  0d 00 00 0a                                      beq #0x496f4c
00496f14  64 00 90 e5                                      ldr r0, [r0, #0x64]
00496f18  04 30 d0 e5                                      ldrb r3, [r0, #4]
00496f1c  00 00 53 e3                                      cmp r3, #0
00496f20  0a 00 00 0a                                      beq #0x496f50
00496f24  3c 00 85 e2                                      add r0, r5, #0x3c
00496f28  08 50 95 e5                                      ldr r5, [r5, #8]
00496f2c  87 43 fe eb                                      bl #0x427d50
00496f30  40 20 9f e5                                      ldr r2, [pc, #0x40]
00496f34  00 10 a0 e1                                      mov r1, r0
00496f38  04 30 a0 e1                                      mov r3, r4
00496f3c  05 00 a0 e1                                      mov r0, r5
00496f40  02 20 8f e0                                      add r2, pc, r2
00496f44  70 40 bd e8                                      pop {r4, r5, r6, lr}
00496f48  4b 49 0c ea                                      b #0x7a947c
00496f4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00496f50  00 10 90 e5                                      ldr r1, [r0]
00496f54  01 10 41 e2                                      sub r1, r1, #1
00496f58  00 00 51 e3                                      cmp r1, #0
00496f5c  00 10 80 e5                                      str r1, [r0]
00496f60  00 00 00 1a                                      bne #0x496f68
00496f64  f3 ee 0a eb                                      bl #0x752b38
00496f68  00 30 a0 e3                                      mov r3, #0
00496f6c  68 30 85 e5                                      str r3, [r5, #0x68]
00496f70  64 30 85 e5                                      str r3, [r5, #0x64]
00496f74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00496f78  b0 7e 45 00                                      .byte 0xb0, 0x7e, 0x45, 0x00

; FUNCTION 0x00496f7c, declared_size=120, range_size=120, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnim8BindTextEPKc
; demangled: SWFAnim::BindText(char const*)
; decoder-mode: arm
00496f7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00496f80  68 30 90 e5                                      ldr r3, [r0, #0x68]
00496f84  00 40 a0 e1                                      mov r4, r0
00496f88  01 50 a0 e1                                      mov r5, r1
00496f8c  00 00 53 e3                                      cmp r3, #0
00496f90  0c 00 00 0a                                      beq #0x496fc8
00496f94  64 00 90 e5                                      ldr r0, [r0, #0x64]
00496f98  04 30 d0 e5                                      ldrb r3, [r0, #4]
00496f9c  00 00 53 e3                                      cmp r3, #0
00496fa0  00 00 00 0a                                      beq #0x496fa8
00496fa4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00496fa8  00 10 90 e5                                      ldr r1, [r0]
00496fac  01 10 41 e2                                      sub r1, r1, #1
00496fb0  00 00 51 e3                                      cmp r1, #0
00496fb4  00 10 80 e5                                      str r1, [r0]
00496fb8  0b 00 00 0a                                      beq #0x496fec
00496fbc  00 30 a0 e3                                      mov r3, #0
00496fc0  68 30 84 e5                                      str r3, [r4, #0x68]
00496fc4  64 30 84 e5                                      str r3, [r4, #0x64]
00496fc8  0c 00 84 e2                                      add r0, r4, #0xc
00496fcc  08 60 94 e5                                      ldr r6, [r4, #8]
00496fd0  5e 43 fe eb                                      bl #0x427d50
00496fd4  05 10 a0 e1                                      mov r1, r5
00496fd8  00 30 a0 e1                                      mov r3, r0
00496fdc  06 20 a0 e1                                      mov r2, r6
00496fe0  3c 00 84 e2                                      add r0, r4, #0x3c
00496fe4  70 40 bd e8                                      pop {r4, r5, r6, lr}
00496fe8  2c 43 fe ea                                      b #0x427ca0
00496fec  d1 ee 0a eb                                      bl #0x752b38
00496ff0  f1 ff ff ea                                      b #0x496fbc

; FUNCTION 0x00496ff4, declared_size=124, range_size=124, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnim12SetTextColorEjj
; demangled: SWFAnim::SetTextColor(unsigned int, unsigned int)
; decoder-mode: arm
00496ff4  70 40 2d e9                                      push {r4, r5, r6, lr}
00496ff8  68 30 90 e5                                      ldr r3, [r0, #0x68]
00496ffc  00 40 a0 e1                                      mov r4, r0
00497000  01 50 a0 e1                                      mov r5, r1
00497004  00 00 53 e3                                      cmp r3, #0
00497008  02 60 a0 e1                                      mov r6, r2
0049700c  0c 00 00 0a                                      beq #0x497044
00497010  64 00 90 e5                                      ldr r0, [r0, #0x64]
00497014  04 30 d0 e5                                      ldrb r3, [r0, #4]
00497018  00 00 53 e3                                      cmp r3, #0
0049701c  09 00 00 0a                                      beq #0x497048
00497020  3c 00 84 e2                                      add r0, r4, #0x3c
00497024  08 40 94 e5                                      ldr r4, [r4, #8]
00497028  48 43 fe eb                                      bl #0x427d50
0049702c  06 20 a0 e1                                      mov r2, r6
00497030  00 10 a0 e1                                      mov r1, r0
00497034  05 30 a0 e1                                      mov r3, r5
00497038  04 00 a0 e1                                      mov r0, r4
0049703c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00497040  62 4b 0c ea                                      b #0x7a9dd0
00497044  70 80 bd e8                                      pop {r4, r5, r6, pc}
00497048  00 10 90 e5                                      ldr r1, [r0]
0049704c  01 10 41 e2                                      sub r1, r1, #1
00497050  00 00 51 e3                                      cmp r1, #0
00497054  00 10 80 e5                                      str r1, [r0]
00497058  00 00 00 1a                                      bne #0x497060
0049705c  b5 ee 0a eb                                      bl #0x752b38
00497060  00 30 a0 e3                                      mov r3, #0
00497064  68 30 84 e5                                      str r3, [r4, #0x68]
00497068  64 30 84 e5                                      str r3, [r4, #0x64]
0049706c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00497070, declared_size=184, range_size=184, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnimC1EP6MenuFXPN7gameswf9characterE
; demangled: SWFAnim::SWFAnim(MenuFX*, gameswf::character*)
; decoder-mode: arm
00497070  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00497074  a8 c0 9f e5                                      ldr ip, [pc, #0xa8]
00497078  70 40 2d e9                                      push {r4, r5, r6, lr}
0049707c  03 30 8f e0                                      add r3, pc, r3
00497080  0c c0 93 e7                                      ldr ip, [r3, ip]
00497084  08 10 80 e5                                      str r1, [r0, #8]
00497088  0c 50 80 e2                                      add r5, r0, #0xc
0049708c  08 c0 8c e2                                      add ip, ip, #8
00497090  01 10 a0 e3                                      mov r1, #1
00497094  00 40 a0 e1                                      mov r4, r0
00497098  00 c0 80 e5                                      str ip, [r0]
0049709c  04 10 c0 e5                                      strb r1, [r0, #4]
004970a0  08 d0 4d e2                                      sub sp, sp, #8
004970a4  05 00 a0 e1                                      mov r0, r5
004970a8  02 60 a0 e1                                      mov r6, r2
004970ac  8e 0f fe eb                                      bl #0x41aeec
004970b0  3c 00 84 e2                                      add r0, r4, #0x3c
004970b4  8c 0f fe eb                                      bl #0x41aeec
004970b8  40 30 96 e5                                      ldr r3, [r6, #0x40]
004970bc  08 20 94 e5                                      ldr r2, [r4, #8]
004970c0  00 00 53 e3                                      cmp r3, #0
004970c4  03 00 00 0a                                      beq #0x4970d8
004970c8  3c 00 96 e5                                      ldr r0, [r6, #0x3c]
004970cc  04 10 d0 e5                                      ldrb r1, [r0, #4]
004970d0  00 00 51 e3                                      cmp r1, #0
004970d4  05 00 00 0a                                      beq #0x4970f0
004970d8  05 00 a0 e1                                      mov r0, r5
004970dc  06 10 a0 e1                                      mov r1, r6
004970e0  d7 42 fe eb                                      bl #0x427c44
004970e4  04 00 a0 e1                                      mov r0, r4
004970e8  08 d0 8d e2                                      add sp, sp, #8
004970ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
004970f0  00 10 90 e5                                      ldr r1, [r0]
004970f4  01 10 41 e2                                      sub r1, r1, #1
004970f8  00 00 51 e3                                      cmp r1, #0
004970fc  00 10 80 e5                                      str r1, [r0]
00497100  02 00 00 1a                                      bne #0x497110
00497104  04 20 8d e5                                      str r2, [sp, #4]
00497108  8a ee 0a eb                                      bl #0x752b38
0049710c  04 20 9d e5                                      ldr r2, [sp, #4]
00497110  00 30 a0 e3                                      mov r3, #0
00497114  3c 30 86 e5                                      str r3, [r6, #0x3c]
00497118  40 30 86 e5                                      str r3, [r6, #0x40]
0049711c  ed ff ff ea                                      b #0x4970d8
; mapping-symbol data/literal pool
00497120  14 da 4f 00 d0 1b 00 00                          .byte 0x14, 0xda, 0x4f, 0x00, 0xd0, 0x1b, 0x00, 0x00

; FUNCTION 0x00497128, declared_size=184, range_size=184, mode=arm
; class-group: SWFAnim
; alias: _ZN7SWFAnimC2EP6MenuFXPN7gameswf9characterE
; demangled: SWFAnim::SWFAnim(MenuFX*, gameswf::character*)
; decoder-mode: arm
00497128  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0049712c  a8 c0 9f e5                                      ldr ip, [pc, #0xa8]
00497130  70 40 2d e9                                      push {r4, r5, r6, lr}
00497134  03 30 8f e0                                      add r3, pc, r3
00497138  0c c0 93 e7                                      ldr ip, [r3, ip]
0049713c  08 10 80 e5                                      str r1, [r0, #8]
00497140  0c 50 80 e2                                      add r5, r0, #0xc
00497144  08 c0 8c e2                                      add ip, ip, #8
00497148  01 10 a0 e3                                      mov r1, #1
0049714c  00 40 a0 e1                                      mov r4, r0
00497150  00 c0 80 e5                                      str ip, [r0]
00497154  04 10 c0 e5                                      strb r1, [r0, #4]
00497158  08 d0 4d e2                                      sub sp, sp, #8
0049715c  05 00 a0 e1                                      mov r0, r5
00497160  02 60 a0 e1                                      mov r6, r2
00497164  60 0f fe eb                                      bl #0x41aeec
00497168  3c 00 84 e2                                      add r0, r4, #0x3c
0049716c  5e 0f fe eb                                      bl #0x41aeec
00497170  40 30 96 e5                                      ldr r3, [r6, #0x40]
00497174  08 20 94 e5                                      ldr r2, [r4, #8]
00497178  00 00 53 e3                                      cmp r3, #0
0049717c  03 00 00 0a                                      beq #0x497190
00497180  3c 00 96 e5                                      ldr r0, [r6, #0x3c]
00497184  04 10 d0 e5                                      ldrb r1, [r0, #4]
00497188  00 00 51 e3                                      cmp r1, #0
0049718c  05 00 00 0a                                      beq #0x4971a8
00497190  05 00 a0 e1                                      mov r0, r5
00497194  06 10 a0 e1                                      mov r1, r6
00497198  a9 42 fe eb                                      bl #0x427c44
0049719c  04 00 a0 e1                                      mov r0, r4
004971a0  08 d0 8d e2                                      add sp, sp, #8
004971a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
004971a8  00 10 90 e5                                      ldr r1, [r0]
004971ac  01 10 41 e2                                      sub r1, r1, #1
004971b0  00 00 51 e3                                      cmp r1, #0
004971b4  00 10 80 e5                                      str r1, [r0]
004971b8  02 00 00 1a                                      bne #0x4971c8
004971bc  04 20 8d e5                                      str r2, [sp, #4]
004971c0  5c ee 0a eb                                      bl #0x752b38
004971c4  04 20 9d e5                                      ldr r2, [sp, #4]
004971c8  00 30 a0 e3                                      mov r3, #0
004971cc  3c 30 86 e5                                      str r3, [r6, #0x3c]
004971d0  40 30 86 e5                                      str r3, [r6, #0x40]
004971d4  ed ff ff ea                                      b #0x497190
; mapping-symbol data/literal pool
004971d8  5c d9 4f 00 d0 1b 00 00                          .byte 0x5c, 0xd9, 0x4f, 0x00, 0xd0, 0x1b, 0x00, 0x00
