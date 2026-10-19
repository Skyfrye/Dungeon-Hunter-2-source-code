; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048cfcc, declared_size=44, range_size=44, mode=arm
; class-group: rnd::ForceBlock
; alias: _ZNK3rnd10ForceBlock7NewImplEPNS_4Rule4ImplE
; demangled: rnd::ForceBlock::NewImpl(rnd::Rule::Impl*) const
; decoder-mode: arm
0048cfcc  70 40 2d e9                                      push {r4, r5, r6, lr}
0048cfd0  00 60 a0 e1                                      mov r6, r0
0048cfd4  48 00 a0 e3                                      mov r0, #0x48
0048cfd8  01 50 a0 e1                                      mov r5, r1
0048cfdc  1c 0d fa eb                                      bl #0x310454
0048cfe0  06 10 a0 e1                                      mov r1, r6
0048cfe4  00 40 a0 e1                                      mov r4, r0
0048cfe8  05 20 a0 e1                                      mov r2, r5
0048cfec  c7 ff ff eb                                      bl #0x48cf10
0048cff0  04 00 a0 e1                                      mov r0, r4
0048cff4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048d638, declared_size=52, range_size=52, mode=arm
; class-group: rnd::ForceBlock
; alias: _ZN3rnd10ForceBlockD1Ev
; demangled: rnd::ForceBlock::~ForceBlock()
; decoder-mode: arm
0048d638  24 30 9f e5                                      ldr r3, [pc, #0x24]
0048d63c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0048d640  10 40 2d e9                                      push {r4, lr}
0048d644  03 30 8f e0                                      add r3, pc, r3
0048d648  02 20 93 e7                                      ldr r2, [r3, r2]
0048d64c  00 40 a0 e1                                      mov r4, r0
0048d650  08 20 82 e2                                      add r2, r2, #8
0048d654  00 20 80 e5                                      str r2, [r0]
0048d658  cb ff ff eb                                      bl #0x48d58c
0048d65c  04 00 a0 e1                                      mov r0, r4
0048d660  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d664  4c 74 50 00 0c 09 00 00                          .byte 0x4c, 0x74, 0x50, 0x00, 0x0c, 0x09, 0x00, 0x00

; FUNCTION 0x0048d734, declared_size=60, range_size=60, mode=arm
; class-group: rnd::ForceBlock
; alias: _ZN3rnd10ForceBlockD0Ev
; demangled: rnd::ForceBlock::~ForceBlock()
; decoder-mode: arm
0048d734  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0048d738  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048d73c  10 40 2d e9                                      push {r4, lr}
0048d740  03 30 8f e0                                      add r3, pc, r3
0048d744  02 20 93 e7                                      ldr r2, [r3, r2]
0048d748  00 40 a0 e1                                      mov r4, r0
0048d74c  08 20 82 e2                                      add r2, r2, #8
0048d750  00 20 80 e5                                      str r2, [r0]
0048d754  8c ff ff eb                                      bl #0x48d58c
0048d758  04 00 a0 e1                                      mov r0, r4
0048d75c  37 0b fa eb                                      bl #0x310440
0048d760  04 00 a0 e1                                      mov r0, r4
0048d764  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0048d768  50 73 50 00 0c 09 00 00                          .byte 0x50, 0x73, 0x50, 0x00, 0x0c, 0x09, 0x00, 0x00

; FUNCTION 0x0048dd80, declared_size=60, range_size=60, mode=arm
; class-group: rnd::ForceBlock
; alias: _ZN3rnd10ForceBlockC1ERNS_8RootRuleEPNS_4RuleE
; demangled: rnd::ForceBlock::ForceBlock(rnd::RootRule&, rnd::Rule*)
; decoder-mode: arm
0048dd80  70 40 2d e9                                      push {r4, r5, r6, lr}
0048dd84  28 40 9f e5                                      ldr r4, [pc, #0x28]
0048dd88  00 50 a0 e1                                      mov r5, r0
0048dd8c  bf ff ff eb                                      bl #0x48dc90
0048dd90  20 30 9f e5                                      ldr r3, [pc, #0x20]
0048dd94  04 40 8f e0                                      add r4, pc, r4
0048dd98  04 20 a0 e3                                      mov r2, #4
0048dd9c  03 30 94 e7                                      ldr r3, [r4, r3]
0048dda0  88 20 85 e5                                      str r2, [r5, #0x88]
0048dda4  05 00 a0 e1                                      mov r0, r5
0048dda8  08 30 83 e2                                      add r3, r3, #8
0048ddac  00 30 85 e5                                      str r3, [r5]
0048ddb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048ddb4  fc 6c 50 00 0c 09 00 00                          .byte 0xfc, 0x6c, 0x50, 0x00, 0x0c, 0x09, 0x00, 0x00

; FUNCTION 0x0048ddbc, declared_size=60, range_size=60, mode=arm
; class-group: rnd::ForceBlock
; alias: _ZN3rnd10ForceBlockC2ERNS_8RootRuleEPNS_4RuleE
; demangled: rnd::ForceBlock::ForceBlock(rnd::RootRule&, rnd::Rule*)
; decoder-mode: arm
0048ddbc  70 40 2d e9                                      push {r4, r5, r6, lr}
0048ddc0  28 40 9f e5                                      ldr r4, [pc, #0x28]
0048ddc4  00 50 a0 e1                                      mov r5, r0
0048ddc8  b0 ff ff eb                                      bl #0x48dc90
0048ddcc  20 30 9f e5                                      ldr r3, [pc, #0x20]
0048ddd0  04 40 8f e0                                      add r4, pc, r4
0048ddd4  04 20 a0 e3                                      mov r2, #4
0048ddd8  03 30 94 e7                                      ldr r3, [r4, r3]
0048dddc  88 20 85 e5                                      str r2, [r5, #0x88]
0048dde0  05 00 a0 e1                                      mov r0, r5
0048dde4  08 30 83 e2                                      add r3, r3, #8
0048dde8  00 30 85 e5                                      str r3, [r5]
0048ddec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048ddf0  c0 6c 50 00 0c 09 00 00                          .byte 0xc0, 0x6c, 0x50, 0x00, 0x0c, 0x09, 0x00, 0x00

; FUNCTION 0x004912d0, declared_size=60, range_size=60, mode=arm
; class-group: rnd::ForceBlock
; alias: _ZN3rnd10ForceBlock11LoadFromXmlEP9TiXmlNode
; demangled: rnd::ForceBlock::LoadFromXml(TiXmlNode*)
; decoder-mode: arm
004912d0  70 40 2d e9                                      push {r4, r5, r6, lr}
004912d4  00 50 a0 e1                                      mov r5, r0
004912d8  00 30 91 e5                                      ldr r3, [r1]
004912dc  01 00 a0 e1                                      mov r0, r1
004912e0  01 40 a0 e1                                      mov r4, r1
004912e4  0f e0 a0 e1                                      mov lr, pc
004912e8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
004912ec  14 10 9f e5                                      ldr r1, [pc, #0x14]
004912f0  01 10 8f e0                                      add r1, pc, r1
004912f4  5d 0e 02 eb                                      bl #0x514c70
004912f8  05 00 a0 e1                                      mov r0, r5
004912fc  04 10 a0 e1                                      mov r1, r4
00491300  70 40 bd e8                                      pop {r4, r5, r6, lr}
00491304  34 fe ff ea                                      b #0x490bdc
; mapping-symbol data/literal pool
00491308  d0 3c 44 00                                      .byte 0xd0, 0x3c, 0x44, 0x00
