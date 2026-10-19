; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048bd00, declared_size=4, range_size=4, mode=arm
; class-group: rnd::RootRule
; alias: _ZN3rnd8RootRule6UnloadEv
; demangled: rnd::RootRule::Unload()
; decoder-mode: arm
0048bd00  1e ff 2f e1                                      bx lr

; FUNCTION 0x0048d17c, declared_size=36, range_size=36, mode=arm
; class-group: rnd::RootRule
; alias: _ZNK3rnd8RootRule7NewImplEPNS_4Rule4ImplE
; demangled: rnd::RootRule::NewImpl(rnd::Rule::Impl*) const
; decoder-mode: arm
0048d17c  70 40 2d e9                                      push {r4, r5, r6, lr}
0048d180  00 50 a0 e1                                      mov r5, r0
0048d184  48 00 a0 e3                                      mov r0, #0x48
0048d188  b1 0c fa eb                                      bl #0x310454
0048d18c  05 10 a0 e1                                      mov r1, r5
0048d190  00 40 a0 e1                                      mov r4, r0
0048d194  c6 ff ff eb                                      bl #0x48d0b4
0048d198  04 00 a0 e1                                      mov r0, r4
0048d19c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048d6a0, declared_size=60, range_size=60, mode=arm
; class-group: rnd::RootRule
; alias: _ZN3rnd8RootRuleD1Ev
; demangled: rnd::RootRule::~RootRule()
; decoder-mode: arm
0048d6a0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0048d6a4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048d6a8  10 40 2d e9                                      push {r4, lr}
0048d6ac  03 30 8f e0                                      add r3, pc, r3
0048d6b0  02 20 93 e7                                      ldr r2, [r3, r2]
0048d6b4  00 40 a0 e1                                      mov r4, r0
0048d6b8  08 20 82 e2                                      add r2, r2, #8
0048d6bc  00 20 80 e5                                      str r2, [r0]
0048d6c0  8e f9 ff eb                                      bl #0x48bd00
0048d6c4  04 00 a0 e1                                      mov r0, r4
0048d6c8  af ff ff eb                                      bl #0x48d58c
0048d6cc  04 00 a0 e1                                      mov r0, r4
0048d6d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d6d4  e4 73 50 00 a8 48 00 00                          .byte 0xe4, 0x73, 0x50, 0x00, 0xa8, 0x48, 0x00, 0x00

; FUNCTION 0x0048d6dc, declared_size=28, range_size=28, mode=arm
; class-group: rnd::RootRule
; alias: _ZN3rnd8RootRuleD0Ev
; demangled: rnd::RootRule::~RootRule()
; decoder-mode: arm
0048d6dc  10 40 2d e9                                      push {r4, lr}
0048d6e0  00 40 a0 e1                                      mov r4, r0
0048d6e4  ed ff ff eb                                      bl #0x48d6a0
0048d6e8  04 00 a0 e1                                      mov r0, r4
0048d6ec  53 0b fa eb                                      bl #0x310440
0048d6f0  04 00 a0 e1                                      mov r0, r4
0048d6f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0048d6f8, declared_size=60, range_size=60, mode=arm
; class-group: rnd::RootRule
; alias: _ZN3rnd8RootRuleD2Ev
; demangled: rnd::RootRule::~RootRule()
; decoder-mode: arm
0048d6f8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0048d6fc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048d700  10 40 2d e9                                      push {r4, lr}
0048d704  03 30 8f e0                                      add r3, pc, r3
0048d708  02 20 93 e7                                      ldr r2, [r3, r2]
0048d70c  00 40 a0 e1                                      mov r4, r0
0048d710  08 20 82 e2                                      add r2, r2, #8
0048d714  00 20 80 e5                                      str r2, [r0]
0048d718  78 f9 ff eb                                      bl #0x48bd00
0048d71c  04 00 a0 e1                                      mov r0, r4
0048d720  99 ff ff eb                                      bl #0x48d58c
0048d724  04 00 a0 e1                                      mov r0, r4
0048d728  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d72c  8c 73 50 00 a8 48 00 00                          .byte 0x8c, 0x73, 0x50, 0x00, 0xa8, 0x48, 0x00, 0x00

; FUNCTION 0x0048dff8, declared_size=68, range_size=68, mode=arm
; class-group: rnd::RootRule
; alias: _ZN3rnd8RootRuleC1ERNS_15RandomGeneratorE
; demangled: rnd::RootRule::RootRule(rnd::RandomGenerator&)
; decoder-mode: arm
0048dff8  70 40 2d e9                                      push {r4, r5, r6, lr}
0048dffc  00 20 a0 e3                                      mov r2, #0
0048e000  01 60 a0 e1                                      mov r6, r1
0048e004  28 50 9f e5                                      ldr r5, [pc, #0x28]
0048e008  00 10 a0 e1                                      mov r1, r0
0048e00c  00 40 a0 e1                                      mov r4, r0
0048e010  1e ff ff eb                                      bl #0x48dc90
0048e014  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0048e018  05 50 8f e0                                      add r5, pc, r5
0048e01c  8c 60 84 e5                                      str r6, [r4, #0x8c]
0048e020  03 30 95 e7                                      ldr r3, [r5, r3]
0048e024  04 00 a0 e1                                      mov r0, r4
0048e028  08 30 83 e2                                      add r3, r3, #8
0048e02c  00 30 84 e5                                      str r3, [r4]
0048e030  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048e034  78 6a 50 00 a8 48 00 00                          .byte 0x78, 0x6a, 0x50, 0x00, 0xa8, 0x48, 0x00, 0x00

; FUNCTION 0x0048e03c, declared_size=68, range_size=68, mode=arm
; class-group: rnd::RootRule
; alias: _ZN3rnd8RootRuleC2ERNS_15RandomGeneratorE
; demangled: rnd::RootRule::RootRule(rnd::RandomGenerator&)
; decoder-mode: arm
0048e03c  70 40 2d e9                                      push {r4, r5, r6, lr}
0048e040  00 20 a0 e3                                      mov r2, #0
0048e044  01 60 a0 e1                                      mov r6, r1
0048e048  28 50 9f e5                                      ldr r5, [pc, #0x28]
0048e04c  00 10 a0 e1                                      mov r1, r0
0048e050  00 40 a0 e1                                      mov r4, r0
0048e054  0d ff ff eb                                      bl #0x48dc90
0048e058  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
0048e05c  05 50 8f e0                                      add r5, pc, r5
0048e060  8c 60 84 e5                                      str r6, [r4, #0x8c]
0048e064  03 30 95 e7                                      ldr r3, [r5, r3]
0048e068  04 00 a0 e1                                      mov r0, r4
0048e06c  08 30 83 e2                                      add r3, r3, #8
0048e070  00 30 84 e5                                      str r3, [r4]
0048e074  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048e078  34 6a 50 00 a8 48 00 00                          .byte 0x34, 0x6a, 0x50, 0x00, 0xa8, 0x48, 0x00, 0x00

; FUNCTION 0x004913cc, declared_size=4, range_size=4, mode=arm
; class-group: rnd::RootRule
; alias: _ZN3rnd8RootRule11LoadFromXmlEP9TiXmlNode
; demangled: rnd::RootRule::LoadFromXml(TiXmlNode*)
; decoder-mode: arm
004913cc  02 fe ff ea                                      b #0x490bdc
