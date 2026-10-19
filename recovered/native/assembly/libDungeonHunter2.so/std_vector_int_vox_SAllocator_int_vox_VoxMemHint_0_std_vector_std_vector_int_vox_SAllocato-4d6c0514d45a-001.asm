; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00871468, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >* std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEENS1_IS4_LS2_0EEEE20_M_allocate_and_copyIPS4_EES8_RjT_SA_
; demangled: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >* std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::_M_allocate_and_copy<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >*>(unsigned int&, std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >*, std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >*)
; decoder-mode: arm
00871468  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0087146c  00 10 91 e5                                      ldr r1, [r1]
00871470  0c 00 a0 e3                                      mov r0, #0xc
00871474  03 60 a0 e1                                      mov r6, r3
00871478  90 01 00 e0                                      mul r0, r0, r1
0087147c  00 10 a0 e3                                      mov r1, #0
00871480  02 40 a0 e1                                      mov r4, r2
00871484  6f 7c ea eb                                      bl #0x310648
00871488  06 60 64 e0                                      rsb r6, r4, r6
0087148c  46 31 a0 e1                                      asr r3, r6, #2
00871490  00 70 a0 e1                                      mov r7, r0
00871494  03 61 83 e0                                      add r6, r3, r3, lsl #2
00871498  06 62 86 e0                                      add r6, r6, r6, lsl #4
0087149c  06 64 86 e0                                      add r6, r6, r6, lsl #8
008714a0  06 68 86 e0                                      add r6, r6, r6, lsl #16
008714a4  86 60 83 e0                                      add r6, r3, r6, lsl #1
008714a8  00 00 56 e3                                      cmp r6, #0
008714ac  06 00 00 da                                      ble #0x8714cc
008714b0  00 50 a0 e3                                      mov r5, #0
008714b4  05 00 87 e0                                      add r0, r7, r5
008714b8  05 10 84 e0                                      add r1, r4, r5
008714bc  ce ff ff eb                                      bl #0x8713fc
008714c0  01 60 56 e2                                      subs r6, r6, #1
008714c4  0c 50 85 e2                                      add r5, r5, #0xc
008714c8  f9 ff ff 1a                                      bne #0x8714b4
008714cc  07 00 a0 e1                                      mov r0, r7
008714d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00871530, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >* std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEENS1_IS4_LS2_0EEEE20_M_allocate_and_copyIPKS4_EEPS4_RjT_SC_
; demangled: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >* std::vector<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::_M_allocate_and_copy<std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> > const*>(unsigned int&, std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> > const*, std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> > const*)
; decoder-mode: arm
00871530  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00871534  00 10 91 e5                                      ldr r1, [r1]
00871538  0c 00 a0 e3                                      mov r0, #0xc
0087153c  03 60 a0 e1                                      mov r6, r3
00871540  90 01 00 e0                                      mul r0, r0, r1
00871544  00 10 a0 e3                                      mov r1, #0
00871548  02 40 a0 e1                                      mov r4, r2
0087154c  3d 7c ea eb                                      bl #0x310648
00871550  06 60 64 e0                                      rsb r6, r4, r6
00871554  46 31 a0 e1                                      asr r3, r6, #2
00871558  00 70 a0 e1                                      mov r7, r0
0087155c  03 61 83 e0                                      add r6, r3, r3, lsl #2
00871560  06 62 86 e0                                      add r6, r6, r6, lsl #4
00871564  06 64 86 e0                                      add r6, r6, r6, lsl #8
00871568  06 68 86 e0                                      add r6, r6, r6, lsl #16
0087156c  86 60 83 e0                                      add r6, r3, r6, lsl #1
00871570  00 00 56 e3                                      cmp r6, #0
00871574  06 00 00 da                                      ble #0x871594
00871578  00 50 a0 e3                                      mov r5, #0
0087157c  05 00 87 e0                                      add r0, r7, r5
00871580  05 10 84 e0                                      add r1, r4, r5
00871584  9c ff ff eb                                      bl #0x8713fc
00871588  01 60 56 e2                                      subs r6, r6, #1
0087158c  0c 50 85 e2                                      add r5, r5, #0xc
00871590  f9 ff ff 1a                                      bne #0x87157c
00871594  07 00 a0 e1                                      mov r0, r7
00871598  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
