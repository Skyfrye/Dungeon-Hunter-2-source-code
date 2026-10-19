; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e6068, declared_size=136, range_size=136, mode=arm
; class-group: b2Shape
; alias: _ZN7b2ShapeC2EPK10b2ShapeDef
; demangled: b2Shape::b2Shape(b2ShapeDef const*)
; decoder-mode: arm
007e6068  78 20 9f e5                                      ldr r2, [pc, #0x78]
007e606c  78 c0 9f e5                                      ldr ip, [pc, #0x78]
007e6070  04 40 2d e5                                      str r4, [sp, #-4]!
007e6074  02 20 8f e0                                      add r2, pc, r2
007e6078  0c c0 92 e7                                      ldr ip, [r2, ip]
007e607c  08 c0 8c e2                                      add ip, ip, #8
007e6080  00 c0 80 e5                                      str ip, [r0]
007e6084  08 40 91 e5                                      ldr r4, [r1, #8]
007e6088  00 c0 a0 e3                                      mov ip, #0
007e608c  2c 40 80 e5                                      str r4, [r0, #0x2c]
007e6090  0c 20 91 e5                                      ldr r2, [r1, #0xc]
007e6094  00 40 a0 e3                                      mov r4, #0
007e6098  18 20 80 e5                                      str r2, [r0, #0x18]
007e609c  10 20 91 e5                                      ldr r2, [r1, #0x10]
007e60a0  1c 20 80 e5                                      str r2, [r0, #0x1c]
007e60a4  14 20 91 e5                                      ldr r2, [r1, #0x14]
007e60a8  10 40 80 e5                                      str r4, [r0, #0x10]
007e60ac  08 c0 80 e5                                      str ip, [r0, #8]
007e60b0  14 20 80 e5                                      str r2, [r0, #0x14]
007e60b4  00 20 e0 e3                                      mvn r2, #0
007e60b8  0c c0 80 e5                                      str ip, [r0, #0xc]
007e60bc  b0 22 c0 e1                                      strh r2, [r0, #0x20]
007e60c0  ba 21 d1 e1                                      ldrh r2, [r1, #0x1a]
007e60c4  b2 22 c0 e1                                      strh r2, [r0, #0x22]
007e60c8  bc 21 d1 e1                                      ldrh r2, [r1, #0x1c]
007e60cc  b4 22 c0 e1                                      strh r2, [r0, #0x24]
007e60d0  be 21 d1 e1                                      ldrh r2, [r1, #0x1e]
007e60d4  b6 22 c0 e1                                      strh r2, [r0, #0x26]
007e60d8  18 20 d1 e5                                      ldrb r2, [r1, #0x18]
007e60dc  28 20 c0 e5                                      strb r2, [r0, #0x28]
007e60e0  10 00 bd e8                                      ldm sp!, {r4}
007e60e4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007e60e8  1c ea 1a 00 2c 30 00 00                          .byte 0x1c, 0xea, 0x1a, 0x00, 0x2c, 0x30, 0x00, 0x00

; FUNCTION 0x007e60f0, declared_size=136, range_size=136, mode=arm
; class-group: b2Shape
; alias: _ZN7b2ShapeC1EPK10b2ShapeDef
; demangled: b2Shape::b2Shape(b2ShapeDef const*)
; decoder-mode: arm
007e60f0  78 20 9f e5                                      ldr r2, [pc, #0x78]
007e60f4  78 c0 9f e5                                      ldr ip, [pc, #0x78]
007e60f8  04 40 2d e5                                      str r4, [sp, #-4]!
007e60fc  02 20 8f e0                                      add r2, pc, r2
007e6100  0c c0 92 e7                                      ldr ip, [r2, ip]
007e6104  08 c0 8c e2                                      add ip, ip, #8
007e6108  00 c0 80 e5                                      str ip, [r0]
007e610c  08 40 91 e5                                      ldr r4, [r1, #8]
007e6110  00 c0 a0 e3                                      mov ip, #0
007e6114  2c 40 80 e5                                      str r4, [r0, #0x2c]
007e6118  0c 20 91 e5                                      ldr r2, [r1, #0xc]
007e611c  00 40 a0 e3                                      mov r4, #0
007e6120  18 20 80 e5                                      str r2, [r0, #0x18]
007e6124  10 20 91 e5                                      ldr r2, [r1, #0x10]
007e6128  1c 20 80 e5                                      str r2, [r0, #0x1c]
007e612c  14 20 91 e5                                      ldr r2, [r1, #0x14]
007e6130  10 40 80 e5                                      str r4, [r0, #0x10]
007e6134  08 c0 80 e5                                      str ip, [r0, #8]
007e6138  14 20 80 e5                                      str r2, [r0, #0x14]
007e613c  00 20 e0 e3                                      mvn r2, #0
007e6140  0c c0 80 e5                                      str ip, [r0, #0xc]
007e6144  b0 22 c0 e1                                      strh r2, [r0, #0x20]
007e6148  ba 21 d1 e1                                      ldrh r2, [r1, #0x1a]
007e614c  b2 22 c0 e1                                      strh r2, [r0, #0x22]
007e6150  bc 21 d1 e1                                      ldrh r2, [r1, #0x1c]
007e6154  b4 22 c0 e1                                      strh r2, [r0, #0x24]
007e6158  be 21 d1 e1                                      ldrh r2, [r1, #0x1e]
007e615c  b6 22 c0 e1                                      strh r2, [r0, #0x26]
007e6160  18 20 d1 e5                                      ldrb r2, [r1, #0x18]
007e6164  28 20 c0 e5                                      strb r2, [r0, #0x28]
007e6168  10 00 bd e8                                      ldm sp!, {r4}
007e616c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007e6170  94 e9 1a 00 2c 30 00 00                          .byte 0x94, 0xe9, 0x1a, 0x00, 0x2c, 0x30, 0x00, 0x00

; FUNCTION 0x007e6178, declared_size=4, range_size=4, mode=arm
; class-group: b2Shape
; alias: _ZN7b2ShapeD2Ev
; demangled: b2Shape::~b2Shape()
; decoder-mode: arm
007e6178  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e617c, declared_size=4, range_size=4, mode=arm
; class-group: b2Shape
; alias: _ZN7b2ShapeD1Ev
; demangled: b2Shape::~b2Shape()
; decoder-mode: arm
007e617c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e6180, declared_size=48, range_size=48, mode=arm
; class-group: b2Shape
; alias: _ZN7b2Shape12DestroyProxyEP12b2BroadPhase
; demangled: b2Shape::DestroyProxy(b2BroadPhase*)
; decoder-mode: arm
007e6180  10 40 2d e9                                      push {r4, lr}
007e6184  b0 32 d0 e1                                      ldrh r3, [r0, #0x20]
007e6188  ff 2f 0f e3                                      movw r2, #0xffff
007e618c  00 40 a0 e1                                      mov r4, r0
007e6190  02 00 53 e1                                      cmp r3, r2
007e6194  04 00 00 0a                                      beq #0x7e61ac
007e6198  01 00 a0 e1                                      mov r0, r1
007e619c  03 10 a0 e1                                      mov r1, r3
007e61a0  49 f2 ff eb                                      bl #0x7e2acc
007e61a4  00 30 e0 e3                                      mvn r3, #0
007e61a8  b0 32 c4 e1                                      strh r3, [r4, #0x20]
007e61ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007e61b0, declared_size=292, range_size=292, mode=arm
; class-group: b2Shape
; alias: _ZN7b2Shape13RefilterProxyEP12b2BroadPhaseRK7b2XForm
; demangled: b2Shape::RefilterProxy(b2BroadPhase*, b2XForm const&)
; decoder-mode: arm
007e61b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e61b4  b0 32 d0 e1                                      ldrh r3, [r0, #0x20]
007e61b8  01 40 a0 e1                                      mov r4, r1
007e61bc  ff 1f 0f e3                                      movw r1, #0xffff
007e61c0  01 00 53 e1                                      cmp r3, r1
007e61c4  10 d0 4d e2                                      sub sp, sp, #0x10
007e61c8  00 50 a0 e1                                      mov r5, r0
007e61cc  02 70 a0 e1                                      mov r7, r2
007e61d0  37 00 00 0a                                      beq #0x7e62b4
007e61d4  03 10 a0 e1                                      mov r1, r3
007e61d8  04 00 a0 e1                                      mov r0, r4
007e61dc  3a f2 ff eb                                      bl #0x7e2acc
007e61e0  07 20 a0 e1                                      mov r2, r7
007e61e4  05 00 a0 e1                                      mov r0, r5
007e61e8  0d 10 a0 e1                                      mov r1, sp
007e61ec  00 30 95 e5                                      ldr r3, [r5]
007e61f0  0f e0 a0 e1                                      mov lr, pc
007e61f4  08 f0 93 e5                                      ldr pc, [r3, #8]
007e61f8  5d 3a a0 e3                                      mov r3, #0x5d000
007e61fc  24 30 83 e2                                      add r3, r3, #0x24
007e6200  03 10 94 e7                                      ldr r1, [r4, r3]
007e6204  00 00 9d e5                                      ldr r0, [sp]
007e6208  67 a0 ec eb                                      bl #0x30e3ac
007e620c  5d 3a a0 e3                                      mov r3, #0x5d000
007e6210  28 30 83 e2                                      add r3, r3, #0x28
007e6214  00 70 a0 e1                                      mov r7, r0
007e6218  03 10 94 e7                                      ldr r1, [r4, r3]
007e621c  04 00 9d e5                                      ldr r0, [sp, #4]
007e6220  61 a0 ec eb                                      bl #0x30e3ac
007e6224  5d 3a a0 e3                                      mov r3, #0x5d000
007e6228  1c 30 83 e2                                      add r3, r3, #0x1c
007e622c  00 80 a0 e1                                      mov r8, r0
007e6230  08 10 9d e5                                      ldr r1, [sp, #8]
007e6234  03 00 94 e7                                      ldr r0, [r4, r3]
007e6238  5b a0 ec eb                                      bl #0x30e3ac
007e623c  5d 3a a0 e3                                      mov r3, #0x5d000
007e6240  20 30 83 e2                                      add r3, r3, #0x20
007e6244  00 90 a0 e1                                      mov sb, r0
007e6248  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007e624c  03 00 94 e7                                      ldr r0, [r4, r3]
007e6250  55 a0 ec eb                                      bl #0x30e3ac
007e6254  09 10 a0 e1                                      mov r1, sb
007e6258  00 a0 a0 e1                                      mov sl, r0
007e625c  07 00 a0 e1                                      mov r0, r7
007e6260  24 a0 ec eb                                      bl #0x30e2f8
007e6264  0a 10 a0 e1                                      mov r1, sl
007e6268  00 00 50 e3                                      cmp r0, #0
007e626c  08 00 a0 e1                                      mov r0, r8
007e6270  09 70 a0 01                                      moveq r7, sb
007e6274  1f a0 ec eb                                      bl #0x30e2f8
007e6278  00 00 50 e3                                      cmp r0, #0
007e627c  0a 80 a0 01                                      moveq r8, sl
007e6280  07 00 a0 e1                                      mov r0, r7
007e6284  08 10 a0 e1                                      mov r1, r8
007e6288  1a a0 ec eb                                      bl #0x30e2f8
007e628c  00 00 50 e3                                      cmp r0, #0
007e6290  08 70 a0 01                                      moveq r7, r8
007e6294  07 00 a0 e1                                      mov r0, r7
007e6298  00 10 a0 e3                                      mov r1, #0
007e629c  1a a1 ec eb                                      bl #0x30e70c
007e62a0  00 00 50 e3                                      cmp r0, #0
007e62a4  00 30 e0 03                                      mvneq r3, #0
007e62a8  0d 60 a0 e1                                      mov r6, sp
007e62ac  b0 32 c5 01                                      strheq r3, [r5, #0x20]
007e62b0  01 00 00 1a                                      bne #0x7e62bc
007e62b4  10 d0 8d e2                                      add sp, sp, #0x10
007e62b8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007e62bc  04 00 a0 e1                                      mov r0, r4
007e62c0  0d 10 a0 e1                                      mov r1, sp
007e62c4  05 20 a0 e1                                      mov r2, r5
007e62c8  a1 f2 ff eb                                      bl #0x7e2d54
007e62cc  b0 02 c5 e1                                      strh r0, [r5, #0x20]
007e62d0  f7 ff ff ea                                      b #0x7e62b4

; FUNCTION 0x007e62d4, declared_size=252, range_size=252, mode=arm
; class-group: b2Shape
; alias: _ZN7b2Shape11CreateProxyEP12b2BroadPhaseRK7b2XForm
; demangled: b2Shape::CreateProxy(b2BroadPhase*, b2XForm const&)
; decoder-mode: arm
007e62d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e62d8  10 d0 4d e2                                      sub sp, sp, #0x10
007e62dc  01 40 a0 e1                                      mov r4, r1
007e62e0  00 30 90 e5                                      ldr r3, [r0]
007e62e4  0d 10 a0 e1                                      mov r1, sp
007e62e8  00 50 a0 e1                                      mov r5, r0
007e62ec  0f e0 a0 e1                                      mov lr, pc
007e62f0  08 f0 93 e5                                      ldr pc, [r3, #8]
007e62f4  5d 3a a0 e3                                      mov r3, #0x5d000
007e62f8  24 30 83 e2                                      add r3, r3, #0x24
007e62fc  03 10 94 e7                                      ldr r1, [r4, r3]
007e6300  00 00 9d e5                                      ldr r0, [sp]
007e6304  28 a0 ec eb                                      bl #0x30e3ac
007e6308  5d 3a a0 e3                                      mov r3, #0x5d000
007e630c  28 30 83 e2                                      add r3, r3, #0x28
007e6310  00 70 a0 e1                                      mov r7, r0
007e6314  03 10 94 e7                                      ldr r1, [r4, r3]
007e6318  04 00 9d e5                                      ldr r0, [sp, #4]
007e631c  22 a0 ec eb                                      bl #0x30e3ac
007e6320  5d 3a a0 e3                                      mov r3, #0x5d000
007e6324  1c 30 83 e2                                      add r3, r3, #0x1c
007e6328  00 80 a0 e1                                      mov r8, r0
007e632c  08 10 9d e5                                      ldr r1, [sp, #8]
007e6330  03 00 94 e7                                      ldr r0, [r4, r3]
007e6334  1c a0 ec eb                                      bl #0x30e3ac
007e6338  5d 3a a0 e3                                      mov r3, #0x5d000
007e633c  20 30 83 e2                                      add r3, r3, #0x20
007e6340  00 90 a0 e1                                      mov sb, r0
007e6344  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007e6348  03 00 94 e7                                      ldr r0, [r4, r3]
007e634c  16 a0 ec eb                                      bl #0x30e3ac
007e6350  09 10 a0 e1                                      mov r1, sb
007e6354  00 a0 a0 e1                                      mov sl, r0
007e6358  07 00 a0 e1                                      mov r0, r7
007e635c  e5 9f ec eb                                      bl #0x30e2f8
007e6360  0a 10 a0 e1                                      mov r1, sl
007e6364  00 00 50 e3                                      cmp r0, #0
007e6368  08 00 a0 e1                                      mov r0, r8
007e636c  09 70 a0 01                                      moveq r7, sb
007e6370  e0 9f ec eb                                      bl #0x30e2f8
007e6374  00 00 50 e3                                      cmp r0, #0
007e6378  0a 80 a0 01                                      moveq r8, sl
007e637c  07 00 a0 e1                                      mov r0, r7
007e6380  08 10 a0 e1                                      mov r1, r8
007e6384  db 9f ec eb                                      bl #0x30e2f8
007e6388  00 00 50 e3                                      cmp r0, #0
007e638c  08 70 a0 01                                      moveq r7, r8
007e6390  07 00 a0 e1                                      mov r0, r7
007e6394  00 10 a0 e3                                      mov r1, #0
007e6398  db a0 ec eb                                      bl #0x30e70c
007e639c  00 00 50 e3                                      cmp r0, #0
007e63a0  00 30 e0 03                                      mvneq r3, #0
007e63a4  0d 60 a0 e1                                      mov r6, sp
007e63a8  b0 32 c5 01                                      strheq r3, [r5, #0x20]
007e63ac  01 00 00 1a                                      bne #0x7e63b8
007e63b0  10 d0 8d e2                                      add sp, sp, #0x10
007e63b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007e63b8  04 00 a0 e1                                      mov r0, r4
007e63bc  0d 10 a0 e1                                      mov r1, sp
007e63c0  05 20 a0 e1                                      mov r2, r5
007e63c4  62 f2 ff eb                                      bl #0x7e2d54
007e63c8  b0 02 c5 e1                                      strh r0, [r5, #0x20]
007e63cc  f7 ff ff ea                                      b #0x7e63b0

; FUNCTION 0x007e63d0, declared_size=264, range_size=264, mode=arm
; class-group: b2Shape
; alias: _ZN7b2Shape11SynchronizeEP12b2BroadPhaseRK7b2XFormS4_
; demangled: b2Shape::Synchronize(b2BroadPhase*, b2XForm const&, b2XForm const&)
; decoder-mode: arm
007e63d0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e63d4  b0 c2 d0 e1                                      ldrh ip, [r0, #0x20]
007e63d8  01 40 a0 e1                                      mov r4, r1
007e63dc  ff 1f 0f e3                                      movw r1, #0xffff
007e63e0  01 00 5c e1                                      cmp ip, r1
007e63e4  10 d0 4d e2                                      sub sp, sp, #0x10
007e63e8  00 50 a0 e1                                      mov r5, r0
007e63ec  30 00 00 0a                                      beq #0x7e64b4
007e63f0  00 c0 90 e5                                      ldr ip, [r0]
007e63f4  0d 10 a0 e1                                      mov r1, sp
007e63f8  0f e0 a0 e1                                      mov lr, pc
007e63fc  0c f0 9c e5                                      ldr pc, [ip, #0xc]
007e6400  5d 3a a0 e3                                      mov r3, #0x5d000
007e6404  24 30 83 e2                                      add r3, r3, #0x24
007e6408  03 10 94 e7                                      ldr r1, [r4, r3]
007e640c  00 00 9d e5                                      ldr r0, [sp]
007e6410  e5 9f ec eb                                      bl #0x30e3ac
007e6414  5d 3a a0 e3                                      mov r3, #0x5d000
007e6418  28 30 83 e2                                      add r3, r3, #0x28
007e641c  00 70 a0 e1                                      mov r7, r0
007e6420  03 10 94 e7                                      ldr r1, [r4, r3]
007e6424  04 00 9d e5                                      ldr r0, [sp, #4]
007e6428  df 9f ec eb                                      bl #0x30e3ac
007e642c  5d 3a a0 e3                                      mov r3, #0x5d000
007e6430  1c 30 83 e2                                      add r3, r3, #0x1c
007e6434  00 80 a0 e1                                      mov r8, r0
007e6438  08 10 9d e5                                      ldr r1, [sp, #8]
007e643c  03 00 94 e7                                      ldr r0, [r4, r3]
007e6440  d9 9f ec eb                                      bl #0x30e3ac
007e6444  5d 3a a0 e3                                      mov r3, #0x5d000
007e6448  20 30 83 e2                                      add r3, r3, #0x20
007e644c  00 90 a0 e1                                      mov sb, r0
007e6450  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007e6454  03 00 94 e7                                      ldr r0, [r4, r3]
007e6458  d3 9f ec eb                                      bl #0x30e3ac
007e645c  09 10 a0 e1                                      mov r1, sb
007e6460  00 a0 a0 e1                                      mov sl, r0
007e6464  07 00 a0 e1                                      mov r0, r7
007e6468  a2 9f ec eb                                      bl #0x30e2f8
007e646c  0a 10 a0 e1                                      mov r1, sl
007e6470  00 00 50 e3                                      cmp r0, #0
007e6474  08 00 a0 e1                                      mov r0, r8
007e6478  09 70 a0 01                                      moveq r7, sb
007e647c  9d 9f ec eb                                      bl #0x30e2f8
007e6480  00 00 50 e3                                      cmp r0, #0
007e6484  0a 80 a0 01                                      moveq r8, sl
007e6488  07 00 a0 e1                                      mov r0, r7
007e648c  08 10 a0 e1                                      mov r1, r8
007e6490  98 9f ec eb                                      bl #0x30e2f8
007e6494  00 00 50 e3                                      cmp r0, #0
007e6498  08 70 a0 01                                      moveq r7, r8
007e649c  07 00 a0 e1                                      mov r0, r7
007e64a0  00 10 a0 e3                                      mov r1, #0
007e64a4  98 a0 ec eb                                      bl #0x30e70c
007e64a8  00 00 50 e3                                      cmp r0, #0
007e64ac  0d 60 a0 e1                                      mov r6, sp
007e64b0  02 00 00 1a                                      bne #0x7e64c0
007e64b4  00 00 a0 e3                                      mov r0, #0
007e64b8  10 d0 8d e2                                      add sp, sp, #0x10
007e64bc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007e64c0  04 00 a0 e1                                      mov r0, r4
007e64c4  b0 12 d5 e1                                      ldrh r1, [r5, #0x20]
007e64c8  0d 20 a0 e1                                      mov r2, sp
007e64cc  9c f3 ff eb                                      bl #0x7e3344
007e64d0  01 00 a0 e3                                      mov r0, #1
007e64d4  f7 ff ff ea                                      b #0x7e64b8

; FUNCTION 0x007e64d8, declared_size=28, range_size=28, mode=arm
; class-group: b2Shape
; alias: _ZN7b2ShapeD0Ev
; demangled: b2Shape::~b2Shape()
; decoder-mode: arm
007e64d8  10 40 2d e9                                      push {r4, lr}
007e64dc  00 40 a0 e1                                      mov r4, r0
007e64e0  25 ff ff eb                                      bl #0x7e617c
007e64e4  04 00 a0 e1                                      mov r0, r4
007e64e8  70 9f ec eb                                      bl #0x30e2b0
007e64ec  04 00 a0 e1                                      mov r0, r4
007e64f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007e64f4, declared_size=100, range_size=100, mode=arm
; class-group: b2Shape
; alias: _ZN7b2Shape7DestroyEPS_P16b2BlockAllocator
; demangled: b2Shape::Destroy(b2Shape*, b2BlockAllocator*)
; decoder-mode: arm
007e64f4  70 40 2d e9                                      push {r4, r5, r6, lr}
007e64f8  04 30 90 e5                                      ldr r3, [r0, #4]
007e64fc  00 40 a0 e1                                      mov r4, r0
007e6500  01 50 a0 e1                                      mov r5, r1
007e6504  00 00 53 e3                                      cmp r3, #0
007e6508  07 00 00 1a                                      bne #0x7e652c
007e650c  00 30 90 e5                                      ldr r3, [r0]
007e6510  0f e0 a0 e1                                      mov lr, pc
007e6514  14 f0 93 e5                                      ldr pc, [r3, #0x14]
007e6518  05 00 a0 e1                                      mov r0, r5
007e651c  04 10 a0 e1                                      mov r1, r4
007e6520  3c 20 a0 e3                                      mov r2, #0x3c
007e6524  70 40 bd e8                                      pop {r4, r5, r6, lr}
007e6528  1c 0a 00 ea                                      b #0x7e8da0
007e652c  01 00 53 e3                                      cmp r3, #1
007e6530  00 00 00 0a                                      beq #0x7e6538
007e6534  70 80 bd e8                                      pop {r4, r5, r6, pc}
007e6538  00 30 90 e5                                      ldr r3, [r0]
007e653c  0f e0 a0 e1                                      mov lr, pc
007e6540  14 f0 93 e5                                      ldr pc, [r3, #0x14]
007e6544  05 00 a0 e1                                      mov r0, r5
007e6548  04 10 a0 e1                                      mov r1, r4
007e654c  47 2f a0 e3                                      mov r2, #0x11c
007e6550  70 40 bd e8                                      pop {r4, r5, r6, lr}
007e6554  11 0a 00 ea                                      b #0x7e8da0

; FUNCTION 0x007e6558, declared_size=100, range_size=100, mode=arm
; class-group: b2Shape
; alias: _ZN7b2Shape6CreateEPK10b2ShapeDefP16b2BlockAllocator
; demangled: b2Shape::Create(b2ShapeDef const*, b2BlockAllocator*)
; decoder-mode: arm
007e6558  70 40 2d e9                                      push {r4, r5, r6, lr}
007e655c  04 30 90 e5                                      ldr r3, [r0, #4]
007e6560  00 40 a0 e1                                      mov r4, r0
007e6564  00 00 53 e3                                      cmp r3, #0
007e6568  07 00 00 1a                                      bne #0x7e658c
007e656c  01 00 a0 e1                                      mov r0, r1
007e6570  3c 10 a0 e3                                      mov r1, #0x3c
007e6574  d0 0a 00 eb                                      bl #0x7e90bc
007e6578  04 10 a0 e1                                      mov r1, r4
007e657c  00 50 a0 e1                                      mov r5, r0
007e6580  0a 0d 00 eb                                      bl #0x7e99b0
007e6584  05 00 a0 e1                                      mov r0, r5
007e6588  70 80 bd e8                                      pop {r4, r5, r6, pc}
007e658c  01 00 53 e3                                      cmp r3, #1
007e6590  01 00 00 0a                                      beq #0x7e659c
007e6594  00 00 a0 e3                                      mov r0, #0
007e6598  70 80 bd e8                                      pop {r4, r5, r6, pc}
007e659c  01 00 a0 e1                                      mov r0, r1
007e65a0  47 1f a0 e3                                      mov r1, #0x11c
007e65a4  c4 0a 00 eb                                      bl #0x7e90bc
007e65a8  04 10 a0 e1                                      mov r1, r4
007e65ac  00 50 a0 e1                                      mov r5, r0
007e65b0  dc fc ff eb                                      bl #0x7e5928
007e65b4  05 00 a0 e1                                      mov r0, r5
007e65b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
