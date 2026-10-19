; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00871274, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >* std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IN3vox16TransitionParamsENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEENS2_IS5_LS3_0EEEE20_M_allocate_and_copyIPS5_EES9_RjT_SB_
; demangled: std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >* std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::_M_allocate_and_copy<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >*>(unsigned int&, std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >*, std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >*)
; decoder-mode: arm
00871274  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00871278  00 10 91 e5                                      ldr r1, [r1]
0087127c  0c 00 a0 e3                                      mov r0, #0xc
00871280  03 60 a0 e1                                      mov r6, r3
00871284  90 01 00 e0                                      mul r0, r0, r1
00871288  00 10 a0 e3                                      mov r1, #0
0087128c  02 40 a0 e1                                      mov r4, r2
00871290  ec 7c ea eb                                      bl #0x310648
00871294  06 60 64 e0                                      rsb r6, r4, r6
00871298  46 31 a0 e1                                      asr r3, r6, #2
0087129c  00 70 a0 e1                                      mov r7, r0
008712a0  03 61 83 e0                                      add r6, r3, r3, lsl #2
008712a4  06 62 86 e0                                      add r6, r6, r6, lsl #4
008712a8  06 64 86 e0                                      add r6, r6, r6, lsl #8
008712ac  06 68 86 e0                                      add r6, r6, r6, lsl #16
008712b0  86 60 83 e0                                      add r6, r3, r6, lsl #1
008712b4  00 00 56 e3                                      cmp r6, #0
008712b8  06 00 00 da                                      ble #0x8712d8
008712bc  00 50 a0 e3                                      mov r5, #0
008712c0  05 00 87 e0                                      add r0, r7, r5
008712c4  05 10 84 e0                                      add r1, r4, r5
008712c8  97 ff ff eb                                      bl #0x87112c
008712cc  01 60 56 e2                                      subs r6, r6, #1
008712d0  0c 50 85 e2                                      add r5, r5, #0xc
008712d4  f9 ff ff 1a                                      bne #0x8712c0
008712d8  07 00 a0 e1                                      mov r0, r7
008712dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008712e0, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >* std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IN3vox16TransitionParamsENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEENS2_IS5_LS3_0EEEE20_M_allocate_and_copyIPKS5_EEPS5_RjT_SD_
; demangled: std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >* std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::_M_allocate_and_copy<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> > const*>(unsigned int&, std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> > const*, std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> > const*)
; decoder-mode: arm
008712e0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008712e4  00 10 91 e5                                      ldr r1, [r1]
008712e8  0c 00 a0 e3                                      mov r0, #0xc
008712ec  03 60 a0 e1                                      mov r6, r3
008712f0  90 01 00 e0                                      mul r0, r0, r1
008712f4  00 10 a0 e3                                      mov r1, #0
008712f8  02 40 a0 e1                                      mov r4, r2
008712fc  d1 7c ea eb                                      bl #0x310648
00871300  06 60 64 e0                                      rsb r6, r4, r6
00871304  46 31 a0 e1                                      asr r3, r6, #2
00871308  00 70 a0 e1                                      mov r7, r0
0087130c  03 61 83 e0                                      add r6, r3, r3, lsl #2
00871310  06 62 86 e0                                      add r6, r6, r6, lsl #4
00871314  06 64 86 e0                                      add r6, r6, r6, lsl #8
00871318  06 68 86 e0                                      add r6, r6, r6, lsl #16
0087131c  86 60 83 e0                                      add r6, r3, r6, lsl #1
00871320  00 00 56 e3                                      cmp r6, #0
00871324  06 00 00 da                                      ble #0x871344
00871328  00 50 a0 e3                                      mov r5, #0
0087132c  05 00 87 e0                                      add r0, r7, r5
00871330  05 10 84 e0                                      add r1, r4, r5
00871334  7c ff ff eb                                      bl #0x87112c
00871338  01 60 56 e2                                      subs r6, r6, #1
0087133c  0c 50 85 e2                                      add r5, r5, #0xc
00871340  f9 ff ff 1a                                      bne #0x87132c
00871344  07 00 a0 e1                                      mov r0, r7
00871348  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
