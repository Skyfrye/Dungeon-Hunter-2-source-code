; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048cf10, declared_size=188, range_size=188, mode=arm
; class-group: rnd::ForceBlock::Impl
; alias: _ZN3rnd10ForceBlock4ImplC1ERKS0_PNS_4Rule4ImplE
; demangled: rnd::ForceBlock::Impl::Impl(rnd::ForceBlock const&, rnd::Rule::Impl*)
; decoder-mode: arm
0048cf10  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0048cf14  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
0048cf18  0c d0 4d e2                                      sub sp, sp, #0xc
0048cf1c  01 60 a0 e1                                      mov r6, r1
0048cf20  00 40 a0 e1                                      mov r4, r0
0048cf24  e4 fb ff eb                                      bl #0x48bebc
0048cf28  98 30 9f e5                                      ldr r3, [pc, #0x98]
0048cf2c  05 50 8f e0                                      add r5, pc, r5
0048cf30  44 60 84 e5                                      str r6, [r4, #0x44]
0048cf34  03 30 95 e7                                      ldr r3, [r5, r3]
0048cf38  08 30 83 e2                                      add r3, r3, #8
0048cf3c  00 30 84 e5                                      str r3, [r4]
0048cf40  74 30 96 e5                                      ldr r3, [r6, #0x74]
0048cf44  70 50 96 e5                                      ldr r5, [r6, #0x70]
0048cf48  05 00 53 e1                                      cmp r3, r5
0048cf4c  19 00 00 0a                                      beq #0x48cfb8
0048cf50  30 70 84 e2                                      add r7, r4, #0x30
0048cf54  04 60 8d e2                                      add r6, sp, #4
0048cf58  08 00 00 ea                                      b #0x48cf80
0048cf5c  00 30 81 e5                                      str r3, [r1]
0048cf60  34 30 94 e5                                      ldr r3, [r4, #0x34]
0048cf64  18 50 85 e2                                      add r5, r5, #0x18
0048cf68  04 30 83 e2                                      add r3, r3, #4
0048cf6c  34 30 84 e5                                      str r3, [r4, #0x34]
0048cf70  44 30 94 e5                                      ldr r3, [r4, #0x44]
0048cf74  74 30 93 e5                                      ldr r3, [r3, #0x74]
0048cf78  03 00 55 e1                                      cmp r5, r3
0048cf7c  0d 00 00 0a                                      beq #0x48cfb8
0048cf80  34 10 94 e5                                      ldr r1, [r4, #0x34]
0048cf84  38 20 94 e5                                      ldr r2, [r4, #0x38]
0048cf88  14 30 95 e5                                      ldr r3, [r5, #0x14]
0048cf8c  02 00 51 e1                                      cmp r1, r2
0048cf90  04 30 8d e5                                      str r3, [sp, #4]
0048cf94  f0 ff ff 1a                                      bne #0x48cf5c
0048cf98  07 00 a0 e1                                      mov r0, r7
0048cf9c  06 20 a0 e1                                      mov r2, r6
0048cfa0  77 ff ff eb                                      bl #0x48cd84
0048cfa4  44 30 94 e5                                      ldr r3, [r4, #0x44]
0048cfa8  18 50 85 e2                                      add r5, r5, #0x18
0048cfac  74 30 93 e5                                      ldr r3, [r3, #0x74]
0048cfb0  03 00 55 e1                                      cmp r5, r3
0048cfb4  f1 ff ff 1a                                      bne #0x48cf80
0048cfb8  04 00 a0 e1                                      mov r0, r4
0048cfbc  0c d0 8d e2                                      add sp, sp, #0xc
0048cfc0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0048cfc4  64 7b 50 00 08 4c 00 00                          .byte 0x64, 0x7b, 0x50, 0x00, 0x08, 0x4c, 0x00, 0x00

; FUNCTION 0x0048cff8, declared_size=188, range_size=188, mode=arm
; class-group: rnd::ForceBlock::Impl
; alias: _ZN3rnd10ForceBlock4ImplC2ERKS0_PNS_4Rule4ImplE
; demangled: rnd::ForceBlock::Impl::Impl(rnd::ForceBlock const&, rnd::Rule::Impl*)
; decoder-mode: arm
0048cff8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0048cffc  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
0048d000  0c d0 4d e2                                      sub sp, sp, #0xc
0048d004  01 60 a0 e1                                      mov r6, r1
0048d008  00 40 a0 e1                                      mov r4, r0
0048d00c  aa fb ff eb                                      bl #0x48bebc
0048d010  98 30 9f e5                                      ldr r3, [pc, #0x98]
0048d014  05 50 8f e0                                      add r5, pc, r5
0048d018  44 60 84 e5                                      str r6, [r4, #0x44]
0048d01c  03 30 95 e7                                      ldr r3, [r5, r3]
0048d020  08 30 83 e2                                      add r3, r3, #8
0048d024  00 30 84 e5                                      str r3, [r4]
0048d028  74 30 96 e5                                      ldr r3, [r6, #0x74]
0048d02c  70 50 96 e5                                      ldr r5, [r6, #0x70]
0048d030  05 00 53 e1                                      cmp r3, r5
0048d034  19 00 00 0a                                      beq #0x48d0a0
0048d038  30 70 84 e2                                      add r7, r4, #0x30
0048d03c  04 60 8d e2                                      add r6, sp, #4
0048d040  08 00 00 ea                                      b #0x48d068
0048d044  00 30 81 e5                                      str r3, [r1]
0048d048  34 30 94 e5                                      ldr r3, [r4, #0x34]
0048d04c  18 50 85 e2                                      add r5, r5, #0x18
0048d050  04 30 83 e2                                      add r3, r3, #4
0048d054  34 30 84 e5                                      str r3, [r4, #0x34]
0048d058  44 30 94 e5                                      ldr r3, [r4, #0x44]
0048d05c  74 30 93 e5                                      ldr r3, [r3, #0x74]
0048d060  03 00 55 e1                                      cmp r5, r3
0048d064  0d 00 00 0a                                      beq #0x48d0a0
0048d068  34 10 94 e5                                      ldr r1, [r4, #0x34]
0048d06c  38 20 94 e5                                      ldr r2, [r4, #0x38]
0048d070  14 30 95 e5                                      ldr r3, [r5, #0x14]
0048d074  02 00 51 e1                                      cmp r1, r2
0048d078  04 30 8d e5                                      str r3, [sp, #4]
0048d07c  f0 ff ff 1a                                      bne #0x48d044
0048d080  07 00 a0 e1                                      mov r0, r7
0048d084  06 20 a0 e1                                      mov r2, r6
0048d088  3d ff ff eb                                      bl #0x48cd84
0048d08c  44 30 94 e5                                      ldr r3, [r4, #0x44]
0048d090  18 50 85 e2                                      add r5, r5, #0x18
0048d094  74 30 93 e5                                      ldr r3, [r3, #0x74]
0048d098  03 00 55 e1                                      cmp r5, r3
0048d09c  f1 ff ff 1a                                      bne #0x48d068
0048d0a0  04 00 a0 e1                                      mov r0, r4
0048d0a4  0c d0 8d e2                                      add sp, sp, #0xc
0048d0a8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0048d0ac  7c 7a 50 00 08 4c 00 00                          .byte 0x7c, 0x7a, 0x50, 0x00, 0x08, 0x4c, 0x00, 0x00

; FUNCTION 0x0048d434, declared_size=52, range_size=52, mode=arm
; class-group: rnd::ForceBlock::Impl
; alias: _ZN3rnd10ForceBlock4ImplD1Ev
; demangled: rnd::ForceBlock::Impl::~Impl()
; decoder-mode: arm
0048d434  24 30 9f e5                                      ldr r3, [pc, #0x24]
0048d438  24 20 9f e5                                      ldr r2, [pc, #0x24]
0048d43c  10 40 2d e9                                      push {r4, lr}
0048d440  03 30 8f e0                                      add r3, pc, r3
0048d444  02 20 93 e7                                      ldr r2, [r3, r2]
0048d448  00 40 a0 e1                                      mov r4, r0
0048d44c  08 20 82 e2                                      add r2, r2, #8
0048d450  00 20 80 e5                                      str r2, [r0]
0048d454  9a ff ff eb                                      bl #0x48d2c4
0048d458  04 00 a0 e1                                      mov r0, r4
0048d45c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d460  50 76 50 00 08 4c 00 00                          .byte 0x50, 0x76, 0x50, 0x00, 0x08, 0x4c, 0x00, 0x00

; FUNCTION 0x0048d550, declared_size=60, range_size=60, mode=arm
; class-group: rnd::ForceBlock::Impl
; alias: _ZN3rnd10ForceBlock4ImplD0Ev
; demangled: rnd::ForceBlock::Impl::~Impl()
; decoder-mode: arm
0048d550  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0048d554  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048d558  10 40 2d e9                                      push {r4, lr}
0048d55c  03 30 8f e0                                      add r3, pc, r3
0048d560  02 20 93 e7                                      ldr r2, [r3, r2]
0048d564  00 40 a0 e1                                      mov r4, r0
0048d568  08 20 82 e2                                      add r2, r2, #8
0048d56c  00 20 80 e5                                      str r2, [r0]
0048d570  53 ff ff eb                                      bl #0x48d2c4
0048d574  04 00 a0 e1                                      mov r0, r4
0048d578  b0 0b fa eb                                      bl #0x310440
0048d57c  04 00 a0 e1                                      mov r0, r4
0048d580  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d584  34 75 50 00 08 4c 00 00                          .byte 0x34, 0x75, 0x50, 0x00, 0x08, 0x4c, 0x00, 0x00

; FUNCTION 0x0048f47c, declared_size=1240, range_size=1240, mode=arm
; class-group: rnd::ForceBlock::Impl
; alias: _ZN3rnd10ForceBlock4Impl11FilterExitsERSt6vectorISt4pairIPKNS_4ExitENS_8ListElemEESaIS8_EERPNS_8ListRuleE
; demangled: rnd::ForceBlock::Impl::FilterExits(std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >&, rnd::ListRule*&)
; decoder-mode: arm
0048f47c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048f480  c4 34 9f e5                                      ldr r3, [pc, #0x4c4]
0048f484  46 de 4d e2                                      sub sp, sp, #0x460
0048f488  0c d0 4d e2                                      sub sp, sp, #0xc
0048f48c  10 30 8d e5                                      str r3, [sp, #0x10]
0048f490  00 80 a0 e1                                      mov r8, r0
0048f494  10 00 9d e5                                      ldr r0, [sp, #0x10]
0048f498  b0 34 9f e5                                      ldr r3, [pc, #0x4b0]
0048f49c  01 b0 a0 e1                                      mov fp, r1
0048f4a0  00 00 8f e0                                      add r0, pc, r0
0048f4a4  03 c0 90 e7                                      ldr ip, [r0, r3]
0048f4a8  1c 30 8d e5                                      str r3, [sp, #0x1c]
0048f4ac  10 00 8d e5                                      str r0, [sp, #0x10]
0048f4b0  00 c0 9c e5                                      ldr ip, [ip]
0048f4b4  44 00 98 e5                                      ldr r0, [r8, #0x44]
0048f4b8  00 30 a0 e3                                      mov r3, #0
0048f4bc  38 30 8d e5                                      str r3, [sp, #0x38]
0048f4c0  30 30 8d e5                                      str r3, [sp, #0x30]
0048f4c4  64 c4 8d e5                                      str ip, [sp, #0x464]
0048f4c8  34 30 8d e5                                      str r3, [sp, #0x34]
0048f4cc  68 30 90 e5                                      ldr r3, [r0, #0x68]
0048f4d0  18 20 8d e5                                      str r2, [sp, #0x18]
0048f4d4  00 30 82 e5                                      str r3, [r2]
0048f4d8  80 02 91 e8                                      ldm r1, {r7, sb}
0048f4dc  09 30 a0 e1                                      mov r3, sb
0048f4e0  09 00 57 e1                                      cmp r7, sb
0048f4e4  13 01 00 0a                                      beq #0x48f938
0048f4e8  38 20 8d e2                                      add r2, sp, #0x38
0048f4ec  48 30 8d e2                                      add r3, sp, #0x48
0048f4f0  90 00 8d e2                                      add r0, sp, #0x90
0048f4f4  e4 10 8d e2                                      add r1, sp, #0xe4
0048f4f8  08 20 42 e2                                      sub r2, r2, #8
0048f4fc  20 30 8d e5                                      str r3, [sp, #0x20]
0048f500  24 00 8d e5                                      str r0, [sp, #0x24]
0048f504  00 20 8d e5                                      str r2, [sp]
0048f508  0c 20 43 e2                                      sub r2, r3, #0xc
0048f50c  04 30 80 e2                                      add r3, r0, #4
0048f510  04 00 81 e2                                      add r0, r1, #4
0048f514  14 10 8d e5                                      str r1, [sp, #0x14]
0048f518  28 20 8d e5                                      str r2, [sp, #0x28]
0048f51c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0048f520  08 00 8d e5                                      str r0, [sp, #8]
0048f524  0c 00 00 ea                                      b #0x48f55c
0048f528  50 10 a0 e3                                      mov r1, #0x50
0048f52c  91 42 24 e0                                      mla r4, r1, r2, r4
0048f530  18 00 93 e5                                      ldr r0, [r3, #0x18]
0048f534  14 20 93 e5                                      ldr r2, [r3, #0x14]
0048f538  18 10 94 e5                                      ldr r1, [r4, #0x18]
0048f53c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0048f540  02 20 60 e0                                      rsb r2, r0, r2
0048f544  03 30 61 e0                                      rsb r3, r1, r3
0048f548  03 00 52 e1                                      cmp r2, r3
0048f54c  b3 00 00 0a                                      beq #0x48f820
0048f550  54 70 87 e2                                      add r7, r7, #0x54
0048f554  09 00 57 e1                                      cmp r7, sb
0048f558  50 00 00 0a                                      beq #0x48f6a0
0048f55c  00 50 97 e5                                      ldr r5, [r7]
0048f560  00 00 55 e3                                      cmp r5, #0
0048f564  f9 ff ff 0a                                      beq #0x48f550
0048f568  04 30 95 e5                                      ldr r3, [r5, #4]
0048f56c  00 00 53 e3                                      cmp r3, #0
0048f570  f6 ff ff 0a                                      beq #0x48f550
0048f574  44 a0 98 e5                                      ldr sl, [r8, #0x44]
0048f578  68 10 9a e5                                      ldr r1, [sl, #0x68]
0048f57c  00 00 51 e3                                      cmp r1, #0
0048f580  70 00 00 0a                                      beq #0x48f748
0048f584  6c 20 9a e5                                      ldr r2, [sl, #0x6c]
0048f588  01 00 72 e3                                      cmn r2, #1
0048f58c  6a 00 00 0a                                      beq #0x48f73c
0048f590  1c 40 91 e5                                      ldr r4, [r1, #0x1c]
0048f594  20 60 91 e5                                      ldr r6, [r1, #0x20]
0048f598  06 10 64 e0                                      rsb r1, r4, r6
0048f59c  41 12 a0 e1                                      asr r1, r1, #4
0048f5a0  81 00 81 e0                                      add r0, r1, r1, lsl #1
0048f5a4  00 02 80 e0                                      add r0, r0, r0, lsl #4
0048f5a8  00 04 80 e0                                      add r0, r0, r0, lsl #8
0048f5ac  00 08 80 e0                                      add r0, r0, r0, lsl #16
0048f5b0  00 01 81 e0                                      add r0, r1, r0, lsl #2
0048f5b4  00 00 52 e1                                      cmp r2, r0
0048f5b8  da ff ff 3a                                      blo #0x48f528
0048f5bc  04 00 56 e1                                      cmp r6, r4
0048f5c0  e2 ff ff 0a                                      beq #0x48f550
0048f5c4  4e 9f 8d e2                                      add sb, sp, #0x138
0048f5c8  dd 1f 8d e2                                      add r1, sp, #0x374
0048f5cc  04 20 89 e2                                      add r2, sb, #4
0048f5d0  c9 af 8d e2                                      add sl, sp, #0x324
0048f5d4  04 10 8d e5                                      str r1, [sp, #4]
0048f5d8  0c 20 8d e5                                      str r2, [sp, #0xc]
0048f5dc  03 00 00 ea                                      b #0x48f5f0
0048f5e0  50 40 84 e2                                      add r4, r4, #0x50
0048f5e4  04 00 56 e1                                      cmp r6, r4
0048f5e8  28 00 00 0a                                      beq #0x48f690
0048f5ec  04 30 95 e5                                      ldr r3, [r5, #4]
0048f5f0  14 20 93 e5                                      ldr r2, [r3, #0x14]
0048f5f4  18 00 93 e5                                      ldr r0, [r3, #0x18]
0048f5f8  18 10 94 e5                                      ldr r1, [r4, #0x18]
0048f5fc  14 30 94 e5                                      ldr r3, [r4, #0x14]
0048f600  02 20 60 e0                                      rsb r2, r0, r2
0048f604  03 30 61 e0                                      rsb r3, r1, r3
0048f608  03 00 52 e1                                      cmp r2, r3
0048f60c  f3 ff ff 1a                                      bne #0x48f5e0
0048f610  f2 fb f9 eb                                      bl #0x30e5e0
0048f614  00 00 50 e3                                      cmp r0, #0
0048f618  f0 ff ff 1a                                      bne #0x48f5e0
0048f61c  44 10 98 e5                                      ldr r1, [r8, #0x44]
0048f620  88 20 91 e5                                      ldr r2, [r1, #0x88]
0048f624  04 00 52 e3                                      cmp r2, #4
0048f628  34 00 00 0a                                      beq #0x48f700
0048f62c  14 30 95 e5                                      ldr r3, [r5, #0x14]
0048f630  00 30 93 e5                                      ldr r3, [r3]
0048f634  03 00 52 e1                                      cmp r2, r3
0048f638  e8 ff ff 1a                                      bne #0x48f5e0
0048f63c  8c 20 91 e5                                      ldr r2, [r1, #0x8c]
0048f640  18 30 95 e5                                      ldr r3, [r5, #0x18]
0048f644  03 00 52 e1                                      cmp r2, r3
0048f648  e4 ff ff 1a                                      bne #0x48f5e0
0048f64c  04 10 a0 e1                                      mov r1, r4
0048f650  04 00 9d e5                                      ldr r0, [sp, #4]
0048f654  09 fb ff eb                                      bl #0x48e280
0048f658  04 10 9d e5                                      ldr r1, [sp, #4]
0048f65c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0048f660  38 51 8d e5                                      str r5, [sp, #0x138]
0048f664  05 fb ff eb                                      bl #0x48e280
0048f668  09 10 a0 e1                                      mov r1, sb
0048f66c  00 00 9d e5                                      ldr r0, [sp]
0048f670  2c fe ff eb                                      bl #0x48ef28
0048f674  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0048f678  d4 e2 ff eb                                      bl #0x4881d0
0048f67c  50 40 84 e2                                      add r4, r4, #0x50
0048f680  04 00 9d e5                                      ldr r0, [sp, #4]
0048f684  d1 e2 ff eb                                      bl #0x4881d0
0048f688  04 00 56 e1                                      cmp r6, r4
0048f68c  d6 ff ff 1a                                      bne #0x48f5ec
0048f690  04 90 9b e5                                      ldr sb, [fp, #4]
0048f694  54 70 87 e2                                      add r7, r7, #0x54
0048f698  09 00 57 e1                                      cmp r7, sb
0048f69c  ae ff ff 1a                                      bne #0x48f55c
0048f6a0  00 30 9b e5                                      ldr r3, [fp]
0048f6a4  30 00 8d e2                                      add r0, sp, #0x30
0048f6a8  07 00 90 e8                                      ldm r0, {r0, r1, r2}
0048f6ac  08 c0 9b e5                                      ldr ip, [fp, #8]
0048f6b0  07 00 8b e8                                      stm fp, {r0, r1, r2}
0048f6b4  18 20 9d e5                                      ldr r2, [sp, #0x18]
0048f6b8  0b 10 a0 e1                                      mov r1, fp
0048f6bc  08 00 a0 e1                                      mov r0, r8
0048f6c0  30 30 8d e5                                      str r3, [sp, #0x30]
0048f6c4  38 c0 8d e5                                      str ip, [sp, #0x38]
0048f6c8  34 90 8d e5                                      str sb, [sp, #0x34]
0048f6cc  ef fb ff eb                                      bl #0x48e690
0048f6d0  00 00 9d e5                                      ldr r0, [sp]
0048f6d4  87 f8 ff eb                                      bl #0x48d8f8
0048f6d8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0048f6dc  10 00 9d e5                                      ldr r0, [sp, #0x10]
0048f6e0  02 30 90 e7                                      ldr r3, [r0, r2]
0048f6e4  64 24 9d e5                                      ldr r2, [sp, #0x464]
0048f6e8  00 30 93 e5                                      ldr r3, [r3]
0048f6ec  03 00 52 e1                                      cmp r2, r3
0048f6f0  94 00 00 1a                                      bne #0x48f948
0048f6f4  6c d0 8d e2                                      add sp, sp, #0x6c
0048f6f8  01 db 8d e2                                      add sp, sp, #0x400
0048f6fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048f700  04 10 a0 e1                                      mov r1, r4
0048f704  0a 00 a0 e1                                      mov r0, sl
0048f708  dc fa ff eb                                      bl #0x48e280
0048f70c  0a 10 a0 e1                                      mov r1, sl
0048f710  08 00 9d e5                                      ldr r0, [sp, #8]
0048f714  e4 50 8d e5                                      str r5, [sp, #0xe4]
0048f718  d8 fa ff eb                                      bl #0x48e280
0048f71c  00 00 9d e5                                      ldr r0, [sp]
0048f720  14 10 9d e5                                      ldr r1, [sp, #0x14]
0048f724  ff fd ff eb                                      bl #0x48ef28
0048f728  08 00 9d e5                                      ldr r0, [sp, #8]
0048f72c  a7 e2 ff eb                                      bl #0x4881d0
0048f730  0a 00 a0 e1                                      mov r0, sl
0048f734  a5 e2 ff eb                                      bl #0x4881d0
0048f738  a8 ff ff ea                                      b #0x48f5e0
0048f73c  1c 40 91 e5                                      ldr r4, [r1, #0x1c]
0048f740  20 60 91 e5                                      ldr r6, [r1, #0x20]
0048f744  9c ff ff ea                                      b #0x48f5bc
0048f748  30 40 98 e5                                      ldr r4, [r8, #0x30]
0048f74c  34 60 98 e5                                      ldr r6, [r8, #0x34]
0048f750  04 00 56 e1                                      cmp r6, r4
0048f754  7d ff ff 0a                                      beq #0x48f550
0048f758  20 00 9d e5                                      ldr r0, [sp, #0x20]
0048f75c  a1 1f 8d e2                                      add r1, sp, #0x284
0048f760  b5 af 8d e2                                      add sl, sp, #0x2d4
0048f764  08 00 40 e2                                      sub r0, r0, #8
0048f768  8d 9f 8d e2                                      add sb, sp, #0x234
0048f76c  04 00 8d e5                                      str r0, [sp, #4]
0048f770  0c 10 8d e5                                      str r1, [sp, #0xc]
0048f774  03 00 00 ea                                      b #0x48f788
0048f778  04 40 84 e2                                      add r4, r4, #4
0048f77c  06 00 54 e1                                      cmp r4, r6
0048f780  c2 ff ff 0a                                      beq #0x48f690
0048f784  04 30 95 e5                                      ldr r3, [r5, #4]
0048f788  18 00 93 e5                                      ldr r0, [r3, #0x18]
0048f78c  00 10 94 e5                                      ldr r1, [r4]
0048f790  d4 fb f9 eb                                      bl #0x30e6e8
0048f794  00 00 50 e3                                      cmp r0, #0
0048f798  f6 ff ff 1a                                      bne #0x48f778
0048f79c  0a 00 a0 e1                                      mov r0, sl
0048f7a0  36 fa ff eb                                      bl #0x48e080
0048f7a4  44 20 98 e5                                      ldr r2, [r8, #0x44]
0048f7a8  88 30 92 e5                                      ldr r3, [r2, #0x88]
0048f7ac  04 00 53 e3                                      cmp r3, #4
0048f7b0  3d 00 00 0a                                      beq #0x48f8ac
0048f7b4  14 10 95 e5                                      ldr r1, [r5, #0x14]
0048f7b8  00 10 91 e5                                      ldr r1, [r1]
0048f7bc  01 00 53 e1                                      cmp r3, r1
0048f7c0  03 00 00 0a                                      beq #0x48f7d4
0048f7c4  0a 00 a0 e1                                      mov r0, sl
0048f7c8  80 e2 ff eb                                      bl #0x4881d0
0048f7cc  34 60 98 e5                                      ldr r6, [r8, #0x34]
0048f7d0  e8 ff ff ea                                      b #0x48f778
0048f7d4  8c 20 92 e5                                      ldr r2, [r2, #0x8c]
0048f7d8  18 30 95 e5                                      ldr r3, [r5, #0x18]
0048f7dc  03 00 52 e1                                      cmp r2, r3
0048f7e0  f7 ff ff 1a                                      bne #0x48f7c4
0048f7e4  0a 10 a0 e1                                      mov r1, sl
0048f7e8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0048f7ec  a3 fa ff eb                                      bl #0x48e280
0048f7f0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0048f7f4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0048f7f8  90 50 8d e5                                      str r5, [sp, #0x90]
0048f7fc  9f fa ff eb                                      bl #0x48e280
0048f800  00 00 9d e5                                      ldr r0, [sp]
0048f804  24 10 9d e5                                      ldr r1, [sp, #0x24]
0048f808  c6 fd ff eb                                      bl #0x48ef28
0048f80c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0048f810  6e e2 ff eb                                      bl #0x4881d0
0048f814  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0048f818  6c e2 ff eb                                      bl #0x4881d0
0048f81c  e8 ff ff ea                                      b #0x48f7c4
0048f820  6e fb f9 eb                                      bl #0x30e5e0
0048f824  00 00 50 e3                                      cmp r0, #0
0048f828  48 ff ff 1a                                      bne #0x48f550
0048f82c  88 20 9a e5                                      ldr r2, [sl, #0x88]
0048f830  04 00 52 e3                                      cmp r2, #4
0048f834  2b 00 00 0a                                      beq #0x48f8e8
0048f838  14 30 95 e5                                      ldr r3, [r5, #0x14]
0048f83c  00 30 93 e5                                      ldr r3, [r3]
0048f840  03 00 52 e1                                      cmp r2, r3
0048f844  41 ff ff 1a                                      bne #0x48f550
0048f848  8c 20 9a e5                                      ldr r2, [sl, #0x8c]
0048f84c  18 30 95 e5                                      ldr r3, [r5, #0x18]
0048f850  03 00 52 e1                                      cmp r2, r3
0048f854  3d ff ff 1a                                      bne #0x48f550
0048f858  41 ae 8d e2                                      add sl, sp, #0x410
0048f85c  04 a0 8a e2                                      add sl, sl, #4
0048f860  46 6e 8d e2                                      add r6, sp, #0x460
0048f864  04 10 a0 e1                                      mov r1, r4
0048f868  08 60 86 e2                                      add r6, r6, #8
0048f86c  79 4f 8d e2                                      add r4, sp, #0x1e4
0048f870  0a 00 a0 e1                                      mov r0, sl
0048f874  81 fa ff eb                                      bl #0x48e280
0048f878  88 52 26 e5                                      str r5, [r6, #-0x288]!
0048f87c  0a 10 a0 e1                                      mov r1, sl
0048f880  04 00 a0 e1                                      mov r0, r4
0048f884  7d fa ff eb                                      bl #0x48e280
0048f888  06 10 a0 e1                                      mov r1, r6
0048f88c  00 00 9d e5                                      ldr r0, [sp]
0048f890  a4 fd ff eb                                      bl #0x48ef28
0048f894  04 00 a0 e1                                      mov r0, r4
0048f898  4c e2 ff eb                                      bl #0x4881d0
0048f89c  0a 00 a0 e1                                      mov r0, sl
0048f8a0  4a e2 ff eb                                      bl #0x4881d0
0048f8a4  04 90 9b e5                                      ldr sb, [fp, #4]
0048f8a8  28 ff ff ea                                      b #0x48f550
0048f8ac  0a 10 a0 e1                                      mov r1, sl
0048f8b0  09 00 a0 e1                                      mov r0, sb
0048f8b4  71 fa ff eb                                      bl #0x48e280
0048f8b8  09 10 a0 e1                                      mov r1, sb
0048f8bc  04 00 9d e5                                      ldr r0, [sp, #4]
0048f8c0  3c 50 8d e5                                      str r5, [sp, #0x3c]
0048f8c4  6d fa ff eb                                      bl #0x48e280
0048f8c8  00 00 9d e5                                      ldr r0, [sp]
0048f8cc  28 10 9d e5                                      ldr r1, [sp, #0x28]
0048f8d0  94 fd ff eb                                      bl #0x48ef28
0048f8d4  04 00 9d e5                                      ldr r0, [sp, #4]
0048f8d8  3c e2 ff eb                                      bl #0x4881d0
0048f8dc  09 00 a0 e1                                      mov r0, sb
0048f8e0  3a e2 ff eb                                      bl #0x4881d0
0048f8e4  b6 ff ff ea                                      b #0x48f7c4
0048f8e8  f1 6f 8d e2                                      add r6, sp, #0x3c4
0048f8ec  04 10 a0 e1                                      mov r1, r4
0048f8f0  46 4e 8d e2                                      add r4, sp, #0x460
0048f8f4  08 40 84 e2                                      add r4, r4, #8
0048f8f8  06 00 a0 e1                                      mov r0, r6
0048f8fc  5f fa ff eb                                      bl #0x48e280
0048f900  dc 52 24 e5                                      str r5, [r4, #-0x2dc]!
0048f904  04 50 84 e2                                      add r5, r4, #4
0048f908  06 10 a0 e1                                      mov r1, r6
0048f90c  05 00 a0 e1                                      mov r0, r5
0048f910  5a fa ff eb                                      bl #0x48e280
0048f914  04 10 a0 e1                                      mov r1, r4
0048f918  00 00 9d e5                                      ldr r0, [sp]
0048f91c  81 fd ff eb                                      bl #0x48ef28
0048f920  05 00 a0 e1                                      mov r0, r5
0048f924  29 e2 ff eb                                      bl #0x4881d0
0048f928  06 00 a0 e1                                      mov r0, r6
0048f92c  27 e2 ff eb                                      bl #0x4881d0
0048f930  04 90 9b e5                                      ldr sb, [fp, #4]
0048f934  05 ff ff ea                                      b #0x48f550
0048f938  38 10 8d e2                                      add r1, sp, #0x38
0048f93c  08 10 41 e2                                      sub r1, r1, #8
0048f940  00 10 8d e5                                      str r1, [sp]
0048f944  56 ff ff ea                                      b #0x48f6a4
0048f948  70 fa f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0048f94c  f0 55 50 00 ac 40 00 00                          .byte 0xf0, 0x55, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00
