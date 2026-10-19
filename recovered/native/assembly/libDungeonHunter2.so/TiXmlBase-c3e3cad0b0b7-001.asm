; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00514224, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBaseD1Ev
; demangled: TiXmlBase::~TiXmlBase()
; decoder-mode: arm
00514224  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514918, declared_size=52, range_size=52, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBaseD0Ev
; demangled: TiXmlBase::~TiXmlBase()
; decoder-mode: arm
00514918  24 30 9f e5                                      ldr r3, [pc, #0x24]
0051491c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00514920  10 40 2d e9                                      push {r4, lr}
00514924  03 30 8f e0                                      add r3, pc, r3
00514928  02 20 93 e7                                      ldr r2, [r3, r2]
0051492c  00 40 a0 e1                                      mov r4, r0
00514930  08 20 82 e2                                      add r2, r2, #8
00514934  00 20 80 e5                                      str r2, [r0]
00514938  c0 ee f7 eb                                      bl #0x310440
0051493c  04 00 a0 e1                                      mov r0, r4
00514940  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00514944  6c 01 48 00 d0 21 00 00                          .byte 0x6c, 0x01, 0x48, 0x00, 0xd0, 0x21, 0x00, 0x00

; FUNCTION 0x005154c4, declared_size=592, range_size=592, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBase12EncodeStringERKSsPSs
; demangled: TiXmlBase::EncodeString(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*)
; decoder-mode: arm
005154c4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005154c8  34 72 9f e5                                      ldr r7, [pc, #0x234]
005154cc  34 92 9f e5                                      ldr sb, [pc, #0x234]
005154d0  2c d0 4d e2                                      sub sp, sp, #0x2c
005154d4  07 70 8f e0                                      add r7, pc, r7
005154d8  09 30 97 e7                                      ldr r3, [r7, sb]
005154dc  28 b2 9f e5                                      ldr fp, [pc, #0x228]
005154e0  10 20 90 e5                                      ldr r2, [r0, #0x10]
005154e4  00 30 93 e5                                      ldr r3, [r3]
005154e8  01 60 a0 e1                                      mov r6, r1
005154ec  1c a2 9f e5                                      ldr sl, [pc, #0x21c]
005154f0  24 30 8d e5                                      str r3, [sp, #0x24]
005154f4  14 10 90 e5                                      ldr r1, [r0, #0x14]
005154f8  00 50 a0 e1                                      mov r5, r0
005154fc  0b b0 8f e0                                      add fp, pc, fp
00515500  00 40 a0 e3                                      mov r4, #0
00515504  04 80 8d e2                                      add r8, sp, #4
00515508  02 00 61 e0                                      rsb r0, r1, r2
0051550c  00 00 54 e1                                      cmp r4, r0
00515510  1d 00 00 aa                                      bge #0x51558c
00515514  04 c0 d1 e7                                      ldrb ip, [r1, r4]
00515518  7c 30 ef e6                                      uxtb r3, ip
0051551c  26 00 53 e3                                      cmp r3, #0x26
00515520  20 00 00 0a                                      beq #0x5155a8
00515524  3c 00 53 e3                                      cmp r3, #0x3c
00515528  37 00 00 0a                                      beq #0x51560c
0051552c  3e 00 53 e3                                      cmp r3, #0x3e
00515530  3f 00 00 0a                                      beq #0x515634
00515534  22 00 53 e3                                      cmp r3, #0x22
00515538  47 00 00 0a                                      beq #0x51565c
0051553c  27 00 53 e3                                      cmp r3, #0x27
00515540  64 00 00 0a                                      beq #0x5156d8
00515544  1f 00 53 e3                                      cmp r3, #0x1f
00515548  28 00 00 8a                                      bhi #0x5155f0
0051554c  20 10 a0 e3                                      mov r1, #0x20
00515550  0b 20 a0 e1                                      mov r2, fp
00515554  08 00 a0 e1                                      mov r0, r8
00515558  39 e3 f7 eb                                      bl #0x30e244
0051555c  08 00 a0 e1                                      mov r0, r8
00515560  3b e2 f7 eb                                      bl #0x30de54
00515564  08 10 a0 e1                                      mov r1, r8
00515568  00 20 88 e0                                      add r2, r8, r0
0051556c  06 00 a0 e1                                      mov r0, r6
00515570  a3 ec f7 eb                                      bl #0x310804
00515574  10 20 95 e5                                      ldr r2, [r5, #0x10]
00515578  14 10 95 e5                                      ldr r1, [r5, #0x14]
0051557c  01 40 84 e2                                      add r4, r4, #1
00515580  02 00 61 e0                                      rsb r0, r1, r2
00515584  00 00 54 e1                                      cmp r4, r0
00515588  e1 ff ff ba                                      blt #0x515514
0051558c  09 30 97 e7                                      ldr r3, [r7, sb]
00515590  24 20 9d e5                                      ldr r2, [sp, #0x24]
00515594  00 30 93 e5                                      ldr r3, [r3]
00515598  03 00 52 e1                                      cmp r2, r3
0051559c  57 00 00 1a                                      bne #0x515700
005155a0  2c d0 8d e2                                      add sp, sp, #0x2c
005155a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005155a8  02 00 40 e2                                      sub r0, r0, #2
005155ac  00 00 54 e1                                      cmp r4, r0
005155b0  01 40 84 a2                                      addge r4, r4, #1
005155b4  07 00 00 ba                                      blt #0x5155d8
005155b8  0a 30 97 e7                                      ldr r3, [r7, sl]
005155bc  06 00 a0 e1                                      mov r0, r6
005155c0  06 00 93 e8                                      ldm r3, {r1, r2}
005155c4  02 20 81 e0                                      add r2, r1, r2
005155c8  8d ec f7 eb                                      bl #0x310804
005155cc  10 20 95 e5                                      ldr r2, [r5, #0x10]
005155d0  14 10 95 e5                                      ldr r1, [r5, #0x14]
005155d4  cb ff ff ea                                      b #0x515508
005155d8  01 30 84 e2                                      add r3, r4, #1
005155dc  d3 00 91 e1                                      ldrsb r0, [r1, r3]
005155e0  23 00 50 e3                                      cmp r0, #0x23
005155e4  26 00 00 0a                                      beq #0x515684
005155e8  03 40 a0 e1                                      mov r4, r3
005155ec  f1 ff ff ea                                      b #0x5155b8
005155f0  7c 10 af e6                                      sxtb r1, ip
005155f4  06 00 a0 e1                                      mov r0, r6
005155f8  17 53 f8 eb                                      bl #0x32a25c
005155fc  01 40 84 e2                                      add r4, r4, #1
00515600  10 20 95 e5                                      ldr r2, [r5, #0x10]
00515604  14 10 95 e5                                      ldr r1, [r5, #0x14]
00515608  be ff ff ea                                      b #0x515508
0051560c  0a 30 97 e7                                      ldr r3, [r7, sl]
00515610  06 00 a0 e1                                      mov r0, r6
00515614  01 40 84 e2                                      add r4, r4, #1
00515618  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0051561c  10 20 93 e5                                      ldr r2, [r3, #0x10]
00515620  02 20 81 e0                                      add r2, r1, r2
00515624  76 ec f7 eb                                      bl #0x310804
00515628  10 20 95 e5                                      ldr r2, [r5, #0x10]
0051562c  14 10 95 e5                                      ldr r1, [r5, #0x14]
00515630  b4 ff ff ea                                      b #0x515508
00515634  0a 30 97 e7                                      ldr r3, [r7, sl]
00515638  06 00 a0 e1                                      mov r0, r6
0051563c  01 40 84 e2                                      add r4, r4, #1
00515640  18 10 93 e5                                      ldr r1, [r3, #0x18]
00515644  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00515648  02 20 81 e0                                      add r2, r1, r2
0051564c  6c ec f7 eb                                      bl #0x310804
00515650  10 20 95 e5                                      ldr r2, [r5, #0x10]
00515654  14 10 95 e5                                      ldr r1, [r5, #0x14]
00515658  aa ff ff ea                                      b #0x515508
0051565c  0a 30 97 e7                                      ldr r3, [r7, sl]
00515660  06 00 a0 e1                                      mov r0, r6
00515664  01 40 84 e2                                      add r4, r4, #1
00515668  24 10 93 e5                                      ldr r1, [r3, #0x24]
0051566c  28 20 93 e5                                      ldr r2, [r3, #0x28]
00515670  02 20 81 e0                                      add r2, r1, r2
00515674  62 ec f7 eb                                      bl #0x310804
00515678  10 20 95 e5                                      ldr r2, [r5, #0x10]
0051567c  14 10 95 e5                                      ldr r1, [r5, #0x14]
00515680  a0 ff ff ea                                      b #0x515508
00515684  04 00 81 e0                                      add r0, r1, r4
00515688  d2 00 d0 e1                                      ldrsb r0, [r0, #2]
0051568c  78 00 50 e3                                      cmp r0, #0x78
00515690  d4 ff ff 1a                                      bne #0x5155e8
00515694  00 00 00 ea                                      b #0x51569c
00515698  10 20 95 e5                                      ldr r2, [r5, #0x10]
0051569c  01 30 42 e2                                      sub r3, r2, #1
005156a0  03 30 61 e0                                      rsb r3, r1, r3
005156a4  03 00 54 e1                                      cmp r4, r3
005156a8  96 ff ff aa                                      bge #0x515508
005156ac  04 10 81 e0                                      add r1, r1, r4
005156b0  01 20 81 e2                                      add r2, r1, #1
005156b4  06 00 a0 e1                                      mov r0, r6
005156b8  51 ec f7 eb                                      bl #0x310804
005156bc  14 10 95 e5                                      ldr r1, [r5, #0x14]
005156c0  01 40 84 e2                                      add r4, r4, #1
005156c4  d4 30 91 e1                                      ldrsb r3, [r1, r4]
005156c8  3b 00 53 e3                                      cmp r3, #0x3b
005156cc  f1 ff ff 1a                                      bne #0x515698
005156d0  10 20 95 e5                                      ldr r2, [r5, #0x10]
005156d4  8b ff ff ea                                      b #0x515508
005156d8  0a 30 97 e7                                      ldr r3, [r7, sl]
005156dc  06 00 a0 e1                                      mov r0, r6
005156e0  01 40 84 e2                                      add r4, r4, #1
005156e4  30 10 93 e5                                      ldr r1, [r3, #0x30]
005156e8  34 20 93 e5                                      ldr r2, [r3, #0x34]
005156ec  02 20 81 e0                                      add r2, r1, r2
005156f0  43 ec f7 eb                                      bl #0x310804
005156f4  10 20 95 e5                                      ldr r2, [r5, #0x10]
005156f8  14 10 95 e5                                      ldr r1, [r5, #0x14]
005156fc  81 ff ff ea                                      b #0x515508
00515700  02 e3 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00515704  bc f5 47 00 ac 40 00 00 ec 6b 3c 00 f8 2a 00 00  .byte 0xbc, 0xf5, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0xec, 0x6b, 0x3c, 0x00, 0xf8, 0x2a, 0x00, 0x00

; FUNCTION 0x005184b0, declared_size=248, range_size=248, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBase18ConvertUTF32ToUTF8EmPcPi
; demangled: TiXmlBase::ConvertUTF32ToUTF8(unsigned long, char*, int*)
; decoder-mode: arm
005184b0  f0 00 2d e9                                      push {r4, r5, r6, r7}
005184b4  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
005184b8  20 d0 4d e2                                      sub sp, sp, #0x20
005184bc  04 c0 8d e2                                      add ip, sp, #4
005184c0  05 50 8f e0                                      add r5, pc, r5
005184c4  00 40 a0 e1                                      mov r4, r0
005184c8  01 70 a0 e1                                      mov r7, r1
005184cc  02 60 a0 e1                                      mov r6, r2
005184d0  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
005184d4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005184d8  07 00 95 e8                                      ldm r5, {r0, r1, r2}
005184dc  7f 00 54 e3                                      cmp r4, #0x7f
005184e0  01 30 a0 93                                      movls r3, #1
005184e4  07 00 8c e8                                      stm ip, {r0, r1, r2}
005184e8  03 70 87 90                                      addls r7, r7, r3
005184ec  00 30 86 95                                      strls r3, [r6]
005184f0  0a 00 00 9a                                      bls #0x518520
005184f4  02 0b 54 e3                                      cmp r4, #0x800
005184f8  02 30 a0 33                                      movlo r3, #2
005184fc  00 30 86 35                                      strlo r3, [r6]
00518500  03 70 87 30                                      addlo r7, r7, r3
00518504  0e 00 00 2a                                      bhs #0x518544
00518508  3f 30 04 e2                                      and r3, r4, #0x3f
0051850c  83 3c e0 e1                                      mvn r3, r3, lsl #25
00518510  24 43 a0 e1                                      lsr r4, r4, #6
00518514  a3 3c e0 e1                                      mvn r3, r3, lsr #25
00518518  01 30 47 e5                                      strb r3, [r7, #-1]
0051851c  01 70 47 e2                                      sub r7, r7, #1
00518520  00 30 96 e5                                      ldr r3, [r6]
00518524  20 20 8d e2                                      add r2, sp, #0x20
00518528  03 31 82 e0                                      add r3, r2, r3, lsl #2
0051852c  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00518530  03 40 84 e1                                      orr r4, r4, r3
00518534  01 40 47 e5                                      strb r4, [r7, #-1]
00518538  20 d0 8d e2                                      add sp, sp, #0x20
0051853c  f0 00 bd e8                                      pop {r4, r5, r6, r7}
00518540  1e ff 2f e1                                      bx lr
00518544  01 08 54 e3                                      cmp r4, #0x10000
00518548  03 30 a0 33                                      movlo r3, #3
0051854c  00 30 86 35                                      strlo r3, [r6]
00518550  03 70 87 30                                      addlo r7, r7, r3
00518554  0b 00 00 3a                                      blo #0x518588
00518558  02 06 54 e3                                      cmp r4, #0x200000
0051855c  00 30 a0 23                                      movhs r3, #0
00518560  00 30 86 25                                      strhs r3, [r6]
00518564  f3 ff ff 2a                                      bhs #0x518538
00518568  3f 30 04 e2                                      and r3, r4, #0x3f
0051856c  83 3c e0 e1                                      mvn r3, r3, lsl #25
00518570  04 20 a0 e3                                      mov r2, #4
00518574  a3 3c e0 e1                                      mvn r3, r3, lsr #25
00518578  00 20 86 e5                                      str r2, [r6]
0051857c  24 43 a0 e1                                      lsr r4, r4, #6
00518580  03 30 c7 e5                                      strb r3, [r7, #3]
00518584  03 70 87 e2                                      add r7, r7, #3
00518588  3f 30 04 e2                                      and r3, r4, #0x3f
0051858c  83 3c e0 e1                                      mvn r3, r3, lsl #25
00518590  24 43 a0 e1                                      lsr r4, r4, #6
00518594  a3 3c e0 e1                                      mvn r3, r3, lsr #25
00518598  01 30 47 e5                                      strb r3, [r7, #-1]
0051859c  01 70 47 e2                                      sub r7, r7, #1
005185a0  d8 ff ff ea                                      b #0x518508
; mapping-symbol data/literal pool
005185a4  24 3f 3c 00                                      .byte 0x24, 0x3f, 0x3c, 0x00

; FUNCTION 0x005185a8, declared_size=56, range_size=56, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBase7IsAlphaEh13TiXmlEncoding
; demangled: TiXmlBase::IsAlpha(unsigned char, TiXmlEncoding)
; decoder-mode: arm
005185a8  28 30 9f e5                                      ldr r3, [pc, #0x28]
005185ac  7e 00 50 e3                                      cmp r0, #0x7e
005185b0  01 00 a0 83                                      movhi r0, #1
005185b4  03 30 8f e0                                      add r3, pc, r3
005185b8  1e ff 2f 81                                      bxhi lr
005185bc  18 20 9f e5                                      ldr r2, [pc, #0x18]
005185c0  02 30 93 e7                                      ldr r3, [r3, r2]
005185c4  00 30 93 e5                                      ldr r3, [r3]
005185c8  00 00 83 e0                                      add r0, r3, r0
005185cc  01 00 d0 e5                                      ldrb r0, [r0, #1]
005185d0  03 00 00 e2                                      and r0, r0, #3
005185d4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005185d8  dc c4 47 00 dc 1d 00 00                          .byte 0xdc, 0xc4, 0x47, 0x00, 0xdc, 0x1d, 0x00, 0x00

; FUNCTION 0x005185e0, declared_size=56, range_size=56, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBase10IsAlphaNumEh13TiXmlEncoding
; demangled: TiXmlBase::IsAlphaNum(unsigned char, TiXmlEncoding)
; decoder-mode: arm
005185e0  28 30 9f e5                                      ldr r3, [pc, #0x28]
005185e4  7e 00 50 e3                                      cmp r0, #0x7e
005185e8  01 00 a0 83                                      movhi r0, #1
005185ec  03 30 8f e0                                      add r3, pc, r3
005185f0  1e ff 2f 81                                      bxhi lr
005185f4  18 20 9f e5                                      ldr r2, [pc, #0x18]
005185f8  02 30 93 e7                                      ldr r3, [r3, r2]
005185fc  00 30 93 e5                                      ldr r3, [r3]
00518600  00 00 83 e0                                      add r0, r3, r0
00518604  01 00 d0 e5                                      ldrb r0, [r0, #1]
00518608  07 00 00 e2                                      and r0, r0, #7
0051860c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00518610  a4 c4 47 00 dc 1d 00 00                          .byte 0xa4, 0xc4, 0x47, 0x00, 0xdc, 0x1d, 0x00, 0x00

; FUNCTION 0x00518788, declared_size=276, range_size=276, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBase14SkipWhiteSpaceEPKc13TiXmlEncoding
; demangled: TiXmlBase::SkipWhiteSpace(char const*, TiXmlEncoding)
; decoder-mode: arm
00518788  04 31 9f e5                                      ldr r3, [pc, #0x104]
0051878c  00 00 50 e3                                      cmp r0, #0
00518790  03 30 8f e0                                      add r3, pc, r3
00518794  1e ff 2f 01                                      bxeq lr
00518798  00 20 d0 e5                                      ldrb r2, [r0]
0051879c  00 00 52 e3                                      cmp r2, #0
005187a0  02 c0 a0 e1                                      mov ip, r2
005187a4  02 00 a0 01                                      moveq r0, r2
005187a8  1e ff 2f 01                                      bxeq lr
005187ac  01 00 51 e3                                      cmp r1, #1
005187b0  0e 00 00 0a                                      beq #0x5187f0
005187b4  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
005187b8  01 30 93 e7                                      ldr r3, [r3, r1]
005187bc  00 10 93 e5                                      ldr r1, [r3]
005187c0  02 30 81 e0                                      add r3, r1, r2
005187c4  01 30 d3 e5                                      ldrb r3, [r3, #1]
005187c8  72 20 af e6                                      sxtb r2, r2
005187cc  d3 31 e0 e7                                      ubfx r3, r3, #3, #1
005187d0  0a 00 52 e3                                      cmp r2, #0xa
005187d4  01 30 83 03                                      orreq r3, r3, #1
005187d8  00 00 53 e3                                      cmp r3, #0
005187dc  18 00 00 0a                                      beq #0x518844
005187e0  01 20 f0 e5                                      ldrb r2, [r0, #1]!
005187e4  00 00 52 e3                                      cmp r2, #0
005187e8  f4 ff ff 1a                                      bne #0x5187c0
005187ec  1e ff 2f e1                                      bx lr
005187f0  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
005187f4  02 30 93 e7                                      ldr r3, [r3, r2]
005187f8  00 20 93 e5                                      ldr r2, [r3]
005187fc  ef 00 5c e3                                      cmp ip, #0xef
00518800  12 00 00 0a                                      beq #0x518850
00518804  0c 30 82 e0                                      add r3, r2, ip
00518808  01 30 d3 e5                                      ldrb r3, [r3, #1]
0051880c  7c c0 af e6                                      sxtb ip, ip
00518810  d3 31 e0 e7                                      ubfx r3, r3, #3, #1
00518814  0a 00 5c e3                                      cmp ip, #0xa
00518818  01 30 83 03                                      orreq r3, r3, #1
0051881c  00 00 53 e3                                      cmp r3, #0
00518820  04 00 00 0a                                      beq #0x518838
00518824  01 00 80 e2                                      add r0, r0, #1
00518828  00 c0 d0 e5                                      ldrb ip, [r0]
0051882c  00 00 5c e3                                      cmp ip, #0
00518830  f1 ff ff 1a                                      bne #0x5187fc
00518834  1e ff 2f e1                                      bx lr
00518838  0d 00 5c e3                                      cmp ip, #0xd
0051883c  1e ff 2f 11                                      bxne lr
00518840  f7 ff ff ea                                      b #0x518824
00518844  0d 00 52 e3                                      cmp r2, #0xd
00518848  1e ff 2f 11                                      bxne lr
0051884c  e3 ff ff ea                                      b #0x5187e0
00518850  01 30 d0 e5                                      ldrb r3, [r0, #1]
00518854  bb 00 53 e3                                      cmp r3, #0xbb
00518858  08 00 00 0a                                      beq #0x518880
0051885c  bf 00 53 e3                                      cmp r3, #0xbf
00518860  e7 ff ff 1a                                      bne #0x518804
00518864  02 30 d0 e5                                      ldrb r3, [r0, #2]
00518868  be 00 53 e3                                      cmp r3, #0xbe
0051886c  01 00 00 0a                                      beq #0x518878
00518870  bf 00 53 e3                                      cmp r3, #0xbf
00518874  e2 ff ff 1a                                      bne #0x518804
00518878  03 00 80 e2                                      add r0, r0, #3
0051887c  e9 ff ff ea                                      b #0x518828
00518880  02 30 d0 e5                                      ldrb r3, [r0, #2]
00518884  bf 00 53 e3                                      cmp r3, #0xbf
00518888  dd ff ff 1a                                      bne #0x518804
0051888c  03 00 80 e2                                      add r0, r0, #3
00518890  e4 ff ff ea                                      b #0x518828
; mapping-symbol data/literal pool
00518894  00 c3 47 00 dc 1d 00 00                          .byte 0x00, 0xc3, 0x47, 0x00, 0xdc, 0x1d, 0x00, 0x00

; FUNCTION 0x0051889c, declared_size=244, range_size=244, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBase11StringEqualEPKcS1_b13TiXmlEncoding
; demangled: TiXmlBase::StringEqual(char const*, char const*, bool, TiXmlEncoding)
; decoder-mode: arm
0051889c  e4 c0 9f e5                                      ldr ip, [pc, #0xe4]
005188a0  00 00 50 e3                                      cmp r0, #0
005188a4  30 00 2d e9                                      push {r4, r5}
005188a8  0c c0 8f e0                                      add ip, pc, ip
005188ac  2a 00 00 0a                                      beq #0x51895c
005188b0  00 40 d0 e5                                      ldrb r4, [r0]
005188b4  00 00 54 e3                                      cmp r4, #0
005188b8  27 00 00 0a                                      beq #0x51895c
005188bc  00 00 52 e3                                      cmp r2, #0
005188c0  13 00 00 0a                                      beq #0x518914
005188c4  00 20 d1 e5                                      ldrb r2, [r1]
005188c8  00 00 52 e3                                      cmp r2, #0
005188cc  13 00 00 0a                                      beq #0x518920
005188d0  b4 50 9f e5                                      ldr r5, [pc, #0xb4]
005188d4  05 c0 9c e7                                      ldr ip, [ip, r5]
005188d8  00 c0 9c e5                                      ldr ip, [ip]
005188dc  74 40 af e6                                      sxtb r4, r4
005188e0  ff 00 54 e3                                      cmp r4, #0xff
005188e4  72 20 af e6                                      sxtb r2, r2
005188e8  84 40 8c 90                                      addls r4, ip, r4, lsl #1
005188ec  f2 40 d4 91                                      ldrshls r4, [r4, #2]
005188f0  ff 00 52 e3                                      cmp r2, #0xff
005188f4  82 20 8c 90                                      addls r2, ip, r2, lsl #1
005188f8  f2 20 d2 91                                      ldrshls r2, [r2, #2]
005188fc  02 00 54 e1                                      cmp r4, r2
00518900  17 00 00 0a                                      beq #0x518964
00518904  d0 00 d1 e1                                      ldrsb r0, [r1]
00518908  01 00 70 e2                                      rsbs r0, r0, #1
0051890c  00 00 a0 33                                      movlo r0, #0
00518910  03 00 00 ea                                      b #0x518924
00518914  00 30 d1 e5                                      ldrb r3, [r1]
00518918  00 00 53 e3                                      cmp r3, #0
0051891c  02 00 00 1a                                      bne #0x51892c
00518920  01 00 a0 e3                                      mov r0, #1
00518924  30 00 bd e8                                      pop {r4, r5}
00518928  1e ff 2f e1                                      bx lr
0051892c  04 00 53 e1                                      cmp r3, r4
00518930  09 00 00 1a                                      bne #0x51895c
00518934  01 20 d0 e5                                      ldrb r2, [r0, #1]
00518938  01 10 81 e2                                      add r1, r1, #1
0051893c  00 00 52 e3                                      cmp r2, #0
00518940  ef ff ff 0a                                      beq #0x518904
00518944  00 30 d1 e5                                      ldrb r3, [r1]
00518948  01 00 80 e2                                      add r0, r0, #1
0051894c  00 00 53 e3                                      cmp r3, #0
00518950  f2 ff ff 0a                                      beq #0x518920
00518954  02 00 53 e1                                      cmp r3, r2
00518958  f5 ff ff 0a                                      beq #0x518934
0051895c  00 00 a0 e3                                      mov r0, #0
00518960  ef ff ff ea                                      b #0x518924
00518964  01 40 d0 e5                                      ldrb r4, [r0, #1]
00518968  01 10 81 e2                                      add r1, r1, #1
0051896c  00 00 54 e3                                      cmp r4, #0
00518970  e3 ff ff 0a                                      beq #0x518904
00518974  00 20 d1 e5                                      ldrb r2, [r1]
00518978  01 00 80 e2                                      add r0, r0, #1
0051897c  00 00 52 e3                                      cmp r2, #0
00518980  e6 ff ff 0a                                      beq #0x518920
00518984  d4 ff ff ea                                      b #0x5188dc
; mapping-symbol data/literal pool
00518988  e8 c1 47 00 e0 36 00 00                          .byte 0xe8, 0xc1, 0x47, 0x00, 0xe0, 0x36, 0x00, 0x00

; FUNCTION 0x00518aac, declared_size=696, range_size=696, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBase9GetEntityEPKcPcPi13TiXmlEncoding
; demangled: TiXmlBase::GetEntity(char const*, char*, int*, TiXmlEncoding)
; decoder-mode: arm
00518aac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00518ab0  a0 52 9f e5                                      ldr r5, [pc, #0x2a0]
00518ab4  a0 92 9f e5                                      ldr sb, [pc, #0x2a0]
00518ab8  2c d0 4d e2                                      sub sp, sp, #0x2c
00518abc  05 50 8f e0                                      add r5, pc, r5
00518ac0  09 c0 95 e7                                      ldr ip, [r5, sb]
00518ac4  0c 60 8d e2                                      add r6, sp, #0xc
00518ac8  00 40 a0 e1                                      mov r4, r0
00518acc  00 c0 9c e5                                      ldr ip, [ip]
00518ad0  04 10 8d e5                                      str r1, [sp, #4]
00518ad4  06 00 a0 e1                                      mov r0, r6
00518ad8  10 10 a0 e3                                      mov r1, #0x10
00518adc  00 20 8d e5                                      str r2, [sp]
00518ae0  03 80 a0 e1                                      mov r8, r3
00518ae4  24 c0 8d e5                                      str ip, [sp, #0x24]
00518ae8  1c 60 8d e5                                      str r6, [sp, #0x1c]
00518aec  20 60 8d e5                                      str r6, [sp, #0x20]
00518af0  e1 e2 f7 eb                                      bl #0x31167c
00518af4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00518af8  00 70 a0 e3                                      mov r7, #0
00518afc  01 b0 84 e2                                      add fp, r4, #1
00518b00  00 70 c3 e5                                      strb r7, [r3]
00518b04  00 20 9d e5                                      ldr r2, [sp]
00518b08  00 70 82 e5                                      str r7, [r2]
00518b0c  d1 30 d4 e1                                      ldrsb r3, [r4, #1]
00518b10  23 00 53 e3                                      cmp r3, #0x23
00518b14  26 00 00 0a                                      beq #0x518bb4
00518b18  40 32 9f e5                                      ldr r3, [pc, #0x240]
00518b1c  00 70 a0 e3                                      mov r7, #0
00518b20  07 80 a0 e1                                      mov r8, r7
00518b24  03 a0 95 e7                                      ldr sl, [r5, r3]
00518b28  0a 30 87 e0                                      add r3, r7, sl
00518b2c  04 20 93 e5                                      ldr r2, [r3, #4]
00518b30  07 00 9a e7                                      ldr r0, [sl, r7]
00518b34  04 10 a0 e1                                      mov r1, r4
00518b38  4f d8 f7 eb                                      bl #0x30ec7c
00518b3c  00 00 50 e3                                      cmp r0, #0
00518b40  10 00 00 0a                                      beq #0x518b88
00518b44  01 80 88 e2                                      add r8, r8, #1
00518b48  05 00 58 e3                                      cmp r8, #5
00518b4c  0c 70 87 e2                                      add r7, r7, #0xc
00518b50  f4 ff ff 1a                                      bne #0x518b28
00518b54  00 30 d4 e5                                      ldrb r3, [r4]
00518b58  04 20 9d e5                                      ldr r2, [sp, #4]
00518b5c  00 30 c2 e5                                      strb r3, [r2]
00518b60  06 00 a0 e1                                      mov r0, r6
00518b64  90 eb f7 eb                                      bl #0x3139ac
00518b68  09 30 95 e7                                      ldr r3, [r5, sb]
00518b6c  24 20 9d e5                                      ldr r2, [sp, #0x24]
00518b70  0b 00 a0 e1                                      mov r0, fp
00518b74  00 30 93 e5                                      ldr r3, [r3]
00518b78  03 00 52 e1                                      cmp r2, r3
00518b7c  67 00 00 1a                                      bne #0x518d20
00518b80  2c d0 8d e2                                      add sp, sp, #0x2c
00518b84  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00518b88  0c 30 a0 e3                                      mov r3, #0xc
00518b8c  93 a8 28 e0                                      mla r8, r3, r8, sl
00518b90  04 20 9d e5                                      ldr r2, [sp, #4]
00518b94  08 30 d8 e5                                      ldrb r3, [r8, #8]
00518b98  00 30 c2 e5                                      strb r3, [r2]
00518b9c  00 20 9d e5                                      ldr r2, [sp]
00518ba0  01 30 a0 e3                                      mov r3, #1
00518ba4  00 30 82 e5                                      str r3, [r2]
00518ba8  04 b0 98 e5                                      ldr fp, [r8, #4]
00518bac  0b b0 84 e0                                      add fp, r4, fp
00518bb0  ea ff ff ea                                      b #0x518b60
00518bb4  02 30 d4 e5                                      ldrb r3, [r4, #2]
00518bb8  02 00 84 e2                                      add r0, r4, #2
00518bbc  07 00 53 e1                                      cmp r3, r7
00518bc0  d4 ff ff 0a                                      beq #0x518b18
00518bc4  78 00 53 e3                                      cmp r3, #0x78
00518bc8  2c 00 00 0a                                      beq #0x518c80
00518bcc  3b 10 a0 e3                                      mov r1, #0x3b
00518bd0  14 d8 f7 eb                                      bl #0x30ec28
00518bd4  00 00 50 e3                                      cmp r0, #0
00518bd8  01 00 00 1a                                      bne #0x518be4
00518bdc  00 b0 a0 e3                                      mov fp, #0
00518be0  de ff ff ea                                      b #0x518b60
00518be4  d0 30 d0 e1                                      ldrsb r3, [r0]
00518be8  00 00 53 e3                                      cmp r3, #0
00518bec  fa ff ff 0a                                      beq #0x518bdc
00518bf0  01 30 50 e5                                      ldrb r3, [r0, #-1]
00518bf4  00 a0 64 e0                                      rsb sl, r4, r0
00518bf8  73 20 af e6                                      sxtb r2, r3
00518bfc  23 00 52 e3                                      cmp r2, #0x23
00518c00  4e 00 00 0a                                      beq #0x518d40
00518c04  30 30 43 e2                                      sub r3, r3, #0x30
00518c08  73 30 ef e6                                      uxtb r3, r3
00518c0c  09 00 53 e3                                      cmp r3, #9
00518c10  f1 ff ff 8a                                      bhi #0x518bdc
00518c14  00 c0 a0 e1                                      mov ip, r0
00518c18  01 10 a0 e3                                      mov r1, #1
00518c1c  07 00 a0 e1                                      mov r0, r7
00518c20  0a e0 a0 e3                                      mov lr, #0xa
00518c24  04 00 00 ea                                      b #0x518c3c
00518c28  30 30 43 e2                                      sub r3, r3, #0x30
00518c2c  73 30 ef e6                                      uxtb r3, r3
00518c30  09 00 53 e3                                      cmp r3, #9
00518c34  01 c0 4c e2                                      sub ip, ip, #1
00518c38  e7 ff ff 8a                                      bhi #0x518bdc
00518c3c  02 30 5c e5                                      ldrb r3, [ip, #-2]
00518c40  30 20 42 e2                                      sub r2, r2, #0x30
00518c44  91 02 20 e0                                      mla r0, r1, r2, r0
00518c48  73 20 af e6                                      sxtb r2, r3
00518c4c  23 00 52 e3                                      cmp r2, #0x23
00518c50  9e 01 01 e0                                      mul r1, lr, r1
00518c54  f3 ff ff 1a                                      bne #0x518c28
00518c58  01 00 58 e3                                      cmp r8, #1
00518c5c  39 00 00 0a                                      beq #0x518d48
00518c60  04 30 9d e5                                      ldr r3, [sp, #4]
00518c64  00 00 c3 e5                                      strb r0, [r3]
00518c68  00 20 9d e5                                      ldr r2, [sp]
00518c6c  01 30 a0 e3                                      mov r3, #1
00518c70  00 30 82 e5                                      str r3, [r2]
00518c74  01 a0 8a e2                                      add sl, sl, #1
00518c78  0a b0 84 e0                                      add fp, r4, sl
00518c7c  b7 ff ff ea                                      b #0x518b60
00518c80  d3 30 d4 e1                                      ldrsb r3, [r4, #3]
00518c84  03 00 84 e2                                      add r0, r4, #3
00518c88  07 00 53 e1                                      cmp r3, r7
00518c8c  d2 ff ff 0a                                      beq #0x518bdc
00518c90  3b 10 a0 e3                                      mov r1, #0x3b
00518c94  e3 d7 f7 eb                                      bl #0x30ec28
00518c98  00 00 50 e3                                      cmp r0, #0
00518c9c  ce ff ff 0a                                      beq #0x518bdc
00518ca0  d0 30 d0 e1                                      ldrsb r3, [r0]
00518ca4  07 00 53 e1                                      cmp r3, r7
00518ca8  cb ff ff 0a                                      beq #0x518bdc
00518cac  01 10 50 e5                                      ldrb r1, [r0, #-1]
00518cb0  00 a0 64 e0                                      rsb sl, r4, r0
00518cb4  71 30 af e6                                      sxtb r3, r1
00518cb8  78 00 53 e3                                      cmp r3, #0x78
00518cbc  1f 00 00 0a                                      beq #0x518d40
00518cc0  00 c0 a0 e1                                      mov ip, r0
00518cc4  01 20 a0 e3                                      mov r2, #1
00518cc8  07 00 a0 e1                                      mov r0, r7
00518ccc  07 00 00 ea                                      b #0x518cf0
00518cd0  30 30 43 e2                                      sub r3, r3, #0x30
00518cd4  92 03 20 e0                                      mla r0, r2, r3, r0
00518cd8  02 10 5c e5                                      ldrb r1, [ip, #-2]
00518cdc  01 c0 4c e2                                      sub ip, ip, #1
00518ce0  71 30 af e6                                      sxtb r3, r1
00518ce4  78 00 53 e3                                      cmp r3, #0x78
00518ce8  da ff ff 0a                                      beq #0x518c58
00518cec  02 22 a0 e1                                      lsl r2, r2, #4
00518cf0  71 10 ef e6                                      uxtb r1, r1
00518cf4  30 e0 41 e2                                      sub lr, r1, #0x30
00518cf8  7e e0 ef e6                                      uxtb lr, lr
00518cfc  09 00 5e e3                                      cmp lr, #9
00518d00  f2 ff ff 9a                                      bls #0x518cd0
00518d04  61 e0 41 e2                                      sub lr, r1, #0x61
00518d08  7e e0 ef e6                                      uxtb lr, lr
00518d0c  05 00 5e e3                                      cmp lr, #5
00518d10  03 00 00 8a                                      bhi #0x518d24
00518d14  57 30 43 e2                                      sub r3, r3, #0x57
00518d18  92 03 20 e0                                      mla r0, r2, r3, r0
00518d1c  ed ff ff ea                                      b #0x518cd8
00518d20  7a d5 f7 eb                                      bl #0x30e310
00518d24  41 10 41 e2                                      sub r1, r1, #0x41
00518d28  71 10 ef e6                                      uxtb r1, r1
00518d2c  05 00 51 e3                                      cmp r1, #5
00518d30  a9 ff ff 8a                                      bhi #0x518bdc
00518d34  37 30 43 e2                                      sub r3, r3, #0x37
00518d38  92 03 20 e0                                      mla r0, r2, r3, r0
00518d3c  e5 ff ff ea                                      b #0x518cd8
00518d40  00 00 a0 e3                                      mov r0, #0
00518d44  c3 ff ff ea                                      b #0x518c58
00518d48  04 10 9d e5                                      ldr r1, [sp, #4]
00518d4c  00 20 9d e5                                      ldr r2, [sp]
00518d50  d6 fd ff eb                                      bl #0x5184b0
00518d54  c6 ff ff ea                                      b #0x518c74
; mapping-symbol data/literal pool
00518d58  d4 bf 47 00 ac 40 00 00 f8 2a 00 00              .byte 0xd4, 0xbf, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf8, 0x2a, 0x00, 0x00

; FUNCTION 0x00518d64, declared_size=196, range_size=196, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBase7GetCharEPKcPcPi13TiXmlEncoding
; demangled: TiXmlBase::GetChar(char const*, char*, int*, TiXmlEncoding)
; decoder-mode: arm
00518d64  b4 c0 9f e5                                      ldr ip, [pc, #0xb4]
00518d68  01 00 53 e3                                      cmp r3, #1
00518d6c  30 00 2d e9                                      push {r4, r5}
00518d70  0c c0 8f e0                                      add ip, pc, ip
00518d74  01 c0 a0 13                                      movne ip, #1
00518d78  00 c0 82 15                                      strne ip, [r2]
00518d7c  06 00 00 0a                                      beq #0x518d9c
00518d80  00 c0 d0 e5                                      ldrb ip, [r0]
00518d84  26 00 5c e3                                      cmp ip, #0x26
00518d88  00 c0 c1 15                                      strbne ip, [r1]
00518d8c  01 00 80 12                                      addne r0, r0, #1
00518d90  20 00 00 0a                                      beq #0x518e18
00518d94  30 00 bd e8                                      pop {r4, r5}
00518d98  1e ff 2f e1                                      bx lr
00518d9c  80 50 9f e5                                      ldr r5, [pc, #0x80]
00518da0  00 40 d0 e5                                      ldrb r4, [r0]
00518da4  05 c0 9c e7                                      ldr ip, [ip, r5]
00518da8  04 c1 9c e7                                      ldr ip, [ip, r4, lsl #2]
00518dac  01 00 5c e3                                      cmp ip, #1
00518db0  00 c0 82 e5                                      str ip, [r2]
00518db4  f1 ff ff 0a                                      beq #0x518d80
00518db8  00 00 5c e3                                      cmp ip, #0
00518dbc  0c 00 a0 01                                      moveq r0, ip
00518dc0  f3 ff ff 0a                                      beq #0x518d94
00518dc4  00 40 d0 e5                                      ldrb r4, [r0]
00518dc8  00 00 54 e3                                      cmp r4, #0
00518dcc  0a 00 00 0a                                      beq #0x518dfc
00518dd0  00 00 5c e3                                      cmp ip, #0
00518dd4  00 50 a0 c3                                      movgt r5, #0
00518dd8  05 30 a0 c1                                      movgt r3, r5
00518ddc  06 00 00 da                                      ble #0x518dfc
00518de0  05 40 c1 e7                                      strb r4, [r1, r5]
00518de4  01 30 83 e2                                      add r3, r3, #1
00518de8  03 40 d0 e7                                      ldrb r4, [r0, r3]
00518dec  03 50 a0 e1                                      mov r5, r3
00518df0  00 00 54 e3                                      cmp r4, #0
00518df4  02 00 00 1a                                      bne #0x518e04
00518df8  00 c0 92 e5                                      ldr ip, [r2]
00518dfc  0c 00 80 e0                                      add r0, r0, ip
00518e00  e3 ff ff ea                                      b #0x518d94
00518e04  00 c0 92 e5                                      ldr ip, [r2]
00518e08  03 00 5c e1                                      cmp ip, r3
00518e0c  f3 ff ff ca                                      bgt #0x518de0
00518e10  0c 00 80 e0                                      add r0, r0, ip
00518e14  de ff ff ea                                      b #0x518d94
00518e18  30 00 bd e8                                      pop {r4, r5}
00518e1c  22 ff ff ea                                      b #0x518aac
; mapping-symbol data/literal pool
00518e20  20 bd 47 00 44 2a 00 00                          .byte 0x20, 0xbd, 0x47, 0x00, 0x44, 0x2a, 0x00, 0x00

; FUNCTION 0x00518f84, declared_size=252, range_size=252, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBase8ReadNameEPKcPSs13TiXmlEncoding
; demangled: TiXmlBase::ReadName(char const*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, TiXmlEncoding)
; decoder-mode: arm
00518f84  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
00518f88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00518f8c  03 30 8f e0                                      add r3, pc, r3
00518f90  01 70 a0 e1                                      mov r7, r1
00518f94  00 50 a0 e1                                      mov r5, r0
00518f98  03 10 a0 e1                                      mov r1, r3
00518f9c  02 60 a0 e1                                      mov r6, r2
00518fa0  07 00 a0 e1                                      mov r0, r7
00518fa4  03 20 a0 e1                                      mov r2, r3
00518fa8  8c de f7 eb                                      bl #0x3109e0
00518fac  00 00 55 e3                                      cmp r5, #0
00518fb0  03 00 00 0a                                      beq #0x518fc4
00518fb4  00 00 d5 e5                                      ldrb r0, [r5]
00518fb8  00 00 50 e3                                      cmp r0, #0
00518fbc  02 00 00 1a                                      bne #0x518fcc
00518fc0  00 50 a0 e3                                      mov r5, #0
00518fc4  05 00 a0 e1                                      mov r0, r5
00518fc8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00518fcc  06 10 a0 e1                                      mov r1, r6
00518fd0  74 fd ff eb                                      bl #0x5185a8
00518fd4  00 00 50 e3                                      cmp r0, #0
00518fd8  17 00 00 0a                                      beq #0x51903c
00518fdc  00 00 d5 e5                                      ldrb r0, [r5]
00518fe0  00 00 50 e3                                      cmp r0, #0
00518fe4  f6 ff ff 0a                                      beq #0x518fc4
00518fe8  05 40 a0 e1                                      mov r4, r5
00518fec  06 10 a0 e1                                      mov r1, r6
00518ff0  7a fd ff eb                                      bl #0x5185e0
00518ff4  00 00 50 e3                                      cmp r0, #0
00518ff8  13 00 00 0a                                      beq #0x51904c
00518ffc  01 40 94 e2                                      adds r4, r4, #1
00519000  1b 00 00 0a                                      beq #0x519074
00519004  00 00 d4 e5                                      ldrb r0, [r4]
00519008  00 00 50 e3                                      cmp r0, #0
0051900c  f6 ff ff 1a                                      bne #0x518fec
00519010  04 20 65 e0                                      rsb r2, r5, r4
00519014  00 00 52 e3                                      cmp r2, #0
00519018  04 50 a0 d1                                      movle r5, r4
0051901c  e8 ff ff da                                      ble #0x518fc4
00519020  05 10 a0 e1                                      mov r1, r5
00519024  02 20 85 e0                                      add r2, r5, r2
00519028  07 00 a0 e1                                      mov r0, r7
0051902c  04 50 a0 e1                                      mov r5, r4
00519030  6a de f7 eb                                      bl #0x3109e0
00519034  05 00 a0 e1                                      mov r0, r5
00519038  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0051903c  00 00 d5 e5                                      ldrb r0, [r5]
00519040  5f 00 50 e3                                      cmp r0, #0x5f
00519044  dd ff ff 1a                                      bne #0x518fc0
00519048  e6 ff ff ea                                      b #0x518fe8
0051904c  d0 30 d4 e1                                      ldrsb r3, [r4]
00519050  5f 00 53 e3                                      cmp r3, #0x5f
00519054  e8 ff ff 0a                                      beq #0x518ffc
00519058  2d 00 53 e3                                      cmp r3, #0x2d
0051905c  e6 ff ff 0a                                      beq #0x518ffc
00519060  2e 00 53 e3                                      cmp r3, #0x2e
00519064  e4 ff ff 0a                                      beq #0x518ffc
00519068  3a 00 53 e3                                      cmp r3, #0x3a
0051906c  e7 ff ff 1a                                      bne #0x519010
00519070  e1 ff ff ea                                      b #0x518ffc
00519074  00 20 65 e2                                      rsb r2, r5, #0
00519078  e5 ff ff ea                                      b #0x519014
; mapping-symbol data/literal pool
0051907c  7c 28 3b 00                                      .byte 0x7c, 0x28, 0x3b, 0x00

; FUNCTION 0x005190d8, declared_size=572, range_size=572, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBase8ReadTextEPKcPSsbS1_b13TiXmlEncoding
; demangled: TiXmlBase::ReadText(char const*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*, bool, char const*, bool, TiXmlEncoding)
; decoder-mode: arm
005190d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005190dc  20 c2 9f e5                                      ldr ip, [pc, #0x220]
005190e0  01 a0 a0 e1                                      mov sl, r1
005190e4  1c 62 9f e5                                      ldr r6, [pc, #0x21c]
005190e8  0c c0 8f e0                                      add ip, pc, ip
005190ec  1c d0 4d e2                                      sub sp, sp, #0x1c
005190f0  02 90 a0 e1                                      mov sb, r2
005190f4  0c 10 a0 e1                                      mov r1, ip
005190f8  00 40 a0 e1                                      mov r4, r0
005190fc  0c 20 a0 e1                                      mov r2, ip
00519100  0a 00 a0 e1                                      mov r0, sl
00519104  03 70 a0 e1                                      mov r7, r3
00519108  44 50 9d e5                                      ldr r5, [sp, #0x44]
0051910c  40 80 dd e5                                      ldrb r8, [sp, #0x40]
00519110  32 de f7 eb                                      bl #0x3109e0
00519114  00 00 59 e3                                      cmp sb, #0
00519118  06 60 8f e0                                      add r6, pc, r6
0051911c  04 00 00 0a                                      beq #0x519134
00519120  e4 31 9f e5                                      ldr r3, [pc, #0x1e4]
00519124  03 30 96 e7                                      ldr r3, [r6, r3]
00519128  00 30 d3 e5                                      ldrb r3, [r3]
0051912c  00 00 53 e3                                      cmp r3, #0
00519130  2a 00 00 1a                                      bne #0x5191e0
00519134  00 00 54 e3                                      cmp r4, #0
00519138  07 00 00 0a                                      beq #0x51915c
0051913c  d0 30 d4 e1                                      ldrsb r3, [r4]
00519140  00 00 53 e3                                      cmp r3, #0
00519144  07 00 00 1a                                      bne #0x519168
00519148  00 00 54 e3                                      cmp r4, #0
0051914c  02 00 00 0a                                      beq #0x51915c
00519150  07 00 a0 e1                                      mov r0, r7
00519154  3e d3 f7 eb                                      bl #0x30de54
00519158  00 40 84 e0                                      add r4, r4, r0
0051915c  04 00 a0 e1                                      mov r0, r4
00519160  1c d0 8d e2                                      add sp, sp, #0x1c
00519164  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00519168  10 60 8d e2                                      add r6, sp, #0x10
0051916c  14 90 8d e2                                      add sb, sp, #0x14
00519170  07 10 a0 e1                                      mov r1, r7
00519174  08 20 a0 e1                                      mov r2, r8
00519178  05 30 a0 e1                                      mov r3, r5
0051917c  04 00 a0 e1                                      mov r0, r4
00519180  c5 fd ff eb                                      bl #0x51889c
00519184  00 c0 50 e2                                      subs ip, r0, #0
00519188  06 10 a0 e1                                      mov r1, r6
0051918c  09 20 a0 e1                                      mov r2, sb
00519190  05 30 a0 e1                                      mov r3, r5
00519194  04 00 a0 e1                                      mov r0, r4
00519198  ea ff ff 1a                                      bne #0x519148
0051919c  13 c0 cd e5                                      strb ip, [sp, #0x13]
005191a0  10 c0 cd e5                                      strb ip, [sp, #0x10]
005191a4  11 c0 cd e5                                      strb ip, [sp, #0x11]
005191a8  12 c0 cd e5                                      strb ip, [sp, #0x12]
005191ac  ec fe ff eb                                      bl #0x518d64
005191b0  14 20 9d e5                                      ldr r2, [sp, #0x14]
005191b4  00 40 a0 e1                                      mov r4, r0
005191b8  06 10 a0 e1                                      mov r1, r6
005191bc  0a 00 a0 e1                                      mov r0, sl
005191c0  02 20 86 e0                                      add r2, r6, r2
005191c4  8e dd f7 eb                                      bl #0x310804
005191c8  00 00 54 e3                                      cmp r4, #0
005191cc  e2 ff ff 0a                                      beq #0x51915c
005191d0  d0 30 d4 e1                                      ldrsb r3, [r4]
005191d4  00 00 53 e3                                      cmp r3, #0
005191d8  da ff ff 0a                                      beq #0x519148
005191dc  e3 ff ff ea                                      b #0x519170
005191e0  04 00 a0 e1                                      mov r0, r4
005191e4  05 10 a0 e1                                      mov r1, r5
005191e8  66 fd ff eb                                      bl #0x518788
005191ec  00 40 50 e2                                      subs r4, r0, #0
005191f0  d9 ff ff 0a                                      beq #0x51915c
005191f4  d0 30 d4 e1                                      ldrsb r3, [r4]
005191f8  00 00 53 e3                                      cmp r3, #0
005191fc  d1 ff ff 0a                                      beq #0x519148
00519200  14 30 8d e2                                      add r3, sp, #0x14
00519204  0c 30 8d e5                                      str r3, [sp, #0xc]
00519208  00 31 9f e5                                      ldr r3, [pc, #0x100]
0051920c  00 90 a0 e3                                      mov sb, #0
00519210  10 20 8d e2                                      add r2, sp, #0x10
00519214  04 a0 8d e5                                      str sl, [sp, #4]
00519218  08 80 8d e5                                      str r8, [sp, #8]
0051921c  09 b0 a0 e1                                      mov fp, sb
00519220  02 80 a0 e1                                      mov r8, r2
00519224  03 a0 a0 e1                                      mov sl, r3
00519228  06 00 00 ea                                      b #0x519248
0051922c  01 40 84 e2                                      add r4, r4, #1
00519230  01 90 a0 e3                                      mov sb, #1
00519234  00 00 54 e3                                      cmp r4, #0
00519238  c7 ff ff 0a                                      beq #0x51915c
0051923c  d0 30 d4 e1                                      ldrsb r3, [r4]
00519240  00 00 53 e3                                      cmp r3, #0
00519244  bf ff ff 0a                                      beq #0x519148
00519248  04 00 a0 e1                                      mov r0, r4
0051924c  07 10 a0 e1                                      mov r1, r7
00519250  08 20 9d e5                                      ldr r2, [sp, #8]
00519254  05 30 a0 e1                                      mov r3, r5
00519258  8f fd ff eb                                      bl #0x51889c
0051925c  00 00 50 e3                                      cmp r0, #0
00519260  b8 ff ff 1a                                      bne #0x519148
00519264  00 30 d4 e5                                      ldrb r3, [r4]
00519268  0d 00 53 e3                                      cmp r3, #0xd
0051926c  0a 00 53 13                                      cmpne r3, #0xa
00519270  ed ff ff 0a                                      beq #0x51922c
00519274  0a 20 96 e7                                      ldr r2, [r6, sl]
00519278  73 30 ef e6                                      uxtb r3, r3
0051927c  00 20 92 e5                                      ldr r2, [r2]
00519280  03 30 82 e0                                      add r3, r2, r3
00519284  01 30 d3 e5                                      ldrb r3, [r3, #1]
00519288  08 00 13 e3                                      tst r3, #8
0051928c  e6 ff ff 1a                                      bne #0x51922c
00519290  00 00 59 e3                                      cmp sb, #0
00519294  02 00 00 0a                                      beq #0x5192a4
00519298  04 00 9d e5                                      ldr r0, [sp, #4]
0051929c  20 10 a0 e3                                      mov r1, #0x20
005192a0  ed 43 f8 eb                                      bl #0x32a25c
005192a4  04 00 a0 e1                                      mov r0, r4
005192a8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005192ac  08 10 a0 e1                                      mov r1, r8
005192b0  05 30 a0 e1                                      mov r3, r5
005192b4  10 b0 cd e5                                      strb fp, [sp, #0x10]
005192b8  11 b0 cd e5                                      strb fp, [sp, #0x11]
005192bc  12 b0 cd e5                                      strb fp, [sp, #0x12]
005192c0  13 b0 cd e5                                      strb fp, [sp, #0x13]
005192c4  a6 fe ff eb                                      bl #0x518d64
005192c8  14 20 9d e5                                      ldr r2, [sp, #0x14]
005192cc  00 40 a0 e1                                      mov r4, r0
005192d0  01 00 52 e3                                      cmp r2, #1
005192d4  05 00 00 0a                                      beq #0x5192f0
005192d8  02 20 88 e0                                      add r2, r8, r2
005192dc  04 00 9d e5                                      ldr r0, [sp, #4]
005192e0  08 10 a0 e1                                      mov r1, r8
005192e4  46 dd f7 eb                                      bl #0x310804
005192e8  00 90 a0 e3                                      mov sb, #0
005192ec  d0 ff ff ea                                      b #0x519234
005192f0  04 00 9d e5                                      ldr r0, [sp, #4]
005192f4  d0 11 dd e1                                      ldrsb r1, [sp, #0x10]
005192f8  d7 43 f8 eb                                      bl #0x32a25c
005192fc  00 90 a0 e3                                      mov sb, #0
00519300  cb ff ff ea                                      b #0x519234
; mapping-symbol data/literal pool
00519304  20 27 3b 00 78 b9 47 00 64 40 00 00 dc 1d 00 00  .byte 0x20, 0x27, 0x3b, 0x00, 0x78, 0xb9, 0x47, 0x00, 0x64, 0x40, 0x00, 0x00, 0xdc, 0x1d, 0x00, 0x00

; FUNCTION 0x005193b4, declared_size=112, range_size=112, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBase8StreamToEPSiiPSs
; demangled: TiXmlBase::StreamTo(std::basic_istream<char, std::char_traits<char> >*, int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*)
; decoder-mode: arm
005193b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005193b8  00 40 a0 e1                                      mov r4, r0
005193bc  00 30 90 e5                                      ldr r3, [r0]
005193c0  01 50 a0 e1                                      mov r5, r1
005193c4  02 60 a0 e1                                      mov r6, r2
005193c8  0c 00 00 ea                                      b #0x519400
005193cc  04 00 a0 e1                                      mov r0, r4
005193d0  cf ff ff eb                                      bl #0x519314
005193d4  00 70 a0 e1                                      mov r7, r0
005193d8  05 00 57 e1                                      cmp r7, r5
005193dc  04 00 a0 e1                                      mov r0, r4
005193e0  0d 00 00 0a                                      beq #0x51941c
005193e4  00 00 57 e3                                      cmp r7, #0
005193e8  09 00 00 da                                      ble #0x519414
005193ec  b4 fe ff eb                                      bl #0x518ec4
005193f0  06 00 a0 e1                                      mov r0, r6
005193f4  77 10 af e6                                      sxtb r1, r7
005193f8  97 43 f8 eb                                      bl #0x32a25c
005193fc  00 30 94 e5                                      ldr r3, [r4]
00519400  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00519404  03 30 84 e0                                      add r3, r4, r3
00519408  08 30 93 e5                                      ldr r3, [r3, #8]
0051940c  00 00 53 e3                                      cmp r3, #0
00519410  ed ff ff 0a                                      beq #0x5193cc
00519414  00 00 a0 e3                                      mov r0, #0
00519418  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0051941c  01 00 a0 e3                                      mov r0, #1
00519420  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00519424, declared_size=196, range_size=196, mode=arm
; class-group: TiXmlBase
; alias: _ZN9TiXmlBase16StreamWhiteSpaceEPSiPSs
; demangled: TiXmlBase::StreamWhiteSpace(std::basic_istream<char, std::char_traits<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*)
; decoder-mode: arm
00519424  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00519428  00 30 90 e5                                      ldr r3, [r0]
0051942c  ac 60 9f e5                                      ldr r6, [pc, #0xac]
00519430  00 40 a0 e1                                      mov r4, r0
00519434  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00519438  06 60 8f e0                                      add r6, pc, r6
0051943c  01 70 a0 e1                                      mov r7, r1
00519440  03 30 80 e0                                      add r3, r0, r3
00519444  08 30 93 e5                                      ldr r3, [r3, #8]
00519448  00 00 53 e3                                      cmp r3, #0
0051944c  21 00 00 1a                                      bne #0x5194d8
00519450  8c 50 9f e5                                      ldr r5, [pc, #0x8c]
00519454  04 00 a0 e1                                      mov r0, r4
00519458  ad ff ff eb                                      bl #0x519314
0051945c  70 20 ef e6                                      uxtb r2, r0
00519460  ff 00 50 e3                                      cmp r0, #0xff
00519464  00 30 a0 e1                                      mov r3, r0
00519468  72 10 af e6                                      sxtb r1, r2
0051946c  01 00 00 da                                      ble #0x519478
00519470  01 00 a0 e3                                      mov r0, #1
00519474  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00519478  05 00 96 e7                                      ldr r0, [r6, r5]
0051947c  00 00 90 e5                                      ldr r0, [r0]
00519480  02 20 80 e0                                      add r2, r0, r2
00519484  01 20 d2 e5                                      ldrb r2, [r2, #1]
00519488  d2 21 e0 e7                                      ubfx r2, r2, #3, #1
0051948c  0a 00 51 e3                                      cmp r1, #0xa
00519490  01 20 82 03                                      orreq r2, r2, #1
00519494  00 00 52 e3                                      cmp r2, #0
00519498  01 00 00 1a                                      bne #0x5194a4
0051949c  0d 00 51 e3                                      cmp r1, #0xd
005194a0  f2 ff ff 1a                                      bne #0x519470
005194a4  00 00 53 e3                                      cmp r3, #0
005194a8  04 00 a0 e1                                      mov r0, r4
005194ac  ef ff ff da                                      ble #0x519470
005194b0  83 fe ff eb                                      bl #0x518ec4
005194b4  70 10 af e6                                      sxtb r1, r0
005194b8  07 00 a0 e1                                      mov r0, r7
005194bc  66 43 f8 eb                                      bl #0x32a25c
005194c0  00 30 94 e5                                      ldr r3, [r4]
005194c4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005194c8  03 30 84 e0                                      add r3, r4, r3
005194cc  08 30 93 e5                                      ldr r3, [r3, #8]
005194d0  00 00 53 e3                                      cmp r3, #0
005194d4  de ff ff 0a                                      beq #0x519454
005194d8  00 00 a0 e3                                      mov r0, #0
005194dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005194e0  58 b6 47 00 dc 1d 00 00                          .byte 0x58, 0xb6, 0x47, 0x00, 0xdc, 0x1d, 0x00, 0x00
