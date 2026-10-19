; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006677d8, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::CMaterial>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN5boost13intrusive_ptrIN6glitch5video9CMaterialEEENS2_4core10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<boost::intrusive_ptr<glitch::video::CMaterial>, glitch::core::SAllocator<boost::intrusive_ptr<glitch::video::CMaterial>, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
006677d8  70 40 2d e9                                      push {r4, r5, r6, lr}
006677dc  04 40 90 e5                                      ldr r4, [r0, #4]
006677e0  00 50 90 e5                                      ldr r5, [r0]
006677e4  00 60 a0 e1                                      mov r6, r0
006677e8  05 00 54 e1                                      cmp r4, r5
006677ec  04 00 00 0a                                      beq #0x667804
006677f0  04 40 44 e2                                      sub r4, r4, #4
006677f4  04 00 a0 e1                                      mov r0, r4
006677f8  fa a4 f2 eb                                      bl #0x310be8
006677fc  04 00 55 e1                                      cmp r5, r4
00667800  fa ff ff 1a                                      bne #0x6677f0
00667804  00 00 96 e5                                      ldr r0, [r6]
00667808  00 00 50 e3                                      cmp r0, #0
0066780c  00 00 00 0a                                      beq #0x667814
00667810  0e a3 f2 eb                                      bl #0x310450
00667814  06 00 a0 e1                                      mov r0, r6
00667818  70 80 bd e8                                      pop {r4, r5, r6, pc}
