; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00866960, declared_size=168, range_size=168, mode=arm
; class-group: std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPhN3vox10SAllocatorIS0_LNS1_10VoxMemHintE0EEEE7reserveEj
; demangled: std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >::reserve(unsigned int)
; decoder-mode: arm
00866960  70 40 2d e9                                      push {r4, r5, r6, lr}
00866964  00 40 a0 e1                                      mov r4, r0
00866968  00 20 90 e5                                      ldr r2, [r0]
0086696c  08 00 90 e5                                      ldr r0, [r0, #8]
00866970  08 d0 4d e2                                      sub sp, sp, #8
00866974  04 10 8d e5                                      str r1, [sp, #4]
00866978  00 00 62 e0                                      rsb r0, r2, r0
0086697c  40 01 51 e1                                      cmp r1, r0, asr #2
00866980  12 00 00 9a                                      bls #0x8669d0
00866984  07 01 71 e3                                      cmn r1, #0xc0000001
00866988  12 00 00 8a                                      bhi #0x8669d8
0086698c  04 30 94 e5                                      ldr r3, [r4, #4]
00866990  00 00 52 e3                                      cmp r2, #0
00866994  03 50 62 e0                                      rsb r5, r2, r3
00866998  45 51 a0 e1                                      asr r5, r5, #2
0086699c  12 00 00 0a                                      beq #0x8669ec
008669a0  04 00 a0 e1                                      mov r0, r4
008669a4  04 10 8d e2                                      add r1, sp, #4
008669a8  dd ff ff eb                                      bl #0x866924
008669ac  00 60 a0 e1                                      mov r6, r0
008669b0  00 00 94 e5                                      ldr r0, [r4]
008669b4  a2 a6 ea eb                                      bl #0x310444
008669b8  04 30 9d e5                                      ldr r3, [sp, #4]
008669bc  05 51 86 e0                                      add r5, r6, r5, lsl #2
008669c0  04 50 84 e5                                      str r5, [r4, #4]
008669c4  03 31 86 e0                                      add r3, r6, r3, lsl #2
008669c8  08 30 84 e5                                      str r3, [r4, #8]
008669cc  00 60 84 e5                                      str r6, [r4]
008669d0  08 d0 8d e2                                      add sp, sp, #8
008669d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
008669d8  24 00 9f e5                                      ldr r0, [pc, #0x24]
008669dc  00 00 8f e0                                      add r0, pc, r0
008669e0  48 5e 01 eb                                      bl #0x8be308
008669e4  00 20 94 e5                                      ldr r2, [r4]
008669e8  e7 ff ff ea                                      b #0x86698c
008669ec  04 00 9d e5                                      ldr r0, [sp, #4]
008669f0  02 10 a0 e1                                      mov r1, r2
008669f4  00 01 a0 e1                                      lsl r0, r0, #2
008669f8  12 a7 ea eb                                      bl #0x310648
008669fc  00 60 a0 e1                                      mov r6, r0
00866a00  ec ff ff ea                                      b #0x8669b8
; mapping-symbol data/literal pool
00866a04  8c 7a 05 00                                      .byte 0x8c, 0x7a, 0x05, 0x00

; FUNCTION 0x00866da0, declared_size=76, range_size=76, mode=arm
; class-group: std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPhN3vox10SAllocatorIS0_LNS1_10VoxMemHintE0EEEEC1Ej
; demangled: std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >::vector(unsigned int)
; decoder-mode: arm
00866da0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00866da4  00 60 a0 e3                                      mov r6, #0
00866da8  01 71 a0 e1                                      lsl r7, r1, #2
00866dac  00 40 a0 e1                                      mov r4, r0
00866db0  00 60 80 e5                                      str r6, [r0]
00866db4  04 60 80 e5                                      str r6, [r0, #4]
00866db8  08 60 80 e5                                      str r6, [r0, #8]
00866dbc  06 10 a0 e1                                      mov r1, r6
00866dc0  07 00 a0 e1                                      mov r0, r7
00866dc4  1f a6 ea eb                                      bl #0x310648
00866dc8  07 50 80 e0                                      add r5, r0, r7
00866dcc  00 00 84 e5                                      str r0, [r4]
00866dd0  21 00 84 e9                                      stmib r4, {r0, r5}
00866dd4  06 10 a0 e1                                      mov r1, r6
00866dd8  07 20 a0 e1                                      mov r2, r7
00866ddc  9f 9d ea eb                                      bl #0x30e460
00866de0  04 50 84 e5                                      str r5, [r4, #4]
00866de4  04 00 a0 e1                                      mov r0, r4
00866de8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0086a2b4, declared_size=276, range_size=276, mode=arm
; class-group: std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPhN3vox10SAllocatorIS0_LNS1_10VoxMemHintE0EEEEaSERKS5_
; demangled: std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >::operator=(std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
0086a2b4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0086a2b8  00 00 51 e1                                      cmp r1, r0
0086a2bc  0c d0 4d e2                                      sub sp, sp, #0xc
0086a2c0  01 60 a0 e1                                      mov r6, r1
0086a2c4  00 40 a0 e1                                      mov r4, r0
0086a2c8  10 00 00 0a                                      beq #0x86a310
0086a2cc  0c 00 91 e8                                      ldm r1, {r2, r3}
0086a2d0  00 70 90 e5                                      ldr r7, [r0]
0086a2d4  08 10 90 e5                                      ldr r1, [r0, #8]
0086a2d8  03 c0 62 e0                                      rsb ip, r2, r3
0086a2dc  4c 51 a0 e1                                      asr r5, ip, #2
0086a2e0  01 10 67 e0                                      rsb r1, r7, r1
0086a2e4  41 01 55 e1                                      cmp r5, r1, asr #2
0086a2e8  16 00 00 8a                                      bhi #0x86a348
0086a2ec  04 00 90 e5                                      ldr r0, [r0, #4]
0086a2f0  00 10 67 e0                                      rsb r1, r7, r0
0086a2f4  41 11 a0 e1                                      asr r1, r1, #2
0086a2f8  01 00 55 e1                                      cmp r5, r1
0086a2fc  06 00 00 8a                                      bhi #0x86a31c
0086a300  00 00 5c e3                                      cmp ip, #0
0086a304  1c 00 00 1a                                      bne #0x86a37c
0086a308  05 51 87 e0                                      add r5, r7, r5, lsl #2
0086a30c  04 50 84 e5                                      str r5, [r4, #4]
0086a310  04 00 a0 e1                                      mov r0, r4
0086a314  0c d0 8d e2                                      add sp, sp, #0xc
0086a318  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0086a31c  01 11 82 e0                                      add r1, r2, r1, lsl #2
0086a320  02 c0 51 e0                                      subs ip, r1, r2
0086a324  1c 00 00 1a                                      bne #0x86a39c
0086a328  03 00 51 e1                                      cmp r1, r3
0086a32c  f5 ff ff 0a                                      beq #0x86a308
0086a330  03 20 61 e0                                      rsb r2, r1, r3
0086a334  4b 91 ea eb                                      bl #0x30e868
0086a338  00 70 94 e5                                      ldr r7, [r4]
0086a33c  05 51 87 e0                                      add r5, r7, r5, lsl #2
0086a340  04 50 84 e5                                      str r5, [r4, #4]
0086a344  f1 ff ff ea                                      b #0x86a310
0086a348  08 10 8d e2                                      add r1, sp, #8
0086a34c  04 50 21 e5                                      str r5, [r1, #-4]!
0086a350  ac f1 ff eb                                      bl #0x866a08
0086a354  00 70 a0 e1                                      mov r7, r0
0086a358  00 00 94 e5                                      ldr r0, [r4]
0086a35c  38 98 ea eb                                      bl #0x310444
0086a360  04 30 9d e5                                      ldr r3, [sp, #4]
0086a364  05 51 87 e0                                      add r5, r7, r5, lsl #2
0086a368  00 70 84 e5                                      str r7, [r4]
0086a36c  03 31 87 e0                                      add r3, r7, r3, lsl #2
0086a370  08 30 84 e5                                      str r3, [r4, #8]
0086a374  04 50 84 e5                                      str r5, [r4, #4]
0086a378  e4 ff ff ea                                      b #0x86a310
0086a37c  07 00 a0 e1                                      mov r0, r7
0086a380  02 10 a0 e1                                      mov r1, r2
0086a384  0c 20 a0 e1                                      mov r2, ip
0086a388  ea 8e ea eb                                      bl #0x30df38
0086a38c  00 70 94 e5                                      ldr r7, [r4]
0086a390  05 51 87 e0                                      add r5, r7, r5, lsl #2
0086a394  04 50 84 e5                                      str r5, [r4, #4]
0086a398  dc ff ff ea                                      b #0x86a310
0086a39c  02 10 a0 e1                                      mov r1, r2
0086a3a0  07 00 a0 e1                                      mov r0, r7
0086a3a4  0c 20 a0 e1                                      mov r2, ip
0086a3a8  e2 8e ea eb                                      bl #0x30df38
0086a3ac  04 00 94 e5                                      ldr r0, [r4, #4]
0086a3b0  00 70 94 e5                                      ldr r7, [r4]
0086a3b4  0c 00 96 e8                                      ldm r6, {r2, r3}
0086a3b8  00 10 67 e0                                      rsb r1, r7, r0
0086a3bc  03 10 c1 e3                                      bic r1, r1, #3
0086a3c0  01 10 82 e0                                      add r1, r2, r1
0086a3c4  d7 ff ff ea                                      b #0x86a328

; FUNCTION 0x0086c51c, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPhN3vox10SAllocatorIS0_LNS1_10VoxMemHintE0EEEE18_M_insert_overflowEPS0_RKS0_RKSt11__true_typejb.clone.6
; demangled: std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >::_M_insert_overflow(unsigned char**, unsigned char* const&, std::__true_type const&, unsigned int, bool) [clone .clone.6]
; decoder-mode: arm
0086c51c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086c520  00 40 a0 e1                                      mov r4, r0
0086c524  00 30 94 e5                                      ldr r3, [r4]
0086c528  04 00 90 e5                                      ldr r0, [r0, #4]
0086c52c  01 60 a0 e1                                      mov r6, r1
0086c530  02 80 a0 e1                                      mov r8, r2
0086c534  00 30 63 e0                                      rsb r3, r3, r0
0086c538  43 31 a0 e1                                      asr r3, r3, #2
0086c53c  01 00 53 e3                                      cmp r3, #1
0086c540  03 70 83 20                                      addhs r7, r3, r3
0086c544  01 70 83 32                                      addlo r7, r3, #1
0086c548  07 01 77 e3                                      cmn r7, #0xc0000001
0086c54c  14 00 00 8a                                      bhi #0x86c5a4
0086c550  07 00 53 e1                                      cmp r3, r7
0086c554  07 71 a0 91                                      lslls r7, r7, #2
0086c558  11 00 00 8a                                      bhi #0x86c5a4
0086c55c  00 10 a0 e3                                      mov r1, #0
0086c560  07 00 a0 e1                                      mov r0, r7
0086c564  37 90 ea eb                                      bl #0x310648
0086c568  00 10 94 e5                                      ldr r1, [r4]
0086c56c  00 50 a0 e1                                      mov r5, r0
0086c570  01 60 56 e0                                      subs r6, r6, r1
0086c574  00 60 a0 01                                      moveq r6, r0
0086c578  02 00 00 0a                                      beq #0x86c588
0086c57c  06 20 a0 e1                                      mov r2, r6
0086c580  6c 86 ea eb                                      bl #0x30df38
0086c584  06 60 80 e0                                      add r6, r0, r6
0086c588  00 30 98 e5                                      ldr r3, [r8]
0086c58c  07 70 85 e0                                      add r7, r5, r7
0086c590  04 30 86 e4                                      str r3, [r6], #4
0086c594  00 00 94 e5                                      ldr r0, [r4]
0086c598  a9 8f ea eb                                      bl #0x310444
0086c59c  e0 00 84 e8                                      stm r4, {r5, r6, r7}
0086c5a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0086c5a4  03 70 e0 e3                                      mvn r7, #3
0086c5a8  eb ff ff ea                                      b #0x86c55c

; FUNCTION 0x0086c5ac, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIPhN3vox10SAllocatorIS0_LNS1_10VoxMemHintE0EEEE9push_backERKS0_
; demangled: std::vector<unsigned char*, vox::SAllocator<unsigned char*, (vox::VoxMemHint)0> >::push_back(unsigned char* const&)
; decoder-mode: arm
0086c5ac  04 40 2d e5                                      str r4, [sp, #-4]!
0086c5b0  04 c0 90 e5                                      ldr ip, [r0, #4]
0086c5b4  08 40 90 e5                                      ldr r4, [r0, #8]
0086c5b8  01 20 a0 e1                                      mov r2, r1
0086c5bc  04 00 5c e1                                      cmp ip, r4
0086c5c0  06 00 00 0a                                      beq #0x86c5e0
0086c5c4  00 20 91 e5                                      ldr r2, [r1]
0086c5c8  00 20 8c e5                                      str r2, [ip]
0086c5cc  04 20 90 e5                                      ldr r2, [r0, #4]
0086c5d0  04 20 82 e2                                      add r2, r2, #4
0086c5d4  04 20 80 e5                                      str r2, [r0, #4]
0086c5d8  10 00 bd e8                                      ldm sp!, {r4}
0086c5dc  1e ff 2f e1                                      bx lr
0086c5e0  0c 10 a0 e1                                      mov r1, ip
0086c5e4  10 00 bd e8                                      ldm sp!, {r4}
0086c5e8  cb ff ff ea                                      b #0x86c51c
