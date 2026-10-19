; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048c054, declared_size=44, range_size=44, mode=arm
; class-group: rnd::EndPath
; alias: _ZNK3rnd7EndPath7NewImplEPNS_4Rule4ImplE
; demangled: rnd::EndPath::NewImpl(rnd::Rule::Impl*) const
; decoder-mode: arm
0048c054  70 40 2d e9                                      push {r4, r5, r6, lr}
0048c058  00 60 a0 e1                                      mov r6, r0
0048c05c  48 00 a0 e3                                      mov r0, #0x48
0048c060  01 50 a0 e1                                      mov r5, r1
0048c064  fa 10 fa eb                                      bl #0x310454
0048c068  06 10 a0 e1                                      mov r1, r6
0048c06c  00 40 a0 e1                                      mov r4, r0
0048c070  05 20 a0 e1                                      mov r2, r5
0048c074  e7 ff ff eb                                      bl #0x48c018
0048c078  04 00 a0 e1                                      mov r0, r4
0048c07c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048d66c, declared_size=52, range_size=52, mode=arm
; class-group: rnd::EndPath
; alias: _ZN3rnd7EndPathD1Ev
; demangled: rnd::EndPath::~EndPath()
; decoder-mode: arm
0048d66c  24 30 9f e5                                      ldr r3, [pc, #0x24]
0048d670  24 20 9f e5                                      ldr r2, [pc, #0x24]
0048d674  10 40 2d e9                                      push {r4, lr}
0048d678  03 30 8f e0                                      add r3, pc, r3
0048d67c  02 20 93 e7                                      ldr r2, [r3, r2]
0048d680  00 40 a0 e1                                      mov r4, r0
0048d684  08 20 82 e2                                      add r2, r2, #8
0048d688  00 20 80 e5                                      str r2, [r0]
0048d68c  be ff ff eb                                      bl #0x48d58c
0048d690  04 00 a0 e1                                      mov r0, r4
0048d694  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d698  18 74 50 00 f4 2e 00 00                          .byte 0x18, 0x74, 0x50, 0x00, 0xf4, 0x2e, 0x00, 0x00

; FUNCTION 0x0048d7ac, declared_size=60, range_size=60, mode=arm
; class-group: rnd::EndPath
; alias: _ZN3rnd7EndPathD0Ev
; demangled: rnd::EndPath::~EndPath()
; decoder-mode: arm
0048d7ac  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0048d7b0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048d7b4  10 40 2d e9                                      push {r4, lr}
0048d7b8  03 30 8f e0                                      add r3, pc, r3
0048d7bc  02 20 93 e7                                      ldr r2, [r3, r2]
0048d7c0  00 40 a0 e1                                      mov r4, r0
0048d7c4  08 20 82 e2                                      add r2, r2, #8
0048d7c8  00 20 80 e5                                      str r2, [r0]
0048d7cc  6e ff ff eb                                      bl #0x48d58c
0048d7d0  04 00 a0 e1                                      mov r0, r4
0048d7d4  19 0b fa eb                                      bl #0x310440
0048d7d8  04 00 a0 e1                                      mov r0, r4
0048d7dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d7e0  d8 72 50 00 f4 2e 00 00                          .byte 0xd8, 0x72, 0x50, 0x00, 0xf4, 0x2e, 0x00, 0x00

; FUNCTION 0x0048dd18, declared_size=52, range_size=52, mode=arm
; class-group: rnd::EndPath
; alias: _ZN3rnd7EndPathC1ERNS_8RootRuleEPNS_4RuleE
; demangled: rnd::EndPath::EndPath(rnd::RootRule&, rnd::Rule*)
; decoder-mode: arm
0048dd18  70 40 2d e9                                      push {r4, r5, r6, lr}
0048dd1c  20 40 9f e5                                      ldr r4, [pc, #0x20]
0048dd20  00 50 a0 e1                                      mov r5, r0
0048dd24  d9 ff ff eb                                      bl #0x48dc90
0048dd28  18 30 9f e5                                      ldr r3, [pc, #0x18]
0048dd2c  04 40 8f e0                                      add r4, pc, r4
0048dd30  05 00 a0 e1                                      mov r0, r5
0048dd34  03 30 94 e7                                      ldr r3, [r4, r3]
0048dd38  08 30 83 e2                                      add r3, r3, #8
0048dd3c  00 30 85 e5                                      str r3, [r5]
0048dd40  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048dd44  64 6d 50 00 f4 2e 00 00                          .byte 0x64, 0x6d, 0x50, 0x00, 0xf4, 0x2e, 0x00, 0x00

; FUNCTION 0x0048dd4c, declared_size=52, range_size=52, mode=arm
; class-group: rnd::EndPath
; alias: _ZN3rnd7EndPathC2ERNS_8RootRuleEPNS_4RuleE
; demangled: rnd::EndPath::EndPath(rnd::RootRule&, rnd::Rule*)
; decoder-mode: arm
0048dd4c  70 40 2d e9                                      push {r4, r5, r6, lr}
0048dd50  20 40 9f e5                                      ldr r4, [pc, #0x20]
0048dd54  00 50 a0 e1                                      mov r5, r0
0048dd58  cc ff ff eb                                      bl #0x48dc90
0048dd5c  18 30 9f e5                                      ldr r3, [pc, #0x18]
0048dd60  04 40 8f e0                                      add r4, pc, r4
0048dd64  05 00 a0 e1                                      mov r0, r5
0048dd68  03 30 94 e7                                      ldr r3, [r4, r3]
0048dd6c  08 30 83 e2                                      add r3, r3, #8
0048dd70  00 30 85 e5                                      str r3, [r5]
0048dd74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048dd78  30 6d 50 00 f4 2e 00 00                          .byte 0x30, 0x6d, 0x50, 0x00, 0xf4, 0x2e, 0x00, 0x00
