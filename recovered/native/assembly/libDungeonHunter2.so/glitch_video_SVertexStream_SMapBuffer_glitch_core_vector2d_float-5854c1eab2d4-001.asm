; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00640360, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float> >
; alias: _ZN6glitch5video13SVertexStream10SMapBufferINS_4core8vector2dIfEEE5resetERS1_NS0_19E_BUFFER_MAP_ACCESSE.clone.18
; demangled: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float> >::reset(glitch::video::SVertexStream&, glitch::video::E_BUFFER_MAP_ACCESS) [clone .clone.18]
; decoder-mode: arm
00640360  70 40 2d e9                                      push {r4, r5, r6, lr}
00640364  04 30 90 e5                                      ldr r3, [r0, #4]
00640368  00 40 a0 e1                                      mov r4, r0
0064036c  01 50 a0 e1                                      mov r5, r1
00640370  00 00 53 e3                                      cmp r3, #0
00640374  0c 00 00 0a                                      beq #0x6403ac
00640378  00 30 90 e5                                      ldr r3, [r0]
0064037c  00 60 93 e5                                      ldr r6, [r3]
00640380  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
00640384  1f 20 03 e2                                      and r2, r3, #0x1f
00640388  01 00 52 e3                                      cmp r2, #1
0064038c  0e 00 00 9a                                      bls #0x6403cc
00640390  01 20 42 e2                                      sub r2, r2, #1
00640394  1f 30 c3 e3                                      bic r3, r3, #0x1f
00640398  03 30 82 e1                                      orr r3, r2, r3
0064039c  13 30 c6 e5                                      strb r3, [r6, #0x13]
006403a0  00 30 a0 e3                                      mov r3, #0
006403a4  04 30 84 e5                                      str r3, [r4, #4]
006403a8  00 30 84 e5                                      str r3, [r4]
006403ac  00 50 84 e5                                      str r5, [r4]
006403b0  00 00 95 e5                                      ldr r0, [r5]
006403b4  05 10 a0 e3                                      mov r1, #5
006403b8  8c 85 fd eb                                      bl #0x5a19f0
006403bc  04 30 95 e5                                      ldr r3, [r5, #4]
006403c0  03 30 80 e0                                      add r3, r0, r3
006403c4  04 30 84 e5                                      str r3, [r4, #4]
006403c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
006403cc  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006403d0  20 00 13 e3                                      tst r3, #0x20
006403d4  02 00 00 1a                                      bne #0x6403e4
006403d8  00 30 a0 e3                                      mov r3, #0
006403dc  13 30 c6 e5                                      strb r3, [r6, #0x13]
006403e0  ee ff ff ea                                      b #0x6403a0
006403e4  00 30 96 e5                                      ldr r3, [r6]
006403e8  06 00 a0 e1                                      mov r0, r6
006403ec  0f e0 a0 e1                                      mov lr, pc
006403f0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006403f4  f7 ff ff ea                                      b #0x6403d8

; FUNCTION 0x0065540c, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float> >
; alias: _ZN6glitch5video13SVertexStream10SMapBufferINS_4core8vector2dIfEEE5resetERS1_NS0_19E_BUFFER_MAP_ACCESSE.clone.20
; demangled: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float> >::reset(glitch::video::SVertexStream&, glitch::video::E_BUFFER_MAP_ACCESS) [clone .clone.20]
; decoder-mode: arm
0065540c  70 40 2d e9                                      push {r4, r5, r6, lr}
00655410  04 30 90 e5                                      ldr r3, [r0, #4]
00655414  00 40 a0 e1                                      mov r4, r0
00655418  01 50 a0 e1                                      mov r5, r1
0065541c  00 00 53 e3                                      cmp r3, #0
00655420  0c 00 00 0a                                      beq #0x655458
00655424  00 30 90 e5                                      ldr r3, [r0]
00655428  00 60 93 e5                                      ldr r6, [r3]
0065542c  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
00655430  1f 20 03 e2                                      and r2, r3, #0x1f
00655434  01 00 52 e3                                      cmp r2, #1
00655438  0e 00 00 9a                                      bls #0x655478
0065543c  01 20 42 e2                                      sub r2, r2, #1
00655440  1f 30 c3 e3                                      bic r3, r3, #0x1f
00655444  03 30 82 e1                                      orr r3, r2, r3
00655448  13 30 c6 e5                                      strb r3, [r6, #0x13]
0065544c  00 30 a0 e3                                      mov r3, #0
00655450  04 30 84 e5                                      str r3, [r4, #4]
00655454  00 30 84 e5                                      str r3, [r4]
00655458  00 50 84 e5                                      str r5, [r4]
0065545c  00 00 95 e5                                      ldr r0, [r5]
00655460  05 10 a0 e3                                      mov r1, #5
00655464  61 31 fd eb                                      bl #0x5a19f0
00655468  04 30 95 e5                                      ldr r3, [r5, #4]
0065546c  03 30 80 e0                                      add r3, r0, r3
00655470  04 30 84 e5                                      str r3, [r4, #4]
00655474  70 80 bd e8                                      pop {r4, r5, r6, pc}
00655478  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
0065547c  20 00 13 e3                                      tst r3, #0x20
00655480  02 00 00 1a                                      bne #0x655490
00655484  00 30 a0 e3                                      mov r3, #0
00655488  13 30 c6 e5                                      strb r3, [r6, #0x13]
0065548c  ee ff ff ea                                      b #0x65544c
00655490  00 30 96 e5                                      ldr r3, [r6]
00655494  06 00 a0 e1                                      mov r0, r6
00655498  0f e0 a0 e1                                      mov lr, pc
0065549c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006554a0  f7 ff ff ea                                      b #0x655484

; FUNCTION 0x006d2f58, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float> >
; alias: _ZN6glitch5video13SVertexStream10SMapBufferINS_4core8vector2dIfEEE5resetERS1_NS0_19E_BUFFER_MAP_ACCESSE.clone.2
; demangled: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float> >::reset(glitch::video::SVertexStream&, glitch::video::E_BUFFER_MAP_ACCESS) [clone .clone.2]
; decoder-mode: arm
006d2f58  70 40 2d e9                                      push {r4, r5, r6, lr}
006d2f5c  04 30 90 e5                                      ldr r3, [r0, #4]
006d2f60  00 40 a0 e1                                      mov r4, r0
006d2f64  01 50 a0 e1                                      mov r5, r1
006d2f68  00 00 53 e3                                      cmp r3, #0
006d2f6c  0c 00 00 0a                                      beq #0x6d2fa4
006d2f70  00 30 90 e5                                      ldr r3, [r0]
006d2f74  00 60 93 e5                                      ldr r6, [r3]
006d2f78  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
006d2f7c  1f 20 03 e2                                      and r2, r3, #0x1f
006d2f80  01 00 52 e3                                      cmp r2, #1
006d2f84  0e 00 00 9a                                      bls #0x6d2fc4
006d2f88  01 20 42 e2                                      sub r2, r2, #1
006d2f8c  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d2f90  03 30 82 e1                                      orr r3, r2, r3
006d2f94  13 30 c6 e5                                      strb r3, [r6, #0x13]
006d2f98  00 30 a0 e3                                      mov r3, #0
006d2f9c  04 30 84 e5                                      str r3, [r4, #4]
006d2fa0  00 30 84 e5                                      str r3, [r4]
006d2fa4  00 50 84 e5                                      str r5, [r4]
006d2fa8  00 00 95 e5                                      ldr r0, [r5]
006d2fac  02 10 a0 e3                                      mov r1, #2
006d2fb0  8e 3a fb eb                                      bl #0x5a19f0
006d2fb4  04 30 95 e5                                      ldr r3, [r5, #4]
006d2fb8  03 30 80 e0                                      add r3, r0, r3
006d2fbc  04 30 84 e5                                      str r3, [r4, #4]
006d2fc0  70 80 bd e8                                      pop {r4, r5, r6, pc}
006d2fc4  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006d2fc8  20 00 13 e3                                      tst r3, #0x20
006d2fcc  02 00 00 1a                                      bne #0x6d2fdc
006d2fd0  00 30 a0 e3                                      mov r3, #0
006d2fd4  13 30 c6 e5                                      strb r3, [r6, #0x13]
006d2fd8  ee ff ff ea                                      b #0x6d2f98
006d2fdc  00 30 96 e5                                      ldr r3, [r6]
006d2fe0  06 00 a0 e1                                      mov r0, r6
006d2fe4  0f e0 a0 e1                                      mov lr, pc
006d2fe8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d2fec  f7 ff ff ea                                      b #0x6d2fd0

; FUNCTION 0x006d6fe0, declared_size=168, range_size=168, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float> >
; alias: _ZN6glitch5video13SVertexStream10SMapBufferINS_4core8vector2dIfEEE5resetERS1_NS0_19E_BUFFER_MAP_ACCESSE
; demangled: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector2d<float> >::reset(glitch::video::SVertexStream&, glitch::video::E_BUFFER_MAP_ACCESS)
; decoder-mode: arm
006d6fe0  70 40 2d e9                                      push {r4, r5, r6, lr}
006d6fe4  04 30 90 e5                                      ldr r3, [r0, #4]
006d6fe8  08 d0 4d e2                                      sub sp, sp, #8
006d6fec  00 40 a0 e1                                      mov r4, r0
006d6ff0  00 00 53 e3                                      cmp r3, #0
006d6ff4  01 50 a0 e1                                      mov r5, r1
006d6ff8  0c 00 00 0a                                      beq #0x6d7030
006d6ffc  00 30 90 e5                                      ldr r3, [r0]
006d7000  00 60 93 e5                                      ldr r6, [r3]
006d7004  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
006d7008  1f 10 03 e2                                      and r1, r3, #0x1f
006d700c  01 00 51 e3                                      cmp r1, #1
006d7010  0f 00 00 9a                                      bls #0x6d7054
006d7014  01 10 41 e2                                      sub r1, r1, #1
006d7018  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d701c  03 30 81 e1                                      orr r3, r1, r3
006d7020  13 30 c6 e5                                      strb r3, [r6, #0x13]
006d7024  00 30 a0 e3                                      mov r3, #0
006d7028  04 30 84 e5                                      str r3, [r4, #4]
006d702c  00 30 84 e5                                      str r3, [r4]
006d7030  00 50 84 e5                                      str r5, [r4]
006d7034  02 10 a0 e1                                      mov r1, r2
006d7038  00 00 95 e5                                      ldr r0, [r5]
006d703c  6b 2a fb eb                                      bl #0x5a19f0
006d7040  04 30 95 e5                                      ldr r3, [r5, #4]
006d7044  03 30 80 e0                                      add r3, r0, r3
006d7048  04 30 84 e5                                      str r3, [r4, #4]
006d704c  08 d0 8d e2                                      add sp, sp, #8
006d7050  70 80 bd e8                                      pop {r4, r5, r6, pc}
006d7054  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006d7058  20 00 13 e3                                      tst r3, #0x20
006d705c  02 00 00 1a                                      bne #0x6d706c
006d7060  00 30 a0 e3                                      mov r3, #0
006d7064  13 30 c6 e5                                      strb r3, [r6, #0x13]
006d7068  ed ff ff ea                                      b #0x6d7024
006d706c  00 30 96 e5                                      ldr r3, [r6]
006d7070  06 00 a0 e1                                      mov r0, r6
006d7074  04 20 8d e5                                      str r2, [sp, #4]
006d7078  0f e0 a0 e1                                      mov lr, pc
006d707c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d7080  04 20 9d e5                                      ldr r2, [sp, #4]
006d7084  f5 ff ff ea                                      b #0x6d7060
