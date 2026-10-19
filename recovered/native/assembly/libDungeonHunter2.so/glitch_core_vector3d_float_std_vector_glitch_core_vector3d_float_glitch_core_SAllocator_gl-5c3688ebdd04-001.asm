; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a2870, declared_size=116, range_size=116, mode=arm
; class-group: glitch::core::vector3d<float>* std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch4core8vector3dIfEENS1_10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPKS3_EEPS3_RjT_SE_
; demangled: glitch::core::vector3d<float>* std::vector<glitch::core::vector3d<float>, glitch::core::SAllocator<glitch::core::vector3d<float>, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::core::vector3d<float> const*>(unsigned int&, glitch::core::vector3d<float> const*, glitch::core::vector3d<float> const*)
; decoder-mode: arm
005a2870  70 40 2d e9                                      push {r4, r5, r6, lr}
005a2874  00 10 91 e5                                      ldr r1, [r1]
005a2878  03 50 a0 e1                                      mov r5, r3
005a287c  02 40 a0 e1                                      mov r4, r2
005a2880  0c 00 a0 e3                                      mov r0, #0xc
005a2884  90 01 00 e0                                      mul r0, r0, r1
005a2888  05 50 64 e0                                      rsb r5, r4, r5
005a288c  00 10 a0 e3                                      mov r1, #0
005a2890  34 b7 f5 eb                                      bl #0x310568
005a2894  45 31 a0 e1                                      asr r3, r5, #2
005a2898  03 51 83 e0                                      add r5, r3, r3, lsl #2
005a289c  05 52 85 e0                                      add r5, r5, r5, lsl #4
005a28a0  05 54 85 e0                                      add r5, r5, r5, lsl #8
005a28a4  05 58 85 e0                                      add r5, r5, r5, lsl #16
005a28a8  85 50 83 e0                                      add r5, r3, r5, lsl #1
005a28ac  00 00 55 e3                                      cmp r5, #0
005a28b0  0a 00 00 da                                      ble #0x5a28e0
005a28b4  00 30 a0 e1                                      mov r3, r0
005a28b8  00 20 94 e5                                      ldr r2, [r4]
005a28bc  01 50 55 e2                                      subs r5, r5, #1
005a28c0  00 20 83 e5                                      str r2, [r3]
005a28c4  04 20 94 e5                                      ldr r2, [r4, #4]
005a28c8  04 20 83 e5                                      str r2, [r3, #4]
005a28cc  08 20 94 e5                                      ldr r2, [r4, #8]
005a28d0  0c 40 84 e2                                      add r4, r4, #0xc
005a28d4  08 20 83 e5                                      str r2, [r3, #8]
005a28d8  0c 30 83 e2                                      add r3, r3, #0xc
005a28dc  f5 ff ff 1a                                      bne #0x5a28b8
005a28e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
