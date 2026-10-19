; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065c424, declared_size=212, range_size=212, mode=arm
; class-group: std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> >& std::map<glitch::collada::SAnimation*, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> >, std::less<glitch::collada::SAnimation*>, glitch::core::SAllocator<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt3mapIPN6glitch7collada10SAnimationESt6vectorINS1_14CRootSceneNode22CMaterialParameterInfoENS0_4core10SAllocatorIS6_LNS0_6memory13E_MEMORY_HINTE0EEEESt4lessIS3_ENS8_ISt4pairIKS3_SC_ELSA_0EEEEixIS3_EERSC_RKT_
; demangled: std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> >& std::map<glitch::collada::SAnimation*, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> >, std::less<glitch::collada::SAnimation*>, glitch::core::SAllocator<std::pair<glitch::collada::SAnimation* const, std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > >, (glitch::memory::E_MEMORY_HINT)0> >::operator[]<glitch::collada::SAnimation*>(glitch::collada::SAnimation* const&)
; decoder-mode: arm
0065c424  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065c428  04 40 90 e5                                      ldr r4, [r0, #4]
0065c42c  28 d0 4d e2                                      sub sp, sp, #0x28
0065c430  00 70 a0 e1                                      mov r7, r0
0065c434  00 00 54 e3                                      cmp r4, #0
0065c438  2b 00 00 0a                                      beq #0x65c4ec
0065c43c  00 10 91 e5                                      ldr r1, [r1]
0065c440  00 20 a0 e1                                      mov r2, r0
0065c444  00 00 00 ea                                      b #0x65c44c
0065c448  03 40 a0 e1                                      mov r4, r3
0065c44c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0065c450  03 00 51 e1                                      cmp r1, r3
0065c454  0c 30 94 85                                      ldrhi r3, [r4, #0xc]
0065c458  08 30 94 95                                      ldrls r3, [r4, #8]
0065c45c  02 40 a0 81                                      movhi r4, r2
0065c460  04 20 a0 e1                                      mov r2, r4
0065c464  00 00 53 e3                                      cmp r3, #0
0065c468  f6 ff ff 1a                                      bne #0x65c448
0065c46c  04 00 57 e1                                      cmp r7, r4
0065c470  03 00 00 0a                                      beq #0x65c484
0065c474  10 30 94 e5                                      ldr r3, [r4, #0x10]
0065c478  04 00 a0 e1                                      mov r0, r4
0065c47c  03 00 51 e1                                      cmp r1, r3
0065c480  16 00 00 2a                                      bhs #0x65c4e0
0065c484  28 80 8d e2                                      add r8, sp, #0x28
0065c488  24 10 28 e5                                      str r1, [r8, #-0x24]!
0065c48c  04 60 88 e2                                      add r6, r8, #4
0065c490  14 50 8d e2                                      add r5, sp, #0x14
0065c494  00 30 a0 e3                                      mov r3, #0
0065c498  05 10 a0 e1                                      mov r1, r5
0065c49c  06 00 a0 e1                                      mov r0, r6
0065c4a0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0065c4a4  14 30 8d e5                                      str r3, [sp, #0x14]
0065c4a8  18 30 8d e5                                      str r3, [sp, #0x18]
0065c4ac  2e fb ff eb                                      bl #0x65b16c
0065c4b0  07 10 a0 e1                                      mov r1, r7
0065c4b4  08 30 a0 e1                                      mov r3, r8
0065c4b8  20 20 8d e2                                      add r2, sp, #0x20
0065c4bc  24 00 8d e2                                      add r0, sp, #0x24
0065c4c0  20 40 8d e5                                      str r4, [sp, #0x20]
0065c4c4  c7 fd ff eb                                      bl #0x65bbe8
0065c4c8  24 40 9d e5                                      ldr r4, [sp, #0x24]
0065c4cc  06 00 a0 e1                                      mov r0, r6
0065c4d0  bd fe ff eb                                      bl #0x65bfcc
0065c4d4  05 00 a0 e1                                      mov r0, r5
0065c4d8  bb fe ff eb                                      bl #0x65bfcc
0065c4dc  04 00 a0 e1                                      mov r0, r4
0065c4e0  14 00 80 e2                                      add r0, r0, #0x14
0065c4e4  28 d0 8d e2                                      add sp, sp, #0x28
0065c4e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0065c4ec  00 10 91 e5                                      ldr r1, [r1]
0065c4f0  00 40 a0 e1                                      mov r4, r0
0065c4f4  dc ff ff ea                                      b #0x65c46c
