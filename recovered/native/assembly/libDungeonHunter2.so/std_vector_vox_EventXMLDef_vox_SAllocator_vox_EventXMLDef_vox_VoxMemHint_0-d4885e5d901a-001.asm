; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088a3b0, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11EventXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEED1Ev
; demangled: std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> >::~vector()
; decoder-mode: arm
0088a3b0  70 40 2d e9                                      push {r4, r5, r6, lr}
0088a3b4  04 40 90 e5                                      ldr r4, [r0, #4]
0088a3b8  00 50 90 e5                                      ldr r5, [r0]
0088a3bc  00 60 a0 e1                                      mov r6, r0
0088a3c0  05 00 54 e1                                      cmp r4, r5
0088a3c4  04 00 00 0a                                      beq #0x88a3dc
0088a3c8  2c 40 44 e2                                      sub r4, r4, #0x2c
0088a3cc  04 00 a0 e1                                      mov r0, r4
0088a3d0  2e ff ff eb                                      bl #0x88a090
0088a3d4  04 00 55 e1                                      cmp r5, r4
0088a3d8  fa ff ff 1a                                      bne #0x88a3c8
0088a3dc  00 00 96 e5                                      ldr r0, [r6]
0088a3e0  00 00 50 e3                                      cmp r0, #0
0088a3e4  00 00 00 0a                                      beq #0x88a3ec
0088a3e8  15 18 ea eb                                      bl #0x310444
0088a3ec  06 00 a0 e1                                      mov r0, r6
0088a3f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088b170, declared_size=140, range_size=140, mode=arm
; class-group: std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11EventXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE8_M_eraseEPS1_S6_RKSt12__false_type
; demangled: std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> >::_M_erase(vox::EventXMLDef*, vox::EventXMLDef*, std::__false_type const&)
; decoder-mode: arm
0088b170  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088b174  04 40 90 e5                                      ldr r4, [r0, #4]
0088b178  a3 3b 08 e3                                      movw r3, #0x8ba3
0088b17c  2e 3a 4b e3                                      movt r3, #0xba2e
0088b180  04 a0 62 e0                                      rsb sl, r2, r4
0088b184  4a a1 a0 e1                                      asr sl, sl, #2
0088b188  93 0a 0a e0                                      mul sl, r3, sl
0088b18c  00 50 a0 e1                                      mov r5, r0
0088b190  00 00 5a e3                                      cmp sl, #0
0088b194  02 80 a0 e1                                      mov r8, r2
0088b198  01 70 a0 e1                                      mov r7, r1
0088b19c  01 a0 a0 d1                                      movle sl, r1
0088b1a0  0a 00 00 da                                      ble #0x88b1d0
0088b1a4  0a 60 a0 e1                                      mov r6, sl
0088b1a8  00 40 a0 e3                                      mov r4, #0
0088b1ac  04 00 87 e0                                      add r0, r7, r4
0088b1b0  04 10 88 e0                                      add r1, r8, r4
0088b1b4  d2 ff ff eb                                      bl #0x88b104
0088b1b8  01 60 56 e2                                      subs r6, r6, #1
0088b1bc  2c 40 84 e2                                      add r4, r4, #0x2c
0088b1c0  f9 ff ff 1a                                      bne #0x88b1ac
0088b1c4  2c 30 a0 e3                                      mov r3, #0x2c
0088b1c8  93 7a 2a e0                                      mla sl, r3, sl, r7
0088b1cc  04 40 95 e5                                      ldr r4, [r5, #4]
0088b1d0  0a 00 54 e1                                      cmp r4, sl
0088b1d4  05 00 00 0a                                      beq #0x88b1f0
0088b1d8  0a 60 a0 e1                                      mov r6, sl
0088b1dc  06 00 a0 e1                                      mov r0, r6
0088b1e0  2c 60 86 e2                                      add r6, r6, #0x2c
0088b1e4  a9 fb ff eb                                      bl #0x88a090
0088b1e8  06 00 54 e1                                      cmp r4, r6
0088b1ec  fa ff ff 1a                                      bne #0x88b1dc
0088b1f0  04 a0 85 e5                                      str sl, [r5, #4]
0088b1f4  07 00 a0 e1                                      mov r0, r7
0088b1f8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0088b2ac, declared_size=84, range_size=84, mode=arm
; class-group: std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11EventXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE13_M_initializeEjRKS1_
; demangled: std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> >::_M_initialize(unsigned int, vox::EventXMLDef const&)
; decoder-mode: arm
0088b2ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088b2b0  00 40 90 e5                                      ldr r4, [r0]
0088b2b4  2c 70 a0 e3                                      mov r7, #0x2c
0088b2b8  a3 3b 08 e3                                      movw r3, #0x8ba3
0088b2bc  97 41 27 e0                                      mla r7, r7, r1, r4
0088b2c0  2e 3a 4b e3                                      movt r3, #0xba2e
0088b2c4  07 50 64 e0                                      rsb r5, r4, r7
0088b2c8  45 51 a0 e1                                      asr r5, r5, #2
0088b2cc  93 05 05 e0                                      mul r5, r3, r5
0088b2d0  00 60 a0 e1                                      mov r6, r0
0088b2d4  00 00 55 e3                                      cmp r5, #0
0088b2d8  02 80 a0 e1                                      mov r8, r2
0088b2dc  05 00 00 da                                      ble #0x88b2f8
0088b2e0  04 00 a0 e1                                      mov r0, r4
0088b2e4  08 10 a0 e1                                      mov r1, r8
0088b2e8  c3 ff ff eb                                      bl #0x88b1fc
0088b2ec  01 50 55 e2                                      subs r5, r5, #1
0088b2f0  2c 40 84 e2                                      add r4, r4, #0x2c
0088b2f4  f9 ff ff 1a                                      bne #0x88b2e0
0088b2f8  04 70 86 e5                                      str r7, [r6, #4]
0088b2fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0088b300, declared_size=172, range_size=172, mode=arm
; class-group: std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11EventXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEEC1Ej
; demangled: std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> >::vector(unsigned int)
; decoder-mode: arm
0088b300  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0088b304  2c 60 a0 e3                                      mov r6, #0x2c
0088b308  96 01 06 e0                                      mul r6, r6, r1
0088b30c  00 40 a0 e3                                      mov r4, #0
0088b310  34 d0 4d e2                                      sub sp, sp, #0x34
0088b314  00 50 a0 e1                                      mov r5, r0
0088b318  01 70 a0 e1                                      mov r7, r1
0088b31c  00 40 80 e5                                      str r4, [r0]
0088b320  04 40 80 e5                                      str r4, [r0, #4]
0088b324  08 40 80 e5                                      str r4, [r0, #8]
0088b328  04 10 a0 e1                                      mov r1, r4
0088b32c  06 00 a0 e1                                      mov r0, r6
0088b330  c4 14 ea eb                                      bl #0x310648
0088b334  06 30 80 e0                                      add r3, r0, r6
0088b338  08 30 85 e5                                      str r3, [r5, #8]
0088b33c  04 60 8d e2                                      add r6, sp, #4
0088b340  00 30 e0 e3                                      mvn r3, #0
0088b344  00 00 85 e5                                      str r0, [r5]
0088b348  04 00 85 e5                                      str r0, [r5, #4]
0088b34c  08 c0 86 e2                                      add ip, r6, #8
0088b350  07 10 a0 e1                                      mov r1, r7
0088b354  06 20 a0 e1                                      mov r2, r6
0088b358  05 00 a0 e1                                      mov r0, r5
0088b35c  b6 32 cd e1                                      strh r3, [sp, #0x26]
0088b360  b0 32 cd e1                                      strh r3, [sp, #0x20]
0088b364  64 30 a0 e3                                      mov r3, #0x64
0088b368  10 c0 8d e5                                      str ip, [sp, #0x10]
0088b36c  0c c0 8d e5                                      str ip, [sp, #0xc]
0088b370  b4 32 cd e1                                      strh r3, [sp, #0x24]
0088b374  2c 40 8d e5                                      str r4, [sp, #0x2c]
0088b378  04 40 8d e5                                      str r4, [sp, #4]
0088b37c  08 40 8d e5                                      str r4, [sp, #8]
0088b380  14 40 8d e5                                      str r4, [sp, #0x14]
0088b384  18 40 8d e5                                      str r4, [sp, #0x18]
0088b388  1c 40 8d e5                                      str r4, [sp, #0x1c]
0088b38c  b2 42 cd e1                                      strh r4, [sp, #0x22]
0088b390  28 40 8d e5                                      str r4, [sp, #0x28]
0088b394  c4 ff ff eb                                      bl #0x88b2ac
0088b398  06 00 a0 e1                                      mov r0, r6
0088b39c  3b fb ff eb                                      bl #0x88a090
0088b3a0  05 00 a0 e1                                      mov r0, r5
0088b3a4  34 d0 8d e2                                      add sp, sp, #0x34
0088b3a8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0088b410, declared_size=480, range_size=480, mode=arm
; class-group: std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11EventXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEEaSERKS5_
; demangled: std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> >::operator=(std::vector<vox::EventXMLDef, vox::SAllocator<vox::EventXMLDef, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
0088b410  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088b414  00 00 51 e1                                      cmp r1, r0
0088b418  14 d0 4d e2                                      sub sp, sp, #0x14
0088b41c  01 90 a0 e1                                      mov sb, r1
0088b420  00 40 a0 e1                                      mov r4, r0
0088b424  2f 00 00 0a                                      beq #0x88b4e8
0088b428  04 30 91 e5                                      ldr r3, [r1, #4]
0088b42c  00 80 91 e5                                      ldr r8, [r1]
0088b430  00 60 90 e5                                      ldr r6, [r0]
0088b434  08 10 90 e5                                      ldr r1, [r0, #8]
0088b438  03 50 68 e0                                      rsb r5, r8, r3
0088b43c  a3 2b 08 e3                                      movw r2, #0x8ba3
0088b440  01 10 66 e0                                      rsb r1, r6, r1
0088b444  2e 2a 4b e3                                      movt r2, #0xba2e
0088b448  45 51 a0 e1                                      asr r5, r5, #2
0088b44c  41 11 a0 e1                                      asr r1, r1, #2
0088b450  92 05 05 e0                                      mul r5, r2, r5
0088b454  92 01 01 e0                                      mul r1, r2, r1
0088b458  05 b0 a0 e1                                      mov fp, r5
0088b45c  01 00 55 e1                                      cmp r5, r1
0088b460  4b 00 00 8a                                      bhi #0x88b594
0088b464  04 10 90 e5                                      ldr r1, [r0, #4]
0088b468  01 a0 66 e0                                      rsb sl, r6, r1
0088b46c  4a a1 a0 e1                                      asr sl, sl, #2
0088b470  92 0a 0a e0                                      mul sl, r2, sl
0088b474  04 10 8d e5                                      str r1, [sp, #4]
0088b478  0a 00 55 e1                                      cmp r5, sl
0088b47c  1c 00 00 8a                                      bhi #0x88b4f4
0088b480  00 00 55 e3                                      cmp r5, #0
0088b484  0a 00 00 da                                      ble #0x88b4b4
0088b488  00 70 a0 e3                                      mov r7, #0
0088b48c  07 00 86 e0                                      add r0, r6, r7
0088b490  07 10 88 e0                                      add r1, r8, r7
0088b494  1a ff ff eb                                      bl #0x88b104
0088b498  01 b0 5b e2                                      subs fp, fp, #1
0088b49c  2c 70 87 e2                                      add r7, r7, #0x2c
0088b4a0  f9 ff ff 1a                                      bne #0x88b48c
0088b4a4  2c 30 a0 e3                                      mov r3, #0x2c
0088b4a8  93 65 26 e0                                      mla r6, r3, r5, r6
0088b4ac  04 30 94 e5                                      ldr r3, [r4, #4]
0088b4b0  04 30 8d e5                                      str r3, [sp, #4]
0088b4b4  04 10 9d e5                                      ldr r1, [sp, #4]
0088b4b8  01 00 56 e1                                      cmp r6, r1
0088b4bc  05 00 00 0a                                      beq #0x88b4d8
0088b4c0  06 00 a0 e1                                      mov r0, r6
0088b4c4  f1 fa ff eb                                      bl #0x88a090
0088b4c8  04 30 9d e5                                      ldr r3, [sp, #4]
0088b4cc  2c 60 86 e2                                      add r6, r6, #0x2c
0088b4d0  03 00 56 e1                                      cmp r6, r3
0088b4d4  f9 ff ff 1a                                      bne #0x88b4c0
0088b4d8  00 60 94 e5                                      ldr r6, [r4]
0088b4dc  2c 30 a0 e3                                      mov r3, #0x2c
0088b4e0  93 65 26 e0                                      mla r6, r3, r5, r6
0088b4e4  04 60 84 e5                                      str r6, [r4, #4]
0088b4e8  04 00 a0 e1                                      mov r0, r4
0088b4ec  14 d0 8d e2                                      add sp, sp, #0x14
0088b4f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088b4f4  2c 10 a0 e3                                      mov r1, #0x2c
0088b4f8  91 8a 2a e0                                      mla sl, r1, sl, r8
0088b4fc  0a 70 68 e0                                      rsb r7, r8, sl
0088b500  47 71 a0 e1                                      asr r7, r7, #2
0088b504  92 07 07 e0                                      mul r7, r2, r7
0088b508  00 00 57 e3                                      cmp r7, #0
0088b50c  04 80 9d d5                                      ldrle r8, [sp, #4]
0088b510  10 00 00 da                                      ble #0x88b558
0088b514  00 a0 a0 e3                                      mov sl, #0
0088b518  0a 00 86 e0                                      add r0, r6, sl
0088b51c  0a 10 88 e0                                      add r1, r8, sl
0088b520  f7 fe ff eb                                      bl #0x88b104
0088b524  01 70 57 e2                                      subs r7, r7, #1
0088b528  2c a0 8a e2                                      add sl, sl, #0x2c
0088b52c  f9 ff ff 1a                                      bne #0x88b518
0088b530  40 01 94 e8                                      ldm r4, {r6, r8}
0088b534  a3 3b 08 e3                                      movw r3, #0x8ba3
0088b538  2e 3a 4b e3                                      movt r3, #0xba2e
0088b53c  08 a0 66 e0                                      rsb sl, r6, r8
0088b540  4a a1 a0 e1                                      asr sl, sl, #2
0088b544  93 0a 0a e0                                      mul sl, r3, sl
0088b548  00 20 99 e5                                      ldr r2, [sb]
0088b54c  2c 10 a0 e3                                      mov r1, #0x2c
0088b550  04 30 99 e5                                      ldr r3, [sb, #4]
0088b554  91 2a 2a e0                                      mla sl, r1, sl, r2
0088b558  03 70 6a e0                                      rsb r7, sl, r3
0088b55c  a3 2b 08 e3                                      movw r2, #0x8ba3
0088b560  47 71 a0 e1                                      asr r7, r7, #2
0088b564  2e 2a 4b e3                                      movt r2, #0xba2e
0088b568  92 07 07 e0                                      mul r7, r2, r7
0088b56c  00 00 57 e3                                      cmp r7, #0
0088b570  d9 ff ff da                                      ble #0x88b4dc
0088b574  00 60 a0 e3                                      mov r6, #0
0088b578  06 00 88 e0                                      add r0, r8, r6
0088b57c  06 10 8a e0                                      add r1, sl, r6
0088b580  1d ff ff eb                                      bl #0x88b1fc
0088b584  01 70 57 e2                                      subs r7, r7, #1
0088b588  2c 60 86 e2                                      add r6, r6, #0x2c
0088b58c  f9 ff ff 1a                                      bne #0x88b578
0088b590  d0 ff ff ea                                      b #0x88b4d8
0088b594  10 10 8d e2                                      add r1, sp, #0x10
0088b598  08 20 a0 e1                                      mov r2, r8
0088b59c  04 50 21 e5                                      str r5, [r1, #-4]!
0088b5a0  81 ff ff eb                                      bl #0x88b3ac
0088b5a4  04 70 94 e5                                      ldr r7, [r4, #4]
0088b5a8  00 80 94 e5                                      ldr r8, [r4]
0088b5ac  00 60 a0 e1                                      mov r6, r0
0088b5b0  08 00 57 e1                                      cmp r7, r8
0088b5b4  05 00 00 0a                                      beq #0x88b5d0
0088b5b8  2c 70 47 e2                                      sub r7, r7, #0x2c
0088b5bc  07 00 a0 e1                                      mov r0, r7
0088b5c0  b2 fa ff eb                                      bl #0x88a090
0088b5c4  07 00 58 e1                                      cmp r8, r7
0088b5c8  fa ff ff 1a                                      bne #0x88b5b8
0088b5cc  00 70 94 e5                                      ldr r7, [r4]
0088b5d0  07 00 a0 e1                                      mov r0, r7
0088b5d4  9a 13 ea eb                                      bl #0x310444
0088b5d8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088b5dc  2c 20 a0 e3                                      mov r2, #0x2c
0088b5e0  00 60 84 e5                                      str r6, [r4]
0088b5e4  92 63 23 e0                                      mla r3, r2, r3, r6
0088b5e8  08 30 84 e5                                      str r3, [r4, #8]
0088b5ec  ba ff ff ea                                      b #0x88b4dc
