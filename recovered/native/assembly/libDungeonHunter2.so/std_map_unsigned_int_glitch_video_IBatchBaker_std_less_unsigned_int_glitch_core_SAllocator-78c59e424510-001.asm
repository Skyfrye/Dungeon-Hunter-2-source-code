; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060abf8, declared_size=52, range_size=52, mode=arm
; class-group: std::map<unsigned int, glitch::video::IBatchBaker*, std::less<unsigned int>, glitch::core::SAllocator<std::pair<unsigned int const, glitch::video::IBatchBaker*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt3mapIjPN6glitch5video11IBatchBakerESt4lessIjENS0_4core10SAllocatorISt4pairIKjS3_ELNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::map<unsigned int, glitch::video::IBatchBaker*, std::less<unsigned int>, glitch::core::SAllocator<std::pair<unsigned int const, glitch::video::IBatchBaker*>, (glitch::memory::E_MEMORY_HINT)0> >::~map()
; decoder-mode: arm
0060abf8  10 40 2d e9                                      push {r4, lr}
0060abfc  10 30 90 e5                                      ldr r3, [r0, #0x10]
0060ac00  00 40 a0 e1                                      mov r4, r0
0060ac04  00 00 53 e3                                      cmp r3, #0
0060ac08  05 00 00 0a                                      beq #0x60ac24
0060ac0c  04 10 90 e5                                      ldr r1, [r0, #4]
0060ac10  eb ff ff eb                                      bl #0x60abc4
0060ac14  00 30 a0 e3                                      mov r3, #0
0060ac18  10 30 84 e5                                      str r3, [r4, #0x10]
0060ac1c  18 00 84 e9                                      stmib r4, {r3, r4}
0060ac20  0c 40 84 e5                                      str r4, [r4, #0xc]
0060ac24  04 00 a0 e1                                      mov r0, r4
0060ac28  10 80 bd e8                                      pop {r4, pc}
