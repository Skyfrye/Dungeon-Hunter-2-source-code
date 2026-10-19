; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00586520, declared_size=176, range_size=176, mode=arm
; class-group: glitch::core::triangle3d<float>* std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core10triangle3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPKS3_EEPS3_RjT_SE_
; demangled: glitch::core::triangle3d<float>* std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::core::triangle3d<float> const*>(unsigned int&, glitch::core::triangle3d<float> const*, glitch::core::triangle3d<float> const*)
; decoder-mode: arm
00586520  70 40 2d e9                                      push {r4, r5, r6, lr}
00586524  00 10 91 e5                                      ldr r1, [r1]
00586528  02 40 a0 e1                                      mov r4, r2
0058652c  03 50 a0 e1                                      mov r5, r3
00586530  24 00 a0 e3                                      mov r0, #0x24
00586534  90 01 00 e0                                      mul r0, r0, r1
00586538  05 50 64 e0                                      rsb r5, r4, r5
0058653c  00 10 a0 e3                                      mov r1, #0
00586540  08 28 f6 eb                                      bl #0x310568
00586544  45 31 a0 e1                                      asr r3, r5, #2
00586548  83 21 a0 e1                                      lsl r2, r3, #3
0058654c  02 20 63 e0                                      rsb r2, r3, r2
00586550  02 23 82 e0                                      add r2, r2, r2, lsl #6
00586554  82 21 83 e0                                      add r2, r3, r2, lsl #3
00586558  82 57 a0 e1                                      lsl r5, r2, #0xf
0058655c  05 50 62 e0                                      rsb r5, r2, r5
00586560  85 51 83 e0                                      add r5, r3, r5, lsl #3
00586564  00 00 55 e3                                      cmp r5, #0
00586568  17 00 00 da                                      ble #0x5865cc
0058656c  00 30 a0 e1                                      mov r3, r0
00586570  00 00 00 ea                                      b #0x586578
00586574  24 30 83 e2                                      add r3, r3, #0x24
00586578  00 20 94 e5                                      ldr r2, [r4]
0058657c  01 50 55 e2                                      subs r5, r5, #1
00586580  00 20 83 e5                                      str r2, [r3]
00586584  04 20 94 e5                                      ldr r2, [r4, #4]
00586588  04 20 83 e5                                      str r2, [r3, #4]
0058658c  08 20 94 e5                                      ldr r2, [r4, #8]
00586590  08 20 83 e5                                      str r2, [r3, #8]
00586594  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00586598  0c 20 83 e5                                      str r2, [r3, #0xc]
0058659c  10 20 94 e5                                      ldr r2, [r4, #0x10]
005865a0  10 20 83 e5                                      str r2, [r3, #0x10]
005865a4  14 20 94 e5                                      ldr r2, [r4, #0x14]
005865a8  14 20 83 e5                                      str r2, [r3, #0x14]
005865ac  18 20 94 e5                                      ldr r2, [r4, #0x18]
005865b0  18 20 83 e5                                      str r2, [r3, #0x18]
005865b4  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
005865b8  1c 20 83 e5                                      str r2, [r3, #0x1c]
005865bc  20 20 94 e5                                      ldr r2, [r4, #0x20]
005865c0  24 40 84 e2                                      add r4, r4, #0x24
005865c4  20 20 83 e5                                      str r2, [r3, #0x20]
005865c8  e9 ff ff 1a                                      bne #0x586574
005865cc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00590fb0, declared_size=176, range_size=176, mode=arm
; class-group: glitch::core::triangle3d<float>* std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core10triangle3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS3_EESA_RjT_SC_
; demangled: glitch::core::triangle3d<float>* std::vector<glitch::core::triangle3d<float>, glitch::core::SAllocator<glitch::core::triangle3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::core::triangle3d<float>*>(unsigned int&, glitch::core::triangle3d<float>*, glitch::core::triangle3d<float>*)
; decoder-mode: arm
00590fb0  70 40 2d e9                                      push {r4, r5, r6, lr}
00590fb4  00 10 91 e5                                      ldr r1, [r1]
00590fb8  02 40 a0 e1                                      mov r4, r2
00590fbc  03 50 a0 e1                                      mov r5, r3
00590fc0  24 00 a0 e3                                      mov r0, #0x24
00590fc4  90 01 00 e0                                      mul r0, r0, r1
00590fc8  05 50 64 e0                                      rsb r5, r4, r5
00590fcc  00 10 a0 e3                                      mov r1, #0
00590fd0  64 fd f5 eb                                      bl #0x310568
00590fd4  45 31 a0 e1                                      asr r3, r5, #2
00590fd8  83 21 a0 e1                                      lsl r2, r3, #3
00590fdc  02 20 63 e0                                      rsb r2, r3, r2
00590fe0  02 23 82 e0                                      add r2, r2, r2, lsl #6
00590fe4  82 21 83 e0                                      add r2, r3, r2, lsl #3
00590fe8  82 57 a0 e1                                      lsl r5, r2, #0xf
00590fec  05 50 62 e0                                      rsb r5, r2, r5
00590ff0  85 51 83 e0                                      add r5, r3, r5, lsl #3
00590ff4  00 00 55 e3                                      cmp r5, #0
00590ff8  17 00 00 da                                      ble #0x59105c
00590ffc  00 30 a0 e1                                      mov r3, r0
00591000  00 00 00 ea                                      b #0x591008
00591004  24 30 83 e2                                      add r3, r3, #0x24
00591008  00 20 94 e5                                      ldr r2, [r4]
0059100c  01 50 55 e2                                      subs r5, r5, #1
00591010  00 20 83 e5                                      str r2, [r3]
00591014  04 20 94 e5                                      ldr r2, [r4, #4]
00591018  04 20 83 e5                                      str r2, [r3, #4]
0059101c  08 20 94 e5                                      ldr r2, [r4, #8]
00591020  08 20 83 e5                                      str r2, [r3, #8]
00591024  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00591028  0c 20 83 e5                                      str r2, [r3, #0xc]
0059102c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00591030  10 20 83 e5                                      str r2, [r3, #0x10]
00591034  14 20 94 e5                                      ldr r2, [r4, #0x14]
00591038  14 20 83 e5                                      str r2, [r3, #0x14]
0059103c  18 20 94 e5                                      ldr r2, [r4, #0x18]
00591040  18 20 83 e5                                      str r2, [r3, #0x18]
00591044  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00591048  1c 20 83 e5                                      str r2, [r3, #0x1c]
0059104c  20 20 94 e5                                      ldr r2, [r4, #0x20]
00591050  24 40 84 e2                                      add r4, r4, #0x24
00591054  20 20 83 e5                                      str r2, [r3, #0x20]
00591058  e9 ff ff 1a                                      bne #0x591004
0059105c  70 80 bd e8                                      pop {r4, r5, r6, pc}
