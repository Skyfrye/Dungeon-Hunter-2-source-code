; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048c210, declared_size=44, range_size=44, mode=arm
; class-group: rnd::Path
; alias: _ZNK3rnd4Path7NewImplEPNS_4Rule4ImplE
; demangled: rnd::Path::NewImpl(rnd::Rule::Impl*) const
; decoder-mode: arm
0048c210  70 40 2d e9                                      push {r4, r5, r6, lr}
0048c214  00 60 a0 e1                                      mov r6, r0
0048c218  4c 00 a0 e3                                      mov r0, #0x4c
0048c21c  01 50 a0 e1                                      mov r5, r1
0048c220  8b 10 fa eb                                      bl #0x310454
0048c224  06 10 a0 e1                                      mov r1, r6
0048c228  00 40 a0 e1                                      mov r4, r0
0048c22c  05 20 a0 e1                                      mov r2, r5
0048c230  be ff ff eb                                      bl #0x48c130
0048c234  04 00 a0 e1                                      mov r0, r4
0048c238  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048d604, declared_size=52, range_size=52, mode=arm
; class-group: rnd::Path
; alias: _ZN3rnd4PathD1Ev
; demangled: rnd::Path::~Path()
; decoder-mode: arm
0048d604  24 30 9f e5                                      ldr r3, [pc, #0x24]
0048d608  24 20 9f e5                                      ldr r2, [pc, #0x24]
0048d60c  10 40 2d e9                                      push {r4, lr}
0048d610  03 30 8f e0                                      add r3, pc, r3
0048d614  02 20 93 e7                                      ldr r2, [r3, r2]
0048d618  00 40 a0 e1                                      mov r4, r0
0048d61c  08 20 82 e2                                      add r2, r2, #8
0048d620  00 20 80 e5                                      str r2, [r0]
0048d624  d8 ff ff eb                                      bl #0x48d58c
0048d628  04 00 a0 e1                                      mov r0, r4
0048d62c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d630  80 74 50 00 34 2c 00 00                          .byte 0x80, 0x74, 0x50, 0x00, 0x34, 0x2c, 0x00, 0x00

; FUNCTION 0x0048d770, declared_size=60, range_size=60, mode=arm
; class-group: rnd::Path
; alias: _ZN3rnd4PathD0Ev
; demangled: rnd::Path::~Path()
; decoder-mode: arm
0048d770  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0048d774  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048d778  10 40 2d e9                                      push {r4, lr}
0048d77c  03 30 8f e0                                      add r3, pc, r3
0048d780  02 20 93 e7                                      ldr r2, [r3, r2]
0048d784  00 40 a0 e1                                      mov r4, r0
0048d788  08 20 82 e2                                      add r2, r2, #8
0048d78c  00 20 80 e5                                      str r2, [r0]
0048d790  7d ff ff eb                                      bl #0x48d58c
0048d794  04 00 a0 e1                                      mov r0, r4
0048d798  28 0b fa eb                                      bl #0x310440
0048d79c  04 00 a0 e1                                      mov r0, r4
0048d7a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d7a4  14 73 50 00 34 2c 00 00                          .byte 0x14, 0x73, 0x50, 0x00, 0x34, 0x2c, 0x00, 0x00

; FUNCTION 0x0048ddf8, declared_size=76, range_size=76, mode=arm
; class-group: rnd::Path
; alias: _ZN3rnd4PathC1ERNS_8RootRuleEPNS_4RuleE
; demangled: rnd::Path::Path(rnd::RootRule&, rnd::Rule*)
; decoder-mode: arm
0048ddf8  70 40 2d e9                                      push {r4, r5, r6, lr}
0048ddfc  38 50 9f e5                                      ldr r5, [pc, #0x38]
0048de00  00 40 a0 e1                                      mov r4, r0
0048de04  a1 ff ff eb                                      bl #0x48dc90
0048de08  30 30 9f e5                                      ldr r3, [pc, #0x30]
0048de0c  05 50 8f e0                                      add r5, pc, r5
0048de10  04 00 a0 e1                                      mov r0, r4
0048de14  03 30 95 e7                                      ldr r3, [r5, r3]
0048de18  08 30 83 e2                                      add r3, r3, #8
0048de1c  00 30 84 e5                                      str r3, [r4]
0048de20  01 30 a0 e3                                      mov r3, #1
0048de24  8c 30 c4 e5                                      strb r3, [r4, #0x8c]
0048de28  00 30 a0 e3                                      mov r3, #0
0048de2c  8d 30 c4 e5                                      strb r3, [r4, #0x8d]
0048de30  04 30 a0 e3                                      mov r3, #4
0048de34  88 30 84 e5                                      str r3, [r4, #0x88]
0048de38  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048de3c  84 6c 50 00 34 2c 00 00                          .byte 0x84, 0x6c, 0x50, 0x00, 0x34, 0x2c, 0x00, 0x00

; FUNCTION 0x0048dfac, declared_size=76, range_size=76, mode=arm
; class-group: rnd::Path
; alias: _ZN3rnd4PathC2ERNS_8RootRuleEPNS_4RuleE
; demangled: rnd::Path::Path(rnd::RootRule&, rnd::Rule*)
; decoder-mode: arm
0048dfac  70 40 2d e9                                      push {r4, r5, r6, lr}
0048dfb0  38 50 9f e5                                      ldr r5, [pc, #0x38]
0048dfb4  00 40 a0 e1                                      mov r4, r0
0048dfb8  34 ff ff eb                                      bl #0x48dc90
0048dfbc  30 30 9f e5                                      ldr r3, [pc, #0x30]
0048dfc0  05 50 8f e0                                      add r5, pc, r5
0048dfc4  04 00 a0 e1                                      mov r0, r4
0048dfc8  03 30 95 e7                                      ldr r3, [r5, r3]
0048dfcc  08 30 83 e2                                      add r3, r3, #8
0048dfd0  00 30 84 e5                                      str r3, [r4]
0048dfd4  01 30 a0 e3                                      mov r3, #1
0048dfd8  8c 30 c4 e5                                      strb r3, [r4, #0x8c]
0048dfdc  00 30 a0 e3                                      mov r3, #0
0048dfe0  8d 30 c4 e5                                      strb r3, [r4, #0x8d]
0048dfe4  04 30 a0 e3                                      mov r3, #4
0048dfe8  88 30 84 e5                                      str r3, [r4, #0x88]
0048dfec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048dff0  d0 6a 50 00 34 2c 00 00                          .byte 0xd0, 0x6a, 0x50, 0x00, 0x34, 0x2c, 0x00, 0x00

; FUNCTION 0x0049130c, declared_size=192, range_size=192, mode=arm
; class-group: rnd::Path
; alias: _ZN3rnd4Path11LoadFromXmlEP9TiXmlNode
; demangled: rnd::Path::LoadFromXml(TiXmlNode*)
; decoder-mode: arm
0049130c  70 40 2d e9                                      push {r4, r5, r6, lr}
00491310  00 40 51 e2                                      subs r4, r1, #0
00491314  00 50 a0 e1                                      mov r5, r0
00491318  08 d0 4d e2                                      sub sp, sp, #8
0049131c  04 00 a0 01                                      moveq r0, r4
00491320  20 00 00 0a                                      beq #0x4913a8
00491324  00 30 94 e5                                      ldr r3, [r4]
00491328  04 00 a0 e1                                      mov r0, r4
0049132c  0f e0 a0 e1                                      mov lr, pc
00491330  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00491334  88 10 9f e5                                      ldr r1, [pc, #0x88]
00491338  04 20 8d e2                                      add r2, sp, #4
0049133c  01 10 8f e0                                      add r1, pc, r1
00491340  2a 11 02 eb                                      bl #0x5157f0
00491344  00 00 50 e3                                      cmp r0, #0
00491348  18 00 00 0a                                      beq #0x4913b0
0049134c  00 30 94 e5                                      ldr r3, [r4]
00491350  04 00 a0 e1                                      mov r0, r4
00491354  0f e0 a0 e1                                      mov lr, pc
00491358  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0049135c  64 10 9f e5                                      ldr r1, [pc, #0x64]
00491360  01 10 8f e0                                      add r1, pc, r1
00491364  41 0e 02 eb                                      bl #0x514c70
00491368  00 60 50 e2                                      subs r6, r0, #0
0049136c  0a 00 00 0a                                      beq #0x49139c
00491370  47 f3 f9 eb                                      bl #0x30e094
00491374  2c 10 a0 e3                                      mov r1, #0x2c
00491378  84 00 85 e5                                      str r0, [r5, #0x84]
0049137c  80 00 85 e5                                      str r0, [r5, #0x80]
00491380  06 00 a0 e1                                      mov r0, r6
00491384  27 f6 f9 eb                                      bl #0x30ec28
00491388  00 00 50 e3                                      cmp r0, #0
0049138c  02 00 00 0a                                      beq #0x49139c
00491390  01 00 80 e2                                      add r0, r0, #1
00491394  3e f3 f9 eb                                      bl #0x30e094
00491398  84 00 85 e5                                      str r0, [r5, #0x84]
0049139c  05 00 a0 e1                                      mov r0, r5
004913a0  04 10 a0 e1                                      mov r1, r4
004913a4  0c fe ff eb                                      bl #0x490bdc
004913a8  08 d0 8d e2                                      add sp, sp, #8
004913ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
004913b0  04 30 9d e5                                      ldr r3, [sp, #4]
004913b4  00 30 53 e2                                      subs r3, r3, #0
004913b8  01 30 a0 13                                      movne r3, #1
004913bc  8c 30 c5 e5                                      strb r3, [r5, #0x8c]
004913c0  e1 ff ff ea                                      b #0x49134c
; mapping-symbol data/literal pool
004913c4  94 3c 44 00 78 8b 45 00                          .byte 0x94, 0x3c, 0x44, 0x00, 0x78, 0x8b, 0x45, 0x00
