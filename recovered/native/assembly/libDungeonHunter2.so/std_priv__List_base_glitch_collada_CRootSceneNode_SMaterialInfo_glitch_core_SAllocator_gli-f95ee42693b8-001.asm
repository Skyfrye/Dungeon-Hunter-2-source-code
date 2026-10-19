; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065bf5c, declared_size=112, range_size=112, mode=arm
; class-group: std::priv::_List_base<glitch::collada::CRootSceneNode::SMaterialInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::SMaterialInfo, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt4priv10_List_baseIN6glitch7collada14CRootSceneNode13SMaterialInfoENS1_4core10SAllocatorIS4_LNS1_6memory13E_MEMORY_HINTE0EEEE5clearEv
; demangled: std::priv::_List_base<glitch::collada::CRootSceneNode::SMaterialInfo, glitch::core::SAllocator<glitch::collada::CRootSceneNode::SMaterialInfo, (glitch::memory::E_MEMORY_HINT)0> >::clear()
; decoder-mode: arm
0065bf5c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0065bf60  00 40 90 e5                                      ldr r4, [r0]
0065bf64  00 70 a0 e1                                      mov r7, r0
0065bf68  00 00 54 e1                                      cmp r4, r0
0065bf6c  01 00 00 1a                                      bne #0x65bf78
0065bf70  12 00 00 ea                                      b #0x65bfc0
0065bf74  06 40 a0 e1                                      mov r4, r6
0065bf78  0c 50 94 e5                                      ldr r5, [r4, #0xc]
0065bf7c  00 60 94 e5                                      ldr r6, [r4]
0065bf80  00 00 55 e3                                      cmp r5, #0
0065bf84  08 00 00 0a                                      beq #0x65bfac
0065bf88  00 30 95 e5                                      ldr r3, [r5]
0065bf8c  01 30 43 e2                                      sub r3, r3, #1
0065bf90  00 00 53 e3                                      cmp r3, #0
0065bf94  00 30 85 e5                                      str r3, [r5]
0065bf98  03 00 00 1a                                      bne #0x65bfac
0065bf9c  05 00 a0 e1                                      mov r0, r5
0065bfa0  f4 bf fd eb                                      bl #0x5cbf78
0065bfa4  05 00 a0 e1                                      mov r0, r5
0065bfa8  c0 c8 f2 eb                                      bl #0x30e2b0
0065bfac  04 00 a0 e1                                      mov r0, r4
0065bfb0  26 d1 f2 eb                                      bl #0x310450
0065bfb4  07 00 56 e1                                      cmp r6, r7
0065bfb8  ed ff ff 1a                                      bne #0x65bf74
0065bfbc  07 40 a0 e1                                      mov r4, r7
0065bfc0  04 40 87 e5                                      str r4, [r7, #4]
0065bfc4  00 40 87 e5                                      str r4, [r7]
0065bfc8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
