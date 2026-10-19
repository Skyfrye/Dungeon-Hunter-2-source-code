; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008945dc, declared_size=168, range_size=168, mode=arm
; class-group: vox::FileSystemStdio
; alias: _ZN3vox15FileSystemStdioC2Ev
; demangled: vox::FileSystemStdio::FileSystemStdio()
; decoder-mode: arm
008945dc  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
008945e0  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
008945e4  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
008945e8  03 30 8f e0                                      add r3, pc, r3
008945ec  01 70 93 e7                                      ldr r7, [r3, r1]
008945f0  70 10 9f e5                                      ldr r1, [pc, #0x70]
008945f4  70 20 9f e5                                      ldr r2, [pc, #0x70]
008945f8  70 a0 9f e5                                      ldr sl, [pc, #0x70]
008945fc  01 60 93 e7                                      ldr r6, [r3, r1]
00894600  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00894604  02 80 93 e7                                      ldr r8, [r3, r2]
00894608  68 20 9f e5                                      ldr r2, [pc, #0x68]
0089460c  01 50 93 e7                                      ldr r5, [r3, r1]
00894610  64 10 9f e5                                      ldr r1, [pc, #0x64]
00894614  0a a0 93 e7                                      ldr sl, [r3, sl]
00894618  02 20 93 e7                                      ldr r2, [r3, r2]
0089461c  01 90 93 e7                                      ldr sb, [r3, r1]
00894620  58 10 9f e5                                      ldr r1, [pc, #0x58]
00894624  00 40 a0 e3                                      mov r4, #0
00894628  0c c0 80 e2                                      add ip, r0, #0xc
0089462c  01 b0 93 e7                                      ldr fp, [r3, r1]
00894630  08 a0 8a e2                                      add sl, sl, #8
00894634  00 a0 80 e5                                      str sl, [r0]
00894638  08 40 80 e5                                      str r4, [r0, #8]
0089463c  10 c0 80 e5                                      str ip, [r0, #0x10]
00894640  04 40 c0 e5                                      strb r4, [r0, #4]
00894644  0c c0 80 e5                                      str ip, [r0, #0xc]
00894648  0c 80 82 e5                                      str r8, [r2, #0xc]
0089464c  10 70 82 e5                                      str r7, [r2, #0x10]
00894650  14 60 82 e5                                      str r6, [r2, #0x14]
00894654  20 0a 82 e8                                      stm r2, {r5, sb, fp}
00894658  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
0089465c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00894660  a8 04 10 00 a0 2c 00 00 48 1a 00 00 a0 1a 00 00  .byte 0xa8, 0x04, 0x10, 0x00, 0xa0, 0x2c, 0x00, 0x00, 0x48, 0x1a, 0x00, 0x00, 0xa0, 0x1a, 0x00, 0x00
00894670  44 1b 00 00 d8 25 00 00 78 15 00 00 ac 11 00 00  .byte 0x44, 0x1b, 0x00, 0x00, 0xd8, 0x25, 0x00, 0x00, 0x78, 0x15, 0x00, 0x00, 0xac, 0x11, 0x00, 0x00
00894680  68 44 00 00                                      .byte 0x68, 0x44, 0x00, 0x00

; FUNCTION 0x00894684, declared_size=168, range_size=168, mode=arm
; class-group: vox::FileSystemStdio
; alias: _ZN3vox15FileSystemStdioC1Ev
; demangled: vox::FileSystemStdio::FileSystemStdio()
; decoder-mode: arm
00894684  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00894688  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0089468c  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
00894690  03 30 8f e0                                      add r3, pc, r3
00894694  01 70 93 e7                                      ldr r7, [r3, r1]
00894698  70 10 9f e5                                      ldr r1, [pc, #0x70]
0089469c  70 20 9f e5                                      ldr r2, [pc, #0x70]
008946a0  70 a0 9f e5                                      ldr sl, [pc, #0x70]
008946a4  01 60 93 e7                                      ldr r6, [r3, r1]
008946a8  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
008946ac  02 80 93 e7                                      ldr r8, [r3, r2]
008946b0  68 20 9f e5                                      ldr r2, [pc, #0x68]
008946b4  01 50 93 e7                                      ldr r5, [r3, r1]
008946b8  64 10 9f e5                                      ldr r1, [pc, #0x64]
008946bc  0a a0 93 e7                                      ldr sl, [r3, sl]
008946c0  02 20 93 e7                                      ldr r2, [r3, r2]
008946c4  01 90 93 e7                                      ldr sb, [r3, r1]
008946c8  58 10 9f e5                                      ldr r1, [pc, #0x58]
008946cc  00 40 a0 e3                                      mov r4, #0
008946d0  0c c0 80 e2                                      add ip, r0, #0xc
008946d4  01 b0 93 e7                                      ldr fp, [r3, r1]
008946d8  08 a0 8a e2                                      add sl, sl, #8
008946dc  00 a0 80 e5                                      str sl, [r0]
008946e0  08 40 80 e5                                      str r4, [r0, #8]
008946e4  10 c0 80 e5                                      str ip, [r0, #0x10]
008946e8  04 40 c0 e5                                      strb r4, [r0, #4]
008946ec  0c c0 80 e5                                      str ip, [r0, #0xc]
008946f0  0c 80 82 e5                                      str r8, [r2, #0xc]
008946f4  10 70 82 e5                                      str r7, [r2, #0x10]
008946f8  14 60 82 e5                                      str r6, [r2, #0x14]
008946fc  20 0a 82 e8                                      stm r2, {r5, sb, fp}
00894700  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
00894704  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00894708  00 04 10 00 a0 2c 00 00 48 1a 00 00 a0 1a 00 00  .byte 0x00, 0x04, 0x10, 0x00, 0xa0, 0x2c, 0x00, 0x00, 0x48, 0x1a, 0x00, 0x00, 0xa0, 0x1a, 0x00, 0x00
00894718  44 1b 00 00 d8 25 00 00 78 15 00 00 ac 11 00 00  .byte 0x44, 0x1b, 0x00, 0x00, 0xd8, 0x25, 0x00, 0x00, 0x78, 0x15, 0x00, 0x00, 0xac, 0x11, 0x00, 0x00
00894728  68 44 00 00                                      .byte 0x68, 0x44, 0x00, 0x00

; FUNCTION 0x0089472c, declared_size=52, range_size=52, mode=arm
; class-group: vox::FileSystemStdio
; alias: _ZN3vox15FileSystemStdioD1Ev
; demangled: vox::FileSystemStdio::~FileSystemStdio()
; decoder-mode: arm
0089472c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00894730  24 20 9f e5                                      ldr r2, [pc, #0x24]
00894734  10 40 2d e9                                      push {r4, lr}
00894738  03 30 8f e0                                      add r3, pc, r3
0089473c  02 20 93 e7                                      ldr r2, [r3, r2]
00894740  00 40 a0 e1                                      mov r4, r0
00894744  08 20 82 e2                                      add r2, r2, #8
00894748  00 20 80 e5                                      str r2, [r0]
0089474c  62 fe ff eb                                      bl #0x8940dc
00894750  04 00 a0 e1                                      mov r0, r4
00894754  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00894758  58 03 10 00 44 1b 00 00                          .byte 0x58, 0x03, 0x10, 0x00, 0x44, 0x1b, 0x00, 0x00

; FUNCTION 0x00894760, declared_size=28, range_size=28, mode=arm
; class-group: vox::FileSystemStdio
; alias: _ZN3vox15FileSystemStdioD0Ev
; demangled: vox::FileSystemStdio::~FileSystemStdio()
; decoder-mode: arm
00894760  10 40 2d e9                                      push {r4, lr}
00894764  00 40 a0 e1                                      mov r4, r0
00894768  ef ff ff eb                                      bl #0x89472c
0089476c  04 00 a0 e1                                      mov r0, r4
00894770  ce e6 e9 eb                                      bl #0x30e2b0
00894774  04 00 a0 e1                                      mov r0, r4
00894778  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0089477c, declared_size=52, range_size=52, mode=arm
; class-group: vox::FileSystemStdio
; alias: _ZN3vox15FileSystemStdioD2Ev
; demangled: vox::FileSystemStdio::~FileSystemStdio()
; decoder-mode: arm
0089477c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00894780  24 20 9f e5                                      ldr r2, [pc, #0x24]
00894784  10 40 2d e9                                      push {r4, lr}
00894788  03 30 8f e0                                      add r3, pc, r3
0089478c  02 20 93 e7                                      ldr r2, [r3, r2]
00894790  00 40 a0 e1                                      mov r4, r0
00894794  08 20 82 e2                                      add r2, r2, #8
00894798  00 20 80 e5                                      str r2, [r0]
0089479c  4e fe ff eb                                      bl #0x8940dc
008947a0  04 00 a0 e1                                      mov r0, r4
008947a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008947a8  08 03 10 00 44 1b 00 00                          .byte 0x08, 0x03, 0x10, 0x00, 0x44, 0x1b, 0x00, 0x00
