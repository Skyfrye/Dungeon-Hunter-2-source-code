; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008711c0, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IN3vox16TransitionParamsENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEENS2_IS5_LS3_0EEEE13_M_initializeEjRKS5_
; demangled: std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::_M_initialize(unsigned int, std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
008711c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008711c4  00 40 90 e5                                      ldr r4, [r0]
008711c8  0c 80 a0 e3                                      mov r8, #0xc
008711cc  00 50 a0 e1                                      mov r5, r0
008711d0  98 41 28 e0                                      mla r8, r8, r1, r4
008711d4  02 70 a0 e1                                      mov r7, r2
008711d8  08 30 64 e0                                      rsb r3, r4, r8
008711dc  43 31 a0 e1                                      asr r3, r3, #2
008711e0  03 61 83 e0                                      add r6, r3, r3, lsl #2
008711e4  06 62 86 e0                                      add r6, r6, r6, lsl #4
008711e8  06 64 86 e0                                      add r6, r6, r6, lsl #8
008711ec  06 68 86 e0                                      add r6, r6, r6, lsl #16
008711f0  86 60 83 e0                                      add r6, r3, r6, lsl #1
008711f4  00 00 56 e3                                      cmp r6, #0
008711f8  05 00 00 da                                      ble #0x871214
008711fc  04 00 a0 e1                                      mov r0, r4
00871200  07 10 a0 e1                                      mov r1, r7
00871204  c8 ff ff eb                                      bl #0x87112c
00871208  01 60 56 e2                                      subs r6, r6, #1
0087120c  0c 40 84 e2                                      add r4, r4, #0xc
00871210  f9 ff ff 1a                                      bne #0x8711fc
00871214  04 80 85 e5                                      str r8, [r5, #4]
00871218  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008719c0, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IN3vox16TransitionParamsENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEENS2_IS5_LS3_0EEEEC1Ej
; demangled: std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::vector(unsigned int)
; decoder-mode: arm
008719c0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008719c4  0c 70 a0 e3                                      mov r7, #0xc
008719c8  97 01 07 e0                                      mul r7, r7, r1
008719cc  00 50 a0 e3                                      mov r5, #0
008719d0  14 d0 4d e2                                      sub sp, sp, #0x14
008719d4  00 40 a0 e1                                      mov r4, r0
008719d8  01 60 a0 e1                                      mov r6, r1
008719dc  00 50 80 e5                                      str r5, [r0]
008719e0  04 50 80 e5                                      str r5, [r0, #4]
008719e4  08 50 80 e5                                      str r5, [r0, #8]
008719e8  05 10 a0 e1                                      mov r1, r5
008719ec  07 00 a0 e1                                      mov r0, r7
008719f0  14 7b ea eb                                      bl #0x310648
008719f4  07 70 80 e0                                      add r7, r0, r7
008719f8  00 00 84 e5                                      str r0, [r4]
008719fc  04 00 84 e5                                      str r0, [r4, #4]
00871a00  04 20 8d e2                                      add r2, sp, #4
00871a04  08 70 84 e5                                      str r7, [r4, #8]
00871a08  04 00 a0 e1                                      mov r0, r4
00871a0c  06 10 a0 e1                                      mov r1, r6
00871a10  0c 50 8d e5                                      str r5, [sp, #0xc]
00871a14  04 50 8d e5                                      str r5, [sp, #4]
00871a18  08 50 8d e5                                      str r5, [sp, #8]
00871a1c  e7 fd ff eb                                      bl #0x8711c0
00871a20  09 00 9d e9                                      ldmib sp, {r0, r3}
00871a24  00 00 53 e1                                      cmp r3, r0
00871a28  08 20 43 12                                      subne r2, r3, #8
00871a2c  02 20 60 10                                      rsbne r2, r0, r2
00871a30  a2 21 e0 11                                      mvnne r2, r2, lsr #3
00871a34  82 31 83 10                                      addne r3, r3, r2, lsl #3
00871a38  00 00 53 e3                                      cmp r3, #0
00871a3c  00 00 00 0a                                      beq #0x871a44
00871a40  7f 7a ea eb                                      bl #0x310444
00871a44  04 00 a0 e1                                      mov r0, r4
00871a48  14 d0 8d e2                                      add sp, sp, #0x14
00871a4c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00871a7c, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IN3vox16TransitionParamsENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEENS2_IS5_LS3_0EEEE8_M_clearEv
; demangled: std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::_M_clear()
; decoder-mode: arm
00871a7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00871a80  04 40 90 e5                                      ldr r4, [r0, #4]
00871a84  00 50 90 e5                                      ldr r5, [r0]
00871a88  00 60 a0 e1                                      mov r6, r0
00871a8c  05 00 54 e1                                      cmp r4, r5
00871a90  07 00 00 0a                                      beq #0x871ab4
00871a94  0c 00 14 e5                                      ldr r0, [r4, #-0xc]
00871a98  0c 40 44 e2                                      sub r4, r4, #0xc
00871a9c  00 00 50 e3                                      cmp r0, #0
00871aa0  00 00 00 0a                                      beq #0x871aa8
00871aa4  66 7a ea eb                                      bl #0x310444
00871aa8  04 00 55 e1                                      cmp r5, r4
00871aac  f8 ff ff 1a                                      bne #0x871a94
00871ab0  00 50 96 e5                                      ldr r5, [r6]
00871ab4  05 00 a0 e1                                      mov r0, r5
00871ab8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00871abc  60 7a ea ea                                      b #0x310444

; FUNCTION 0x00871ac0, declared_size=232, range_size=232, mode=arm
; class-group: std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IN3vox16TransitionParamsENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEENS2_IS5_LS3_0EEEE7reserveEj
; demangled: std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::reserve(unsigned int)
; decoder-mode: arm
00871ac0  70 40 2d e9                                      push {r4, r5, r6, lr}
00871ac4  00 40 a0 e1                                      mov r4, r0
00871ac8  00 20 90 e5                                      ldr r2, [r0]
00871acc  08 00 90 e5                                      ldr r0, [r0, #8]
00871ad0  08 d0 4d e2                                      sub sp, sp, #8
00871ad4  01 30 a0 e1                                      mov r3, r1
00871ad8  00 00 62 e0                                      rsb r0, r2, r0
00871adc  40 01 a0 e1                                      asr r0, r0, #2
00871ae0  04 10 8d e5                                      str r1, [sp, #4]
00871ae4  00 11 80 e0                                      add r1, r0, r0, lsl #2
00871ae8  01 12 81 e0                                      add r1, r1, r1, lsl #4
00871aec  01 14 81 e0                                      add r1, r1, r1, lsl #8
00871af0  01 18 81 e0                                      add r1, r1, r1, lsl #16
00871af4  81 00 80 e0                                      add r0, r0, r1, lsl #1
00871af8  00 00 53 e1                                      cmp r3, r0
00871afc  1a 00 00 9a                                      bls #0x871b6c
00871b00  55 15 05 e3                                      movw r1, #0x5555
00871b04  01 17 81 e1                                      orr r1, r1, r1, lsl #14
00871b08  01 00 53 e1                                      cmp r3, r1
00871b0c  18 00 00 8a                                      bhi #0x871b74
00871b10  04 30 94 e5                                      ldr r3, [r4, #4]
00871b14  00 00 52 e3                                      cmp r2, #0
00871b18  03 10 62 e0                                      rsb r1, r2, r3
00871b1c  41 11 a0 e1                                      asr r1, r1, #2
00871b20  01 51 81 e0                                      add r5, r1, r1, lsl #2
00871b24  05 52 85 e0                                      add r5, r5, r5, lsl #4
00871b28  05 54 85 e0                                      add r5, r5, r5, lsl #8
00871b2c  05 58 85 e0                                      add r5, r5, r5, lsl #16
00871b30  85 50 81 e0                                      add r5, r1, r5, lsl #1
00871b34  13 00 00 0a                                      beq #0x871b88
00871b38  04 00 a0 e1                                      mov r0, r4
00871b3c  04 10 8d e2                                      add r1, sp, #4
00871b40  cb fd ff eb                                      bl #0x871274
00871b44  00 60 a0 e1                                      mov r6, r0
00871b48  04 00 a0 e1                                      mov r0, r4
00871b4c  ca ff ff eb                                      bl #0x871a7c
00871b50  04 20 9d e5                                      ldr r2, [sp, #4]
00871b54  0c 30 a0 e3                                      mov r3, #0xc
00871b58  93 65 25 e0                                      mla r5, r3, r5, r6
00871b5c  93 62 23 e0                                      mla r3, r3, r2, r6
00871b60  04 50 84 e5                                      str r5, [r4, #4]
00871b64  08 30 84 e5                                      str r3, [r4, #8]
00871b68  00 60 84 e5                                      str r6, [r4]
00871b6c  08 d0 8d e2                                      add sp, sp, #8
00871b70  70 80 bd e8                                      pop {r4, r5, r6, pc}
00871b74  28 00 9f e5                                      ldr r0, [pc, #0x28]
00871b78  00 00 8f e0                                      add r0, pc, r0
00871b7c  e1 31 01 eb                                      bl #0x8be308
00871b80  00 20 94 e5                                      ldr r2, [r4]
00871b84  e1 ff ff ea                                      b #0x871b10
00871b88  04 30 9d e5                                      ldr r3, [sp, #4]
00871b8c  0c 00 a0 e3                                      mov r0, #0xc
00871b90  02 10 a0 e1                                      mov r1, r2
00871b94  90 03 00 e0                                      mul r0, r0, r3
00871b98  aa 7a ea eb                                      bl #0x310648
00871b9c  00 60 a0 e1                                      mov r6, r0
00871ba0  ea ff ff ea                                      b #0x871b50
; mapping-symbol data/literal pool
00871ba4  f0 c8 04 00                                      .byte 0xf0, 0xc8, 0x04, 0x00

; FUNCTION 0x00871ba8, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IN3vox16TransitionParamsENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEENS2_IS5_LS3_0EEEED1Ev
; demangled: std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::~vector()
; decoder-mode: arm
00871ba8  70 40 2d e9                                      push {r4, r5, r6, lr}
00871bac  04 40 90 e5                                      ldr r4, [r0, #4]
00871bb0  00 50 90 e5                                      ldr r5, [r0]
00871bb4  00 60 a0 e1                                      mov r6, r0
00871bb8  05 00 54 e1                                      cmp r4, r5
00871bbc  06 00 00 0a                                      beq #0x871bdc
00871bc0  0c 00 14 e5                                      ldr r0, [r4, #-0xc]
00871bc4  0c 40 44 e2                                      sub r4, r4, #0xc
00871bc8  00 00 50 e3                                      cmp r0, #0
00871bcc  00 00 00 0a                                      beq #0x871bd4
00871bd0  1b 7a ea eb                                      bl #0x310444
00871bd4  04 00 55 e1                                      cmp r5, r4
00871bd8  f8 ff ff 1a                                      bne #0x871bc0
00871bdc  00 00 96 e5                                      ldr r0, [r6]
00871be0  00 00 50 e3                                      cmp r0, #0
00871be4  00 00 00 0a                                      beq #0x871bec
00871be8  15 7a ea eb                                      bl #0x310444
00871bec  06 00 a0 e1                                      mov r0, r6
00871bf0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0087288c, declared_size=504, range_size=504, mode=arm
; class-group: std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIS_IN3vox16TransitionParamsENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEENS2_IS5_LS3_0EEEEaSERKS7_
; demangled: std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> >::operator=(std::vector<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, vox::SAllocator<std::vector<vox::TransitionParams, vox::SAllocator<vox::TransitionParams, (vox::VoxMemHint)0> >, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
0087288c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00872890  00 00 51 e1                                      cmp r1, r0
00872894  0c d0 4d e2                                      sub sp, sp, #0xc
00872898  01 90 a0 e1                                      mov sb, r1
0087289c  00 40 a0 e1                                      mov r4, r0
008728a0  38 00 00 0a                                      beq #0x872988
008728a4  00 60 90 e5                                      ldr r6, [r0]
008728a8  00 80 91 e5                                      ldr r8, [r1]
008728ac  04 30 91 e5                                      ldr r3, [r1, #4]
008728b0  08 20 90 e5                                      ldr r2, [r0, #8]
008728b4  06 b0 a0 e1                                      mov fp, r6
008728b8  03 10 68 e0                                      rsb r1, r8, r3
008728bc  02 20 66 e0                                      rsb r2, r6, r2
008728c0  41 11 a0 e1                                      asr r1, r1, #2
008728c4  42 21 a0 e1                                      asr r2, r2, #2
008728c8  01 51 81 e0                                      add r5, r1, r1, lsl #2
008728cc  02 c1 82 e0                                      add ip, r2, r2, lsl #2
008728d0  05 52 85 e0                                      add r5, r5, r5, lsl #4
008728d4  0c c2 8c e0                                      add ip, ip, ip, lsl #4
008728d8  05 54 85 e0                                      add r5, r5, r5, lsl #8
008728dc  0c c4 8c e0                                      add ip, ip, ip, lsl #8
008728e0  05 58 85 e0                                      add r5, r5, r5, lsl #16
008728e4  0c c8 8c e0                                      add ip, ip, ip, lsl #16
008728e8  85 50 81 e0                                      add r5, r1, r5, lsl #1
008728ec  8c 20 82 e0                                      add r2, r2, ip, lsl #1
008728f0  02 00 55 e1                                      cmp r5, r2
008728f4  05 70 a0 e1                                      mov r7, r5
008728f8  54 00 00 8a                                      bhi #0x872a50
008728fc  04 a0 90 e5                                      ldr sl, [r0, #4]
00872900  0a 20 66 e0                                      rsb r2, r6, sl
00872904  42 21 a0 e1                                      asr r2, r2, #2
00872908  02 11 82 e0                                      add r1, r2, r2, lsl #2
0087290c  01 12 81 e0                                      add r1, r1, r1, lsl #4
00872910  01 14 81 e0                                      add r1, r1, r1, lsl #8
00872914  01 18 81 e0                                      add r1, r1, r1, lsl #16
00872918  81 20 82 e0                                      add r2, r2, r1, lsl #1
0087291c  02 00 55 e1                                      cmp r5, r2
00872920  1b 00 00 8a                                      bhi #0x872994
00872924  00 00 55 e3                                      cmp r5, #0
00872928  09 00 00 da                                      ble #0x872954
0087292c  00 a0 a0 e3                                      mov sl, #0
00872930  0a 00 86 e0                                      add r0, r6, sl
00872934  0a 10 88 e0                                      add r1, r8, sl
00872938  86 ff ff eb                                      bl #0x872758
0087293c  01 70 57 e2                                      subs r7, r7, #1
00872940  0c a0 8a e2                                      add sl, sl, #0xc
00872944  f9 ff ff 1a                                      bne #0x872930
00872948  0c b0 a0 e3                                      mov fp, #0xc
0087294c  9b 65 2b e0                                      mla fp, fp, r5, r6
00872950  04 a0 94 e5                                      ldr sl, [r4, #4]
00872954  0b 00 5a e1                                      cmp sl, fp
00872958  06 00 00 0a                                      beq #0x872978
0087295c  00 00 9b e5                                      ldr r0, [fp]
00872960  0c b0 8b e2                                      add fp, fp, #0xc
00872964  00 00 50 e3                                      cmp r0, #0
00872968  f9 ff ff 0a                                      beq #0x872954
0087296c  b4 76 ea eb                                      bl #0x310444
00872970  0b 00 5a e1                                      cmp sl, fp
00872974  f8 ff ff 1a                                      bne #0x87295c
00872978  00 60 94 e5                                      ldr r6, [r4]
0087297c  0c 30 a0 e3                                      mov r3, #0xc
00872980  93 65 26 e0                                      mla r6, r3, r5, r6
00872984  04 60 84 e5                                      str r6, [r4, #4]
00872988  04 00 a0 e1                                      mov r0, r4
0087298c  0c d0 8d e2                                      add sp, sp, #0xc
00872990  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00872994  0c 10 a0 e3                                      mov r1, #0xc
00872998  91 82 22 e0                                      mla r2, r1, r2, r8
0087299c  02 20 68 e0                                      rsb r2, r8, r2
008729a0  42 21 a0 e1                                      asr r2, r2, #2
008729a4  02 71 82 e0                                      add r7, r2, r2, lsl #2
008729a8  07 72 87 e0                                      add r7, r7, r7, lsl #4
008729ac  07 74 87 e0                                      add r7, r7, r7, lsl #8
008729b0  07 78 87 e0                                      add r7, r7, r7, lsl #16
008729b4  87 70 82 e0                                      add r7, r2, r7, lsl #1
008729b8  00 00 57 e3                                      cmp r7, #0
008729bc  09 00 00 da                                      ble #0x8729e8
008729c0  00 a0 a0 e3                                      mov sl, #0
008729c4  0a 00 86 e0                                      add r0, r6, sl
008729c8  0a 10 88 e0                                      add r1, r8, sl
008729cc  61 ff ff eb                                      bl #0x872758
008729d0  01 70 57 e2                                      subs r7, r7, #1
008729d4  0c a0 8a e2                                      add sl, sl, #0xc
008729d8  f9 ff ff 1a                                      bne #0x8729c4
008729dc  04 30 99 e5                                      ldr r3, [sb, #4]
008729e0  00 80 99 e5                                      ldr r8, [sb]
008729e4  40 04 94 e8                                      ldm r4, {r6, sl}
008729e8  0a 20 66 e0                                      rsb r2, r6, sl
008729ec  42 21 a0 e1                                      asr r2, r2, #2
008729f0  02 11 82 e0                                      add r1, r2, r2, lsl #2
008729f4  01 12 81 e0                                      add r1, r1, r1, lsl #4
008729f8  01 14 81 e0                                      add r1, r1, r1, lsl #8
008729fc  01 18 81 e0                                      add r1, r1, r1, lsl #16
00872a00  81 20 82 e0                                      add r2, r2, r1, lsl #1
00872a04  0c 10 a0 e3                                      mov r1, #0xc
00872a08  91 82 28 e0                                      mla r8, r1, r2, r8
00872a0c  03 30 68 e0                                      rsb r3, r8, r3
00872a10  43 31 a0 e1                                      asr r3, r3, #2
00872a14  03 71 83 e0                                      add r7, r3, r3, lsl #2
00872a18  07 72 87 e0                                      add r7, r7, r7, lsl #4
00872a1c  07 74 87 e0                                      add r7, r7, r7, lsl #8
00872a20  07 78 87 e0                                      add r7, r7, r7, lsl #16
00872a24  87 70 83 e0                                      add r7, r3, r7, lsl #1
00872a28  00 00 57 e3                                      cmp r7, #0
00872a2c  d2 ff ff da                                      ble #0x87297c
00872a30  00 60 a0 e3                                      mov r6, #0
00872a34  06 00 8a e0                                      add r0, sl, r6
00872a38  06 10 88 e0                                      add r1, r8, r6
00872a3c  ba f9 ff eb                                      bl #0x87112c
00872a40  01 70 57 e2                                      subs r7, r7, #1
00872a44  0c 60 86 e2                                      add r6, r6, #0xc
00872a48  f9 ff ff 1a                                      bne #0x872a34
00872a4c  c9 ff ff ea                                      b #0x872978
00872a50  08 10 8d e2                                      add r1, sp, #8
00872a54  08 20 a0 e1                                      mov r2, r8
00872a58  04 50 21 e5                                      str r5, [r1, #-4]!
00872a5c  1f fa ff eb                                      bl #0x8712e0
00872a60  00 60 a0 e1                                      mov r6, r0
00872a64  04 00 a0 e1                                      mov r0, r4
00872a68  03 fc ff eb                                      bl #0x871a7c
00872a6c  04 30 9d e5                                      ldr r3, [sp, #4]
00872a70  0c 20 a0 e3                                      mov r2, #0xc
00872a74  00 60 84 e5                                      str r6, [r4]
00872a78  92 63 23 e0                                      mla r3, r2, r3, r6
00872a7c  08 30 84 e5                                      str r3, [r4, #8]
00872a80  bd ff ff ea                                      b #0x87297c
