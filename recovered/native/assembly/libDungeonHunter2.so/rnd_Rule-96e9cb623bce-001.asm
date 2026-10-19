; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048bbf8, declared_size=8, range_size=8, mode=arm
; class-group: rnd::Rule
; alias: _ZN3rnd4Rule11GetRootRuleEv
; demangled: rnd::Rule::GetRootRule()
; decoder-mode: arm
0048bbf8  04 00 90 e5                                      ldr r0, [r0, #4]
0048bbfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0048bc94, declared_size=96, range_size=96, mode=arm
; class-group: rnd::Rule
; alias: _ZN3rnd4Rule6UnloadEv
; demangled: rnd::Rule::Unload()
; decoder-mode: arm
0048bc94  10 40 2d e9                                      push {r4, lr}
0048bc98  00 40 a0 e1                                      mov r4, r0
0048bc9c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0048bca0  04 10 82 e2                                      add r1, r2, #4
0048bca4  01 11 84 e0                                      add r1, r4, r1, lsl #2
0048bca8  00 00 52 e3                                      cmp r2, #0
0048bcac  09 00 00 0a                                      beq #0x48bcd8
0048bcb0  01 20 42 e2                                      sub r2, r2, #1
0048bcb4  0c 20 84 e5                                      str r2, [r4, #0xc]
0048bcb8  04 30 31 e5                                      ldr r3, [r1, #-4]!
0048bcbc  00 00 53 e3                                      cmp r3, #0
0048bcc0  f8 ff ff 0a                                      beq #0x48bca8
0048bcc4  03 00 a0 e1                                      mov r0, r3
0048bcc8  00 30 93 e5                                      ldr r3, [r3]
0048bccc  0f e0 a0 e1                                      mov lr, pc
0048bcd0  04 f0 93 e5                                      ldr pc, [r3, #4]
0048bcd4  f0 ff ff ea                                      b #0x48bc9c
0048bcd8  02 30 a0 e1                                      mov r3, r2
0048bcdc  01 20 82 e2                                      add r2, r2, #1
0048bce0  10 00 52 e3                                      cmp r2, #0x10
0048bce4  10 30 84 e5                                      str r3, [r4, #0x10]
0048bce8  04 40 84 e2                                      add r4, r4, #4
0048bcec  fa ff ff 1a                                      bne #0x48bcdc
0048bcf0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0048bcf4, declared_size=12, range_size=12, mode=arm
; class-group: rnd::Rule
; alias: _ZNK3rnd4Rule6GetAppEv
; demangled: rnd::Rule::GetApp() const
; decoder-mode: arm
0048bcf4  04 30 90 e5                                      ldr r3, [r0, #4]
0048bcf8  8c 00 93 e5                                      ldr r0, [r3, #0x8c]
0048bcfc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0048d58c, declared_size=120, range_size=120, mode=arm
; class-group: rnd::Rule
; alias: _ZN3rnd4RuleD2Ev
; demangled: rnd::Rule::~Rule()
; decoder-mode: arm
0048d58c  68 30 9f e5                                      ldr r3, [pc, #0x68]
0048d590  68 20 9f e5                                      ldr r2, [pc, #0x68]
0048d594  70 40 2d e9                                      push {r4, r5, r6, lr}
0048d598  03 30 8f e0                                      add r3, pc, r3
0048d59c  02 20 93 e7                                      ldr r2, [r3, r2]
0048d5a0  00 50 a0 e1                                      mov r5, r0
0048d5a4  00 40 a0 e1                                      mov r4, r0
0048d5a8  08 20 82 e2                                      add r2, r2, #8
0048d5ac  70 20 85 e4                                      str r2, [r5], #0x70
0048d5b0  b7 f9 ff eb                                      bl #0x48bc94
0048d5b4  05 00 a0 e1                                      mov r0, r5
0048d5b8  5c 1a fa eb                                      bl #0x313f30
0048d5bc  50 30 84 e2                                      add r3, r4, #0x50
0048d5c0  14 00 93 e5                                      ldr r0, [r3, #0x14]
0048d5c4  03 00 50 e1                                      cmp r0, r3
0048d5c8  06 00 00 0a                                      beq #0x48d5e8
0048d5cc  00 00 50 e3                                      cmp r0, #0
0048d5d0  04 00 00 0a                                      beq #0x48d5e8
0048d5d4  50 10 94 e5                                      ldr r1, [r4, #0x50]
0048d5d8  01 10 60 e0                                      rsb r1, r0, r1
0048d5dc  80 00 51 e3                                      cmp r1, #0x80
0048d5e0  02 00 00 8a                                      bhi #0x48d5f0
0048d5e4  45 ee 09 eb                                      bl #0x708f00
0048d5e8  04 00 a0 e1                                      mov r0, r4
0048d5ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048d5f0  92 0b fa eb                                      bl #0x310440
0048d5f4  04 00 a0 e1                                      mov r0, r4
0048d5f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048d5fc  f8 74 50 00 2c 24 00 00                          .byte 0xf8, 0x74, 0x50, 0x00, 0x2c, 0x24, 0x00, 0x00

; FUNCTION 0x0048d7e8, declared_size=120, range_size=120, mode=arm
; class-group: rnd::Rule
; alias: _ZN3rnd4RuleD1Ev
; demangled: rnd::Rule::~Rule()
; decoder-mode: arm
0048d7e8  68 30 9f e5                                      ldr r3, [pc, #0x68]
0048d7ec  68 20 9f e5                                      ldr r2, [pc, #0x68]
0048d7f0  70 40 2d e9                                      push {r4, r5, r6, lr}
0048d7f4  03 30 8f e0                                      add r3, pc, r3
0048d7f8  02 20 93 e7                                      ldr r2, [r3, r2]
0048d7fc  00 50 a0 e1                                      mov r5, r0
0048d800  00 40 a0 e1                                      mov r4, r0
0048d804  08 20 82 e2                                      add r2, r2, #8
0048d808  70 20 85 e4                                      str r2, [r5], #0x70
0048d80c  20 f9 ff eb                                      bl #0x48bc94
0048d810  05 00 a0 e1                                      mov r0, r5
0048d814  c5 19 fa eb                                      bl #0x313f30
0048d818  50 30 84 e2                                      add r3, r4, #0x50
0048d81c  14 00 93 e5                                      ldr r0, [r3, #0x14]
0048d820  03 00 50 e1                                      cmp r0, r3
0048d824  06 00 00 0a                                      beq #0x48d844
0048d828  00 00 50 e3                                      cmp r0, #0
0048d82c  04 00 00 0a                                      beq #0x48d844
0048d830  50 10 94 e5                                      ldr r1, [r4, #0x50]
0048d834  01 10 60 e0                                      rsb r1, r0, r1
0048d838  80 00 51 e3                                      cmp r1, #0x80
0048d83c  02 00 00 8a                                      bhi #0x48d84c
0048d840  ae ed 09 eb                                      bl #0x708f00
0048d844  04 00 a0 e1                                      mov r0, r4
0048d848  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048d84c  fb 0a fa eb                                      bl #0x310440
0048d850  04 00 a0 e1                                      mov r0, r4
0048d854  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048d858  9c 72 50 00 2c 24 00 00                          .byte 0x9c, 0x72, 0x50, 0x00, 0x2c, 0x24, 0x00, 0x00

; FUNCTION 0x0048d860, declared_size=28, range_size=28, mode=arm
; class-group: rnd::Rule
; alias: _ZN3rnd4RuleD0Ev
; demangled: rnd::Rule::~Rule()
; decoder-mode: arm
0048d860  10 40 2d e9                                      push {r4, lr}
0048d864  00 40 a0 e1                                      mov r4, r0
0048d868  de ff ff eb                                      bl #0x48d7e8
0048d86c  04 00 a0 e1                                      mov r0, r4
0048d870  f2 0a fa eb                                      bl #0x310440
0048d874  04 00 a0 e1                                      mov r0, r4
0048d878  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0048dc08, declared_size=136, range_size=136, mode=arm
; class-group: rnd::Rule
; alias: _ZN3rnd4RuleC1ERNS_8RootRuleEPS0_
; demangled: rnd::Rule::Rule(rnd::RootRule&, rnd::Rule*)
; decoder-mode: arm
0048dc08  78 30 9f e5                                      ldr r3, [pc, #0x78]
0048dc0c  70 40 2d e9                                      push {r4, r5, r6, lr}
0048dc10  74 e0 9f e5                                      ldr lr, [pc, #0x74]
0048dc14  03 30 8f e0                                      add r3, pc, r3
0048dc18  00 40 a0 e1                                      mov r4, r0
0048dc1c  0e e0 93 e7                                      ldr lr, [r3, lr]
0048dc20  00 50 a0 e3                                      mov r5, #0
0048dc24  50 c0 80 e2                                      add ip, r0, #0x50
0048dc28  08 e0 8e e2                                      add lr, lr, #8
0048dc2c  04 10 80 e5                                      str r1, [r0, #4]
0048dc30  00 e0 80 e5                                      str lr, [r0]
0048dc34  08 20 80 e5                                      str r2, [r0, #8]
0048dc38  10 10 a0 e3                                      mov r1, #0x10
0048dc3c  0c 00 a0 e1                                      mov r0, ip
0048dc40  0c 50 84 e5                                      str r5, [r4, #0xc]
0048dc44  60 c0 84 e5                                      str ip, [r4, #0x60]
0048dc48  64 c0 84 e5                                      str ip, [r4, #0x64]
0048dc4c  8a 0e fa eb                                      bl #0x31167c
0048dc50  60 20 94 e5                                      ldr r2, [r4, #0x60]
0048dc54  01 30 a0 e3                                      mov r3, #1
0048dc58  04 00 a0 e1                                      mov r0, r4
0048dc5c  00 50 c2 e5                                      strb r5, [r2]
0048dc60  00 20 e0 e3                                      mvn r2, #0
0048dc64  6c 20 84 e5                                      str r2, [r4, #0x6c]
0048dc68  7c 50 84 e5                                      str r5, [r4, #0x7c]
0048dc6c  84 30 84 e5                                      str r3, [r4, #0x84]
0048dc70  68 50 84 e5                                      str r5, [r4, #0x68]
0048dc74  70 50 84 e5                                      str r5, [r4, #0x70]
0048dc78  74 50 84 e5                                      str r5, [r4, #0x74]
0048dc7c  78 50 84 e5                                      str r5, [r4, #0x78]
0048dc80  80 30 84 e5                                      str r3, [r4, #0x80]
0048dc84  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048dc88  7c 6e 50 00 2c 24 00 00                          .byte 0x7c, 0x6e, 0x50, 0x00, 0x2c, 0x24, 0x00, 0x00

; FUNCTION 0x0048dc90, declared_size=136, range_size=136, mode=arm
; class-group: rnd::Rule
; alias: _ZN3rnd4RuleC2ERNS_8RootRuleEPS0_
; demangled: rnd::Rule::Rule(rnd::RootRule&, rnd::Rule*)
; decoder-mode: arm
0048dc90  78 30 9f e5                                      ldr r3, [pc, #0x78]
0048dc94  70 40 2d e9                                      push {r4, r5, r6, lr}
0048dc98  74 e0 9f e5                                      ldr lr, [pc, #0x74]
0048dc9c  03 30 8f e0                                      add r3, pc, r3
0048dca0  00 40 a0 e1                                      mov r4, r0
0048dca4  0e e0 93 e7                                      ldr lr, [r3, lr]
0048dca8  00 50 a0 e3                                      mov r5, #0
0048dcac  50 c0 80 e2                                      add ip, r0, #0x50
0048dcb0  08 e0 8e e2                                      add lr, lr, #8
0048dcb4  04 10 80 e5                                      str r1, [r0, #4]
0048dcb8  00 e0 80 e5                                      str lr, [r0]
0048dcbc  08 20 80 e5                                      str r2, [r0, #8]
0048dcc0  10 10 a0 e3                                      mov r1, #0x10
0048dcc4  0c 00 a0 e1                                      mov r0, ip
0048dcc8  0c 50 84 e5                                      str r5, [r4, #0xc]
0048dccc  60 c0 84 e5                                      str ip, [r4, #0x60]
0048dcd0  64 c0 84 e5                                      str ip, [r4, #0x64]
0048dcd4  68 0e fa eb                                      bl #0x31167c
0048dcd8  60 20 94 e5                                      ldr r2, [r4, #0x60]
0048dcdc  01 30 a0 e3                                      mov r3, #1
0048dce0  04 00 a0 e1                                      mov r0, r4
0048dce4  00 50 c2 e5                                      strb r5, [r2]
0048dce8  00 20 e0 e3                                      mvn r2, #0
0048dcec  6c 20 84 e5                                      str r2, [r4, #0x6c]
0048dcf0  7c 50 84 e5                                      str r5, [r4, #0x7c]
0048dcf4  84 30 84 e5                                      str r3, [r4, #0x84]
0048dcf8  68 50 84 e5                                      str r5, [r4, #0x68]
0048dcfc  70 50 84 e5                                      str r5, [r4, #0x70]
0048dd00  74 50 84 e5                                      str r5, [r4, #0x74]
0048dd04  78 50 84 e5                                      str r5, [r4, #0x78]
0048dd08  80 30 84 e5                                      str r3, [r4, #0x80]
0048dd0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0048dd10  f4 6d 50 00 2c 24 00 00                          .byte 0xf4, 0x6d, 0x50, 0x00, 0x2c, 0x24, 0x00, 0x00

; FUNCTION 0x0048de44, declared_size=360, range_size=360, mode=arm
; class-group: rnd::Rule
; alias: _ZN3rnd4Rule7NewRuleEP9TiXmlNode
; demangled: rnd::Rule::NewRule(TiXmlNode*)
; decoder-mode: arm
0048de44  70 40 2d e9                                      push {r4, r5, r6, lr}
0048de48  34 60 91 e5                                      ldr r6, [r1, #0x34]
0048de4c  30 11 9f e5                                      ldr r1, [pc, #0x130]
0048de50  08 d0 4d e2                                      sub sp, sp, #8
0048de54  00 50 a0 e1                                      mov r5, r0
0048de58  01 10 8f e0                                      add r1, pc, r1
0048de5c  06 00 a0 e1                                      mov r0, r6
0048de60  20 02 fa eb                                      bl #0x30e6e8
0048de64  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0048de68  00 40 50 e2                                      subs r4, r0, #0
0048de6c  03 30 8f e0                                      add r3, pc, r3
0048de70  0b 00 00 1a                                      bne #0x48dea4
0048de74  10 21 9f e5                                      ldr r2, [pc, #0x110]
0048de78  02 20 93 e7                                      ldr r2, [r3, r2]
0048de7c  00 20 92 e5                                      ldr r2, [r2]
0048de80  02 00 52 e3                                      cmp r2, #2
0048de84  00 40 84 05                                      streq r4, [r4]
0048de88  04 00 a0 01                                      moveq r0, r4
0048de8c  02 00 00 0a                                      beq #0x48de9c
0048de90  01 00 52 e3                                      cmp r2, #1
0048de94  2c 00 00 0a                                      beq #0x48df4c
0048de98  00 00 a0 e3                                      mov r0, #0
0048de9c  08 d0 8d e2                                      add sp, sp, #8
0048dea0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048dea4  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0048dea8  06 00 a0 e1                                      mov r0, r6
0048deac  01 10 8f e0                                      add r1, pc, r1
0048deb0  0c 02 fa eb                                      bl #0x30e6e8
0048deb4  00 10 50 e2                                      subs r1, r0, #0
0048deb8  0d 00 00 0a                                      beq #0x48def4
0048debc  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
0048dec0  06 00 a0 e1                                      mov r0, r6
0048dec4  01 10 8f e0                                      add r1, pc, r1
0048dec8  06 02 fa eb                                      bl #0x30e6e8
0048decc  00 10 50 e2                                      subs r1, r0, #0
0048ded0  0f 00 00 1a                                      bne #0x48df14
0048ded4  90 00 a0 e3                                      mov r0, #0x90
0048ded8  a4 09 fa eb                                      bl #0x310570
0048dedc  05 20 a0 e1                                      mov r2, r5
0048dee0  00 40 a0 e1                                      mov r4, r0
0048dee4  04 10 95 e5                                      ldr r1, [r5, #4]
0048dee8  a4 ff ff eb                                      bl #0x48dd80
0048deec  04 00 a0 e1                                      mov r0, r4
0048def0  e9 ff ff ea                                      b #0x48de9c
0048def4  90 00 a0 e3                                      mov r0, #0x90
0048def8  9c 09 fa eb                                      bl #0x310570
0048defc  05 20 a0 e1                                      mov r2, r5
0048df00  00 40 a0 e1                                      mov r4, r0
0048df04  04 10 95 e5                                      ldr r1, [r5, #4]
0048df08  ba ff ff eb                                      bl #0x48ddf8
0048df0c  04 00 a0 e1                                      mov r0, r4
0048df10  e1 ff ff ea                                      b #0x48de9c
0048df14  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0048df18  06 00 a0 e1                                      mov r0, r6
0048df1c  01 10 8f e0                                      add r1, pc, r1
0048df20  f0 01 fa eb                                      bl #0x30e6e8
0048df24  00 10 50 e2                                      subs r1, r0, #0
0048df28  da ff ff 1a                                      bne #0x48de98
0048df2c  88 00 a0 e3                                      mov r0, #0x88
0048df30  8e 09 fa eb                                      bl #0x310570
0048df34  05 20 a0 e1                                      mov r2, r5
0048df38  00 40 a0 e1                                      mov r4, r0
0048df3c  04 10 95 e5                                      ldr r1, [r5, #4]
0048df40  74 ff ff eb                                      bl #0x48dd18
0048df44  04 00 a0 e1                                      mov r0, r4
0048df48  d3 ff ff ea                                      b #0x48de9c
0048df4c  48 00 9f e5                                      ldr r0, [pc, #0x48]
0048df50  48 10 9f e5                                      ldr r1, [pc, #0x48]
0048df54  48 20 9f e5                                      ldr r2, [pc, #0x48]
0048df58  00 00 93 e7                                      ldr r0, [r3, r0]
0048df5c  44 30 9f e5                                      ldr r3, [pc, #0x44]
0048df60  89 c1 00 e3                                      movw ip, #0x189
0048df64  01 10 8f e0                                      add r1, pc, r1
0048df68  a8 00 80 e2                                      add r0, r0, #0xa8
0048df6c  02 20 8f e0                                      add r2, pc, r2
0048df70  03 30 8f e0                                      add r3, pc, r3
0048df74  00 c0 8d e5                                      str ip, [sp]
0048df78  21 00 fa eb                                      bl #0x30e004
0048df7c  04 00 a0 e1                                      mov r0, r4
0048df80  c5 ff ff ea                                      b #0x48de9c
; mapping-symbol data/literal pool
0048df84  c0 6f 44 00 24 6c 50 00 c0 39 00 00 bc 6f 44 00  .byte 0xc0, 0x6f, 0x44, 0x00, 0x24, 0x6c, 0x50, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xbc, 0x6f, 0x44, 0x00
0048df94  ac 6f 44 00 64 6f 44 00 c0 19 00 00 74 04 43 00  .byte 0xac, 0x6f, 0x44, 0x00, 0x64, 0x6f, 0x44, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x74, 0x04, 0x43, 0x00
0048dfa4  fc 05 43 00 b8 6e 44 00                          .byte 0xfc, 0x05, 0x43, 0x00, 0xb8, 0x6e, 0x44, 0x00

; FUNCTION 0x0048e274, declared_size=12, range_size=12, mode=arm
; class-group: rnd::Rule
; alias: _ZNK3rnd4Rule8GetBlockEPKc
; demangled: rnd::Rule::GetBlock(char const*) const
; decoder-mode: arm
0048e274  04 30 90 e5                                      ldr r3, [r0, #4]
0048e278  8c 00 93 e5                                      ldr r0, [r3, #0x8c]
0048e27c  c0 ff ff ea                                      b #0x48e184

; FUNCTION 0x00490bdc, declared_size=1780, range_size=1780, mode=arm
; class-group: rnd::Rule
; alias: _ZN3rnd4Rule11LoadFromXmlEP9TiXmlNode
; demangled: rnd::Rule::LoadFromXml(TiXmlNode*)
; decoder-mode: arm
00490bdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00490be0  9c 86 9f e5                                      ldr r8, [pc, #0x69c]
00490be4  9c b6 9f e5                                      ldr fp, [pc, #0x69c]
00490be8  4d df 4d e2                                      sub sp, sp, #0x134
00490bec  08 80 8f e0                                      add r8, pc, r8
00490bf0  0b 30 98 e7                                      ldr r3, [r8, fp]
00490bf4  00 70 51 e2                                      subs r7, r1, #0
00490bf8  00 40 a0 e1                                      mov r4, r0
00490bfc  00 30 93 e5                                      ldr r3, [r3]
00490c00  2c 31 8d e5                                      str r3, [sp, #0x12c]
00490c04  ce 00 00 0a                                      beq #0x490f44
00490c08  00 30 97 e5                                      ldr r3, [r7]
00490c0c  07 00 a0 e1                                      mov r0, r7
00490c10  0f e0 a0 e1                                      mov lr, pc
00490c14  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00490c18  6c 16 9f e5                                      ldr r1, [pc, #0x66c]
00490c1c  01 10 8f e0                                      add r1, pc, r1
00490c20  12 10 02 eb                                      bl #0x514c70
00490c24  00 60 50 e2                                      subs r6, r0, #0
00490c28  c5 00 00 0a                                      beq #0x490f44
00490c2c  45 2f 8d e2                                      add r2, sp, #0x114
00490c30  08 20 8d e5                                      str r2, [sp, #8]
00490c34  02 00 a0 e1                                      mov r0, r2
00490c38  06 10 a0 e1                                      mov r1, r6
00490c3c  50 20 8d e2                                      add r2, sp, #0x50
00490c40  29 0d fa eb                                      bl #0x3140ec
00490c44  28 01 9d e5                                      ldr r0, [sp, #0x128]
00490c48  d0 30 d0 e1                                      ldrsb r3, [r0]
00490c4c  23 00 53 e3                                      cmp r3, #0x23
00490c50  c6 00 00 0a                                      beq #0x490f70
00490c54  34 36 9f e5                                      ldr r3, [pc, #0x634]
00490c58  34 26 9f e5                                      ldr r2, [pc, #0x634]
00490c5c  06 00 a0 e1                                      mov r0, r6
00490c60  0c 30 8d e5                                      str r3, [sp, #0xc]
00490c64  2c 36 9f e5                                      ldr r3, [pc, #0x62c]
00490c68  2c 10 a0 e3                                      mov r1, #0x2c
00490c6c  10 20 8d e5                                      str r2, [sp, #0x10]
00490c70  03 30 8f e0                                      add r3, pc, r3
00490c74  14 30 8d e5                                      str r3, [sp, #0x14]
00490c78  1c 36 9f e5                                      ldr r3, [pc, #0x61c]
00490c7c  07 a0 a0 e1                                      mov sl, r7
00490c80  70 90 84 e2                                      add sb, r4, #0x70
00490c84  03 30 8f e0                                      add r3, pc, r3
00490c88  18 30 8d e5                                      str r3, [sp, #0x18]
00490c8c  0c 36 9f e5                                      ldr r3, [pc, #0x60c]
00490c90  84 50 8d e2                                      add r5, sp, #0x84
00490c94  03 30 8f e0                                      add r3, pc, r3
00490c98  1c 30 8d e5                                      str r3, [sp, #0x1c]
00490c9c  e1 f7 f9 eb                                      bl #0x30ec28
00490ca0  00 70 50 e2                                      subs r7, r0, #0
00490ca4  26 00 00 0a                                      beq #0x490d44
00490ca8  06 10 a0 e1                                      mov r1, r6
00490cac  05 00 a0 e1                                      mov r0, r5
00490cb0  07 20 a0 e1                                      mov r2, r7
00490cb4  94 50 8d e5                                      str r5, [sp, #0x94]
00490cb8  98 50 8d e5                                      str r5, [sp, #0x98]
00490cbc  89 02 fa eb                                      bl #0x3116e8
00490cc0  04 30 94 e5                                      ldr r3, [r4, #4]
00490cc4  98 10 9d e5                                      ldr r1, [sp, #0x98]
00490cc8  8c 00 93 e5                                      ldr r0, [r3, #0x8c]
00490ccc  3f ce ff eb                                      bl #0x4845d0
00490cd0  00 00 50 e3                                      cmp r0, #0
00490cd4  07 00 00 1a                                      bne #0x490cf8
00490cd8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00490cdc  02 30 98 e7                                      ldr r3, [r8, r2]
00490ce0  00 30 93 e5                                      ldr r3, [r3]
00490ce4  02 00 53 e3                                      cmp r3, #2
00490ce8  00 00 80 05                                      streq r0, [r0]
00490cec  01 00 00 0a                                      beq #0x490cf8
00490cf0  01 00 53 e3                                      cmp r3, #1
00490cf4  0c 01 00 0a                                      beq #0x49112c
00490cf8  09 00 a0 e1                                      mov r0, sb
00490cfc  05 10 a0 e1                                      mov r1, r5
00490d00  74 6b fa eb                                      bl #0x32bad8
00490d04  98 00 9d e5                                      ldr r0, [sp, #0x98]
00490d08  05 00 50 e1                                      cmp r0, r5
00490d0c  06 00 00 0a                                      beq #0x490d2c
00490d10  00 00 50 e3                                      cmp r0, #0
00490d14  04 00 00 0a                                      beq #0x490d2c
00490d18  84 10 9d e5                                      ldr r1, [sp, #0x84]
00490d1c  01 10 60 e0                                      rsb r1, r0, r1
00490d20  80 00 51 e3                                      cmp r1, #0x80
00490d24  8e 00 00 8a                                      bhi #0x490f64
00490d28  74 e0 09 eb                                      bl #0x708f00
00490d2c  07 60 a0 e1                                      mov r6, r7
00490d30  06 00 a0 e1                                      mov r0, r6
00490d34  2c 10 a0 e3                                      mov r1, #0x2c
00490d38  ba f7 f9 eb                                      bl #0x30ec28
00490d3c  00 70 50 e2                                      subs r7, r0, #0
00490d40  d8 ff ff 1a                                      bne #0x490ca8
00490d44  04 30 94 e5                                      ldr r3, [r4, #4]
00490d48  06 10 a0 e1                                      mov r1, r6
00490d4c  0a 70 a0 e1                                      mov r7, sl
00490d50  8c 00 93 e5                                      ldr r0, [r3, #0x8c]
00490d54  1d ce ff eb                                      bl #0x4845d0
00490d58  00 00 50 e3                                      cmp r0, #0
00490d5c  dd 00 00 0a                                      beq #0x4910d8
00490d60  6c 50 8d e2                                      add r5, sp, #0x6c
00490d64  06 10 a0 e1                                      mov r1, r6
00490d68  4c 20 8d e2                                      add r2, sp, #0x4c
00490d6c  05 00 a0 e1                                      mov r0, r5
00490d70  dd 0c fa eb                                      bl #0x3140ec
00490d74  09 00 a0 e1                                      mov r0, sb
00490d78  05 10 a0 e1                                      mov r1, r5
00490d7c  55 6b fa eb                                      bl #0x32bad8
00490d80  05 00 a0 e1                                      mov r0, r5
00490d84  32 1d fa eb                                      bl #0x318254
00490d88  28 01 9d e5                                      ldr r0, [sp, #0x128]
00490d8c  08 20 9d e5                                      ldr r2, [sp, #8]
00490d90  02 00 50 e1                                      cmp r0, r2
00490d94  06 00 00 0a                                      beq #0x490db4
00490d98  00 00 50 e3                                      cmp r0, #0
00490d9c  04 00 00 0a                                      beq #0x490db4
00490da0  14 11 9d e5                                      ldr r1, [sp, #0x114]
00490da4  01 10 60 e0                                      rsb r1, r0, r1
00490da8  80 00 51 e3                                      cmp r1, #0x80
00490dac  e8 00 00 8a                                      bhi #0x491154
00490db0  52 e0 09 eb                                      bl #0x708f00
00490db4  00 30 97 e5                                      ldr r3, [r7]
00490db8  07 00 a0 e1                                      mov r0, r7
00490dbc  0f e0 a0 e1                                      mov lr, pc
00490dc0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00490dc4  d8 14 9f e5                                      ldr r1, [pc, #0x4d8]
00490dc8  01 10 8f e0                                      add r1, pc, r1
00490dcc  a7 0f 02 eb                                      bl #0x514c70
00490dd0  00 50 50 e2                                      subs r5, r0, #0
00490dd4  04 00 00 0a                                      beq #0x490dec
00490dd8  1d f4 f9 eb                                      bl #0x30de54
00490ddc  05 10 a0 e1                                      mov r1, r5
00490de0  00 20 85 e0                                      add r2, r5, r0
00490de4  50 00 84 e2                                      add r0, r4, #0x50
00490de8  fc fe f9 eb                                      bl #0x3109e0
00490dec  00 30 97 e5                                      ldr r3, [r7]
00490df0  07 00 a0 e1                                      mov r0, r7
00490df4  0f e0 a0 e1                                      mov lr, pc
00490df8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00490dfc  a4 14 9f e5                                      ldr r1, [pc, #0x4a4]
00490e00  01 10 8f e0                                      add r1, pc, r1
00490e04  99 0f 02 eb                                      bl #0x514c70
00490e08  00 a0 50 e2                                      subs sl, r0, #0
00490e0c  16 00 00 0a                                      beq #0x490e6c
00490e10  04 00 94 e5                                      ldr r0, [r4, #4]
00490e14  b6 eb ff eb                                      bl #0x48bcf4
00490e18  54 50 8d e2                                      add r5, sp, #0x54
00490e1c  00 60 a0 e1                                      mov r6, r0
00490e20  0a 10 a0 e1                                      mov r1, sl
00490e24  48 20 8d e2                                      add r2, sp, #0x48
00490e28  05 00 a0 e1                                      mov r0, r5
00490e2c  ae 0c fa eb                                      bl #0x3140ec
00490e30  06 00 a0 e1                                      mov r0, r6
00490e34  68 10 9d e5                                      ldr r1, [sp, #0x68]
00490e38  35 cb ff eb                                      bl #0x483b14
00490e3c  68 30 9d e5                                      ldr r3, [sp, #0x68]
00490e40  7c 00 84 e5                                      str r0, [r4, #0x7c]
00490e44  05 00 53 e1                                      cmp r3, r5
00490e48  07 00 00 0a                                      beq #0x490e6c
00490e4c  00 00 53 e3                                      cmp r3, #0
00490e50  05 00 00 0a                                      beq #0x490e6c
00490e54  54 10 9d e5                                      ldr r1, [sp, #0x54]
00490e58  01 10 63 e0                                      rsb r1, r3, r1
00490e5c  80 00 51 e3                                      cmp r1, #0x80
00490e60  99 00 00 8a                                      bhi #0x4910cc
00490e64  03 00 a0 e1                                      mov r0, r3
00490e68  24 e0 09 eb                                      bl #0x708f00
00490e6c  18 50 97 e5                                      ldr r5, [r7, #0x18]
00490e70  00 00 55 e3                                      cmp r5, #0
00490e74  12 00 00 0a                                      beq #0x490ec4
00490e78  01 70 a0 e3                                      mov r7, #1
00490e7c  05 10 a0 e1                                      mov r1, r5
00490e80  04 00 a0 e1                                      mov r0, r4
00490e84  0c 60 94 e5                                      ldr r6, [r4, #0xc]
00490e88  ed f3 ff eb                                      bl #0x48de44
00490e8c  01 20 86 e2                                      add r2, r6, #1
00490e90  04 60 86 e2                                      add r6, r6, #4
00490e94  06 01 84 e7                                      str r0, [r4, r6, lsl #2]
00490e98  0c 20 84 e5                                      str r2, [r4, #0xc]
00490e9c  05 10 a0 e1                                      mov r1, r5
00490ea0  00 30 90 e5                                      ldr r3, [r0]
00490ea4  0f e0 a0 e1                                      mov lr, pc
00490ea8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00490eac  3c 50 95 e5                                      ldr r5, [r5, #0x3c]
00490eb0  07 70 00 e0                                      and r7, r0, r7
00490eb4  00 00 55 e3                                      cmp r5, #0
00490eb8  ef ff ff 1a                                      bne #0x490e7c
00490ebc  00 00 57 e3                                      cmp r7, #0
00490ec0  1f 00 00 0a                                      beq #0x490f44
00490ec4  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
00490ec8  00 00 53 e3                                      cmp r3, #0
00490ecc  00 50 a0 13                                      movne r5, #0
00490ed0  19 00 00 0a                                      beq #0x490f3c
00490ed4  04 00 a0 e1                                      mov r0, r4
00490ed8  85 eb ff eb                                      bl #0x48bcf4
00490edc  18 31 90 e5                                      ldr r3, [r0, #0x118]
00490ee0  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
00490ee4  02 30 63 e0                                      rsb r3, r3, r2
00490ee8  43 01 55 e1                                      cmp r5, r3, asr #2
00490eec  12 00 00 2a                                      bhs #0x490f3c
00490ef0  04 00 a0 e1                                      mov r0, r4
00490ef4  7e eb ff eb                                      bl #0x48bcf4
00490ef8  18 31 90 e5                                      ldr r3, [r0, #0x118]
00490efc  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00490f00  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
00490f04  45 eb ff eb                                      bl #0x48bc20
00490f08  00 00 50 e3                                      cmp r0, #0
00490f0c  02 00 00 0a                                      beq #0x490f1c
00490f10  80 10 94 e5                                      ldr r1, [r4, #0x80]
00490f14  84 20 94 e5                                      ldr r2, [r4, #0x84]
00490f18  38 eb ff eb                                      bl #0x48bc00
00490f1c  04 00 a0 e1                                      mov r0, r4
00490f20  73 eb ff eb                                      bl #0x48bcf4
00490f24  18 31 90 e5                                      ldr r3, [r0, #0x118]
00490f28  1c 21 90 e5                                      ldr r2, [r0, #0x11c]
00490f2c  01 50 85 e2                                      add r5, r5, #1
00490f30  02 30 63 e0                                      rsb r3, r3, r2
00490f34  43 01 55 e1                                      cmp r5, r3, asr #2
00490f38  ec ff ff 3a                                      blo #0x490ef0
00490f3c  01 00 a0 e3                                      mov r0, #1
00490f40  00 00 00 ea                                      b #0x490f48
00490f44  00 00 a0 e3                                      mov r0, #0
00490f48  0b 30 98 e7                                      ldr r3, [r8, fp]
00490f4c  2c 21 9d e5                                      ldr r2, [sp, #0x12c]
00490f50  00 30 93 e5                                      ldr r3, [r3]
00490f54  03 00 52 e1                                      cmp r2, r3
00490f58  c8 00 00 1a                                      bne #0x491280
00490f5c  4d df 8d e2                                      add sp, sp, #0x134
00490f60  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00490f64  35 fd f9 eb                                      bl #0x310440
00490f68  07 60 a0 e1                                      mov r6, r7
00490f6c  6f ff ff ea                                      b #0x490d30
00490f70  24 11 9d e5                                      ldr r1, [sp, #0x124]
00490f74  01 00 50 e1                                      cmp r0, r1
00490f78  86 00 00 0a                                      beq #0x491198
00490f7c  13 2e 8d e2                                      add r2, sp, #0x130
00490f80  5b 30 a0 e3                                      mov r3, #0x5b
00490f84  f0 30 62 e5                                      strb r3, [r2, #-0xf0]!
00490f88  44 30 8d e2                                      add r3, sp, #0x44
00490f8c  1c f7 fa eb                                      bl #0x34ec04
00490f90  24 11 9d e5                                      ldr r1, [sp, #0x124]
00490f94  01 00 50 e1                                      cmp r0, r1
00490f98  7e 00 00 0a                                      beq #0x491198
00490f9c  28 31 9d e5                                      ldr r3, [sp, #0x128]
00490fa0  00 50 63 e0                                      rsb r5, r3, r0
00490fa4  01 00 75 e3                                      cmn r5, #1
00490fa8  7a 00 00 0a                                      beq #0x491198
00490fac  03 00 51 e1                                      cmp r1, r3
00490fb0  76 00 00 0a                                      beq #0x491190
00490fb4  13 2e 8d e2                                      add r2, sp, #0x130
00490fb8  5d 00 a0 e3                                      mov r0, #0x5d
00490fbc  f8 00 62 e5                                      strb r0, [r2, #-0xf8]!
00490fc0  03 00 a0 e1                                      mov r0, r3
00490fc4  3c 30 8d e2                                      add r3, sp, #0x3c
00490fc8  0d f7 fa eb                                      bl #0x34ec04
00490fcc  24 31 9d e5                                      ldr r3, [sp, #0x124]
00490fd0  03 00 50 e1                                      cmp r0, r3
00490fd4  6d 00 00 0a                                      beq #0x491190
00490fd8  28 31 9d e5                                      ldr r3, [sp, #0x128]
00490fdc  00 00 63 e0                                      rsb r0, r3, r0
00490fe0  fc 60 8d e2                                      add r6, sp, #0xfc
00490fe4  01 30 65 e2                                      rsb r3, r5, #1
00490fe8  00 30 83 e0                                      add r3, r3, r0
00490fec  01 20 85 e2                                      add r2, r5, #1
00490ff0  34 c0 8d e2                                      add ip, sp, #0x34
00490ff4  08 10 9d e5                                      ldr r1, [sp, #8]
00490ff8  06 00 a0 e1                                      mov r0, r6
00490ffc  00 c0 8d e5                                      str ip, [sp]
00491000  34 13 fe eb                                      bl #0x415cd8
00491004  10 01 9d e5                                      ldr r0, [sp, #0x110]
00491008  21 f4 f9 eb                                      bl #0x30e094
0049100c  6c 00 84 e5                                      str r0, [r4, #0x6c]
00491010  06 00 a0 e1                                      mov r0, r6
00491014  8e 1c fa eb                                      bl #0x318254
00491018  04 30 94 e5                                      ldr r3, [r4, #4]
0049101c  01 60 45 e2                                      sub r6, r5, #1
00491020  e4 50 8d e2                                      add r5, sp, #0xe4
00491024  8c a0 93 e5                                      ldr sl, [r3, #0x8c]
00491028  30 c0 8d e2                                      add ip, sp, #0x30
0049102c  01 20 a0 e3                                      mov r2, #1
00491030  06 30 a0 e1                                      mov r3, r6
00491034  08 10 9d e5                                      ldr r1, [sp, #8]
00491038  05 00 a0 e1                                      mov r0, r5
0049103c  00 c0 8d e5                                      str ip, [sp]
00491040  24 13 fe eb                                      bl #0x415cd8
00491044  0a 00 a0 e1                                      mov r0, sl
00491048  f8 10 9d e5                                      ldr r1, [sp, #0xf8]
0049104c  40 cd ff eb                                      bl #0x484554
00491050  00 a0 a0 e1                                      mov sl, r0
00491054  05 00 a0 e1                                      mov r0, r5
00491058  7d 1c fa eb                                      bl #0x318254
0049105c  00 00 5a e3                                      cmp sl, #0
00491060  07 00 00 1a                                      bne #0x491084
00491064  24 32 9f e5                                      ldr r3, [pc, #0x224]
00491068  03 30 98 e7                                      ldr r3, [r8, r3]
0049106c  00 30 93 e5                                      ldr r3, [r3]
00491070  02 00 53 e3                                      cmp r3, #2
00491074  00 a0 8a 05                                      streq sl, [sl]
00491078  01 00 00 0a                                      beq #0x491084
0049107c  01 00 53 e3                                      cmp r3, #1
00491080  35 00 00 0a                                      beq #0x49115c
00491084  04 00 94 e5                                      ldr r0, [r4, #4]
00491088  19 eb ff eb                                      bl #0x48bcf4
0049108c  cc 50 8d e2                                      add r5, sp, #0xcc
00491090  2c c0 8d e2                                      add ip, sp, #0x2c
00491094  00 a0 a0 e1                                      mov sl, r0
00491098  06 30 a0 e1                                      mov r3, r6
0049109c  08 10 9d e5                                      ldr r1, [sp, #8]
004910a0  01 20 a0 e3                                      mov r2, #1
004910a4  05 00 a0 e1                                      mov r0, r5
004910a8  00 c0 8d e5                                      str ip, [sp]
004910ac  09 13 fe eb                                      bl #0x415cd8
004910b0  0a 00 a0 e1                                      mov r0, sl
004910b4  e0 10 9d e5                                      ldr r1, [sp, #0xe0]
004910b8  de cc ff eb                                      bl #0x484438
004910bc  68 00 84 e5                                      str r0, [r4, #0x68]
004910c0  05 00 a0 e1                                      mov r0, r5
004910c4  62 1c fa eb                                      bl #0x318254
004910c8  2e ff ff ea                                      b #0x490d88
004910cc  03 00 a0 e1                                      mov r0, r3
004910d0  da fc f9 eb                                      bl #0x310440
004910d4  64 ff ff ea                                      b #0x490e6c
004910d8  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
004910dc  03 30 98 e7                                      ldr r3, [r8, r3]
004910e0  00 30 93 e5                                      ldr r3, [r3]
004910e4  02 00 53 e3                                      cmp r3, #2
004910e8  00 00 80 05                                      streq r0, [r0]
004910ec  1b ff ff 0a                                      beq #0x490d60
004910f0  01 00 53 e3                                      cmp r3, #1
004910f4  19 ff ff 1a                                      bne #0x490d60
004910f8  94 01 9f e5                                      ldr r0, [pc, #0x194]
004910fc  a8 11 9f e5                                      ldr r1, [pc, #0x1a8]
00491100  a8 21 9f e5                                      ldr r2, [pc, #0x1a8]
00491104  00 00 98 e7                                      ldr r0, [r8, r0]
00491108  a4 31 9f e5                                      ldr r3, [pc, #0x1a4]
0049110c  51 c1 00 e3                                      movw ip, #0x151
00491110  01 10 8f e0                                      add r1, pc, r1
00491114  02 20 8f e0                                      add r2, pc, r2
00491118  03 30 8f e0                                      add r3, pc, r3
0049111c  a8 00 80 e2                                      add r0, r0, #0xa8
00491120  00 c0 8d e5                                      str ip, [sp]
00491124  b6 f3 f9 eb                                      bl #0x30e004
00491128  0c ff ff ea                                      b #0x490d60
0049112c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00491130  4d c1 00 e3                                      movw ip, #0x14d
00491134  14 10 9d e5                                      ldr r1, [sp, #0x14]
00491138  03 00 98 e7                                      ldr r0, [r8, r3]
0049113c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00491140  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00491144  a8 00 80 e2                                      add r0, r0, #0xa8
00491148  00 c0 8d e5                                      str ip, [sp]
0049114c  ac f3 f9 eb                                      bl #0x30e004
00491150  e8 fe ff ea                                      b #0x490cf8
00491154  b9 fc f9 eb                                      bl #0x310440
00491158  15 ff ff ea                                      b #0x490db4
0049115c  30 01 9f e5                                      ldr r0, [pc, #0x130]
00491160  50 11 9f e5                                      ldr r1, [pc, #0x150]
00491164  50 21 9f e5                                      ldr r2, [pc, #0x150]
00491168  00 00 98 e7                                      ldr r0, [r8, r0]
0049116c  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
00491170  3b c1 00 e3                                      movw ip, #0x13b
00491174  01 10 8f e0                                      add r1, pc, r1
00491178  02 20 8f e0                                      add r2, pc, r2
0049117c  03 30 8f e0                                      add r3, pc, r3
00491180  a8 00 80 e2                                      add r0, r0, #0xa8
00491184  00 c0 8d e5                                      str ip, [sp]
00491188  9d f3 f9 eb                                      bl #0x30e004
0049118c  bc ff ff ea                                      b #0x491084
00491190  00 00 e0 e3                                      mvn r0, #0
00491194  91 ff ff ea                                      b #0x490fe0
00491198  04 20 94 e5                                      ldr r2, [r4, #4]
0049119c  00 30 e0 e3                                      mvn r3, #0
004911a0  6c 30 84 e5                                      str r3, [r4, #0x6c]
004911a4  8c 60 92 e5                                      ldr r6, [r2, #0x8c]
004911a8  b4 50 8d e2                                      add r5, sp, #0xb4
004911ac  28 c0 8d e2                                      add ip, sp, #0x28
004911b0  01 20 a0 e3                                      mov r2, #1
004911b4  08 10 9d e5                                      ldr r1, [sp, #8]
004911b8  05 00 a0 e1                                      mov r0, r5
004911bc  00 c0 8d e5                                      str ip, [sp]
004911c0  c4 12 fe eb                                      bl #0x415cd8
004911c4  06 00 a0 e1                                      mov r0, r6
004911c8  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
004911cc  e0 cc ff eb                                      bl #0x484554
004911d0  00 60 a0 e1                                      mov r6, r0
004911d4  05 00 a0 e1                                      mov r0, r5
004911d8  1d 1c fa eb                                      bl #0x318254
004911dc  00 00 56 e3                                      cmp r6, #0
004911e0  07 00 00 1a                                      bne #0x491204
004911e4  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
004911e8  03 30 98 e7                                      ldr r3, [r8, r3]
004911ec  00 30 93 e5                                      ldr r3, [r3]
004911f0  02 00 53 e3                                      cmp r3, #2
004911f4  00 60 86 05                                      streq r6, [r6]
004911f8  01 00 00 0a                                      beq #0x491204
004911fc  01 00 53 e3                                      cmp r3, #1
00491200  11 00 00 0a                                      beq #0x49124c
00491204  04 00 94 e5                                      ldr r0, [r4, #4]
00491208  b9 ea ff eb                                      bl #0x48bcf4
0049120c  9c 50 8d e2                                      add r5, sp, #0x9c
00491210  24 c0 8d e2                                      add ip, sp, #0x24
00491214  00 60 a0 e1                                      mov r6, r0
00491218  08 10 9d e5                                      ldr r1, [sp, #8]
0049121c  01 20 a0 e3                                      mov r2, #1
00491220  00 30 e0 e3                                      mvn r3, #0
00491224  05 00 a0 e1                                      mov r0, r5
00491228  00 c0 8d e5                                      str ip, [sp]
0049122c  a9 12 fe eb                                      bl #0x415cd8
00491230  06 00 a0 e1                                      mov r0, r6
00491234  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
00491238  7e cc ff eb                                      bl #0x484438
0049123c  68 00 84 e5                                      str r0, [r4, #0x68]
00491240  05 00 a0 e1                                      mov r0, r5
00491244  02 1c fa eb                                      bl #0x318254
00491248  ce fe ff ea                                      b #0x490d88
0049124c  40 00 9f e5                                      ldr r0, [pc, #0x40]
00491250  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00491254  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00491258  00 00 98 e7                                      ldr r0, [r8, r0]
0049125c  68 30 9f e5                                      ldr r3, [pc, #0x68]
00491260  42 c1 00 e3                                      movw ip, #0x142
00491264  01 10 8f e0                                      add r1, pc, r1
00491268  02 20 8f e0                                      add r2, pc, r2
0049126c  03 30 8f e0                                      add r3, pc, r3
00491270  a8 00 80 e2                                      add r0, r0, #0xa8
00491274  00 c0 8d e5                                      str ip, [sp]
00491278  61 f3 f9 eb                                      bl #0x30e004
0049127c  e0 ff ff ea                                      b #0x491204
00491280  22 f4 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00491284  a4 3e 50 00 ac 40 00 00 cc 04 45 00 c0 39 00 00  .byte 0xa4, 0x3e, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0xcc, 0x04, 0x45, 0x00, 0xc0, 0x39, 0x00, 0x00
00491294  c0 19 00 00 68 d7 42 00 e4 42 44 00 94 41 44 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x68, 0xd7, 0x42, 0x00, 0xe4, 0x42, 0x44, 0x00, 0x94, 0x41, 0x44, 0x00
004912a4  f0 41 44 00 90 a8 47 00 c8 d2 42 00 7c 3e 44 00  .byte 0xf0, 0x41, 0x44, 0x00, 0x90, 0xa8, 0x47, 0x00, 0xc8, 0xd2, 0x42, 0x00, 0x7c, 0x3e, 0x44, 0x00
004912b4  10 3d 44 00 64 d2 42 00 78 3d 44 00 ac 3c 44 00  .byte 0x10, 0x3d, 0x44, 0x00, 0x64, 0xd2, 0x42, 0x00, 0x78, 0x3d, 0x44, 0x00, 0xac, 0x3c, 0x44, 0x00
004912c4  74 d1 42 00 c8 3c 44 00 bc 3b 44 00              .byte 0x74, 0xd1, 0x42, 0x00, 0xc8, 0x3c, 0x44, 0x00, 0xbc, 0x3b, 0x44, 0x00
