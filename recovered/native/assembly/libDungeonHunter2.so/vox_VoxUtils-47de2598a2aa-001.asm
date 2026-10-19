; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0086f3b4, declared_size=420, range_size=420, mode=arm
; class-group: vox::VoxUtils
; alias: _ZN3vox8VoxUtils27LoadDataSourceFromFileToRAMEPKcii
; demangled: vox::VoxUtils::LoadDataSourceFromFileToRAM(char const*, int, int)
; decoder-mode: arm
0086f3b4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086f3b8  2c d0 4d e2                                      sub sp, sp, #0x2c
0086f3bc  01 50 a0 e1                                      mov r5, r1
0086f3c0  10 20 8d e5                                      str r2, [sp, #0x10]
0086f3c4  14 30 8d e5                                      str r3, [sp, #0x14]
0086f3c8  00 60 a0 e1                                      mov r6, r0
0086f3cc  d7 cd ff eb                                      bl #0x862b30
0086f3d0  00 b0 a0 e1                                      mov fp, r0
0086f3d4  72 94 00 eb                                      bl #0x8945a4
0086f3d8  70 41 9f e5                                      ldr r4, [pc, #0x170]
0086f3dc  00 80 50 e2                                      subs r8, r0, #0
0086f3e0  04 40 8f e0                                      add r4, pc, r4
0086f3e4  49 00 00 0a                                      beq #0x86f510
0086f3e8  05 10 a0 e1                                      mov r1, r5
0086f3ec  00 30 98 e5                                      ldr r3, [r8]
0086f3f0  06 20 a0 e3                                      mov r2, #6
0086f3f4  0f e0 a0 e1                                      mov lr, pc
0086f3f8  08 f0 93 e5                                      ldr pc, [r3, #8]
0086f3fc  00 50 50 e2                                      subs r5, r0, #0
0086f400  42 00 00 0a                                      beq #0x86f510
0086f404  00 10 a0 e3                                      mov r1, #0
0086f408  02 20 a0 e3                                      mov r2, #2
0086f40c  00 30 95 e5                                      ldr r3, [r5]
0086f410  0f e0 a0 e1                                      mov lr, pc
0086f414  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0086f418  00 30 95 e5                                      ldr r3, [r5]
0086f41c  05 00 a0 e1                                      mov r0, r5
0086f420  0f e0 a0 e1                                      mov lr, pc
0086f424  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086f428  00 70 50 e2                                      subs r7, r0, #0
0086f42c  32 00 00 da                                      ble #0x86f4fc
0086f430  00 10 a0 e3                                      mov r1, #0
0086f434  01 20 a0 e1                                      mov r2, r1
0086f438  00 30 95 e5                                      ldr r3, [r5]
0086f43c  05 00 a0 e1                                      mov r0, r5
0086f440  0f e0 a0 e1                                      mov lr, pc
0086f444  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0086f448  07 00 a0 e1                                      mov r0, r7
0086f44c  29 84 ea eb                                      bl #0x3104f8
0086f450  00 a0 50 e2                                      subs sl, r0, #0
0086f454  28 00 00 0a                                      beq #0x86f4fc
0086f458  00 40 a0 e3                                      mov r4, #0
0086f45c  ff 9f 0f e3                                      movw sb, #0xffff
0086f460  00 00 00 ea                                      b #0x86f468
0086f464  00 40 84 e0                                      add r4, r4, r0
0086f468  07 30 64 e0                                      rsb r3, r4, r7
0086f46c  09 00 53 e1                                      cmp r3, sb
0086f470  00 c0 95 d5                                      ldrle ip, [r5]
0086f474  05 00 a0 d1                                      movle r0, r5
0086f478  04 10 8a d0                                      addle r1, sl, r4
0086f47c  01 20 a0 d3                                      movle r2, #1
0086f480  04 10 8a c0                                      addgt r1, sl, r4
0086f484  00 c0 95 c5                                      ldrgt ip, [r5]
0086f488  05 00 a0 c1                                      movgt r0, r5
0086f48c  01 20 a0 c3                                      movgt r2, #1
0086f490  01 38 a0 c3                                      movgt r3, #0x10000
0086f494  0f e0 a0 e1                                      mov lr, pc
0086f498  08 f0 9c e5                                      ldr pc, [ip, #8]
0086f49c  00 00 50 e3                                      cmp r0, #0
0086f4a0  ef ff ff ca                                      bgt #0x86f464
0086f4a4  05 10 a0 e1                                      mov r1, r5
0086f4a8  00 30 98 e5                                      ldr r3, [r8]
0086f4ac  08 00 a0 e1                                      mov r0, r8
0086f4b0  0f e0 a0 e1                                      mov lr, pc
0086f4b4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0086f4b8  01 e0 a0 e3                                      mov lr, #1
0086f4bc  25 e0 cd e5                                      strb lr, [sp, #0x25]
0086f4c0  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0086f4c4  00 c0 a0 e3                                      mov ip, #0
0086f4c8  0b 10 a0 e1                                      mov r1, fp
0086f4cc  00 e0 8d e5                                      str lr, [sp]
0086f4d0  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0086f4d4  0c 20 a0 e1                                      mov r2, ip
0086f4d8  06 00 a0 e1                                      mov r0, r6
0086f4dc  1c 30 8d e2                                      add r3, sp, #0x1c
0086f4e0  1c a0 8d e5                                      str sl, [sp, #0x1c]
0086f4e4  20 70 8d e5                                      str r7, [sp, #0x20]
0086f4e8  08 e0 8d e5                                      str lr, [sp, #8]
0086f4ec  24 c0 cd e5                                      strb ip, [sp, #0x24]
0086f4f0  04 c0 8d e5                                      str ip, [sp, #4]
0086f4f4  b9 cc ff eb                                      bl #0x8627e0
0086f4f8  11 00 00 ea                                      b #0x86f544
0086f4fc  08 00 a0 e1                                      mov r0, r8
0086f500  05 10 a0 e1                                      mov r1, r5
0086f504  00 30 98 e5                                      ldr r3, [r8]
0086f508  0f e0 a0 e1                                      mov lr, pc
0086f50c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0086f510  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0086f514  00 00 e0 e3                                      mvn r0, #0
0086f518  00 10 e0 e3                                      mvn r1, #0
0086f51c  02 20 94 e7                                      ldr r2, [r4, r2]
0086f520  f8 00 c6 e1                                      strd r0, r1, [r6, #8]
0086f524  00 30 a0 e3                                      mov r3, #0
0086f528  08 20 82 e2                                      add r2, r2, #8
0086f52c  20 30 86 e5                                      str r3, [r6, #0x20]
0086f530  00 20 86 e5                                      str r2, [r6]
0086f534  10 30 86 e5                                      str r3, [r6, #0x10]
0086f538  14 30 86 e5                                      str r3, [r6, #0x14]
0086f53c  18 30 86 e5                                      str r3, [r6, #0x18]
0086f540  1c 30 86 e5                                      str r3, [r6, #0x1c]
0086f544  06 00 a0 e1                                      mov r0, r6
0086f548  2c d0 8d e2                                      add sp, sp, #0x2c
0086f54c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0086f550  b0 56 12 00 a4 19 00 00                          .byte 0xb0, 0x56, 0x12, 0x00, 0xa4, 0x19, 0x00, 0x00

; FUNCTION 0x0086f558, declared_size=72, range_size=72, mode=arm
; class-group: vox::VoxUtils
; alias: _ZN3vox8VoxUtils22LoadDataSourceFromFileEPKcii
; demangled: vox::VoxUtils::LoadDataSourceFromFile(char const*, int, int)
; decoder-mode: arm
0086f558  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0086f55c  14 d0 4d e2                                      sub sp, sp, #0x14
0086f560  00 40 a0 e1                                      mov r4, r0
0086f564  01 70 a0 e1                                      mov r7, r1
0086f568  02 60 a0 e1                                      mov r6, r2
0086f56c  03 50 a0 e1                                      mov r5, r3
0086f570  6e cd ff eb                                      bl #0x862b30
0086f574  00 c0 a0 e3                                      mov ip, #0
0086f578  00 10 a0 e1                                      mov r1, r0
0086f57c  07 30 a0 e1                                      mov r3, r7
0086f580  04 00 a0 e1                                      mov r0, r4
0086f584  01 20 a0 e3                                      mov r2, #1
0086f588  40 10 8d e8                                      stm sp, {r6, ip}
0086f58c  08 50 8d e5                                      str r5, [sp, #8]
0086f590  92 cc ff eb                                      bl #0x8627e0
0086f594  04 00 a0 e1                                      mov r0, r4
0086f598  14 d0 8d e2                                      add sp, sp, #0x14
0086f59c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0086f5a0, declared_size=92, range_size=92, mode=arm
; class-group: vox::VoxUtils
; alias: _ZN3vox8VoxUtils27LoadDataSourceFromFileAsRAWEPKcii
; demangled: vox::VoxUtils::LoadDataSourceFromFileAsRAW(char const*, int, int)
; decoder-mode: arm
0086f5a0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0086f5a4  2c d0 4d e2                                      sub sp, sp, #0x2c
0086f5a8  00 50 a0 e1                                      mov r5, r0
0086f5ac  01 80 a0 e1                                      mov r8, r1
0086f5b0  02 70 a0 e1                                      mov r7, r2
0086f5b4  03 a0 a0 e1                                      mov sl, r3
0086f5b8  5c cd ff eb                                      bl #0x862b30
0086f5bc  0a 30 a0 e1                                      mov r3, sl
0086f5c0  00 60 a0 e1                                      mov r6, r0
0086f5c4  08 10 a0 e1                                      mov r1, r8
0086f5c8  07 20 a0 e1                                      mov r2, r7
0086f5cc  0d 00 a0 e1                                      mov r0, sp
0086f5d0  e0 ff ff eb                                      bl #0x86f558
0086f5d4  05 00 a0 e1                                      mov r0, r5
0086f5d8  06 10 a0 e1                                      mov r1, r6
0086f5dc  0d 20 a0 e1                                      mov r2, sp
0086f5e0  46 cc ff eb                                      bl #0x862700
0086f5e4  0d 00 a0 e1                                      mov r0, sp
0086f5e8  8e ed ff eb                                      bl #0x86ac28
0086f5ec  0d 40 a0 e1                                      mov r4, sp
0086f5f0  05 00 a0 e1                                      mov r0, r5
0086f5f4  2c d0 8d e2                                      add sp, sp, #0x2c
0086f5f8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0086f5fc, declared_size=180, range_size=180, mode=arm
; class-group: vox::VoxUtils
; alias: _ZN3vox8VoxUtils24LoadDataSourceFromFileExEPKciNS_21VoxSourceLoadingFlagsEi
; demangled: vox::VoxUtils::LoadDataSourceFromFileEx(char const*, int, vox::VoxSourceLoadingFlags, int)
; decoder-mode: arm
0086f5fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086f600  03 70 a0 e1                                      mov r7, r3
0086f604  10 d0 4d e2                                      sub sp, sp, #0x10
0086f608  00 40 a0 e1                                      mov r4, r0
0086f60c  01 80 a0 e1                                      mov r8, r1
0086f610  02 60 a0 e1                                      mov r6, r2
0086f614  28 50 9d e5                                      ldr r5, [sp, #0x28]
0086f618  44 cd ff eb                                      bl #0x862b30
0086f61c  01 08 17 e3                                      tst r7, #0x10000
0086f620  0b 00 00 1a                                      bne #0x86f654
0086f624  01 00 17 e3                                      tst r7, #1
0086f628  14 00 00 1a                                      bne #0x86f680
0086f62c  02 00 57 e3                                      cmp r7, #2
0086f630  18 00 00 0a                                      beq #0x86f698
0086f634  08 10 a0 e1                                      mov r1, r8
0086f638  06 20 a0 e1                                      mov r2, r6
0086f63c  05 30 a0 e1                                      mov r3, r5
0086f640  04 00 a0 e1                                      mov r0, r4
0086f644  c3 ff ff eb                                      bl #0x86f558
0086f648  04 00 a0 e1                                      mov r0, r4
0086f64c  10 d0 8d e2                                      add sp, sp, #0x10
0086f650  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0086f654  77 70 ff e6                                      uxth r7, r7
0086f658  00 10 a0 e1                                      mov r1, r0
0086f65c  00 c0 a0 e3                                      mov ip, #0
0086f660  08 30 a0 e1                                      mov r3, r8
0086f664  04 00 a0 e1                                      mov r0, r4
0086f668  01 20 a0 e3                                      mov r2, #1
0086f66c  40 10 8d e8                                      stm sp, {r6, ip}
0086f670  08 50 8d e5                                      str r5, [sp, #8]
0086f674  0c 70 8d e5                                      str r7, [sp, #0xc]
0086f678  38 cc ff eb                                      bl #0x862760
0086f67c  f1 ff ff ea                                      b #0x86f648
0086f680  08 10 a0 e1                                      mov r1, r8
0086f684  06 20 a0 e1                                      mov r2, r6
0086f688  05 30 a0 e1                                      mov r3, r5
0086f68c  04 00 a0 e1                                      mov r0, r4
0086f690  47 ff ff eb                                      bl #0x86f3b4
0086f694  eb ff ff ea                                      b #0x86f648
0086f698  08 10 a0 e1                                      mov r1, r8
0086f69c  06 20 a0 e1                                      mov r2, r6
0086f6a0  05 30 a0 e1                                      mov r3, r5
0086f6a4  04 00 a0 e1                                      mov r0, r4
0086f6a8  bc ff ff eb                                      bl #0x86f5a0
0086f6ac  e5 ff ff ea                                      b #0x86f648

; FUNCTION 0x0086f6b0, declared_size=560, range_size=560, mode=arm
; class-group: vox::VoxUtils
; alias: _ZN3vox8VoxUtils39LoadDataSourceFromFileAutoDetectDecoderEPKci
; demangled: vox::VoxUtils::LoadDataSourceFromFileAutoDetectDecoder(char const*, int)
; decoder-mode: arm
0086f6b0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086f6b4  08 42 9f e5                                      ldr r4, [pc, #0x208]
0086f6b8  08 72 9f e5                                      ldr r7, [pc, #0x208]
0086f6bc  24 d0 4d e2                                      sub sp, sp, #0x24
0086f6c0  04 40 8f e0                                      add r4, pc, r4
0086f6c4  07 30 94 e7                                      ldr r3, [r4, r7]
0086f6c8  00 a0 51 e2                                      subs sl, r1, #0
0086f6cc  00 50 a0 e1                                      mov r5, r0
0086f6d0  00 30 93 e5                                      ldr r3, [r3]
0086f6d4  02 90 a0 e1                                      mov sb, r2
0086f6d8  1c 30 8d e5                                      str r3, [sp, #0x1c]
0086f6dc  56 00 00 0a                                      beq #0x86f83c
0086f6e0  0a 00 a0 e1                                      mov r0, sl
0086f6e4  2e 10 a0 e3                                      mov r1, #0x2e
0086f6e8  4d 7b ea eb                                      bl #0x30e424
0086f6ec  00 00 50 e3                                      cmp r0, #0
0086f6f0  5f 00 00 0a                                      beq #0x86f874
0086f6f4  01 80 80 e2                                      add r8, r0, #1
0086f6f8  04 60 8d e2                                      add r6, sp, #4
0086f6fc  06 00 a0 e1                                      mov r0, r6
0086f700  08 10 a0 e1                                      mov r1, r8
0086f704  0d 20 a0 e1                                      mov r2, sp
0086f708  0a ff ff eb                                      bl #0x86f338
0086f70c  00 b0 a0 e3                                      mov fp, #0
0086f710  08 00 00 ea                                      b #0x86f738
0086f714  18 20 9d e5                                      ldr r2, [sp, #0x18]
0086f718  0b 30 d2 e7                                      ldrb r3, [r2, fp]
0086f71c  0b 20 82 e0                                      add r2, r2, fp
0086f720  01 b0 8b e2                                      add fp, fp, #1
0086f724  73 10 af e6                                      sxtb r1, r3
0086f728  60 00 51 e3                                      cmp r1, #0x60
0086f72c  20 30 83 d2                                      addle r3, r3, #0x20
0086f730  73 30 ef d6                                      uxtble r3, r3
0086f734  00 30 c2 e5                                      strb r3, [r2]
0086f738  08 00 a0 e1                                      mov r0, r8
0086f73c  c4 79 ea eb                                      bl #0x30de54
0086f740  00 00 5b e1                                      cmp fp, r0
0086f744  f2 ff ff 3a                                      blo #0x86f714
0086f748  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
0086f74c  06 00 a0 e1                                      mov r0, r6
0086f750  01 10 8f e0                                      add r1, pc, r1
0086f754  04 ff ff eb                                      bl #0x86f36c
0086f758  00 00 50 e3                                      cmp r0, #0
0086f75c  12 00 00 0a                                      beq #0x86f7ac
0086f760  0a 10 a0 e1                                      mov r1, sl
0086f764  09 30 a0 e1                                      mov r3, sb
0086f768  05 00 a0 e1                                      mov r0, r5
0086f76c  01 20 a0 e3                                      mov r2, #1
0086f770  78 ff ff eb                                      bl #0x86f558
0086f774  18 00 9d e5                                      ldr r0, [sp, #0x18]
0086f778  06 00 50 e1                                      cmp r0, r6
0086f77c  02 00 00 0a                                      beq #0x86f78c
0086f780  00 00 50 e3                                      cmp r0, #0
0086f784  00 00 00 0a                                      beq #0x86f78c
0086f788  2d 83 ea eb                                      bl #0x310444
0086f78c  07 30 94 e7                                      ldr r3, [r4, r7]
0086f790  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0086f794  05 00 a0 e1                                      mov r0, r5
0086f798  00 30 93 e5                                      ldr r3, [r3]
0086f79c  03 00 52 e1                                      cmp r2, r3
0086f7a0  46 00 00 1a                                      bne #0x86f8c0
0086f7a4  24 d0 8d e2                                      add sp, sp, #0x24
0086f7a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086f7ac  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
0086f7b0  06 00 a0 e1                                      mov r0, r6
0086f7b4  01 10 8f e0                                      add r1, pc, r1
0086f7b8  eb fe ff eb                                      bl #0x86f36c
0086f7bc  00 00 50 e3                                      cmp r0, #0
0086f7c0  0b 00 00 1a                                      bne #0x86f7f4
0086f7c4  08 11 9f e5                                      ldr r1, [pc, #0x108]
0086f7c8  06 00 a0 e1                                      mov r0, r6
0086f7cc  01 10 8f e0                                      add r1, pc, r1
0086f7d0  e5 fe ff eb                                      bl #0x86f36c
0086f7d4  00 00 50 e3                                      cmp r0, #0
0086f7d8  0b 00 00 0a                                      beq #0x86f80c
0086f7dc  0a 10 a0 e1                                      mov r1, sl
0086f7e0  09 30 a0 e1                                      mov r3, sb
0086f7e4  05 00 a0 e1                                      mov r0, r5
0086f7e8  03 20 a0 e3                                      mov r2, #3
0086f7ec  59 ff ff eb                                      bl #0x86f558
0086f7f0  df ff ff ea                                      b #0x86f774
0086f7f4  0a 10 a0 e1                                      mov r1, sl
0086f7f8  09 30 a0 e1                                      mov r3, sb
0086f7fc  05 00 a0 e1                                      mov r0, r5
0086f800  02 20 a0 e3                                      mov r2, #2
0086f804  53 ff ff eb                                      bl #0x86f558
0086f808  d9 ff ff ea                                      b #0x86f774
0086f80c  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
0086f810  06 00 a0 e1                                      mov r0, r6
0086f814  01 10 8f e0                                      add r1, pc, r1
0086f818  d3 fe ff eb                                      bl #0x86f36c
0086f81c  00 00 50 e3                                      cmp r0, #0
0086f820  20 00 00 1a                                      bne #0x86f8a8
0086f824  18 00 9d e5                                      ldr r0, [sp, #0x18]
0086f828  06 00 50 e1                                      cmp r0, r6
0086f82c  02 00 00 0a                                      beq #0x86f83c
0086f830  00 00 50 e3                                      cmp r0, #0
0086f834  00 00 00 0a                                      beq #0x86f83c
0086f838  01 83 ea eb                                      bl #0x310444
0086f83c  98 20 9f e5                                      ldr r2, [pc, #0x98]
0086f840  00 30 a0 e3                                      mov r3, #0
0086f844  00 00 e0 e3                                      mvn r0, #0
0086f848  02 20 94 e7                                      ldr r2, [r4, r2]
0086f84c  00 10 e0 e3                                      mvn r1, #0
0086f850  f8 00 c5 e1                                      strd r0, r1, [r5, #8]
0086f854  08 20 82 e2                                      add r2, r2, #8
0086f858  20 30 85 e5                                      str r3, [r5, #0x20]
0086f85c  00 20 85 e5                                      str r2, [r5]
0086f860  10 30 85 e5                                      str r3, [r5, #0x10]
0086f864  14 30 85 e5                                      str r3, [r5, #0x14]
0086f868  18 30 85 e5                                      str r3, [r5, #0x18]
0086f86c  1c 30 85 e5                                      str r3, [r5, #0x1c]
0086f870  c5 ff ff ea                                      b #0x86f78c
0086f874  60 30 9f e5                                      ldr r3, [pc, #0x60]
0086f878  00 80 e0 e3                                      mvn r8, #0
0086f87c  00 90 e0 e3                                      mvn sb, #0
0086f880  03 30 94 e7                                      ldr r3, [r4, r3]
0086f884  f8 80 c5 e1                                      strd r8, sb, [r5, #8]
0086f888  08 30 83 e2                                      add r3, r3, #8
0086f88c  20 00 85 e5                                      str r0, [r5, #0x20]
0086f890  10 00 85 e5                                      str r0, [r5, #0x10]
0086f894  00 30 85 e5                                      str r3, [r5]
0086f898  14 00 85 e5                                      str r0, [r5, #0x14]
0086f89c  18 00 85 e5                                      str r0, [r5, #0x18]
0086f8a0  1c 00 85 e5                                      str r0, [r5, #0x1c]
0086f8a4  b8 ff ff ea                                      b #0x86f78c
0086f8a8  0a 10 a0 e1                                      mov r1, sl
0086f8ac  09 30 a0 e1                                      mov r3, sb
0086f8b0  05 00 a0 e1                                      mov r0, r5
0086f8b4  04 20 a0 e3                                      mov r2, #4
0086f8b8  26 ff ff eb                                      bl #0x86f558
0086f8bc  ac ff ff ea                                      b #0x86f774
0086f8c0  92 7a ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0086f8c4  d0 53 12 00 ac 40 00 00 a8 17 0a 00 4c 17 0a 00  .byte 0xd0, 0x53, 0x12, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa8, 0x17, 0x0a, 0x00, 0x4c, 0x17, 0x0a, 0x00
0086f8d4  3c 17 0a 00 fc 16 0a 00 a4 19 00 00              .byte 0x3c, 0x17, 0x0a, 0x00, 0xfc, 0x16, 0x0a, 0x00, 0xa4, 0x19, 0x00, 0x00

; FUNCTION 0x0086f8e0, declared_size=588, range_size=588, mode=arm
; class-group: vox::VoxUtils
; alias: _ZN3vox8VoxUtils41LoadDataSourceFromFileAutoDetectDecoderExEPKciNS_21VoxSourceLoadingFlagsEPNS_18DataHandleUserDataE
; demangled: vox::VoxUtils::LoadDataSourceFromFileAutoDetectDecoderEx(char const*, int, vox::VoxSourceLoadingFlags, vox::DataHandleUserData*)
; decoder-mode: arm
0086f8e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086f8e4  24 42 9f e5                                      ldr r4, [pc, #0x224]
0086f8e8  24 72 9f e5                                      ldr r7, [pc, #0x224]
0086f8ec  00 80 51 e2                                      subs r8, r1, #0
0086f8f0  04 40 8f e0                                      add r4, pc, r4
0086f8f4  07 10 94 e7                                      ldr r1, [r4, r7]
0086f8f8  02 b0 a0 e1                                      mov fp, r2
0086f8fc  34 d0 4d e2                                      sub sp, sp, #0x34
0086f900  00 20 91 e5                                      ldr r2, [r1]
0086f904  00 50 a0 e1                                      mov r5, r0
0086f908  03 90 a0 e1                                      mov sb, r3
0086f90c  2c 20 8d e5                                      str r2, [sp, #0x2c]
0086f910  5b 00 00 0a                                      beq #0x86fa84
0086f914  08 00 a0 e1                                      mov r0, r8
0086f918  2e 10 a0 e3                                      mov r1, #0x2e
0086f91c  c0 7a ea eb                                      bl #0x30e424
0086f920  00 00 50 e3                                      cmp r0, #0
0086f924  64 00 00 0a                                      beq #0x86fabc
0086f928  01 a0 80 e2                                      add sl, r0, #1
0086f92c  14 60 8d e2                                      add r6, sp, #0x14
0086f930  06 00 a0 e1                                      mov r0, r6
0086f934  0a 10 a0 e1                                      mov r1, sl
0086f938  10 20 8d e2                                      add r2, sp, #0x10
0086f93c  7d fe ff eb                                      bl #0x86f338
0086f940  00 30 a0 e3                                      mov r3, #0
0086f944  08 00 00 ea                                      b #0x86f96c
0086f948  28 10 9d e5                                      ldr r1, [sp, #0x28]
0086f94c  03 20 d1 e7                                      ldrb r2, [r1, r3]
0086f950  03 10 81 e0                                      add r1, r1, r3
0086f954  01 30 83 e2                                      add r3, r3, #1
0086f958  72 00 af e6                                      sxtb r0, r2
0086f95c  60 00 50 e3                                      cmp r0, #0x60
0086f960  20 20 82 d2                                      addle r2, r2, #0x20
0086f964  72 20 ef d6                                      uxtble r2, r2
0086f968  00 20 c1 e5                                      strb r2, [r1]
0086f96c  0a 00 a0 e1                                      mov r0, sl
0086f970  0c 30 8d e5                                      str r3, [sp, #0xc]
0086f974  36 79 ea eb                                      bl #0x30de54
0086f978  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0086f97c  00 00 53 e1                                      cmp r3, r0
0086f980  f0 ff ff 3a                                      blo #0x86f948
0086f984  8c 11 9f e5                                      ldr r1, [pc, #0x18c]
0086f988  06 00 a0 e1                                      mov r0, r6
0086f98c  01 10 8f e0                                      add r1, pc, r1
0086f990  75 fe ff eb                                      bl #0x86f36c
0086f994  00 00 50 e3                                      cmp r0, #0
0086f998  13 00 00 0a                                      beq #0x86f9ec
0086f99c  08 10 a0 e1                                      mov r1, r8
0086f9a0  09 30 a0 e1                                      mov r3, sb
0086f9a4  05 00 a0 e1                                      mov r0, r5
0086f9a8  01 20 a0 e3                                      mov r2, #1
0086f9ac  00 b0 8d e5                                      str fp, [sp]
0086f9b0  11 ff ff eb                                      bl #0x86f5fc
0086f9b4  28 00 9d e5                                      ldr r0, [sp, #0x28]
0086f9b8  06 00 50 e1                                      cmp r0, r6
0086f9bc  02 00 00 0a                                      beq #0x86f9cc
0086f9c0  00 00 50 e3                                      cmp r0, #0
0086f9c4  00 00 00 0a                                      beq #0x86f9cc
0086f9c8  9d 82 ea eb                                      bl #0x310444
0086f9cc  07 30 94 e7                                      ldr r3, [r4, r7]
0086f9d0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0086f9d4  05 00 a0 e1                                      mov r0, r5
0086f9d8  00 30 93 e5                                      ldr r3, [r3]
0086f9dc  03 00 52 e1                                      cmp r2, r3
0086f9e0  49 00 00 1a                                      bne #0x86fb0c
0086f9e4  34 d0 8d e2                                      add sp, sp, #0x34
0086f9e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0086f9ec  28 11 9f e5                                      ldr r1, [pc, #0x128]
0086f9f0  06 00 a0 e1                                      mov r0, r6
0086f9f4  01 10 8f e0                                      add r1, pc, r1
0086f9f8  5b fe ff eb                                      bl #0x86f36c
0086f9fc  00 00 50 e3                                      cmp r0, #0
0086fa00  0c 00 00 1a                                      bne #0x86fa38
0086fa04  14 11 9f e5                                      ldr r1, [pc, #0x114]
0086fa08  06 00 a0 e1                                      mov r0, r6
0086fa0c  01 10 8f e0                                      add r1, pc, r1
0086fa10  55 fe ff eb                                      bl #0x86f36c
0086fa14  00 00 50 e3                                      cmp r0, #0
0086fa18  0d 00 00 0a                                      beq #0x86fa54
0086fa1c  08 10 a0 e1                                      mov r1, r8
0086fa20  09 30 a0 e1                                      mov r3, sb
0086fa24  05 00 a0 e1                                      mov r0, r5
0086fa28  03 20 a0 e3                                      mov r2, #3
0086fa2c  00 b0 8d e5                                      str fp, [sp]
0086fa30  f1 fe ff eb                                      bl #0x86f5fc
0086fa34  de ff ff ea                                      b #0x86f9b4
0086fa38  08 10 a0 e1                                      mov r1, r8
0086fa3c  09 30 a0 e1                                      mov r3, sb
0086fa40  05 00 a0 e1                                      mov r0, r5
0086fa44  02 20 a0 e3                                      mov r2, #2
0086fa48  00 b0 8d e5                                      str fp, [sp]
0086fa4c  ea fe ff eb                                      bl #0x86f5fc
0086fa50  d7 ff ff ea                                      b #0x86f9b4
0086fa54  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
0086fa58  06 00 a0 e1                                      mov r0, r6
0086fa5c  01 10 8f e0                                      add r1, pc, r1
0086fa60  41 fe ff eb                                      bl #0x86f36c
0086fa64  00 00 50 e3                                      cmp r0, #0
0086fa68  20 00 00 1a                                      bne #0x86faf0
0086fa6c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0086fa70  06 00 50 e1                                      cmp r0, r6
0086fa74  02 00 00 0a                                      beq #0x86fa84
0086fa78  00 00 50 e3                                      cmp r0, #0
0086fa7c  00 00 00 0a                                      beq #0x86fa84
0086fa80  6f 82 ea eb                                      bl #0x310444
0086fa84  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
0086fa88  00 30 a0 e3                                      mov r3, #0
0086fa8c  00 00 e0 e3                                      mvn r0, #0
0086fa90  02 20 94 e7                                      ldr r2, [r4, r2]
0086fa94  00 10 e0 e3                                      mvn r1, #0
0086fa98  f8 00 c5 e1                                      strd r0, r1, [r5, #8]
0086fa9c  08 20 82 e2                                      add r2, r2, #8
0086faa0  20 30 85 e5                                      str r3, [r5, #0x20]
0086faa4  00 20 85 e5                                      str r2, [r5]
0086faa8  10 30 85 e5                                      str r3, [r5, #0x10]
0086faac  14 30 85 e5                                      str r3, [r5, #0x14]
0086fab0  18 30 85 e5                                      str r3, [r5, #0x18]
0086fab4  1c 30 85 e5                                      str r3, [r5, #0x1c]
0086fab8  c3 ff ff ea                                      b #0x86f9cc
0086fabc  64 30 9f e5                                      ldr r3, [pc, #0x64]
0086fac0  00 80 e0 e3                                      mvn r8, #0
0086fac4  00 90 e0 e3                                      mvn sb, #0
0086fac8  03 30 94 e7                                      ldr r3, [r4, r3]
0086facc  f8 80 c5 e1                                      strd r8, sb, [r5, #8]
0086fad0  08 30 83 e2                                      add r3, r3, #8
0086fad4  20 00 85 e5                                      str r0, [r5, #0x20]
0086fad8  10 00 85 e5                                      str r0, [r5, #0x10]
0086fadc  00 30 85 e5                                      str r3, [r5]
0086fae0  14 00 85 e5                                      str r0, [r5, #0x14]
0086fae4  18 00 85 e5                                      str r0, [r5, #0x18]
0086fae8  1c 00 85 e5                                      str r0, [r5, #0x1c]
0086faec  b6 ff ff ea                                      b #0x86f9cc
0086faf0  08 10 a0 e1                                      mov r1, r8
0086faf4  09 30 a0 e1                                      mov r3, sb
0086faf8  05 00 a0 e1                                      mov r0, r5
0086fafc  04 20 a0 e3                                      mov r2, #4
0086fb00  00 b0 8d e5                                      str fp, [sp]
0086fb04  bc fe ff eb                                      bl #0x86f5fc
0086fb08  a9 ff ff ea                                      b #0x86f9b4
0086fb0c  ff 79 ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0086fb10  a0 51 12 00 ac 40 00 00 6c 15 0a 00 0c 15 0a 00  .byte 0xa0, 0x51, 0x12, 0x00, 0xac, 0x40, 0x00, 0x00, 0x6c, 0x15, 0x0a, 0x00, 0x0c, 0x15, 0x0a, 0x00
0086fb20  fc 14 0a 00 b4 14 0a 00 a4 19 00 00              .byte 0xfc, 0x14, 0x0a, 0x00, 0xb4, 0x14, 0x0a, 0x00, 0xa4, 0x19, 0x00, 0x00
