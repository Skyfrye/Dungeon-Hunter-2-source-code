; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005dab9c, declared_size=100, range_size=100, mode=arm
; class-group: std::priv::_List_base<glitch::video::STechnique, glitch::core::SProcessBufferAllocator<glitch::video::STechnique> >
; alias: _ZNSt4priv10_List_baseIN6glitch5video10STechniqueENS1_4core23SProcessBufferAllocatorIS3_EEE5clearEv
; demangled: std::priv::_List_base<glitch::video::STechnique, glitch::core::SProcessBufferAllocator<glitch::video::STechnique> >::clear()
; decoder-mode: arm
005dab9c  70 40 2d e9                                      push {r4, r5, r6, lr}
005daba0  00 40 90 e5                                      ldr r4, [r0]
005daba4  00 60 a0 e1                                      mov r6, r0
005daba8  00 00 54 e1                                      cmp r4, r0
005dabac  01 00 00 1a                                      bne #0x5dabb8
005dabb0  0f 00 00 ea                                      b #0x5dabf4
005dabb4  05 40 a0 e1                                      mov r4, r5
005dabb8  08 00 94 e5                                      ldr r0, [r4, #8]
005dabbc  00 50 94 e5                                      ldr r5, [r4]
005dabc0  00 00 50 e3                                      cmp r0, #0
005dabc4  05 00 00 0a                                      beq #0x5dabe0
005dabc8  00 30 90 e5                                      ldr r3, [r0]
005dabcc  01 30 43 e2                                      sub r3, r3, #1
005dabd0  00 00 53 e3                                      cmp r3, #0
005dabd4  00 30 80 e5                                      str r3, [r0]
005dabd8  00 00 00 1a                                      bne #0x5dabe0
005dabdc  6e 28 03 eb                                      bl #0x6a4d9c
005dabe0  04 00 a0 e1                                      mov r0, r4
005dabe4  a7 66 fd eb                                      bl #0x534688
005dabe8  06 00 55 e1                                      cmp r5, r6
005dabec  f0 ff ff 1a                                      bne #0x5dabb4
005dabf0  06 40 a0 e1                                      mov r4, r6
005dabf4  04 40 86 e5                                      str r4, [r6, #4]
005dabf8  00 40 86 e5                                      str r4, [r6]
005dabfc  70 80 bd e8                                      pop {r4, r5, r6, pc}
