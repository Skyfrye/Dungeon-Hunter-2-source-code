; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051bc44, declared_size=4, range_size=4, mode=arm
; class-group: sfc::math::graph::Edge<PFGInnerNode, float>
; alias: _ZN3sfc4math5graph4EdgeI12PFGInnerNodefED1Ev
; demangled: sfc::math::graph::Edge<PFGInnerNode, float>::~Edge()
; decoder-mode: arm
0051bc44  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051bc48, declared_size=8, range_size=8, mode=arm
; class-group: sfc::math::graph::Edge<PFGInnerNode, float>
; alias: _ZNK3sfc4math5graph4EdgeI12PFGInnerNodefE11getFromNodeEv
; demangled: sfc::math::graph::Edge<PFGInnerNode, float>::getFromNode() const
; decoder-mode: arm
0051bc48  04 00 90 e5                                      ldr r0, [r0, #4]
0051bc4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051bc50, declared_size=8, range_size=8, mode=arm
; class-group: sfc::math::graph::Edge<PFGInnerNode, float>
; alias: _ZNK3sfc4math5graph4EdgeI12PFGInnerNodefE9getToNodeEv
; demangled: sfc::math::graph::Edge<PFGInnerNode, float>::getToNode() const
; decoder-mode: arm
0051bc50  08 00 90 e5                                      ldr r0, [r0, #8]
0051bc54  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051bc60, declared_size=8, range_size=8, mode=arm
; class-group: sfc::math::graph::Edge<PFGInnerNode, float>
; alias: _ZN3sfc4math5graph4EdgeI12PFGInnerNodefE9setWeightEf
; demangled: sfc::math::graph::Edge<PFGInnerNode, float>::setWeight(float)
; decoder-mode: arm
0051bc60  0c 10 80 e5                                      str r1, [r0, #0xc]
0051bc64  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051bc68, declared_size=8, range_size=8, mode=arm
; class-group: sfc::math::graph::Edge<PFGInnerNode, float>
; alias: _ZN3sfc4math5graph4EdgeI12PFGInnerNodefE11getFromNodeEv
; demangled: sfc::math::graph::Edge<PFGInnerNode, float>::getFromNode()
; decoder-mode: arm
0051bc68  04 00 90 e5                                      ldr r0, [r0, #4]
0051bc6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051bc70, declared_size=8, range_size=8, mode=arm
; class-group: sfc::math::graph::Edge<PFGInnerNode, float>
; alias: _ZN3sfc4math5graph4EdgeI12PFGInnerNodefE9getToNodeEv
; demangled: sfc::math::graph::Edge<PFGInnerNode, float>::getToNode()
; decoder-mode: arm
0051bc70  08 00 90 e5                                      ldr r0, [r0, #8]
0051bc74  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051c104, declared_size=8, range_size=8, mode=arm
; class-group: sfc::math::graph::Edge<PFGInnerNode, float>
; alias: _ZNK3sfc4math5graph4EdgeI12PFGInnerNodefE9getWeightEv
; demangled: sfc::math::graph::Edge<PFGInnerNode, float>::getWeight() const
; decoder-mode: arm
0051c104  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0051c108  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051c10c, declared_size=8, range_size=8, mode=arm
; class-group: sfc::math::graph::Edge<PFGInnerNode, float>
; alias: _ZNK3sfc4math5graph4EdgeI12PFGInnerNodefE7isValidEv
; demangled: sfc::math::graph::Edge<PFGInnerNode, float>::isValid() const
; decoder-mode: arm
0051c10c  01 00 a0 e3                                      mov r0, #1
0051c110  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051c148, declared_size=52, range_size=52, mode=arm
; class-group: sfc::math::graph::Edge<PFGInnerNode, float>
; alias: _ZN3sfc4math5graph4EdgeI12PFGInnerNodefED0Ev
; demangled: sfc::math::graph::Edge<PFGInnerNode, float>::~Edge()
; decoder-mode: arm
0051c148  24 30 9f e5                                      ldr r3, [pc, #0x24]
0051c14c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0051c150  10 40 2d e9                                      push {r4, lr}
0051c154  03 30 8f e0                                      add r3, pc, r3
0051c158  02 20 93 e7                                      ldr r2, [r3, r2]
0051c15c  00 40 a0 e1                                      mov r4, r0
0051c160  08 20 82 e2                                      add r2, r2, #8
0051c164  00 20 80 e5                                      str r2, [r0]
0051c168  b4 d0 f7 eb                                      bl #0x310440
0051c16c  04 00 a0 e1                                      mov r0, r4
0051c170  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0051c174  3c 89 47 00 60 0f 00 00                          .byte 0x3c, 0x89, 0x47, 0x00, 0x60, 0x0f, 0x00, 0x00
