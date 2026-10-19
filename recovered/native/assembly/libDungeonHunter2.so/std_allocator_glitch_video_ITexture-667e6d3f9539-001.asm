; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005e8834, declared_size=108, range_size=108, mode=arm
; class-group: std::allocator<glitch::video::ITexture*>
; alias: _ZNSaIPN6glitch5video8ITextureEE11_M_allocateEjRj
; demangled: std::allocator<glitch::video::ITexture*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
005e8834  10 40 2d e9                                      push {r4, lr}
005e8838  07 01 71 e3                                      cmn r1, #0xc0000001
005e883c  08 d0 4d e2                                      sub sp, sp, #8
005e8840  02 40 a0 e1                                      mov r4, r2
005e8844  0f 00 00 8a                                      bhi #0x5e8888
005e8848  00 00 51 e3                                      cmp r1, #0
005e884c  01 00 a0 01                                      moveq r0, r1
005e8850  08 00 00 0a                                      beq #0x5e8878
005e8854  01 01 a0 e1                                      lsl r0, r1, #2
005e8858  80 00 50 e3                                      cmp r0, #0x80
005e885c  04 00 8d e5                                      str r0, [sp, #4]
005e8860  06 00 00 8a                                      bhi #0x5e8880
005e8864  04 00 8d e2                                      add r0, sp, #4
005e8868  94 81 04 eb                                      bl #0x708ec0
005e886c  04 30 9d e5                                      ldr r3, [sp, #4]
005e8870  23 31 a0 e1                                      lsr r3, r3, #2
005e8874  00 30 84 e5                                      str r3, [r4]
005e8878  08 d0 8d e2                                      add sp, sp, #8
005e887c  10 80 bd e8                                      pop {r4, pc}
005e8880  01 98 f4 eb                                      bl #0x30e88c
005e8884  f8 ff ff ea                                      b #0x5e886c
005e8888  0c 00 9f e5                                      ldr r0, [pc, #0xc]
005e888c  00 00 8f e0                                      add r0, pc, r0
005e8890  0b 96 f4 eb                                      bl #0x30e0c4
005e8894  01 00 a0 e3                                      mov r0, #1
005e8898  6a 95 f4 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
005e889c  e4 5b 2d 00                                      .byte 0xe4, 0x5b, 0x2d, 0x00

; FUNCTION 0x005e88a0, declared_size=28, range_size=28, mode=arm
; class-group: std::allocator<glitch::video::ITexture*>
; alias: _ZNSaIPN6glitch5video8ITextureEE10deallocateEPS2_j
; demangled: std::allocator<glitch::video::ITexture*>::deallocate(glitch::video::ITexture**, unsigned int)
; decoder-mode: arm
005e88a0  00 00 51 e2                                      subs r0, r1, #0
005e88a4  1e ff 2f 01                                      bxeq lr
005e88a8  02 11 a0 e1                                      lsl r1, r2, #2
005e88ac  80 00 51 e3                                      cmp r1, #0x80
005e88b0  00 00 00 8a                                      bhi #0x5e88b8
005e88b4  91 81 04 ea                                      b #0x708f00
005e88b8  7c 96 f4 ea                                      b #0x30e2b0
