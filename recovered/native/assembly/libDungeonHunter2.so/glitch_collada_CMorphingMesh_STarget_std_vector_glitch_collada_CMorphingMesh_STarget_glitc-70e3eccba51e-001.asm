; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00649da4, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CMorphingMesh::STarget* std::vector<glitch::collada::CMorphingMesh::STarget, glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch7collada13CMorphingMesh7STargetENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS3_EESB_RjT_SD_
; demangled: glitch::collada::CMorphingMesh::STarget* std::vector<glitch::collada::CMorphingMesh::STarget, glitch::core::SAllocator<glitch::collada::CMorphingMesh::STarget, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::collada::CMorphingMesh::STarget*>(unsigned int&, glitch::collada::CMorphingMesh::STarget*, glitch::collada::CMorphingMesh::STarget*)
; decoder-mode: arm
00649da4  70 40 2d e9                                      push {r4, r5, r6, lr}
00649da8  00 00 91 e5                                      ldr r0, [r1]
00649dac  02 40 a0 e1                                      mov r4, r2
00649db0  03 50 a0 e1                                      mov r5, r3
00649db4  05 50 64 e0                                      rsb r5, r4, r5
00649db8  80 01 a0 e1                                      lsl r0, r0, #3
00649dbc  00 10 a0 e3                                      mov r1, #0
00649dc0  c5 51 a0 e1                                      asr r5, r5, #3
00649dc4  e7 19 f3 eb                                      bl #0x310568
00649dc8  00 00 55 e3                                      cmp r5, #0
00649dcc  0d 00 00 da                                      ble #0x649e08
00649dd0  00 30 a0 e3                                      mov r3, #0
00649dd4  03 20 94 e7                                      ldr r2, [r4, r3]
00649dd8  03 c0 84 e0                                      add ip, r4, r3
00649ddc  03 10 80 e0                                      add r1, r0, r3
00649de0  00 00 52 e3                                      cmp r2, #0
00649de4  03 20 80 e7                                      str r2, [r0, r3]
00649de8  04 60 92 15                                      ldrne r6, [r2, #4]
00649dec  08 30 83 e2                                      add r3, r3, #8
00649df0  01 60 86 12                                      addne r6, r6, #1
00649df4  04 60 82 15                                      strne r6, [r2, #4]
00649df8  04 20 9c e5                                      ldr r2, [ip, #4]
00649dfc  01 50 55 e2                                      subs r5, r5, #1
00649e00  04 20 81 e5                                      str r2, [r1, #4]
00649e04  f2 ff ff 1a                                      bne #0x649dd4
00649e08  70 80 bd e8                                      pop {r4, r5, r6, pc}
