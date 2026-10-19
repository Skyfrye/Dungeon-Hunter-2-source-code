; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0064fa24, declared_size=288, range_size=288, mode=arm
; class-group: glitch::ps::SParticle* std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2ps9SParticleENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS2_EESA_RjT_SC_
; demangled: glitch::ps::SParticle* std::vector<glitch::ps::SParticle, glitch::core::SAllocator<glitch::ps::SParticle, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::ps::SParticle*>(unsigned int&, glitch::ps::SParticle*, glitch::ps::SParticle*)
; decoder-mode: arm
0064fa24  70 40 2d e9                                      push {r4, r5, r6, lr}
0064fa28  00 10 91 e5                                      ldr r1, [r1]
0064fa2c  64 00 a0 e3                                      mov r0, #0x64
0064fa30  03 50 a0 e1                                      mov r5, r3
0064fa34  02 40 a0 e1                                      mov r4, r2
0064fa38  90 01 00 e0                                      mul r0, r0, r1
0064fa3c  00 10 a0 e3                                      mov r1, #0
0064fa40  c8 02 f3 eb                                      bl #0x310568
0064fa44  05 50 64 e0                                      rsb r5, r4, r5
0064fa48  29 3c 05 e3                                      movw r3, #0x5c29
0064fa4c  45 51 a0 e1                                      asr r5, r5, #2
0064fa50  8f 32 4c e3                                      movt r3, #0xc28f
0064fa54  93 05 05 e0                                      mul r5, r3, r5
0064fa58  00 00 55 e3                                      cmp r5, #0
0064fa5c  37 00 00 da                                      ble #0x64fb40
0064fa60  00 30 a0 e1                                      mov r3, r0
0064fa64  00 00 00 ea                                      b #0x64fa6c
0064fa68  64 30 83 e2                                      add r3, r3, #0x64
0064fa6c  00 20 94 e5                                      ldr r2, [r4]
0064fa70  01 50 55 e2                                      subs r5, r5, #1
0064fa74  00 20 83 e5                                      str r2, [r3]
0064fa78  04 20 94 e5                                      ldr r2, [r4, #4]
0064fa7c  04 20 83 e5                                      str r2, [r3, #4]
0064fa80  08 20 94 e5                                      ldr r2, [r4, #8]
0064fa84  08 20 83 e5                                      str r2, [r3, #8]
0064fa88  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0064fa8c  0c 20 83 e5                                      str r2, [r3, #0xc]
0064fa90  10 20 94 e5                                      ldr r2, [r4, #0x10]
0064fa94  10 20 83 e5                                      str r2, [r3, #0x10]
0064fa98  14 20 94 e5                                      ldr r2, [r4, #0x14]
0064fa9c  14 20 83 e5                                      str r2, [r3, #0x14]
0064faa0  18 20 94 e5                                      ldr r2, [r4, #0x18]
0064faa4  18 20 83 e5                                      str r2, [r3, #0x18]
0064faa8  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0064faac  1c 20 83 e5                                      str r2, [r3, #0x1c]
0064fab0  20 20 94 e5                                      ldr r2, [r4, #0x20]
0064fab4  20 20 83 e5                                      str r2, [r3, #0x20]
0064fab8  24 20 94 e5                                      ldr r2, [r4, #0x24]
0064fabc  24 20 83 e5                                      str r2, [r3, #0x24]
0064fac0  28 20 94 e5                                      ldr r2, [r4, #0x28]
0064fac4  28 20 83 e5                                      str r2, [r3, #0x28]
0064fac8  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0064facc  2c 20 83 e5                                      str r2, [r3, #0x2c]
0064fad0  30 20 94 e5                                      ldr r2, [r4, #0x30]
0064fad4  30 20 83 e5                                      str r2, [r3, #0x30]
0064fad8  34 20 94 e5                                      ldr r2, [r4, #0x34]
0064fadc  34 20 83 e5                                      str r2, [r3, #0x34]
0064fae0  38 20 94 e5                                      ldr r2, [r4, #0x38]
0064fae4  38 20 83 e5                                      str r2, [r3, #0x38]
0064fae8  3c 20 94 e5                                      ldr r2, [r4, #0x3c]
0064faec  3c 20 83 e5                                      str r2, [r3, #0x3c]
0064faf0  40 20 94 e5                                      ldr r2, [r4, #0x40]
0064faf4  40 20 83 e5                                      str r2, [r3, #0x40]
0064faf8  44 20 94 e5                                      ldr r2, [r4, #0x44]
0064fafc  44 20 83 e5                                      str r2, [r3, #0x44]
0064fb00  48 20 94 e5                                      ldr r2, [r4, #0x48]
0064fb04  48 20 83 e5                                      str r2, [r3, #0x48]
0064fb08  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0064fb0c  4c 20 83 e5                                      str r2, [r3, #0x4c]
0064fb10  50 20 94 e5                                      ldr r2, [r4, #0x50]
0064fb14  50 20 83 e5                                      str r2, [r3, #0x50]
0064fb18  54 20 94 e5                                      ldr r2, [r4, #0x54]
0064fb1c  54 20 83 e5                                      str r2, [r3, #0x54]
0064fb20  58 20 94 e5                                      ldr r2, [r4, #0x58]
0064fb24  58 20 83 e5                                      str r2, [r3, #0x58]
0064fb28  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0064fb2c  5c 20 83 e5                                      str r2, [r3, #0x5c]
0064fb30  60 20 94 e5                                      ldr r2, [r4, #0x60]
0064fb34  64 40 84 e2                                      add r4, r4, #0x64
0064fb38  60 20 83 e5                                      str r2, [r3, #0x60]
0064fb3c  c9 ff ff 1a                                      bne #0x64fa68
0064fb40  70 80 bd e8                                      pop {r4, r5, r6, pc}
