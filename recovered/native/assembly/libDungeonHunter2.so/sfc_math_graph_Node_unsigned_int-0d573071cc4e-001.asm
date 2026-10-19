; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051bc40, declared_size=4, range_size=4, mode=arm
; class-group: sfc::math::graph::Node<unsigned int>
; alias: _ZN3sfc4math5graph4NodeIjED1Ev
; demangled: sfc::math::graph::Node<unsigned int>::~Node()
; decoder-mode: arm
0051bc40  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051bc58, declared_size=8, range_size=8, mode=arm
; class-group: sfc::math::graph::Node<unsigned int>
; alias: _ZNK3sfc4math5graph4NodeIjE5getIDEv
; demangled: sfc::math::graph::Node<unsigned int>::getID() const
; decoder-mode: arm
0051bc58  04 00 90 e5                                      ldr r0, [r0, #4]
0051bc5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051c0fc, declared_size=8, range_size=8, mode=arm
; class-group: sfc::math::graph::Node<unsigned int>
; alias: _ZNK3sfc4math5graph4NodeIjE7isValidEv
; demangled: sfc::math::graph::Node<unsigned int>::isValid() const
; decoder-mode: arm
0051c0fc  01 00 a0 e3                                      mov r0, #1
0051c100  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051c1b0, declared_size=52, range_size=52, mode=arm
; class-group: sfc::math::graph::Node<unsigned int>
; alias: _ZN3sfc4math5graph4NodeIjED0Ev
; demangled: sfc::math::graph::Node<unsigned int>::~Node()
; decoder-mode: arm
0051c1b0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0051c1b4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0051c1b8  10 40 2d e9                                      push {r4, lr}
0051c1bc  03 30 8f e0                                      add r3, pc, r3
0051c1c0  02 20 93 e7                                      ldr r2, [r3, r2]
0051c1c4  00 40 a0 e1                                      mov r4, r0
0051c1c8  08 20 82 e2                                      add r2, r2, #8
0051c1cc  00 20 80 e5                                      str r2, [r0]
0051c1d0  9a d0 f7 eb                                      bl #0x310440
0051c1d4  04 00 a0 e1                                      mov r0, r4
0051c1d8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0051c1dc  d4 88 47 00 c4 27 00 00                          .byte 0xd4, 0x88, 0x47, 0x00, 0xc4, 0x27, 0x00, 0x00
