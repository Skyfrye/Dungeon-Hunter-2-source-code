; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004701c4, declared_size=4, range_size=4, mode=arm
; class-group: POItem
; alias: _ZN6POItem19onCollisionPersistsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: POItem::onCollisionPersists(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
004701c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004701c8, declared_size=52, range_size=52, mode=arm
; class-group: POItem
; alias: _ZN6POItemD1Ev
; demangled: POItem::~POItem()
; decoder-mode: arm
004701c8  24 30 9f e5                                      ldr r3, [pc, #0x24]
004701cc  24 20 9f e5                                      ldr r2, [pc, #0x24]
004701d0  10 40 2d e9                                      push {r4, lr}
004701d4  03 30 8f e0                                      add r3, pc, r3
004701d8  02 20 93 e7                                      ldr r2, [r3, r2]
004701dc  00 40 a0 e1                                      mov r4, r0
004701e0  08 20 82 e2                                      add r2, r2, #8
004701e4  00 20 80 e5                                      str r2, [r0]
004701e8  4c fb ff eb                                      bl #0x46ef20
004701ec  04 00 a0 e1                                      mov r0, r4
004701f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004701f4  bc 48 52 00 90 06 00 00                          .byte 0xbc, 0x48, 0x52, 0x00, 0x90, 0x06, 0x00, 0x00

; FUNCTION 0x004701fc, declared_size=172, range_size=172, mode=arm
; class-group: POItem
; alias: _ZN6POItem15onCollisionEndsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: POItem::onCollisionEnds(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
004701fc  70 40 2d e9                                      push {r4, r5, r6, lr}
00470200  08 30 90 e5                                      ldr r3, [r0, #8]
00470204  18 d0 4d e2                                      sub sp, sp, #0x18
00470208  0c 40 8d e2                                      add r4, sp, #0xc
0047020c  04 00 a0 e1                                      mov r0, r4
00470210  01 50 a0 e1                                      mov r5, r1
00470214  03 10 a0 e1                                      mov r1, r3
00470218  c3 36 fb eb                                      bl #0x33dd2c
0047021c  04 00 a0 e1                                      mov r0, r4
00470220  00 10 a0 e3                                      mov r1, #0
00470224  e5 3e fb eb                                      bl #0x33fdc0
00470228  00 40 50 e2                                      subs r4, r0, #0
0047022c  02 00 00 0a                                      beq #0x47023c
00470230  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00470234  03 00 53 e3                                      cmp r3, #3
00470238  00 00 00 0a                                      beq #0x470240
0047023c  00 40 a0 e3                                      mov r4, #0
00470240  00 00 55 e3                                      cmp r5, #0
00470244  03 00 00 0a                                      beq #0x470258
00470248  08 50 95 e5                                      ldr r5, [r5, #8]
0047024c  00 00 54 e3                                      cmp r4, #0
00470250  00 00 55 13                                      cmpne r5, #0
00470254  01 00 00 1a                                      bne #0x470260
00470258  18 d0 8d e2                                      add sp, sp, #0x18
0047025c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00470260  00 30 94 e5                                      ldr r3, [r4]
00470264  04 00 a0 e1                                      mov r0, r4
00470268  00 10 a0 e3                                      mov r1, #0
0047026c  0f e0 a0 e1                                      mov lr, pc
00470270  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00470274  00 00 50 e3                                      cmp r0, #0
00470278  f6 ff ff 0a                                      beq #0x470258
0047027c  05 10 a0 e1                                      mov r1, r5
00470280  0d 00 a0 e1                                      mov r0, sp
00470284  a8 36 fb eb                                      bl #0x33dd2c
00470288  0d 00 a0 e1                                      mov r0, sp
0047028c  30 3f fb eb                                      bl #0x33ff54
00470290  00 10 50 e2                                      subs r1, r0, #0
00470294  0d 60 a0 e1                                      mov r6, sp
00470298  ee ff ff 0a                                      beq #0x470258
0047029c  04 00 a0 e1                                      mov r0, r4
004702a0  a1 ee fd eb                                      bl #0x3ebd2c
004702a4  eb ff ff ea                                      b #0x470258

; FUNCTION 0x004702a8, declared_size=172, range_size=172, mode=arm
; class-group: POItem
; alias: _ZN6POItem17onCollisionBeginsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: POItem::onCollisionBegins(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
004702a8  70 40 2d e9                                      push {r4, r5, r6, lr}
004702ac  08 30 90 e5                                      ldr r3, [r0, #8]
004702b0  18 d0 4d e2                                      sub sp, sp, #0x18
004702b4  0c 40 8d e2                                      add r4, sp, #0xc
004702b8  04 00 a0 e1                                      mov r0, r4
004702bc  01 50 a0 e1                                      mov r5, r1
004702c0  03 10 a0 e1                                      mov r1, r3
004702c4  98 36 fb eb                                      bl #0x33dd2c
004702c8  04 00 a0 e1                                      mov r0, r4
004702cc  00 10 a0 e3                                      mov r1, #0
004702d0  ba 3e fb eb                                      bl #0x33fdc0
004702d4  00 40 50 e2                                      subs r4, r0, #0
004702d8  02 00 00 0a                                      beq #0x4702e8
004702dc  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
004702e0  03 00 53 e3                                      cmp r3, #3
004702e4  00 00 00 0a                                      beq #0x4702ec
004702e8  00 40 a0 e3                                      mov r4, #0
004702ec  00 00 55 e3                                      cmp r5, #0
004702f0  03 00 00 0a                                      beq #0x470304
004702f4  08 50 95 e5                                      ldr r5, [r5, #8]
004702f8  00 00 54 e3                                      cmp r4, #0
004702fc  00 00 55 13                                      cmpne r5, #0
00470300  01 00 00 1a                                      bne #0x47030c
00470304  18 d0 8d e2                                      add sp, sp, #0x18
00470308  70 80 bd e8                                      pop {r4, r5, r6, pc}
0047030c  00 30 94 e5                                      ldr r3, [r4]
00470310  04 00 a0 e1                                      mov r0, r4
00470314  00 10 a0 e3                                      mov r1, #0
00470318  0f e0 a0 e1                                      mov lr, pc
0047031c  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00470320  00 00 50 e3                                      cmp r0, #0
00470324  f6 ff ff 0a                                      beq #0x470304
00470328  05 10 a0 e1                                      mov r1, r5
0047032c  0d 00 a0 e1                                      mov r0, sp
00470330  7d 36 fb eb                                      bl #0x33dd2c
00470334  0d 00 a0 e1                                      mov r0, sp
00470338  05 3f fb eb                                      bl #0x33ff54
0047033c  00 10 50 e2                                      subs r1, r0, #0
00470340  0d 60 a0 e1                                      mov r6, sp
00470344  ee ff ff 0a                                      beq #0x470304
00470348  04 00 a0 e1                                      mov r0, r4
0047034c  3d ef fd eb                                      bl #0x3ec048
00470350  eb ff ff ea                                      b #0x470304

; FUNCTION 0x00470430, declared_size=60, range_size=60, mode=arm
; class-group: POItem
; alias: _ZN6POItemD0Ev
; demangled: POItem::~POItem()
; decoder-mode: arm
00470430  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00470434  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00470438  10 40 2d e9                                      push {r4, lr}
0047043c  03 30 8f e0                                      add r3, pc, r3
00470440  02 20 93 e7                                      ldr r2, [r3, r2]
00470444  00 40 a0 e1                                      mov r4, r0
00470448  08 20 82 e2                                      add r2, r2, #8
0047044c  00 20 80 e5                                      str r2, [r0]
00470450  b2 fa ff eb                                      bl #0x46ef20
00470454  04 00 a0 e1                                      mov r0, r4
00470458  f8 7f fa eb                                      bl #0x310440
0047045c  04 00 a0 e1                                      mov r0, r4
00470460  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00470464  54 46 52 00 90 06 00 00                          .byte 0x54, 0x46, 0x52, 0x00, 0x90, 0x06, 0x00, 0x00
