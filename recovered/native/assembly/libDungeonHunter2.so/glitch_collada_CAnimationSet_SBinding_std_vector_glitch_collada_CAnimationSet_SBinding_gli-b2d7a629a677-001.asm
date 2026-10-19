; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0062e560, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CAnimationSet::SBinding* std::vector<glitch::collada::CAnimationSet::SBinding, glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CAnimationSet8SBindingENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS3_EESB_RjT_SD_
; demangled: glitch::collada::CAnimationSet::SBinding* std::vector<glitch::collada::CAnimationSet::SBinding, glitch::core::SAllocator<glitch::collada::CAnimationSet::SBinding, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::collada::CAnimationSet::SBinding*>(unsigned int&, glitch::collada::CAnimationSet::SBinding*, glitch::collada::CAnimationSet::SBinding*)
; decoder-mode: arm
0062e560  70 40 2d e9                                      push {r4, r5, r6, lr}
0062e564  00 10 91 e5                                      ldr r1, [r1]
0062e568  03 50 a0 e1                                      mov r5, r3
0062e56c  02 40 a0 e1                                      mov r4, r2
0062e570  0c 00 a0 e3                                      mov r0, #0xc
0062e574  90 01 00 e0                                      mul r0, r0, r1
0062e578  05 50 64 e0                                      rsb r5, r4, r5
0062e57c  00 10 a0 e3                                      mov r1, #0
0062e580  f8 87 f3 eb                                      bl #0x310568
0062e584  45 31 a0 e1                                      asr r3, r5, #2
0062e588  03 51 83 e0                                      add r5, r3, r3, lsl #2
0062e58c  05 52 85 e0                                      add r5, r5, r5, lsl #4
0062e590  05 54 85 e0                                      add r5, r5, r5, lsl #8
0062e594  05 58 85 e0                                      add r5, r5, r5, lsl #16
0062e598  85 50 83 e0                                      add r5, r3, r5, lsl #1
0062e59c  00 00 55 e3                                      cmp r5, #0
0062e5a0  0d 00 00 da                                      ble #0x62e5dc
0062e5a4  00 30 a0 e3                                      mov r3, #0
0062e5a8  03 20 94 e7                                      ldr r2, [r4, r3]
0062e5ac  03 10 84 e0                                      add r1, r4, r3
0062e5b0  04 10 81 e2                                      add r1, r1, #4
0062e5b4  03 20 80 e7                                      str r2, [r0, r3]
0062e5b8  04 c0 91 e4                                      ldr ip, [r1], #4
0062e5bc  03 20 80 e0                                      add r2, r0, r3
0062e5c0  04 20 82 e2                                      add r2, r2, #4
0062e5c4  04 c0 82 e4                                      str ip, [r2], #4
0062e5c8  00 10 91 e5                                      ldr r1, [r1]
0062e5cc  01 50 55 e2                                      subs r5, r5, #1
0062e5d0  0c 30 83 e2                                      add r3, r3, #0xc
0062e5d4  00 10 82 e5                                      str r1, [r2]
0062e5d8  f2 ff ff 1a                                      bne #0x62e5a8
0062e5dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
