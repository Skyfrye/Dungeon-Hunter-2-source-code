; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00529da4, declared_size=368, range_size=368, mode=arm
; class-group: sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>
; alias: _ZN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicE9_markNodeERSt3mapIjNS5_7_InEdgeESt4lessIjESaISt4pairIKjS7_EEERS7_
; demangled: sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_markNode(std::map<unsigned int, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge> > >&, sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::_InEdge&)
; decoder-mode: arm
00529da4  70 40 2d e9                                      push {r4, r5, r6, lr}
00529da8  00 30 92 e5                                      ldr r3, [r2]
00529dac  18 d0 4d e2                                      sub sp, sp, #0x18
00529db0  01 60 a0 e1                                      mov r6, r1
00529db4  03 00 a0 e1                                      mov r0, r3
00529db8  00 30 93 e5                                      ldr r3, [r3]
00529dbc  02 50 a0 e1                                      mov r5, r2
00529dc0  0f e0 a0 e1                                      mov lr, pc
00529dc4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00529dc8  00 30 90 e5                                      ldr r3, [r0]
00529dcc  00 40 a0 e1                                      mov r4, r0
00529dd0  0f e0 a0 e1                                      mov lr, pc
00529dd4  00 f0 93 e5                                      ldr pc, [r3]
00529dd8  04 30 96 e5                                      ldr r3, [r6, #4]
00529ddc  00 00 53 e3                                      cmp r3, #0
00529de0  47 00 00 0a                                      beq #0x529f04
00529de4  06 10 a0 e1                                      mov r1, r6
00529de8  00 00 00 ea                                      b #0x529df0
00529dec  02 30 a0 e1                                      mov r3, r2
00529df0  10 20 93 e5                                      ldr r2, [r3, #0x10]
00529df4  02 00 50 e1                                      cmp r0, r2
00529df8  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
00529dfc  08 20 93 95                                      ldrls r2, [r3, #8]
00529e00  01 30 a0 81                                      movhi r3, r1
00529e04  03 10 a0 e1                                      mov r1, r3
00529e08  00 00 52 e3                                      cmp r2, #0
00529e0c  f6 ff ff 1a                                      bne #0x529dec
00529e10  03 00 56 e1                                      cmp r6, r3
00529e14  0a 00 00 0a                                      beq #0x529e44
00529e18  10 20 93 e5                                      ldr r2, [r3, #0x10]
00529e1c  02 00 50 e1                                      cmp r0, r2
00529e20  37 00 00 3a                                      blo #0x529f04
00529e24  03 00 56 e1                                      cmp r6, r3
00529e28  05 00 00 0a                                      beq #0x529e44
00529e2c  18 00 93 e5                                      ldr r0, [r3, #0x18]
00529e30  04 10 95 e5                                      ldr r1, [r5, #4]
00529e34  dc 92 f7 eb                                      bl #0x30e9ac
00529e38  00 00 50 e3                                      cmp r0, #0
00529e3c  00 00 a0 13                                      movne r0, #0
00529e40  2d 00 00 1a                                      bne #0x529efc
00529e44  04 00 a0 e1                                      mov r0, r4
00529e48  00 30 94 e5                                      ldr r3, [r4]
00529e4c  0f e0 a0 e1                                      mov lr, pc
00529e50  00 f0 93 e5                                      ldr pc, [r3]
00529e54  04 c0 96 e5                                      ldr ip, [r6, #4]
00529e58  00 40 a0 e1                                      mov r4, r0
00529e5c  00 00 5c e3                                      cmp ip, #0
00529e60  06 20 a0 11                                      movne r2, r6
00529e64  01 00 00 1a                                      bne #0x529e70
00529e68  27 00 00 ea                                      b #0x529f0c
00529e6c  03 c0 a0 e1                                      mov ip, r3
00529e70  10 30 9c e5                                      ldr r3, [ip, #0x10]
00529e74  03 00 54 e1                                      cmp r4, r3
00529e78  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
00529e7c  08 30 9c 95                                      ldrls r3, [ip, #8]
00529e80  02 c0 a0 81                                      movhi ip, r2
00529e84  0c 20 a0 e1                                      mov r2, ip
00529e88  00 00 53 e3                                      cmp r3, #0
00529e8c  f6 ff ff 1a                                      bne #0x529e6c
00529e90  0c 00 56 e1                                      cmp r6, ip
00529e94  03 00 00 0a                                      beq #0x529ea8
00529e98  10 20 9c e5                                      ldr r2, [ip, #0x10]
00529e9c  0c 30 a0 e1                                      mov r3, ip
00529ea0  02 00 54 e1                                      cmp r4, r2
00529ea4  0c 00 00 2a                                      bhs #0x529edc
00529ea8  00 e0 a0 e3                                      mov lr, #0
00529eac  0d 30 a0 e1                                      mov r3, sp
00529eb0  00 40 8d e5                                      str r4, [sp]
00529eb4  06 10 a0 e1                                      mov r1, r6
00529eb8  10 00 8d e2                                      add r0, sp, #0x10
00529ebc  14 20 8d e2                                      add r2, sp, #0x14
00529ec0  00 40 a0 e3                                      mov r4, #0
00529ec4  04 40 8d e5                                      str r4, [sp, #4]
00529ec8  0c e0 8d e5                                      str lr, [sp, #0xc]
00529ecc  14 c0 8d e5                                      str ip, [sp, #0x14]
00529ed0  08 e0 8d e5                                      str lr, [sp, #8]
00529ed4  d5 fe ff eb                                      bl #0x529a30
00529ed8  10 30 9d e5                                      ldr r3, [sp, #0x10]
00529edc  05 20 a0 e1                                      mov r2, r5
00529ee0  04 10 92 e4                                      ldr r1, [r2], #4
00529ee4  01 00 a0 e3                                      mov r0, #1
00529ee8  14 10 83 e5                                      str r1, [r3, #0x14]
00529eec  04 10 95 e5                                      ldr r1, [r5, #4]
00529ef0  18 10 83 e5                                      str r1, [r3, #0x18]
00529ef4  04 20 92 e5                                      ldr r2, [r2, #4]
00529ef8  1c 20 83 e5                                      str r2, [r3, #0x1c]
00529efc  18 d0 8d e2                                      add sp, sp, #0x18
00529f00  70 80 bd e8                                      pop {r4, r5, r6, pc}
00529f04  06 30 a0 e1                                      mov r3, r6
00529f08  c5 ff ff ea                                      b #0x529e24
00529f0c  06 c0 a0 e1                                      mov ip, r6
00529f10  de ff ff ea                                      b #0x529e90

; FUNCTION 0x00529f8c, declared_size=52, range_size=52, mode=arm
; class-group: sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>
; alias: _ZN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicED1Ev
; demangled: sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::~AlgoAStar()
; decoder-mode: arm
00529f8c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00529f90  24 20 9f e5                                      ldr r2, [pc, #0x24]
00529f94  10 40 2d e9                                      push {r4, lr}
00529f98  03 30 8f e0                                      add r3, pc, r3
00529f9c  02 20 93 e7                                      ldr r2, [r3, r2]
00529fa0  00 40 a0 e1                                      mov r4, r0
00529fa4  08 20 82 e2                                      add r2, r2, #8
00529fa8  08 20 80 e4                                      str r2, [r0], #8
00529fac  e6 ff ff eb                                      bl #0x529f4c
00529fb0  04 00 a0 e1                                      mov r0, r4
00529fb4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00529fb8  f8 aa 46 00 1c 10 00 00                          .byte 0xf8, 0xaa, 0x46, 0x00, 0x1c, 0x10, 0x00, 0x00

; FUNCTION 0x00529ff4, declared_size=60, range_size=60, mode=arm
; class-group: sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>
; alias: _ZN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicED0Ev
; demangled: sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::~AlgoAStar()
; decoder-mode: arm
00529ff4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00529ff8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00529ffc  10 40 2d e9                                      push {r4, lr}
0052a000  03 30 8f e0                                      add r3, pc, r3
0052a004  02 20 93 e7                                      ldr r2, [r3, r2]
0052a008  00 40 a0 e1                                      mov r4, r0
0052a00c  08 20 82 e2                                      add r2, r2, #8
0052a010  08 20 80 e4                                      str r2, [r0], #8
0052a014  cc ff ff eb                                      bl #0x529f4c
0052a018  04 00 a0 e1                                      mov r0, r4
0052a01c  07 99 f7 eb                                      bl #0x310440
0052a020  04 00 a0 e1                                      mov r0, r4
0052a024  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0052a028  90 aa 46 00 1c 10 00 00                          .byte 0x90, 0xaa, 0x46, 0x00, 0x1c, 0x10, 0x00, 0x00

; FUNCTION 0x0052ad4c, declared_size=2068, range_size=2068, mode=arm
; class-group: sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>
; alias: _ZN3sfc4math5graph9AlgoAStarI13PFGInnerGraph21DiabloIPhoneHeuristicE8findNodeEjRKNS1_5ITestI12PFGInnerEdge12PFGInnerNodeEEjPSt4listIPKS7_SaISE_EE
; demangled: sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>::findNode(unsigned int, sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode> const&, unsigned int, std::list<PFGInnerEdge const*, std::allocator<PFGInnerEdge const*> >*)
; decoder-mode: arm
0052ad4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0052ad50  00 50 a0 e1                                      mov r5, r0
0052ad54  04 00 90 e5                                      ldr r0, [r0, #4]
0052ad58  02 60 a0 e1                                      mov r6, r2
0052ad5c  d4 d0 4d e2                                      sub sp, sp, #0xd4
0052ad60  08 20 90 e5                                      ldr r2, [r0, #8]
0052ad64  f8 a0 9d e5                                      ldr sl, [sp, #0xf8]
0052ad68  0c 30 8d e5                                      str r3, [sp, #0xc]
0052ad6c  00 00 52 e3                                      cmp r2, #0
0052ad70  04 00 80 e2                                      add r0, r0, #4
0052ad74  e5 01 00 0a                                      beq #0x52b510
0052ad78  00 c0 a0 e1                                      mov ip, r0
0052ad7c  00 00 00 ea                                      b #0x52ad84
0052ad80  03 20 a0 e1                                      mov r2, r3
0052ad84  10 30 92 e5                                      ldr r3, [r2, #0x10]
0052ad88  03 00 51 e1                                      cmp r1, r3
0052ad8c  0c 30 92 85                                      ldrhi r3, [r2, #0xc]
0052ad90  08 30 92 95                                      ldrls r3, [r2, #8]
0052ad94  0c 20 a0 81                                      movhi r2, ip
0052ad98  02 c0 a0 e1                                      mov ip, r2
0052ad9c  00 00 53 e3                                      cmp r3, #0
0052ada0  f6 ff ff 1a                                      bne #0x52ad80
0052ada4  02 00 50 e1                                      cmp r0, r2
0052ada8  e3 01 00 0a                                      beq #0x52b53c
0052adac  10 30 92 e5                                      ldr r3, [r2, #0x10]
0052adb0  03 00 51 e1                                      cmp r1, r3
0052adb4  d5 01 00 3a                                      blo #0x52b510
0052adb8  02 00 50 e1                                      cmp r0, r2
0052adbc  de 01 00 0a                                      beq #0x52b53c
0052adc0  14 20 92 e5                                      ldr r2, [r2, #0x14]
0052adc4  00 80 a0 e3                                      mov r8, #0
0052adc8  10 20 8d e5                                      str r2, [sp, #0x10]
0052adcc  08 20 85 e2                                      add r2, r5, #8
0052add0  1c 20 8d e5                                      str r2, [sp, #0x1c]
0052add4  14 80 c5 e5                                      strb r8, [r5, #0x14]
0052add8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0052addc  5a fc ff eb                                      bl #0x529f4c
0052ade0  10 30 9d e5                                      ldr r3, [sp, #0x10]
0052ade4  18 80 85 e5                                      str r8, [r5, #0x18]
0052ade8  1c 80 85 e5                                      str r8, [r5, #0x1c]
0052adec  08 00 53 e1                                      cmp r3, r8
0052adf0  20 80 85 e5                                      str r8, [r5, #0x20]
0052adf4  24 80 85 e5                                      str r8, [r5, #0x24]
0052adf8  7c 01 00 0a                                      beq #0x52b3f0
0052adfc  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0052ae00  08 00 5a e1                                      cmp sl, r8
0052ae04  d0 70 8d e2                                      add r7, sp, #0xd0
0052ae08  0c a0 a0 01                                      moveq sl, ip
0052ae0c  9c 80 67 e5                                      strb r8, [r7, #-0x9c]!
0052ae10  10 a0 85 e5                                      str sl, [r5, #0x10]
0052ae14  10 20 9d e5                                      ldr r2, [sp, #0x10]
0052ae18  b0 40 8d e2                                      add r4, sp, #0xb0
0052ae1c  44 80 8d e5                                      str r8, [sp, #0x44]
0052ae20  b0 40 8d e5                                      str r4, [sp, #0xb0]
0052ae24  b4 40 8d e5                                      str r4, [sp, #0xb4]
0052ae28  7c 80 8d e5                                      str r8, [sp, #0x7c]
0052ae2c  80 80 8d e5                                      str r8, [sp, #0x80]
0052ae30  84 80 8d e5                                      str r8, [sp, #0x84]
0052ae34  38 80 8d e5                                      str r8, [sp, #0x38]
0052ae38  3c 70 8d e5                                      str r7, [sp, #0x3c]
0052ae3c  40 70 8d e5                                      str r7, [sp, #0x40]
0052ae40  00 30 92 e5                                      ldr r3, [r2]
0052ae44  02 00 a0 e1                                      mov r0, r2
0052ae48  0f e0 a0 e1                                      mov lr, pc
0052ae4c  00 f0 93 e5                                      ldr pc, [r3]
0052ae50  38 c0 9d e5                                      ldr ip, [sp, #0x38]
0052ae54  00 e0 a0 e1                                      mov lr, r0
0052ae58  08 00 5c e1                                      cmp ip, r8
0052ae5c  07 c0 a0 01                                      moveq ip, r7
0052ae60  0f 00 00 0a                                      beq #0x52aea4
0052ae64  07 20 a0 e1                                      mov r2, r7
0052ae68  00 00 00 ea                                      b #0x52ae70
0052ae6c  03 c0 a0 e1                                      mov ip, r3
0052ae70  10 30 9c e5                                      ldr r3, [ip, #0x10]
0052ae74  03 00 5e e1                                      cmp lr, r3
0052ae78  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0052ae7c  08 30 9c 95                                      ldrls r3, [ip, #8]
0052ae80  02 c0 a0 81                                      movhi ip, r2
0052ae84  0c 20 a0 e1                                      mov r2, ip
0052ae88  00 00 53 e3                                      cmp r3, #0
0052ae8c  f6 ff ff 1a                                      bne #0x52ae6c
0052ae90  07 00 5c e1                                      cmp ip, r7
0052ae94  02 00 00 0a                                      beq #0x52aea4
0052ae98  10 30 9c e5                                      ldr r3, [ip, #0x10]
0052ae9c  03 00 5e e1                                      cmp lr, r3
0052aea0  0c 00 00 2a                                      bhs #0x52aed8
0052aea4  00 80 a0 e3                                      mov r8, #0
0052aea8  cc c0 8d e5                                      str ip, [sp, #0xcc]
0052aeac  c8 00 8d e2                                      add r0, sp, #0xc8
0052aeb0  00 c0 a0 e3                                      mov ip, #0
0052aeb4  07 10 a0 e1                                      mov r1, r7
0052aeb8  cc 20 8d e2                                      add r2, sp, #0xcc
0052aebc  6c 30 8d e2                                      add r3, sp, #0x6c
0052aec0  70 c0 8d e5                                      str ip, [sp, #0x70]
0052aec4  6c e0 8d e5                                      str lr, [sp, #0x6c]
0052aec8  78 80 8d e5                                      str r8, [sp, #0x78]
0052aecc  74 80 8d e5                                      str r8, [sp, #0x74]
0052aed0  d6 fa ff eb                                      bl #0x529a30
0052aed4  c8 c0 9d e5                                      ldr ip, [sp, #0xc8]
0052aed8  00 a0 a0 e3                                      mov sl, #0
0052aedc  00 30 a0 e3                                      mov r3, #0
0052aee0  14 30 8c e5                                      str r3, [ip, #0x14]
0052aee4  1c a0 8c e5                                      str sl, [ip, #0x1c]
0052aee8  18 a0 8c e5                                      str sl, [ip, #0x18]
0052aeec  10 90 9d e5                                      ldr sb, [sp, #0x10]
0052aef0  7c 30 8d e2                                      add r3, sp, #0x7c
0052aef4  98 c0 8d e2                                      add ip, sp, #0x98
0052aef8  8c 20 8d e2                                      add r2, sp, #0x8c
0052aefc  14 30 8d e5                                      str r3, [sp, #0x14]
0052af00  a4 80 8d e2                                      add r8, sp, #0xa4
0052af04  20 c0 8d e5                                      str ip, [sp, #0x20]
0052af08  18 20 8d e5                                      str r2, [sp, #0x18]
0052af0c  00 30 96 e5                                      ldr r3, [r6]
0052af10  06 00 a0 e1                                      mov r0, r6
0052af14  09 10 a0 e1                                      mov r1, sb
0052af18  0f e0 a0 e1                                      mov lr, pc
0052af1c  00 f0 93 e5                                      ldr pc, [r3]
0052af20  00 00 50 e3                                      cmp r0, #0
0052af24  7e 00 00 0a                                      beq #0x52b124
0052af28  06 00 a0 e1                                      mov r0, r6
0052af2c  00 30 96 e5                                      ldr r3, [r6]
0052af30  09 10 a0 e1                                      mov r1, sb
0052af34  0f e0 a0 e1                                      mov lr, pc
0052af38  00 f0 93 e5                                      ldr pc, [r3]
0052af3c  00 00 50 e3                                      cmp r0, #0
0052af40  14 00 c5 e5                                      strb r0, [r5, #0x14]
0052af44  4a 01 00 0a                                      beq #0x52b474
0052af48  c0 30 8d e2                                      add r3, sp, #0xc0
0052af4c  c4 c0 8d e2                                      add ip, sp, #0xc4
0052af50  5c 20 8d e2                                      add r2, sp, #0x5c
0052af54  0c 30 8d e5                                      str r3, [sp, #0xc]
0052af58  18 c0 8d e5                                      str ip, [sp, #0x18]
0052af5c  20 20 8d e5                                      str r2, [sp, #0x20]
0052af60  b8 30 8d e2                                      add r3, sp, #0xb8
0052af64  bc c0 8d e2                                      add ip, sp, #0xbc
0052af68  4c 20 8d e2                                      add r2, sp, #0x4c
0052af6c  00 a0 a0 e3                                      mov sl, #0
0052af70  00 b0 a0 e3                                      mov fp, #0
0052af74  24 30 8d e5                                      str r3, [sp, #0x24]
0052af78  28 c0 8d e5                                      str ip, [sp, #0x28]
0052af7c  2c 20 8d e5                                      str r2, [sp, #0x2c]
0052af80  05 60 a0 e1                                      mov r6, r5
0052af84  04 80 a0 e1                                      mov r8, r4
0052af88  00 30 99 e5                                      ldr r3, [sb]
0052af8c  09 00 a0 e1                                      mov r0, sb
0052af90  0f e0 a0 e1                                      mov lr, pc
0052af94  00 f0 93 e5                                      ldr pc, [r3]
0052af98  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0052af9c  00 40 a0 e1                                      mov r4, r0
0052afa0  00 30 9c e5                                      ldr r3, [ip]
0052afa4  0c 00 a0 e1                                      mov r0, ip
0052afa8  0f e0 a0 e1                                      mov lr, pc
0052afac  00 f0 93 e5                                      ldr pc, [r3]
0052afb0  00 00 54 e1                                      cmp r4, r0
0052afb4  02 01 00 0a                                      beq #0x52b3c4
0052afb8  00 30 99 e5                                      ldr r3, [sb]
0052afbc  09 00 a0 e1                                      mov r0, sb
0052afc0  10 50 96 e5                                      ldr r5, [r6, #0x10]
0052afc4  0f e0 a0 e1                                      mov lr, pc
0052afc8  00 f0 93 e5                                      ldr pc, [r3]
0052afcc  38 40 9d e5                                      ldr r4, [sp, #0x38]
0052afd0  00 c0 a0 e1                                      mov ip, r0
0052afd4  00 00 54 e3                                      cmp r4, #0
0052afd8  07 40 a0 01                                      moveq r4, r7
0052afdc  0f 00 00 0a                                      beq #0x52b020
0052afe0  07 20 a0 e1                                      mov r2, r7
0052afe4  00 00 00 ea                                      b #0x52afec
0052afe8  03 40 a0 e1                                      mov r4, r3
0052afec  10 30 94 e5                                      ldr r3, [r4, #0x10]
0052aff0  03 00 5c e1                                      cmp ip, r3
0052aff4  0c 30 94 85                                      ldrhi r3, [r4, #0xc]
0052aff8  08 30 94 95                                      ldrls r3, [r4, #8]
0052affc  02 40 a0 81                                      movhi r4, r2
0052b000  04 20 a0 e1                                      mov r2, r4
0052b004  00 00 53 e3                                      cmp r3, #0
0052b008  f6 ff ff 1a                                      bne #0x52afe8
0052b00c  07 00 54 e1                                      cmp r4, r7
0052b010  02 00 00 0a                                      beq #0x52b020
0052b014  10 30 94 e5                                      ldr r3, [r4, #0x10]
0052b018  03 00 5c e1                                      cmp ip, r3
0052b01c  0a 00 00 2a                                      bhs #0x52b04c
0052b020  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0052b024  07 10 a0 e1                                      mov r1, r7
0052b028  18 20 9d e5                                      ldr r2, [sp, #0x18]
0052b02c  20 30 9d e5                                      ldr r3, [sp, #0x20]
0052b030  c4 40 8d e5                                      str r4, [sp, #0xc4]
0052b034  5c c0 8d e5                                      str ip, [sp, #0x5c]
0052b038  60 b0 8d e5                                      str fp, [sp, #0x60]
0052b03c  64 a0 8d e5                                      str sl, [sp, #0x64]
0052b040  68 a0 8d e5                                      str sl, [sp, #0x68]
0052b044  79 fa ff eb                                      bl #0x529a30
0052b048  c0 40 9d e5                                      ldr r4, [sp, #0xc0]
0052b04c  05 00 a0 e1                                      mov r0, r5
0052b050  00 50 95 e5                                      ldr r5, [r5]
0052b054  8a fe ff eb                                      bl #0x52aa84
0052b058  14 20 94 e5                                      ldr r2, [r4, #0x14]
0052b05c  00 30 a0 e1                                      mov r3, r0
0052b060  09 00 a0 e1                                      mov r0, sb
0052b064  08 20 83 e5                                      str r2, [r3, #8]
0052b068  04 20 95 e5                                      ldr r2, [r5, #4]
0052b06c  00 50 83 e5                                      str r5, [r3]
0052b070  04 20 83 e5                                      str r2, [r3, #4]
0052b074  00 30 82 e5                                      str r3, [r2]
0052b078  04 30 85 e5                                      str r3, [r5, #4]
0052b07c  00 30 99 e5                                      ldr r3, [sb]
0052b080  0f e0 a0 e1                                      mov lr, pc
0052b084  00 f0 93 e5                                      ldr pc, [r3]
0052b088  38 c0 9d e5                                      ldr ip, [sp, #0x38]
0052b08c  00 e0 a0 e1                                      mov lr, r0
0052b090  00 00 5c e3                                      cmp ip, #0
0052b094  07 c0 a0 01                                      moveq ip, r7
0052b098  0f 00 00 0a                                      beq #0x52b0dc
0052b09c  07 20 a0 e1                                      mov r2, r7
0052b0a0  00 00 00 ea                                      b #0x52b0a8
0052b0a4  03 c0 a0 e1                                      mov ip, r3
0052b0a8  10 30 9c e5                                      ldr r3, [ip, #0x10]
0052b0ac  03 00 5e e1                                      cmp lr, r3
0052b0b0  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
0052b0b4  08 30 9c 95                                      ldrls r3, [ip, #8]
0052b0b8  02 c0 a0 81                                      movhi ip, r2
0052b0bc  0c 20 a0 e1                                      mov r2, ip
0052b0c0  00 00 53 e3                                      cmp r3, #0
0052b0c4  f6 ff ff 1a                                      bne #0x52b0a4
0052b0c8  07 00 5c e1                                      cmp ip, r7
0052b0cc  02 00 00 0a                                      beq #0x52b0dc
0052b0d0  10 30 9c e5                                      ldr r3, [ip, #0x10]
0052b0d4  03 00 5e e1                                      cmp lr, r3
0052b0d8  0a 00 00 2a                                      bhs #0x52b108
0052b0dc  24 00 9d e5                                      ldr r0, [sp, #0x24]
0052b0e0  07 10 a0 e1                                      mov r1, r7
0052b0e4  28 20 9d e5                                      ldr r2, [sp, #0x28]
0052b0e8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0052b0ec  bc c0 8d e5                                      str ip, [sp, #0xbc]
0052b0f0  4c e0 8d e5                                      str lr, [sp, #0x4c]
0052b0f4  50 b0 8d e5                                      str fp, [sp, #0x50]
0052b0f8  54 a0 8d e5                                      str sl, [sp, #0x54]
0052b0fc  58 a0 8d e5                                      str sl, [sp, #0x58]
0052b100  4a fa ff eb                                      bl #0x529a30
0052b104  b8 c0 9d e5                                      ldr ip, [sp, #0xb8]
0052b108  14 30 9c e5                                      ldr r3, [ip, #0x14]
0052b10c  03 00 a0 e1                                      mov r0, r3
0052b110  00 30 93 e5                                      ldr r3, [r3]
0052b114  0f e0 a0 e1                                      mov lr, pc
0052b118  04 f0 93 e5                                      ldr pc, [r3, #4]
0052b11c  00 90 a0 e1                                      mov sb, r0
0052b120  98 ff ff ea                                      b #0x52af88
0052b124  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0052b128  00 00 52 e3                                      cmp r2, #0
0052b12c  7d ff ff 0a                                      beq #0x52af28
0052b130  18 30 95 e5                                      ldr r3, [r5, #0x18]
0052b134  09 00 a0 e1                                      mov r0, sb
0052b138  04 b0 95 e5                                      ldr fp, [r5, #4]
0052b13c  01 30 83 e2                                      add r3, r3, #1
0052b140  18 30 85 e5                                      str r3, [r5, #0x18]
0052b144  00 30 99 e5                                      ldr r3, [sb]
0052b148  0f e0 a0 e1                                      mov lr, pc
0052b14c  00 f0 93 e5                                      ldr pc, [r3]
0052b150  04 20 a0 e1                                      mov r2, r4
0052b154  00 10 a0 e1                                      mov r1, r0
0052b158  0b 00 a0 e1                                      mov r0, fp
0052b15c  b3 fe ff eb                                      bl #0x52ac30
0052b160  b0 20 9d e5                                      ldr r2, [sp, #0xb0]
0052b164  04 00 52 e1                                      cmp r2, r4
0052b168  02 30 a0 e1                                      mov r3, r2
0052b16c  3d 00 00 0a                                      beq #0x52b268
0052b170  00 30 93 e5                                      ldr r3, [r3]
0052b174  04 00 53 e1                                      cmp r3, r4
0052b178  fc ff ff 1a                                      bne #0x52b170
0052b17c  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0052b180  01 30 83 e2                                      add r3, r3, #1
0052b184  1c 30 85 e5                                      str r3, [r5, #0x1c]
0052b188  08 30 92 e5                                      ldr r3, [r2, #8]
0052b18c  00 20 96 e5                                      ldr r2, [r6]
0052b190  03 00 a0 e1                                      mov r0, r3
0052b194  00 30 93 e5                                      ldr r3, [r3]
0052b198  00 b0 92 e5                                      ldr fp, [r2]
0052b19c  0f e0 a0 e1                                      mov lr, pc
0052b1a0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0052b1a4  00 10 a0 e1                                      mov r1, r0
0052b1a8  06 00 a0 e1                                      mov r0, r6
0052b1ac  3b ff 2f e1                                      blx fp
0052b1b0  00 00 50 e3                                      cmp r0, #0
0052b1b4  58 00 00 0a                                      beq #0x52b31c
0052b1b8  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0052b1bc  00 20 96 e5                                      ldr r2, [r6]
0052b1c0  08 30 93 e5                                      ldr r3, [r3, #8]
0052b1c4  00 b0 92 e5                                      ldr fp, [r2]
0052b1c8  03 00 a0 e1                                      mov r0, r3
0052b1cc  00 30 93 e5                                      ldr r3, [r3]
0052b1d0  0f e0 a0 e1                                      mov lr, pc
0052b1d4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0052b1d8  00 10 a0 e1                                      mov r1, r0
0052b1dc  06 00 a0 e1                                      mov r0, r6
0052b1e0  3b ff 2f e1                                      blx fp
0052b1e4  20 20 95 e5                                      ldr r2, [r5, #0x20]
0052b1e8  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0052b1ec  01 20 82 e2                                      add r2, r2, #1
0052b1f0  20 20 85 e5                                      str r2, [r5, #0x20]
0052b1f4  08 b0 93 e5                                      ldr fp, [r3, #8]
0052b1f8  00 30 9b e5                                      ldr r3, [fp]
0052b1fc  0b 00 a0 e1                                      mov r0, fp
0052b200  0f e0 a0 e1                                      mov lr, pc
0052b204  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0052b208  0a 10 a0 e1                                      mov r1, sl
0052b20c  64 8e f7 eb                                      bl #0x30eba4
0052b210  00 10 a0 e3                                      mov r1, #0
0052b214  a4 b0 8d e5                                      str fp, [sp, #0xa4]
0052b218  a8 00 8d e5                                      str r0, [sp, #0xa8]
0052b21c  60 8e f7 eb                                      bl #0x30eba4
0052b220  07 10 a0 e1                                      mov r1, r7
0052b224  ac 00 8d e5                                      str r0, [sp, #0xac]
0052b228  08 20 a0 e1                                      mov r2, r8
0052b22c  05 00 a0 e1                                      mov r0, r5
0052b230  db fa ff eb                                      bl #0x529da4
0052b234  00 00 50 e3                                      cmp r0, #0
0052b238  4d 00 00 1a                                      bne #0x52b374
0052b23c  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
0052b240  0c 10 a0 e3                                      mov r1, #0xc
0052b244  00 30 90 e5                                      ldr r3, [r0]
0052b248  04 20 90 e5                                      ldr r2, [r0, #4]
0052b24c  00 30 82 e5                                      str r3, [r2]
0052b250  04 20 83 e5                                      str r2, [r3, #4]
0052b254  29 77 07 eb                                      bl #0x708f00
0052b258  b0 20 9d e5                                      ldr r2, [sp, #0xb0]
0052b25c  04 00 52 e1                                      cmp r2, r4
0052b260  02 30 a0 e1                                      mov r3, r2
0052b264  c1 ff ff 1a                                      bne #0x52b170
0052b268  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0052b26c  01 20 52 e2                                      subs r2, r2, #1
0052b270  0c 20 8d e5                                      str r2, [sp, #0xc]
0052b274  2b ff ff 0a                                      beq #0x52af28
0052b278  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
0052b27c  80 30 9d e5                                      ldr r3, [sp, #0x80]
0052b280  03 30 62 e0                                      rsb r3, r2, r3
0052b284  43 31 a0 e1                                      asr r3, r3, #2
0052b288  03 11 83 e0                                      add r1, r3, r3, lsl #2
0052b28c  01 12 81 e0                                      add r1, r1, r1, lsl #4
0052b290  01 14 81 e0                                      add r1, r1, r1, lsl #8
0052b294  01 18 81 e0                                      add r1, r1, r1, lsl #16
0052b298  81 30 83 e0                                      add r3, r3, r1, lsl #1
0052b29c  00 00 53 e3                                      cmp r3, #0
0052b2a0  20 ff ff 0a                                      beq #0x52af28
0052b2a4  00 30 92 e5                                      ldr r3, [r2]
0052b2a8  03 00 a0 e1                                      mov r0, r3
0052b2ac  00 30 93 e5                                      ldr r3, [r3]
0052b2b0  0f e0 a0 e1                                      mov lr, pc
0052b2b4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0052b2b8  80 30 9d e5                                      ldr r3, [sp, #0x80]
0052b2bc  00 90 a0 e1                                      mov sb, r0
0052b2c0  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0052b2c4  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
0052b2c8  0c 30 43 e2                                      sub r3, r3, #0xc
0052b2cc  04 a0 90 e5                                      ldr sl, [r0, #4]
0052b2d0  8c 20 8d e5                                      str r2, [sp, #0x8c]
0052b2d4  04 20 93 e5                                      ldr r2, [r3, #4]
0052b2d8  03 10 a0 e1                                      mov r1, r3
0052b2dc  90 20 8d e5                                      str r2, [sp, #0x90]
0052b2e0  08 c0 93 e5                                      ldr ip, [r3, #8]
0052b2e4  03 20 a0 e1                                      mov r2, r3
0052b2e8  18 30 9d e5                                      ldr r3, [sp, #0x18]
0052b2ec  94 c0 8d e5                                      str ip, [sp, #0x94]
0052b2f0  00 c0 a0 e3                                      mov ip, #0
0052b2f4  00 c0 cd e5                                      strb ip, [sp]
0052b2f8  00 c0 a0 e3                                      mov ip, #0
0052b2fc  04 c0 8d e5                                      str ip, [sp, #4]
0052b300  4d f8 ff eb                                      bl #0x52943c
0052b304  80 30 9d e5                                      ldr r3, [sp, #0x80]
0052b308  00 00 59 e3                                      cmp sb, #0
0052b30c  0c 30 43 e2                                      sub r3, r3, #0xc
0052b310  80 30 8d e5                                      str r3, [sp, #0x80]
0052b314  fc fe ff 1a                                      bne #0x52af0c
0052b318  02 ff ff ea                                      b #0x52af28
0052b31c  b0 20 9d e5                                      ldr r2, [sp, #0xb0]
0052b320  00 30 96 e5                                      ldr r3, [r6]
0052b324  06 00 a0 e1                                      mov r0, r6
0052b328  08 10 92 e5                                      ldr r1, [r2, #8]
0052b32c  0f e0 a0 e1                                      mov lr, pc
0052b330  04 f0 93 e5                                      ldr pc, [r3, #4]
0052b334  00 00 50 e3                                      cmp r0, #0
0052b338  bf ff ff 0a                                      beq #0x52b23c
0052b33c  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0052b340  00 20 96 e5                                      ldr r2, [r6]
0052b344  08 30 93 e5                                      ldr r3, [r3, #8]
0052b348  08 b0 92 e5                                      ldr fp, [r2, #8]
0052b34c  03 00 a0 e1                                      mov r0, r3
0052b350  00 30 93 e5                                      ldr r3, [r3]
0052b354  0f e0 a0 e1                                      mov lr, pc
0052b358  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0052b35c  00 10 a0 e1                                      mov r1, r0
0052b360  06 00 a0 e1                                      mov r0, r6
0052b364  3b ff 2f e1                                      blx fp
0052b368  00 00 50 e3                                      cmp r0, #0
0052b36c  b2 ff ff 0a                                      beq #0x52b23c
0052b370  90 ff ff ea                                      b #0x52b1b8
0052b374  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0052b378  00 20 96 e5                                      ldr r2, [r6]
0052b37c  08 30 93 e5                                      ldr r3, [r3, #8]
0052b380  00 b0 92 e5                                      ldr fp, [r2]
0052b384  03 00 a0 e1                                      mov r0, r3
0052b388  00 30 93 e5                                      ldr r3, [r3]
0052b38c  0f e0 a0 e1                                      mov lr, pc
0052b390  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0052b394  00 10 a0 e1                                      mov r1, r0
0052b398  06 00 a0 e1                                      mov r0, r6
0052b39c  3b ff 2f e1                                      blx fp
0052b3a0  00 00 50 e3                                      cmp r0, #0
0052b3a4  14 00 00 1a                                      bne #0x52b3fc
0052b3a8  24 30 95 e5                                      ldr r3, [r5, #0x24]
0052b3ac  14 00 9d e5                                      ldr r0, [sp, #0x14]
0052b3b0  08 10 a0 e1                                      mov r1, r8
0052b3b4  01 30 83 e2                                      add r3, r3, #1
0052b3b8  24 30 85 e5                                      str r3, [r5, #0x24]
0052b3bc  33 fd ff eb                                      bl #0x52a890
0052b3c0  9d ff ff ea                                      b #0x52b23c
0052b3c4  06 50 a0 e1                                      mov r5, r6
0052b3c8  08 40 a0 e1                                      mov r4, r8
0052b3cc  44 30 9d e5                                      ldr r3, [sp, #0x44]
0052b3d0  00 00 53 e3                                      cmp r3, #0
0052b3d4  4f 00 00 1a                                      bne #0x52b518
0052b3d8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0052b3dc  97 fc ff eb                                      bl #0x52a640
0052b3e0  04 00 a0 e1                                      mov r0, r4
0052b3e4  d8 fa ff eb                                      bl #0x529f4c
0052b3e8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0052b3ec  10 20 85 e5                                      str r2, [r5, #0x10]
0052b3f0  14 00 d5 e5                                      ldrb r0, [r5, #0x14]
0052b3f4  d4 d0 8d e2                                      add sp, sp, #0xd4
0052b3f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0052b3fc  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0052b400  80 30 9d e5                                      ldr r3, [sp, #0x80]
0052b404  03 00 50 e1                                      cmp r0, r3
0052b408  15 00 00 0a                                      beq #0x52b464
0052b40c  20 a0 9d e5                                      ldr sl, [sp, #0x20]
0052b410  0c 20 13 e5                                      ldr r2, [r3, #-0xc]
0052b414  0c 30 43 e2                                      sub r3, r3, #0xc
0052b418  03 10 a0 e1                                      mov r1, r3
0052b41c  98 20 8d e5                                      str r2, [sp, #0x98]
0052b420  04 20 93 e5                                      ldr r2, [r3, #4]
0052b424  9c 20 8d e5                                      str r2, [sp, #0x9c]
0052b428  08 c0 93 e5                                      ldr ip, [r3, #8]
0052b42c  03 20 a0 e1                                      mov r2, r3
0052b430  0a 30 a0 e1                                      mov r3, sl
0052b434  a0 c0 8d e5                                      str ip, [sp, #0xa0]
0052b438  00 c0 a0 e3                                      mov ip, #0
0052b43c  00 c0 cd e5                                      strb ip, [sp]
0052b440  00 c0 a0 e3                                      mov ip, #0
0052b444  04 c0 8d e5                                      str ip, [sp, #4]
0052b448  fb f7 ff eb                                      bl #0x52943c
0052b44c  80 30 9d e5                                      ldr r3, [sp, #0x80]
0052b450  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
0052b454  0c 30 43 e2                                      sub r3, r3, #0xc
0052b458  00 00 53 e1                                      cmp r3, r0
0052b45c  80 30 8d e5                                      str r3, [sp, #0x80]
0052b460  ea ff ff 1a                                      bne #0x52b410
0052b464  14 00 9d e5                                      ldr r0, [sp, #0x14]
0052b468  08 10 a0 e1                                      mov r1, r8
0052b46c  07 fd ff eb                                      bl #0x52a890
0052b470  7c ff ff ea                                      b #0x52b268
0052b474  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
0052b478  07 00 56 e1                                      cmp r6, r7
0052b47c  d2 ff ff 0a                                      beq #0x52b3cc
0052b480  14 30 96 e5                                      ldr r3, [r6, #0x14]
0052b484  00 00 53 e3                                      cmp r3, #0
0052b488  0a 00 00 0a                                      beq #0x52b4b8
0052b48c  10 30 95 e5                                      ldr r3, [r5, #0x10]
0052b490  03 00 a0 e1                                      mov r0, r3
0052b494  00 80 93 e5                                      ldr r8, [r3]
0052b498  79 fd ff eb                                      bl #0x52aa84
0052b49c  14 30 96 e5                                      ldr r3, [r6, #0x14]
0052b4a0  08 30 80 e5                                      str r3, [r0, #8]
0052b4a4  04 30 98 e5                                      ldr r3, [r8, #4]
0052b4a8  00 80 80 e5                                      str r8, [r0]
0052b4ac  04 30 80 e5                                      str r3, [r0, #4]
0052b4b0  00 00 83 e5                                      str r0, [r3]
0052b4b4  04 00 88 e5                                      str r0, [r8, #4]
0052b4b8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0052b4bc  00 00 52 e3                                      cmp r2, #0
0052b4c0  05 00 00 0a                                      beq #0x52b4dc
0052b4c4  02 60 a0 e1                                      mov r6, r2
0052b4c8  08 30 96 e5                                      ldr r3, [r6, #8]
0052b4cc  00 00 53 e3                                      cmp r3, #0
0052b4d0  e8 ff ff 0a                                      beq #0x52b478
0052b4d4  03 60 a0 e1                                      mov r6, r3
0052b4d8  fa ff ff ea                                      b #0x52b4c8
0052b4dc  04 30 96 e5                                      ldr r3, [r6, #4]
0052b4e0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0052b4e4  06 00 51 e1                                      cmp r1, r6
0052b4e8  05 00 00 1a                                      bne #0x52b504
0052b4ec  03 60 a0 e1                                      mov r6, r3
0052b4f0  04 30 93 e5                                      ldr r3, [r3, #4]
0052b4f4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0052b4f8  06 00 52 e1                                      cmp r2, r6
0052b4fc  fa ff ff 0a                                      beq #0x52b4ec
0052b500  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0052b504  02 00 53 e1                                      cmp r3, r2
0052b508  03 60 a0 11                                      movne r6, r3
0052b50c  d9 ff ff ea                                      b #0x52b478
0052b510  00 20 a0 e1                                      mov r2, r0
0052b514  27 fe ff ea                                      b #0x52adb8
0052b518  07 00 a0 e1                                      mov r0, r7
0052b51c  38 10 9d e5                                      ldr r1, [sp, #0x38]
0052b520  d1 fa ff eb                                      bl #0x52a06c
0052b524  00 30 a0 e3                                      mov r3, #0
0052b528  40 70 8d e5                                      str r7, [sp, #0x40]
0052b52c  44 30 8d e5                                      str r3, [sp, #0x44]
0052b530  3c 70 8d e5                                      str r7, [sp, #0x3c]
0052b534  38 30 8d e5                                      str r3, [sp, #0x38]
0052b538  a6 ff ff ea                                      b #0x52b3d8
0052b53c  00 40 a0 e3                                      mov r4, #0
0052b540  14 40 c5 e5                                      strb r4, [r5, #0x14]
0052b544  08 00 85 e2                                      add r0, r5, #8
0052b548  7f fa ff eb                                      bl #0x529f4c
0052b54c  24 40 85 e5                                      str r4, [r5, #0x24]
0052b550  18 40 85 e5                                      str r4, [r5, #0x18]
0052b554  1c 40 85 e5                                      str r4, [r5, #0x1c]
0052b558  20 40 85 e5                                      str r4, [r5, #0x20]
0052b55c  a3 ff ff ea                                      b #0x52b3f0
