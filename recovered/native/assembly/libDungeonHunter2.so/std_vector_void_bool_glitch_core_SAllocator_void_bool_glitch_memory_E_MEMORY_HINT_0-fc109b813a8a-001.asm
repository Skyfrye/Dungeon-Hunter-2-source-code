; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a0ee8, declared_size=32, range_size=32, mode=arm
; class-group: std::vector<void (*)(bool), glitch::core::SAllocator<void (*)(bool), (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPFvbEN6glitch4core10SAllocatorIS1_LNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<void (*)(bool), glitch::core::SAllocator<void (*)(bool), (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
006a0ee8  10 40 2d e9                                      push {r4, lr}
006a0eec  00 40 a0 e1                                      mov r4, r0
006a0ef0  00 00 90 e5                                      ldr r0, [r0]
006a0ef4  00 00 50 e3                                      cmp r0, #0
006a0ef8  00 00 00 0a                                      beq #0x6a0f00
006a0efc  53 bd f1 eb                                      bl #0x310450
006a0f00  04 00 a0 e1                                      mov r0, r4
006a0f04  10 80 bd e8                                      pop {r4, pc}
