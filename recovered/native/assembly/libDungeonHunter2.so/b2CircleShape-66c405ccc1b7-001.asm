; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e9218, declared_size=264, range_size=264, mode=arm
; class-group: b2CircleShape
; alias: _ZNK13b2CircleShape9TestPointERK7b2XFormRK6b2Vec2
; demangled: b2CircleShape::TestPoint(b2XForm const&, b2Vec2 const&) const
; decoder-mode: arm
007e9218  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e921c  30 70 90 e5                                      ldr r7, [r0, #0x30]
007e9220  01 40 a0 e1                                      mov r4, r1
007e9224  34 60 90 e5                                      ldr r6, [r0, #0x34]
007e9228  00 50 a0 e1                                      mov r5, r0
007e922c  08 10 91 e5                                      ldr r1, [r1, #8]
007e9230  07 00 a0 e1                                      mov r0, r7
007e9234  02 80 a0 e1                                      mov r8, r2
007e9238  cb 96 ec eb                                      bl #0x30ed6c
007e923c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007e9240  00 a0 a0 e1                                      mov sl, r0
007e9244  06 00 a0 e1                                      mov r0, r6
007e9248  c7 96 ec eb                                      bl #0x30ed6c
007e924c  00 10 a0 e1                                      mov r1, r0
007e9250  0a 00 a0 e1                                      mov r0, sl
007e9254  52 96 ec eb                                      bl #0x30eba4
007e9258  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007e925c  00 a0 a0 e1                                      mov sl, r0
007e9260  07 00 a0 e1                                      mov r0, r7
007e9264  c0 96 ec eb                                      bl #0x30ed6c
007e9268  14 10 94 e5                                      ldr r1, [r4, #0x14]
007e926c  00 70 a0 e1                                      mov r7, r0
007e9270  06 00 a0 e1                                      mov r0, r6
007e9274  bc 96 ec eb                                      bl #0x30ed6c
007e9278  00 10 a0 e1                                      mov r1, r0
007e927c  07 00 a0 e1                                      mov r0, r7
007e9280  47 96 ec eb                                      bl #0x30eba4
007e9284  00 10 94 e5                                      ldr r1, [r4]
007e9288  00 70 a0 e1                                      mov r7, r0
007e928c  0a 00 a0 e1                                      mov r0, sl
007e9290  43 96 ec eb                                      bl #0x30eba4
007e9294  04 10 94 e5                                      ldr r1, [r4, #4]
007e9298  00 60 a0 e1                                      mov r6, r0
007e929c  07 00 a0 e1                                      mov r0, r7
007e92a0  3f 96 ec eb                                      bl #0x30eba4
007e92a4  06 10 a0 e1                                      mov r1, r6
007e92a8  00 40 a0 e1                                      mov r4, r0
007e92ac  00 00 98 e5                                      ldr r0, [r8]
007e92b0  3d 94 ec eb                                      bl #0x30e3ac
007e92b4  04 10 a0 e1                                      mov r1, r4
007e92b8  00 60 a0 e1                                      mov r6, r0
007e92bc  04 00 98 e5                                      ldr r0, [r8, #4]
007e92c0  39 94 ec eb                                      bl #0x30e3ac
007e92c4  00 70 a0 e1                                      mov r7, r0
007e92c8  38 00 95 e5                                      ldr r0, [r5, #0x38]
007e92cc  00 40 a0 e3                                      mov r4, #0
007e92d0  00 10 a0 e1                                      mov r1, r0
007e92d4  a4 96 ec eb                                      bl #0x30ed6c
007e92d8  06 10 a0 e1                                      mov r1, r6
007e92dc  00 50 a0 e1                                      mov r5, r0
007e92e0  06 00 a0 e1                                      mov r0, r6
007e92e4  a0 96 ec eb                                      bl #0x30ed6c
007e92e8  07 10 a0 e1                                      mov r1, r7
007e92ec  00 60 a0 e1                                      mov r6, r0
007e92f0  07 00 a0 e1                                      mov r0, r7
007e92f4  9c 96 ec eb                                      bl #0x30ed6c
007e92f8  00 10 a0 e1                                      mov r1, r0
007e92fc  06 00 a0 e1                                      mov r0, r6
007e9300  27 96 ec eb                                      bl #0x30eba4
007e9304  00 10 a0 e1                                      mov r1, r0
007e9308  05 00 a0 e1                                      mov r0, r5
007e930c  68 94 ec eb                                      bl #0x30e4b4
007e9310  00 00 50 e3                                      cmp r0, #0
007e9314  01 40 a0 13                                      movne r4, #1
007e9318  01 00 04 e2                                      and r0, r4, #1
007e931c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007e9320, declared_size=220, range_size=220, mode=arm
; class-group: b2CircleShape
; alias: _ZNK13b2CircleShape11ComputeAABBEP6b2AABBRK7b2XForm
; demangled: b2CircleShape::ComputeAABB(b2AABB*, b2XForm const&) const
; decoder-mode: arm
007e9320  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e9324  30 50 90 e5                                      ldr r5, [r0, #0x30]
007e9328  34 80 90 e5                                      ldr r8, [r0, #0x34]
007e932c  01 70 a0 e1                                      mov r7, r1
007e9330  00 40 a0 e1                                      mov r4, r0
007e9334  08 10 92 e5                                      ldr r1, [r2, #8]
007e9338  05 00 a0 e1                                      mov r0, r5
007e933c  02 60 a0 e1                                      mov r6, r2
007e9340  89 96 ec eb                                      bl #0x30ed6c
007e9344  10 10 96 e5                                      ldr r1, [r6, #0x10]
007e9348  00 a0 a0 e1                                      mov sl, r0
007e934c  08 00 a0 e1                                      mov r0, r8
007e9350  85 96 ec eb                                      bl #0x30ed6c
007e9354  00 10 a0 e1                                      mov r1, r0
007e9358  0a 00 a0 e1                                      mov r0, sl
007e935c  10 96 ec eb                                      bl #0x30eba4
007e9360  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007e9364  00 a0 a0 e1                                      mov sl, r0
007e9368  05 00 a0 e1                                      mov r0, r5
007e936c  7e 96 ec eb                                      bl #0x30ed6c
007e9370  14 10 96 e5                                      ldr r1, [r6, #0x14]
007e9374  00 50 a0 e1                                      mov r5, r0
007e9378  08 00 a0 e1                                      mov r0, r8
007e937c  7a 96 ec eb                                      bl #0x30ed6c
007e9380  00 10 a0 e1                                      mov r1, r0
007e9384  05 00 a0 e1                                      mov r0, r5
007e9388  05 96 ec eb                                      bl #0x30eba4
007e938c  00 10 96 e5                                      ldr r1, [r6]
007e9390  00 50 a0 e1                                      mov r5, r0
007e9394  0a 00 a0 e1                                      mov r0, sl
007e9398  01 96 ec eb                                      bl #0x30eba4
007e939c  04 10 96 e5                                      ldr r1, [r6, #4]
007e93a0  00 80 a0 e1                                      mov r8, r0
007e93a4  05 00 a0 e1                                      mov r0, r5
007e93a8  fd 95 ec eb                                      bl #0x30eba4
007e93ac  38 60 94 e5                                      ldr r6, [r4, #0x38]
007e93b0  00 50 a0 e1                                      mov r5, r0
007e93b4  08 00 a0 e1                                      mov r0, r8
007e93b8  06 10 a0 e1                                      mov r1, r6
007e93bc  fa 93 ec eb                                      bl #0x30e3ac
007e93c0  06 10 a0 e1                                      mov r1, r6
007e93c4  00 00 87 e5                                      str r0, [r7]
007e93c8  05 00 a0 e1                                      mov r0, r5
007e93cc  f6 93 ec eb                                      bl #0x30e3ac
007e93d0  04 00 87 e5                                      str r0, [r7, #4]
007e93d4  38 40 94 e5                                      ldr r4, [r4, #0x38]
007e93d8  08 10 a0 e1                                      mov r1, r8
007e93dc  04 00 a0 e1                                      mov r0, r4
007e93e0  ef 95 ec eb                                      bl #0x30eba4
007e93e4  05 10 a0 e1                                      mov r1, r5
007e93e8  08 00 87 e5                                      str r0, [r7, #8]
007e93ec  04 00 a0 e1                                      mov r0, r4
007e93f0  eb 95 ec eb                                      bl #0x30eba4
007e93f4  0c 00 87 e5                                      str r0, [r7, #0xc]
007e93f8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007e93fc, declared_size=432, range_size=432, mode=arm
; class-group: b2CircleShape
; alias: _ZNK13b2CircleShape16ComputeSweptAABBEP6b2AABBRK7b2XFormS4_
; demangled: b2CircleShape::ComputeSweptAABB(b2AABB*, b2XForm const&, b2XForm const&) const
; decoder-mode: arm
007e93fc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e9400  30 50 90 e5                                      ldr r5, [r0, #0x30]
007e9404  34 80 90 e5                                      ldr r8, [r0, #0x34]
007e9408  01 70 a0 e1                                      mov r7, r1
007e940c  00 40 a0 e1                                      mov r4, r0
007e9410  08 10 92 e5                                      ldr r1, [r2, #8]
007e9414  05 00 a0 e1                                      mov r0, r5
007e9418  03 a0 a0 e1                                      mov sl, r3
007e941c  02 60 a0 e1                                      mov r6, r2
007e9420  51 96 ec eb                                      bl #0x30ed6c
007e9424  10 10 96 e5                                      ldr r1, [r6, #0x10]
007e9428  00 90 a0 e1                                      mov sb, r0
007e942c  08 00 a0 e1                                      mov r0, r8
007e9430  4d 96 ec eb                                      bl #0x30ed6c
007e9434  00 10 a0 e1                                      mov r1, r0
007e9438  09 00 a0 e1                                      mov r0, sb
007e943c  d8 95 ec eb                                      bl #0x30eba4
007e9440  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007e9444  00 90 a0 e1                                      mov sb, r0
007e9448  05 00 a0 e1                                      mov r0, r5
007e944c  46 96 ec eb                                      bl #0x30ed6c
007e9450  14 10 96 e5                                      ldr r1, [r6, #0x14]
007e9454  00 b0 a0 e1                                      mov fp, r0
007e9458  08 00 a0 e1                                      mov r0, r8
007e945c  42 96 ec eb                                      bl #0x30ed6c
007e9460  00 10 a0 e1                                      mov r1, r0
007e9464  0b 00 a0 e1                                      mov r0, fp
007e9468  cd 95 ec eb                                      bl #0x30eba4
007e946c  00 10 96 e5                                      ldr r1, [r6]
007e9470  00 b0 a0 e1                                      mov fp, r0
007e9474  09 00 a0 e1                                      mov r0, sb
007e9478  c9 95 ec eb                                      bl #0x30eba4
007e947c  04 10 96 e5                                      ldr r1, [r6, #4]
007e9480  00 90 a0 e1                                      mov sb, r0
007e9484  0b 00 a0 e1                                      mov r0, fp
007e9488  c5 95 ec eb                                      bl #0x30eba4
007e948c  08 10 9a e5                                      ldr r1, [sl, #8]
007e9490  00 60 a0 e1                                      mov r6, r0
007e9494  05 00 a0 e1                                      mov r0, r5
007e9498  33 96 ec eb                                      bl #0x30ed6c
007e949c  10 10 9a e5                                      ldr r1, [sl, #0x10]
007e94a0  00 b0 a0 e1                                      mov fp, r0
007e94a4  08 00 a0 e1                                      mov r0, r8
007e94a8  2f 96 ec eb                                      bl #0x30ed6c
007e94ac  00 10 a0 e1                                      mov r1, r0
007e94b0  0b 00 a0 e1                                      mov r0, fp
007e94b4  ba 95 ec eb                                      bl #0x30eba4
007e94b8  0c 10 9a e5                                      ldr r1, [sl, #0xc]
007e94bc  00 b0 a0 e1                                      mov fp, r0
007e94c0  05 00 a0 e1                                      mov r0, r5
007e94c4  28 96 ec eb                                      bl #0x30ed6c
007e94c8  14 10 9a e5                                      ldr r1, [sl, #0x14]
007e94cc  00 50 a0 e1                                      mov r5, r0
007e94d0  08 00 a0 e1                                      mov r0, r8
007e94d4  24 96 ec eb                                      bl #0x30ed6c
007e94d8  00 10 a0 e1                                      mov r1, r0
007e94dc  05 00 a0 e1                                      mov r0, r5
007e94e0  af 95 ec eb                                      bl #0x30eba4
007e94e4  00 10 9a e5                                      ldr r1, [sl]
007e94e8  00 50 a0 e1                                      mov r5, r0
007e94ec  0b 00 a0 e1                                      mov r0, fp
007e94f0  ab 95 ec eb                                      bl #0x30eba4
007e94f4  04 10 9a e5                                      ldr r1, [sl, #4]
007e94f8  00 80 a0 e1                                      mov r8, r0
007e94fc  05 00 a0 e1                                      mov r0, r5
007e9500  a7 95 ec eb                                      bl #0x30eba4
007e9504  08 10 a0 e1                                      mov r1, r8
007e9508  00 50 a0 e1                                      mov r5, r0
007e950c  09 00 a0 e1                                      mov r0, sb
007e9510  7d 94 ec eb                                      bl #0x30e70c
007e9514  05 10 a0 e1                                      mov r1, r5
007e9518  00 00 50 e3                                      cmp r0, #0
007e951c  06 00 a0 e1                                      mov r0, r6
007e9520  09 b0 a0 11                                      movne fp, sb
007e9524  08 b0 a0 01                                      moveq fp, r8
007e9528  77 94 ec eb                                      bl #0x30e70c
007e952c  08 10 a0 e1                                      mov r1, r8
007e9530  00 00 50 e3                                      cmp r0, #0
007e9534  09 00 a0 e1                                      mov r0, sb
007e9538  05 a0 a0 01                                      moveq sl, r5
007e953c  06 a0 a0 11                                      movne sl, r6
007e9540  6c 93 ec eb                                      bl #0x30e2f8
007e9544  05 10 a0 e1                                      mov r1, r5
007e9548  00 00 50 e3                                      cmp r0, #0
007e954c  06 00 a0 e1                                      mov r0, r6
007e9550  08 90 a0 01                                      moveq sb, r8
007e9554  67 93 ec eb                                      bl #0x30e2f8
007e9558  00 00 50 e3                                      cmp r0, #0
007e955c  05 60 a0 01                                      moveq r6, r5
007e9560  38 50 94 e5                                      ldr r5, [r4, #0x38]
007e9564  0b 00 a0 e1                                      mov r0, fp
007e9568  05 10 a0 e1                                      mov r1, r5
007e956c  8e 93 ec eb                                      bl #0x30e3ac
007e9570  05 10 a0 e1                                      mov r1, r5
007e9574  00 00 87 e5                                      str r0, [r7]
007e9578  0a 00 a0 e1                                      mov r0, sl
007e957c  8a 93 ec eb                                      bl #0x30e3ac
007e9580  04 00 87 e5                                      str r0, [r7, #4]
007e9584  38 40 94 e5                                      ldr r4, [r4, #0x38]
007e9588  09 10 a0 e1                                      mov r1, sb
007e958c  04 00 a0 e1                                      mov r0, r4
007e9590  83 95 ec eb                                      bl #0x30eba4
007e9594  06 10 a0 e1                                      mov r1, r6
007e9598  08 00 87 e5                                      str r0, [r7, #8]
007e959c  04 00 a0 e1                                      mov r0, r4
007e95a0  7f 95 ec eb                                      bl #0x30eba4
007e95a4  0c 00 87 e5                                      str r0, [r7, #0xc]
007e95a8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007e95ac, declared_size=188, range_size=188, mode=arm
; class-group: b2CircleShape
; alias: _ZNK13b2CircleShape11ComputeMassEP10b2MassData
; demangled: b2CircleShape::ComputeMass(b2MassData*) const
; decoder-mode: arm
007e95ac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007e95b0  38 60 90 e5                                      ldr r6, [r0, #0x38]
007e95b4  01 50 a0 e1                                      mov r5, r1
007e95b8  db 1f 00 e3                                      movw r1, #0xfdb
007e95bc  00 40 a0 e1                                      mov r4, r0
007e95c0  49 10 44 e3                                      movt r1, #0x4049
007e95c4  14 00 90 e5                                      ldr r0, [r0, #0x14]
007e95c8  e7 95 ec eb                                      bl #0x30ed6c
007e95cc  06 10 a0 e1                                      mov r1, r6
007e95d0  e5 95 ec eb                                      bl #0x30ed6c
007e95d4  00 10 a0 e1                                      mov r1, r0
007e95d8  06 00 a0 e1                                      mov r0, r6
007e95dc  e2 95 ec eb                                      bl #0x30ed6c
007e95e0  00 00 85 e5                                      str r0, [r5]
007e95e4  30 30 94 e5                                      ldr r3, [r4, #0x30]
007e95e8  00 60 a0 e1                                      mov r6, r0
007e95ec  3f 14 a0 e3                                      mov r1, #0x3f000000
007e95f0  04 30 85 e5                                      str r3, [r5, #4]
007e95f4  34 30 94 e5                                      ldr r3, [r4, #0x34]
007e95f8  08 30 85 e5                                      str r3, [r5, #8]
007e95fc  38 70 94 e5                                      ldr r7, [r4, #0x38]
007e9600  30 a0 94 e5                                      ldr sl, [r4, #0x30]
007e9604  34 80 94 e5                                      ldr r8, [r4, #0x34]
007e9608  07 00 a0 e1                                      mov r0, r7
007e960c  d6 95 ec eb                                      bl #0x30ed6c
007e9610  00 10 a0 e1                                      mov r1, r0
007e9614  07 00 a0 e1                                      mov r0, r7
007e9618  d3 95 ec eb                                      bl #0x30ed6c
007e961c  0a 10 a0 e1                                      mov r1, sl
007e9620  00 40 a0 e1                                      mov r4, r0
007e9624  0a 00 a0 e1                                      mov r0, sl
007e9628  cf 95 ec eb                                      bl #0x30ed6c
007e962c  08 10 a0 e1                                      mov r1, r8
007e9630  00 70 a0 e1                                      mov r7, r0
007e9634  08 00 a0 e1                                      mov r0, r8
007e9638  cb 95 ec eb                                      bl #0x30ed6c
007e963c  00 10 a0 e1                                      mov r1, r0
007e9640  07 00 a0 e1                                      mov r0, r7
007e9644  56 95 ec eb                                      bl #0x30eba4
007e9648  00 10 a0 e1                                      mov r1, r0
007e964c  04 00 a0 e1                                      mov r0, r4
007e9650  53 95 ec eb                                      bl #0x30eba4
007e9654  00 10 a0 e1                                      mov r1, r0
007e9658  06 00 a0 e1                                      mov r0, r6
007e965c  c2 95 ec eb                                      bl #0x30ed6c
007e9660  0c 00 85 e5                                      str r0, [r5, #0xc]
007e9664  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007e9668, declared_size=52, range_size=52, mode=arm
; class-group: b2CircleShape
; alias: _ZN13b2CircleShapeD1Ev
; demangled: b2CircleShape::~b2CircleShape()
; decoder-mode: arm
007e9668  24 30 9f e5                                      ldr r3, [pc, #0x24]
007e966c  24 20 9f e5                                      ldr r2, [pc, #0x24]
007e9670  10 40 2d e9                                      push {r4, lr}
007e9674  03 30 8f e0                                      add r3, pc, r3
007e9678  02 20 93 e7                                      ldr r2, [r3, r2]
007e967c  00 40 a0 e1                                      mov r4, r0
007e9680  08 20 82 e2                                      add r2, r2, #8
007e9684  00 20 80 e5                                      str r2, [r0]
007e9688  ba f2 ff eb                                      bl #0x7e6178
007e968c  04 00 a0 e1                                      mov r0, r4
007e9690  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007e9694  1c b4 1a 00 6c 08 00 00                          .byte 0x1c, 0xb4, 0x1a, 0x00, 0x6c, 0x08, 0x00, 0x00

; FUNCTION 0x007e969c, declared_size=672, range_size=672, mode=arm
; class-group: b2CircleShape
; alias: _ZNK13b2CircleShape11TestSegmentERK7b2XFormPfP6b2Vec2RK9b2Segmentf
; demangled: b2CircleShape::TestSegment(b2XForm const&, float*, b2Vec2*, b2Segment const&, float) const
; decoder-mode: arm
007e969c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e96a0  30 70 90 e5                                      ldr r7, [r0, #0x30]
007e96a4  0c d0 4d e2                                      sub sp, sp, #0xc
007e96a8  01 40 a0 e1                                      mov r4, r1
007e96ac  34 60 90 e5                                      ldr r6, [r0, #0x34]
007e96b0  08 10 91 e5                                      ldr r1, [r1, #8]
007e96b4  00 50 a0 e1                                      mov r5, r0
007e96b8  07 00 a0 e1                                      mov r0, r7
007e96bc  04 20 8d e5                                      str r2, [sp, #4]
007e96c0  00 30 8d e5                                      str r3, [sp]
007e96c4  a8 95 ec eb                                      bl #0x30ed6c
007e96c8  10 10 94 e5                                      ldr r1, [r4, #0x10]
007e96cc  00 80 a0 e1                                      mov r8, r0
007e96d0  06 00 a0 e1                                      mov r0, r6
007e96d4  a4 95 ec eb                                      bl #0x30ed6c
007e96d8  00 10 a0 e1                                      mov r1, r0
007e96dc  08 00 a0 e1                                      mov r0, r8
007e96e0  2f 95 ec eb                                      bl #0x30eba4
007e96e4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007e96e8  00 a0 a0 e1                                      mov sl, r0
007e96ec  07 00 a0 e1                                      mov r0, r7
007e96f0  9d 95 ec eb                                      bl #0x30ed6c
007e96f4  14 10 94 e5                                      ldr r1, [r4, #0x14]
007e96f8  00 70 a0 e1                                      mov r7, r0
007e96fc  06 00 a0 e1                                      mov r0, r6
007e9700  99 95 ec eb                                      bl #0x30ed6c
007e9704  00 10 a0 e1                                      mov r1, r0
007e9708  07 00 a0 e1                                      mov r0, r7
007e970c  24 95 ec eb                                      bl #0x30eba4
007e9710  00 10 94 e5                                      ldr r1, [r4]
007e9714  00 60 a0 e1                                      mov r6, r0
007e9718  0a 00 a0 e1                                      mov r0, sl
007e971c  20 95 ec eb                                      bl #0x30eba4
007e9720  04 10 94 e5                                      ldr r1, [r4, #4]
007e9724  00 a0 a0 e1                                      mov sl, r0
007e9728  06 00 a0 e1                                      mov r0, r6
007e972c  1c 95 ec eb                                      bl #0x30eba4
007e9730  30 80 9d e5                                      ldr r8, [sp, #0x30]
007e9734  00 60 a0 e1                                      mov r6, r0
007e9738  0a 10 a0 e1                                      mov r1, sl
007e973c  00 70 98 e5                                      ldr r7, [r8]
007e9740  07 00 a0 e1                                      mov r0, r7
007e9744  18 93 ec eb                                      bl #0x30e3ac
007e9748  04 a0 98 e5                                      ldr sl, [r8, #4]
007e974c  00 40 a0 e1                                      mov r4, r0
007e9750  06 10 a0 e1                                      mov r1, r6
007e9754  0a 00 a0 e1                                      mov r0, sl
007e9758  13 93 ec eb                                      bl #0x30e3ac
007e975c  04 10 a0 e1                                      mov r1, r4
007e9760  00 60 a0 e1                                      mov r6, r0
007e9764  04 00 a0 e1                                      mov r0, r4
007e9768  7f 95 ec eb                                      bl #0x30ed6c
007e976c  06 10 a0 e1                                      mov r1, r6
007e9770  00 90 a0 e1                                      mov sb, r0
007e9774  06 00 a0 e1                                      mov r0, r6
007e9778  7b 95 ec eb                                      bl #0x30ed6c
007e977c  00 10 a0 e1                                      mov r1, r0
007e9780  09 00 a0 e1                                      mov r0, sb
007e9784  06 95 ec eb                                      bl #0x30eba4
007e9788  38 50 95 e5                                      ldr r5, [r5, #0x38]
007e978c  00 90 a0 e1                                      mov sb, r0
007e9790  05 10 a0 e1                                      mov r1, r5
007e9794  05 00 a0 e1                                      mov r0, r5
007e9798  73 95 ec eb                                      bl #0x30ed6c
007e979c  00 10 a0 e1                                      mov r1, r0
007e97a0  09 00 a0 e1                                      mov r0, sb
007e97a4  00 93 ec eb                                      bl #0x30e3ac
007e97a8  00 10 a0 e3                                      mov r1, #0
007e97ac  00 90 a0 e1                                      mov sb, r0
007e97b0  d5 93 ec eb                                      bl #0x30e70c
007e97b4  00 00 50 e3                                      cmp r0, #0
007e97b8  31 00 00 1a                                      bne #0x7e9884
007e97bc  07 10 a0 e1                                      mov r1, r7
007e97c0  08 00 98 e5                                      ldr r0, [r8, #8]
007e97c4  f8 92 ec eb                                      bl #0x30e3ac
007e97c8  0a 10 a0 e1                                      mov r1, sl
007e97cc  00 70 a0 e1                                      mov r7, r0
007e97d0  0c 00 98 e5                                      ldr r0, [r8, #0xc]
007e97d4  f4 92 ec eb                                      bl #0x30e3ac
007e97d8  07 10 a0 e1                                      mov r1, r7
007e97dc  00 50 a0 e1                                      mov r5, r0
007e97e0  04 00 a0 e1                                      mov r0, r4
007e97e4  60 95 ec eb                                      bl #0x30ed6c
007e97e8  05 10 a0 e1                                      mov r1, r5
007e97ec  00 80 a0 e1                                      mov r8, r0
007e97f0  06 00 a0 e1                                      mov r0, r6
007e97f4  5c 95 ec eb                                      bl #0x30ed6c
007e97f8  00 10 a0 e1                                      mov r1, r0
007e97fc  08 00 a0 e1                                      mov r0, r8
007e9800  e7 94 ec eb                                      bl #0x30eba4
007e9804  07 10 a0 e1                                      mov r1, r7
007e9808  00 80 a0 e1                                      mov r8, r0
007e980c  07 00 a0 e1                                      mov r0, r7
007e9810  55 95 ec eb                                      bl #0x30ed6c
007e9814  05 10 a0 e1                                      mov r1, r5
007e9818  00 a0 a0 e1                                      mov sl, r0
007e981c  05 00 a0 e1                                      mov r0, r5
007e9820  51 95 ec eb                                      bl #0x30ed6c
007e9824  00 10 a0 e1                                      mov r1, r0
007e9828  0a 00 a0 e1                                      mov r0, sl
007e982c  dc 94 ec eb                                      bl #0x30eba4
007e9830  08 10 a0 e1                                      mov r1, r8
007e9834  00 a0 a0 e1                                      mov sl, r0
007e9838  08 00 a0 e1                                      mov r0, r8
007e983c  4a 95 ec eb                                      bl #0x30ed6c
007e9840  0a 10 a0 e1                                      mov r1, sl
007e9844  00 b0 a0 e1                                      mov fp, r0
007e9848  09 00 a0 e1                                      mov r0, sb
007e984c  46 95 ec eb                                      bl #0x30ed6c
007e9850  00 10 a0 e1                                      mov r1, r0
007e9854  0b 00 a0 e1                                      mov r0, fp
007e9858  d3 92 ec eb                                      bl #0x30e3ac
007e985c  00 10 a0 e3                                      mov r1, #0
007e9860  00 90 a0 e1                                      mov sb, r0
007e9864  a8 93 ec eb                                      bl #0x30e70c
007e9868  00 00 50 e3                                      cmp r0, #0
007e986c  04 00 00 1a                                      bne #0x7e9884
007e9870  0a 00 a0 e1                                      mov r0, sl
007e9874  0d 13 a0 e3                                      mov r1, #0x34000000
007e9878  a3 93 ec eb                                      bl #0x30e70c
007e987c  00 00 50 e3                                      cmp r0, #0
007e9880  02 00 00 0a                                      beq #0x7e9890
007e9884  00 00 a0 e3                                      mov r0, #0
007e9888  0c d0 8d e2                                      add sp, sp, #0xc
007e988c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e9890  09 00 a0 e1                                      mov r0, sb
007e9894  22 92 ec eb                                      bl #0x30e124
007e9898  08 10 a0 e1                                      mov r1, r8
007e989c  c0 94 ec eb                                      bl #0x30eba4
007e98a0  02 81 80 e2                                      add r8, r0, #0x80000000
007e98a4  08 00 a0 e1                                      mov r0, r8
007e98a8  00 10 a0 e3                                      mov r1, #0
007e98ac  00 93 ec eb                                      bl #0x30e4b4
007e98b0  00 00 50 e3                                      cmp r0, #0
007e98b4  f2 ff ff 0a                                      beq #0x7e9884
007e98b8  0a 10 a0 e1                                      mov r1, sl
007e98bc  34 00 9d e5                                      ldr r0, [sp, #0x34]
007e98c0  29 95 ec eb                                      bl #0x30ed6c
007e98c4  08 10 a0 e1                                      mov r1, r8
007e98c8  f9 92 ec eb                                      bl #0x30e4b4
007e98cc  00 00 50 e3                                      cmp r0, #0
007e98d0  eb ff ff 0a                                      beq #0x7e9884
007e98d4  0a 10 a0 e1                                      mov r1, sl
007e98d8  08 00 a0 e1                                      mov r0, r8
007e98dc  ec 94 ec eb                                      bl #0x30ec94
007e98e0  04 30 9d e5                                      ldr r3, [sp, #4]
007e98e4  07 10 a0 e1                                      mov r1, r7
007e98e8  00 80 a0 e1                                      mov r8, r0
007e98ec  00 00 83 e5                                      str r0, [r3]
007e98f0  1d 95 ec eb                                      bl #0x30ed6c
007e98f4  05 10 a0 e1                                      mov r1, r5
007e98f8  00 70 a0 e1                                      mov r7, r0
007e98fc  08 00 a0 e1                                      mov r0, r8
007e9900  19 95 ec eb                                      bl #0x30ed6c
007e9904  00 10 a0 e1                                      mov r1, r0
007e9908  06 00 a0 e1                                      mov r0, r6
007e990c  a4 94 ec eb                                      bl #0x30eba4
007e9910  00 30 9d e5                                      ldr r3, [sp]
007e9914  07 10 a0 e1                                      mov r1, r7
007e9918  04 00 83 e5                                      str r0, [r3, #4]
007e991c  04 00 a0 e1                                      mov r0, r4
007e9920  9f 94 ec eb                                      bl #0x30eba4
007e9924  00 30 9d e5                                      ldr r3, [sp]
007e9928  00 00 83 e5                                      str r0, [r3]
007e992c  00 00 9d e5                                      ldr r0, [sp]
007e9930  fb ee ff eb                                      bl #0x7e5524
007e9934  01 00 a0 e3                                      mov r0, #1
007e9938  d2 ff ff ea                                      b #0x7e9888

; FUNCTION 0x007e993c, declared_size=116, range_size=116, mode=arm
; class-group: b2CircleShape
; alias: _ZN13b2CircleShape17UpdateSweepRadiusERK6b2Vec2
; demangled: b2CircleShape::UpdateSweepRadius(b2Vec2 const&)
; decoder-mode: arm
007e993c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007e9940  00 40 a0 e1                                      mov r4, r0
007e9944  01 50 a0 e1                                      mov r5, r1
007e9948  30 00 90 e5                                      ldr r0, [r0, #0x30]
007e994c  00 10 91 e5                                      ldr r1, [r1]
007e9950  95 92 ec eb                                      bl #0x30e3ac
007e9954  04 10 95 e5                                      ldr r1, [r5, #4]
007e9958  00 70 a0 e1                                      mov r7, r0
007e995c  34 00 94 e5                                      ldr r0, [r4, #0x34]
007e9960  91 92 ec eb                                      bl #0x30e3ac
007e9964  07 10 a0 e1                                      mov r1, r7
007e9968  00 60 a0 e1                                      mov r6, r0
007e996c  07 00 a0 e1                                      mov r0, r7
007e9970  fd 94 ec eb                                      bl #0x30ed6c
007e9974  06 10 a0 e1                                      mov r1, r6
007e9978  00 50 a0 e1                                      mov r5, r0
007e997c  06 00 a0 e1                                      mov r0, r6
007e9980  f9 94 ec eb                                      bl #0x30ed6c
007e9984  00 10 a0 e1                                      mov r1, r0
007e9988  05 00 a0 e1                                      mov r0, r5
007e998c  84 94 ec eb                                      bl #0x30eba4
007e9990  e3 91 ec eb                                      bl #0x30e124
007e9994  38 10 94 e5                                      ldr r1, [r4, #0x38]
007e9998  81 94 ec eb                                      bl #0x30eba4
007e999c  0a 17 0d e3                                      movw r1, #0xd70a
007e99a0  23 1d 43 e3                                      movt r1, #0x3d23
007e99a4  80 92 ec eb                                      bl #0x30e3ac
007e99a8  10 00 84 e5                                      str r0, [r4, #0x10]
007e99ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007e99b0, declared_size=88, range_size=88, mode=arm
; class-group: b2CircleShape
; alias: _ZN13b2CircleShapeC1EPK10b2ShapeDef
; demangled: b2CircleShape::b2CircleShape(b2ShapeDef const*)
; decoder-mode: arm
007e99b0  70 40 2d e9                                      push {r4, r5, r6, lr}
007e99b4  44 50 9f e5                                      ldr r5, [pc, #0x44]
007e99b8  00 40 a0 e1                                      mov r4, r0
007e99bc  01 60 a0 e1                                      mov r6, r1
007e99c0  a8 f1 ff eb                                      bl #0x7e6068
007e99c4  38 30 9f e5                                      ldr r3, [pc, #0x38]
007e99c8  05 50 8f e0                                      add r5, pc, r5
007e99cc  00 20 a0 e3                                      mov r2, #0
007e99d0  03 30 95 e7                                      ldr r3, [r5, r3]
007e99d4  04 20 84 e5                                      str r2, [r4, #4]
007e99d8  04 00 a0 e1                                      mov r0, r4
007e99dc  08 30 83 e2                                      add r3, r3, #8
007e99e0  00 30 84 e5                                      str r3, [r4]
007e99e4  20 30 96 e5                                      ldr r3, [r6, #0x20]
007e99e8  30 30 84 e5                                      str r3, [r4, #0x30]
007e99ec  24 30 96 e5                                      ldr r3, [r6, #0x24]
007e99f0  34 30 84 e5                                      str r3, [r4, #0x34]
007e99f4  28 30 96 e5                                      ldr r3, [r6, #0x28]
007e99f8  38 30 84 e5                                      str r3, [r4, #0x38]
007e99fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007e9a00  c8 b0 1a 00 6c 08 00 00                          .byte 0xc8, 0xb0, 0x1a, 0x00, 0x6c, 0x08, 0x00, 0x00

; FUNCTION 0x007e9a08, declared_size=88, range_size=88, mode=arm
; class-group: b2CircleShape
; alias: _ZN13b2CircleShapeC2EPK10b2ShapeDef
; demangled: b2CircleShape::b2CircleShape(b2ShapeDef const*)
; decoder-mode: arm
007e9a08  70 40 2d e9                                      push {r4, r5, r6, lr}
007e9a0c  44 50 9f e5                                      ldr r5, [pc, #0x44]
007e9a10  00 40 a0 e1                                      mov r4, r0
007e9a14  01 60 a0 e1                                      mov r6, r1
007e9a18  92 f1 ff eb                                      bl #0x7e6068
007e9a1c  38 30 9f e5                                      ldr r3, [pc, #0x38]
007e9a20  05 50 8f e0                                      add r5, pc, r5
007e9a24  00 20 a0 e3                                      mov r2, #0
007e9a28  03 30 95 e7                                      ldr r3, [r5, r3]
007e9a2c  04 20 84 e5                                      str r2, [r4, #4]
007e9a30  04 00 a0 e1                                      mov r0, r4
007e9a34  08 30 83 e2                                      add r3, r3, #8
007e9a38  00 30 84 e5                                      str r3, [r4]
007e9a3c  20 30 96 e5                                      ldr r3, [r6, #0x20]
007e9a40  30 30 84 e5                                      str r3, [r4, #0x30]
007e9a44  24 30 96 e5                                      ldr r3, [r6, #0x24]
007e9a48  34 30 84 e5                                      str r3, [r4, #0x34]
007e9a4c  28 30 96 e5                                      ldr r3, [r6, #0x28]
007e9a50  38 30 84 e5                                      str r3, [r4, #0x38]
007e9a54  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007e9a58  70 b0 1a 00 6c 08 00 00                          .byte 0x70, 0xb0, 0x1a, 0x00, 0x6c, 0x08, 0x00, 0x00

; FUNCTION 0x007e9a60, declared_size=60, range_size=60, mode=arm
; class-group: b2CircleShape
; alias: _ZN13b2CircleShapeD0Ev
; demangled: b2CircleShape::~b2CircleShape()
; decoder-mode: arm
007e9a60  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007e9a64  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007e9a68  10 40 2d e9                                      push {r4, lr}
007e9a6c  03 30 8f e0                                      add r3, pc, r3
007e9a70  02 20 93 e7                                      ldr r2, [r3, r2]
007e9a74  00 40 a0 e1                                      mov r4, r0
007e9a78  08 20 82 e2                                      add r2, r2, #8
007e9a7c  00 20 80 e5                                      str r2, [r0]
007e9a80  bc f1 ff eb                                      bl #0x7e6178
007e9a84  04 00 a0 e1                                      mov r0, r4
007e9a88  08 92 ec eb                                      bl #0x30e2b0
007e9a8c  04 00 a0 e1                                      mov r0, r4
007e9a90  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007e9a94  24 b0 1a 00 6c 08 00 00                          .byte 0x24, 0xb0, 0x1a, 0x00, 0x6c, 0x08, 0x00, 0x00
