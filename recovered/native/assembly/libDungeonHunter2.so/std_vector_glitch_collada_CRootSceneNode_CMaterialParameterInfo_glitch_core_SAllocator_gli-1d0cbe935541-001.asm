; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065b16c, declared_size=164, range_size=164, mode=arm
; class-group: std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada14CRootSceneNode22CMaterialParameterInfoENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEEC1ERKS9_
; demangled: std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> >::vector(std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
0065b16c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065b170  88 00 91 e8                                      ldm r1, {r3, r7}
0065b174  00 50 a0 e3                                      mov r5, #0
0065b178  00 40 a0 e1                                      mov r4, r0
0065b17c  07 70 63 e0                                      rsb r7, r3, r7
0065b180  07 70 c7 e3                                      bic r7, r7, #7
0065b184  01 60 a0 e1                                      mov r6, r1
0065b188  00 50 80 e5                                      str r5, [r0]
0065b18c  04 50 80 e5                                      str r5, [r0, #4]
0065b190  08 50 80 e5                                      str r5, [r0, #8]
0065b194  05 10 a0 e1                                      mov r1, r5
0065b198  07 00 a0 e1                                      mov r0, r7
0065b19c  f1 d4 f2 eb                                      bl #0x310568
0065b1a0  07 70 80 e0                                      add r7, r0, r7
0065b1a4  08 70 84 e5                                      str r7, [r4, #8]
0065b1a8  00 00 84 e5                                      str r0, [r4]
0065b1ac  04 00 84 e5                                      str r0, [r4, #4]
0065b1b0  02 01 96 e8                                      ldm r6, {r1, r8}
0065b1b4  00 30 a0 e1                                      mov r3, r0
0065b1b8  08 80 61 e0                                      rsb r8, r1, r8
0065b1bc  c8 81 a0 e1                                      asr r8, r8, #3
0065b1c0  05 00 58 e1                                      cmp r8, r5
0065b1c4  0e 00 00 da                                      ble #0x65b204
0065b1c8  08 20 a0 e1                                      mov r2, r8
0065b1cc  05 30 91 e7                                      ldr r3, [r1, r5]
0065b1d0  05 60 81 e0                                      add r6, r1, r5
0065b1d4  05 c0 80 e0                                      add ip, r0, r5
0065b1d8  05 30 80 e7                                      str r3, [r0, r5]
0065b1dc  00 00 53 e3                                      cmp r3, #0
0065b1e0  00 70 93 15                                      ldrne r7, [r3]
0065b1e4  08 50 85 e2                                      add r5, r5, #8
0065b1e8  01 70 87 12                                      addne r7, r7, #1
0065b1ec  00 70 83 15                                      strne r7, [r3]
0065b1f0  b4 60 d6 e1                                      ldrh r6, [r6, #4]
0065b1f4  01 20 52 e2                                      subs r2, r2, #1
0065b1f8  b4 60 cc e1                                      strh r6, [ip, #4]
0065b1fc  f2 ff ff 1a                                      bne #0x65b1cc
0065b200  88 31 80 e0                                      add r3, r0, r8, lsl #3
0065b204  04 30 84 e5                                      str r3, [r4, #4]
0065b208  04 00 a0 e1                                      mov r0, r4
0065b20c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0065bfcc, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada14CRootSceneNode22CMaterialParameterInfoENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
0065bfcc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065bfd0  04 40 90 e5                                      ldr r4, [r0, #4]
0065bfd4  00 60 90 e5                                      ldr r6, [r0]
0065bfd8  00 70 a0 e1                                      mov r7, r0
0065bfdc  06 00 54 e1                                      cmp r4, r6
0065bfe0  0e 00 00 0a                                      beq #0x65c020
0065bfe4  08 50 14 e5                                      ldr r5, [r4, #-8]
0065bfe8  08 40 44 e2                                      sub r4, r4, #8
0065bfec  00 00 55 e3                                      cmp r5, #0
0065bff0  08 00 00 0a                                      beq #0x65c018
0065bff4  00 30 95 e5                                      ldr r3, [r5]
0065bff8  01 30 43 e2                                      sub r3, r3, #1
0065bffc  00 00 53 e3                                      cmp r3, #0
0065c000  00 30 85 e5                                      str r3, [r5]
0065c004  03 00 00 1a                                      bne #0x65c018
0065c008  05 00 a0 e1                                      mov r0, r5
0065c00c  d9 bf fd eb                                      bl #0x5cbf78
0065c010  05 00 a0 e1                                      mov r0, r5
0065c014  a5 c8 f2 eb                                      bl #0x30e2b0
0065c018  04 00 56 e1                                      cmp r6, r4
0065c01c  f0 ff ff 1a                                      bne #0x65bfe4
0065c020  00 00 97 e5                                      ldr r0, [r7]
0065c024  00 00 50 e3                                      cmp r0, #0
0065c028  00 00 00 0a                                      beq #0x65c030
0065c02c  07 d1 f2 eb                                      bl #0x310450
0065c030  07 00 a0 e1                                      mov r0, r7
0065c034  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0065c54c, declared_size=100, range_size=100, mode=arm
; class-group: std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada14CRootSceneNode22CMaterialParameterInfoENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE19_M_clear_after_moveEv
; demangled: std::vector<glitch::collada::CRootSceneNode::CMaterialParameterInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::CMaterialParameterInfo, (glitch::memory::E_MEMORY_HINT)0> >::_M_clear_after_move()
; decoder-mode: arm
0065c54c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065c550  00 70 a0 e1                                      mov r7, r0
0065c554  00 60 97 e5                                      ldr r6, [r7]
0065c558  04 00 90 e5                                      ldr r0, [r0, #4]
0065c55c  06 00 50 e1                                      cmp r0, r6
0065c560  10 00 00 0a                                      beq #0x65c5a8
0065c564  00 40 a0 e1                                      mov r4, r0
0065c568  08 50 14 e5                                      ldr r5, [r4, #-8]
0065c56c  08 40 44 e2                                      sub r4, r4, #8
0065c570  00 00 55 e3                                      cmp r5, #0
0065c574  08 00 00 0a                                      beq #0x65c59c
0065c578  00 30 95 e5                                      ldr r3, [r5]
0065c57c  01 30 43 e2                                      sub r3, r3, #1
0065c580  00 00 53 e3                                      cmp r3, #0
0065c584  00 30 85 e5                                      str r3, [r5]
0065c588  03 00 00 1a                                      bne #0x65c59c
0065c58c  05 00 a0 e1                                      mov r0, r5
0065c590  78 be fd eb                                      bl #0x5cbf78
0065c594  05 00 a0 e1                                      mov r0, r5
0065c598  44 c7 f2 eb                                      bl #0x30e2b0
0065c59c  04 00 56 e1                                      cmp r6, r4
0065c5a0  f0 ff ff 1a                                      bne #0x65c568
0065c5a4  00 00 97 e5                                      ldr r0, [r7]
0065c5a8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0065c5ac  a7 cf f2 ea                                      b #0x310450
