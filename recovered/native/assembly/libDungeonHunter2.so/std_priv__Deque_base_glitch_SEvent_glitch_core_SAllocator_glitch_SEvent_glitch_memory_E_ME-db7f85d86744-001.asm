; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0067150c, declared_size=72, range_size=72, mode=arm
; class-group: std::priv::_Deque_base<glitch::SEvent, glitch::core::SAllocator<glitch::SEvent, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv11_Deque_baseIN6glitch6SEventENS1_4core10SAllocatorIS2_LNS1_6memory13E_MEMORY_HINTE0EEEED2Ev
; demangled: std::priv::_Deque_base<glitch::SEvent, glitch::core::SAllocator<glitch::SEvent, (glitch::memory::E_MEMORY_HINT)0> >::~_Deque_base()
; decoder-mode: arm
0067150c  70 40 2d e9                                      push {r4, r5, r6, lr}
00671510  00 60 a0 e1                                      mov r6, r0
00671514  20 00 90 e5                                      ldr r0, [r0, #0x20]
00671518  00 00 50 e3                                      cmp r0, #0
0067151c  0a 00 00 0a                                      beq #0x67154c
00671520  1c 50 96 e5                                      ldr r5, [r6, #0x1c]
00671524  0c 40 96 e5                                      ldr r4, [r6, #0xc]
00671528  04 50 85 e2                                      add r5, r5, #4
0067152c  05 00 54 e1                                      cmp r4, r5
00671530  04 00 00 2a                                      bhs #0x671548
00671534  04 00 94 e4                                      ldr r0, [r4], #4
00671538  c4 7b f2 eb                                      bl #0x310450
0067153c  04 00 55 e1                                      cmp r5, r4
00671540  fb ff ff 8a                                      bhi #0x671534
00671544  20 00 96 e5                                      ldr r0, [r6, #0x20]
00671548  c0 7b f2 eb                                      bl #0x310450
0067154c  06 00 a0 e1                                      mov r0, r6
00671550  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00671bd8, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Deque_base<glitch::SEvent, glitch::core::SAllocator<glitch::SEvent, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv11_Deque_baseIN6glitch6SEventENS1_4core10SAllocatorIS2_LNS1_6memory13E_MEMORY_HINTE0EEEE17_M_initialize_mapEj.clone.3
; demangled: std::priv::_Deque_base<glitch::SEvent, glitch::core::SAllocator<glitch::SEvent, (glitch::memory::E_MEMORY_HINT)0> >::_M_initialize_map(unsigned int) [clone .clone.3]
; decoder-mode: arm
00671bd8  08 30 a0 e3                                      mov r3, #8
00671bdc  70 40 2d e9                                      push {r4, r5, r6, lr}
00671be0  00 10 a0 e3                                      mov r1, #0
00671be4  00 40 a0 e1                                      mov r4, r0
00671be8  24 30 80 e5                                      str r3, [r0, #0x24]
00671bec  20 00 a0 e3                                      mov r0, #0x20
00671bf0  5c 7a f2 eb                                      bl #0x310568
00671bf4  00 10 a0 e3                                      mov r1, #0
00671bf8  00 50 a0 e1                                      mov r5, r0
00671bfc  20 00 84 e5                                      str r0, [r4, #0x20]
00671c00  78 00 a0 e3                                      mov r0, #0x78
00671c04  24 60 94 e5                                      ldr r6, [r4, #0x24]
00671c08  56 7a f2 eb                                      bl #0x310568
00671c0c  01 60 46 e2                                      sub r6, r6, #1
00671c10  a6 60 a0 e1                                      lsr r6, r6, #1
00671c14  06 01 85 e7                                      str r0, [r5, r6, lsl #2]
00671c18  06 31 85 e0                                      add r3, r5, r6, lsl #2
00671c1c  0c 30 84 e5                                      str r3, [r4, #0xc]
00671c20  06 21 95 e7                                      ldr r2, [r5, r6, lsl #2]
00671c24  1c 30 84 e5                                      str r3, [r4, #0x1c]
00671c28  78 30 82 e2                                      add r3, r2, #0x78
00671c2c  0c 00 84 e9                                      stmib r4, {r2, r3}
00671c30  06 31 95 e7                                      ldr r3, [r5, r6, lsl #2]
00671c34  00 20 84 e5                                      str r2, [r4]
00671c38  78 20 83 e2                                      add r2, r3, #0x78
00671c3c  10 30 84 e5                                      str r3, [r4, #0x10]
00671c40  18 20 84 e5                                      str r2, [r4, #0x18]
00671c44  14 30 84 e5                                      str r3, [r4, #0x14]
00671c48  70 80 bd e8                                      pop {r4, r5, r6, pc}
