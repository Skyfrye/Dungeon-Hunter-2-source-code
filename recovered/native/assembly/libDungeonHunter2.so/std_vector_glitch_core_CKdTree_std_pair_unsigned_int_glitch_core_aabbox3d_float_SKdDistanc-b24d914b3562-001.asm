; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a3d10, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance, std::allocator<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance> >
; alias: _ZNSt6vectorIN6glitch4core7CKdTreeISt4pairIjNS1_8aabbox3dIfEEEE11SKdDistanceESaIS8_EED1Ev
; demangled: std::vector<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance, std::allocator<glitch::core::CKdTree<std::pair<unsigned int, glitch::core::aabbox3d<float> > >::SKdDistance> >::~vector()
; decoder-mode: arm
005a3d10  10 40 2d e9                                      push {r4, lr}
005a3d14  00 40 a0 e1                                      mov r4, r0
005a3d18  00 00 90 e5                                      ldr r0, [r0]
005a3d1c  00 00 50 e3                                      cmp r0, #0
005a3d20  05 00 00 0a                                      beq #0x5a3d3c
005a3d24  08 10 94 e5                                      ldr r1, [r4, #8]
005a3d28  01 10 60 e0                                      rsb r1, r0, r1
005a3d2c  07 10 c1 e3                                      bic r1, r1, #7
005a3d30  80 00 51 e3                                      cmp r1, #0x80
005a3d34  02 00 00 8a                                      bhi #0x5a3d44
005a3d38  70 94 05 eb                                      bl #0x708f00
005a3d3c  04 00 a0 e1                                      mov r0, r4
005a3d40  10 80 bd e8                                      pop {r4, pc}
005a3d44  59 a9 f5 eb                                      bl #0x30e2b0
005a3d48  04 00 a0 e1                                      mov r0, r4
005a3d4c  10 80 bd e8                                      pop {r4, pc}
