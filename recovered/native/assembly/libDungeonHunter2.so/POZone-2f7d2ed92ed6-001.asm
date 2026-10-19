; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00470728, declared_size=52, range_size=52, mode=arm
; class-group: POZone
; alias: _ZN6POZoneD1Ev
; demangled: POZone::~POZone()
; decoder-mode: arm
00470728  24 30 9f e5                                      ldr r3, [pc, #0x24]
0047072c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00470730  10 40 2d e9                                      push {r4, lr}
00470734  03 30 8f e0                                      add r3, pc, r3
00470738  02 20 93 e7                                      ldr r2, [r3, r2]
0047073c  00 40 a0 e1                                      mov r4, r0
00470740  08 20 82 e2                                      add r2, r2, #8
00470744  00 20 80 e5                                      str r2, [r0]
00470748  f4 f9 ff eb                                      bl #0x46ef20
0047074c  04 00 a0 e1                                      mov r0, r4
00470750  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00470754  5c 43 52 00 80 36 00 00                          .byte 0x5c, 0x43, 0x52, 0x00, 0x80, 0x36, 0x00, 0x00

; FUNCTION 0x0047075c, declared_size=76, range_size=76, mode=arm
; class-group: POZone
; alias: _ZN6POZone15onCollisionEndsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: POZone::onCollisionEnds(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
0047075c  30 40 2d e9                                      push {r4, r5, lr}
00470760  14 d0 4d e2                                      sub sp, sp, #0x14
00470764  04 40 8d e2                                      add r4, sp, #4
00470768  08 50 90 e5                                      ldr r5, [r0, #8]
0047076c  08 10 91 e5                                      ldr r1, [r1, #8]
00470770  04 00 a0 e1                                      mov r0, r4
00470774  6c 35 fb eb                                      bl #0x33dd2c
00470778  04 00 a0 e1                                      mov r0, r4
0047077c  d8 3d fb eb                                      bl #0x33fee4
00470780  00 00 50 e3                                      cmp r0, #0
00470784  00 00 55 13                                      cmpne r5, #0
00470788  00 10 a0 e1                                      mov r1, r0
0047078c  03 00 00 0a                                      beq #0x4707a0
00470790  05 00 a0 e1                                      mov r0, r5
00470794  00 30 95 e5                                      ldr r3, [r5]
00470798  0f e0 a0 e1                                      mov lr, pc
0047079c  d4 f0 93 e5                                      ldr pc, [r3, #0xd4]
004707a0  14 d0 8d e2                                      add sp, sp, #0x14
004707a4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x004707a8, declared_size=76, range_size=76, mode=arm
; class-group: POZone
; alias: _ZN6POZone19onCollisionPersistsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: POZone::onCollisionPersists(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
004707a8  30 40 2d e9                                      push {r4, r5, lr}
004707ac  14 d0 4d e2                                      sub sp, sp, #0x14
004707b0  04 40 8d e2                                      add r4, sp, #4
004707b4  08 50 90 e5                                      ldr r5, [r0, #8]
004707b8  08 10 91 e5                                      ldr r1, [r1, #8]
004707bc  04 00 a0 e1                                      mov r0, r4
004707c0  59 35 fb eb                                      bl #0x33dd2c
004707c4  04 00 a0 e1                                      mov r0, r4
004707c8  c5 3d fb eb                                      bl #0x33fee4
004707cc  00 00 50 e3                                      cmp r0, #0
004707d0  00 00 55 13                                      cmpne r5, #0
004707d4  00 10 a0 e1                                      mov r1, r0
004707d8  03 00 00 0a                                      beq #0x4707ec
004707dc  05 00 a0 e1                                      mov r0, r5
004707e0  00 30 95 e5                                      ldr r3, [r5]
004707e4  0f e0 a0 e1                                      mov lr, pc
004707e8  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
004707ec  14 d0 8d e2                                      add sp, sp, #0x14
004707f0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x004707f4, declared_size=76, range_size=76, mode=arm
; class-group: POZone
; alias: _ZN6POZone17onCollisionBeginsEP18PhysicalBaseObjectRK7Point2DIfEb
; demangled: POZone::onCollisionBegins(PhysicalBaseObject*, Point2D<float> const&, bool)
; decoder-mode: arm
004707f4  30 40 2d e9                                      push {r4, r5, lr}
004707f8  14 d0 4d e2                                      sub sp, sp, #0x14
004707fc  04 40 8d e2                                      add r4, sp, #4
00470800  08 50 90 e5                                      ldr r5, [r0, #8]
00470804  08 10 91 e5                                      ldr r1, [r1, #8]
00470808  04 00 a0 e1                                      mov r0, r4
0047080c  46 35 fb eb                                      bl #0x33dd2c
00470810  04 00 a0 e1                                      mov r0, r4
00470814  b2 3d fb eb                                      bl #0x33fee4
00470818  00 00 50 e3                                      cmp r0, #0
0047081c  00 00 55 13                                      cmpne r5, #0
00470820  00 10 a0 e1                                      mov r1, r0
00470824  03 00 00 0a                                      beq #0x470838
00470828  05 00 a0 e1                                      mov r0, r5
0047082c  00 30 95 e5                                      ldr r3, [r5]
00470830  0f e0 a0 e1                                      mov lr, pc
00470834  cc f0 93 e5                                      ldr pc, [r3, #0xcc]
00470838  14 d0 8d e2                                      add sp, sp, #0x14
0047083c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00470840, declared_size=132, range_size=132, mode=arm
; class-group: POZone
; alias: _ZN6POZone15onCollisionTestEP18PhysicalBaseObjectsttstt
; demangled: POZone::onCollisionTest(PhysicalBaseObject*, short, unsigned short, unsigned short, short, unsigned short, unsigned short)
; decoder-mode: arm
00470840  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00470844  24 d0 4d e2                                      sub sp, sp, #0x24
00470848  b8 53 dd e1                                      ldrh r5, [sp, #0x38]
0047084c  fc 43 dd e1                                      ldrsh r4, [sp, #0x3c]
00470850  b0 e4 dd e1                                      ldrh lr, [sp, #0x40]
00470854  b4 c4 dd e1                                      ldrh ip, [sp, #0x44]
00470858  00 50 8d e5                                      str r5, [sp]
0047085c  10 40 8d e9                                      stmib sp, {r4, lr}
00470860  0c c0 8d e5                                      str ip, [sp, #0xc]
00470864  00 50 a0 e1                                      mov r5, r0
00470868  01 40 a0 e1                                      mov r4, r1
0047086c  92 f7 ff eb                                      bl #0x46e6bc
00470870  00 60 50 e2                                      subs r6, r0, #0
00470874  02 00 00 1a                                      bne #0x470884
00470878  06 00 a0 e1                                      mov r0, r6
0047087c  24 d0 8d e2                                      add sp, sp, #0x24
00470880  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00470884  14 70 8d e2                                      add r7, sp, #0x14
00470888  08 10 94 e5                                      ldr r1, [r4, #8]
0047088c  07 00 a0 e1                                      mov r0, r7
00470890  08 50 95 e5                                      ldr r5, [r5, #8]
00470894  24 35 fb eb                                      bl #0x33dd2c
00470898  07 00 a0 e1                                      mov r0, r7
0047089c  90 3d fb eb                                      bl #0x33fee4
004708a0  00 00 50 e3                                      cmp r0, #0
004708a4  00 00 55 13                                      cmpne r5, #0
004708a8  00 10 a0 e1                                      mov r1, r0
004708ac  f1 ff ff 0a                                      beq #0x470878
004708b0  05 00 a0 e1                                      mov r0, r5
004708b4  00 30 95 e5                                      ldr r3, [r5]
004708b8  0f e0 a0 e1                                      mov lr, pc
004708bc  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
004708c0  ec ff ff ea                                      b #0x470878

; FUNCTION 0x004709a0, declared_size=60, range_size=60, mode=arm
; class-group: POZone
; alias: _ZN6POZoneD0Ev
; demangled: POZone::~POZone()
; decoder-mode: arm
004709a0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004709a4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004709a8  10 40 2d e9                                      push {r4, lr}
004709ac  03 30 8f e0                                      add r3, pc, r3
004709b0  02 20 93 e7                                      ldr r2, [r3, r2]
004709b4  00 40 a0 e1                                      mov r4, r0
004709b8  08 20 82 e2                                      add r2, r2, #8
004709bc  00 20 80 e5                                      str r2, [r0]
004709c0  56 f9 ff eb                                      bl #0x46ef20
004709c4  04 00 a0 e1                                      mov r0, r4
004709c8  9c 7e fa eb                                      bl #0x310440
004709cc  04 00 a0 e1                                      mov r0, r4
004709d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004709d4  e4 40 52 00 80 36 00 00                          .byte 0xe4, 0x40, 0x52, 0x00, 0x80, 0x36, 0x00, 0x00
