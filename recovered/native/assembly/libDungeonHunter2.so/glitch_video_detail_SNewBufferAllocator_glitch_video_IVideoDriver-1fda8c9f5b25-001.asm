; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005aa218, declared_size=88, range_size=88, mode=arm
; class-group: glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>
; alias: _ZN6glitch5video6detail19SNewBufferAllocatorINS0_12IVideoDriverEEC1EPS3_RKN5boost13intrusive_ptrINS0_7IBufferEEE
; demangled: glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>::SNewBufferAllocator(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::video::IBuffer> const&)
; decoder-mode: arm
005aa218  10 40 2d e9                                      push {r4, lr}
005aa21c  00 20 92 e5                                      ldr r2, [r2]
005aa220  10 d0 4d e2                                      sub sp, sp, #0x10
005aa224  00 40 a0 e1                                      mov r4, r0
005aa228  00 00 52 e3                                      cmp r2, #0
005aa22c  06 00 00 0a                                      beq #0x5aa24c
005aa230  00 20 80 e5                                      str r2, [r0]
005aa234  04 30 92 e5                                      ldr r3, [r2, #4]
005aa238  01 30 83 e2                                      add r3, r3, #1
005aa23c  04 30 82 e5                                      str r3, [r2, #4]
005aa240  04 00 a0 e1                                      mov r0, r4
005aa244  10 d0 8d e2                                      add sp, sp, #0x10
005aa248  10 80 bd e8                                      pop {r4, pc}
005aa24c  01 c0 a0 e3                                      mov ip, #1
005aa250  08 c0 8d e5                                      str ip, [sp, #8]
005aa254  00 20 8d e5                                      str r2, [sp]
005aa258  00 c0 91 e5                                      ldr ip, [r1]
005aa25c  04 20 8d e5                                      str r2, [sp, #4]
005aa260  04 30 a0 e3                                      mov r3, #4
005aa264  0f e0 a0 e1                                      mov lr, pc
005aa268  78 f0 9c e5                                      ldr pc, [ip, #0x78]
005aa26c  f3 ff ff ea                                      b #0x5aa240

; FUNCTION 0x005aa454, declared_size=84, range_size=84, mode=arm
; class-group: glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>
; alias: _ZNK6glitch5video6detail19SNewBufferAllocatorINS0_12IVideoDriverEE8allocateEj
; demangled: glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>::allocate(unsigned int) const
; decoder-mode: arm
005aa454  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005aa458  00 40 a0 e1                                      mov r4, r0
005aa45c  00 70 91 e5                                      ldr r7, [r1]
005aa460  01 50 a0 e1                                      mov r5, r1
005aa464  02 00 a0 e1                                      mov r0, r2
005aa468  00 10 a0 e3                                      mov r1, #0
005aa46c  02 60 a0 e1                                      mov r6, r2
005aa470  4c 27 fe eb                                      bl #0x5341a8
005aa474  06 10 a0 e1                                      mov r1, r6
005aa478  00 20 a0 e1                                      mov r2, r0
005aa47c  01 30 a0 e3                                      mov r3, #1
005aa480  07 00 a0 e1                                      mov r0, r7
005aa484  0a de ff eb                                      bl #0x5a1cb4
005aa488  00 30 95 e5                                      ldr r3, [r5]
005aa48c  04 00 a0 e1                                      mov r0, r4
005aa490  00 00 53 e3                                      cmp r3, #0
005aa494  00 30 84 e5                                      str r3, [r4]
005aa498  04 20 93 15                                      ldrne r2, [r3, #4]
005aa49c  01 20 82 12                                      addne r2, r2, #1
005aa4a0  04 20 83 15                                      strne r2, [r3, #4]
005aa4a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
