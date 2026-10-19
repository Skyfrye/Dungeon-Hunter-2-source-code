; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065fd6c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CApplicatorInfo** std::vector<glitch::collada::animation_track::CApplicatorInfo*, glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15animation_track15CApplicatorInfoENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS4_EESC_RjT_SE_
; demangled: glitch::collada::animation_track::CApplicatorInfo** std::vector<glitch::collada::animation_track::CApplicatorInfo*, glitch::core::SAllocator<glitch::collada::animation_track::CApplicatorInfo*, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::collada::animation_track::CApplicatorInfo**>(unsigned int&, glitch::collada::animation_track::CApplicatorInfo**, glitch::collada::animation_track::CApplicatorInfo**)
; decoder-mode: arm
0065fd6c  70 40 2d e9                                      push {r4, r5, r6, lr}
0065fd70  00 00 91 e5                                      ldr r0, [r1]
0065fd74  00 10 a0 e3                                      mov r1, #0
0065fd78  02 40 a0 e1                                      mov r4, r2
0065fd7c  00 01 a0 e1                                      lsl r0, r0, #2
0065fd80  03 60 a0 e1                                      mov r6, r3
0065fd84  f7 c1 f2 eb                                      bl #0x310568
0065fd88  06 00 54 e1                                      cmp r4, r6
0065fd8c  00 50 a0 e1                                      mov r5, r0
0065fd90  02 00 00 0a                                      beq #0x65fda0
0065fd94  04 10 a0 e1                                      mov r1, r4
0065fd98  06 20 64 e0                                      rsb r2, r4, r6
0065fd9c  b1 ba f2 eb                                      bl #0x30e868
0065fda0  05 00 a0 e1                                      mov r0, r5
0065fda4  70 80 bd e8                                      pop {r4, r5, r6, pc}
