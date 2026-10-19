; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00514288, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement9ToElementEv
; demangled: TiXmlElement::ToElement() const
; decoder-mode: arm
00514288  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051428c, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElement9ToElementEv
; demangled: TiXmlElement::ToElement()
; decoder-mode: arm
0051428c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00514508, declared_size=136, range_size=136, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement6AcceptEP12TiXmlVisitor
; demangled: TiXmlElement::Accept(TiXmlVisitor*) const
; decoder-mode: arm
00514508  70 40 2d e9                                      push {r4, r5, r6, lr}
0051450c  88 20 90 e5                                      ldr r2, [r0, #0x88]
00514510  40 30 80 e2                                      add r3, r0, #0x40
00514514  00 50 a0 e1                                      mov r5, r0
00514518  03 00 52 e1                                      cmp r2, r3
0051451c  00 20 a0 03                                      moveq r2, #0
00514520  00 30 91 e5                                      ldr r3, [r1]
00514524  01 00 a0 e1                                      mov r0, r1
00514528  01 40 a0 e1                                      mov r4, r1
0051452c  05 10 a0 e1                                      mov r1, r5
00514530  0f e0 a0 e1                                      mov lr, pc
00514534  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00514538  00 00 50 e3                                      cmp r0, #0
0051453c  0d 00 00 0a                                      beq #0x514578
00514540  18 60 95 e5                                      ldr r6, [r5, #0x18]
00514544  00 00 56 e3                                      cmp r6, #0
00514548  03 00 00 1a                                      bne #0x51455c
0051454c  09 00 00 ea                                      b #0x514578
00514550  3c 60 96 e5                                      ldr r6, [r6, #0x3c]
00514554  00 00 56 e3                                      cmp r6, #0
00514558  06 00 00 0a                                      beq #0x514578
0051455c  00 30 96 e5                                      ldr r3, [r6]
00514560  06 00 a0 e1                                      mov r0, r6
00514564  04 10 a0 e1                                      mov r1, r4
00514568  0f e0 a0 e1                                      mov lr, pc
0051456c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00514570  00 00 50 e3                                      cmp r0, #0
00514574  f5 ff ff 1a                                      bne #0x514550
00514578  04 00 a0 e1                                      mov r0, r4
0051457c  05 10 a0 e1                                      mov r1, r5
00514580  00 30 94 e5                                      ldr r3, [r4]
00514584  0f e0 a0 e1                                      mov lr, pc
00514588  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0051458c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00514590, declared_size=56, range_size=56, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement7GetTextEv
; demangled: TiXmlElement::GetText() const
; decoder-mode: arm
00514590  10 40 2d e9                                      push {r4, lr}
00514594  18 30 90 e5                                      ldr r3, [r0, #0x18]
00514598  00 00 53 e3                                      cmp r3, #0
0051459c  01 00 00 1a                                      bne #0x5145a8
005145a0  00 00 a0 e3                                      mov r0, #0
005145a4  10 80 bd e8                                      pop {r4, pc}
005145a8  03 00 a0 e1                                      mov r0, r3
005145ac  00 30 93 e5                                      ldr r3, [r3]
005145b0  0f e0 a0 e1                                      mov lr, pc
005145b4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005145b8  00 00 50 e3                                      cmp r0, #0
005145bc  f7 ff ff 0a                                      beq #0x5145a0
005145c0  34 00 90 e5                                      ldr r0, [r0, #0x34]
005145c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00514784, declared_size=72, range_size=72, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElement9ClearThisEv
; demangled: TiXmlElement::ClearThis()
; decoder-mode: arm
00514784  70 40 2d e9                                      push {r4, r5, r6, lr}
00514788  00 60 a0 e1                                      mov r6, r0
0051478c  40 50 86 e2                                      add r5, r6, #0x40
00514790  cc fe ff eb                                      bl #0x5142c8
00514794  06 00 00 ea                                      b #0x5147b4
00514798  00 00 54 e3                                      cmp r4, #0
0051479c  09 00 00 0a                                      beq #0x5147c8
005147a0  e1 ff ff eb                                      bl #0x51472c
005147a4  04 00 a0 e1                                      mov r0, r4
005147a8  00 30 94 e5                                      ldr r3, [r4]
005147ac  0f e0 a0 e1                                      mov lr, pc
005147b0  04 f0 93 e5                                      ldr pc, [r3, #4]
005147b4  88 40 96 e5                                      ldr r4, [r6, #0x88]
005147b8  05 00 a0 e1                                      mov r0, r5
005147bc  05 00 54 e1                                      cmp r4, r5
005147c0  04 10 a0 e1                                      mov r1, r4
005147c4  f3 ff ff 1a                                      bne #0x514798
005147c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00514c70, declared_size=24, range_size=24, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement9AttributeEPKc
; demangled: TiXmlElement::Attribute(char const*) const
; decoder-mode: arm
00514c70  10 40 2d e9                                      push {r4, lr}
00514c74  40 00 80 e2                                      add r0, r0, #0x40
00514c78  e8 ff ff eb                                      bl #0x514c20
00514c7c  00 00 50 e3                                      cmp r0, #0
00514c80  40 00 90 15                                      ldrne r0, [r0, #0x40]
00514c84  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00515020, declared_size=148, range_size=148, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElement15RemoveAttributeEPKc
; demangled: TiXmlElement::RemoveAttribute(char const*)
; decoder-mode: arm
00515020  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00515024  80 40 9f e5                                      ldr r4, [pc, #0x80]
00515028  80 60 9f e5                                      ldr r6, [pc, #0x80]
0051502c  20 d0 4d e2                                      sub sp, sp, #0x20
00515030  04 40 8f e0                                      add r4, pc, r4
00515034  06 30 94 e7                                      ldr r3, [r4, r6]
00515038  04 50 8d e2                                      add r5, sp, #4
0051503c  40 70 80 e2                                      add r7, r0, #0x40
00515040  00 30 93 e5                                      ldr r3, [r3]
00515044  0d 20 a0 e1                                      mov r2, sp
00515048  05 00 a0 e1                                      mov r0, r5
0051504c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00515050  25 fc f7 eb                                      bl #0x3140ec
00515054  07 00 a0 e1                                      mov r0, r7
00515058  05 10 a0 e1                                      mov r1, r5
0051505c  d5 ff ff eb                                      bl #0x514fb8
00515060  00 80 50 e2                                      subs r8, r0, #0
00515064  06 00 00 0a                                      beq #0x515084
00515068  07 00 a0 e1                                      mov r0, r7
0051506c  08 10 a0 e1                                      mov r1, r8
00515070  ad fd ff eb                                      bl #0x51472c
00515074  08 00 a0 e1                                      mov r0, r8
00515078  00 30 98 e5                                      ldr r3, [r8]
0051507c  0f e0 a0 e1                                      mov lr, pc
00515080  04 f0 93 e5                                      ldr pc, [r3, #4]
00515084  05 00 a0 e1                                      mov r0, r5
00515088  47 fa f7 eb                                      bl #0x3139ac
0051508c  06 30 94 e7                                      ldr r3, [r4, r6]
00515090  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00515094  00 30 93 e5                                      ldr r3, [r3]
00515098  03 00 52 e1                                      cmp r2, r3
0051509c  01 00 00 1a                                      bne #0x5150a8
005150a0  20 d0 8d e2                                      add sp, sp, #0x20
005150a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005150a8  98 e4 f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005150ac  60 fa 47 00 ac 40 00 00                          .byte 0x60, 0xfa, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005150b4, declared_size=24, range_size=24, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement9AttributeERKSs
; demangled: TiXmlElement::Attribute(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const
; decoder-mode: arm
005150b4  10 40 2d e9                                      push {r4, lr}
005150b8  40 00 80 e2                                      add r0, r0, #0x40
005150bc  bd ff ff eb                                      bl #0x514fb8
005150c0  00 00 50 e3                                      cmp r0, #0
005150c4  2c 00 80 12                                      addne r0, r0, #0x2c
005150c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005151b0, declared_size=512, range_size=512, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement5PrintEP7__sFILEi
; demangled: TiXmlElement::Print(__sFILE*, int) const
; decoder-mode: arm
005151b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005151b4  00 50 52 e2                                      subs r5, r2, #0
005151b8  00 70 a0 e1                                      mov r7, r0
005151bc  01 40 a0 e1                                      mov r4, r1
005151c0  06 00 00 da                                      ble #0x5151e0
005151c4  00 60 a0 e3                                      mov r6, #0
005151c8  01 60 86 e2                                      add r6, r6, #1
005151cc  09 00 a0 e3                                      mov r0, #9
005151d0  04 10 a0 e1                                      mov r1, r4
005151d4  78 e6 f7 eb                                      bl #0x30ebbc
005151d8  05 00 56 e1                                      cmp r6, r5
005151dc  f9 ff ff 1a                                      bne #0x5151c8
005151e0  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
005151e4  04 00 a0 e1                                      mov r0, r4
005151e8  34 20 97 e5                                      ldr r2, [r7, #0x34]
005151ec  01 10 8f e0                                      add r1, pc, r1
005151f0  83 e3 f7 eb                                      bl #0x30e004
005151f4  88 60 97 e5                                      ldr r6, [r7, #0x88]
005151f8  40 30 87 e2                                      add r3, r7, #0x40
005151fc  03 00 56 e1                                      cmp r6, r3
00515200  17 00 00 0a                                      beq #0x515264
00515204  00 00 56 e3                                      cmp r6, #0
00515208  15 00 00 0a                                      beq #0x515264
0051520c  0a 00 a0 e3                                      mov r0, #0xa
00515210  04 10 a0 e1                                      mov r1, r4
00515214  68 e6 f7 eb                                      bl #0x30ebbc
00515218  00 00 55 e3                                      cmp r5, #0
0051521c  06 00 00 ba                                      blt #0x51523c
00515220  00 80 a0 e3                                      mov r8, #0
00515224  01 80 88 e2                                      add r8, r8, #1
00515228  09 00 a0 e3                                      mov r0, #9
0051522c  04 10 a0 e1                                      mov r1, r4
00515230  61 e6 f7 eb                                      bl #0x30ebbc
00515234  08 00 55 e1                                      cmp r5, r8
00515238  f9 ff ff aa                                      bge #0x515224
0051523c  00 30 96 e5                                      ldr r3, [r6]
00515240  06 00 a0 e1                                      mov r0, r6
00515244  04 10 a0 e1                                      mov r1, r4
00515248  05 20 a0 e1                                      mov r2, r5
0051524c  0f e0 a0 e1                                      mov lr, pc
00515250  08 f0 93 e5                                      ldr pc, [r3, #8]
00515254  06 00 a0 e1                                      mov r0, r6
00515258  f8 fc ff eb                                      bl #0x514640
0051525c  00 60 50 e2                                      subs r6, r0, #0
00515260  e9 ff ff 1a                                      bne #0x51520c
00515264  18 30 97 e5                                      ldr r3, [r7, #0x18]
00515268  00 00 53 e3                                      cmp r3, #0
0051526c  44 00 00 0a                                      beq #0x515384
00515270  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
00515274  02 00 53 e1                                      cmp r3, r2
00515278  2b 00 00 0a                                      beq #0x51532c
0051527c  3e 00 a0 e3                                      mov r0, #0x3e
00515280  04 10 a0 e1                                      mov r1, r4
00515284  4c e6 f7 eb                                      bl #0x30ebbc
00515288  18 60 97 e5                                      ldr r6, [r7, #0x18]
0051528c  00 00 56 e3                                      cmp r6, #0
00515290  01 80 85 12                                      addne r8, r5, #1
00515294  0e 00 00 0a                                      beq #0x5152d4
00515298  00 30 96 e5                                      ldr r3, [r6]
0051529c  06 00 a0 e1                                      mov r0, r6
005152a0  0f e0 a0 e1                                      mov lr, pc
005152a4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005152a8  00 00 50 e3                                      cmp r0, #0
005152ac  1a 00 00 0a                                      beq #0x51531c
005152b0  00 30 96 e5                                      ldr r3, [r6]
005152b4  06 00 a0 e1                                      mov r0, r6
005152b8  04 10 a0 e1                                      mov r1, r4
005152bc  08 20 a0 e1                                      mov r2, r8
005152c0  0f e0 a0 e1                                      mov lr, pc
005152c4  08 f0 93 e5                                      ldr pc, [r3, #8]
005152c8  3c 60 96 e5                                      ldr r6, [r6, #0x3c]
005152cc  00 00 56 e3                                      cmp r6, #0
005152d0  f0 ff ff 1a                                      bne #0x515298
005152d4  0a 00 a0 e3                                      mov r0, #0xa
005152d8  04 10 a0 e1                                      mov r1, r4
005152dc  36 e6 f7 eb                                      bl #0x30ebbc
005152e0  00 00 55 e3                                      cmp r5, #0
005152e4  06 00 00 da                                      ble #0x515304
005152e8  00 60 a0 e3                                      mov r6, #0
005152ec  01 60 86 e2                                      add r6, r6, #1
005152f0  09 00 a0 e3                                      mov r0, #9
005152f4  04 10 a0 e1                                      mov r1, r4
005152f8  2f e6 f7 eb                                      bl #0x30ebbc
005152fc  05 00 56 e1                                      cmp r6, r5
00515300  f9 ff ff 1a                                      bne #0x5152ec
00515304  98 10 9f e5                                      ldr r1, [pc, #0x98]
00515308  34 20 97 e5                                      ldr r2, [r7, #0x34]
0051530c  04 00 a0 e1                                      mov r0, r4
00515310  01 10 8f e0                                      add r1, pc, r1
00515314  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00515318  39 e3 f7 ea                                      b #0x30e004
0051531c  04 10 a0 e1                                      mov r1, r4
00515320  0a 00 a0 e3                                      mov r0, #0xa
00515324  24 e6 f7 eb                                      bl #0x30ebbc
00515328  e0 ff ff ea                                      b #0x5152b0
0051532c  03 00 a0 e1                                      mov r0, r3
00515330  00 30 93 e5                                      ldr r3, [r3]
00515334  0f e0 a0 e1                                      mov lr, pc
00515338  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0051533c  00 00 50 e3                                      cmp r0, #0
00515340  cd ff ff 0a                                      beq #0x51527c
00515344  04 10 a0 e1                                      mov r1, r4
00515348  3e 00 a0 e3                                      mov r0, #0x3e
0051534c  1a e6 f7 eb                                      bl #0x30ebbc
00515350  18 30 97 e5                                      ldr r3, [r7, #0x18]
00515354  01 20 85 e2                                      add r2, r5, #1
00515358  04 10 a0 e1                                      mov r1, r4
0051535c  03 00 a0 e1                                      mov r0, r3
00515360  00 30 93 e5                                      ldr r3, [r3]
00515364  0f e0 a0 e1                                      mov lr, pc
00515368  08 f0 93 e5                                      ldr pc, [r3, #8]
0051536c  34 10 9f e5                                      ldr r1, [pc, #0x34]
00515370  34 20 97 e5                                      ldr r2, [r7, #0x34]
00515374  04 00 a0 e1                                      mov r0, r4
00515378  01 10 8f e0                                      add r1, pc, r1
0051537c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00515380  1f e3 f7 ea                                      b #0x30e004
00515384  20 00 9f e5                                      ldr r0, [pc, #0x20]
00515388  04 30 a0 e1                                      mov r3, r4
0051538c  01 10 a0 e3                                      mov r1, #1
00515390  00 00 8f e0                                      add r0, pc, r0
00515394  03 20 a0 e3                                      mov r2, #3
00515398  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0051539c  7d e4 f7 ea                                      b #0x30e598
; mapping-symbol data/literal pool
005153a0  e4 6e 3c 00 d0 6d 3c 00 68 6d 3c 00 48 6d 3c 00  .byte 0xe4, 0x6e, 0x3c, 0x00, 0xd0, 0x6d, 0x3c, 0x00, 0x68, 0x6d, 0x3c, 0x00, 0x48, 0x6d, 0x3c, 0x00

; FUNCTION 0x005153bc, declared_size=76, range_size=76, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement9AttributeERKSsPd
; demangled: TiXmlElement::Attribute(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, double*) const
; decoder-mode: arm
005153bc  70 40 2d e9                                      push {r4, r5, r6, lr}
005153c0  02 50 a0 e1                                      mov r5, r2
005153c4  3a ff ff eb                                      bl #0x5150b4
005153c8  00 00 55 e3                                      cmp r5, #0
005153cc  00 40 a0 e1                                      mov r4, r0
005153d0  05 00 00 0a                                      beq #0x5153ec
005153d4  00 00 50 e3                                      cmp r0, #0
005153d8  05 00 00 0a                                      beq #0x5153f4
005153dc  14 00 90 e5                                      ldr r0, [r0, #0x14]
005153e0  00 10 a0 e3                                      mov r1, #0
005153e4  b0 e4 f7 eb                                      bl #0x30e6ac
005153e8  f0 00 c5 e1                                      strd r0, r1, [r5]
005153ec  04 00 a0 e1                                      mov r0, r4
005153f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
005153f4  00 20 a0 e3                                      mov r2, #0
005153f8  00 30 a0 e3                                      mov r3, #0
005153fc  f0 20 c5 e1                                      strd r2, r3, [r5]
00515400  04 00 a0 e1                                      mov r0, r4
00515404  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00515408, declared_size=72, range_size=72, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement9AttributeEPKcPd
; demangled: TiXmlElement::Attribute(char const*, double*) const
; decoder-mode: arm
00515408  70 40 2d e9                                      push {r4, r5, r6, lr}
0051540c  02 50 a0 e1                                      mov r5, r2
00515410  16 fe ff eb                                      bl #0x514c70
00515414  00 00 55 e3                                      cmp r5, #0
00515418  00 40 a0 e1                                      mov r4, r0
0051541c  04 00 00 0a                                      beq #0x515434
00515420  00 00 50 e3                                      cmp r0, #0
00515424  04 00 00 0a                                      beq #0x51543c
00515428  00 10 a0 e3                                      mov r1, #0
0051542c  9e e4 f7 eb                                      bl #0x30e6ac
00515430  f0 00 c5 e1                                      strd r0, r1, [r5]
00515434  04 00 a0 e1                                      mov r0, r4
00515438  70 80 bd e8                                      pop {r4, r5, r6, pc}
0051543c  00 20 a0 e3                                      mov r2, #0
00515440  00 30 a0 e3                                      mov r3, #0
00515444  f0 20 c5 e1                                      strd r2, r3, [r5]
00515448  04 00 a0 e1                                      mov r0, r4
0051544c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00515458, declared_size=56, range_size=56, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement9AttributeERKSsPi
; demangled: TiXmlElement::Attribute(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, int*) const
; decoder-mode: arm
00515458  70 40 2d e9                                      push {r4, r5, r6, lr}
0051545c  02 40 a0 e1                                      mov r4, r2
00515460  13 ff ff eb                                      bl #0x5150b4
00515464  00 00 54 e3                                      cmp r4, #0
00515468  00 50 a0 e1                                      mov r5, r0
0051546c  05 00 00 0a                                      beq #0x515488
00515470  00 00 50 e3                                      cmp r0, #0
00515474  00 00 84 05                                      streq r0, [r4]
00515478  02 00 00 0a                                      beq #0x515488
0051547c  14 00 90 e5                                      ldr r0, [r0, #0x14]
00515480  03 e3 f7 eb                                      bl #0x30e094
00515484  00 00 84 e5                                      str r0, [r4]
00515488  05 00 a0 e1                                      mov r0, r5
0051548c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00515490, declared_size=52, range_size=52, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement9AttributeEPKcPi
; demangled: TiXmlElement::Attribute(char const*, int*) const
; decoder-mode: arm
00515490  70 40 2d e9                                      push {r4, r5, r6, lr}
00515494  02 40 a0 e1                                      mov r4, r2
00515498  f4 fd ff eb                                      bl #0x514c70
0051549c  00 00 54 e3                                      cmp r4, #0
005154a0  00 50 a0 e1                                      mov r5, r0
005154a4  04 00 00 0a                                      beq #0x5154bc
005154a8  00 00 50 e3                                      cmp r0, #0
005154ac  00 00 84 05                                      streq r0, [r4]
005154b0  01 00 00 0a                                      beq #0x5154bc
005154b4  f6 e2 f7 eb                                      bl #0x30e094
005154b8  00 00 84 e5                                      str r0, [r4]
005154bc  05 00 a0 e1                                      mov r0, r5
005154c0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00515740, declared_size=44, range_size=44, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement20QueryDoubleAttributeERKSsPd
; demangled: TiXmlElement::QueryDoubleAttribute(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, double*) const
; decoder-mode: arm
00515740  10 40 2d e9                                      push {r4, lr}
00515744  40 00 80 e2                                      add r0, r0, #0x40
00515748  02 40 a0 e1                                      mov r4, r2
0051574c  19 fe ff eb                                      bl #0x514fb8
00515750  00 00 50 e3                                      cmp r0, #0
00515754  02 00 00 0a                                      beq #0x515764
00515758  04 10 a0 e1                                      mov r1, r4
0051575c  10 40 bd e8                                      pop {r4, lr}
00515760  eb ff ff ea                                      b #0x515714
00515764  01 00 a0 e3                                      mov r0, #1
00515768  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0051576c, declared_size=44, range_size=44, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement20QueryDoubleAttributeEPKcPd
; demangled: TiXmlElement::QueryDoubleAttribute(char const*, double*) const
; decoder-mode: arm
0051576c  10 40 2d e9                                      push {r4, lr}
00515770  40 00 80 e2                                      add r0, r0, #0x40
00515774  02 40 a0 e1                                      mov r4, r2
00515778  28 fd ff eb                                      bl #0x514c20
0051577c  00 00 50 e3                                      cmp r0, #0
00515780  02 00 00 0a                                      beq #0x515790
00515784  04 10 a0 e1                                      mov r1, r4
00515788  10 40 bd e8                                      pop {r4, lr}
0051578c  e0 ff ff ea                                      b #0x515714
00515790  01 00 a0 e3                                      mov r0, #1
00515794  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005157c4, declared_size=44, range_size=44, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement17QueryIntAttributeERKSsPi
; demangled: TiXmlElement::QueryIntAttribute(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, int*) const
; decoder-mode: arm
005157c4  10 40 2d e9                                      push {r4, lr}
005157c8  40 00 80 e2                                      add r0, r0, #0x40
005157cc  02 40 a0 e1                                      mov r4, r2
005157d0  f8 fd ff eb                                      bl #0x514fb8
005157d4  00 00 50 e3                                      cmp r0, #0
005157d8  02 00 00 0a                                      beq #0x5157e8
005157dc  04 10 a0 e1                                      mov r1, r4
005157e0  10 40 bd e8                                      pop {r4, lr}
005157e4  eb ff ff ea                                      b #0x515798
005157e8  01 00 a0 e3                                      mov r0, #1
005157ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005157f0, declared_size=44, range_size=44, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement17QueryIntAttributeEPKcPi
; demangled: TiXmlElement::QueryIntAttribute(char const*, int*) const
; decoder-mode: arm
005157f0  10 40 2d e9                                      push {r4, lr}
005157f4  40 00 80 e2                                      add r0, r0, #0x40
005157f8  02 40 a0 e1                                      mov r4, r2
005157fc  07 fd ff eb                                      bl #0x514c20
00515800  00 00 50 e3                                      cmp r0, #0
00515804  02 00 00 0a                                      beq #0x515814
00515808  04 10 a0 e1                                      mov r1, r4
0051580c  10 40 bd e8                                      pop {r4, lr}
00515810  e0 ff ff ea                                      b #0x515798
00515814  01 00 a0 e3                                      mov r0, #1
00515818  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00515c24, declared_size=72, range_size=72, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElementD1Ev
; demangled: TiXmlElement::~TiXmlElement()
; decoder-mode: arm
00515c24  38 30 9f e5                                      ldr r3, [pc, #0x38]
00515c28  38 20 9f e5                                      ldr r2, [pc, #0x38]
00515c2c  70 40 2d e9                                      push {r4, r5, r6, lr}
00515c30  03 30 8f e0                                      add r3, pc, r3
00515c34  02 20 93 e7                                      ldr r2, [r3, r2]
00515c38  00 50 a0 e1                                      mov r5, r0
00515c3c  00 40 a0 e1                                      mov r4, r0
00515c40  08 20 82 e2                                      add r2, r2, #8
00515c44  40 20 85 e4                                      str r2, [r5], #0x40
00515c48  cd fa ff eb                                      bl #0x514784
00515c4c  05 00 a0 e1                                      mov r0, r5
00515c50  df ff ff eb                                      bl #0x515bd4
00515c54  04 00 a0 e1                                      mov r0, r4
00515c58  95 fb ff eb                                      bl #0x514ab4
00515c5c  04 00 a0 e1                                      mov r0, r4
00515c60  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00515c64  60 ee 47 00 28 1b 00 00                          .byte 0x60, 0xee, 0x47, 0x00, 0x28, 0x1b, 0x00, 0x00

; FUNCTION 0x00515c6c, declared_size=28, range_size=28, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElementD0Ev
; demangled: TiXmlElement::~TiXmlElement()
; decoder-mode: arm
00515c6c  10 40 2d e9                                      push {r4, lr}
00515c70  00 40 a0 e1                                      mov r4, r0
00515c74  ea ff ff eb                                      bl #0x515c24
00515c78  04 00 a0 e1                                      mov r0, r4
00515c7c  ef e9 f7 eb                                      bl #0x310440
00515c80  04 00 a0 e1                                      mov r0, r4
00515c84  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00515c88, declared_size=72, range_size=72, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElementD2Ev
; demangled: TiXmlElement::~TiXmlElement()
; decoder-mode: arm
00515c88  38 30 9f e5                                      ldr r3, [pc, #0x38]
00515c8c  38 20 9f e5                                      ldr r2, [pc, #0x38]
00515c90  70 40 2d e9                                      push {r4, r5, r6, lr}
00515c94  03 30 8f e0                                      add r3, pc, r3
00515c98  02 20 93 e7                                      ldr r2, [r3, r2]
00515c9c  00 50 a0 e1                                      mov r5, r0
00515ca0  00 40 a0 e1                                      mov r4, r0
00515ca4  08 20 82 e2                                      add r2, r2, #8
00515ca8  40 20 85 e4                                      str r2, [r5], #0x40
00515cac  b4 fa ff eb                                      bl #0x514784
00515cb0  05 00 a0 e1                                      mov r0, r5
00515cb4  c6 ff ff eb                                      bl #0x515bd4
00515cb8  04 00 a0 e1                                      mov r0, r4
00515cbc  7c fb ff eb                                      bl #0x514ab4
00515cc0  04 00 a0 e1                                      mov r0, r4
00515cc4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00515cc8  fc ed 47 00 28 1b 00 00                          .byte 0xfc, 0xed, 0x47, 0x00, 0x28, 0x1b, 0x00, 0x00

; FUNCTION 0x00515e98, declared_size=104, range_size=104, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElementC1ERKSs
; demangled: TiXmlElement::TiXmlElement(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00515e98  70 40 2d e9                                      push {r4, r5, r6, lr}
00515e9c  01 50 a0 e1                                      mov r5, r1
00515ea0  50 60 9f e5                                      ldr r6, [pc, #0x50]
00515ea4  01 10 a0 e3                                      mov r1, #1
00515ea8  00 40 a0 e1                                      mov r4, r0
00515eac  d9 ff ff eb                                      bl #0x515e18
00515eb0  44 30 9f e5                                      ldr r3, [pc, #0x44]
00515eb4  06 60 8f e0                                      add r6, pc, r6
00515eb8  04 00 a0 e1                                      mov r0, r4
00515ebc  03 30 96 e7                                      ldr r3, [r6, r3]
00515ec0  08 30 83 e2                                      add r3, r3, #8
00515ec4  40 30 80 e4                                      str r3, [r0], #0x40
00515ec8  a4 ff ff eb                                      bl #0x515d60
00515ecc  20 00 84 e2                                      add r0, r4, #0x20
00515ed0  00 30 a0 e3                                      mov r3, #0
00515ed4  05 00 50 e1                                      cmp r0, r5
00515ed8  18 30 84 e5                                      str r3, [r4, #0x18]
00515edc  1c 30 84 e5                                      str r3, [r4, #0x1c]
00515ee0  02 00 00 0a                                      beq #0x515ef0
00515ee4  10 20 95 e5                                      ldr r2, [r5, #0x10]
00515ee8  14 10 95 e5                                      ldr r1, [r5, #0x14]
00515eec  bb ea f7 eb                                      bl #0x3109e0
00515ef0  04 00 a0 e1                                      mov r0, r4
00515ef4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00515ef8  dc eb 47 00 28 1b 00 00                          .byte 0xdc, 0xeb, 0x47, 0x00, 0x28, 0x1b, 0x00, 0x00

; FUNCTION 0x00515f00, declared_size=104, range_size=104, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElementC2ERKSs
; demangled: TiXmlElement::TiXmlElement(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00515f00  70 40 2d e9                                      push {r4, r5, r6, lr}
00515f04  01 50 a0 e1                                      mov r5, r1
00515f08  50 60 9f e5                                      ldr r6, [pc, #0x50]
00515f0c  01 10 a0 e3                                      mov r1, #1
00515f10  00 40 a0 e1                                      mov r4, r0
00515f14  bf ff ff eb                                      bl #0x515e18
00515f18  44 30 9f e5                                      ldr r3, [pc, #0x44]
00515f1c  06 60 8f e0                                      add r6, pc, r6
00515f20  04 00 a0 e1                                      mov r0, r4
00515f24  03 30 96 e7                                      ldr r3, [r6, r3]
00515f28  08 30 83 e2                                      add r3, r3, #8
00515f2c  40 30 80 e4                                      str r3, [r0], #0x40
00515f30  8a ff ff eb                                      bl #0x515d60
00515f34  20 00 84 e2                                      add r0, r4, #0x20
00515f38  00 30 a0 e3                                      mov r3, #0
00515f3c  05 00 50 e1                                      cmp r0, r5
00515f40  18 30 84 e5                                      str r3, [r4, #0x18]
00515f44  1c 30 84 e5                                      str r3, [r4, #0x1c]
00515f48  02 00 00 0a                                      beq #0x515f58
00515f4c  10 20 95 e5                                      ldr r2, [r5, #0x10]
00515f50  14 10 95 e5                                      ldr r1, [r5, #0x14]
00515f54  a1 ea f7 eb                                      bl #0x3109e0
00515f58  04 00 a0 e1                                      mov r0, r4
00515f5c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00515f60  74 eb 47 00 28 1b 00 00                          .byte 0x74, 0xeb, 0x47, 0x00, 0x28, 0x1b, 0x00, 0x00

; FUNCTION 0x00516400, declared_size=168, range_size=168, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElement12SetAttributeERKSsS1_
; demangled: TiXmlElement::SetAttribute(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00516400  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00516404  40 60 80 e2                                      add r6, r0, #0x40
00516408  08 d0 4d e2                                      sub sp, sp, #8
0051640c  00 70 a0 e1                                      mov r7, r0
00516410  06 00 a0 e1                                      mov r0, r6
00516414  01 80 a0 e1                                      mov r8, r1
00516418  02 50 a0 e1                                      mov r5, r2
0051641c  e5 fa ff eb                                      bl #0x514fb8
00516420  00 10 50 e2                                      subs r1, r0, #0
00516424  07 00 00 0a                                      beq #0x516448
00516428  2c 00 81 e2                                      add r0, r1, #0x2c
0051642c  00 00 55 e1                                      cmp r5, r0
00516430  15 00 00 0a                                      beq #0x51648c
00516434  10 20 95 e5                                      ldr r2, [r5, #0x10]
00516438  14 10 95 e5                                      ldr r1, [r5, #0x14]
0051643c  08 d0 8d e2                                      add sp, sp, #8
00516440  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00516444  65 e9 f7 ea                                      b #0x3109e0
00516448  4c 00 a0 e3                                      mov r0, #0x4c
0051644c  47 e8 f7 eb                                      bl #0x310570
00516450  08 10 a0 e1                                      mov r1, r8
00516454  00 40 a0 e1                                      mov r4, r0
00516458  05 20 a0 e1                                      mov r2, r5
0051645c  b4 ff ff eb                                      bl #0x516334
00516460  00 00 54 e3                                      cmp r4, #0
00516464  0a 00 00 1a                                      bne #0x516494
00516468  07 00 a0 e1                                      mov r0, r7
0051646c  11 f8 ff eb                                      bl #0x5144b8
00516470  00 00 50 e3                                      cmp r0, #0
00516474  04 00 00 0a                                      beq #0x51648c
00516478  04 20 a0 e1                                      mov r2, r4
0051647c  03 10 a0 e3                                      mov r1, #3
00516480  04 30 a0 e1                                      mov r3, r4
00516484  00 40 8d e5                                      str r4, [sp]
00516488  16 0c 00 eb                                      bl #0x5194e8
0051648c  08 d0 8d e2                                      add sp, sp, #8
00516490  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00516494  06 00 a0 e1                                      mov r0, r6
00516498  04 10 a0 e1                                      mov r1, r4
0051649c  08 d0 8d e2                                      add sp, sp, #8
005164a0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
005164a4  99 f8 ff ea                                      b #0x514710

; FUNCTION 0x0051671c, declared_size=312, range_size=312, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElement12SetAttributeERKSsi
; demangled: TiXmlElement::SetAttribute(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, int)
; decoder-mode: arm
0051671c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00516720  18 41 9f e5                                      ldr r4, [pc, #0x118]
00516724  18 31 9f e5                                      ldr r3, [pc, #0x118]
00516728  bc d0 4d e2                                      sub sp, sp, #0xbc
0051672c  04 40 8f e0                                      add r4, pc, r4
00516730  03 70 94 e7                                      ldr r7, [r4, r3]
00516734  0c 50 8d e2                                      add r5, sp, #0xc
00516738  40 80 85 e2                                      add r8, r5, #0x40
0051673c  00 30 97 e5                                      ldr r3, [r7]
00516740  00 a0 a0 e1                                      mov sl, r0
00516744  08 00 a0 e1                                      mov r0, r8
00516748  b4 30 8d e5                                      str r3, [sp, #0xb4]
0051674c  02 b0 a0 e1                                      mov fp, r2
00516750  04 10 8d e5                                      str r1, [sp, #4]
00516754  f9 c9 07 eb                                      bl #0x708f40
00516758  e8 00 9f e5                                      ldr r0, [pc, #0xe8]
0051675c  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
00516760  00 10 a0 e3                                      mov r1, #0
00516764  00 00 94 e7                                      ldr r0, [r4, r0]
00516768  02 20 94 e7                                      ldr r2, [r4, r2]
0051676c  90 10 cd e5                                      strb r1, [sp, #0x90]
00516770  04 c0 90 e5                                      ldr ip, [r0, #4]
00516774  08 20 82 e2                                      add r2, r2, #8
00516778  94 10 8d e5                                      str r1, [sp, #0x94]
0051677c  0c c0 8d e5                                      str ip, [sp, #0xc]
00516780  98 10 8d e5                                      str r1, [sp, #0x98]
00516784  4c 20 8d e5                                      str r2, [sp, #0x4c]
00516788  0c 20 1c e5                                      ldr r2, [ip, #-0xc]
0051678c  08 00 90 e5                                      ldr r0, [r0, #8]
00516790  04 90 85 e2                                      add sb, r5, #4
00516794  9c 60 8d e2                                      add r6, sp, #0x9c
00516798  02 00 85 e7                                      str r0, [r5, r2]
0051679c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005167a0  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
005167a4  00 00 85 e0                                      add r0, r5, r0
005167a8  3d 32 f8 eb                                      bl #0x3230a4
005167ac  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
005167b0  10 10 a0 e3                                      mov r1, #0x10
005167b4  09 00 a0 e1                                      mov r0, sb
005167b8  02 20 94 e7                                      ldr r2, [r4, r2]
005167bc  20 c0 82 e2                                      add ip, r2, #0x20
005167c0  0c 20 82 e2                                      add r2, r2, #0xc
005167c4  4c c0 8d e5                                      str ip, [sp, #0x4c]
005167c8  0c 20 8d e5                                      str r2, [sp, #0xc]
005167cc  43 5a f8 eb                                      bl #0x32d0e0
005167d0  08 00 a0 e1                                      mov r0, r8
005167d4  09 10 a0 e1                                      mov r1, sb
005167d8  31 32 f8 eb                                      bl #0x3230a4
005167dc  0b 10 a0 e1                                      mov r1, fp
005167e0  05 00 a0 e1                                      mov r0, r5
005167e4  94 e5 f7 eb                                      bl #0x30fe3c
005167e8  06 00 a0 e1                                      mov r0, r6
005167ec  48 10 9d e5                                      ldr r1, [sp, #0x48]
005167f0  44 20 9d e5                                      ldr r2, [sp, #0x44]
005167f4  ac 60 8d e5                                      str r6, [sp, #0xac]
005167f8  b0 60 8d e5                                      str r6, [sp, #0xb0]
005167fc  b9 eb f7 eb                                      bl #0x3116e8
00516800  04 30 9d e5                                      ldr r3, [sp, #4]
00516804  06 20 a0 e1                                      mov r2, r6
00516808  0a 00 a0 e1                                      mov r0, sl
0051680c  03 10 a0 e1                                      mov r1, r3
00516810  fa fe ff eb                                      bl #0x516400
00516814  06 00 a0 e1                                      mov r0, r6
00516818  63 f4 f7 eb                                      bl #0x3139ac
0051681c  05 00 a0 e1                                      mov r0, r5
00516820  af 31 f8 eb                                      bl #0x322ee4
00516824  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
00516828  00 30 97 e5                                      ldr r3, [r7]
0051682c  03 00 52 e1                                      cmp r2, r3
00516830  01 00 00 1a                                      bne #0x51683c
00516834  bc d0 8d e2                                      add sp, sp, #0xbc
00516838  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051683c  b3 de f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00516840  64 e3 47 00 ac 40 00 00 2c 42 00 00 30 37 00 00  .byte 0x64, 0xe3, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x42, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00
00516850  54 10 00 00                                      .byte 0x54, 0x10, 0x00, 0x00

; FUNCTION 0x005170fc, declared_size=272, range_size=272, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElement12SetAttributeEPKcS1_
; demangled: TiXmlElement::SetAttribute(char const*, char const*)
; decoder-mode: arm
005170fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00517100  fc 40 9f e5                                      ldr r4, [pc, #0xfc]
00517104  fc 80 9f e5                                      ldr r8, [pc, #0xfc]
00517108  54 d0 4d e2                                      sub sp, sp, #0x54
0051710c  04 40 8f e0                                      add r4, pc, r4
00517110  08 30 94 e7                                      ldr r3, [r4, r8]
00517114  34 50 8d e2                                      add r5, sp, #0x34
00517118  00 b0 a0 e1                                      mov fp, r0
0051711c  00 30 93 e5                                      ldr r3, [r3]
00517120  02 a0 a0 e1                                      mov sl, r2
00517124  05 00 a0 e1                                      mov r0, r5
00517128  18 20 8d e2                                      add r2, sp, #0x18
0051712c  1c 60 8d e2                                      add r6, sp, #0x1c
00517130  4c 30 8d e5                                      str r3, [sp, #0x4c]
00517134  0c 10 8d e5                                      str r1, [sp, #0xc]
00517138  40 90 8b e2                                      add sb, fp, #0x40
0051713c  ea f3 f7 eb                                      bl #0x3140ec
00517140  0a 10 a0 e1                                      mov r1, sl
00517144  14 20 8d e2                                      add r2, sp, #0x14
00517148  06 00 a0 e1                                      mov r0, r6
0051714c  e6 f3 f7 eb                                      bl #0x3140ec
00517150  05 10 a0 e1                                      mov r1, r5
00517154  09 00 a0 e1                                      mov r0, sb
00517158  96 f7 ff eb                                      bl #0x514fb8
0051715c  00 10 50 e2                                      subs r1, r0, #0
00517160  10 00 00 0a                                      beq #0x5171a8
00517164  2c 00 81 e2                                      add r0, r1, #0x2c
00517168  06 00 50 e1                                      cmp r0, r6
0051716c  02 00 00 0a                                      beq #0x51717c
00517170  30 10 9d e5                                      ldr r1, [sp, #0x30]
00517174  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00517178  18 e6 f7 eb                                      bl #0x3109e0
0051717c  06 00 a0 e1                                      mov r0, r6
00517180  09 f2 f7 eb                                      bl #0x3139ac
00517184  05 00 a0 e1                                      mov r0, r5
00517188  07 f2 f7 eb                                      bl #0x3139ac
0051718c  08 30 94 e7                                      ldr r3, [r4, r8]
00517190  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00517194  00 30 93 e5                                      ldr r3, [r3]
00517198  03 00 52 e1                                      cmp r2, r3
0051719c  17 00 00 1a                                      bne #0x517200
005171a0  54 d0 8d e2                                      add sp, sp, #0x54
005171a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005171a8  4c 00 a0 e3                                      mov r0, #0x4c
005171ac  ef e4 f7 eb                                      bl #0x310570
005171b0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005171b4  00 70 a0 e1                                      mov r7, r0
005171b8  0a 20 a0 e1                                      mov r2, sl
005171bc  9c ff ff eb                                      bl #0x517034
005171c0  00 00 57 e3                                      cmp r7, #0
005171c4  03 00 00 0a                                      beq #0x5171d8
005171c8  09 00 a0 e1                                      mov r0, sb
005171cc  07 10 a0 e1                                      mov r1, r7
005171d0  4e f5 ff eb                                      bl #0x514710
005171d4  e8 ff ff ea                                      b #0x51717c
005171d8  0b 00 a0 e1                                      mov r0, fp
005171dc  b5 f4 ff eb                                      bl #0x5144b8
005171e0  00 00 50 e3                                      cmp r0, #0
005171e4  e4 ff ff 0a                                      beq #0x51717c
005171e8  07 20 a0 e1                                      mov r2, r7
005171ec  03 10 a0 e3                                      mov r1, #3
005171f0  07 30 a0 e1                                      mov r3, r7
005171f4  00 70 8d e5                                      str r7, [sp]
005171f8  ba 08 00 eb                                      bl #0x5194e8
005171fc  de ff ff ea                                      b #0x51717c
00517200  42 dc f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00517204  84 d9 47 00 ac 40 00 00                          .byte 0x84, 0xd9, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0051720c, declared_size=124, range_size=124, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElement18SetDoubleAttributeEPKcd
; demangled: TiXmlElement::SetDoubleAttribute(char const*, double)
; decoder-mode: arm
0051720c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00517210  64 c0 9f e5                                      ldr ip, [pc, #0x64]
00517214  64 e0 9f e5                                      ldr lr, [pc, #0x64]
00517218  45 df 4d e2                                      sub sp, sp, #0x114
0051721c  0c c0 8f e0                                      add ip, pc, ip
00517220  0e 40 9c e7                                      ldr r4, [ip, lr]
00517224  f0 20 cd e1                                      strd r2, r3, [sp]
00517228  54 20 9f e5                                      ldr r2, [pc, #0x54]
0051722c  00 30 94 e5                                      ldr r3, [r4]
00517230  0c 50 8d e2                                      add r5, sp, #0xc
00517234  00 70 a0 e1                                      mov r7, r0
00517238  01 60 a0 e1                                      mov r6, r1
0051723c  02 20 8f e0                                      add r2, pc, r2
00517240  01 1c a0 e3                                      mov r1, #0x100
00517244  05 00 a0 e1                                      mov r0, r5
00517248  0c 31 8d e5                                      str r3, [sp, #0x10c]
0051724c  fc db f7 eb                                      bl #0x30e244
00517250  05 20 a0 e1                                      mov r2, r5
00517254  07 00 a0 e1                                      mov r0, r7
00517258  06 10 a0 e1                                      mov r1, r6
0051725c  a6 ff ff eb                                      bl #0x5170fc
00517260  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
00517264  00 30 94 e5                                      ldr r3, [r4]
00517268  03 00 52 e1                                      cmp r2, r3
0051726c  01 00 00 1a                                      bne #0x517278
00517270  45 df 8d e2                                      add sp, sp, #0x114
00517274  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00517278  24 dc f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0051727c  74 d8 47 00 ac 40 00 00 24 71 3a 00              .byte 0x74, 0xd8, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0x24, 0x71, 0x3a, 0x00

; FUNCTION 0x00517288, declared_size=124, range_size=124, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElement12SetAttributeEPKci
; demangled: TiXmlElement::SetAttribute(char const*, int)
; decoder-mode: arm
00517288  68 c0 9f e5                                      ldr ip, [pc, #0x68]
0051728c  68 30 9f e5                                      ldr r3, [pc, #0x68]
00517290  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00517294  0c c0 8f e0                                      add ip, pc, ip
00517298  03 40 9c e7                                      ldr r4, [ip, r3]
0051729c  02 30 a0 e1                                      mov r3, r2
005172a0  58 20 9f e5                                      ldr r2, [pc, #0x58]
005172a4  4c d0 4d e2                                      sub sp, sp, #0x4c
005172a8  00 e0 94 e5                                      ldr lr, [r4]
005172ac  04 50 8d e2                                      add r5, sp, #4
005172b0  00 70 a0 e1                                      mov r7, r0
005172b4  01 60 a0 e1                                      mov r6, r1
005172b8  02 20 8f e0                                      add r2, pc, r2
005172bc  40 10 a0 e3                                      mov r1, #0x40
005172c0  05 00 a0 e1                                      mov r0, r5
005172c4  44 e0 8d e5                                      str lr, [sp, #0x44]
005172c8  dd db f7 eb                                      bl #0x30e244
005172cc  05 20 a0 e1                                      mov r2, r5
005172d0  07 00 a0 e1                                      mov r0, r7
005172d4  06 10 a0 e1                                      mov r1, r6
005172d8  87 ff ff eb                                      bl #0x5170fc
005172dc  44 20 9d e5                                      ldr r2, [sp, #0x44]
005172e0  00 30 94 e5                                      ldr r3, [r4]
005172e4  03 00 52 e1                                      cmp r2, r3
005172e8  01 00 00 1a                                      bne #0x5172f4
005172ec  4c d0 8d e2                                      add sp, sp, #0x4c
005172f0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005172f4  05 dc f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005172f8  fc d7 47 00 ac 40 00 00 f8 ab 3a 00              .byte 0xfc, 0xd7, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf8, 0xab, 0x3a, 0x00

; FUNCTION 0x00517304, declared_size=128, range_size=128, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement6CopyToEPS_
; demangled: TiXmlElement::CopyTo(TiXmlElement*) const
; decoder-mode: arm
00517304  70 40 2d e9                                      push {r4, r5, r6, lr}
00517308  00 60 a0 e1                                      mov r6, r0
0051730c  01 50 a0 e1                                      mov r5, r1
00517310  8f fd ff eb                                      bl #0x516954
00517314  88 40 96 e5                                      ldr r4, [r6, #0x88]
00517318  40 30 86 e2                                      add r3, r6, #0x40
0051731c  03 00 54 e1                                      cmp r4, r3
00517320  09 00 00 0a                                      beq #0x51734c
00517324  00 00 54 e3                                      cmp r4, #0
00517328  07 00 00 0a                                      beq #0x51734c
0051732c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00517330  40 20 94 e5                                      ldr r2, [r4, #0x40]
00517334  05 00 a0 e1                                      mov r0, r5
00517338  6f ff ff eb                                      bl #0x5170fc
0051733c  04 00 a0 e1                                      mov r0, r4
00517340  be f4 ff eb                                      bl #0x514640
00517344  00 40 50 e2                                      subs r4, r0, #0
00517348  f7 ff ff 1a                                      bne #0x51732c
0051734c  18 40 96 e5                                      ldr r4, [r6, #0x18]
00517350  00 00 54 e3                                      cmp r4, #0
00517354  09 00 00 0a                                      beq #0x517380
00517358  00 30 94 e5                                      ldr r3, [r4]
0051735c  04 00 a0 e1                                      mov r0, r4
00517360  0f e0 a0 e1                                      mov lr, pc
00517364  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00517368  00 10 a0 e1                                      mov r1, r0
0051736c  05 00 a0 e1                                      mov r0, r5
00517370  7b f9 ff eb                                      bl #0x515964
00517374  3c 40 94 e5                                      ldr r4, [r4, #0x3c]
00517378  00 00 54 e3                                      cmp r4, #0
0051737c  f5 ff ff 1a                                      bne #0x517358
00517380  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00517384, declared_size=32, range_size=32, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElementaSERKS_
; demangled: TiXmlElement::operator=(TiXmlElement const&)
; decoder-mode: arm
00517384  70 40 2d e9                                      push {r4, r5, r6, lr}
00517388  01 50 a0 e1                                      mov r5, r1
0051738c  00 40 a0 e1                                      mov r4, r0
00517390  fb f4 ff eb                                      bl #0x514784
00517394  05 00 a0 e1                                      mov r0, r5
00517398  04 10 a0 e1                                      mov r1, r4
0051739c  70 40 bd e8                                      pop {r4, r5, r6, lr}
005173a0  d7 ff ff ea                                      b #0x517304

; FUNCTION 0x005173a4, declared_size=92, range_size=92, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElementC1ERKS_
; demangled: TiXmlElement::TiXmlElement(TiXmlElement const&)
; decoder-mode: arm
005173a4  70 40 2d e9                                      push {r4, r5, r6, lr}
005173a8  01 60 a0 e1                                      mov r6, r1
005173ac  44 50 9f e5                                      ldr r5, [pc, #0x44]
005173b0  01 10 a0 e3                                      mov r1, #1
005173b4  00 40 a0 e1                                      mov r4, r0
005173b8  96 fa ff eb                                      bl #0x515e18
005173bc  38 30 9f e5                                      ldr r3, [pc, #0x38]
005173c0  05 50 8f e0                                      add r5, pc, r5
005173c4  04 00 a0 e1                                      mov r0, r4
005173c8  03 30 95 e7                                      ldr r3, [r5, r3]
005173cc  08 30 83 e2                                      add r3, r3, #8
005173d0  40 30 80 e4                                      str r3, [r0], #0x40
005173d4  61 fa ff eb                                      bl #0x515d60
005173d8  00 30 a0 e3                                      mov r3, #0
005173dc  06 00 a0 e1                                      mov r0, r6
005173e0  18 30 84 e5                                      str r3, [r4, #0x18]
005173e4  1c 30 84 e5                                      str r3, [r4, #0x1c]
005173e8  04 10 a0 e1                                      mov r1, r4
005173ec  c4 ff ff eb                                      bl #0x517304
005173f0  04 00 a0 e1                                      mov r0, r4
005173f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005173f8  d0 d6 47 00 28 1b 00 00                          .byte 0xd0, 0xd6, 0x47, 0x00, 0x28, 0x1b, 0x00, 0x00

; FUNCTION 0x00517400, declared_size=92, range_size=92, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElementC2ERKS_
; demangled: TiXmlElement::TiXmlElement(TiXmlElement const&)
; decoder-mode: arm
00517400  70 40 2d e9                                      push {r4, r5, r6, lr}
00517404  01 60 a0 e1                                      mov r6, r1
00517408  44 50 9f e5                                      ldr r5, [pc, #0x44]
0051740c  01 10 a0 e3                                      mov r1, #1
00517410  00 40 a0 e1                                      mov r4, r0
00517414  7f fa ff eb                                      bl #0x515e18
00517418  38 30 9f e5                                      ldr r3, [pc, #0x38]
0051741c  05 50 8f e0                                      add r5, pc, r5
00517420  04 00 a0 e1                                      mov r0, r4
00517424  03 30 95 e7                                      ldr r3, [r5, r3]
00517428  08 30 83 e2                                      add r3, r3, #8
0051742c  40 30 80 e4                                      str r3, [r0], #0x40
00517430  4a fa ff eb                                      bl #0x515d60
00517434  00 30 a0 e3                                      mov r3, #0
00517438  06 00 a0 e1                                      mov r0, r6
0051743c  18 30 84 e5                                      str r3, [r4, #0x18]
00517440  1c 30 84 e5                                      str r3, [r4, #0x1c]
00517444  04 10 a0 e1                                      mov r1, r4
00517448  ad ff ff eb                                      bl #0x517304
0051744c  04 00 a0 e1                                      mov r0, r4
00517450  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00517454  74 d6 47 00 28 1b 00 00                          .byte 0x74, 0xd6, 0x47, 0x00, 0x28, 0x1b, 0x00, 0x00

; FUNCTION 0x0051745c, declared_size=104, range_size=104, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElementC1EPKc
; demangled: TiXmlElement::TiXmlElement(char const*)
; decoder-mode: arm
0051745c  70 40 2d e9                                      push {r4, r5, r6, lr}
00517460  01 60 a0 e1                                      mov r6, r1
00517464  50 50 9f e5                                      ldr r5, [pc, #0x50]
00517468  01 10 a0 e3                                      mov r1, #1
0051746c  00 40 a0 e1                                      mov r4, r0
00517470  68 fa ff eb                                      bl #0x515e18
00517474  44 30 9f e5                                      ldr r3, [pc, #0x44]
00517478  05 50 8f e0                                      add r5, pc, r5
0051747c  04 00 a0 e1                                      mov r0, r4
00517480  03 30 95 e7                                      ldr r3, [r5, r3]
00517484  08 30 83 e2                                      add r3, r3, #8
00517488  40 30 80 e4                                      str r3, [r0], #0x40
0051748c  33 fa ff eb                                      bl #0x515d60
00517490  00 30 a0 e3                                      mov r3, #0
00517494  18 30 84 e5                                      str r3, [r4, #0x18]
00517498  1c 30 84 e5                                      str r3, [r4, #0x1c]
0051749c  06 00 a0 e1                                      mov r0, r6
005174a0  6b da f7 eb                                      bl #0x30de54
005174a4  06 10 a0 e1                                      mov r1, r6
005174a8  00 20 86 e0                                      add r2, r6, r0
005174ac  20 00 84 e2                                      add r0, r4, #0x20
005174b0  4a e5 f7 eb                                      bl #0x3109e0
005174b4  04 00 a0 e1                                      mov r0, r4
005174b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005174bc  18 d6 47 00 28 1b 00 00                          .byte 0x18, 0xd6, 0x47, 0x00, 0x28, 0x1b, 0x00, 0x00

; FUNCTION 0x005174c4, declared_size=64, range_size=64, mode=arm
; class-group: TiXmlElement
; alias: _ZNK12TiXmlElement5CloneEv
; demangled: TiXmlElement::Clone() const
; decoder-mode: arm
005174c4  70 40 2d e9                                      push {r4, r5, r6, lr}
005174c8  00 10 a0 e3                                      mov r1, #0
005174cc  34 60 90 e5                                      ldr r6, [r0, #0x34]
005174d0  00 50 a0 e1                                      mov r5, r0
005174d4  8c 00 a0 e3                                      mov r0, #0x8c
005174d8  24 e4 f7 eb                                      bl #0x310570
005174dc  06 10 a0 e1                                      mov r1, r6
005174e0  00 40 a0 e1                                      mov r4, r0
005174e4  dc ff ff eb                                      bl #0x51745c
005174e8  00 00 54 e3                                      cmp r4, #0
005174ec  02 00 00 0a                                      beq #0x5174fc
005174f0  05 00 a0 e1                                      mov r0, r5
005174f4  04 10 a0 e1                                      mov r1, r4
005174f8  81 ff ff eb                                      bl #0x517304
005174fc  04 00 a0 e1                                      mov r0, r4
00517500  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00517504, declared_size=104, range_size=104, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElementC2EPKc
; demangled: TiXmlElement::TiXmlElement(char const*)
; decoder-mode: arm
00517504  70 40 2d e9                                      push {r4, r5, r6, lr}
00517508  01 60 a0 e1                                      mov r6, r1
0051750c  50 50 9f e5                                      ldr r5, [pc, #0x50]
00517510  01 10 a0 e3                                      mov r1, #1
00517514  00 40 a0 e1                                      mov r4, r0
00517518  3e fa ff eb                                      bl #0x515e18
0051751c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00517520  05 50 8f e0                                      add r5, pc, r5
00517524  04 00 a0 e1                                      mov r0, r4
00517528  03 30 95 e7                                      ldr r3, [r5, r3]
0051752c  08 30 83 e2                                      add r3, r3, #8
00517530  40 30 80 e4                                      str r3, [r0], #0x40
00517534  09 fa ff eb                                      bl #0x515d60
00517538  00 30 a0 e3                                      mov r3, #0
0051753c  18 30 84 e5                                      str r3, [r4, #0x18]
00517540  1c 30 84 e5                                      str r3, [r4, #0x1c]
00517544  06 00 a0 e1                                      mov r0, r6
00517548  41 da f7 eb                                      bl #0x30de54
0051754c  06 10 a0 e1                                      mov r1, r6
00517550  00 20 86 e0                                      add r2, r6, r0
00517554  20 00 84 e2                                      add r0, r4, #0x20
00517558  20 e5 f7 eb                                      bl #0x3109e0
0051755c  04 00 a0 e1                                      mov r0, r4
00517560  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00517564  70 d5 47 00 28 1b 00 00                          .byte 0x70, 0xd5, 0x47, 0x00, 0x28, 0x1b, 0x00, 0x00

; FUNCTION 0x00519d30, declared_size=492, range_size=492, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElement9ReadValueEPKcP16TiXmlParsingData13TiXmlEncoding
; demangled: TiXmlElement::ReadValue(char const*, TiXmlParsingData*, TiXmlEncoding)
; decoder-mode: arm
00519d30  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00519d34  1c d0 4d e2                                      sub sp, sp, #0x1c
00519d38  03 60 a0 e1                                      mov r6, r3
00519d3c  01 a0 a0 e1                                      mov sl, r1
00519d40  02 90 a0 e1                                      mov sb, r2
00519d44  00 b0 a0 e1                                      mov fp, r0
00519d48  da e9 ff eb                                      bl #0x5144b8
00519d4c  06 10 a0 e1                                      mov r1, r6
00519d50  14 00 8d e5                                      str r0, [sp, #0x14]
00519d54  0a 00 a0 e1                                      mov r0, sl
00519d58  8a fa ff eb                                      bl #0x518788
00519d5c  a4 71 9f e5                                      ldr r7, [pc, #0x1a4]
00519d60  00 50 50 e2                                      subs r5, r0, #0
00519d64  07 70 8f e0                                      add r7, pc, r7
00519d68  3d 00 00 0a                                      beq #0x519e64
00519d6c  00 30 d5 e5                                      ldrb r3, [r5]
00519d70  00 00 53 e3                                      cmp r3, #0
00519d74  37 00 00 0a                                      beq #0x519e58
00519d78  8c 21 9f e5                                      ldr r2, [pc, #0x18c]
00519d7c  8c 81 9f e5                                      ldr r8, [pc, #0x18c]
00519d80  02 20 8f e0                                      add r2, pc, r2
00519d84  10 20 8d e5                                      str r2, [sp, #0x10]
00519d88  84 21 9f e5                                      ldr r2, [pc, #0x184]
00519d8c  08 80 8f e0                                      add r8, pc, r8
00519d90  08 20 8d e5                                      str r2, [sp, #8]
00519d94  7c 21 9f e5                                      ldr r2, [pc, #0x17c]
00519d98  0c 20 8d e5                                      str r2, [sp, #0xc]
00519d9c  3c 00 53 e3                                      cmp r3, #0x3c
00519da0  3a 00 00 0a                                      beq #0x519e90
00519da4  00 10 a0 e3                                      mov r1, #0
00519da8  44 00 a0 e3                                      mov r0, #0x44
00519dac  ef d9 f7 eb                                      bl #0x310570
00519db0  04 10 a0 e3                                      mov r1, #4
00519db4  00 40 a0 e1                                      mov r4, r0
00519db8  16 f0 ff eb                                      bl #0x515e18
00519dbc  08 20 9d e5                                      ldr r2, [sp, #8]
00519dc0  04 00 a0 e1                                      mov r0, r4
00519dc4  08 10 a0 e1                                      mov r1, r8
00519dc8  02 30 97 e7                                      ldr r3, [r7, r2]
00519dcc  08 20 a0 e1                                      mov r2, r8
00519dd0  08 30 83 e2                                      add r3, r3, #8
00519dd4  20 30 80 e4                                      str r3, [r0], #0x20
00519dd8  00 db f7 eb                                      bl #0x3109e0
00519ddc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00519de0  00 c0 94 e5                                      ldr ip, [r4]
00519de4  04 00 a0 e1                                      mov r0, r4
00519de8  02 30 97 e7                                      ldr r3, [r7, r2]
00519dec  00 20 a0 e3                                      mov r2, #0
00519df0  40 20 c4 e5                                      strb r2, [r4, #0x40]
00519df4  00 30 d3 e5                                      ldrb r3, [r3]
00519df8  09 20 a0 e1                                      mov r2, sb
00519dfc  00 00 53 e3                                      cmp r3, #0
00519e00  0a 10 a0 01                                      moveq r1, sl
00519e04  05 10 a0 11                                      movne r1, r5
00519e08  06 30 a0 e1                                      mov r3, r6
00519e0c  0f e0 a0 e1                                      mov lr, pc
00519e10  0c f0 9c e5                                      ldr pc, [ip, #0xc]
00519e14  00 a0 a0 e1                                      mov sl, r0
00519e18  04 00 a0 e1                                      mov r0, r4
00519e1c  db fa ff eb                                      bl #0x518990
00519e20  00 00 50 e3                                      cmp r0, #0
00519e24  31 00 00 0a                                      beq #0x519ef0
00519e28  04 00 a0 e1                                      mov r0, r4
00519e2c  00 30 94 e5                                      ldr r3, [r4]
00519e30  0f e0 a0 e1                                      mov lr, pc
00519e34  04 f0 93 e5                                      ldr pc, [r3, #4]
00519e38  0a 00 a0 e1                                      mov r0, sl
00519e3c  06 10 a0 e1                                      mov r1, r6
00519e40  50 fa ff eb                                      bl #0x518788
00519e44  00 50 50 e2                                      subs r5, r0, #0
00519e48  05 00 00 0a                                      beq #0x519e64
00519e4c  00 30 d5 e5                                      ldrb r3, [r5]
00519e50  00 00 53 e3                                      cmp r3, #0
00519e54  d0 ff ff 1a                                      bne #0x519d9c
00519e58  05 00 a0 e1                                      mov r0, r5
00519e5c  1c d0 8d e2                                      add sp, sp, #0x1c
00519e60  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00519e64  14 30 9d e5                                      ldr r3, [sp, #0x14]
00519e68  00 00 53 e3                                      cmp r3, #0
00519e6c  23 00 00 0a                                      beq #0x519f00
00519e70  00 20 a0 e3                                      mov r2, #0
00519e74  03 00 a0 e1                                      mov r0, r3
00519e78  06 10 a0 e3                                      mov r1, #6
00519e7c  02 30 a0 e1                                      mov r3, r2
00519e80  00 60 8d e5                                      str r6, [sp]
00519e84  00 50 a0 e3                                      mov r5, #0
00519e88  96 fd ff eb                                      bl #0x5194e8
00519e8c  f1 ff ff ea                                      b #0x519e58
00519e90  05 00 a0 e1                                      mov r0, r5
00519e94  10 10 9d e5                                      ldr r1, [sp, #0x10]
00519e98  00 20 a0 e3                                      mov r2, #0
00519e9c  06 30 a0 e1                                      mov r3, r6
00519ea0  7d fa ff eb                                      bl #0x51889c
00519ea4  00 00 50 e3                                      cmp r0, #0
00519ea8  ea ff ff 1a                                      bne #0x519e58
00519eac  0b 00 a0 e1                                      mov r0, fp
00519eb0  05 10 a0 e1                                      mov r1, r5
00519eb4  06 20 a0 e1                                      mov r2, r6
00519eb8  14 ff ff eb                                      bl #0x519b10
00519ebc  00 40 50 e2                                      subs r4, r0, #0
00519ec0  0e 00 00 0a                                      beq #0x519f00
00519ec4  05 10 a0 e1                                      mov r1, r5
00519ec8  00 c0 94 e5                                      ldr ip, [r4]
00519ecc  09 20 a0 e1                                      mov r2, sb
00519ed0  06 30 a0 e1                                      mov r3, r6
00519ed4  0f e0 a0 e1                                      mov lr, pc
00519ed8  0c f0 9c e5                                      ldr pc, [ip, #0xc]
00519edc  04 10 a0 e1                                      mov r1, r4
00519ee0  00 a0 a0 e1                                      mov sl, r0
00519ee4  0b 00 a0 e1                                      mov r0, fp
00519ee8  9d ee ff eb                                      bl #0x515964
00519eec  d1 ff ff ea                                      b #0x519e38
00519ef0  04 10 a0 e1                                      mov r1, r4
00519ef4  0b 00 a0 e1                                      mov r0, fp
00519ef8  99 ee ff eb                                      bl #0x515964
00519efc  cd ff ff ea                                      b #0x519e38
00519f00  00 50 a0 e3                                      mov r5, #0
00519f04  d3 ff ff ea                                      b #0x519e58
; mapping-symbol data/literal pool
00519f08  2c ad 47 00 a8 23 3c 00 7c 1a 3b 00 44 25 00 00  .byte 0x2c, 0xad, 0x47, 0x00, 0xa8, 0x23, 0x3c, 0x00, 0x7c, 0x1a, 0x3b, 0x00, 0x44, 0x25, 0x00, 0x00
00519f18  64 40 00 00                                      .byte 0x64, 0x40, 0x00, 0x00

; FUNCTION 0x00519f1c, declared_size=1100, range_size=1100, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElement5ParseEPKcP16TiXmlParsingData13TiXmlEncoding
; demangled: TiXmlElement::Parse(char const*, TiXmlParsingData*, TiXmlEncoding)
; decoder-mode: arm
00519f1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00519f20  34 84 9f e5                                      ldr r8, [pc, #0x434]
00519f24  34 c4 9f e5                                      ldr ip, [pc, #0x434]
00519f28  03 50 a0 e1                                      mov r5, r3
00519f2c  08 80 8f e0                                      add r8, pc, r8
00519f30  0c 30 98 e7                                      ldr r3, [r8, ip]
00519f34  3c d0 4d e2                                      sub sp, sp, #0x3c
00519f38  00 90 a0 e1                                      mov sb, r0
00519f3c  00 30 93 e5                                      ldr r3, [r3]
00519f40  01 00 a0 e1                                      mov r0, r1
00519f44  05 10 a0 e1                                      mov r1, r5
00519f48  0c c0 8d e5                                      str ip, [sp, #0xc]
00519f4c  02 60 a0 e1                                      mov r6, r2
00519f50  34 30 8d e5                                      str r3, [sp, #0x34]
00519f54  0b fa ff eb                                      bl #0x518788
00519f58  00 40 a0 e1                                      mov r4, r0
00519f5c  09 00 a0 e1                                      mov r0, sb
00519f60  54 e9 ff eb                                      bl #0x5144b8
00519f64  00 00 54 e3                                      cmp r4, #0
00519f68  10 00 8d e5                                      str r0, [sp, #0x10]
00519f6c  89 00 00 0a                                      beq #0x51a198
00519f70  00 70 d4 e5                                      ldrb r7, [r4]
00519f74  00 00 57 e3                                      cmp r7, #0
00519f78  86 00 00 0a                                      beq #0x51a198
00519f7c  00 00 56 e3                                      cmp r6, #0
00519f80  08 00 00 0a                                      beq #0x519fa8
00519f84  06 00 a0 e1                                      mov r0, r6
00519f88  04 10 a0 e1                                      mov r1, r4
00519f8c  05 20 a0 e1                                      mov r2, r5
00519f90  a0 f9 ff eb                                      bl #0x518618
00519f94  00 30 96 e5                                      ldr r3, [r6]
00519f98  04 30 89 e5                                      str r3, [sb, #4]
00519f9c  04 30 96 e5                                      ldr r3, [r6, #4]
00519fa0  08 30 89 e5                                      str r3, [sb, #8]
00519fa4  00 70 d4 e5                                      ldrb r7, [r4]
00519fa8  77 70 af e6                                      sxtb r7, r7
00519fac  3c 00 57 e3                                      cmp r7, #0x3c
00519fb0  60 00 00 1a                                      bne #0x51a138
00519fb4  01 00 84 e2                                      add r0, r4, #1
00519fb8  05 10 a0 e1                                      mov r1, r5
00519fbc  f1 f9 ff eb                                      bl #0x518788
00519fc0  20 10 89 e2                                      add r1, sb, #0x20
00519fc4  05 20 a0 e1                                      mov r2, r5
00519fc8  00 40 a0 e1                                      mov r4, r0
00519fcc  ec fb ff eb                                      bl #0x518f84
00519fd0  00 a0 50 e2                                      subs sl, r0, #0
00519fd4  64 00 00 0a                                      beq #0x51a16c
00519fd8  d0 30 da e1                                      ldrsb r3, [sl]
00519fdc  00 00 53 e3                                      cmp r3, #0
00519fe0  61 00 00 0a                                      beq #0x51a16c
00519fe4  1c 20 8d e2                                      add r2, sp, #0x1c
00519fe8  02 00 a0 e1                                      mov r0, r2
00519fec  03 10 a0 e3                                      mov r1, #3
00519ff0  08 20 8d e5                                      str r2, [sp, #8]
00519ff4  2c 20 8d e5                                      str r2, [sp, #0x2c]
00519ff8  30 20 8d e5                                      str r2, [sp, #0x30]
00519ffc  9e dd f7 eb                                      bl #0x31167c
0051a000  30 30 9d e5                                      ldr r3, [sp, #0x30]
0051a004  2f 10 a0 e3                                      mov r1, #0x2f
0051a008  02 20 83 e2                                      add r2, r3, #2
0051a00c  00 70 c3 e5                                      strb r7, [r3]
0051a010  01 10 c3 e5                                      strb r1, [r3, #1]
0051a014  2c 20 8d e5                                      str r2, [sp, #0x2c]
0051a018  00 20 a0 e3                                      mov r2, #0
0051a01c  02 20 c3 e5                                      strb r2, [r3, #2]
0051a020  34 10 99 e5                                      ldr r1, [sb, #0x34]
0051a024  30 20 99 e5                                      ldr r2, [sb, #0x30]
0051a028  08 00 9d e5                                      ldr r0, [sp, #8]
0051a02c  f4 d9 f7 eb                                      bl #0x310804
0051a030  2c 13 9f e5                                      ldr r1, [pc, #0x32c]
0051a034  08 00 9d e5                                      ldr r0, [sp, #8]
0051a038  01 10 8f e0                                      add r1, pc, r1
0051a03c  01 20 81 e2                                      add r2, r1, #1
0051a040  ef d9 f7 eb                                      bl #0x310804
0051a044  d0 30 da e1                                      ldrsb r3, [sl]
0051a048  00 00 53 e3                                      cmp r3, #0
0051a04c  2e 00 00 0a                                      beq #0x51a10c
0051a050  40 b0 89 e2                                      add fp, sb, #0x40
0051a054  14 90 8d e5                                      str sb, [sp, #0x14]
0051a058  10 90 9d e5                                      ldr sb, [sp, #0x10]
0051a05c  0a 00 a0 e1                                      mov r0, sl
0051a060  05 10 a0 e1                                      mov r1, r5
0051a064  c7 f9 ff eb                                      bl #0x518788
0051a068  00 70 50 e2                                      subs r7, r0, #0
0051a06c  54 00 00 0a                                      beq #0x51a1c4
0051a070  00 30 d7 e5                                      ldrb r3, [r7]
0051a074  00 00 53 e3                                      cmp r3, #0
0051a078  51 00 00 0a                                      beq #0x51a1c4
0051a07c  73 30 af e6                                      sxtb r3, r3
0051a080  2f 00 53 e3                                      cmp r3, #0x2f
0051a084  68 00 00 0a                                      beq #0x51a22c
0051a088  3e 00 53 e3                                      cmp r3, #0x3e
0051a08c  75 00 00 0a                                      beq #0x51a268
0051a090  00 10 a0 e3                                      mov r1, #0
0051a094  4c 00 a0 e3                                      mov r0, #0x4c
0051a098  34 d9 f7 eb                                      bl #0x310570
0051a09c  00 40 a0 e1                                      mov r4, r0
0051a0a0  0a ef ff eb                                      bl #0x515cd0
0051a0a4  00 00 54 e3                                      cmp r4, #0
0051a0a8  84 00 00 0a                                      beq #0x51a2c0
0051a0ac  10 90 84 e5                                      str sb, [r4, #0x10]
0051a0b0  00 c0 94 e5                                      ldr ip, [r4]
0051a0b4  04 00 a0 e1                                      mov r0, r4
0051a0b8  07 10 a0 e1                                      mov r1, r7
0051a0bc  06 20 a0 e1                                      mov r2, r6
0051a0c0  05 30 a0 e1                                      mov r3, r5
0051a0c4  0f e0 a0 e1                                      mov lr, pc
0051a0c8  0c f0 9c e5                                      ldr pc, [ip, #0xc]
0051a0cc  00 a0 50 e2                                      subs sl, r0, #0
0051a0d0  46 00 00 0a                                      beq #0x51a1f0
0051a0d4  d0 30 da e1                                      ldrsb r3, [sl]
0051a0d8  00 00 53 e3                                      cmp r3, #0
0051a0dc  43 00 00 0a                                      beq #0x51a1f0
0051a0e0  0b 00 a0 e1                                      mov r0, fp
0051a0e4  14 10 84 e2                                      add r1, r4, #0x14
0051a0e8  b2 eb ff eb                                      bl #0x514fb8
0051a0ec  00 00 50 e3                                      cmp r0, #0
0051a0f0  7f 00 00 1a                                      bne #0x51a2f4
0051a0f4  04 10 a0 e1                                      mov r1, r4
0051a0f8  0b 00 a0 e1                                      mov r0, fp
0051a0fc  83 e9 ff eb                                      bl #0x514710
0051a100  d0 30 da e1                                      ldrsb r3, [sl]
0051a104  00 00 53 e3                                      cmp r3, #0
0051a108  d3 ff ff 1a                                      bne #0x51a05c
0051a10c  08 00 9d e5                                      ldr r0, [sp, #8]
0051a110  25 e6 f7 eb                                      bl #0x3139ac
0051a114  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0051a118  34 20 9d e5                                      ldr r2, [sp, #0x34]
0051a11c  0a 00 a0 e1                                      mov r0, sl
0051a120  0c 30 98 e7                                      ldr r3, [r8, ip]
0051a124  00 30 93 e5                                      ldr r3, [r3]
0051a128  03 00 52 e1                                      cmp r2, r3
0051a12c  89 00 00 1a                                      bne #0x51a358
0051a130  3c d0 8d e2                                      add sp, sp, #0x3c
0051a134  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051a138  10 30 9d e5                                      ldr r3, [sp, #0x10]
0051a13c  00 00 53 e3                                      cmp r3, #0
0051a140  01 00 00 1a                                      bne #0x51a14c
0051a144  00 a0 a0 e3                                      mov sl, #0
0051a148  f1 ff ff ea                                      b #0x51a114
0051a14c  03 00 a0 e1                                      mov r0, r3
0051a150  04 20 a0 e1                                      mov r2, r4
0051a154  06 30 a0 e1                                      mov r3, r6
0051a158  04 10 a0 e3                                      mov r1, #4
0051a15c  00 50 8d e5                                      str r5, [sp]
0051a160  00 a0 a0 e3                                      mov sl, #0
0051a164  df fc ff eb                                      bl #0x5194e8
0051a168  e9 ff ff ea                                      b #0x51a114
0051a16c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0051a170  00 00 5c e3                                      cmp ip, #0
0051a174  f2 ff ff 0a                                      beq #0x51a144
0051a178  0c 00 a0 e1                                      mov r0, ip
0051a17c  04 20 a0 e1                                      mov r2, r4
0051a180  06 30 a0 e1                                      mov r3, r6
0051a184  05 10 a0 e3                                      mov r1, #5
0051a188  00 50 8d e5                                      str r5, [sp]
0051a18c  00 a0 a0 e3                                      mov sl, #0
0051a190  d4 fc ff eb                                      bl #0x5194e8
0051a194  de ff ff ea                                      b #0x51a114
0051a198  10 20 9d e5                                      ldr r2, [sp, #0x10]
0051a19c  00 00 52 e3                                      cmp r2, #0
0051a1a0  e7 ff ff 0a                                      beq #0x51a144
0051a1a4  00 20 a0 e3                                      mov r2, #0
0051a1a8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0051a1ac  04 10 a0 e3                                      mov r1, #4
0051a1b0  02 30 a0 e1                                      mov r3, r2
0051a1b4  00 50 8d e5                                      str r5, [sp]
0051a1b8  00 a0 a0 e3                                      mov sl, #0
0051a1bc  c9 fc ff eb                                      bl #0x5194e8
0051a1c0  d3 ff ff ea                                      b #0x51a114
0051a1c4  10 30 9d e5                                      ldr r3, [sp, #0x10]
0051a1c8  00 00 53 e3                                      cmp r3, #0
0051a1cc  46 00 00 0a                                      beq #0x51a2ec
0051a1d0  0a 20 a0 e1                                      mov r2, sl
0051a1d4  03 00 a0 e1                                      mov r0, r3
0051a1d8  07 10 a0 e3                                      mov r1, #7
0051a1dc  06 30 a0 e1                                      mov r3, r6
0051a1e0  00 50 8d e5                                      str r5, [sp]
0051a1e4  00 a0 a0 e3                                      mov sl, #0
0051a1e8  be fc ff eb                                      bl #0x5194e8
0051a1ec  c6 ff ff ea                                      b #0x51a10c
0051a1f0  10 20 9d e5                                      ldr r2, [sp, #0x10]
0051a1f4  00 00 52 e3                                      cmp r2, #0
0051a1f8  05 00 00 0a                                      beq #0x51a214
0051a1fc  02 00 a0 e1                                      mov r0, r2
0051a200  06 30 a0 e1                                      mov r3, r6
0051a204  07 20 a0 e1                                      mov r2, r7
0051a208  04 10 a0 e3                                      mov r1, #4
0051a20c  00 50 8d e5                                      str r5, [sp]
0051a210  b4 fc ff eb                                      bl #0x5194e8
0051a214  04 00 a0 e1                                      mov r0, r4
0051a218  00 30 94 e5                                      ldr r3, [r4]
0051a21c  0f e0 a0 e1                                      mov lr, pc
0051a220  04 f0 93 e5                                      ldr pc, [r3, #4]
0051a224  00 a0 a0 e3                                      mov sl, #0
0051a228  b7 ff ff ea                                      b #0x51a10c
0051a22c  d1 30 d7 e1                                      ldrsb r3, [r7, #1]
0051a230  01 20 87 e2                                      add r2, r7, #1
0051a234  3e 00 53 e3                                      cmp r3, #0x3e
0051a238  01 a0 82 02                                      addeq sl, r2, #1
0051a23c  b2 ff ff 0a                                      beq #0x51a10c
0051a240  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0051a244  00 00 5c e3                                      cmp ip, #0
0051a248  27 00 00 0a                                      beq #0x51a2ec
0051a24c  0c 00 a0 e1                                      mov r0, ip
0051a250  06 30 a0 e1                                      mov r3, r6
0051a254  08 10 a0 e3                                      mov r1, #8
0051a258  00 50 8d e5                                      str r5, [sp]
0051a25c  00 a0 a0 e3                                      mov sl, #0
0051a260  a0 fc ff eb                                      bl #0x5194e8
0051a264  a8 ff ff ea                                      b #0x51a10c
0051a268  14 90 9d e5                                      ldr sb, [sp, #0x14]
0051a26c  01 10 87 e2                                      add r1, r7, #1
0051a270  06 20 a0 e1                                      mov r2, r6
0051a274  09 00 a0 e1                                      mov r0, sb
0051a278  05 30 a0 e1                                      mov r3, r5
0051a27c  ab fe ff eb                                      bl #0x519d30
0051a280  00 40 50 e2                                      subs r4, r0, #0
0051a284  02 00 00 0a                                      beq #0x51a294
0051a288  d0 30 d4 e1                                      ldrsb r3, [r4]
0051a28c  00 00 53 e3                                      cmp r3, #0
0051a290  1b 00 00 1a                                      bne #0x51a304
0051a294  10 20 9d e5                                      ldr r2, [sp, #0x10]
0051a298  00 00 52 e3                                      cmp r2, #0
0051a29c  12 00 00 0a                                      beq #0x51a2ec
0051a2a0  02 00 a0 e1                                      mov r0, r2
0051a2a4  06 30 a0 e1                                      mov r3, r6
0051a2a8  04 20 a0 e1                                      mov r2, r4
0051a2ac  09 10 a0 e3                                      mov r1, #9
0051a2b0  00 50 8d e5                                      str r5, [sp]
0051a2b4  00 a0 a0 e3                                      mov sl, #0
0051a2b8  8a fc ff eb                                      bl #0x5194e8
0051a2bc  92 ff ff ea                                      b #0x51a10c
0051a2c0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0051a2c4  00 00 5c e3                                      cmp ip, #0
0051a2c8  07 00 00 0a                                      beq #0x51a2ec
0051a2cc  0a 20 a0 e1                                      mov r2, sl
0051a2d0  0c 00 a0 e1                                      mov r0, ip
0051a2d4  06 30 a0 e1                                      mov r3, r6
0051a2d8  03 10 a0 e3                                      mov r1, #3
0051a2dc  00 50 8d e5                                      str r5, [sp]
0051a2e0  04 a0 a0 e1                                      mov sl, r4
0051a2e4  7f fc ff eb                                      bl #0x5194e8
0051a2e8  87 ff ff ea                                      b #0x51a10c
0051a2ec  00 a0 a0 e3                                      mov sl, #0
0051a2f0  85 ff ff ea                                      b #0x51a10c
0051a2f4  40 10 94 e5                                      ldr r1, [r4, #0x40]
0051a2f8  2c 00 80 e2                                      add r0, r0, #0x2c
0051a2fc  1a 59 f8 eb                                      bl #0x33076c
0051a300  c3 ff ff ea                                      b #0x51a214
0051a304  30 10 9d e5                                      ldr r1, [sp, #0x30]
0051a308  00 20 a0 e3                                      mov r2, #0
0051a30c  05 30 a0 e1                                      mov r3, r5
0051a310  61 f9 ff eb                                      bl #0x51889c
0051a314  00 a0 50 e2                                      subs sl, r0, #0
0051a318  04 00 00 0a                                      beq #0x51a330
0051a31c  30 30 9d e5                                      ldr r3, [sp, #0x30]
0051a320  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
0051a324  0a a0 63 e0                                      rsb sl, r3, sl
0051a328  0a a0 84 e0                                      add sl, r4, sl
0051a32c  76 ff ff ea                                      b #0x51a10c
0051a330  10 30 9d e5                                      ldr r3, [sp, #0x10]
0051a334  00 00 53 e3                                      cmp r3, #0
0051a338  eb ff ff 0a                                      beq #0x51a2ec
0051a33c  03 00 a0 e1                                      mov r0, r3
0051a340  04 20 a0 e1                                      mov r2, r4
0051a344  06 30 a0 e1                                      mov r3, r6
0051a348  09 10 a0 e3                                      mov r1, #9
0051a34c  00 50 8d e5                                      str r5, [sp]
0051a350  64 fc ff eb                                      bl #0x5194e8
0051a354  6c ff ff ea                                      b #0x51a10c
0051a358  ec cf f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0051a35c  64 ab 47 00 ac 40 00 00 90 20 3c 00              .byte 0x64, 0xab, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0x90, 0x20, 0x3c, 0x00

; FUNCTION 0x0051a368, declared_size=972, range_size=972, mode=arm
; class-group: TiXmlElement
; alias: _ZN12TiXmlElement8StreamInEPSiPSs
; demangled: TiXmlElement::StreamIn(std::basic_istream<char, std::char_traits<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*)
; decoder-mode: arm
0051a368  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051a36c  a0 53 9f e5                                      ldr r5, [pc, #0x3a0]
0051a370  a0 63 9f e5                                      ldr r6, [pc, #0x3a0]
0051a374  74 d0 4d e2                                      sub sp, sp, #0x74
0051a378  05 50 8f e0                                      add r5, pc, r5
0051a37c  06 30 95 e7                                      ldr r3, [r5, r6]
0051a380  08 00 8d e5                                      str r0, [sp, #8]
0051a384  01 70 a0 e1                                      mov r7, r1
0051a388  00 30 93 e5                                      ldr r3, [r3]
0051a38c  02 80 a0 e1                                      mov r8, r2
0051a390  6c 30 8d e5                                      str r3, [sp, #0x6c]
0051a394  00 30 97 e5                                      ldr r3, [r7]
0051a398  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051a39c  03 30 87 e0                                      add r3, r7, r3
0051a3a0  08 40 93 e5                                      ldr r4, [r3, #8]
0051a3a4  00 00 54 e3                                      cmp r4, #0
0051a3a8  08 00 00 1a                                      bne #0x51a3d0
0051a3ac  07 00 a0 e1                                      mov r0, r7
0051a3b0  c3 fa ff eb                                      bl #0x518ec4
0051a3b4  00 a0 50 e2                                      subs sl, r0, #0
0051a3b8  1a 00 00 da                                      ble #0x51a428
0051a3bc  08 00 a0 e1                                      mov r0, r8
0051a3c0  7a 10 af e6                                      sxtb r1, sl
0051a3c4  a4 3f f8 eb                                      bl #0x32a25c
0051a3c8  3e 00 5a e3                                      cmp sl, #0x3e
0051a3cc  f0 ff ff 1a                                      bne #0x51a394
0051a3d0  14 20 98 e5                                      ldr r2, [r8, #0x14]
0051a3d4  10 30 98 e5                                      ldr r3, [r8, #0x10]
0051a3d8  03 30 62 e0                                      rsb r3, r2, r3
0051a3dc  02 00 53 e3                                      cmp r3, #2
0051a3e0  09 00 00 9a                                      bls #0x51a40c
0051a3e4  01 40 53 e2                                      subs r4, r3, #1
0051a3e8  18 00 00 3a                                      blo #0x51a450
0051a3ec  d4 10 92 e1                                      ldrsb r1, [r2, r4]
0051a3f0  3e 00 51 e3                                      cmp r1, #0x3e
0051a3f4  1e 00 00 0a                                      beq #0x51a474
0051a3f8  01 40 53 e2                                      subs r4, r3, #1
0051a3fc  25 00 00 3a                                      blo #0x51a498
0051a400  d4 30 92 e1                                      ldrsb r3, [r2, r4]
0051a404  3e 00 53 e3                                      cmp r3, #0x3e
0051a408  27 00 00 0a                                      beq #0x51a4ac
0051a40c  06 30 95 e7                                      ldr r3, [r5, r6]
0051a410  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0051a414  00 30 93 e5                                      ldr r3, [r3]
0051a418  03 00 52 e1                                      cmp r2, r3
0051a41c  bb 00 00 1a                                      bne #0x51a710
0051a420  74 d0 8d e2                                      add sp, sp, #0x74
0051a424  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051a428  08 00 9d e5                                      ldr r0, [sp, #8]
0051a42c  21 e8 ff eb                                      bl #0x5144b8
0051a430  00 00 50 e3                                      cmp r0, #0
0051a434  f4 ff ff 0a                                      beq #0x51a40c
0051a438  04 20 a0 e1                                      mov r2, r4
0051a43c  0e 10 a0 e3                                      mov r1, #0xe
0051a440  04 30 a0 e1                                      mov r3, r4
0051a444  00 40 8d e5                                      str r4, [sp]
0051a448  26 fc ff eb                                      bl #0x5194e8
0051a44c  ee ff ff ea                                      b #0x51a40c
0051a450  c4 02 9f e5                                      ldr r0, [pc, #0x2c4]
0051a454  00 00 8f e0                                      add r0, pc, r0
0051a458  94 ba 07 eb                                      bl #0x708eb0
0051a45c  14 20 98 e5                                      ldr r2, [r8, #0x14]
0051a460  10 30 98 e5                                      ldr r3, [r8, #0x10]
0051a464  d4 10 92 e1                                      ldrsb r1, [r2, r4]
0051a468  03 30 62 e0                                      rsb r3, r2, r3
0051a46c  3e 00 51 e3                                      cmp r1, #0x3e
0051a470  e0 ff ff 1a                                      bne #0x51a3f8
0051a474  02 40 53 e2                                      subs r4, r3, #2
0051a478  2e 00 00 3a                                      blo #0x51a538
0051a47c  d4 30 92 e1                                      ldrsb r3, [r2, r4]
0051a480  2f 00 53 e3                                      cmp r3, #0x2f
0051a484  e0 ff ff 0a                                      beq #0x51a40c
0051a488  10 30 98 e5                                      ldr r3, [r8, #0x10]
0051a48c  03 30 62 e0                                      rsb r3, r2, r3
0051a490  01 40 53 e2                                      subs r4, r3, #1
0051a494  d9 ff ff 2a                                      bhs #0x51a400
0051a498  80 02 9f e5                                      ldr r0, [pc, #0x280]
0051a49c  00 00 8f e0                                      add r0, pc, r0
0051a4a0  82 ba 07 eb                                      bl #0x708eb0
0051a4a4  14 20 98 e5                                      ldr r2, [r8, #0x14]
0051a4a8  d4 ff ff ea                                      b #0x51a400
0051a4ac  70 32 9f e5                                      ldr r3, [pc, #0x270]
0051a4b0  70 02 9f e5                                      ldr r0, [pc, #0x270]
0051a4b4  70 22 9f e5                                      ldr r2, [pc, #0x270]
0051a4b8  03 30 8f e0                                      add r3, pc, r3
0051a4bc  14 30 8d e5                                      str r3, [sp, #0x14]
0051a4c0  28 30 8d e2                                      add r3, sp, #0x28
0051a4c4  24 00 8d e5                                      str r0, [sp, #0x24]
0051a4c8  10 20 8d e5                                      str r2, [sp, #0x10]
0051a4cc  18 30 8d e5                                      str r3, [sp, #0x18]
0051a4d0  07 00 a0 e1                                      mov r0, r7
0051a4d4  08 10 a0 e1                                      mov r1, r8
0051a4d8  d1 fb ff eb                                      bl #0x519424
0051a4dc  00 30 97 e5                                      ldr r3, [r7]
0051a4e0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051a4e4  03 30 87 e0                                      add r3, r7, r3
0051a4e8  08 30 93 e5                                      ldr r3, [r3, #8]
0051a4ec  00 00 53 e3                                      cmp r3, #0
0051a4f0  c5 ff ff 1a                                      bne #0x51a40c
0051a4f4  07 00 a0 e1                                      mov r0, r7
0051a4f8  85 fb ff eb                                      bl #0x519314
0051a4fc  3c 00 50 e3                                      cmp r0, #0x3c
0051a500  11 00 00 0a                                      beq #0x51a54c
0051a504  18 00 9d e5                                      ldr r0, [sp, #0x18]
0051a508  dc fa ff eb                                      bl #0x519080
0051a50c  18 00 9d e5                                      ldr r0, [sp, #0x18]
0051a510  07 10 a0 e1                                      mov r1, r7
0051a514  08 20 a0 e1                                      mov r2, r8
0051a518  07 fd ff eb                                      bl #0x51993c
0051a51c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0051a520  00 30 95 e7                                      ldr r3, [r5, r0]
0051a524  18 00 9d e5                                      ldr r0, [sp, #0x18]
0051a528  08 30 83 e2                                      add r3, r3, #8
0051a52c  28 30 8d e5                                      str r3, [sp, #0x28]
0051a530  5f e9 ff eb                                      bl #0x514ab4
0051a534  e5 ff ff ea                                      b #0x51a4d0
0051a538  f0 01 9f e5                                      ldr r0, [pc, #0x1f0]
0051a53c  00 00 8f e0                                      add r0, pc, r0
0051a540  5a ba 07 eb                                      bl #0x708eb0
0051a544  14 20 98 e5                                      ldr r2, [r8, #0x14]
0051a548  cb ff ff ea                                      b #0x51a47c
0051a54c  00 30 97 e5                                      ldr r3, [r7]
0051a550  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051a554  03 30 87 e0                                      add r3, r7, r3
0051a558  08 40 93 e5                                      ldr r4, [r3, #8]
0051a55c  00 00 54 e3                                      cmp r4, #0
0051a560  a9 ff ff 1a                                      bne #0x51a40c
0051a564  10 20 98 e5                                      ldr r2, [r8, #0x10]
0051a568  04 b0 a0 e1                                      mov fp, r4
0051a56c  20 20 8d e5                                      str r2, [sp, #0x20]
0051a570  14 30 98 e5                                      ldr r3, [r8, #0x14]
0051a574  0c 40 8d e5                                      str r4, [sp, #0xc]
0051a578  1c 30 8d e5                                      str r3, [sp, #0x1c]
0051a57c  00 00 54 e3                                      cmp r4, #0
0051a580  a1 ff ff 1a                                      bne #0x51a40c
0051a584  07 00 a0 e1                                      mov r0, r7
0051a588  61 fb ff eb                                      bl #0x519314
0051a58c  00 a0 50 e2                                      subs sl, r0, #0
0051a590  a4 ff ff da                                      ble #0x51a428
0051a594  3e 00 5a e3                                      cmp sl, #0x3e
0051a598  26 00 00 0a                                      beq #0x51a638
0051a59c  7a 90 ef e6                                      uxtb sb, sl
0051a5a0  79 40 af e6                                      sxtb r4, sb
0051a5a4  04 10 a0 e1                                      mov r1, r4
0051a5a8  08 00 a0 e1                                      mov r0, r8
0051a5ac  2a 3f f8 eb                                      bl #0x32a25c
0051a5b0  07 00 a0 e1                                      mov r0, r7
0051a5b4  42 fa ff eb                                      bl #0x518ec4
0051a5b8  5b 00 5a e3                                      cmp sl, #0x5b
0051a5bc  12 00 00 0a                                      beq #0x51a60c
0051a5c0  00 00 5b e3                                      cmp fp, #0
0051a5c4  0b 00 00 1a                                      bne #0x51a5f8
0051a5c8  3c 00 5a e3                                      cmp sl, #0x3c
0051a5cc  09 00 00 0a                                      beq #0x51a5f8
0051a5d0  ff 00 5a e3                                      cmp sl, #0xff
0051a5d4  2e 00 00 da                                      ble #0x51a694
0051a5d8  00 30 97 e5                                      ldr r3, [r7]
0051a5dc  01 b0 a0 e3                                      mov fp, #1
0051a5e0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051a5e4  03 30 87 e0                                      add r3, r7, r3
0051a5e8  08 40 93 e5                                      ldr r4, [r3, #8]
0051a5ec  00 00 54 e3                                      cmp r4, #0
0051a5f0  e3 ff ff 0a                                      beq #0x51a584
0051a5f4  84 ff ff ea                                      b #0x51a40c
0051a5f8  00 30 97 e5                                      ldr r3, [r7]
0051a5fc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051a600  03 30 87 e0                                      add r3, r7, r3
0051a604  08 40 93 e5                                      ldr r4, [r3, #8]
0051a608  db ff ff ea                                      b #0x51a57c
0051a60c  14 30 98 e5                                      ldr r3, [r8, #0x14]
0051a610  10 20 98 e5                                      ldr r2, [r8, #0x10]
0051a614  02 20 63 e0                                      rsb r2, r3, r2
0051a618  08 00 52 e3                                      cmp r2, #8
0051a61c  e7 ff ff 9a                                      bls #0x51a5c0
0051a620  09 20 42 e2                                      sub r2, r2, #9
0051a624  02 00 83 e0                                      add r0, r3, r2
0051a628  14 10 9d e5                                      ldr r1, [sp, #0x14]
0051a62c  3a cf f7 eb                                      bl #0x30e31c
0051a630  00 00 50 e3                                      cmp r0, #0
0051a634  e1 ff ff 1a                                      bne #0x51a5c0
0051a638  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0051a63c  00 00 53 e3                                      cmp r3, #0
0051a640  24 00 00 1a                                      bne #0x51a6d8
0051a644  20 00 9d e5                                      ldr r0, [sp, #0x20]
0051a648  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0051a64c  14 30 98 e5                                      ldr r3, [r8, #0x14]
0051a650  00 10 62 e0                                      rsb r1, r2, r0
0051a654  01 10 83 e0                                      add r1, r3, r1
0051a658  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0051a65c  08 00 9d e5                                      ldr r0, [sp, #8]
0051a660  2a fd ff eb                                      bl #0x519b10
0051a664  00 40 50 e2                                      subs r4, r0, #0
0051a668  67 ff ff 0a                                      beq #0x51a40c
0051a66c  00 30 94 e5                                      ldr r3, [r4]
0051a670  07 10 a0 e1                                      mov r1, r7
0051a674  08 20 a0 e1                                      mov r2, r8
0051a678  0f e0 a0 e1                                      mov lr, pc
0051a67c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0051a680  04 00 a0 e1                                      mov r0, r4
0051a684  00 30 94 e5                                      ldr r3, [r4]
0051a688  0f e0 a0 e1                                      mov lr, pc
0051a68c  04 f0 93 e5                                      ldr pc, [r3, #4]
0051a690  8e ff ff ea                                      b #0x51a4d0
0051a694  10 00 9d e5                                      ldr r0, [sp, #0x10]
0051a698  00 30 95 e7                                      ldr r3, [r5, r0]
0051a69c  00 30 93 e5                                      ldr r3, [r3]
0051a6a0  09 90 83 e0                                      add sb, r3, sb
0051a6a4  01 30 d9 e5                                      ldrb r3, [sb, #1]
0051a6a8  d3 31 e0 e7                                      ubfx r3, r3, #3, #1
0051a6ac  0a 00 54 e3                                      cmp r4, #0xa
0051a6b0  01 30 83 03                                      orreq r3, r3, #1
0051a6b4  00 00 53 e3                                      cmp r3, #0
0051a6b8  ce ff ff 1a                                      bne #0x51a5f8
0051a6bc  0d 00 54 e3                                      cmp r4, #0xd
0051a6c0  cc ff ff 0a                                      beq #0x51a5f8
0051a6c4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0051a6c8  2f 00 5a e3                                      cmp sl, #0x2f
0051a6cc  01 20 a0 03                                      moveq r2, #1
0051a6d0  0c 20 8d e5                                      str r2, [sp, #0xc]
0051a6d4  bf ff ff ea                                      b #0x51a5d8
0051a6d8  00 30 97 e5                                      ldr r3, [r7]
0051a6dc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051a6e0  03 30 87 e0                                      add r3, r7, r3
0051a6e4  08 40 93 e5                                      ldr r4, [r3, #8]
0051a6e8  00 00 54 e3                                      cmp r4, #0
0051a6ec  46 ff ff 1a                                      bne #0x51a40c
0051a6f0  07 00 a0 e1                                      mov r0, r7
0051a6f4  f2 f9 ff eb                                      bl #0x518ec4
0051a6f8  00 10 50 e2                                      subs r1, r0, #0
0051a6fc  49 ff ff da                                      ble #0x51a428
0051a700  08 00 a0 e1                                      mov r0, r8
0051a704  71 10 af e6                                      sxtb r1, r1
0051a708  d3 3e f8 eb                                      bl #0x32a25c
0051a70c  3e ff ff ea                                      b #0x51a40c
0051a710  fe ce f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0051a714  18 a7 47 00 ac 40 00 00 04 40 3a 00 bc 3f 3a 00  .byte 0x18, 0xa7, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0x04, 0x40, 0x3a, 0x00, 0xbc, 0x3f, 0x3a, 0x00
0051a724  f8 1c 3c 00 44 25 00 00 dc 1d 00 00 1c 3f 3a 00  .byte 0xf8, 0x1c, 0x3c, 0x00, 0x44, 0x25, 0x00, 0x00, 0xdc, 0x1d, 0x00, 0x00, 0x1c, 0x3f, 0x3a, 0x00
