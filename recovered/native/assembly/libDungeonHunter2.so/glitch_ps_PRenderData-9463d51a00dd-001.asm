; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0063f898, declared_size=380, range_size=380, mode=arm
; class-group: glitch::ps::PRenderData
; alias: _ZN6glitch2ps11PRenderData17setRenderDataInfoEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverE
; demangled: glitch::ps::PRenderData::setRenderDataInfo(glitch::scene::CMeshBuffer*, glitch::video::IVideoDriver*)
; decoder-mode: arm
0063f898  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0063f89c  00 30 90 e5                                      ldr r3, [r0]
0063f8a0  00 20 a0 e3                                      mov r2, #0
0063f8a4  0c d0 4d e2                                      sub sp, sp, #0xc
0063f8a8  02 00 53 e1                                      cmp r3, r2
0063f8ac  00 40 a0 e1                                      mov r4, r0
0063f8b0  04 20 8d e5                                      str r2, [sp, #4]
0063f8b4  01 50 a0 e1                                      mov r5, r1
0063f8b8  0b 00 00 0a                                      beq #0x63f8ec
0063f8bc  14 30 93 e5                                      ldr r3, [r3, #0x14]
0063f8c0  02 00 53 e1                                      cmp r3, r2
0063f8c4  04 30 8d 05                                      streq r3, [sp, #4]
0063f8c8  07 00 00 0a                                      beq #0x63f8ec
0063f8cc  04 20 93 e5                                      ldr r2, [r3, #4]
0063f8d0  01 20 82 e2                                      add r2, r2, #1
0063f8d4  04 20 83 e5                                      str r2, [r3, #4]
0063f8d8  04 00 9d e5                                      ldr r0, [sp, #4]
0063f8dc  04 30 8d e5                                      str r3, [sp, #4]
0063f8e0  00 00 50 e3                                      cmp r0, #0
0063f8e4  00 00 00 0a                                      beq #0x63f8ec
0063f8e8  25 77 f3 eb                                      bl #0x31d584
0063f8ec  14 00 95 e5                                      ldr r0, [r5, #0x14]
0063f8f0  58 84 fd eb                                      bl #0x5a0a58
0063f8f4  00 60 a0 e1                                      mov r6, r0
0063f8f8  00 00 94 e5                                      ldr r0, [r4]
0063f8fc  00 00 50 e3                                      cmp r0, #0
0063f900  1d 00 00 0a                                      beq #0x63f97c
0063f904  04 30 90 e5                                      ldr r3, [r0, #4]
0063f908  03 30 d6 e1                                      bics r3, r6, r3
0063f90c  1a 00 00 1a                                      bne #0x63f97c
0063f910  06 20 a0 e1                                      mov r2, r6
0063f914  04 10 8d e2                                      add r1, sp, #4
0063f918  28 87 fd eb                                      bl #0x5a15c0
0063f91c  14 50 95 e5                                      ldr r5, [r5, #0x14]
0063f920  00 60 a0 e1                                      mov r6, r0
0063f924  00 00 55 e3                                      cmp r5, #0
0063f928  00 30 95 15                                      ldrne r3, [r5]
0063f92c  08 70 95 e5                                      ldr r7, [r5, #8]
0063f930  01 30 83 12                                      addne r3, r3, #1
0063f934  00 30 85 15                                      strne r3, [r5]
0063f938  00 30 95 e5                                      ldr r3, [r5]
0063f93c  01 30 43 e2                                      sub r3, r3, #1
0063f940  00 00 53 e3                                      cmp r3, #0
0063f944  00 30 85 e5                                      str r3, [r5]
0063f948  03 00 00 1a                                      bne #0x63f95c
0063f94c  05 00 a0 e1                                      mov r0, r5
0063f950  31 84 fd eb                                      bl #0x5a0a1c
0063f954  05 00 a0 e1                                      mov r0, r5
0063f958  54 3a f3 eb                                      bl #0x30e2b0
0063f95c  04 00 9d e5                                      ldr r0, [sp, #4]
0063f960  97 06 06 e0                                      mul r6, r7, r6
0063f964  00 00 50 e3                                      cmp r0, #0
0063f968  1c 60 84 e5                                      str r6, [r4, #0x1c]
0063f96c  00 00 00 0a                                      beq #0x63f974
0063f970  03 77 f3 eb                                      bl #0x31d584
0063f974  0c d0 8d e2                                      add sp, sp, #0xc
0063f978  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0063f97c  0d 00 a0 e1                                      mov r0, sp
0063f980  06 10 a0 e1                                      mov r1, r6
0063f984  74 86 fd eb                                      bl #0x5a135c
0063f988  00 30 9d e5                                      ldr r3, [sp]
0063f98c  00 00 53 e3                                      cmp r3, #0
0063f990  00 20 93 15                                      ldrne r2, [r3]
0063f994  01 20 82 12                                      addne r2, r2, #1
0063f998  00 20 83 15                                      strne r2, [r3]
0063f99c  00 70 94 e5                                      ldr r7, [r4]
0063f9a0  00 30 84 e5                                      str r3, [r4]
0063f9a4  00 00 57 e3                                      cmp r7, #0
0063f9a8  04 00 00 0a                                      beq #0x63f9c0
0063f9ac  00 30 97 e5                                      ldr r3, [r7]
0063f9b0  01 30 43 e2                                      sub r3, r3, #1
0063f9b4  00 00 53 e3                                      cmp r3, #0
0063f9b8  00 30 87 e5                                      str r3, [r7]
0063f9bc  0f 00 00 0a                                      beq #0x63fa00
0063f9c0  00 70 9d e5                                      ldr r7, [sp]
0063f9c4  00 00 57 e3                                      cmp r7, #0
0063f9c8  04 00 00 0a                                      beq #0x63f9e0
0063f9cc  00 30 97 e5                                      ldr r3, [r7]
0063f9d0  01 30 43 e2                                      sub r3, r3, #1
0063f9d4  00 00 53 e3                                      cmp r3, #0
0063f9d8  00 30 87 e5                                      str r3, [r7]
0063f9dc  01 00 00 0a                                      beq #0x63f9e8
0063f9e0  00 00 94 e5                                      ldr r0, [r4]
0063f9e4  c9 ff ff ea                                      b #0x63f910
0063f9e8  07 00 a0 e1                                      mov r0, r7
0063f9ec  0a 84 fd eb                                      bl #0x5a0a1c
0063f9f0  07 00 a0 e1                                      mov r0, r7
0063f9f4  2d 3a f3 eb                                      bl #0x30e2b0
0063f9f8  00 00 94 e5                                      ldr r0, [r4]
0063f9fc  c3 ff ff ea                                      b #0x63f910
0063fa00  07 00 a0 e1                                      mov r0, r7
0063fa04  04 84 fd eb                                      bl #0x5a0a1c
0063fa08  07 00 a0 e1                                      mov r0, r7
0063fa0c  27 3a f3 eb                                      bl #0x30e2b0
0063fa10  ea ff ff ea                                      b #0x63f9c0
