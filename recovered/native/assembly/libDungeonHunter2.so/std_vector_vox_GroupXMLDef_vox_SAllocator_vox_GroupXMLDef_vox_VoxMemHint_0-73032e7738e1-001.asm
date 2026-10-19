; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088ae7c, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11GroupXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE13_M_initializeEjRKS1_
; demangled: std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> >::_M_initialize(unsigned int, vox::GroupXMLDef const&)
; decoder-mode: arm
0088ae7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088ae80  00 40 90 e5                                      ldr r4, [r0]
0088ae84  38 80 a0 e3                                      mov r8, #0x38
0088ae88  00 50 a0 e1                                      mov r5, r0
0088ae8c  98 41 28 e0                                      mla r8, r8, r1, r4
0088ae90  02 70 a0 e1                                      mov r7, r2
0088ae94  08 30 64 e0                                      rsb r3, r4, r8
0088ae98  c3 31 a0 e1                                      asr r3, r3, #3
0088ae9c  83 61 83 e0                                      add r6, r3, r3, lsl #3
0088aea0  06 63 86 e0                                      add r6, r6, r6, lsl #6
0088aea4  86 61 83 e0                                      add r6, r3, r6, lsl #3
0088aea8  86 67 86 e0                                      add r6, r6, r6, lsl #15
0088aeac  86 61 83 e0                                      add r6, r3, r6, lsl #3
0088aeb0  00 60 66 e2                                      rsb r6, r6, #0
0088aeb4  00 00 56 e3                                      cmp r6, #0
0088aeb8  05 00 00 da                                      ble #0x88aed4
0088aebc  04 00 a0 e1                                      mov r0, r4
0088aec0  07 10 a0 e1                                      mov r1, r7
0088aec4  d8 ff ff eb                                      bl #0x88ae2c
0088aec8  01 60 56 e2                                      subs r6, r6, #1
0088aecc  38 40 84 e2                                      add r4, r4, #0x38
0088aed0  f9 ff ff 1a                                      bne #0x88aebc
0088aed4  04 80 85 e5                                      str r8, [r5, #4]
0088aed8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0088c28c, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11GroupXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEED1Ev
; demangled: std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> >::~vector()
; decoder-mode: arm
0088c28c  10 40 2d e9                                      push {r4, lr}
0088c290  04 20 90 e5                                      ldr r2, [r0, #4]
0088c294  00 30 90 e5                                      ldr r3, [r0]
0088c298  08 d0 4d e2                                      sub sp, sp, #8
0088c29c  00 40 a0 e1                                      mov r4, r0
0088c2a0  04 10 8d e2                                      add r1, sp, #4
0088c2a4  0d 00 a0 e1                                      mov r0, sp
0088c2a8  0c 00 8d e8                                      stm sp, {r2, r3}
0088c2ac  dd ff ff eb                                      bl #0x88c228
0088c2b0  00 00 94 e5                                      ldr r0, [r4]
0088c2b4  00 00 50 e3                                      cmp r0, #0
0088c2b8  00 00 00 0a                                      beq #0x88c2c0
0088c2bc  60 10 ea eb                                      bl #0x310444
0088c2c0  04 00 a0 e1                                      mov r0, r4
0088c2c4  08 d0 8d e2                                      add sp, sp, #8
0088c2c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0088c470, declared_size=532, range_size=532, mode=arm
; class-group: std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11GroupXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEEaSERKS5_
; demangled: std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> >::operator=(std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
0088c470  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088c474  00 00 51 e1                                      cmp r1, r0
0088c478  14 d0 4d e2                                      sub sp, sp, #0x14
0088c47c  01 b0 a0 e1                                      mov fp, r1
0088c480  00 40 a0 e1                                      mov r4, r0
0088c484  33 00 00 0a                                      beq #0x88c558
0088c488  04 30 91 e5                                      ldr r3, [r1, #4]
0088c48c  00 a0 91 e5                                      ldr sl, [r1]
0088c490  00 70 90 e5                                      ldr r7, [r0]
0088c494  08 20 90 e5                                      ldr r2, [r0, #8]
0088c498  03 10 6a e0                                      rsb r1, sl, r3
0088c49c  c1 11 a0 e1                                      asr r1, r1, #3
0088c4a0  02 20 67 e0                                      rsb r2, r7, r2
0088c4a4  c2 21 a0 e1                                      asr r2, r2, #3
0088c4a8  81 51 81 e0                                      add r5, r1, r1, lsl #3
0088c4ac  82 c1 82 e0                                      add ip, r2, r2, lsl #3
0088c4b0  05 53 85 e0                                      add r5, r5, r5, lsl #6
0088c4b4  0c c3 8c e0                                      add ip, ip, ip, lsl #6
0088c4b8  85 51 81 e0                                      add r5, r1, r5, lsl #3
0088c4bc  8c c1 82 e0                                      add ip, r2, ip, lsl #3
0088c4c0  85 57 85 e0                                      add r5, r5, r5, lsl #15
0088c4c4  8c c7 8c e0                                      add ip, ip, ip, lsl #15
0088c4c8  85 51 81 e0                                      add r5, r1, r5, lsl #3
0088c4cc  8c 21 82 e0                                      add r2, r2, ip, lsl #3
0088c4d0  00 50 65 e2                                      rsb r5, r5, #0
0088c4d4  00 20 62 e2                                      rsb r2, r2, #0
0088c4d8  02 00 55 e1                                      cmp r5, r2
0088c4dc  05 80 a0 e1                                      mov r8, r5
0088c4e0  53 00 00 8a                                      bhi #0x88c634
0088c4e4  04 10 90 e5                                      ldr r1, [r0, #4]
0088c4e8  01 20 67 e0                                      rsb r2, r7, r1
0088c4ec  c2 21 a0 e1                                      asr r2, r2, #3
0088c4f0  82 91 82 e0                                      add sb, r2, r2, lsl #3
0088c4f4  09 93 89 e0                                      add sb, sb, sb, lsl #6
0088c4f8  89 91 82 e0                                      add sb, r2, sb, lsl #3
0088c4fc  89 97 89 e0                                      add sb, sb, sb, lsl #15
0088c500  89 21 82 e0                                      add r2, r2, sb, lsl #3
0088c504  00 20 62 e2                                      rsb r2, r2, #0
0088c508  02 00 55 e1                                      cmp r5, r2
0088c50c  14 00 00 8a                                      bhi #0x88c564
0088c510  00 00 55 e3                                      cmp r5, #0
0088c514  09 00 00 da                                      ble #0x88c540
0088c518  00 60 a0 e3                                      mov r6, #0
0088c51c  06 00 87 e0                                      add r0, r7, r6
0088c520  06 10 8a e0                                      add r1, sl, r6
0088c524  31 fc ff eb                                      bl #0x88b5f0
0088c528  01 80 58 e2                                      subs r8, r8, #1
0088c52c  38 60 86 e2                                      add r6, r6, #0x38
0088c530  f9 ff ff 1a                                      bne #0x88c51c
0088c534  38 30 a0 e3                                      mov r3, #0x38
0088c538  93 75 27 e0                                      mla r7, r3, r5, r7
0088c53c  04 10 94 e5                                      ldr r1, [r4, #4]
0088c540  07 00 a0 e1                                      mov r0, r7
0088c544  b0 ff ff eb                                      bl #0x88c40c
0088c548  00 70 94 e5                                      ldr r7, [r4]
0088c54c  38 30 a0 e3                                      mov r3, #0x38
0088c550  93 75 27 e0                                      mla r7, r3, r5, r7
0088c554  04 70 84 e5                                      str r7, [r4, #4]
0088c558  04 00 a0 e1                                      mov r0, r4
0088c55c  14 d0 8d e2                                      add sp, sp, #0x14
0088c560  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088c564  38 90 a0 e3                                      mov sb, #0x38
0088c568  99 a2 29 e0                                      mla sb, sb, r2, sl
0088c56c  09 20 6a e0                                      rsb r2, sl, sb
0088c570  c2 21 a0 e1                                      asr r2, r2, #3
0088c574  82 81 82 e0                                      add r8, r2, r2, lsl #3
0088c578  08 83 88 e0                                      add r8, r8, r8, lsl #6
0088c57c  88 81 82 e0                                      add r8, r2, r8, lsl #3
0088c580  88 87 88 e0                                      add r8, r8, r8, lsl #15
0088c584  88 81 82 e0                                      add r8, r2, r8, lsl #3
0088c588  00 80 68 e2                                      rsb r8, r8, #0
0088c58c  00 00 58 e3                                      cmp r8, #0
0088c590  01 a0 a0 d1                                      movle sl, r1
0088c594  13 00 00 da                                      ble #0x88c5e8
0088c598  00 60 a0 e3                                      mov r6, #0
0088c59c  06 00 87 e0                                      add r0, r7, r6
0088c5a0  06 10 8a e0                                      add r1, sl, r6
0088c5a4  11 fc ff eb                                      bl #0x88b5f0
0088c5a8  01 80 58 e2                                      subs r8, r8, #1
0088c5ac  38 60 86 e2                                      add r6, r6, #0x38
0088c5b0  f9 ff ff 1a                                      bne #0x88c59c
0088c5b4  80 04 94 e8                                      ldm r4, {r7, sl}
0088c5b8  00 00 9b e5                                      ldr r0, [fp]
0088c5bc  38 90 a0 e3                                      mov sb, #0x38
0088c5c0  0a 20 67 e0                                      rsb r2, r7, sl
0088c5c4  c2 21 a0 e1                                      asr r2, r2, #3
0088c5c8  04 30 9b e5                                      ldr r3, [fp, #4]
0088c5cc  82 11 82 e0                                      add r1, r2, r2, lsl #3
0088c5d0  01 13 81 e0                                      add r1, r1, r1, lsl #6
0088c5d4  81 11 82 e0                                      add r1, r2, r1, lsl #3
0088c5d8  81 17 81 e0                                      add r1, r1, r1, lsl #15
0088c5dc  81 21 82 e0                                      add r2, r2, r1, lsl #3
0088c5e0  00 20 62 e2                                      rsb r2, r2, #0
0088c5e4  99 02 29 e0                                      mla sb, sb, r2, r0
0088c5e8  03 30 69 e0                                      rsb r3, sb, r3
0088c5ec  c3 31 a0 e1                                      asr r3, r3, #3
0088c5f0  83 81 83 e0                                      add r8, r3, r3, lsl #3
0088c5f4  08 83 88 e0                                      add r8, r8, r8, lsl #6
0088c5f8  88 81 83 e0                                      add r8, r3, r8, lsl #3
0088c5fc  88 87 88 e0                                      add r8, r8, r8, lsl #15
0088c600  88 81 83 e0                                      add r8, r3, r8, lsl #3
0088c604  00 80 68 e2                                      rsb r8, r8, #0
0088c608  00 00 58 e3                                      cmp r8, #0
0088c60c  ce ff ff da                                      ble #0x88c54c
0088c610  00 60 a0 e3                                      mov r6, #0
0088c614  06 00 8a e0                                      add r0, sl, r6
0088c618  06 10 89 e0                                      add r1, sb, r6
0088c61c  02 fa ff eb                                      bl #0x88ae2c
0088c620  01 80 58 e2                                      subs r8, r8, #1
0088c624  38 60 86 e2                                      add r6, r6, #0x38
0088c628  f9 ff ff 1a                                      bne #0x88c614
0088c62c  00 70 94 e5                                      ldr r7, [r4]
0088c630  c5 ff ff ea                                      b #0x88c54c
0088c634  10 10 8d e2                                      add r1, sp, #0x10
0088c638  04 50 21 e5                                      str r5, [r1, #-4]!
0088c63c  0a 20 a0 e1                                      mov r2, sl
0088c640  25 fa ff eb                                      bl #0x88aedc
0088c644  04 20 94 e5                                      ldr r2, [r4, #4]
0088c648  00 30 94 e5                                      ldr r3, [r4]
0088c64c  00 70 a0 e1                                      mov r7, r0
0088c650  04 10 8d e2                                      add r1, sp, #4
0088c654  08 00 8d e2                                      add r0, sp, #8
0088c658  08 20 8d e5                                      str r2, [sp, #8]
0088c65c  04 30 8d e5                                      str r3, [sp, #4]
0088c660  f0 fe ff eb                                      bl #0x88c228
0088c664  00 00 94 e5                                      ldr r0, [r4]
0088c668  75 0f ea eb                                      bl #0x310444
0088c66c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0088c670  38 20 a0 e3                                      mov r2, #0x38
0088c674  00 70 84 e5                                      str r7, [r4]
0088c678  92 73 23 e0                                      mla r3, r2, r3, r7
0088c67c  08 30 84 e5                                      str r3, [r4, #8]
0088c680  b1 ff ff ea                                      b #0x88c54c

; FUNCTION 0x0088c684, declared_size=220, range_size=220, mode=arm
; class-group: std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11GroupXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEEC1Ej
; demangled: std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> >::vector(unsigned int)
; decoder-mode: arm
0088c684  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088c688  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
0088c68c  c8 70 9f e5                                      ldr r7, [pc, #0xc8]
0088c690  38 60 a0 e3                                      mov r6, #0x38
0088c694  05 50 8f e0                                      add r5, pc, r5
0088c698  07 30 95 e7                                      ldr r3, [r5, r7]
0088c69c  96 01 06 e0                                      mul r6, r6, r1
0088c6a0  00 30 93 e5                                      ldr r3, [r3]
0088c6a4  00 20 a0 e3                                      mov r2, #0
0088c6a8  40 d0 4d e2                                      sub sp, sp, #0x40
0088c6ac  00 40 a0 e1                                      mov r4, r0
0088c6b0  00 20 80 e5                                      str r2, [r0]
0088c6b4  04 20 80 e5                                      str r2, [r0, #4]
0088c6b8  08 20 80 e5                                      str r2, [r0, #8]
0088c6bc  01 80 a0 e1                                      mov r8, r1
0088c6c0  06 00 a0 e1                                      mov r0, r6
0088c6c4  02 10 a0 e1                                      mov r1, r2
0088c6c8  3c 30 8d e5                                      str r3, [sp, #0x3c]
0088c6cc  dd 0f ea eb                                      bl #0x310648
0088c6d0  06 30 80 e0                                      add r3, r0, r6
0088c6d4  04 60 8d e2                                      add r6, sp, #4
0088c6d8  08 30 84 e5                                      str r3, [r4, #8]
0088c6dc  00 00 84 e5                                      str r0, [r4]
0088c6e0  04 00 84 e5                                      str r0, [r4, #4]
0088c6e4  06 00 a0 e1                                      mov r0, r6
0088c6e8  bc f9 ff eb                                      bl #0x88ade0
0088c6ec  04 00 a0 e1                                      mov r0, r4
0088c6f0  08 10 a0 e1                                      mov r1, r8
0088c6f4  06 20 a0 e1                                      mov r2, r6
0088c6f8  df f9 ff eb                                      bl #0x88ae7c
0088c6fc  34 00 9d e5                                      ldr r0, [sp, #0x34]
0088c700  1c 30 86 e2                                      add r3, r6, #0x1c
0088c704  03 00 50 e1                                      cmp r0, r3
0088c708  02 00 00 0a                                      beq #0x88c718
0088c70c  00 00 50 e3                                      cmp r0, #0
0088c710  00 00 00 0a                                      beq #0x88c718
0088c714  4a 0f ea eb                                      bl #0x310444
0088c718  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0088c71c  04 60 86 e2                                      add r6, r6, #4
0088c720  06 00 50 e1                                      cmp r0, r6
0088c724  02 00 00 0a                                      beq #0x88c734
0088c728  00 00 50 e3                                      cmp r0, #0
0088c72c  00 00 00 0a                                      beq #0x88c734
0088c730  43 0f ea eb                                      bl #0x310444
0088c734  07 30 95 e7                                      ldr r3, [r5, r7]
0088c738  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0088c73c  04 00 a0 e1                                      mov r0, r4
0088c740  00 30 93 e5                                      ldr r3, [r3]
0088c744  03 00 52 e1                                      cmp r2, r3
0088c748  01 00 00 1a                                      bne #0x88c754
0088c74c  40 d0 8d e2                                      add sp, sp, #0x40
0088c750  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0088c754  ed 06 ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0088c758  fc 83 10 00 ac 40 00 00                          .byte 0xfc, 0x83, 0x10, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0088c858, declared_size=208, range_size=208, mode=arm
; class-group: std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox11GroupXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE8_M_eraseEPS1_S6_RKSt12__false_type
; demangled: std::vector<vox::GroupXMLDef, vox::SAllocator<vox::GroupXMLDef, (vox::VoxMemHint)0> >::_M_erase(vox::GroupXMLDef*, vox::GroupXMLDef*, std::__false_type const&)
; decoder-mode: arm
0088c858  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088c85c  04 40 90 e5                                      ldr r4, [r0, #4]
0088c860  00 50 a0 e1                                      mov r5, r0
0088c864  02 80 a0 e1                                      mov r8, r2
0088c868  04 30 62 e0                                      rsb r3, r2, r4
0088c86c  c3 31 a0 e1                                      asr r3, r3, #3
0088c870  01 70 a0 e1                                      mov r7, r1
0088c874  83 a1 83 e0                                      add sl, r3, r3, lsl #3
0088c878  0a a3 8a e0                                      add sl, sl, sl, lsl #6
0088c87c  8a a1 83 e0                                      add sl, r3, sl, lsl #3
0088c880  8a a7 8a e0                                      add sl, sl, sl, lsl #15
0088c884  8a a1 83 e0                                      add sl, r3, sl, lsl #3
0088c888  00 a0 6a e2                                      rsb sl, sl, #0
0088c88c  00 00 5a e3                                      cmp sl, #0
0088c890  01 a0 a0 d1                                      movle sl, r1
0088c894  0a 00 00 da                                      ble #0x88c8c4
0088c898  0a 60 a0 e1                                      mov r6, sl
0088c89c  00 40 a0 e3                                      mov r4, #0
0088c8a0  04 00 87 e0                                      add r0, r7, r4
0088c8a4  04 10 88 e0                                      add r1, r8, r4
0088c8a8  50 fb ff eb                                      bl #0x88b5f0
0088c8ac  01 60 56 e2                                      subs r6, r6, #1
0088c8b0  38 40 84 e2                                      add r4, r4, #0x38
0088c8b4  f9 ff ff 1a                                      bne #0x88c8a0
0088c8b8  38 30 a0 e3                                      mov r3, #0x38
0088c8bc  93 7a 2a e0                                      mla sl, r3, sl, r7
0088c8c0  04 40 95 e5                                      ldr r4, [r5, #4]
0088c8c4  0a 00 54 e1                                      cmp r4, sl
0088c8c8  13 00 00 0a                                      beq #0x88c91c
0088c8cc  0a 60 a0 e1                                      mov r6, sl
0088c8d0  1c 20 86 e2                                      add r2, r6, #0x1c
0088c8d4  14 30 92 e5                                      ldr r3, [r2, #0x14]
0088c8d8  02 00 53 e1                                      cmp r3, r2
0088c8dc  03 00 a0 e1                                      mov r0, r3
0088c8e0  02 00 00 0a                                      beq #0x88c8f0
0088c8e4  00 00 53 e3                                      cmp r3, #0
0088c8e8  00 00 00 0a                                      beq #0x88c8f0
0088c8ec  d4 0e ea eb                                      bl #0x310444
0088c8f0  04 20 86 e2                                      add r2, r6, #4
0088c8f4  14 30 92 e5                                      ldr r3, [r2, #0x14]
0088c8f8  38 60 86 e2                                      add r6, r6, #0x38
0088c8fc  02 00 53 e1                                      cmp r3, r2
0088c900  03 00 a0 e1                                      mov r0, r3
0088c904  02 00 00 0a                                      beq #0x88c914
0088c908  00 00 53 e3                                      cmp r3, #0
0088c90c  00 00 00 0a                                      beq #0x88c914
0088c910  cb 0e ea eb                                      bl #0x310444
0088c914  06 00 54 e1                                      cmp r4, r6
0088c918  ec ff ff 1a                                      bne #0x88c8d0
0088c91c  04 a0 85 e5                                      str sl, [r5, #4]
0088c920  07 00 a0 e1                                      mov r0, r7
0088c924  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
