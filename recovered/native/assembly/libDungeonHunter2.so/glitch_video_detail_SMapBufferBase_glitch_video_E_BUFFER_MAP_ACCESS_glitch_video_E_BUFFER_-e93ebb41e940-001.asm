; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006ce9c0, declared_size=216, range_size=216, mode=arm
; class-group: glitch::video::detail::SMapBufferBase<glitch::video::E_BUFFER_MAP_ACCESS, (glitch::video::E_BUFFER_MAP_ACCESS)4>
; alias: _ZN6glitch5video6detail14SMapBufferBaseINS0_19E_BUFFER_MAP_ACCESSELS3_4EE5resetERKN5boost13intrusive_ptrINS0_7IBufferEEES3_.clone.0
; demangled: glitch::video::detail::SMapBufferBase<glitch::video::E_BUFFER_MAP_ACCESS, (glitch::video::E_BUFFER_MAP_ACCESS)4>::reset(boost::intrusive_ptr<glitch::video::IBuffer> const&, glitch::video::E_BUFFER_MAP_ACCESS) [clone .clone.0]
; decoder-mode: arm
006ce9c0  70 40 2d e9                                      push {r4, r5, r6, lr}
006ce9c4  00 50 90 e5                                      ldr r5, [r0]
006ce9c8  00 30 91 e5                                      ldr r3, [r1]
006ce9cc  00 40 a0 e1                                      mov r4, r0
006ce9d0  01 60 a0 e1                                      mov r6, r1
006ce9d4  03 00 55 e1                                      cmp r5, r3
006ce9d8  21 00 00 0a                                      beq #0x6cea64
006ce9dc  04 20 90 e5                                      ldr r2, [r0, #4]
006ce9e0  00 00 52 e3                                      cmp r2, #0
006ce9e4  08 00 00 0a                                      beq #0x6cea0c
006ce9e8  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
006ce9ec  1f 20 03 e2                                      and r2, r3, #0x1f
006ce9f0  01 00 52 e3                                      cmp r2, #1
006ce9f4  1b 00 00 9a                                      bls #0x6cea68
006ce9f8  01 20 42 e2                                      sub r2, r2, #1
006ce9fc  1f 30 c3 e3                                      bic r3, r3, #0x1f
006cea00  03 30 82 e1                                      orr r3, r2, r3
006cea04  13 30 c5 e5                                      strb r3, [r5, #0x13]
006cea08  00 30 91 e5                                      ldr r3, [r1]
006cea0c  00 00 53 e3                                      cmp r3, #0
006cea10  0c 00 00 0a                                      beq #0x6cea48
006cea14  04 20 93 e5                                      ldr r2, [r3, #4]
006cea18  01 20 82 e2                                      add r2, r2, #1
006cea1c  04 20 83 e5                                      str r2, [r3, #4]
006cea20  00 00 94 e5                                      ldr r0, [r4]
006cea24  00 30 84 e5                                      str r3, [r4]
006cea28  00 00 50 e3                                      cmp r0, #0
006cea2c  00 00 00 0a                                      beq #0x6cea34
006cea30  d3 3a f1 eb                                      bl #0x31d584
006cea34  00 00 96 e5                                      ldr r0, [r6]
006cea38  04 10 a0 e3                                      mov r1, #4
006cea3c  eb 4b fb eb                                      bl #0x5a19f0
006cea40  04 00 84 e5                                      str r0, [r4, #4]
006cea44  70 80 bd e8                                      pop {r4, r5, r6, pc}
006cea48  00 00 94 e5                                      ldr r0, [r4]
006cea4c  00 30 84 e5                                      str r3, [r4]
006cea50  00 00 50 e3                                      cmp r0, #0
006cea54  00 00 00 0a                                      beq #0x6cea5c
006cea58  c9 3a f1 eb                                      bl #0x31d584
006cea5c  00 30 a0 e3                                      mov r3, #0
006cea60  04 30 84 e5                                      str r3, [r4, #4]
006cea64  70 80 bd e8                                      pop {r4, r5, r6, pc}
006cea68  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
006cea6c  20 00 13 e3                                      tst r3, #0x20
006cea70  03 00 00 1a                                      bne #0x6cea84
006cea74  00 30 a0 e3                                      mov r3, #0
006cea78  13 30 c5 e5                                      strb r3, [r5, #0x13]
006cea7c  00 30 96 e5                                      ldr r3, [r6]
006cea80  e1 ff ff ea                                      b #0x6cea0c
006cea84  00 30 95 e5                                      ldr r3, [r5]
006cea88  05 00 a0 e1                                      mov r0, r5
006cea8c  0f e0 a0 e1                                      mov lr, pc
006cea90  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006cea94  f6 ff ff ea                                      b #0x6cea74
