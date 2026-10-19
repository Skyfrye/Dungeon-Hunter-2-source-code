; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006d7130, declared_size=168, range_size=168, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<glitch::video::SColor>
; alias: _ZN6glitch5video13SVertexStream10SMapBufferINS0_6SColorEE5resetERS1_NS0_19E_BUFFER_MAP_ACCESSE
; demangled: glitch::video::SVertexStream::SMapBuffer<glitch::video::SColor>::reset(glitch::video::SVertexStream&, glitch::video::E_BUFFER_MAP_ACCESS)
; decoder-mode: arm
006d7130  70 40 2d e9                                      push {r4, r5, r6, lr}
006d7134  04 30 90 e5                                      ldr r3, [r0, #4]
006d7138  08 d0 4d e2                                      sub sp, sp, #8
006d713c  00 40 a0 e1                                      mov r4, r0
006d7140  00 00 53 e3                                      cmp r3, #0
006d7144  01 50 a0 e1                                      mov r5, r1
006d7148  0c 00 00 0a                                      beq #0x6d7180
006d714c  00 30 90 e5                                      ldr r3, [r0]
006d7150  00 60 93 e5                                      ldr r6, [r3]
006d7154  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
006d7158  1f 10 03 e2                                      and r1, r3, #0x1f
006d715c  01 00 51 e3                                      cmp r1, #1
006d7160  0f 00 00 9a                                      bls #0x6d71a4
006d7164  01 10 41 e2                                      sub r1, r1, #1
006d7168  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d716c  03 30 81 e1                                      orr r3, r1, r3
006d7170  13 30 c6 e5                                      strb r3, [r6, #0x13]
006d7174  00 30 a0 e3                                      mov r3, #0
006d7178  04 30 84 e5                                      str r3, [r4, #4]
006d717c  00 30 84 e5                                      str r3, [r4]
006d7180  00 50 84 e5                                      str r5, [r4]
006d7184  02 10 a0 e1                                      mov r1, r2
006d7188  00 00 95 e5                                      ldr r0, [r5]
006d718c  17 2a fb eb                                      bl #0x5a19f0
006d7190  04 30 95 e5                                      ldr r3, [r5, #4]
006d7194  03 30 80 e0                                      add r3, r0, r3
006d7198  04 30 84 e5                                      str r3, [r4, #4]
006d719c  08 d0 8d e2                                      add sp, sp, #8
006d71a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006d71a4  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006d71a8  20 00 13 e3                                      tst r3, #0x20
006d71ac  02 00 00 1a                                      bne #0x6d71bc
006d71b0  00 30 a0 e3                                      mov r3, #0
006d71b4  13 30 c6 e5                                      strb r3, [r6, #0x13]
006d71b8  ed ff ff ea                                      b #0x6d7174
006d71bc  00 30 96 e5                                      ldr r3, [r6]
006d71c0  06 00 a0 e1                                      mov r0, r6
006d71c4  04 20 8d e5                                      str r2, [sp, #4]
006d71c8  0f e0 a0 e1                                      mov lr, pc
006d71cc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d71d0  04 20 9d e5                                      ldr r2, [sp, #4]
006d71d4  f5 ff ff ea                                      b #0x6d71b0
