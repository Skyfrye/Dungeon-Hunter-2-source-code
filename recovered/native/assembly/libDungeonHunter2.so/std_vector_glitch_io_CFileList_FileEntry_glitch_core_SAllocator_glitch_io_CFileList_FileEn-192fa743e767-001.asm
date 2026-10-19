; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b3f9c, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::io::CFileList::FileEntry, glitch::core::SAllocator<glitch::io::CFileList::FileEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2io9CFileList9FileEntryENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::io::CFileList::FileEntry, glitch::core::SAllocator<glitch::io::CFileList::FileEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
006b3f9c  70 40 2d e9                                      push {r4, r5, r6, lr}
006b3fa0  04 40 90 e5                                      ldr r4, [r0, #4]
006b3fa4  00 50 90 e5                                      ldr r5, [r0]
006b3fa8  00 60 a0 e1                                      mov r6, r0
006b3fac  05 00 54 e1                                      cmp r4, r5
006b3fb0  04 00 00 0a                                      beq #0x6b3fc8
006b3fb4  38 40 44 e2                                      sub r4, r4, #0x38
006b3fb8  04 00 a0 e1                                      mov r0, r4
006b3fbc  e5 ff ff eb                                      bl #0x6b3f58
006b3fc0  04 00 55 e1                                      cmp r5, r4
006b3fc4  fa ff ff 1a                                      bne #0x6b3fb4
006b3fc8  00 00 96 e5                                      ldr r0, [r6]
006b3fcc  00 00 50 e3                                      cmp r0, #0
006b3fd0  00 00 00 0a                                      beq #0x6b3fd8
006b3fd4  1d 71 f1 eb                                      bl #0x310450
006b3fd8  06 00 a0 e1                                      mov r0, r6
006b3fdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
