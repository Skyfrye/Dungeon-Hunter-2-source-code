; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0063dd30, declared_size=100, range_size=100, mode=arm
; class-group: glitch::ps::GNPSParticle* std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps12GNPSParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS2_EESA_RjT_SC_
; demangled: glitch::ps::GNPSParticle* std::vector<glitch::ps::GNPSParticle, glitch::core::SAllocator<glitch::ps::GNPSParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::ps::GNPSParticle*>(unsigned int&, glitch::ps::GNPSParticle*, glitch::ps::GNPSParticle*)
; decoder-mode: arm
0063dd30  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0063dd34  00 10 91 e5                                      ldr r1, [r1]
0063dd38  9c 00 a0 e3                                      mov r0, #0x9c
0063dd3c  03 60 a0 e1                                      mov r6, r3
0063dd40  90 01 00 e0                                      mul r0, r0, r1
0063dd44  00 10 a0 e3                                      mov r1, #0
0063dd48  02 40 a0 e1                                      mov r4, r2
0063dd4c  05 4a f3 eb                                      bl #0x310568
0063dd50  06 60 64 e0                                      rsb r6, r4, r6
0063dd54  97 3f 06 e3                                      movw r3, #0x6f97
0063dd58  46 61 a0 e1                                      asr r6, r6, #2
0063dd5c  f9 36 49 e3                                      movt r3, #0x96f9
0063dd60  93 06 06 e0                                      mul r6, r3, r6
0063dd64  00 70 a0 e1                                      mov r7, r0
0063dd68  00 00 56 e3                                      cmp r6, #0
0063dd6c  06 00 00 da                                      ble #0x63dd8c
0063dd70  00 50 a0 e3                                      mov r5, #0
0063dd74  05 00 87 e0                                      add r0, r7, r5
0063dd78  05 10 84 e0                                      add r1, r4, r5
0063dd7c  dc e7 ff eb                                      bl #0x637cf4
0063dd80  01 60 56 e2                                      subs r6, r6, #1
0063dd84  9c 50 85 e2                                      add r5, r5, #0x9c
0063dd88  f9 ff ff 1a                                      bne #0x63dd74
0063dd8c  07 00 a0 e1                                      mov r0, r7
0063dd90  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
