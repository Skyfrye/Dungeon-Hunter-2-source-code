; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088b3ac, declared_size=100, range_size=100, mode=arm
; class-group: vox::EventXMLDef* std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11EventXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE20_M_allocate_and_copyIPKS1_EEPS1_RjT_SB_
; demangled: vox::EventXMLDef* std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> >::_M_allocate_and_copy<vox::EventXMLDef const*>(unsigned int&, vox::EventXMLDef const*, vox::EventXMLDef const*)
; decoder-mode: arm
0088b3ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088b3b0  00 10 91 e5                                      ldr r1, [r1]
0088b3b4  2c 00 a0 e3                                      mov r0, #0x2c
0088b3b8  03 60 a0 e1                                      mov r6, r3
0088b3bc  90 01 00 e0                                      mul r0, r0, r1
0088b3c0  00 10 a0 e3                                      mov r1, #0
0088b3c4  02 40 a0 e1                                      mov r4, r2
0088b3c8  9e 14 ea eb                                      bl #0x310648
0088b3cc  06 60 64 e0                                      rsb r6, r4, r6
0088b3d0  a3 3b 08 e3                                      movw r3, #0x8ba3
0088b3d4  46 61 a0 e1                                      asr r6, r6, #2
0088b3d8  2e 3a 4b e3                                      movt r3, #0xba2e
0088b3dc  93 06 06 e0                                      mul r6, r3, r6
0088b3e0  00 70 a0 e1                                      mov r7, r0
0088b3e4  00 00 56 e3                                      cmp r6, #0
0088b3e8  06 00 00 da                                      ble #0x88b408
0088b3ec  00 50 a0 e3                                      mov r5, #0
0088b3f0  05 00 87 e0                                      add r0, r7, r5
0088b3f4  05 10 84 e0                                      add r1, r4, r5
0088b3f8  7f ff ff eb                                      bl #0x88b1fc
0088b3fc  01 60 56 e2                                      subs r6, r6, #1
0088b400  2c 50 85 e2                                      add r5, r5, #0x2c
0088b404  f9 ff ff 1a                                      bne #0x88b3f0
0088b408  07 00 a0 e1                                      mov r0, r7
0088b40c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
