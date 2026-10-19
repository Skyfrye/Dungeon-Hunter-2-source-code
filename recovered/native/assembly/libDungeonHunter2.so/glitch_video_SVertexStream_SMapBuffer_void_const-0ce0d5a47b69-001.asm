; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0059c100, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<void const>
; alias: _ZN6glitch5video13SVertexStream10SMapBufferIKvE5resetERKS1_NS0_24E_BUFFER_READ_MAP_ACCESSE.clone.5
; demangled: glitch::video::SVertexStream::SMapBuffer<void const>::reset(glitch::video::SVertexStream const&, glitch::video::E_BUFFER_READ_MAP_ACCESS) [clone .clone.5]
; decoder-mode: arm
0059c100  70 40 2d e9                                      push {r4, r5, r6, lr}
0059c104  04 30 90 e5                                      ldr r3, [r0, #4]
0059c108  00 40 a0 e1                                      mov r4, r0
0059c10c  01 50 a0 e1                                      mov r5, r1
0059c110  00 00 53 e3                                      cmp r3, #0
0059c114  0c 00 00 0a                                      beq #0x59c14c
0059c118  00 30 90 e5                                      ldr r3, [r0]
0059c11c  00 60 93 e5                                      ldr r6, [r3]
0059c120  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
0059c124  1f 20 03 e2                                      and r2, r3, #0x1f
0059c128  01 00 52 e3                                      cmp r2, #1
0059c12c  0e 00 00 9a                                      bls #0x59c16c
0059c130  01 20 42 e2                                      sub r2, r2, #1
0059c134  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059c138  03 30 82 e1                                      orr r3, r2, r3
0059c13c  13 30 c6 e5                                      strb r3, [r6, #0x13]
0059c140  00 30 a0 e3                                      mov r3, #0
0059c144  04 30 84 e5                                      str r3, [r4, #4]
0059c148  00 30 84 e5                                      str r3, [r4]
0059c14c  00 50 84 e5                                      str r5, [r4]
0059c150  00 00 95 e5                                      ldr r0, [r5]
0059c154  01 10 a0 e3                                      mov r1, #1
0059c158  5f 16 00 eb                                      bl #0x5a1adc
0059c15c  04 30 95 e5                                      ldr r3, [r5, #4]
0059c160  03 30 80 e0                                      add r3, r0, r3
0059c164  04 30 84 e5                                      str r3, [r4, #4]
0059c168  70 80 bd e8                                      pop {r4, r5, r6, pc}
0059c16c  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
0059c170  20 00 13 e3                                      tst r3, #0x20
0059c174  02 00 00 1a                                      bne #0x59c184
0059c178  00 30 a0 e3                                      mov r3, #0
0059c17c  13 30 c6 e5                                      strb r3, [r6, #0x13]
0059c180  ee ff ff ea                                      b #0x59c140
0059c184  00 30 96 e5                                      ldr r3, [r6]
0059c188  06 00 a0 e1                                      mov r0, r6
0059c18c  0f e0 a0 e1                                      mov lr, pc
0059c190  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059c194  f7 ff ff ea                                      b #0x59c178

; FUNCTION 0x005a0e28, declared_size=120, range_size=120, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<void const>
; alias: _ZN6glitch5video13SVertexStream10SMapBufferIKvE5resetEv
; demangled: glitch::video::SVertexStream::SMapBuffer<void const>::reset()
; decoder-mode: arm
005a0e28  70 40 2d e9                                      push {r4, r5, r6, lr}
005a0e2c  04 30 90 e5                                      ldr r3, [r0, #4]
005a0e30  00 40 a0 e1                                      mov r4, r0
005a0e34  00 00 53 e3                                      cmp r3, #0
005a0e38  0c 00 00 0a                                      beq #0x5a0e70
005a0e3c  00 30 90 e5                                      ldr r3, [r0]
005a0e40  00 50 93 e5                                      ldr r5, [r3]
005a0e44  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
005a0e48  1f 20 03 e2                                      and r2, r3, #0x1f
005a0e4c  01 00 52 e3                                      cmp r2, #1
005a0e50  07 00 00 9a                                      bls #0x5a0e74
005a0e54  01 20 42 e2                                      sub r2, r2, #1
005a0e58  1f 30 c3 e3                                      bic r3, r3, #0x1f
005a0e5c  03 30 82 e1                                      orr r3, r2, r3
005a0e60  13 30 c5 e5                                      strb r3, [r5, #0x13]
005a0e64  00 30 a0 e3                                      mov r3, #0
005a0e68  04 30 84 e5                                      str r3, [r4, #4]
005a0e6c  00 30 84 e5                                      str r3, [r4]
005a0e70  70 80 bd e8                                      pop {r4, r5, r6, pc}
005a0e74  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
005a0e78  20 00 13 e3                                      tst r3, #0x20
005a0e7c  02 00 00 1a                                      bne #0x5a0e8c
005a0e80  00 30 a0 e3                                      mov r3, #0
005a0e84  13 30 c5 e5                                      strb r3, [r5, #0x13]
005a0e88  f5 ff ff ea                                      b #0x5a0e64
005a0e8c  00 30 95 e5                                      ldr r3, [r5]
005a0e90  05 00 a0 e1                                      mov r0, r5
005a0e94  0f e0 a0 e1                                      mov lr, pc
005a0e98  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005a0e9c  f7 ff ff ea                                      b #0x5a0e80
