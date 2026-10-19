; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0059c068, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<void>
; alias: _ZN6glitch5video13SVertexStream10SMapBufferIvE5resetERS1_NS0_19E_BUFFER_MAP_ACCESSE.clone.4
; demangled: glitch::video::SVertexStream::SMapBuffer<void>::reset(glitch::video::SVertexStream&, glitch::video::E_BUFFER_MAP_ACCESS) [clone .clone.4]
; decoder-mode: arm
0059c068  70 40 2d e9                                      push {r4, r5, r6, lr}
0059c06c  04 30 90 e5                                      ldr r3, [r0, #4]
0059c070  00 40 a0 e1                                      mov r4, r0
0059c074  01 50 a0 e1                                      mov r5, r1
0059c078  00 00 53 e3                                      cmp r3, #0
0059c07c  0c 00 00 0a                                      beq #0x59c0b4
0059c080  00 30 90 e5                                      ldr r3, [r0]
0059c084  00 60 93 e5                                      ldr r6, [r3]
0059c088  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
0059c08c  1f 20 03 e2                                      and r2, r3, #0x1f
0059c090  01 00 52 e3                                      cmp r2, #1
0059c094  0e 00 00 9a                                      bls #0x59c0d4
0059c098  01 20 42 e2                                      sub r2, r2, #1
0059c09c  1f 30 c3 e3                                      bic r3, r3, #0x1f
0059c0a0  03 30 82 e1                                      orr r3, r2, r3
0059c0a4  13 30 c6 e5                                      strb r3, [r6, #0x13]
0059c0a8  00 30 a0 e3                                      mov r3, #0
0059c0ac  04 30 84 e5                                      str r3, [r4, #4]
0059c0b0  00 30 84 e5                                      str r3, [r4]
0059c0b4  00 50 84 e5                                      str r5, [r4]
0059c0b8  00 00 95 e5                                      ldr r0, [r5]
0059c0bc  05 10 a0 e3                                      mov r1, #5
0059c0c0  4a 16 00 eb                                      bl #0x5a19f0
0059c0c4  04 30 95 e5                                      ldr r3, [r5, #4]
0059c0c8  03 30 80 e0                                      add r3, r0, r3
0059c0cc  04 30 84 e5                                      str r3, [r4, #4]
0059c0d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0059c0d4  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
0059c0d8  20 00 13 e3                                      tst r3, #0x20
0059c0dc  02 00 00 1a                                      bne #0x59c0ec
0059c0e0  00 30 a0 e3                                      mov r3, #0
0059c0e4  13 30 c6 e5                                      strb r3, [r6, #0x13]
0059c0e8  ee ff ff ea                                      b #0x59c0a8
0059c0ec  00 30 96 e5                                      ldr r3, [r6]
0059c0f0  06 00 a0 e1                                      mov r0, r6
0059c0f4  0f e0 a0 e1                                      mov lr, pc
0059c0f8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0059c0fc  f7 ff ff ea                                      b #0x59c0e0

; FUNCTION 0x0060a2ec, declared_size=152, range_size=152, mode=arm
; class-group: glitch::video::SVertexStream::SMapBuffer<void>
; alias: _ZN6glitch5video13SVertexStream10SMapBufferIvE5resetERS1_NS0_19E_BUFFER_MAP_ACCESSE.clone.4
; demangled: glitch::video::SVertexStream::SMapBuffer<void>::reset(glitch::video::SVertexStream&, glitch::video::E_BUFFER_MAP_ACCESS) [clone .clone.4]
; decoder-mode: arm
0060a2ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0060a2f0  04 30 90 e5                                      ldr r3, [r0, #4]
0060a2f4  00 40 a0 e1                                      mov r4, r0
0060a2f8  01 50 a0 e1                                      mov r5, r1
0060a2fc  00 00 53 e3                                      cmp r3, #0
0060a300  0c 00 00 0a                                      beq #0x60a338
0060a304  00 30 90 e5                                      ldr r3, [r0]
0060a308  00 60 93 e5                                      ldr r6, [r3]
0060a30c  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
0060a310  1f 20 03 e2                                      and r2, r3, #0x1f
0060a314  01 00 52 e3                                      cmp r2, #1
0060a318  0e 00 00 9a                                      bls #0x60a358
0060a31c  01 20 42 e2                                      sub r2, r2, #1
0060a320  1f 30 c3 e3                                      bic r3, r3, #0x1f
0060a324  03 30 82 e1                                      orr r3, r2, r3
0060a328  13 30 c6 e5                                      strb r3, [r6, #0x13]
0060a32c  00 30 a0 e3                                      mov r3, #0
0060a330  04 30 84 e5                                      str r3, [r4, #4]
0060a334  00 30 84 e5                                      str r3, [r4]
0060a338  00 50 84 e5                                      str r5, [r4]
0060a33c  00 00 95 e5                                      ldr r0, [r5]
0060a340  04 10 a0 e3                                      mov r1, #4
0060a344  a9 5d fe eb                                      bl #0x5a19f0
0060a348  04 30 95 e5                                      ldr r3, [r5, #4]
0060a34c  03 30 80 e0                                      add r3, r0, r3
0060a350  04 30 84 e5                                      str r3, [r4, #4]
0060a354  70 80 bd e8                                      pop {r4, r5, r6, pc}
0060a358  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
0060a35c  20 00 13 e3                                      tst r3, #0x20
0060a360  02 00 00 1a                                      bne #0x60a370
0060a364  00 30 a0 e3                                      mov r3, #0
0060a368  13 30 c6 e5                                      strb r3, [r6, #0x13]
0060a36c  ee ff ff ea                                      b #0x60a32c
0060a370  00 30 96 e5                                      ldr r3, [r6]
0060a374  06 00 a0 e1                                      mov r0, r6
0060a378  0f e0 a0 e1                                      mov lr, pc
0060a37c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0060a380  f7 ff ff ea                                      b #0x60a364
