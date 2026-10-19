; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0059bfd0, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float> >
; alias: _ZN6glitch5video13SVertexStream10SMapBufferINS_4core8vector3dIfEEE5resetERS1_NS0_19E_BUFFER_MAP_ACCESSE.clone.3
; demangled: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float> >::reset(glitch::video::SVertexStream&, glitch::video::E_BUFFER_MAP_ACCESS) [clone .clone.3]
; decoder-mode: arm
0059bfd0  70 40 2d e9                                      push {r4, r5, r6, lr}
0059bfd4  04 30 90 e5                                      ldr r3, [r0, #4]
0059bfd8  00 40 a0 e1                                      mov r4, r0
0059bfdc  01 50 a0 e1                                      mov r5, r1
0059bfe0  00 00 53 e3                                      cmp r3, #0
0059bfe4  0c 00 00 0a                                      beq #0x59c01c
0059bfe8  00 30 90 e5                                      ldr r3, [r0]
0059bfec  00 60 93 e5                                      ldr r6, [r3]
0059bff0  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
0059bff4  1f 20 03 e2                                      and r2, r3, #0x1f
0059bff8  01 00 52 e3                                      cmp r2, #1
0059bffc  0e 00 00 9a                                      bls #0x59c03c
0059c000  01 20 42 e2                                      sub r2, r2, #1
0059c004  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059c008  03 30 82 e1                                      orr r3, r2, r3
0059c00c  13 30 c6 e5                                      strb r3, [r6, #0x13]
0059c010  00 30 a0 e3                                      mov r3, #0
0059c014  04 30 84 e5                                      str r3, [r4, #4]
0059c018  00 30 84 e5                                      str r3, [r4]
0059c01c  00 50 84 e5                                      str r5, [r4]
0059c020  00 00 95 e5                                      ldr r0, [r5]
0059c024  05 10 a0 e3                                      mov r1, #5
0059c028  70 16 00 eb                                      bl #0x5a19f0
0059c02c  04 30 95 e5                                      ldr r3, [r5, #4]
0059c030  03 30 80 e0                                      add r3, r0, r3
0059c034  04 30 84 e5                                      str r3, [r4, #4]
0059c038  70 80 bd e8                                      pop {r4, r5, r6, pc}
0059c03c  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
0059c040  20 00 13 e3                                      tst r3, #0x20
0059c044  02 00 00 1a                                      bne #0x59c054
0059c048  00 30 a0 e3                                      mov r3, #0
0059c04c  13 30 c6 e5                                      strb r3, [r6, #0x13]
0059c050  ee ff ff ea                                      b #0x59c010
0059c054  00 30 96 e5                                      ldr r3, [r6]
0059c058  06 00 a0 e1                                      mov r0, r6
0059c05c  0f e0 a0 e1                                      mov lr, pc
0059c060  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059c064  f7 ff ff ea                                      b #0x59c048

; FUNCTION 0x006402c8, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float> >
; alias: _ZN6glitch5video13SVertexStream10SMapBufferINS_4core8vector3dIfEEE5resetERS1_NS0_19E_BUFFER_MAP_ACCESSE.clone.17
; demangled: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float> >::reset(glitch::video::SVertexStream&, glitch::video::E_BUFFER_MAP_ACCESS) [clone .clone.17]
; decoder-mode: arm
006402c8  70 40 2d e9                                      push {r4, r5, r6, lr}
006402cc  04 30 90 e5                                      ldr r3, [r0, #4]
006402d0  00 40 a0 e1                                      mov r4, r0
006402d4  01 50 a0 e1                                      mov r5, r1
006402d8  00 00 53 e3                                      cmp r3, #0
006402dc  0c 00 00 0a                                      beq #0x640314
006402e0  00 30 90 e5                                      ldr r3, [r0]
006402e4  00 60 93 e5                                      ldr r6, [r3]
006402e8  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
006402ec  1f 20 03 e2                                      and r2, r3, #0x1f
006402f0  01 00 52 e3                                      cmp r2, #1
006402f4  0e 00 00 9a                                      bls #0x640334
006402f8  01 20 42 e2                                      sub r2, r2, #1
006402fc  1f 30 c3 e3                                      bic r3, r3, #0x1f
00640300  03 30 82 e1                                      orr r3, r2, r3
00640304  13 30 c6 e5                                      strb r3, [r6, #0x13]
00640308  00 30 a0 e3                                      mov r3, #0
0064030c  04 30 84 e5                                      str r3, [r4, #4]
00640310  00 30 84 e5                                      str r3, [r4]
00640314  00 50 84 e5                                      str r5, [r4]
00640318  00 00 95 e5                                      ldr r0, [r5]
0064031c  05 10 a0 e3                                      mov r1, #5
00640320  b2 85 fd eb                                      bl #0x5a19f0
00640324  04 30 95 e5                                      ldr r3, [r5, #4]
00640328  03 30 80 e0                                      add r3, r0, r3
0064032c  04 30 84 e5                                      str r3, [r4, #4]
00640330  70 80 bd e8                                      pop {r4, r5, r6, pc}
00640334  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
00640338  20 00 13 e3                                      tst r3, #0x20
0064033c  02 00 00 1a                                      bne #0x64034c
00640340  00 30 a0 e3                                      mov r3, #0
00640344  13 30 c6 e5                                      strb r3, [r6, #0x13]
00640348  ee ff ff ea                                      b #0x640308
0064034c  00 30 96 e5                                      ldr r3, [r6]
00640350  06 00 a0 e1                                      mov r0, r6
00640354  0f e0 a0 e1                                      mov lr, pc
00640358  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064035c  f7 ff ff ea                                      b #0x640340

; FUNCTION 0x00655374, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float> >
; alias: _ZN6glitch5video13SVertexStream10SMapBufferINS_4core8vector3dIfEEE5resetERS1_NS0_19E_BUFFER_MAP_ACCESSE.clone.19
; demangled: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float> >::reset(glitch::video::SVertexStream&, glitch::video::E_BUFFER_MAP_ACCESS) [clone .clone.19]
; decoder-mode: arm
00655374  70 40 2d e9                                      push {r4, r5, r6, lr}
00655378  04 30 90 e5                                      ldr r3, [r0, #4]
0065537c  00 40 a0 e1                                      mov r4, r0
00655380  01 50 a0 e1                                      mov r5, r1
00655384  00 00 53 e3                                      cmp r3, #0
00655388  0c 00 00 0a                                      beq #0x6553c0
0065538c  00 30 90 e5                                      ldr r3, [r0]
00655390  00 60 93 e5                                      ldr r6, [r3]
00655394  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
00655398  1f 20 03 e2                                      and r2, r3, #0x1f
0065539c  01 00 52 e3                                      cmp r2, #1
006553a0  0e 00 00 9a                                      bls #0x6553e0
006553a4  01 20 42 e2                                      sub r2, r2, #1
006553a8  1f 30 c3 e3                                      bic r3, r3, #0x1f
006553ac  03 30 82 e1                                      orr r3, r2, r3
006553b0  13 30 c6 e5                                      strb r3, [r6, #0x13]
006553b4  00 30 a0 e3                                      mov r3, #0
006553b8  04 30 84 e5                                      str r3, [r4, #4]
006553bc  00 30 84 e5                                      str r3, [r4]
006553c0  00 50 84 e5                                      str r5, [r4]
006553c4  00 00 95 e5                                      ldr r0, [r5]
006553c8  05 10 a0 e3                                      mov r1, #5
006553cc  87 31 fd eb                                      bl #0x5a19f0
006553d0  04 30 95 e5                                      ldr r3, [r5, #4]
006553d4  03 30 80 e0                                      add r3, r0, r3
006553d8  04 30 84 e5                                      str r3, [r4, #4]
006553dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
006553e0  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006553e4  20 00 13 e3                                      tst r3, #0x20
006553e8  02 00 00 1a                                      bne #0x6553f8
006553ec  00 30 a0 e3                                      mov r3, #0
006553f0  13 30 c6 e5                                      strb r3, [r6, #0x13]
006553f4  ee ff ff ea                                      b #0x6553b4
006553f8  00 30 96 e5                                      ldr r3, [r6]
006553fc  06 00 a0 e1                                      mov r0, r6
00655400  0f e0 a0 e1                                      mov lr, pc
00655404  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00655408  f7 ff ff ea                                      b #0x6553ec

; FUNCTION 0x006d7088, declared_size=168, range_size=168, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float> >
; alias: _ZN6glitch5video13SVertexStream10SMapBufferINS_4core8vector3dIfEEE5resetERS1_NS0_19E_BUFFER_MAP_ACCESSE
; demangled: glitch::video::SVertexStream::SMapBuffer<glitch::core::vector3d<float> >::reset(glitch::video::SVertexStream&, glitch::video::E_BUFFER_MAP_ACCESS)
; decoder-mode: arm
006d7088  70 40 2d e9                                      push {r4, r5, r6, lr}
006d708c  04 30 90 e5                                      ldr r3, [r0, #4]
006d7090  08 d0 4d e2                                      sub sp, sp, #8
006d7094  00 40 a0 e1                                      mov r4, r0
006d7098  00 00 53 e3                                      cmp r3, #0
006d709c  01 50 a0 e1                                      mov r5, r1
006d70a0  0c 00 00 0a                                      beq #0x6d70d8
006d70a4  00 30 90 e5                                      ldr r3, [r0]
006d70a8  00 60 93 e5                                      ldr r6, [r3]
006d70ac  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
006d70b0  1f 10 03 e2                                      and r1, r3, #0x1f
006d70b4  01 00 51 e3                                      cmp r1, #1
006d70b8  0f 00 00 9a                                      bls #0x6d70fc
006d70bc  01 10 41 e2                                      sub r1, r1, #1
006d70c0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006d70c4  03 30 81 e1                                      orr r3, r1, r3
006d70c8  13 30 c6 e5                                      strb r3, [r6, #0x13]
006d70cc  00 30 a0 e3                                      mov r3, #0
006d70d0  04 30 84 e5                                      str r3, [r4, #4]
006d70d4  00 30 84 e5                                      str r3, [r4]
006d70d8  00 50 84 e5                                      str r5, [r4]
006d70dc  02 10 a0 e1                                      mov r1, r2
006d70e0  00 00 95 e5                                      ldr r0, [r5]
006d70e4  41 2a fb eb                                      bl #0x5a19f0
006d70e8  04 30 95 e5                                      ldr r3, [r5, #4]
006d70ec  03 30 80 e0                                      add r3, r0, r3
006d70f0  04 30 84 e5                                      str r3, [r4, #4]
006d70f4  08 d0 8d e2                                      add sp, sp, #8
006d70f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
006d70fc  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006d7100  20 00 13 e3                                      tst r3, #0x20
006d7104  02 00 00 1a                                      bne #0x6d7114
006d7108  00 30 a0 e3                                      mov r3, #0
006d710c  13 30 c6 e5                                      strb r3, [r6, #0x13]
006d7110  ed ff ff ea                                      b #0x6d70cc
006d7114  00 30 96 e5                                      ldr r3, [r6]
006d7118  06 00 a0 e1                                      mov r0, r6
006d711c  04 20 8d e5                                      str r2, [sp, #4]
006d7120  0f e0 a0 e1                                      mov lr, pc
006d7124  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006d7128  04 20 9d e5                                      ldr r2, [sp, #4]
006d712c  f5 ff ff ea                                      b #0x6d7108
