; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f12c, declared_size=96, range_size=96, mode=arm
; class-group: glitch::io::CColorAttribute
; alias: _ZN6glitch2io15CColorAttribute6getIntEv
; demangled: glitch::io::CColorAttribute::getInt()
; decoder-mode: arm
0031f12c  04 e0 2d e5                                      str lr, [sp, #-4]!
0031f130  14 d0 4d e2                                      sub sp, sp, #0x14
0031f134  00 30 90 e5                                      ldr r3, [r0]
0031f138  0f e0 a0 e1                                      mov lr, pc
0031f13c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0031f140  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0031f144  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0031f148  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0031f14c  01 10 cd e5                                      strb r1, [sp, #1]
0031f150  02 20 cd e5                                      strb r2, [sp, #2]
0031f154  00 00 cd e5                                      strb r0, [sp]
0031f158  03 30 cd e5                                      strb r3, [sp, #3]
0031f15c  00 30 9d e5                                      ldr r3, [sp]
0031f160  09 20 8d e2                                      add r2, sp, #9
0031f164  23 0c a0 e1                                      lsr r0, r3, #0x18
0031f168  53 c8 e7 e7                                      ubfx ip, r3, #0x10, #8
0031f16c  53 14 e7 e7                                      ubfx r1, r3, #8, #8
0031f170  02 c0 c2 e5                                      strb ip, [r2, #2]
0031f174  08 00 cd e5                                      strb r0, [sp, #8]
0031f178  01 10 c2 e5                                      strb r1, [r2, #1]
0031f17c  09 30 cd e5                                      strb r3, [sp, #9]
0031f180  08 00 9d e5                                      ldr r0, [sp, #8]
0031f184  14 d0 8d e2                                      add sp, sp, #0x14
0031f188  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0031f18c, declared_size=100, range_size=100, mode=arm
; class-group: glitch::io::CColorAttribute
; alias: _ZN6glitch2io15CColorAttribute8getFloatEv
; demangled: glitch::io::CColorAttribute::getFloat()
; decoder-mode: arm
0031f18c  04 e0 2d e5                                      str lr, [sp, #-4]!
0031f190  14 d0 4d e2                                      sub sp, sp, #0x14
0031f194  00 30 90 e5                                      ldr r3, [r0]
0031f198  0f e0 a0 e1                                      mov lr, pc
0031f19c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0031f1a0  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0031f1a4  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0031f1a8  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0031f1ac  01 10 cd e5                                      strb r1, [sp, #1]
0031f1b0  02 20 cd e5                                      strb r2, [sp, #2]
0031f1b4  00 00 cd e5                                      strb r0, [sp]
0031f1b8  03 30 cd e5                                      strb r3, [sp, #3]
0031f1bc  00 30 9d e5                                      ldr r3, [sp]
0031f1c0  09 20 8d e2                                      add r2, sp, #9
0031f1c4  23 0c a0 e1                                      lsr r0, r3, #0x18
0031f1c8  53 c8 e7 e7                                      ubfx ip, r3, #0x10, #8
0031f1cc  53 14 e7 e7                                      ubfx r1, r3, #8, #8
0031f1d0  02 c0 c2 e5                                      strb ip, [r2, #2]
0031f1d4  08 00 cd e5                                      strb r0, [sp, #8]
0031f1d8  01 10 c2 e5                                      strb r1, [r2, #1]
0031f1dc  09 30 cd e5                                      strb r3, [sp, #9]
0031f1e0  08 00 9d e5                                      ldr r0, [sp, #8]
0031f1e4  3d bc ff eb                                      bl #0x30e2e0
0031f1e8  14 d0 8d e2                                      add sp, sp, #0x14
0031f1ec  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0031f1f0, declared_size=148, range_size=148, mode=arm
; class-group: glitch::io::CColorAttribute
; alias: _ZN6glitch2io15CColorAttribute6setIntEi
; demangled: glitch::io::CColorAttribute::setInt(int)
; decoder-mode: arm
0031f1f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031f1f4  00 40 a0 e1                                      mov r4, r0
0031f1f8  51 04 e7 e7                                      ubfx r0, r1, #8, #8
0031f1fc  51 68 e7 e7                                      ubfx r6, r1, #0x10, #8
0031f200  21 5c a0 e1                                      lsr r5, r1, #0x18
0031f204  71 80 ef e6                                      uxtb r8, r1
0031f208  d5 bd ff eb                                      bl #0x30e964
0031f20c  81 10 08 e3                                      movw r1, #0x8081
0031f210  80 1b 43 e3                                      movt r1, #0x3b80
0031f214  d4 be ff eb                                      bl #0x30ed6c
0031f218  00 70 a0 e1                                      mov r7, r0
0031f21c  06 00 a0 e1                                      mov r0, r6
0031f220  cf bd ff eb                                      bl #0x30e964
0031f224  81 10 08 e3                                      movw r1, #0x8081
0031f228  80 1b 43 e3                                      movt r1, #0x3b80
0031f22c  ce be ff eb                                      bl #0x30ed6c
0031f230  00 60 a0 e1                                      mov r6, r0
0031f234  05 00 a0 e1                                      mov r0, r5
0031f238  c9 bd ff eb                                      bl #0x30e964
0031f23c  81 10 08 e3                                      movw r1, #0x8081
0031f240  80 1b 43 e3                                      movt r1, #0x3b80
0031f244  c8 be ff eb                                      bl #0x30ed6c
0031f248  00 50 a0 e1                                      mov r5, r0
0031f24c  08 00 a0 e1                                      mov r0, r8
0031f250  c3 bd ff eb                                      bl #0x30e964
0031f254  81 10 08 e3                                      movw r1, #0x8081
0031f258  80 1b 43 e3                                      movt r1, #0x3b80
0031f25c  c2 be ff eb                                      bl #0x30ed6c
0031f260  30 30 94 e5                                      ldr r3, [r4, #0x30]
0031f264  00 70 83 e5                                      str r7, [r3]
0031f268  30 30 94 e5                                      ldr r3, [r4, #0x30]
0031f26c  04 60 83 e5                                      str r6, [r3, #4]
0031f270  30 30 94 e5                                      ldr r3, [r4, #0x30]
0031f274  08 50 83 e5                                      str r5, [r3, #8]
0031f278  30 30 94 e5                                      ldr r3, [r4, #0x30]
0031f27c  0c 00 83 e5                                      str r0, [r3, #0xc]
0031f280  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0031f284, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CColorAttribute
; alias: _ZN6glitch2io15CColorAttribute8setFloatEf
; demangled: glitch::io::CColorAttribute::setFloat(float)
; decoder-mode: arm
0031f284  70 40 2d e9                                      push {r4, r5, r6, lr}
0031f288  00 40 a0 e1                                      mov r4, r0
0031f28c  01 00 a0 e1                                      mov r0, r1
0031f290  8d bc ff eb                                      bl #0x30e4cc
0031f294  00 50 94 e5                                      ldr r5, [r4]
0031f298  00 10 a0 e1                                      mov r1, r0
0031f29c  04 00 a0 e1                                      mov r0, r4
0031f2a0  0f e0 a0 e1                                      mov lr, pc
0031f2a4  88 f0 95 e5                                      ldr pc, [r5, #0x88]
0031f2a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031f2ac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CColorAttribute
; alias: _ZNK6glitch2io15CColorAttribute7getTypeEv
; demangled: glitch::io::CColorAttribute::getType() const
; decoder-mode: arm
0031f2ac  05 00 a0 e3                                      mov r0, #5
0031f2b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f2b4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CColorAttribute
; alias: _ZNK6glitch2io15CColorAttribute13getTypeStringEv
; demangled: glitch::io::CColorAttribute::getTypeString() const
; decoder-mode: arm
0031f2b4  04 00 9f e5                                      ldr r0, [pc, #4]
0031f2b8  00 00 8f e0                                      add r0, pc, r0
0031f2bc  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031f2c0  d0 f7 59 00                                      .byte 0xd0, 0xf7, 0x59, 0x00

; FUNCTION 0x0032324c, declared_size=116, range_size=116, mode=arm
; class-group: glitch::io::CColorAttribute
; alias: _ZN6glitch2io15CColorAttribute9setStringEPKc
; demangled: glitch::io::CColorAttribute::setString(char const*)
; decoder-mode: arm
0032324c  10 40 2d e9                                      push {r4, lr}
00323250  00 40 a0 e1                                      mov r4, r0
00323254  01 00 a0 e1                                      mov r0, r1
00323258  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
0032325c  20 d0 4d e2                                      sub sp, sp, #0x20
00323260  14 c0 8d e2                                      add ip, sp, #0x14
00323264  1c 20 8d e2                                      add r2, sp, #0x1c
00323268  18 30 8d e2                                      add r3, sp, #0x18
0032326c  00 c0 8d e5                                      str ip, [sp]
00323270  01 10 8f e0                                      add r1, pc, r1
00323274  10 c0 8d e2                                      add ip, sp, #0x10
00323278  04 c0 8d e5                                      str ip, [sp, #4]
0032327c  fc ab ff eb                                      bl #0x30e274
00323280  00 30 94 e5                                      ldr r3, [r4]
00323284  14 00 dd e5                                      ldrb r0, [sp, #0x14]
00323288  10 10 dd e5                                      ldrb r1, [sp, #0x10]
0032328c  a0 30 93 e5                                      ldr r3, [r3, #0xa0]
00323290  1c 20 dd e5                                      ldrb r2, [sp, #0x1c]
00323294  0d 00 cd e5                                      strb r0, [sp, #0xd]
00323298  18 00 9d e5                                      ldr r0, [sp, #0x18]
0032329c  0e 10 cd e5                                      strb r1, [sp, #0xe]
003232a0  0f 20 cd e5                                      strb r2, [sp, #0xf]
003232a4  0c 00 cd e5                                      strb r0, [sp, #0xc]
003232a8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003232ac  04 00 a0 e1                                      mov r0, r4
003232b0  33 ff 2f e1                                      blx r3
003232b4  20 d0 8d e2                                      add sp, sp, #0x20
003232b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003232bc  f0 ba 59 00                                      .byte 0xf0, 0xba, 0x59, 0x00

; FUNCTION 0x00326388, declared_size=188, range_size=188, mode=arm
; class-group: glitch::io::CColorAttribute
; alias: _ZN6glitch2io15CColorAttribute10getStringWEv
; demangled: glitch::io::CColorAttribute::getStringW()
; decoder-mode: arm
00326388  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0032638c  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00326390  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00326394  03 30 8f e0                                      add r3, pc, r3
00326398  02 40 93 e7                                      ldr r4, [r3, r2]
0032639c  2c d0 4d e2                                      sub sp, sp, #0x2c
003263a0  00 20 91 e5                                      ldr r2, [r1]
003263a4  00 c0 94 e5                                      ldr ip, [r4]
003263a8  00 50 a0 e1                                      mov r5, r0
003263ac  01 00 a0 e1                                      mov r0, r1
003263b0  24 c0 8d e5                                      str ip, [sp, #0x24]
003263b4  0f e0 a0 e1                                      mov lr, pc
003263b8  18 f0 92 e5                                      ldr pc, [r2, #0x18]
003263bc  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
003263c0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
003263c4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
003263c8  09 10 cd e5                                      strb r1, [sp, #9]
003263cc  0a 20 cd e5                                      strb r2, [sp, #0xa]
003263d0  0b 30 cd e5                                      strb r3, [sp, #0xb]
003263d4  08 00 cd e5                                      strb r0, [sp, #8]
003263d8  08 c0 9d e5                                      ldr ip, [sp, #8]
003263dc  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
003263e0  18 60 8d e2                                      add r6, sp, #0x18
003263e4  7c 30 ef e6                                      uxtb r3, ip
003263e8  5c 74 e7 e7                                      ubfx r7, ip, #8, #8
003263ec  5c e8 e7 e7                                      ubfx lr, ip, #0x10, #8
003263f0  2c 2c a0 e1                                      lsr r2, ip, #0x18
003263f4  01 10 8f e0                                      add r1, pc, r1
003263f8  06 00 a0 e1                                      mov r0, r6
003263fc  04 e0 8d e5                                      str lr, [sp, #4]
00326400  14 c0 8d e5                                      str ip, [sp, #0x14]
00326404  00 70 8d e5                                      str r7, [sp]
00326408  b5 a1 ff eb                                      bl #0x30eae4
0032640c  05 00 a0 e1                                      mov r0, r5
00326410  06 10 a0 e1                                      mov r1, r6
00326414  ab ff ff eb                                      bl #0x3262c8
00326418  24 20 9d e5                                      ldr r2, [sp, #0x24]
0032641c  00 30 94 e5                                      ldr r3, [r4]
00326420  05 00 a0 e1                                      mov r0, r5
00326424  03 00 52 e1                                      cmp r2, r3
00326428  01 00 00 1a                                      bne #0x326434
0032642c  2c d0 8d e2                                      add sp, sp, #0x2c
00326430  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00326434  b5 9f ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00326438  fc e6 66 00 ac 40 00 00 6c 89 59 00              .byte 0xfc, 0xe6, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x6c, 0x89, 0x59, 0x00

; FUNCTION 0x00326948, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CColorAttribute
; alias: _ZN6glitch2io15CColorAttributeD1Ev
; demangled: glitch::io::CColorAttribute::~CColorAttribute()
; decoder-mode: arm
00326948  24 30 9f e5                                      ldr r3, [pc, #0x24]
0032694c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00326950  10 40 2d e9                                      push {r4, lr}
00326954  03 30 8f e0                                      add r3, pc, r3
00326958  02 20 93 e7                                      ldr r2, [r3, r2]
0032695c  00 40 a0 e1                                      mov r4, r0
00326960  08 20 82 e2                                      add r2, r2, #8
00326964  00 20 80 e5                                      str r2, [r0]
00326968  a2 ff ff eb                                      bl #0x3267f8
0032696c  04 00 a0 e1                                      mov r0, r4
00326970  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00326974  3c e1 66 00 38 16 00 00                          .byte 0x3c, 0xe1, 0x66, 0x00, 0x38, 0x16, 0x00, 0x00

; FUNCTION 0x003269f4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CColorAttribute
; alias: _ZN6glitch2io15CColorAttributeD0Ev
; demangled: glitch::io::CColorAttribute::~CColorAttribute()
; decoder-mode: arm
003269f4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003269f8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003269fc  10 40 2d e9                                      push {r4, lr}
00326a00  03 30 8f e0                                      add r3, pc, r3
00326a04  02 20 93 e7                                      ldr r2, [r3, r2]
00326a08  00 40 a0 e1                                      mov r4, r0
00326a0c  08 20 82 e2                                      add r2, r2, #8
00326a10  00 20 80 e5                                      str r2, [r0]
00326a14  77 ff ff eb                                      bl #0x3267f8
00326a18  04 00 a0 e1                                      mov r0, r4
00326a1c  87 a6 ff eb                                      bl #0x310440
00326a20  04 00 a0 e1                                      mov r0, r4
00326a24  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00326a28  90 e0 66 00 38 16 00 00                          .byte 0x90, 0xe0, 0x66, 0x00, 0x38, 0x16, 0x00, 0x00
