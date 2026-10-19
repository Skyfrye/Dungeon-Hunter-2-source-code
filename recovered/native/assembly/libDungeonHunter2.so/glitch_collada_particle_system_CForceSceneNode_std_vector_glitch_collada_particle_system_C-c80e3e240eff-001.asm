; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0063a6d8, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::particle_system::CForceSceneNode** std::vector<glitch::collada::particle_system::CForceSceneNode*, glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch7collada15particle_system15CForceSceneNodeENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS4_EESC_RjT_SE_
; demangled: glitch::collada::particle_system::CForceSceneNode** std::vector<glitch::collada::particle_system::CForceSceneNode*, glitch::core::SAllocator<glitch::collada::particle_system::CForceSceneNode*, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::collada::particle_system::CForceSceneNode**>(unsigned int&, glitch::collada::particle_system::CForceSceneNode**, glitch::collada::particle_system::CForceSceneNode**)
; decoder-mode: arm
0063a6d8  70 40 2d e9                                      push {r4, r5, r6, lr}
0063a6dc  00 00 91 e5                                      ldr r0, [r1]
0063a6e0  00 10 a0 e3                                      mov r1, #0
0063a6e4  02 40 a0 e1                                      mov r4, r2
0063a6e8  00 01 a0 e1                                      lsl r0, r0, #2
0063a6ec  03 60 a0 e1                                      mov r6, r3
0063a6f0  9c 57 f3 eb                                      bl #0x310568
0063a6f4  06 00 54 e1                                      cmp r4, r6
0063a6f8  00 50 a0 e1                                      mov r5, r0
0063a6fc  02 00 00 0a                                      beq #0x63a70c
0063a700  04 10 a0 e1                                      mov r1, r4
0063a704  06 20 64 e0                                      rsb r2, r4, r6
0063a708  56 50 f3 eb                                      bl #0x30e868
0063a70c  05 00 a0 e1                                      mov r0, r5
0063a710  70 80 bd e8                                      pop {r4, r5, r6, pc}
