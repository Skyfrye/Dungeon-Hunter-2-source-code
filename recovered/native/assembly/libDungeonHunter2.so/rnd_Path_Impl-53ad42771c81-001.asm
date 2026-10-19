; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048bd0c, declared_size=44, range_size=44, mode=arm
; class-group: rnd::Path::Impl
; alias: _ZNK3rnd4Path4Impl9IsDeadEndEv
; demangled: rnd::Path::Impl::IsDeadEnd() const
; decoder-mode: arm
0048bd0c  28 20 90 e5                                      ldr r2, [r0, #0x28]
0048bd10  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
0048bd14  01 20 82 e2                                      add r2, r2, #1
0048bd18  03 00 52 e1                                      cmp r2, r3
0048bd1c  00 00 a0 13                                      movne r0, #0
0048bd20  1e ff 2f 11                                      bxne lr
0048bd24  04 30 90 e5                                      ldr r3, [r0, #4]
0048bd28  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0048bd2c  01 00 70 e2                                      rsbs r0, r0, #1
0048bd30  00 00 a0 33                                      movlo r0, #0
0048bd34  1e ff 2f e1                                      bx lr

; FUNCTION 0x0048c130, declared_size=224, range_size=224, mode=arm
; class-group: rnd::Path::Impl
; alias: _ZN3rnd4Path4ImplC1ERKS0_PNS_4Rule4ImplE
; demangled: rnd::Path::Impl::Impl(rnd::Path const&, rnd::Rule::Impl*)
; decoder-mode: arm
0048c130  70 40 2d e9                                      push {r4, r5, r6, lr}
0048c134  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
0048c138  00 40 a0 e1                                      mov r4, r0
0048c13c  01 60 a0 e1                                      mov r6, r1
0048c140  5d ff ff eb                                      bl #0x48bebc
0048c144  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
0048c148  05 50 8f e0                                      add r5, pc, r5
0048c14c  04 00 94 e5                                      ldr r0, [r4, #4]
0048c150  03 30 95 e7                                      ldr r3, [r5, r3]
0048c154  44 60 84 e5                                      str r6, [r4, #0x44]
0048c158  08 30 83 e2                                      add r3, r3, #8
0048c15c  00 30 84 e5                                      str r3, [r4]
0048c160  7c 30 90 e5                                      ldr r3, [r0, #0x7c]
0048c164  00 00 53 e3                                      cmp r3, #0
0048c168  00 50 a0 13                                      movne r5, #0
0048c16c  0b 00 00 1a                                      bne #0x48c1a0
0048c170  1a 00 00 ea                                      b #0x48c1e0
0048c174  04 00 94 e5                                      ldr r0, [r4, #4]
0048c178  dd fe ff eb                                      bl #0x48bcf4
0048c17c  04 30 94 e5                                      ldr r3, [r4, #4]
0048c180  18 21 90 e5                                      ldr r2, [r0, #0x118]
0048c184  7c 10 93 e5                                      ldr r1, [r3, #0x7c]
0048c188  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0048c18c  a3 fe ff eb                                      bl #0x48bc20
0048c190  00 00 50 e3                                      cmp r0, #0
0048c194  0b 00 00 1a                                      bne #0x48c1c8
0048c198  04 00 94 e5                                      ldr r0, [r4, #4]
0048c19c  01 50 85 e2                                      add r5, r5, #1
0048c1a0  d3 fe ff eb                                      bl #0x48bcf4
0048c1a4  18 31 90 e5                                      ldr r3, [r0, #0x118]
0048c1a8  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
0048c1ac  02 30 63 e0                                      rsb r3, r3, r2
0048c1b0  43 01 55 e1                                      cmp r5, r3, asr #2
0048c1b4  ee ff ff 3a                                      blo #0x48c174
0048c1b8  04 30 a0 e3                                      mov r3, #4
0048c1bc  48 30 84 e5                                      str r3, [r4, #0x48]
0048c1c0  04 00 a0 e1                                      mov r0, r4
0048c1c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048c1c8  14 30 90 e5                                      ldr r3, [r0, #0x14]
0048c1cc  04 00 a0 e1                                      mov r0, r4
0048c1d0  2c 30 84 e5                                      str r3, [r4, #0x2c]
0048c1d4  04 30 a0 e3                                      mov r3, #4
0048c1d8  48 30 84 e5                                      str r3, [r4, #0x48]
0048c1dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048c1e0  c3 fe ff eb                                      bl #0x48bcf4
0048c1e4  44 30 94 e5                                      ldr r3, [r4, #0x44]
0048c1e8  84 20 93 e5                                      ldr r2, [r3, #0x84]
0048c1ec  80 10 93 e5                                      ldr r1, [r3, #0x80]
0048c1f0  34 de ff eb                                      bl #0x483ac8
0048c1f4  04 30 a0 e3                                      mov r3, #4
0048c1f8  2c 00 84 e5                                      str r0, [r4, #0x2c]
0048c1fc  48 30 84 e5                                      str r3, [r4, #0x48]
0048c200  04 00 a0 e1                                      mov r0, r4
0048c204  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048c208  48 89 50 00 c8 34 00 00                          .byte 0x48, 0x89, 0x50, 0x00, 0xc8, 0x34, 0x00, 0x00

; FUNCTION 0x0048c23c, declared_size=224, range_size=224, mode=arm
; class-group: rnd::Path::Impl
; alias: _ZN3rnd4Path4ImplC2ERKS0_PNS_4Rule4ImplE
; demangled: rnd::Path::Impl::Impl(rnd::Path const&, rnd::Rule::Impl*)
; decoder-mode: arm
0048c23c  70 40 2d e9                                      push {r4, r5, r6, lr}
0048c240  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
0048c244  00 40 a0 e1                                      mov r4, r0
0048c248  01 60 a0 e1                                      mov r6, r1
0048c24c  1a ff ff eb                                      bl #0x48bebc
0048c250  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
0048c254  05 50 8f e0                                      add r5, pc, r5
0048c258  04 00 94 e5                                      ldr r0, [r4, #4]
0048c25c  03 30 95 e7                                      ldr r3, [r5, r3]
0048c260  44 60 84 e5                                      str r6, [r4, #0x44]
0048c264  08 30 83 e2                                      add r3, r3, #8
0048c268  00 30 84 e5                                      str r3, [r4]
0048c26c  7c 30 90 e5                                      ldr r3, [r0, #0x7c]
0048c270  00 00 53 e3                                      cmp r3, #0
0048c274  00 50 a0 13                                      movne r5, #0
0048c278  0b 00 00 1a                                      bne #0x48c2ac
0048c27c  1a 00 00 ea                                      b #0x48c2ec
0048c280  04 00 94 e5                                      ldr r0, [r4, #4]
0048c284  9a fe ff eb                                      bl #0x48bcf4
0048c288  04 30 94 e5                                      ldr r3, [r4, #4]
0048c28c  18 21 90 e5                                      ldr r2, [r0, #0x118]
0048c290  7c 10 93 e5                                      ldr r1, [r3, #0x7c]
0048c294  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
0048c298  60 fe ff eb                                      bl #0x48bc20
0048c29c  00 00 50 e3                                      cmp r0, #0
0048c2a0  0b 00 00 1a                                      bne #0x48c2d4
0048c2a4  04 00 94 e5                                      ldr r0, [r4, #4]
0048c2a8  01 50 85 e2                                      add r5, r5, #1
0048c2ac  90 fe ff eb                                      bl #0x48bcf4
0048c2b0  18 31 90 e5                                      ldr r3, [r0, #0x118]
0048c2b4  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
0048c2b8  02 30 63 e0                                      rsb r3, r3, r2
0048c2bc  43 01 55 e1                                      cmp r5, r3, asr #2
0048c2c0  ee ff ff 3a                                      blo #0x48c280
0048c2c4  04 30 a0 e3                                      mov r3, #4
0048c2c8  48 30 84 e5                                      str r3, [r4, #0x48]
0048c2cc  04 00 a0 e1                                      mov r0, r4
0048c2d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048c2d4  14 30 90 e5                                      ldr r3, [r0, #0x14]
0048c2d8  04 00 a0 e1                                      mov r0, r4
0048c2dc  2c 30 84 e5                                      str r3, [r4, #0x2c]
0048c2e0  04 30 a0 e3                                      mov r3, #4
0048c2e4  48 30 84 e5                                      str r3, [r4, #0x48]
0048c2e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048c2ec  80 fe ff eb                                      bl #0x48bcf4
0048c2f0  44 30 94 e5                                      ldr r3, [r4, #0x44]
0048c2f4  84 20 93 e5                                      ldr r2, [r3, #0x84]
0048c2f8  80 10 93 e5                                      ldr r1, [r3, #0x80]
0048c2fc  f1 dd ff eb                                      bl #0x483ac8
0048c300  04 30 a0 e3                                      mov r3, #4
0048c304  2c 00 84 e5                                      str r0, [r4, #0x2c]
0048c308  48 30 84 e5                                      str r3, [r4, #0x48]
0048c30c  04 00 a0 e1                                      mov r0, r4
0048c310  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048c314  3c 88 50 00 c8 34 00 00                          .byte 0x3c, 0x88, 0x50, 0x00, 0xc8, 0x34, 0x00, 0x00

; FUNCTION 0x0048d400, declared_size=52, range_size=52, mode=arm
; class-group: rnd::Path::Impl
; alias: _ZN3rnd4Path4ImplD1Ev
; demangled: rnd::Path::Impl::~Impl()
; decoder-mode: arm
0048d400  24 30 9f e5                                      ldr r3, [pc, #0x24]
0048d404  24 20 9f e5                                      ldr r2, [pc, #0x24]
0048d408  10 40 2d e9                                      push {r4, lr}
0048d40c  03 30 8f e0                                      add r3, pc, r3
0048d410  02 20 93 e7                                      ldr r2, [r3, r2]
0048d414  00 40 a0 e1                                      mov r4, r0
0048d418  08 20 82 e2                                      add r2, r2, #8
0048d41c  00 20 80 e5                                      str r2, [r0]
0048d420  a7 ff ff eb                                      bl #0x48d2c4
0048d424  04 00 a0 e1                                      mov r0, r4
0048d428  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d42c  84 76 50 00 c8 34 00 00                          .byte 0x84, 0x76, 0x50, 0x00, 0xc8, 0x34, 0x00, 0x00

; FUNCTION 0x0048d49c, declared_size=60, range_size=60, mode=arm
; class-group: rnd::Path::Impl
; alias: _ZN3rnd4Path4ImplD0Ev
; demangled: rnd::Path::Impl::~Impl()
; decoder-mode: arm
0048d49c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0048d4a0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048d4a4  10 40 2d e9                                      push {r4, lr}
0048d4a8  03 30 8f e0                                      add r3, pc, r3
0048d4ac  02 20 93 e7                                      ldr r2, [r3, r2]
0048d4b0  00 40 a0 e1                                      mov r4, r0
0048d4b4  08 20 82 e2                                      add r2, r2, #8
0048d4b8  00 20 80 e5                                      str r2, [r0]
0048d4bc  80 ff ff eb                                      bl #0x48d2c4
0048d4c0  04 00 a0 e1                                      mov r0, r4
0048d4c4  dd 0b fa eb                                      bl #0x310440
0048d4c8  04 00 a0 e1                                      mov r0, r4
0048d4cc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d4d0  e8 75 50 00 c8 34 00 00                          .byte 0xe8, 0x75, 0x50, 0x00, 0xc8, 0x34, 0x00, 0x00

; FUNCTION 0x0048f05c, declared_size=512, range_size=512, mode=arm
; class-group: rnd::Path::Impl
; alias: _ZN3rnd4Path4Impl7AddExitERSt6vectorISt4pairIPKNS_4ExitENS_8ListElemEESaIS8_EES6_i
; demangled: rnd::Path::Impl::AddExit(std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >&, rnd::Exit const*, int)
; decoder-mode: arm
0048f05c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048f060  ec 41 9f e5                                      ldr r4, [pc, #0x1ec]
0048f064  ec 61 9f e5                                      ldr r6, [pc, #0x1ec]
0048f068  02 70 a0 e1                                      mov r7, r2
0048f06c  04 40 8f e0                                      add r4, pc, r4
0048f070  06 c0 94 e7                                      ldr ip, [r4, r6]
0048f074  95 df 4d e2                                      sub sp, sp, #0x254
0048f078  25 5e 8d e2                                      add r5, sp, #0x250
0048f07c  00 20 9c e5                                      ldr r2, [ip]
0048f080  00 90 a0 e1                                      mov sb, r0
0048f084  04 30 8d e5                                      str r3, [sp, #4]
0048f088  4c 22 8d e5                                      str r2, [sp, #0x24c]
0048f08c  00 20 a0 e3                                      mov r2, #0
0048f090  48 21 25 e5                                      str r2, [r5, #-0x148]!
0048f094  04 80 85 e2                                      add r8, r5, #4
0048f098  08 00 a0 e1                                      mov r0, r8
0048f09c  01 a0 a0 e1                                      mov sl, r1
0048f0a0  f6 fb ff eb                                      bl #0x48e080
0048f0a4  04 30 97 e5                                      ldr r3, [r7, #4]
0048f0a8  54 20 93 e5                                      ldr r2, [r3, #0x54]
0048f0ac  01 00 52 e3                                      cmp r2, #1
0048f0b0  0e 00 00 0a                                      beq #0x48f0f0
0048f0b4  08 31 9d e5                                      ldr r3, [sp, #0x108]
0048f0b8  00 00 53 e3                                      cmp r3, #0
0048f0bc  02 00 00 0a                                      beq #0x48f0cc
0048f0c0  0a 00 a0 e1                                      mov r0, sl
0048f0c4  05 10 a0 e1                                      mov r1, r5
0048f0c8  96 ff ff eb                                      bl #0x48ef28
0048f0cc  04 00 85 e2                                      add r0, r5, #4
0048f0d0  3e e4 ff eb                                      bl #0x4881d0
0048f0d4  06 30 94 e7                                      ldr r3, [r4, r6]
0048f0d8  4c 22 9d e5                                      ldr r2, [sp, #0x24c]
0048f0dc  00 30 93 e5                                      ldr r3, [r3]
0048f0e0  03 00 52 e1                                      cmp r2, r3
0048f0e4  59 00 00 1a                                      bne #0x48f250
0048f0e8  95 df 8d e2                                      add sp, sp, #0x254
0048f0ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048f0f0  58 20 93 e5                                      ldr r2, [r3, #0x58]
0048f0f4  01 00 52 e3                                      cmp r2, #1
0048f0f8  ed ff ff 1a                                      bne #0x48f0b4
0048f0fc  09 00 a0 e1                                      mov r0, sb
0048f100  5c b0 93 e5                                      ldr fp, [r3, #0x5c]
0048f104  00 f3 ff eb                                      bl #0x48bd0c
0048f108  00 00 50 e3                                      cmp r0, #0
0048f10c  1a 00 00 0a                                      beq #0x48f17c
0048f110  01 00 5b e3                                      cmp fp, #1
0048f114  e6 ff ff 1a                                      bne #0x48f0b4
0048f118  04 30 99 e5                                      ldr r3, [sb, #4]
0048f11c  04 20 9d e5                                      ldr r2, [sp, #4]
0048f120  7f 9f 8d e2                                      add sb, sp, #0x1fc
0048f124  68 30 93 e5                                      ldr r3, [r3, #0x68]
0048f128  50 10 a0 e3                                      mov r1, #0x50
0048f12c  09 00 a0 e1                                      mov r0, sb
0048f130  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0048f134  91 32 21 e0                                      mla r1, r1, r2, r3
0048f138  50 fc ff eb                                      bl #0x48e280
0048f13c  25 3e 8d e2                                      add r3, sp, #0x250
0048f140  9c 71 23 e5                                      str r7, [r3, #-0x19c]!
0048f144  04 70 83 e2                                      add r7, r3, #4
0048f148  09 10 a0 e1                                      mov r1, sb
0048f14c  07 00 a0 e1                                      mov r0, r7
0048f150  4a fc ff eb                                      bl #0x48e280
0048f154  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
0048f158  08 00 a0 e1                                      mov r0, r8
0048f15c  07 10 a0 e1                                      mov r1, r7
0048f160  08 31 8d e5                                      str r3, [sp, #0x108]
0048f164  d4 f3 ff eb                                      bl #0x48c0bc
0048f168  07 00 a0 e1                                      mov r0, r7
0048f16c  17 e4 ff eb                                      bl #0x4881d0
0048f170  09 00 a0 e1                                      mov r0, sb
0048f174  15 e4 ff eb                                      bl #0x4881d0
0048f178  cd ff ff ea                                      b #0x48f0b4
0048f17c  02 00 5b e3                                      cmp fp, #2
0048f180  cb ff ff 1a                                      bne #0x48f0b4
0048f184  44 30 99 e5                                      ldr r3, [sb, #0x44]
0048f188  8d 30 d3 e5                                      ldrb r3, [r3, #0x8d]
0048f18c  00 00 53 e3                                      cmp r3, #0
0048f190  1b 00 00 0a                                      beq #0x48f204
0048f194  04 00 97 e5                                      ldr r0, [r7, #4]
0048f198  fa e9 ff eb                                      bl #0x489988
0048f19c  00 00 50 e3                                      cmp r0, #0
0048f1a0  c3 ff ff 0a                                      beq #0x48f0b4
0048f1a4  04 30 99 e5                                      ldr r3, [sb, #4]
0048f1a8  04 20 9d e5                                      ldr r2, [sp, #4]
0048f1ac  6b 9f 8d e2                                      add sb, sp, #0x1ac
0048f1b0  68 30 93 e5                                      ldr r3, [r3, #0x68]
0048f1b4  50 10 a0 e3                                      mov r1, #0x50
0048f1b8  64 b0 8d e2                                      add fp, sp, #0x64
0048f1bc  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0048f1c0  09 00 a0 e1                                      mov r0, sb
0048f1c4  91 32 21 e0                                      mla r1, r1, r2, r3
0048f1c8  2c fc ff eb                                      bl #0x48e280
0048f1cc  09 10 a0 e1                                      mov r1, sb
0048f1d0  0b 00 a0 e1                                      mov r0, fp
0048f1d4  60 70 8d e5                                      str r7, [sp, #0x60]
0048f1d8  28 fc ff eb                                      bl #0x48e280
0048f1dc  60 30 9d e5                                      ldr r3, [sp, #0x60]
0048f1e0  0b 10 a0 e1                                      mov r1, fp
0048f1e4  08 00 a0 e1                                      mov r0, r8
0048f1e8  08 31 8d e5                                      str r3, [sp, #0x108]
0048f1ec  b2 f3 ff eb                                      bl #0x48c0bc
0048f1f0  0b 00 a0 e1                                      mov r0, fp
0048f1f4  f5 e3 ff eb                                      bl #0x4881d0
0048f1f8  09 00 a0 e1                                      mov r0, sb
0048f1fc  f3 e3 ff eb                                      bl #0x4881d0
0048f200  ab ff ff ea                                      b #0x48f0b4
0048f204  04 30 99 e5                                      ldr r3, [sb, #4]
0048f208  04 20 9d e5                                      ldr r2, [sp, #4]
0048f20c  57 9f 8d e2                                      add sb, sp, #0x15c
0048f210  68 30 93 e5                                      ldr r3, [r3, #0x68]
0048f214  50 10 a0 e3                                      mov r1, #0x50
0048f218  09 00 a0 e1                                      mov r0, sb
0048f21c  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0048f220  91 32 21 e0                                      mla r1, r1, r2, r3
0048f224  15 fc ff eb                                      bl #0x48e280
0048f228  25 3e 8d e2                                      add r3, sp, #0x250
0048f22c  44 72 23 e5                                      str r7, [r3, #-0x244]!
0048f230  04 70 83 e2                                      add r7, r3, #4
0048f234  09 10 a0 e1                                      mov r1, sb
0048f238  07 00 a0 e1                                      mov r0, r7
0048f23c  0f fc ff eb                                      bl #0x48e280
0048f240  08 00 a0 e1                                      mov r0, r8
0048f244  07 10 a0 e1                                      mov r1, r7
0048f248  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0048f24c  c3 ff ff ea                                      b #0x48f160
0048f250  2e fc f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0048f254  24 5a 50 00 ac 40 00 00                          .byte 0x24, 0x5a, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0048f25c, declared_size=544, range_size=544, mode=arm
; class-group: rnd::Path::Impl
; alias: _ZN3rnd4Path4Impl11FilterExitsERSt6vectorISt4pairIPKNS_4ExitENS_8ListElemEESaIS8_EERPNS_8ListRuleE
; demangled: rnd::Path::Impl::FilterExits(std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >&, rnd::ListRule*&)
; decoder-mode: arm
0048f25c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048f260  24 d0 4d e2                                      sub sp, sp, #0x24
0048f264  04 00 8d e5                                      str r0, [sp, #4]
0048f268  04 30 90 e5                                      ldr r3, [r0, #4]
0048f26c  00 00 a0 e3                                      mov r0, #0
0048f270  14 00 8d e5                                      str r0, [sp, #0x14]
0048f274  18 00 8d e5                                      str r0, [sp, #0x18]
0048f278  1c 00 8d e5                                      str r0, [sp, #0x1c]
0048f27c  68 30 93 e5                                      ldr r3, [r3, #0x68]
0048f280  01 b0 a0 e1                                      mov fp, r1
0048f284  0c 20 8d e5                                      str r2, [sp, #0xc]
0048f288  00 00 53 e1                                      cmp r3, r0
0048f28c  75 00 00 0a                                      beq #0x48f468
0048f290  c0 00 91 e8                                      ldm r1, {r6, r7}
0048f294  07 30 a0 e1                                      mov r3, r7
0048f298  07 00 56 e1                                      cmp r6, r7
0048f29c  14 20 8d 02                                      addeq r2, sp, #0x14
0048f2a0  08 20 8d 05                                      streq r2, [sp, #8]
0048f2a4  3f 00 00 0a                                      beq #0x48f3a8
0048f2a8  14 30 8d e2                                      add r3, sp, #0x14
0048f2ac  08 30 8d e5                                      str r3, [sp, #8]
0048f2b0  50 90 a0 e3                                      mov sb, #0x50
0048f2b4  06 a0 a0 e1                                      mov sl, r6
0048f2b8  00 50 9a e5                                      ldr r5, [sl]
0048f2bc  00 00 55 e3                                      cmp r5, #0
0048f2c0  33 00 00 0a                                      beq #0x48f394
0048f2c4  04 30 95 e5                                      ldr r3, [r5, #4]
0048f2c8  00 00 53 e3                                      cmp r3, #0
0048f2cc  30 00 00 0a                                      beq #0x48f394
0048f2d0  04 00 9d e5                                      ldr r0, [sp, #4]
0048f2d4  04 80 90 e5                                      ldr r8, [r0, #4]
0048f2d8  6c 40 98 e5                                      ldr r4, [r8, #0x6c]
0048f2dc  01 00 74 e3                                      cmn r4, #1
0048f2e0  3f 00 00 1a                                      bne #0x48f3e4
0048f2e4  68 20 98 e5                                      ldr r2, [r8, #0x68]
0048f2e8  20 10 92 e5                                      ldr r1, [r2, #0x20]
0048f2ec  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
0048f2f0  01 10 62 e0                                      rsb r1, r2, r1
0048f2f4  41 12 a0 e1                                      asr r1, r1, #4
0048f2f8  81 00 81 e0                                      add r0, r1, r1, lsl #1
0048f2fc  00 02 80 e0                                      add r0, r0, r0, lsl #4
0048f300  00 04 80 e0                                      add r0, r0, r0, lsl #8
0048f304  00 08 80 e0                                      add r0, r0, r0, lsl #16
0048f308  00 11 81 e0                                      add r1, r1, r0, lsl #2
0048f30c  00 00 51 e3                                      cmp r1, #0
0048f310  1f 00 00 0a                                      beq #0x48f394
0048f314  00 00 a0 e3                                      mov r0, #0
0048f318  00 40 a0 e1                                      mov r4, r0
0048f31c  00 00 00 ea                                      b #0x48f324
0048f320  04 30 95 e5                                      ldr r3, [r5, #4]
0048f324  99 20 22 e0                                      mla r2, sb, r0, r2
0048f328  14 70 93 e5                                      ldr r7, [r3, #0x14]
0048f32c  18 10 92 e5                                      ldr r1, [r2, #0x18]
0048f330  14 60 92 e5                                      ldr r6, [r2, #0x14]
0048f334  18 00 93 e5                                      ldr r0, [r3, #0x18]
0048f338  06 60 61 e0                                      rsb r6, r1, r6
0048f33c  07 70 60 e0                                      rsb r7, r0, r7
0048f340  07 00 56 e1                                      cmp r6, r7
0048f344  06 20 a0 b1                                      movlt r2, r6
0048f348  07 20 a0 a1                                      movge r2, r7
0048f34c  a3 fc f9 eb                                      bl #0x30e5e0
0048f350  00 00 50 e3                                      cmp r0, #0
0048f354  39 00 00 0a                                      beq #0x48f440
0048f358  68 20 98 e5                                      ldr r2, [r8, #0x68]
0048f35c  01 40 84 e2                                      add r4, r4, #1
0048f360  04 00 a0 e1                                      mov r0, r4
0048f364  20 30 92 e5                                      ldr r3, [r2, #0x20]
0048f368  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
0048f36c  03 30 62 e0                                      rsb r3, r2, r3
0048f370  43 32 a0 e1                                      asr r3, r3, #4
0048f374  83 10 83 e0                                      add r1, r3, r3, lsl #1
0048f378  01 12 81 e0                                      add r1, r1, r1, lsl #4
0048f37c  01 14 81 e0                                      add r1, r1, r1, lsl #8
0048f380  01 18 81 e0                                      add r1, r1, r1, lsl #16
0048f384  01 31 83 e0                                      add r3, r3, r1, lsl #2
0048f388  04 00 53 e1                                      cmp r3, r4
0048f38c  e3 ff ff 8a                                      bhi #0x48f320
0048f390  04 70 9b e5                                      ldr r7, [fp, #4]
0048f394  54 a0 8a e2                                      add sl, sl, #0x54
0048f398  07 00 5a e1                                      cmp sl, r7
0048f39c  c5 ff ff 1a                                      bne #0x48f2b8
0048f3a0  00 30 9b e5                                      ldr r3, [fp]
0048f3a4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0048f3a8  18 10 9d e5                                      ldr r1, [sp, #0x18]
0048f3ac  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0048f3b0  08 c0 9b e5                                      ldr ip, [fp, #8]
0048f3b4  07 00 8b e8                                      stm fp, {r0, r1, r2}
0048f3b8  04 00 9d e5                                      ldr r0, [sp, #4]
0048f3bc  0b 10 a0 e1                                      mov r1, fp
0048f3c0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0048f3c4  14 30 8d e5                                      str r3, [sp, #0x14]
0048f3c8  18 70 8d e5                                      str r7, [sp, #0x18]
0048f3cc  1c c0 8d e5                                      str ip, [sp, #0x1c]
0048f3d0  ae fc ff eb                                      bl #0x48e690
0048f3d4  08 00 9d e5                                      ldr r0, [sp, #8]
0048f3d8  46 f9 ff eb                                      bl #0x48d8f8
0048f3dc  24 d0 8d e2                                      add sp, sp, #0x24
0048f3e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048f3e4  68 20 98 e5                                      ldr r2, [r8, #0x68]
0048f3e8  18 00 93 e5                                      ldr r0, [r3, #0x18]
0048f3ec  14 80 93 e5                                      ldr r8, [r3, #0x14]
0048f3f0  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
0048f3f4  08 80 60 e0                                      rsb r8, r0, r8
0048f3f8  99 34 23 e0                                      mla r3, sb, r4, r3
0048f3fc  14 60 93 e5                                      ldr r6, [r3, #0x14]
0048f400  18 10 93 e5                                      ldr r1, [r3, #0x18]
0048f404  06 60 61 e0                                      rsb r6, r1, r6
0048f408  08 00 56 e1                                      cmp r6, r8
0048f40c  06 20 a0 b1                                      movlt r2, r6
0048f410  08 20 a0 a1                                      movge r2, r8
0048f414  71 fc f9 eb                                      bl #0x30e5e0
0048f418  00 00 50 e3                                      cmp r0, #0
0048f41c  dc ff ff 1a                                      bne #0x48f394
0048f420  06 00 58 e1                                      cmp r8, r6
0048f424  da ff ff ba                                      blt #0x48f394
0048f428  d9 ff ff ca                                      bgt #0x48f394
0048f42c  05 20 a0 e1                                      mov r2, r5
0048f430  04 30 a0 e1                                      mov r3, r4
0048f434  03 00 9d e9                                      ldmib sp, {r0, r1}
0048f438  07 ff ff eb                                      bl #0x48f05c
0048f43c  d3 ff ff ea                                      b #0x48f390
0048f440  06 00 57 e1                                      cmp r7, r6
0048f444  c3 ff ff ba                                      blt #0x48f358
0048f448  c2 ff ff ca                                      bgt #0x48f358
0048f44c  05 20 a0 e1                                      mov r2, r5
0048f450  03 00 9d e9                                      ldmib sp, {r0, r1}
0048f454  04 30 a0 e1                                      mov r3, r4
0048f458  ff fe ff eb                                      bl #0x48f05c
0048f45c  04 20 9d e5                                      ldr r2, [sp, #4]
0048f460  04 80 92 e5                                      ldr r8, [r2, #4]
0048f464  bb ff ff ea                                      b #0x48f358
0048f468  14 20 8d e2                                      add r2, sp, #0x14
0048f46c  03 00 a0 e1                                      mov r0, r3
0048f470  88 00 91 e8                                      ldm r1, {r3, r7}
0048f474  08 20 8d e5                                      str r2, [sp, #8]
0048f478  ca ff ff ea                                      b #0x48f3a8

; FUNCTION 0x0048fd64, declared_size=1440, range_size=1440, mode=arm
; class-group: rnd::Path::Impl
; alias: _ZN3rnd4Path4Impl7OneStepEPNS_4TileEPKNS_4ExitES6_
; demangled: rnd::Path::Impl::OneStep(rnd::Tile*, rnd::Exit const*, rnd::Exit const*)
; decoder-mode: arm
0048fd64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048fd68  84 c5 9f e5                                      ldr ip, [pc, #0x584]
0048fd6c  84 e5 9f e5                                      ldr lr, [pc, #0x584]
0048fd70  a3 df 4d e2                                      sub sp, sp, #0x28c
0048fd74  0c c0 8f e0                                      add ip, pc, ip
0048fd78  20 c0 8d e5                                      str ip, [sp, #0x20]
0048fd7c  0e c0 9c e7                                      ldr ip, [ip, lr]
0048fd80  30 e0 8d e5                                      str lr, [sp, #0x30]
0048fd84  00 40 a0 e1                                      mov r4, r0
0048fd88  2c e0 94 e5                                      ldr lr, [r4, #0x2c]
0048fd8c  28 00 90 e5                                      ldr r0, [r0, #0x28]
0048fd90  00 c0 9c e5                                      ldr ip, [ip]
0048fd94  1c 10 8d e5                                      str r1, [sp, #0x1c]
0048fd98  0e 00 50 e1                                      cmp r0, lr
0048fd9c  84 c2 8d e5                                      str ip, [sp, #0x284]
0048fda0  02 b0 a0 e1                                      mov fp, r2
0048fda4  28 30 8d e5                                      str r3, [sp, #0x28]
0048fda8  12 00 00 ba                                      blt #0x48fdf8
0048fdac  30 30 91 e5                                      ldr r3, [r1, #0x30]
0048fdb0  5c 20 93 e5                                      ldr r2, [r3, #0x5c]
0048fdb4  02 00 52 e3                                      cmp r2, #2
0048fdb8  27 01 00 0a                                      beq #0x49025c
0048fdbc  00 20 a0 e3                                      mov r2, #0
0048fdc0  04 00 a0 e1                                      mov r0, r4
0048fdc4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0048fdc8  e1 fe ff eb                                      bl #0x48f954
0048fdcc  00 40 a0 e1                                      mov r4, r0
0048fdd0  30 00 9d e5                                      ldr r0, [sp, #0x30]
0048fdd4  20 10 9d e5                                      ldr r1, [sp, #0x20]
0048fdd8  84 22 9d e5                                      ldr r2, [sp, #0x284]
0048fddc  00 30 91 e7                                      ldr r3, [r1, r0]
0048fde0  04 00 a0 e1                                      mov r0, r4
0048fde4  00 30 93 e5                                      ldr r3, [r3]
0048fde8  03 00 52 e1                                      cmp r2, r3
0048fdec  3f 01 00 1a                                      bne #0x4902f0
0048fdf0  a3 df 8d e2                                      add sp, sp, #0x28c
0048fdf4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048fdf8  14 20 92 e5                                      ldr r2, [r2, #0x14]
0048fdfc  00 00 50 e3                                      cmp r0, #0
0048fe00  f4 34 9f e5                                      ldr r3, [pc, #0x4f4]
0048fe04  20 00 9d e5                                      ldr r0, [sp, #0x20]
0048fe08  00 20 92 e5                                      ldr r2, [r2]
0048fe0c  03 30 90 e7                                      ldr r3, [r0, r3]
0048fe10  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
0048fe14  2c 20 8d e5                                      str r2, [sp, #0x2c]
0048fe18  44 80 94 15                                      ldrne r8, [r4, #0x44]
0048fe1c  ea 00 00 0a                                      beq #0x4901cc
0048fe20  28 a0 9b e5                                      ldr sl, [fp, #0x28]
0048fe24  00 50 a0 e3                                      mov r5, #0
0048fe28  38 50 8d e5                                      str r5, [sp, #0x38]
0048fe2c  05 00 5a e1                                      cmp sl, r5
0048fe30  3c 50 8d e5                                      str r5, [sp, #0x3c]
0048fe34  40 50 8d e5                                      str r5, [sp, #0x40]
0048fe38  21 01 00 da                                      ble #0x4902c4
0048fe3c  f0 00 8d e2                                      add r0, sp, #0xf0
0048fe40  9c e0 8d e2                                      add lr, sp, #0x9c
0048fe44  00 10 e0 e3                                      mvn r1, #0
0048fe48  38 20 8d e2                                      add r2, sp, #0x38
0048fe4c  8d 3f 8d e2                                      add r3, sp, #0x234
0048fe50  04 c0 80 e2                                      add ip, r0, #4
0048fe54  14 e0 8d e5                                      str lr, [sp, #0x14]
0048fe58  24 00 8d e5                                      str r0, [sp, #0x24]
0048fe5c  0b 60 a0 e1                                      mov r6, fp
0048fe60  34 10 8d e5                                      str r1, [sp, #0x34]
0048fe64  08 20 8d e5                                      str r2, [sp, #8]
0048fe68  79 7f 8d e2                                      add r7, sp, #0x1e4
0048fe6c  04 90 8e e2                                      add sb, lr, #4
0048fe70  10 30 8d e5                                      str r3, [sp, #0x10]
0048fe74  18 c0 8d e5                                      str ip, [sp, #0x18]
0048fe78  0c 40 8d e5                                      str r4, [sp, #0xc]
0048fe7c  14 00 00 ea                                      b #0x48fed4
0048fe80  2c 40 96 e5                                      ldr r4, [r6, #0x2c]
0048fe84  07 00 a0 e1                                      mov r0, r7
0048fe88  7c f8 ff eb                                      bl #0x48e080
0048fe8c  07 10 a0 e1                                      mov r1, r7
0048fe90  09 00 a0 e1                                      mov r0, sb
0048fe94  9c 40 8d e5                                      str r4, [sp, #0x9c]
0048fe98  f8 f8 ff eb                                      bl #0x48e280
0048fe9c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0048fea0  08 00 9d e5                                      ldr r0, [sp, #8]
0048fea4  1f fc ff eb                                      bl #0x48ef28
0048fea8  09 00 a0 e1                                      mov r0, sb
0048feac  c7 e0 ff eb                                      bl #0x4881d0
0048feb0  07 00 a0 e1                                      mov r0, r7
0048feb4  c5 e0 ff eb                                      bl #0x4881d0
0048feb8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0048febc  28 a0 9b e5                                      ldr sl, [fp, #0x28]
0048fec0  44 80 90 e5                                      ldr r8, [r0, #0x44]
0048fec4  01 50 85 e2                                      add r5, r5, #1
0048fec8  05 00 5a e1                                      cmp sl, r5
0048fecc  04 60 86 e2                                      add r6, r6, #4
0048fed0  22 00 00 da                                      ble #0x48ff60
0048fed4  6c 30 98 e5                                      ldr r3, [r8, #0x6c]
0048fed8  01 00 73 e3                                      cmn r3, #1
0048fedc  e7 ff ff 1a                                      bne #0x48fe80
0048fee0  2c 40 96 e5                                      ldr r4, [r6, #0x2c]
0048fee4  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
0048fee8  04 10 94 e5                                      ldr r1, [r4, #4]
0048feec  30 30 9e e5                                      ldr r3, [lr, #0x30]
0048fef0  14 20 93 e5                                      ldr r2, [r3, #0x14]
0048fef4  18 00 93 e5                                      ldr r0, [r3, #0x18]
0048fef8  14 30 91 e5                                      ldr r3, [r1, #0x14]
0048fefc  18 10 91 e5                                      ldr r1, [r1, #0x18]
0048ff00  02 20 60 e0                                      rsb r2, r0, r2
0048ff04  03 30 61 e0                                      rsb r3, r1, r3
0048ff08  03 00 52 e1                                      cmp r2, r3
0048ff0c  a2 00 00 0a                                      beq #0x49019c
0048ff10  10 00 9d e5                                      ldr r0, [sp, #0x10]
0048ff14  59 f8 ff eb                                      bl #0x48e080
0048ff18  10 10 9d e5                                      ldr r1, [sp, #0x10]
0048ff1c  18 00 9d e5                                      ldr r0, [sp, #0x18]
0048ff20  f0 40 8d e5                                      str r4, [sp, #0xf0]
0048ff24  d5 f8 ff eb                                      bl #0x48e280
0048ff28  24 10 9d e5                                      ldr r1, [sp, #0x24]
0048ff2c  08 00 9d e5                                      ldr r0, [sp, #8]
0048ff30  fc fb ff eb                                      bl #0x48ef28
0048ff34  18 00 9d e5                                      ldr r0, [sp, #0x18]
0048ff38  a4 e0 ff eb                                      bl #0x4881d0
0048ff3c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0048ff40  a2 e0 ff eb                                      bl #0x4881d0
0048ff44  28 a0 9b e5                                      ldr sl, [fp, #0x28]
0048ff48  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0048ff4c  01 50 85 e2                                      add r5, r5, #1
0048ff50  05 00 5a e1                                      cmp sl, r5
0048ff54  44 80 92 e5                                      ldr r8, [r2, #0x44]
0048ff58  04 60 86 e2                                      add r6, r6, #4
0048ff5c  dc ff ff ca                                      bgt #0x48fed4
0048ff60  0c 40 9d e5                                      ldr r4, [sp, #0xc]
0048ff64  68 10 98 e5                                      ldr r1, [r8, #0x68]
0048ff68  a2 2f 8d e2                                      add r2, sp, #0x288
0048ff6c  00 30 94 e5                                      ldr r3, [r4]
0048ff70  04 00 a0 e1                                      mov r0, r4
0048ff74  44 12 22 e5                                      str r1, [r2, #-0x244]!
0048ff78  08 10 9d e5                                      ldr r1, [sp, #8]
0048ff7c  0f e0 a0 e1                                      mov lr, pc
0048ff80  08 f0 93 e5                                      ldr pc, [r3, #8]
0048ff84  34 10 9d e5                                      ldr r1, [sp, #0x34]
0048ff88  01 00 71 e3                                      cmn r1, #1
0048ff8c  36 00 00 0a                                      beq #0x49006c
0048ff90  44 70 9d e5                                      ldr r7, [sp, #0x44]
0048ff94  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
0048ff98  20 30 97 e5                                      ldr r3, [r7, #0x20]
0048ff9c  03 30 62 e0                                      rsb r3, r2, r3
0048ffa0  43 32 a0 e1                                      asr r3, r3, #4
0048ffa4  83 10 83 e0                                      add r1, r3, r3, lsl #1
0048ffa8  01 12 81 e0                                      add r1, r1, r1, lsl #4
0048ffac  01 14 81 e0                                      add r1, r1, r1, lsl #8
0048ffb0  01 18 81 e0                                      add r1, r1, r1, lsl #16
0048ffb4  01 31 83 e0                                      add r3, r3, r1, lsl #2
0048ffb8  00 00 53 e3                                      cmp r3, #0
0048ffbc  2a 00 00 0a                                      beq #0x49006c
0048ffc0  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0048ffc4  00 60 a0 e3                                      mov r6, #0
0048ffc8  65 ef 8d e2                                      add lr, sp, #0x194
0048ffcc  0c 31 8b e0                                      add r3, fp, ip, lsl #2
0048ffd0  48 00 8d e2                                      add r0, sp, #0x48
0048ffd4  4c 10 8d e2                                      add r1, sp, #0x4c
0048ffd8  0c 40 8d e5                                      str r4, [sp, #0xc]
0048ffdc  2c 90 83 e2                                      add sb, r3, #0x2c
0048ffe0  06 50 a0 e1                                      mov r5, r6
0048ffe4  10 e0 8d e5                                      str lr, [sp, #0x10]
0048ffe8  18 00 8d e5                                      str r0, [sp, #0x18]
0048ffec  14 10 8d e5                                      str r1, [sp, #0x14]
0048fff0  06 40 a0 e1                                      mov r4, r6
0048fff4  00 a0 99 e5                                      ldr sl, [sb]
0048fff8  50 30 a0 e3                                      mov r3, #0x50
0048fffc  93 24 24 e0                                      mla r4, r3, r4, r2
00490000  04 30 9a e5                                      ldr r3, [sl, #4]
00490004  18 00 94 e5                                      ldr r0, [r4, #0x18]
00490008  14 80 94 e5                                      ldr r8, [r4, #0x14]
0049000c  14 60 93 e5                                      ldr r6, [r3, #0x14]
00490010  18 10 93 e5                                      ldr r1, [r3, #0x18]
00490014  08 80 60 e0                                      rsb r8, r0, r8
00490018  06 60 61 e0                                      rsb r6, r1, r6
0049001c  08 00 56 e1                                      cmp r6, r8
00490020  06 20 a0 b1                                      movlt r2, r6
00490024  08 20 a0 a1                                      movge r2, r8
00490028  6c f9 f9 eb                                      bl #0x30e5e0
0049002c  00 00 50 e3                                      cmp r0, #0
00490030  90 00 00 0a                                      beq #0x490278
00490034  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
00490038  20 30 97 e5                                      ldr r3, [r7, #0x20]
0049003c  01 50 85 e2                                      add r5, r5, #1
00490040  05 40 a0 e1                                      mov r4, r5
00490044  03 30 62 e0                                      rsb r3, r2, r3
00490048  43 32 a0 e1                                      asr r3, r3, #4
0049004c  83 10 83 e0                                      add r1, r3, r3, lsl #1
00490050  01 12 81 e0                                      add r1, r1, r1, lsl #4
00490054  01 14 81 e0                                      add r1, r1, r1, lsl #8
00490058  01 18 81 e0                                      add r1, r1, r1, lsl #16
0049005c  01 11 83 e0                                      add r1, r3, r1, lsl #2
00490060  05 00 51 e1                                      cmp r1, r5
00490064  e2 ff ff 8a                                      bhi #0x48fff4
00490068  0c 40 9d e5                                      ldr r4, [sp, #0xc]
0049006c  38 50 9d e5                                      ldr r5, [sp, #0x38]
00490070  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
00490074  0e 00 55 e1                                      cmp r5, lr
00490078  43 00 00 0a                                      beq #0x49018c
0049007c  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00490080  78 a2 9f e5                                      ldr sl, [pc, #0x278]
00490084  51 8f 8d e2                                      add r8, sp, #0x144
00490088  0c 92 a0 e1                                      lsl sb, ip, #4
0049008c  48 00 94 e5                                      ldr r0, [r4, #0x48]
00490090  00 60 95 e5                                      ldr r6, [r5]
00490094  04 00 50 e3                                      cmp r0, #4
00490098  11 00 00 0a                                      beq #0x4900e4
0049009c  04 20 96 e5                                      ldr r2, [r6, #4]
004900a0  5c c0 92 e5                                      ldr ip, [r2, #0x5c]
004900a4  00 00 5c e3                                      cmp ip, #0
004900a8  0d 00 00 da                                      ble #0x4900e4
004900ac  74 30 92 e5                                      ldr r3, [r2, #0x74]
004900b0  00 30 93 e5                                      ldr r3, [r3]
004900b4  00 00 53 e1                                      cmp r3, r0
004900b8  00 30 a0 13                                      movne r3, #0
004900bc  05 00 00 1a                                      bne #0x4900d8
004900c0  53 00 00 ea                                      b #0x490214
004900c4  a0 11 92 e5                                      ldr r1, [r2, #0x1a0]
004900c8  4b 2f 82 e2                                      add r2, r2, #0x12c
004900cc  00 10 91 e5                                      ldr r1, [r1]
004900d0  00 00 51 e1                                      cmp r1, r0
004900d4  4e 00 00 0a                                      beq #0x490214
004900d8  01 30 83 e2                                      add r3, r3, #1
004900dc  0c 00 53 e1                                      cmp r3, ip
004900e0  f7 ff ff 1a                                      bne #0x4900c4
004900e4  04 10 85 e2                                      add r1, r5, #4
004900e8  08 00 a0 e1                                      mov r0, r8
004900ec  63 f8 ff eb                                      bl #0x48e280
004900f0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
004900f4  28 10 9d e5                                      ldr r1, [sp, #0x28]
004900f8  0b 20 a0 e1                                      mov r2, fp
004900fc  06 30 a0 e1                                      mov r3, r6
00490100  00 80 8d e5                                      str r8, [sp]
00490104  69 06 00 eb                                      bl #0x491ab0
00490108  00 70 50 e2                                      subs r7, r0, #0
0049010c  18 00 00 0a                                      beq #0x490174
00490110  30 30 97 e5                                      ldr r3, [r7, #0x30]
00490114  5c 30 93 e5                                      ldr r3, [r3, #0x5c]
00490118  01 00 53 e3                                      cmp r3, #1
0049011c  4a 00 00 0a                                      beq #0x49024c
00490120  28 30 94 e5                                      ldr r3, [r4, #0x28]
00490124  01 30 83 e2                                      add r3, r3, #1
00490128  28 30 84 e5                                      str r3, [r4, #0x28]
0049012c  30 30 97 e5                                      ldr r3, [r7, #0x30]
00490130  5c 20 93 e5                                      ldr r2, [r3, #0x5c]
00490134  02 00 52 e3                                      cmp r2, #2
00490138  1c 00 00 0a                                      beq #0x4901b0
0049013c  00 20 a0 e3                                      mov r2, #0
00490140  06 30 a0 e1                                      mov r3, r6
00490144  00 c0 94 e5                                      ldr ip, [r4]
00490148  04 00 a0 e1                                      mov r0, r4
0049014c  07 10 a0 e1                                      mov r1, r7
00490150  0f e0 a0 e1                                      mov lr, pc
00490154  0c f0 9c e5                                      ldr pc, [ip, #0xc]
00490158  00 00 50 e3                                      cmp r0, #0
0049015c  3a 00 00 1a                                      bne #0x49024c
00490160  28 30 94 e5                                      ldr r3, [r4, #0x28]
00490164  07 00 a0 e1                                      mov r0, r7
00490168  01 30 43 e2                                      sub r3, r3, #1
0049016c  28 30 84 e5                                      str r3, [r4, #0x28]
00490170  cc 05 00 eb                                      bl #0x4918a8
00490174  08 00 a0 e1                                      mov r0, r8
00490178  14 e0 ff eb                                      bl #0x4881d0
0049017c  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
00490180  54 50 85 e2                                      add r5, r5, #0x54
00490184  0e 00 55 e1                                      cmp r5, lr
00490188  bf ff ff 1a                                      bne #0x49008c
0049018c  00 40 a0 e3                                      mov r4, #0
00490190  08 00 9d e5                                      ldr r0, [sp, #8]
00490194  d7 f5 ff eb                                      bl #0x48d8f8
00490198  0c ff ff ea                                      b #0x48fdd0
0049019c  0f f9 f9 eb                                      bl #0x30e5e0
004901a0  00 00 50 e3                                      cmp r0, #0
004901a4  34 50 8d 05                                      streq r5, [sp, #0x34]
004901a8  58 ff ff 1a                                      bne #0x48ff10
004901ac  44 ff ff ea                                      b #0x48fec4
004901b0  60 20 83 e2                                      add r2, r3, #0x60
004901b4  02 00 56 e1                                      cmp r6, r2
004901b8  e0 ff ff 1a                                      bne #0x490140
004901bc  63 2f 83 e2                                      add r2, r3, #0x18c
004901c0  02 00 56 e1                                      cmp r6, r2
004901c4  dc ff ff 0a                                      beq #0x49013c
004901c8  dc ff ff ea                                      b #0x490140
004901cc  44 80 94 e5                                      ldr r8, [r4, #0x44]
004901d0  8c 30 d8 e5                                      ldrb r3, [r8, #0x8c]
004901d4  00 00 53 e3                                      cmp r3, #0
004901d8  10 ff ff 0a                                      beq #0x48fe20
004901dc  20 10 9d e5                                      ldr r1, [sp, #0x20]
004901e0  18 31 9f e5                                      ldr r3, [pc, #0x118]
004901e4  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
004901e8  03 20 91 e7                                      ldr r2, [r1, r3]
004901ec  0c 32 82 e0                                      add r3, r2, ip, lsl #4
004901f0  0c 02 d2 e7                                      ldrb r0, [r2, ip, lsl #4]
004901f4  01 c0 d3 e5                                      ldrb ip, [r3, #1]
004901f8  02 10 d3 e5                                      ldrb r1, [r3, #2]
004901fc  03 20 d3 e5                                      ldrb r2, [r3, #3]
00490200  0c 34 80 e1                                      orr r3, r0, ip, lsl #8
00490204  01 38 83 e1                                      orr r3, r3, r1, lsl #16
00490208  02 3c 83 e1                                      orr r3, r3, r2, lsl #24
0049020c  48 30 84 e5                                      str r3, [r4, #0x48]
00490210  02 ff ff ea                                      b #0x48fe20
00490214  20 10 9d e5                                      ldr r1, [sp, #0x20]
00490218  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0049021c  0a 20 91 e7                                      ldr r2, [r1, sl]
00490220  09 30 82 e0                                      add r3, r2, sb
00490224  0c 12 d2 e7                                      ldrb r1, [r2, ip, lsl #4]
00490228  01 c0 d3 e5                                      ldrb ip, [r3, #1]
0049022c  02 20 d3 e5                                      ldrb r2, [r3, #2]
00490230  03 30 d3 e5                                      ldrb r3, [r3, #3]
00490234  0c 14 81 e1                                      orr r1, r1, ip, lsl #8
00490238  02 18 81 e1                                      orr r1, r1, r2, lsl #16
0049023c  03 1c 81 e1                                      orr r1, r1, r3, lsl #24
00490240  00 00 51 e1                                      cmp r1, r0
00490244  cd ff ff 1a                                      bne #0x490180
00490248  a5 ff ff ea                                      b #0x4900e4
0049024c  08 00 a0 e1                                      mov r0, r8
00490250  de df ff eb                                      bl #0x4881d0
00490254  01 40 a0 e3                                      mov r4, #1
00490258  cc ff ff ea                                      b #0x490190
0049025c  60 20 83 e2                                      add r2, r3, #0x60
00490260  02 00 5b e1                                      cmp fp, r2
00490264  d5 fe ff 1a                                      bne #0x48fdc0
00490268  63 2f 83 e2                                      add r2, r3, #0x18c
0049026c  02 00 5b e1                                      cmp fp, r2
00490270  d1 fe ff 0a                                      beq #0x48fdbc
00490274  d1 fe ff ea                                      b #0x48fdc0
00490278  06 00 58 e1                                      cmp r8, r6
0049027c  6c ff ff ba                                      blt #0x490034
00490280  6b ff ff ca                                      bgt #0x490034
00490284  04 10 a0 e1                                      mov r1, r4
00490288  10 00 9d e5                                      ldr r0, [sp, #0x10]
0049028c  fb f7 ff eb                                      bl #0x48e280
00490290  10 10 9d e5                                      ldr r1, [sp, #0x10]
00490294  14 00 9d e5                                      ldr r0, [sp, #0x14]
00490298  48 a0 8d e5                                      str sl, [sp, #0x48]
0049029c  f7 f7 ff eb                                      bl #0x48e280
004902a0  18 10 9d e5                                      ldr r1, [sp, #0x18]
004902a4  08 00 9d e5                                      ldr r0, [sp, #8]
004902a8  1e fb ff eb                                      bl #0x48ef28
004902ac  14 00 9d e5                                      ldr r0, [sp, #0x14]
004902b0  c6 df ff eb                                      bl #0x4881d0
004902b4  10 00 9d e5                                      ldr r0, [sp, #0x10]
004902b8  c4 df ff eb                                      bl #0x4881d0
004902bc  44 70 9d e5                                      ldr r7, [sp, #0x44]
004902c0  5b ff ff ea                                      b #0x490034
004902c4  68 20 98 e5                                      ldr r2, [r8, #0x68]
004902c8  38 30 8d e2                                      add r3, sp, #0x38
004902cc  08 30 8d e5                                      str r3, [sp, #8]
004902d0  00 30 94 e5                                      ldr r3, [r4]
004902d4  04 00 a0 e1                                      mov r0, r4
004902d8  44 20 8d e5                                      str r2, [sp, #0x44]
004902dc  08 10 9d e5                                      ldr r1, [sp, #8]
004902e0  44 20 8d e2                                      add r2, sp, #0x44
004902e4  0f e0 a0 e1                                      mov lr, pc
004902e8  08 f0 93 e5                                      ldr pc, [r3, #8]
004902ec  5e ff ff ea                                      b #0x49006c
004902f0  06 f8 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004902f4  1c 4d 50 00 ac 40 00 00 b8 1b 00 00 fc 43 00 00  .byte 0x1c, 0x4d, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb8, 0x1b, 0x00, 0x00, 0xfc, 0x43, 0x00, 0x00
