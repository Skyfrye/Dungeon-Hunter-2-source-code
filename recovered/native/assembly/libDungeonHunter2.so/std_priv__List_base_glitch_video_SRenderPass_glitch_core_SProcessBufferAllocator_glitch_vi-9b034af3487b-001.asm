; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005d8048, declared_size=80, range_size=80, mode=arm
; class-group: std::priv::_List_base<glitch::video::SRenderPass, glitch::core::SProcessBufferAllocator<glitch::video::SRenderPass> >
; alias: _ZNSt4priv10_List_baseIN6glitch5video11SRenderPassENS1_4core23SProcessBufferAllocatorIS3_EEE5clearEv
; demangled: std::priv::_List_base<glitch::video::SRenderPass, glitch::core::SProcessBufferAllocator<glitch::video::SRenderPass> >::clear()
; decoder-mode: arm
005d8048  70 40 2d e9                                      push {r4, r5, r6, lr}
005d804c  00 40 90 e5                                      ldr r4, [r0]
005d8050  00 60 a0 e1                                      mov r6, r0
005d8054  00 00 54 e1                                      cmp r4, r0
005d8058  01 00 00 1a                                      bne #0x5d8064
005d805c  0a 00 00 ea                                      b #0x5d808c
005d8060  05 40 a0 e1                                      mov r4, r5
005d8064  28 00 94 e5                                      ldr r0, [r4, #0x28]
005d8068  00 50 94 e5                                      ldr r5, [r4]
005d806c  00 00 50 e3                                      cmp r0, #0
005d8070  00 00 00 0a                                      beq #0x5d8078
005d8074  42 15 f5 eb                                      bl #0x31d584
005d8078  04 00 a0 e1                                      mov r0, r4
005d807c  81 71 fd eb                                      bl #0x534688
005d8080  06 00 55 e1                                      cmp r5, r6
005d8084  f5 ff ff 1a                                      bne #0x5d8060
005d8088  06 40 a0 e1                                      mov r4, r6
005d808c  04 40 86 e5                                      str r4, [r6, #4]
005d8090  00 40 86 e5                                      str r4, [r6]
005d8094  70 80 bd e8                                      pop {r4, r5, r6, pc}
