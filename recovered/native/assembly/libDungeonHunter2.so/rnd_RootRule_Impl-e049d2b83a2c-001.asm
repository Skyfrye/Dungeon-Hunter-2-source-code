; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048bd04, declared_size=4, range_size=4, mode=arm
; class-group: rnd::RootRule::Impl
; alias: _ZN3rnd8RootRule4Impl11FilterExitsERSt6vectorISt4pairIPKNS_4ExitENS_8ListElemEESaIS8_EERPNS_8ListRuleE
; demangled: rnd::RootRule::Impl::FilterExits(std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >&, rnd::ListRule*&)
; decoder-mode: arm
0048bd04  1e ff 2f e1                                      bx lr

; FUNCTION 0x0048bd08, declared_size=4, range_size=4, mode=arm
; class-group: rnd::RootRule::Impl
; alias: _ZN3rnd8RootRule4Impl18WriteDebuggingInfoEv
; demangled: rnd::RootRule::Impl::WriteDebuggingInfo()
; decoder-mode: arm
0048bd08  1e ff 2f e1                                      bx lr

; FUNCTION 0x0048c374, declared_size=132, range_size=132, mode=arm
; class-group: rnd::RootRule::Impl
; alias: _ZN3rnd8RootRule4Impl13PlaceRootTileEPNS_5BlockENS_8ListElemE
; demangled: rnd::RootRule::Impl::PlaceRootTile(rnd::Block*, rnd::ListElem)
; decoder-mode: arm
0048c374  70 40 2d e9                                      push {r4, r5, r6, lr}
0048c378  00 40 a0 e1                                      mov r4, r0
0048c37c  01 60 a0 e1                                      mov r6, r1
0048c380  02 50 a0 e1                                      mov r5, r2
0048c384  04 00 90 e5                                      ldr r0, [r0, #4]
0048c388  59 fe ff eb                                      bl #0x48bcf4
0048c38c  06 10 a0 e1                                      mov r1, r6
0048c390  05 20 a0 e1                                      mov r2, r5
0048c394  74 15 00 eb                                      bl #0x49196c
0048c398  00 10 a0 e3                                      mov r1, #0
0048c39c  00 50 a0 e1                                      mov r5, r0
0048c3a0  01 20 a0 e1                                      mov r2, r1
0048c3a4  00 30 a0 e3                                      mov r3, #0
0048c3a8  0a 14 00 eb                                      bl #0x4913d8
0048c3ac  00 30 94 e5                                      ldr r3, [r4]
0048c3b0  04 00 a0 e1                                      mov r0, r4
0048c3b4  05 10 a0 e1                                      mov r1, r5
0048c3b8  00 20 a0 e3                                      mov r2, #0
0048c3bc  0f e0 a0 e1                                      mov lr, pc
0048c3c0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0048c3c4  00 60 50 e2                                      subs r6, r0, #0
0048c3c8  03 00 00 0a                                      beq #0x48c3dc
0048c3cc  04 00 a0 e1                                      mov r0, r4
0048c3d0  4c fe ff eb                                      bl #0x48bd08
0048c3d4  05 00 a0 e1                                      mov r0, r5
0048c3d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048c3dc  04 00 a0 e1                                      mov r0, r4
0048c3e0  48 fe ff eb                                      bl #0x48bd08
0048c3e4  05 00 a0 e1                                      mov r0, r5
0048c3e8  06 50 a0 e1                                      mov r5, r6
0048c3ec  2d 15 00 eb                                      bl #0x4918a8
0048c3f0  05 00 a0 e1                                      mov r0, r5
0048c3f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048ce48, declared_size=200, range_size=200, mode=arm
; class-group: rnd::RootRule::Impl
; alias: _ZN3rnd8RootRule4ImplC2ERKS0_
; demangled: rnd::RootRule::Impl::Impl(rnd::RootRule const&)
; decoder-mode: arm
0048ce48  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0048ce4c  00 20 a0 e3                                      mov r2, #0
0048ce50  0c d0 4d e2                                      sub sp, sp, #0xc
0048ce54  ac 60 9f e5                                      ldr r6, [pc, #0xac]
0048ce58  00 40 a0 e1                                      mov r4, r0
0048ce5c  01 50 a0 e1                                      mov r5, r1
0048ce60  15 fc ff eb                                      bl #0x48bebc
0048ce64  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0048ce68  06 60 8f e0                                      add r6, pc, r6
0048ce6c  00 20 a0 e3                                      mov r2, #0
0048ce70  03 30 96 e7                                      ldr r3, [r6, r3]
0048ce74  2c 20 84 e5                                      str r2, [r4, #0x2c]
0048ce78  44 50 84 e5                                      str r5, [r4, #0x44]
0048ce7c  08 30 83 e2                                      add r3, r3, #8
0048ce80  00 30 84 e5                                      str r3, [r4]
0048ce84  74 30 95 e5                                      ldr r3, [r5, #0x74]
0048ce88  70 50 95 e5                                      ldr r5, [r5, #0x70]
0048ce8c  05 00 53 e1                                      cmp r3, r5
0048ce90  19 00 00 0a                                      beq #0x48cefc
0048ce94  30 70 84 e2                                      add r7, r4, #0x30
0048ce98  04 60 8d e2                                      add r6, sp, #4
0048ce9c  08 00 00 ea                                      b #0x48cec4
0048cea0  00 30 81 e5                                      str r3, [r1]
0048cea4  34 30 94 e5                                      ldr r3, [r4, #0x34]
0048cea8  18 50 85 e2                                      add r5, r5, #0x18
0048ceac  04 30 83 e2                                      add r3, r3, #4
0048ceb0  34 30 84 e5                                      str r3, [r4, #0x34]
0048ceb4  44 30 94 e5                                      ldr r3, [r4, #0x44]
0048ceb8  74 30 93 e5                                      ldr r3, [r3, #0x74]
0048cebc  03 00 55 e1                                      cmp r5, r3
0048cec0  0d 00 00 0a                                      beq #0x48cefc
0048cec4  34 10 94 e5                                      ldr r1, [r4, #0x34]
0048cec8  38 20 94 e5                                      ldr r2, [r4, #0x38]
0048cecc  14 30 95 e5                                      ldr r3, [r5, #0x14]
0048ced0  02 00 51 e1                                      cmp r1, r2
0048ced4  04 30 8d e5                                      str r3, [sp, #4]
0048ced8  f0 ff ff 1a                                      bne #0x48cea0
0048cedc  07 00 a0 e1                                      mov r0, r7
0048cee0  06 20 a0 e1                                      mov r2, r6
0048cee4  a6 ff ff eb                                      bl #0x48cd84
0048cee8  44 30 94 e5                                      ldr r3, [r4, #0x44]
0048ceec  18 50 85 e2                                      add r5, r5, #0x18
0048cef0  74 30 93 e5                                      ldr r3, [r3, #0x74]
0048cef4  03 00 55 e1                                      cmp r5, r3
0048cef8  f1 ff ff 1a                                      bne #0x48cec4
0048cefc  04 00 a0 e1                                      mov r0, r4
0048cf00  0c d0 8d e2                                      add sp, sp, #0xc
0048cf04  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0048cf08  28 7c 50 00 ac 07 00 00                          .byte 0x28, 0x7c, 0x50, 0x00, 0xac, 0x07, 0x00, 0x00

; FUNCTION 0x0048d0b4, declared_size=200, range_size=200, mode=arm
; class-group: rnd::RootRule::Impl
; alias: _ZN3rnd8RootRule4ImplC1ERKS0_
; demangled: rnd::RootRule::Impl::Impl(rnd::RootRule const&)
; decoder-mode: arm
0048d0b4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0048d0b8  00 20 a0 e3                                      mov r2, #0
0048d0bc  0c d0 4d e2                                      sub sp, sp, #0xc
0048d0c0  ac 60 9f e5                                      ldr r6, [pc, #0xac]
0048d0c4  00 40 a0 e1                                      mov r4, r0
0048d0c8  01 50 a0 e1                                      mov r5, r1
0048d0cc  7a fb ff eb                                      bl #0x48bebc
0048d0d0  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0048d0d4  06 60 8f e0                                      add r6, pc, r6
0048d0d8  00 20 a0 e3                                      mov r2, #0
0048d0dc  03 30 96 e7                                      ldr r3, [r6, r3]
0048d0e0  2c 20 84 e5                                      str r2, [r4, #0x2c]
0048d0e4  44 50 84 e5                                      str r5, [r4, #0x44]
0048d0e8  08 30 83 e2                                      add r3, r3, #8
0048d0ec  00 30 84 e5                                      str r3, [r4]
0048d0f0  74 30 95 e5                                      ldr r3, [r5, #0x74]
0048d0f4  70 50 95 e5                                      ldr r5, [r5, #0x70]
0048d0f8  05 00 53 e1                                      cmp r3, r5
0048d0fc  19 00 00 0a                                      beq #0x48d168
0048d100  30 70 84 e2                                      add r7, r4, #0x30
0048d104  04 60 8d e2                                      add r6, sp, #4
0048d108  08 00 00 ea                                      b #0x48d130
0048d10c  00 30 81 e5                                      str r3, [r1]
0048d110  34 30 94 e5                                      ldr r3, [r4, #0x34]
0048d114  18 50 85 e2                                      add r5, r5, #0x18
0048d118  04 30 83 e2                                      add r3, r3, #4
0048d11c  34 30 84 e5                                      str r3, [r4, #0x34]
0048d120  44 30 94 e5                                      ldr r3, [r4, #0x44]
0048d124  74 30 93 e5                                      ldr r3, [r3, #0x74]
0048d128  03 00 55 e1                                      cmp r5, r3
0048d12c  0d 00 00 0a                                      beq #0x48d168
0048d130  34 10 94 e5                                      ldr r1, [r4, #0x34]
0048d134  38 20 94 e5                                      ldr r2, [r4, #0x38]
0048d138  14 30 95 e5                                      ldr r3, [r5, #0x14]
0048d13c  02 00 51 e1                                      cmp r1, r2
0048d140  04 30 8d e5                                      str r3, [sp, #4]
0048d144  f0 ff ff 1a                                      bne #0x48d10c
0048d148  07 00 a0 e1                                      mov r0, r7
0048d14c  06 20 a0 e1                                      mov r2, r6
0048d150  0b ff ff eb                                      bl #0x48cd84
0048d154  44 30 94 e5                                      ldr r3, [r4, #0x44]
0048d158  18 50 85 e2                                      add r5, r5, #0x18
0048d15c  74 30 93 e5                                      ldr r3, [r3, #0x74]
0048d160  03 00 55 e1                                      cmp r5, r3
0048d164  f1 ff ff 1a                                      bne #0x48d130
0048d168  04 00 a0 e1                                      mov r0, r4
0048d16c  0c d0 8d e2                                      add sp, sp, #0xc
0048d170  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
0048d174  bc 79 50 00 ac 07 00 00                          .byte 0xbc, 0x79, 0x50, 0x00, 0xac, 0x07, 0x00, 0x00

; FUNCTION 0x0048d3cc, declared_size=52, range_size=52, mode=arm
; class-group: rnd::RootRule::Impl
; alias: _ZN3rnd8RootRule4ImplD1Ev
; demangled: rnd::RootRule::Impl::~Impl()
; decoder-mode: arm
0048d3cc  24 30 9f e5                                      ldr r3, [pc, #0x24]
0048d3d0  24 20 9f e5                                      ldr r2, [pc, #0x24]
0048d3d4  10 40 2d e9                                      push {r4, lr}
0048d3d8  03 30 8f e0                                      add r3, pc, r3
0048d3dc  02 20 93 e7                                      ldr r2, [r3, r2]
0048d3e0  00 40 a0 e1                                      mov r4, r0
0048d3e4  08 20 82 e2                                      add r2, r2, #8
0048d3e8  00 20 80 e5                                      str r2, [r0]
0048d3ec  b4 ff ff eb                                      bl #0x48d2c4
0048d3f0  04 00 a0 e1                                      mov r0, r4
0048d3f4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d3f8  b8 76 50 00 ac 07 00 00                          .byte 0xb8, 0x76, 0x50, 0x00, 0xac, 0x07, 0x00, 0x00

; FUNCTION 0x0048d4d8, declared_size=60, range_size=60, mode=arm
; class-group: rnd::RootRule::Impl
; alias: _ZN3rnd8RootRule4ImplD0Ev
; demangled: rnd::RootRule::Impl::~Impl()
; decoder-mode: arm
0048d4d8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0048d4dc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048d4e0  10 40 2d e9                                      push {r4, lr}
0048d4e4  03 30 8f e0                                      add r3, pc, r3
0048d4e8  02 20 93 e7                                      ldr r2, [r3, r2]
0048d4ec  00 40 a0 e1                                      mov r4, r0
0048d4f0  08 20 82 e2                                      add r2, r2, #8
0048d4f4  00 20 80 e5                                      str r2, [r0]
0048d4f8  71 ff ff eb                                      bl #0x48d2c4
0048d4fc  04 00 a0 e1                                      mov r0, r4
0048d500  ce 0b fa eb                                      bl #0x310440
0048d504  04 00 a0 e1                                      mov r0, r4
0048d508  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d50c  ac 75 50 00 ac 07 00 00                          .byte 0xac, 0x75, 0x50, 0x00, 0xac, 0x07, 0x00, 0x00

; FUNCTION 0x0048e8ac, declared_size=676, range_size=676, mode=arm
; class-group: rnd::RootRule::Impl
; alias: _ZN3rnd8RootRule4Impl8GenerateER7Array2dIPNS_4TileEE
; demangled: rnd::RootRule::Impl::Generate(Array2d<rnd::Tile*>&)
; decoder-mode: arm
0048e8ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048e8b0  90 52 9f e5                                      ldr r5, [pc, #0x290]
0048e8b4  90 b2 9f e5                                      ldr fp, [pc, #0x290]
0048e8b8  44 30 90 e5                                      ldr r3, [r0, #0x44]
0048e8bc  05 50 8f e0                                      add r5, pc, r5
0048e8c0  0b 20 95 e7                                      ldr r2, [r5, fp]
0048e8c4  81 df 4d e2                                      sub sp, sp, #0x204
0048e8c8  00 40 a0 e1                                      mov r4, r0
0048e8cc  00 20 92 e5                                      ldr r2, [r2]
0048e8d0  fc 21 8d e5                                      str r2, [sp, #0x1fc]
0048e8d4  68 c0 93 e5                                      ldr ip, [r3, #0x68]
0048e8d8  00 00 5c e3                                      cmp ip, #0
0048e8dc  5f 00 00 0a                                      beq #0x48ea60
0048e8e0  6c 30 93 e5                                      ldr r3, [r3, #0x6c]
0048e8e4  01 00 73 e3                                      cmn r3, #1
0048e8e8  29 00 00 0a                                      beq #0x48e994
0048e8ec  1c 10 9c e5                                      ldr r1, [ip, #0x1c]
0048e8f0  20 20 9c e5                                      ldr r2, [ip, #0x20]
0048e8f4  02 20 61 e0                                      rsb r2, r1, r2
0048e8f8  42 22 a0 e1                                      asr r2, r2, #4
0048e8fc  82 00 82 e0                                      add r0, r2, r2, lsl #1
0048e900  00 02 80 e0                                      add r0, r0, r0, lsl #4
0048e904  00 04 80 e0                                      add r0, r0, r0, lsl #8
0048e908  00 08 80 e0                                      add r0, r0, r0, lsl #16
0048e90c  00 21 82 e0                                      add r2, r2, r0, lsl #2
0048e910  02 00 53 e1                                      cmp r3, r2
0048e914  1e 00 00 2a                                      bhs #0x48e994
0048e918  50 20 a0 e3                                      mov r2, #0x50
0048e91c  6b 6f 8d e2                                      add r6, sp, #0x1ac
0048e920  92 13 21 e0                                      mla r1, r2, r3, r1
0048e924  06 00 a0 e1                                      mov r0, r6
0048e928  54 fe ff eb                                      bl #0x48e280
0048e92c  04 00 94 e5                                      ldr r0, [r4, #4]
0048e930  c4 11 9d e5                                      ldr r1, [sp, #0x1c4]
0048e934  4e fe ff eb                                      bl #0x48e274
0048e938  00 90 50 e2                                      subs sb, r0, #0
0048e93c  0a 00 00 0a                                      beq #0x48e96c
0048e940  57 7f 8d e2                                      add r7, sp, #0x15c
0048e944  06 10 a0 e1                                      mov r1, r6
0048e948  07 00 a0 e1                                      mov r0, r7
0048e94c  4b fe ff eb                                      bl #0x48e280
0048e950  09 10 a0 e1                                      mov r1, sb
0048e954  04 00 a0 e1                                      mov r0, r4
0048e958  07 20 a0 e1                                      mov r2, r7
0048e95c  84 f6 ff eb                                      bl #0x48c374
0048e960  00 90 a0 e1                                      mov sb, r0
0048e964  07 00 a0 e1                                      mov r0, r7
0048e968  18 e6 ff eb                                      bl #0x4881d0
0048e96c  06 00 a0 e1                                      mov r0, r6
0048e970  16 e6 ff eb                                      bl #0x4881d0
0048e974  0b 30 95 e7                                      ldr r3, [r5, fp]
0048e978  fc 21 9d e5                                      ldr r2, [sp, #0x1fc]
0048e97c  09 00 a0 e1                                      mov r0, sb
0048e980  00 30 93 e5                                      ldr r3, [r3]
0048e984  03 00 52 e1                                      cmp r2, r3
0048e988  6d 00 00 1a                                      bne #0x48eb44
0048e98c  81 df 8d e2                                      add sp, sp, #0x204
0048e990  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048e994  0c 30 8d e2                                      add r3, sp, #0xc
0048e998  1c 10 8c e2                                      add r1, ip, #0x1c
0048e99c  03 00 a0 e1                                      mov r0, r3
0048e9a0  04 30 8d e5                                      str r3, [sp, #4]
0048e9a4  c5 fe ff eb                                      bl #0x48e4c0
0048e9a8  04 00 94 e5                                      ldr r0, [r4, #4]
0048e9ac  10 60 9d e5                                      ldr r6, [sp, #0x10]
0048e9b0  0c 70 9d e5                                      ldr r7, [sp, #0xc]
0048e9b4  ce f4 ff eb                                      bl #0x48bcf4
0048e9b8  06 10 a0 e1                                      mov r1, r6
0048e9bc  00 20 a0 e1                                      mov r2, r0
0048e9c0  07 00 a0 e1                                      mov r0, r7
0048e9c4  9c ff ff eb                                      bl #0x48e83c
0048e9c8  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0048e9cc  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0048e9d0  0a 00 56 e1                                      cmp r6, sl
0048e9d4  1a 00 00 0a                                      beq #0x48ea44
0048e9d8  43 7f 8d e2                                      add r7, sp, #0x10c
0048e9dc  bc 80 8d e2                                      add r8, sp, #0xbc
0048e9e0  06 10 a0 e1                                      mov r1, r6
0048e9e4  07 00 a0 e1                                      mov r0, r7
0048e9e8  24 fe ff eb                                      bl #0x48e280
0048e9ec  04 00 94 e5                                      ldr r0, [r4, #4]
0048e9f0  24 11 9d e5                                      ldr r1, [sp, #0x124]
0048e9f4  1e fe ff eb                                      bl #0x48e274
0048e9f8  00 90 50 e2                                      subs sb, r0, #0
0048e9fc  0b 00 00 0a                                      beq #0x48ea30
0048ea00  07 10 a0 e1                                      mov r1, r7
0048ea04  08 00 a0 e1                                      mov r0, r8
0048ea08  1c fe ff eb                                      bl #0x48e280
0048ea0c  09 10 a0 e1                                      mov r1, sb
0048ea10  08 20 a0 e1                                      mov r2, r8
0048ea14  04 00 a0 e1                                      mov r0, r4
0048ea18  55 f6 ff eb                                      bl #0x48c374
0048ea1c  00 90 a0 e1                                      mov sb, r0
0048ea20  08 00 a0 e1                                      mov r0, r8
0048ea24  e9 e5 ff eb                                      bl #0x4881d0
0048ea28  00 00 59 e3                                      cmp sb, #0
0048ea2c  08 00 00 1a                                      bne #0x48ea54
0048ea30  50 60 86 e2                                      add r6, r6, #0x50
0048ea34  07 00 a0 e1                                      mov r0, r7
0048ea38  e4 e5 ff eb                                      bl #0x4881d0
0048ea3c  0a 00 56 e1                                      cmp r6, sl
0048ea40  e6 ff ff 1a                                      bne #0x48e9e0
0048ea44  00 90 a0 e3                                      mov sb, #0
0048ea48  04 00 9d e5                                      ldr r0, [sp, #4]
0048ea4c  0b e6 ff eb                                      bl #0x488280
0048ea50  c7 ff ff ea                                      b #0x48e974
0048ea54  07 00 a0 e1                                      mov r0, r7
0048ea58  dc e5 ff eb                                      bl #0x4881d0
0048ea5c  f9 ff ff ea                                      b #0x48ea48
0048ea60  0c 30 8d e2                                      add r3, sp, #0xc
0048ea64  30 10 90 e5                                      ldr r1, [r0, #0x30]
0048ea68  34 20 90 e5                                      ldr r2, [r0, #0x34]
0048ea6c  04 30 8d e5                                      str r3, [sp, #4]
0048ea70  04 00 9d e5                                      ldr r0, [sp, #4]
0048ea74  18 30 8d e2                                      add r3, sp, #0x18
0048ea78  14 c0 8d e5                                      str ip, [sp, #0x14]
0048ea7c  0c c0 8d e5                                      str ip, [sp, #0xc]
0048ea80  10 c0 8d e5                                      str ip, [sp, #0x10]
0048ea84  a0 f7 ff eb                                      bl #0x48c90c
0048ea88  04 00 94 e5                                      ldr r0, [r4, #4]
0048ea8c  10 60 9d e5                                      ldr r6, [sp, #0x10]
0048ea90  0c 70 9d e5                                      ldr r7, [sp, #0xc]
0048ea94  96 f4 ff eb                                      bl #0x48bcf4
0048ea98  06 10 a0 e1                                      mov r1, r6
0048ea9c  00 20 a0 e1                                      mov r2, r0
0048eaa0  07 00 a0 e1                                      mov r0, r7
0048eaa4  1c f6 ff eb                                      bl #0x48c31c
0048eaa8  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0048eaac  10 30 9d e5                                      ldr r3, [sp, #0x10]
0048eab0  03 00 56 e1                                      cmp r6, r3
0048eab4  1b 00 00 0a                                      beq #0x48eb28
0048eab8  6c 70 8d e2                                      add r7, sp, #0x6c
0048eabc  1c 80 8d e2                                      add r8, sp, #0x1c
0048eac0  00 a0 96 e5                                      ldr sl, [r6]
0048eac4  07 00 a0 e1                                      mov r0, r7
0048eac8  6c fd ff eb                                      bl #0x48e080
0048eacc  0a 10 a0 e1                                      mov r1, sl
0048ead0  04 00 94 e5                                      ldr r0, [r4, #4]
0048ead4  e6 fd ff eb                                      bl #0x48e274
0048ead8  00 a0 50 e2                                      subs sl, r0, #0
0048eadc  0b 00 00 0a                                      beq #0x48eb10
0048eae0  07 10 a0 e1                                      mov r1, r7
0048eae4  08 00 a0 e1                                      mov r0, r8
0048eae8  e4 fd ff eb                                      bl #0x48e280
0048eaec  0a 10 a0 e1                                      mov r1, sl
0048eaf0  08 20 a0 e1                                      mov r2, r8
0048eaf4  04 00 a0 e1                                      mov r0, r4
0048eaf8  1d f6 ff eb                                      bl #0x48c374
0048eafc  00 90 a0 e1                                      mov sb, r0
0048eb00  08 00 a0 e1                                      mov r0, r8
0048eb04  b1 e5 ff eb                                      bl #0x4881d0
0048eb08  00 00 59 e3                                      cmp sb, #0
0048eb0c  09 00 00 1a                                      bne #0x48eb38
0048eb10  07 00 a0 e1                                      mov r0, r7
0048eb14  ad e5 ff eb                                      bl #0x4881d0
0048eb18  10 30 9d e5                                      ldr r3, [sp, #0x10]
0048eb1c  04 60 86 e2                                      add r6, r6, #4
0048eb20  03 00 56 e1                                      cmp r6, r3
0048eb24  e5 ff ff 1a                                      bne #0x48eac0
0048eb28  00 90 a0 e3                                      mov sb, #0
0048eb2c  04 00 9d e5                                      ldr r0, [sp, #4]
0048eb30  d2 f7 ff eb                                      bl #0x48ca80
0048eb34  8e ff ff ea                                      b #0x48e974
0048eb38  07 00 a0 e1                                      mov r0, r7
0048eb3c  a3 e5 ff eb                                      bl #0x4881d0
0048eb40  f9 ff ff ea                                      b #0x48eb2c
0048eb44  f1 fd f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0048eb48  d4 61 50 00 ac 40 00 00                          .byte 0xd4, 0x61, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00
