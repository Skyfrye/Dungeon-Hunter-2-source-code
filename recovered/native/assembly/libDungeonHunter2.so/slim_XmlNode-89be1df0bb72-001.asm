; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008445bc, declared_size=164, range_size=164, mode=arm
; class-group: slim::XmlNode
; alias: _ZNK4slim7XmlNode13findAttributeEPKc
; demangled: slim::XmlNode::findAttribute(char const*) const
; decoder-mode: arm
008445bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008445c0  8c a0 9f e5                                      ldr sl, [pc, #0x8c]
008445c4  8c 80 9f e5                                      ldr r8, [pc, #0x8c]
008445c8  8c 90 9f e5                                      ldr sb, [pc, #0x8c]
008445cc  00 60 a0 e1                                      mov r6, r0
008445d0  0a a0 8f e0                                      add sl, pc, sl
008445d4  01 70 a0 e1                                      mov r7, r1
008445d8  08 80 8f e0                                      add r8, pc, r8
008445dc  38 a0 8a e2                                      add sl, sl, #0x38
008445e0  09 90 8f e0                                      add sb, pc, sb
008445e4  34 40 b6 e5                                      ldr r4, [r6, #0x34]!
008445e8  05 00 00 ea                                      b #0x844604
008445ec  14 00 95 e5                                      ldr r0, [r5, #0x14]
008445f0  07 10 a0 e1                                      mov r1, r7
008445f4  48 27 eb eb                                      bl #0x30e31c
008445f8  00 00 50 e3                                      cmp r0, #0
008445fc  0f 00 00 0a                                      beq #0x844640
00844600  00 40 94 e5                                      ldr r4, [r4]
00844604  04 00 56 e1                                      cmp r6, r4
00844608  0e 00 00 0a                                      beq #0x844648
0084460c  08 50 94 e5                                      ldr r5, [r4, #8]
00844610  00 00 55 e3                                      cmp r5, #0
00844614  f4 ff ff 1a                                      bne #0x8445ec
00844618  08 00 a0 e1                                      mov r0, r8
0084461c  85 10 a0 e3                                      mov r1, #0x85
00844620  0a 20 a0 e1                                      mov r2, sl
00844624  09 30 a0 e1                                      mov r3, sb
00844628  84 29 eb eb                                      bl #0x30ec40
0084462c  14 00 95 e5                                      ldr r0, [r5, #0x14]
00844630  07 10 a0 e1                                      mov r1, r7
00844634  38 27 eb eb                                      bl #0x30e31c
00844638  00 00 50 e3                                      cmp r0, #0
0084463c  ef ff ff 1a                                      bne #0x844600
00844640  05 00 a0 e1                                      mov r0, r5
00844644  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00844648  00 50 a0 e3                                      mov r5, #0
0084464c  05 00 a0 e1                                      mov r0, r5
00844650  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00844654  28 a9 0c 00 90 ab 0c 00 00 ac 0c 00              .byte 0x28, 0xa9, 0x0c, 0x00, 0x90, 0xab, 0x0c, 0x00, 0x00, 0xac, 0x0c, 0x00

; FUNCTION 0x00844660, declared_size=220, range_size=220, mode=arm
; class-group: slim::XmlNode
; alias: _ZNK4slim7XmlNode13findNextChildEPKcRNSt4priv14_List_iteratorIPS0_St13_Const_traitsIS5_EEE
; demangled: slim::XmlNode::findNextChild(char const*, std::priv::_List_iterator<slim::XmlNode*, std::_Const_traits<slim::XmlNode*> >&) const
; decoder-mode: arm
00844660  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00844664  00 70 51 e2                                      subs r7, r1, #0
00844668  00 60 a0 e1                                      mov r6, r0
0084466c  02 50 a0 e1                                      mov r5, r2
00844670  21 00 00 0a                                      beq #0x8446fc
00844674  00 30 95 e5                                      ldr r3, [r5]
00844678  40 60 86 e2                                      add r6, r6, #0x40
0084467c  03 00 56 e1                                      cmp r6, r3
00844680  02 00 00 1a                                      bne #0x844690
00844684  00 40 a0 e3                                      mov r4, #0
00844688  04 00 a0 e1                                      mov r0, r4
0084468c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00844690  8c a0 9f e5                                      ldr sl, [pc, #0x8c]
00844694  8c 80 9f e5                                      ldr r8, [pc, #0x8c]
00844698  8c 90 9f e5                                      ldr sb, [pc, #0x8c]
0084469c  0a a0 8f e0                                      add sl, pc, sl
008446a0  08 80 8f e0                                      add r8, pc, r8
008446a4  88 a0 8a e2                                      add sl, sl, #0x88
008446a8  09 90 8f e0                                      add sb, pc, sb
008446ac  05 00 00 ea                                      b #0x8446c8
008446b0  04 00 a0 e1                                      mov r0, r4
008446b4  07 10 a0 e1                                      mov r1, r7
008446b8  62 3d eb eb                                      bl #0x313c48
008446bc  00 00 50 e3                                      cmp r0, #0
008446c0  f0 ff ff 1a                                      bne #0x844688
008446c4  00 30 95 e5                                      ldr r3, [r5]
008446c8  00 30 93 e5                                      ldr r3, [r3]
008446cc  03 00 56 e1                                      cmp r6, r3
008446d0  00 30 85 e5                                      str r3, [r5]
008446d4  ea ff ff 0a                                      beq #0x844684
008446d8  08 40 93 e5                                      ldr r4, [r3, #8]
008446dc  00 00 54 e3                                      cmp r4, #0
008446e0  f2 ff ff 1a                                      bne #0x8446b0
008446e4  08 00 a0 e1                                      mov r0, r8
008446e8  0a 20 a0 e1                                      mov r2, sl
008446ec  09 30 a0 e1                                      mov r3, sb
008446f0  44 10 a0 e3                                      mov r1, #0x44
008446f4  51 29 eb eb                                      bl #0x30ec40
008446f8  ec ff ff ea                                      b #0x8446b0
008446fc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00844700  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
00844704  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00844708  02 20 8f e0                                      add r2, pc, r2
0084470c  00 00 8f e0                                      add r0, pc, r0
00844710  88 20 82 e2                                      add r2, r2, #0x88
00844714  03 30 8f e0                                      add r3, pc, r3
00844718  3e 10 a0 e3                                      mov r1, #0x3e
0084471c  47 29 eb eb                                      bl #0x30ec40
00844720  d3 ff ff ea                                      b #0x844674
; mapping-symbol data/literal pool
00844724  5c a8 0c 00 c8 aa 0c 00 60 ab 0c 00 f0 a7 0c 00  .byte 0x5c, 0xa8, 0x0c, 0x00, 0xc8, 0xaa, 0x0c, 0x00, 0x60, 0xab, 0x0c, 0x00, 0xf0, 0xa7, 0x0c, 0x00
00844734  5c aa 0c 00 e4 aa 0c 00                          .byte 0x5c, 0xaa, 0x0c, 0x00, 0xe4, 0xaa, 0x0c, 0x00

; FUNCTION 0x0084473c, declared_size=236, range_size=236, mode=arm
; class-group: slim::XmlNode
; alias: _ZNK4slim7XmlNode14findFirstChildEPKcRNSt4priv14_List_iteratorIPS0_St13_Const_traitsIS5_EEE
; demangled: slim::XmlNode::findFirstChild(char const*, std::priv::_List_iterator<slim::XmlNode*, std::_Const_traits<slim::XmlNode*> >&) const
; decoder-mode: arm
0084473c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00844740  00 70 51 e2                                      subs r7, r1, #0
00844744  00 60 a0 e1                                      mov r6, r0
00844748  02 50 a0 e1                                      mov r5, r2
0084474c  25 00 00 0a                                      beq #0x8447e8
00844750  b8 a0 9f e5                                      ldr sl, [pc, #0xb8]
00844754  40 30 b6 e5                                      ldr r3, [r6, #0x40]!
00844758  b4 80 9f e5                                      ldr r8, [pc, #0xb4]
0084475c  b4 90 9f e5                                      ldr sb, [pc, #0xb4]
00844760  0a a0 8f e0                                      add sl, pc, sl
00844764  00 30 85 e5                                      str r3, [r5]
00844768  08 80 8f e0                                      add r8, pc, r8
0084476c  e8 a0 8a e2                                      add sl, sl, #0xe8
00844770  09 90 8f e0                                      add sb, pc, sb
00844774  07 00 00 ea                                      b #0x844798
00844778  04 00 a0 e1                                      mov r0, r4
0084477c  07 10 a0 e1                                      mov r1, r7
00844780  30 3d eb eb                                      bl #0x313c48
00844784  00 00 50 e3                                      cmp r0, #0
00844788  11 00 00 1a                                      bne #0x8447d4
0084478c  00 30 95 e5                                      ldr r3, [r5]
00844790  00 30 93 e5                                      ldr r3, [r3]
00844794  00 30 85 e5                                      str r3, [r5]
00844798  03 00 56 e1                                      cmp r6, r3
0084479c  0e 00 00 0a                                      beq #0x8447dc
008447a0  08 40 93 e5                                      ldr r4, [r3, #8]
008447a4  00 00 54 e3                                      cmp r4, #0
008447a8  f2 ff ff 1a                                      bne #0x844778
008447ac  08 00 a0 e1                                      mov r0, r8
008447b0  30 10 a0 e3                                      mov r1, #0x30
008447b4  0a 20 a0 e1                                      mov r2, sl
008447b8  09 30 a0 e1                                      mov r3, sb
008447bc  1f 29 eb eb                                      bl #0x30ec40
008447c0  04 00 a0 e1                                      mov r0, r4
008447c4  07 10 a0 e1                                      mov r1, r7
008447c8  1e 3d eb eb                                      bl #0x313c48
008447cc  00 00 50 e3                                      cmp r0, #0
008447d0  ed ff ff 0a                                      beq #0x84478c
008447d4  04 00 a0 e1                                      mov r0, r4
008447d8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008447dc  00 40 a0 e3                                      mov r4, #0
008447e0  04 00 a0 e1                                      mov r0, r4
008447e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008447e8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
008447ec  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
008447f0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
008447f4  02 20 8f e0                                      add r2, pc, r2
008447f8  00 00 8f e0                                      add r0, pc, r0
008447fc  e8 20 82 e2                                      add r2, r2, #0xe8
00844800  03 30 8f e0                                      add r3, pc, r3
00844804  2b 10 a0 e3                                      mov r1, #0x2b
00844808  0c 29 eb eb                                      bl #0x30ec40
0084480c  cf ff ff ea                                      b #0x844750
; mapping-symbol data/literal pool
00844810  98 a7 0c 00 00 aa 0c 00 98 aa 0c 00 04 a7 0c 00  .byte 0x98, 0xa7, 0x0c, 0x00, 0x00, 0xaa, 0x0c, 0x00, 0x98, 0xaa, 0x0c, 0x00, 0x04, 0xa7, 0x0c, 0x00
00844820  70 a9 0c 00 f8 a9 0c 00                          .byte 0x70, 0xa9, 0x0c, 0x00, 0xf8, 0xa9, 0x0c, 0x00

; FUNCTION 0x00844828, declared_size=220, range_size=220, mode=arm
; class-group: slim::XmlNode
; alias: _ZNK4slim7XmlNode9findChildEPKc
; demangled: slim::XmlNode::findChild(char const*) const
; decoder-mode: arm
00844828  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0084482c  00 70 51 e2                                      subs r7, r1, #0
00844830  00 60 a0 e1                                      mov r6, r0
00844834  22 00 00 0a                                      beq #0x8448c4
00844838  ac a0 9f e5                                      ldr sl, [pc, #0xac]
0084483c  ac 80 9f e5                                      ldr r8, [pc, #0xac]
00844840  ac 90 9f e5                                      ldr sb, [pc, #0xac]
00844844  0a a0 8f e0                                      add sl, pc, sl
00844848  08 80 8f e0                                      add r8, pc, r8
0084484c  52 af 8a e2                                      add sl, sl, #0x148
00844850  09 90 8f e0                                      add sb, pc, sb
00844854  40 40 b6 e5                                      ldr r4, [r6, #0x40]!
00844858  05 00 00 ea                                      b #0x844874
0084485c  05 00 a0 e1                                      mov r0, r5
00844860  07 10 a0 e1                                      mov r1, r7
00844864  f7 3c eb eb                                      bl #0x313c48
00844868  00 00 50 e3                                      cmp r0, #0
0084486c  0f 00 00 1a                                      bne #0x8448b0
00844870  00 40 94 e5                                      ldr r4, [r4]
00844874  04 00 56 e1                                      cmp r6, r4
00844878  0e 00 00 0a                                      beq #0x8448b8
0084487c  08 50 94 e5                                      ldr r5, [r4, #8]
00844880  00 00 55 e3                                      cmp r5, #0
00844884  f4 ff ff 1a                                      bne #0x84485c
00844888  08 00 a0 e1                                      mov r0, r8
0084488c  1f 10 a0 e3                                      mov r1, #0x1f
00844890  0a 20 a0 e1                                      mov r2, sl
00844894  09 30 a0 e1                                      mov r3, sb
00844898  e8 28 eb eb                                      bl #0x30ec40
0084489c  05 00 a0 e1                                      mov r0, r5
008448a0  07 10 a0 e1                                      mov r1, r7
008448a4  e7 3c eb eb                                      bl #0x313c48
008448a8  00 00 50 e3                                      cmp r0, #0
008448ac  ef ff ff 0a                                      beq #0x844870
008448b0  05 00 a0 e1                                      mov r0, r5
008448b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008448b8  00 50 a0 e3                                      mov r5, #0
008448bc  05 00 a0 e1                                      mov r0, r5
008448c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008448c4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
008448c8  2c 00 9f e5                                      ldr r0, [pc, #0x2c]
008448cc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
008448d0  02 20 8f e0                                      add r2, pc, r2
008448d4  00 00 8f e0                                      add r0, pc, r0
008448d8  52 2f 82 e2                                      add r2, r2, #0x148
008448dc  03 30 8f e0                                      add r3, pc, r3
008448e0  19 10 a0 e3                                      mov r1, #0x19
008448e4  d5 28 eb eb                                      bl #0x30ec40
008448e8  d2 ff ff ea                                      b #0x844838
; mapping-symbol data/literal pool
008448ec  b4 a6 0c 00 20 a9 0c 00 b8 a9 0c 00 28 a6 0c 00  .byte 0xb4, 0xa6, 0x0c, 0x00, 0x20, 0xa9, 0x0c, 0x00, 0xb8, 0xa9, 0x0c, 0x00, 0x28, 0xa6, 0x0c, 0x00
008448fc  94 a8 0c 00 1c a9 0c 00                          .byte 0x94, 0xa8, 0x0c, 0x00, 0x1c, 0xa9, 0x0c, 0x00

; FUNCTION 0x0084494c, declared_size=60, range_size=60, mode=arm
; class-group: slim::XmlNode
; alias: _ZN4slim7XmlNodeC1ENS_8NodeTypeEPS0_
; demangled: slim::XmlNode::XmlNode(slim::NodeType, slim::XmlNode*)
; decoder-mode: arm
0084494c  70 40 2d e9                                      push {r4, r5, r6, lr}
00844950  00 40 a0 e1                                      mov r4, r0
00844954  02 60 a0 e1                                      mov r6, r2
00844958  01 50 a0 e1                                      mov r5, r1
0084495c  e9 ff ff eb                                      bl #0x844908
00844960  34 20 84 e2                                      add r2, r4, #0x34
00844964  40 30 84 e2                                      add r3, r4, #0x40
00844968  30 50 84 e5                                      str r5, [r4, #0x30]
0084496c  38 20 84 e5                                      str r2, [r4, #0x38]
00844970  3c 60 84 e5                                      str r6, [r4, #0x3c]
00844974  44 30 84 e5                                      str r3, [r4, #0x44]
00844978  34 20 84 e5                                      str r2, [r4, #0x34]
0084497c  40 30 84 e5                                      str r3, [r4, #0x40]
00844980  04 00 a0 e1                                      mov r0, r4
00844984  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00844988, declared_size=60, range_size=60, mode=arm
; class-group: slim::XmlNode
; alias: _ZN4slim7XmlNodeC2ENS_8NodeTypeEPS0_
; demangled: slim::XmlNode::XmlNode(slim::NodeType, slim::XmlNode*)
; decoder-mode: arm
00844988  70 40 2d e9                                      push {r4, r5, r6, lr}
0084498c  00 40 a0 e1                                      mov r4, r0
00844990  02 60 a0 e1                                      mov r6, r2
00844994  01 50 a0 e1                                      mov r5, r1
00844998  da ff ff eb                                      bl #0x844908
0084499c  34 20 84 e2                                      add r2, r4, #0x34
008449a0  40 30 84 e2                                      add r3, r4, #0x40
008449a4  30 50 84 e5                                      str r5, [r4, #0x30]
008449a8  38 20 84 e5                                      str r2, [r4, #0x38]
008449ac  3c 60 84 e5                                      str r6, [r4, #0x3c]
008449b0  44 30 84 e5                                      str r3, [r4, #0x44]
008449b4  34 20 84 e5                                      str r2, [r4, #0x34]
008449b8  40 30 84 e5                                      str r3, [r4, #0x40]
008449bc  04 00 a0 e1                                      mov r0, r4
008449c0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008449fc, declared_size=208, range_size=208, mode=arm
; class-group: slim::XmlNode
; alias: _ZN4slim7XmlNode14clearAttributeEv
; demangled: slim::XmlNode::clearAttribute()
; decoder-mode: arm
008449fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00844a00  00 60 a0 e1                                      mov r6, r0
00844a04  34 50 b6 e5                                      ldr r5, [r6, #0x34]!
00844a08  00 70 a0 e1                                      mov r7, r0
00844a0c  05 00 56 e1                                      cmp r6, r5
00844a10  1c 00 00 0a                                      beq #0x844a88
00844a14  08 40 95 e5                                      ldr r4, [r5, #8]
00844a18  00 00 54 e3                                      cmp r4, #0
00844a1c  16 00 00 0a                                      beq #0x844a7c
00844a20  18 30 84 e2                                      add r3, r4, #0x18
00844a24  14 00 93 e5                                      ldr r0, [r3, #0x14]
00844a28  03 00 50 e1                                      cmp r0, r3
00844a2c  06 00 00 0a                                      beq #0x844a4c
00844a30  00 00 50 e3                                      cmp r0, #0
00844a34  04 00 00 0a                                      beq #0x844a4c
00844a38  18 10 94 e5                                      ldr r1, [r4, #0x18]
00844a3c  01 10 60 e0                                      rsb r1, r0, r1
00844a40  80 00 51 e3                                      cmp r1, #0x80
00844a44  1e 00 00 8a                                      bhi #0x844ac4
00844a48  3a e6 01 eb                                      bl #0x8be338
00844a4c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00844a50  04 00 50 e1                                      cmp r0, r4
00844a54  06 00 00 0a                                      beq #0x844a74
00844a58  00 00 50 e3                                      cmp r0, #0
00844a5c  04 00 00 0a                                      beq #0x844a74
00844a60  00 10 94 e5                                      ldr r1, [r4]
00844a64  01 10 60 e0                                      rsb r1, r0, r1
00844a68  80 00 51 e3                                      cmp r1, #0x80
00844a6c  12 00 00 8a                                      bhi #0x844abc
00844a70  30 e6 01 eb                                      bl #0x8be338
00844a74  04 00 a0 e1                                      mov r0, r4
00844a78  0c 26 eb eb                                      bl #0x30e2b0
00844a7c  00 50 95 e5                                      ldr r5, [r5]
00844a80  05 00 56 e1                                      cmp r6, r5
00844a84  e2 ff ff 1a                                      bne #0x844a14
00844a88  34 00 97 e5                                      ldr r0, [r7, #0x34]
00844a8c  00 00 55 e1                                      cmp r5, r0
00844a90  01 00 00 1a                                      bne #0x844a9c
00844a94  05 00 00 ea                                      b #0x844ab0
00844a98  04 00 a0 e1                                      mov r0, r4
00844a9c  00 40 90 e5                                      ldr r4, [r0]
00844aa0  0c 10 a0 e3                                      mov r1, #0xc
00844aa4  23 e6 01 eb                                      bl #0x8be338
00844aa8  05 00 54 e1                                      cmp r4, r5
00844aac  f9 ff ff 1a                                      bne #0x844a98
00844ab0  38 50 87 e5                                      str r5, [r7, #0x38]
00844ab4  34 50 87 e5                                      str r5, [r7, #0x34]
00844ab8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00844abc  fb 25 eb eb                                      bl #0x30e2b0
00844ac0  eb ff ff ea                                      b #0x844a74
00844ac4  f9 25 eb eb                                      bl #0x30e2b0
00844ac8  df ff ff ea                                      b #0x844a4c

; FUNCTION 0x00844b44, declared_size=148, range_size=148, mode=arm
; class-group: slim::XmlNode
; alias: _ZN4slim7XmlNodeD1Ev
; demangled: slim::XmlNode::~XmlNode()
; decoder-mode: arm
00844b44  70 40 2d e9                                      push {r4, r5, r6, lr}
00844b48  00 60 a0 e1                                      mov r6, r0
00844b4c  aa ff ff eb                                      bl #0x8449fc
00844b50  06 00 a0 e1                                      mov r0, r6
00844b54  1f 00 00 eb                                      bl #0x844bd8
00844b58  40 00 96 e5                                      ldr r0, [r6, #0x40]
00844b5c  40 50 86 e2                                      add r5, r6, #0x40
00844b60  05 00 50 e1                                      cmp r0, r5
00844b64  01 00 00 1a                                      bne #0x844b70
00844b68  06 00 00 ea                                      b #0x844b88
00844b6c  04 00 a0 e1                                      mov r0, r4
00844b70  00 40 90 e5                                      ldr r4, [r0]
00844b74  0c 10 a0 e3                                      mov r1, #0xc
00844b78  ee e5 01 eb                                      bl #0x8be338
00844b7c  05 00 54 e1                                      cmp r4, r5
00844b80  f9 ff ff 1a                                      bne #0x844b6c
00844b84  05 00 a0 e1                                      mov r0, r5
00844b88  40 00 86 e5                                      str r0, [r6, #0x40]
00844b8c  04 00 85 e5                                      str r0, [r5, #4]
00844b90  34 00 96 e5                                      ldr r0, [r6, #0x34]
00844b94  34 50 86 e2                                      add r5, r6, #0x34
00844b98  05 00 50 e1                                      cmp r0, r5
00844b9c  01 00 00 1a                                      bne #0x844ba8
00844ba0  06 00 00 ea                                      b #0x844bc0
00844ba4  04 00 a0 e1                                      mov r0, r4
00844ba8  00 40 90 e5                                      ldr r4, [r0]
00844bac  0c 10 a0 e3                                      mov r1, #0xc
00844bb0  e0 e5 01 eb                                      bl #0x8be338
00844bb4  05 00 54 e1                                      cmp r4, r5
00844bb8  f9 ff ff 1a                                      bne #0x844ba4
00844bbc  05 00 a0 e1                                      mov r0, r5
00844bc0  34 00 86 e5                                      str r0, [r6, #0x34]
00844bc4  04 00 85 e5                                      str r0, [r5, #4]
00844bc8  06 00 a0 e1                                      mov r0, r6
00844bcc  be ff ff eb                                      bl #0x844acc
00844bd0  06 00 a0 e1                                      mov r0, r6
00844bd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00844bd8, declared_size=180, range_size=180, mode=arm
; class-group: slim::XmlNode
; alias: _ZN4slim7XmlNode10clearChildEv
; demangled: slim::XmlNode::clearChild()
; decoder-mode: arm
00844bd8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00844bdc  00 50 a0 e1                                      mov r5, r0
00844be0  98 80 9f e5                                      ldr r8, [pc, #0x98]
00844be4  40 40 b5 e5                                      ldr r4, [r5, #0x40]!
00844be8  94 70 9f e5                                      ldr r7, [pc, #0x94]
00844bec  94 a0 9f e5                                      ldr sl, [pc, #0x94]
00844bf0  08 80 8f e0                                      add r8, pc, r8
00844bf4  04 00 55 e1                                      cmp r5, r4
00844bf8  00 60 a0 e1                                      mov r6, r0
00844bfc  07 70 8f e0                                      add r7, pc, r7
00844c00  19 8e 88 e2                                      add r8, r8, #0x190
00844c04  0a a0 8f e0                                      add sl, pc, sl
00844c08  08 00 00 0a                                      beq #0x844c30
00844c0c  08 90 94 e5                                      ldr sb, [r4, #8]
00844c10  00 00 59 e2                                      subs r0, sb, #0
00844c14  12 00 00 0a                                      beq #0x844c64
00844c18  c9 ff ff eb                                      bl #0x844b44
00844c1c  09 00 a0 e1                                      mov r0, sb
00844c20  a2 25 eb eb                                      bl #0x30e2b0
00844c24  00 40 94 e5                                      ldr r4, [r4]
00844c28  04 00 55 e1                                      cmp r5, r4
00844c2c  f6 ff ff 1a                                      bne #0x844c0c
00844c30  40 00 96 e5                                      ldr r0, [r6, #0x40]
00844c34  00 00 54 e1                                      cmp r4, r0
00844c38  01 00 00 1a                                      bne #0x844c44
00844c3c  05 00 00 ea                                      b #0x844c58
00844c40  05 00 a0 e1                                      mov r0, r5
00844c44  00 50 90 e5                                      ldr r5, [r0]
00844c48  0c 10 a0 e3                                      mov r1, #0xc
00844c4c  b9 e5 01 eb                                      bl #0x8be338
00844c50  04 00 55 e1                                      cmp r5, r4
00844c54  f9 ff ff 1a                                      bne #0x844c40
00844c58  44 40 86 e5                                      str r4, [r6, #0x44]
00844c5c  40 40 86 e5                                      str r4, [r6, #0x40]
00844c60  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00844c64  07 00 a0 e1                                      mov r0, r7
00844c68  56 10 a0 e3                                      mov r1, #0x56
00844c6c  08 20 a0 e1                                      mov r2, r8
00844c70  0a 30 a0 e1                                      mov r3, sl
00844c74  f1 27 eb eb                                      bl #0x30ec40
00844c78  00 40 94 e5                                      ldr r4, [r4]
00844c7c  e9 ff ff ea                                      b #0x844c28
; mapping-symbol data/literal pool
00844c80  08 a3 0c 00 6c a5 0c 00 04 a6 0c 00              .byte 0x08, 0xa3, 0x0c, 0x00, 0x6c, 0xa5, 0x0c, 0x00, 0x04, 0xa6, 0x0c, 0x00

; FUNCTION 0x00844c8c, declared_size=148, range_size=148, mode=arm
; class-group: slim::XmlNode
; alias: _ZN4slim7XmlNodeD2Ev
; demangled: slim::XmlNode::~XmlNode()
; decoder-mode: arm
00844c8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00844c90  00 60 a0 e1                                      mov r6, r0
00844c94  58 ff ff eb                                      bl #0x8449fc
00844c98  06 00 a0 e1                                      mov r0, r6
00844c9c  cd ff ff eb                                      bl #0x844bd8
00844ca0  40 00 96 e5                                      ldr r0, [r6, #0x40]
00844ca4  40 50 86 e2                                      add r5, r6, #0x40
00844ca8  05 00 50 e1                                      cmp r0, r5
00844cac  01 00 00 1a                                      bne #0x844cb8
00844cb0  06 00 00 ea                                      b #0x844cd0
00844cb4  04 00 a0 e1                                      mov r0, r4
00844cb8  00 40 90 e5                                      ldr r4, [r0]
00844cbc  0c 10 a0 e3                                      mov r1, #0xc
00844cc0  9c e5 01 eb                                      bl #0x8be338
00844cc4  05 00 54 e1                                      cmp r4, r5
00844cc8  f9 ff ff 1a                                      bne #0x844cb4
00844ccc  05 00 a0 e1                                      mov r0, r5
00844cd0  40 00 86 e5                                      str r0, [r6, #0x40]
00844cd4  04 00 85 e5                                      str r0, [r5, #4]
00844cd8  34 00 96 e5                                      ldr r0, [r6, #0x34]
00844cdc  34 50 86 e2                                      add r5, r6, #0x34
00844ce0  05 00 50 e1                                      cmp r0, r5
00844ce4  01 00 00 1a                                      bne #0x844cf0
00844ce8  06 00 00 ea                                      b #0x844d08
00844cec  04 00 a0 e1                                      mov r0, r4
00844cf0  00 40 90 e5                                      ldr r4, [r0]
00844cf4  0c 10 a0 e3                                      mov r1, #0xc
00844cf8  8e e5 01 eb                                      bl #0x8be338
00844cfc  05 00 54 e1                                      cmp r4, r5
00844d00  f9 ff ff 1a                                      bne #0x844cec
00844d04  05 00 a0 e1                                      mov r0, r5
00844d08  34 00 86 e5                                      str r0, [r6, #0x34]
00844d0c  04 00 85 e5                                      str r0, [r5, #4]
00844d10  06 00 a0 e1                                      mov r0, r6
00844d14  6c ff ff eb                                      bl #0x844acc
00844d18  06 00 a0 e1                                      mov r0, r6
00844d1c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00844d20, declared_size=152, range_size=152, mode=arm
; class-group: slim::XmlNode
; alias: _ZN4slim7XmlNode12addAttributeEPKcS2_
; demangled: slim::XmlNode::addAttribute(char const*, char const*)
; decoder-mode: arm
00844d20  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00844d24  00 60 a0 e1                                      mov r6, r0
00844d28  0c d0 4d e2                                      sub sp, sp, #0xc
00844d2c  30 00 a0 e3                                      mov r0, #0x30
00844d30  01 70 a0 e1                                      mov r7, r1
00844d34  02 50 a0 e1                                      mov r5, r2
00844d38  d3 26 eb eb                                      bl #0x30e88c
00844d3c  00 40 a0 e1                                      mov r4, r0
00844d40  f0 fe ff eb                                      bl #0x844908
00844d44  00 00 57 e3                                      cmp r7, #0
00844d48  05 00 00 0a                                      beq #0x844d64
00844d4c  07 00 a0 e1                                      mov r0, r7
00844d50  3f 24 eb eb                                      bl #0x30de54
00844d54  07 10 a0 e1                                      mov r1, r7
00844d58  00 20 87 e0                                      add r2, r7, r0
00844d5c  04 00 a0 e1                                      mov r0, r4
00844d60  1e 2f eb eb                                      bl #0x3109e0
00844d64  00 00 55 e3                                      cmp r5, #0
00844d68  05 00 00 0a                                      beq #0x844d84
00844d6c  05 00 a0 e1                                      mov r0, r5
00844d70  37 24 eb eb                                      bl #0x30de54
00844d74  05 10 a0 e1                                      mov r1, r5
00844d78  00 20 85 e0                                      add r2, r5, r0
00844d7c  18 00 84 e2                                      add r0, r4, #0x18
00844d80  16 2f eb eb                                      bl #0x3109e0
00844d84  08 00 8d e2                                      add r0, sp, #8
00844d88  0c 30 a0 e3                                      mov r3, #0xc
00844d8c  04 30 20 e5                                      str r3, [r0, #-4]!
00844d90  60 e5 01 eb                                      bl #0x8be318
00844d94  08 40 80 e5                                      str r4, [r0, #8]
00844d98  38 30 96 e5                                      ldr r3, [r6, #0x38]
00844d9c  34 20 86 e2                                      add r2, r6, #0x34
00844da0  0c 00 80 e8                                      stm r0, {r2, r3}
00844da4  00 00 83 e5                                      str r0, [r3]
00844da8  38 00 86 e5                                      str r0, [r6, #0x38]
00844dac  04 00 a0 e1                                      mov r0, r4
00844db0  0c d0 8d e2                                      add sp, sp, #0xc
00844db4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00844f44, declared_size=152, range_size=152, mode=arm
; class-group: slim::XmlNode
; alias: _ZN4slim7XmlNode8addChildEPKcNS_8NodeTypeE
; demangled: slim::XmlNode::addChild(char const*, slim::NodeType)
; decoder-mode: arm
00844f44  70 40 2d e9                                      push {r4, r5, r6, lr}
00844f48  01 30 42 e2                                      sub r3, r2, #1
00844f4c  01 00 53 e3                                      cmp r3, #1
00844f50  10 d0 4d e2                                      sub sp, sp, #0x10
00844f54  00 50 a0 e1                                      mov r5, r0
00844f58  01 60 a0 e1                                      mov r6, r1
00844f5c  00 40 a0 83                                      movhi r4, #0
00844f60  02 00 00 9a                                      bls #0x844f70
00844f64  04 00 a0 e1                                      mov r0, r4
00844f68  10 d0 8d e2                                      add sp, sp, #0x10
00844f6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00844f70  48 00 a0 e3                                      mov r0, #0x48
00844f74  04 20 8d e5                                      str r2, [sp, #4]
00844f78  43 26 eb eb                                      bl #0x30e88c
00844f7c  04 20 9d e5                                      ldr r2, [sp, #4]
00844f80  00 40 a0 e1                                      mov r4, r0
00844f84  02 10 a0 e1                                      mov r1, r2
00844f88  05 20 a0 e1                                      mov r2, r5
00844f8c  6e fe ff eb                                      bl #0x84494c
00844f90  00 00 56 e3                                      cmp r6, #0
00844f94  05 00 00 0a                                      beq #0x844fb0
00844f98  06 00 a0 e1                                      mov r0, r6
00844f9c  ac 23 eb eb                                      bl #0x30de54
00844fa0  06 10 a0 e1                                      mov r1, r6
00844fa4  00 20 86 e0                                      add r2, r6, r0
00844fa8  04 00 a0 e1                                      mov r0, r4
00844fac  8b 2e eb eb                                      bl #0x3109e0
00844fb0  0c 30 a0 e3                                      mov r3, #0xc
00844fb4  10 00 8d e2                                      add r0, sp, #0x10
00844fb8  04 30 20 e5                                      str r3, [r0, #-4]!
00844fbc  d5 e4 01 eb                                      bl #0x8be318
00844fc0  08 40 80 e5                                      str r4, [r0, #8]
00844fc4  44 30 95 e5                                      ldr r3, [r5, #0x44]
00844fc8  40 20 85 e2                                      add r2, r5, #0x40
00844fcc  0c 00 80 e8                                      stm r0, {r2, r3}
00844fd0  00 00 83 e5                                      str r0, [r3]
00844fd4  44 00 85 e5                                      str r0, [r5, #0x44]
00844fd8  e1 ff ff ea                                      b #0x844f64

; FUNCTION 0x00845268, declared_size=688, range_size=688, mode=arm
; class-group: slim::XmlNode
; alias: _ZNK4slim7XmlNode9writeNodeERSsi
; demangled: slim::XmlNode::writeNode(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&, int) const
; decoder-mode: arm
00845268  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0084526c  00 70 52 e2                                      subs r7, r2, #0
00845270  14 d0 4d e2                                      sub sp, sp, #0x14
00845274  00 80 a0 e1                                      mov r8, r0
00845278  01 40 a0 e1                                      mov r4, r1
0084527c  92 00 00 ba                                      blt #0x8454cc
00845280  00 50 a0 13                                      movne r5, #0
00845284  05 00 00 0a                                      beq #0x8452a0
00845288  01 50 85 e2                                      add r5, r5, #1
0084528c  04 00 a0 e1                                      mov r0, r4
00845290  09 10 a0 e3                                      mov r1, #9
00845294  f0 93 eb eb                                      bl #0x32a25c
00845298  07 00 55 e1                                      cmp r5, r7
0084529c  f9 ff ff 1a                                      bne #0x845288
008452a0  30 30 98 e5                                      ldr r3, [r8, #0x30]
008452a4  02 00 53 e3                                      cmp r3, #2
008452a8  6c 00 00 0a                                      beq #0x845460
008452ac  3c 10 a0 e3                                      mov r1, #0x3c
008452b0  04 00 a0 e1                                      mov r0, r4
008452b4  e8 93 eb eb                                      bl #0x32a25c
008452b8  10 20 98 e5                                      ldr r2, [r8, #0x10]
008452bc  04 00 a0 e1                                      mov r0, r4
008452c0  14 10 98 e5                                      ldr r1, [r8, #0x14]
008452c4  4e 2d eb eb                                      bl #0x310804
008452c8  1c 22 9f e5                                      ldr r2, [pc, #0x21c]
008452cc  1c 32 9f e5                                      ldr r3, [pc, #0x21c]
008452d0  1c 92 9f e5                                      ldr sb, [pc, #0x21c]
008452d4  02 20 8f e0                                      add r2, pc, r2
008452d8  04 20 8d e5                                      str r2, [sp, #4]
008452dc  03 30 8f e0                                      add r3, pc, r3
008452e0  10 22 9f e5                                      ldr r2, [pc, #0x210]
008452e4  7e 3f 83 e2                                      add r3, r3, #0x1f8
008452e8  09 90 8f e0                                      add sb, pc, sb
008452ec  08 a0 a0 e1                                      mov sl, r8
008452f0  08 30 8d e5                                      str r3, [sp, #8]
008452f4  34 50 ba e5                                      ldr r5, [sl, #0x34]!
008452f8  02 b0 89 e2                                      add fp, sb, #2
008452fc  0c 20 8d e5                                      str r2, [sp, #0xc]
00845300  1c 00 00 ea                                      b #0x845378
00845304  08 60 95 e5                                      ldr r6, [r5, #8]
00845308  00 00 56 e3                                      cmp r6, #0
0084530c  4c 00 00 0a                                      beq #0x845444
00845310  20 10 a0 e3                                      mov r1, #0x20
00845314  04 00 a0 e1                                      mov r0, r4
00845318  cf 93 eb eb                                      bl #0x32a25c
0084531c  14 10 96 e5                                      ldr r1, [r6, #0x14]
00845320  01 00 a0 e1                                      mov r0, r1
00845324  00 10 8d e5                                      str r1, [sp]
00845328  c9 22 eb eb                                      bl #0x30de54
0084532c  00 10 9d e5                                      ldr r1, [sp]
00845330  00 20 81 e0                                      add r2, r1, r0
00845334  04 00 a0 e1                                      mov r0, r4
00845338  31 2d eb eb                                      bl #0x310804
0084533c  09 10 a0 e1                                      mov r1, sb
00845340  0b 20 a0 e1                                      mov r2, fp
00845344  04 00 a0 e1                                      mov r0, r4
00845348  2d 2d eb eb                                      bl #0x310804
0084534c  2c 60 96 e5                                      ldr r6, [r6, #0x2c]
00845350  06 00 a0 e1                                      mov r0, r6
00845354  be 22 eb eb                                      bl #0x30de54
00845358  06 10 a0 e1                                      mov r1, r6
0084535c  00 20 86 e0                                      add r2, r6, r0
00845360  04 00 a0 e1                                      mov r0, r4
00845364  26 2d eb eb                                      bl #0x310804
00845368  04 00 a0 e1                                      mov r0, r4
0084536c  22 10 a0 e3                                      mov r1, #0x22
00845370  b9 93 eb eb                                      bl #0x32a25c
00845374  00 50 95 e5                                      ldr r5, [r5]
00845378  0a 00 55 e1                                      cmp r5, sl
0084537c  e0 ff ff 1a                                      bne #0x845304
00845380  40 30 98 e5                                      ldr r3, [r8, #0x40]
00845384  40 50 88 e2                                      add r5, r8, #0x40
00845388  05 00 53 e1                                      cmp r3, r5
0084538c  43 00 00 0a                                      beq #0x8454a0
00845390  64 11 9f e5                                      ldr r1, [pc, #0x164]
00845394  04 00 a0 e1                                      mov r0, r4
00845398  01 10 8f e0                                      add r1, pc, r1
0084539c  01 20 81 e2                                      add r2, r1, #1
008453a0  17 2d eb eb                                      bl #0x310804
008453a4  40 30 98 e5                                      ldr r3, [r8, #0x40]
008453a8  03 00 55 e1                                      cmp r5, r3
008453ac  49 00 00 0a                                      beq #0x8454d8
008453b0  48 11 9f e5                                      ldr r1, [pc, #0x148]
008453b4  04 00 a0 e1                                      mov r0, r4
008453b8  01 10 8f e0                                      add r1, pc, r1
008453bc  02 20 81 e2                                      add r2, r1, #2
008453c0  0f 2d eb eb                                      bl #0x310804
008453c4  08 00 a0 e1                                      mov r0, r8
008453c8  04 10 a0 e1                                      mov r1, r4
008453cc  07 20 a0 e1                                      mov r2, r7
008453d0  50 00 00 eb                                      bl #0x845518
008453d4  00 00 57 e3                                      cmp r7, #0
008453d8  06 00 00 0a                                      beq #0x8453f8
008453dc  00 50 a0 e3                                      mov r5, #0
008453e0  01 50 85 e2                                      add r5, r5, #1
008453e4  04 00 a0 e1                                      mov r0, r4
008453e8  09 10 a0 e3                                      mov r1, #9
008453ec  9a 93 eb eb                                      bl #0x32a25c
008453f0  07 00 55 e1                                      cmp r5, r7
008453f4  f9 ff ff 1a                                      bne #0x8453e0
008453f8  04 11 9f e5                                      ldr r1, [pc, #0x104]
008453fc  04 00 a0 e1                                      mov r0, r4
00845400  01 10 8f e0                                      add r1, pc, r1
00845404  02 20 81 e2                                      add r2, r1, #2
00845408  fd 2c eb eb                                      bl #0x310804
0084540c  14 50 98 e5                                      ldr r5, [r8, #0x14]
00845410  05 00 a0 e1                                      mov r0, r5
00845414  8e 22 eb eb                                      bl #0x30de54
00845418  05 10 a0 e1                                      mov r1, r5
0084541c  00 20 85 e0                                      add r2, r5, r0
00845420  04 00 a0 e1                                      mov r0, r4
00845424  f6 2c eb eb                                      bl #0x310804
00845428  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
0084542c  04 00 a0 e1                                      mov r0, r4
00845430  01 10 8f e0                                      add r1, pc, r1
00845434  03 20 81 e2                                      add r2, r1, #3
00845438  14 d0 8d e2                                      add sp, sp, #0x14
0084543c  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00845440  ef 2c eb ea                                      b #0x310804
00845444  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00845448  04 00 9d e5                                      ldr r0, [sp, #4]
0084544c  ba 10 a0 e3                                      mov r1, #0xba
00845450  02 30 8f e0                                      add r3, pc, r2
00845454  08 20 9d e5                                      ldr r2, [sp, #8]
00845458  f8 25 eb eb                                      bl #0x30ec40
0084545c  ab ff ff ea                                      b #0x845310
00845460  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
00845464  04 00 a0 e1                                      mov r0, r4
00845468  01 10 8f e0                                      add r1, pc, r1
0084546c  04 20 81 e2                                      add r2, r1, #4
00845470  e3 2c eb eb                                      bl #0x310804
00845474  10 20 98 e5                                      ldr r2, [r8, #0x10]
00845478  14 10 98 e5                                      ldr r1, [r8, #0x14]
0084547c  04 00 a0 e1                                      mov r0, r4
00845480  df 2c eb eb                                      bl #0x310804
00845484  84 10 9f e5                                      ldr r1, [pc, #0x84]
00845488  04 00 a0 e1                                      mov r0, r4
0084548c  01 10 8f e0                                      add r1, pc, r1
00845490  05 20 81 e2                                      add r2, r1, #5
00845494  14 d0 8d e2                                      add sp, sp, #0x14
00845498  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0084549c  d8 2c eb ea                                      b #0x310804
008454a0  2c 20 98 e5                                      ldr r2, [r8, #0x2c]
008454a4  28 30 98 e5                                      ldr r3, [r8, #0x28]
008454a8  03 00 52 e1                                      cmp r2, r3
008454ac  b7 ff ff 1a                                      bne #0x845390
008454b0  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
008454b4  04 00 a0 e1                                      mov r0, r4
008454b8  01 10 8f e0                                      add r1, pc, r1
008454bc  04 20 81 e2                                      add r2, r1, #4
008454c0  14 d0 8d e2                                      add sp, sp, #0x14
008454c4  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008454c8  cd 2c eb ea                                      b #0x310804
008454cc  14 d0 8d e2                                      add sp, sp, #0x14
008454d0  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008454d4  0f 00 00 ea                                      b #0x845518
008454d8  04 00 a0 e1                                      mov r0, r4
008454dc  2c 10 98 e5                                      ldr r1, [r8, #0x2c]
008454e0  28 20 98 e5                                      ldr r2, [r8, #0x28]
008454e4  c6 2c eb eb                                      bl #0x310804
008454e8  c2 ff ff ea                                      b #0x8453f8
; mapping-symbol data/literal pool
008454ec  94 9e 0c 00 1c 9c 0c 00 90 6e 09 00 90 9d 0c 00  .byte 0x94, 0x9e, 0x0c, 0x00, 0x1c, 0x9c, 0x0c, 0x00, 0x90, 0x6e, 0x09, 0x00, 0x90, 0x9d, 0x0c, 0x00
008454fc  30 6d 09 00 48 ac 07 00 28 6d 09 00 28 9e 0c 00  .byte 0x30, 0x6d, 0x09, 0x00, 0x48, 0xac, 0x07, 0x00, 0x28, 0x6d, 0x09, 0x00, 0x28, 0x9e, 0x0c, 0x00
0084550c  b0 6c 09 00 bc 9d 0c 00 98 9d 0c 00              .byte 0xb0, 0x6c, 0x09, 0x00, 0xbc, 0x9d, 0x0c, 0x00, 0x98, 0x9d, 0x0c, 0x00

; FUNCTION 0x00845518, declared_size=132, range_size=132, mode=arm
; class-group: slim::XmlNode
; alias: _ZNK4slim7XmlNode15writeChildNodesERSsi
; demangled: slim::XmlNode::writeChildNodes(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&, int) const
; decoder-mode: arm
00845518  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0084551c  6c 90 9f e5                                      ldr sb, [pc, #0x6c]
00845520  6c a0 9f e5                                      ldr sl, [pc, #0x6c]
00845524  6c b0 9f e5                                      ldr fp, [pc, #0x6c]
00845528  00 60 a0 e1                                      mov r6, r0
0084552c  09 90 8f e0                                      add sb, pc, sb
00845530  01 70 a0 e1                                      mov r7, r1
00845534  0a a0 8f e0                                      add sl, pc, sl
00845538  23 9e 89 e2                                      add sb, sb, #0x230
0084553c  0b b0 8f e0                                      add fp, pc, fp
00845540  01 80 82 e2                                      add r8, r2, #1
00845544  40 40 b6 e5                                      ldr r4, [r6, #0x40]!
00845548  07 00 00 ea                                      b #0x84556c
0084554c  08 50 94 e5                                      ldr r5, [r4, #8]
00845550  00 00 55 e3                                      cmp r5, #0
00845554  07 00 00 0a                                      beq #0x845578
00845558  05 00 a0 e1                                      mov r0, r5
0084555c  07 10 a0 e1                                      mov r1, r7
00845560  08 20 a0 e1                                      mov r2, r8
00845564  3f ff ff eb                                      bl #0x845268
00845568  00 40 94 e5                                      ldr r4, [r4]
0084556c  04 00 56 e1                                      cmp r6, r4
00845570  f5 ff ff 1a                                      bne #0x84554c
00845574  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
00845578  0a 00 a0 e1                                      mov r0, sl
0084557c  e6 10 a0 e3                                      mov r1, #0xe6
00845580  09 20 a0 e1                                      mov r2, sb
00845584  0b 30 a0 e1                                      mov r3, fp
00845588  ac 25 eb eb                                      bl #0x30ec40
0084558c  f1 ff ff ea                                      b #0x845558
; mapping-symbol data/literal pool
00845590  cc 99 0c 00 34 9c 0c 00 cc 9c 0c 00              .byte 0xcc, 0x99, 0x0c, 0x00, 0x34, 0x9c, 0x0c, 0x00, 0xcc, 0x9c, 0x0c, 0x00
