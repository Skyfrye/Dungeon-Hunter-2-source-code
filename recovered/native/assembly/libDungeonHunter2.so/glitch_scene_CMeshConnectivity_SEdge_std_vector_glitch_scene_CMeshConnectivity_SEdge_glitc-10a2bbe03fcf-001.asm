; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007035dc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::scene::CMeshConnectivity::SEdge* std::vector<glitch::scene::CMeshConnectivity::SEdge, glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene17CMeshConnectivity5SEdgeENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS3_EESB_RjT_SD_
; demangled: glitch::scene::CMeshConnectivity::SEdge* std::vector<glitch::scene::CMeshConnectivity::SEdge, glitch::core::SAllocator<glitch::scene::CMeshConnectivity::SEdge, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::scene::CMeshConnectivity::SEdge*>(unsigned int&, glitch::scene::CMeshConnectivity::SEdge*, glitch::scene::CMeshConnectivity::SEdge*)
; decoder-mode: arm
007035dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007035e0  00 00 91 e5                                      ldr r0, [r1]
007035e4  00 10 a0 e3                                      mov r1, #0
007035e8  02 70 a0 e1                                      mov r7, r2
007035ec  00 02 a0 e1                                      lsl r0, r0, #4
007035f0  03 50 a0 e1                                      mov r5, r3
007035f4  db 33 f0 eb                                      bl #0x310568
007035f8  05 50 67 e0                                      rsb r5, r7, r5
007035fc  45 52 a0 e1                                      asr r5, r5, #4
00703600  00 00 55 e3                                      cmp r5, #0
00703604  00 60 a0 e1                                      mov r6, r0
00703608  08 00 00 da                                      ble #0x703630
0070360c  00 40 a0 e3                                      mov r4, #0
00703610  04 c0 86 e0                                      add ip, r6, r4
00703614  04 30 87 e0                                      add r3, r7, r4
00703618  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
0070361c  07 00 ac e8                                      stm ip!, {r0, r1, r2}
00703620  01 50 55 e2                                      subs r5, r5, #1
00703624  b0 30 cc e1                                      strh r3, [ip]
00703628  10 40 84 e2                                      add r4, r4, #0x10
0070362c  f7 ff ff 1a                                      bne #0x703610
00703630  06 00 a0 e1                                      mov r0, r6
00703634  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
