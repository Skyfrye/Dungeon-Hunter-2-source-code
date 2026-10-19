; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00514298, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlText
; alias: _ZNK9TiXmlText6ToTextEv
; demangled: TiXmlText::ToText() const
; decoder-mode: arm
00514298  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051429c, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlText
; alias: _ZN9TiXmlText6ToTextEv
; demangled: TiXmlText::ToText()
; decoder-mode: arm
0051429c  1e ff 2f e1                                      bx lr

; FUNCTION 0x005146b0, declared_size=32, range_size=32, mode=arm
; class-group: TiXmlText
; alias: _ZNK9TiXmlText6AcceptEP12TiXmlVisitor
; demangled: TiXmlText::Accept(TiXmlVisitor*) const
; decoder-mode: arm
005146b0  10 40 2d e9                                      push {r4, lr}
005146b4  01 30 a0 e1                                      mov r3, r1
005146b8  00 10 a0 e1                                      mov r1, r0
005146bc  03 00 a0 e1                                      mov r0, r3
005146c0  00 30 93 e5                                      ldr r3, [r3]
005146c4  0f e0 a0 e1                                      mov lr, pc
005146c8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005146cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00514b50, declared_size=52, range_size=52, mode=arm
; class-group: TiXmlText
; alias: _ZN9TiXmlTextD1Ev
; demangled: TiXmlText::~TiXmlText()
; decoder-mode: arm
00514b50  24 30 9f e5                                      ldr r3, [pc, #0x24]
00514b54  24 20 9f e5                                      ldr r2, [pc, #0x24]
00514b58  10 40 2d e9                                      push {r4, lr}
00514b5c  03 30 8f e0                                      add r3, pc, r3
00514b60  02 20 93 e7                                      ldr r2, [r3, r2]
00514b64  00 40 a0 e1                                      mov r4, r0
00514b68  08 20 82 e2                                      add r2, r2, #8
00514b6c  00 20 80 e5                                      str r2, [r0]
00514b70  cf ff ff eb                                      bl #0x514ab4
00514b74  04 00 a0 e1                                      mov r0, r4
00514b78  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00514b7c  34 ff 47 00 44 25 00 00                          .byte 0x34, 0xff, 0x47, 0x00, 0x44, 0x25, 0x00, 0x00

; FUNCTION 0x00515ae4, declared_size=60, range_size=60, mode=arm
; class-group: TiXmlText
; alias: _ZN9TiXmlTextD0Ev
; demangled: TiXmlText::~TiXmlText()
; decoder-mode: arm
00515ae4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00515ae8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00515aec  10 40 2d e9                                      push {r4, lr}
00515af0  03 30 8f e0                                      add r3, pc, r3
00515af4  02 20 93 e7                                      ldr r2, [r3, r2]
00515af8  00 40 a0 e1                                      mov r4, r0
00515afc  08 20 82 e2                                      add r2, r2, #8
00515b00  00 20 80 e5                                      str r2, [r0]
00515b04  ea fb ff eb                                      bl #0x514ab4
00515b08  04 00 a0 e1                                      mov r0, r4
00515b0c  4b ea f7 eb                                      bl #0x310440
00515b10  04 00 a0 e1                                      mov r0, r4
00515b14  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00515b18  a0 ef 47 00 44 25 00 00                          .byte 0xa0, 0xef, 0x47, 0x00, 0x44, 0x25, 0x00, 0x00

; FUNCTION 0x00516634, declared_size=232, range_size=232, mode=arm
; class-group: TiXmlText
; alias: _ZNK9TiXmlText5PrintEP7__sFILEi
; demangled: TiXmlText::Print(__sFILE*, int) const
; decoder-mode: arm
00516634  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00516638  d0 40 9f e5                                      ldr r4, [pc, #0xd0]
0051663c  d0 50 9f e5                                      ldr r5, [pc, #0xd0]
00516640  40 70 d0 e5                                      ldrb r7, [r0, #0x40]
00516644  04 40 8f e0                                      add r4, pc, r4
00516648  05 30 94 e7                                      ldr r3, [r4, r5]
0051664c  24 d0 4d e2                                      sub sp, sp, #0x24
00516650  00 00 57 e3                                      cmp r7, #0
00516654  00 30 93 e5                                      ldr r3, [r3]
00516658  00 60 a0 e1                                      mov r6, r0
0051665c  02 a0 a0 e1                                      mov sl, r2
00516660  01 80 a0 e1                                      mov r8, r1
00516664  1c 30 8d e5                                      str r3, [sp, #0x1c]
00516668  16 00 00 0a                                      beq #0x5166c8
0051666c  0a 00 a0 e3                                      mov r0, #0xa
00516670  51 e1 f7 eb                                      bl #0x30ebbc
00516674  00 00 5a e3                                      cmp sl, #0
00516678  06 00 00 da                                      ble #0x516698
0051667c  00 70 a0 e3                                      mov r7, #0
00516680  01 70 87 e2                                      add r7, r7, #1
00516684  09 00 a0 e3                                      mov r0, #9
00516688  08 10 a0 e1                                      mov r1, r8
0051668c  4a e1 f7 eb                                      bl #0x30ebbc
00516690  0a 00 57 e1                                      cmp r7, sl
00516694  f9 ff ff 1a                                      bne #0x516680
00516698  78 10 9f e5                                      ldr r1, [pc, #0x78]
0051669c  08 00 a0 e1                                      mov r0, r8
005166a0  34 20 96 e5                                      ldr r2, [r6, #0x34]
005166a4  01 10 8f e0                                      add r1, pc, r1
005166a8  55 de f7 eb                                      bl #0x30e004
005166ac  05 30 94 e7                                      ldr r3, [r4, r5]
005166b0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005166b4  00 30 93 e5                                      ldr r3, [r3]
005166b8  03 00 52 e1                                      cmp r2, r3
005166bc  12 00 00 1a                                      bne #0x51670c
005166c0  24 d0 8d e2                                      add sp, sp, #0x24
005166c4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005166c8  04 a0 8d e2                                      add sl, sp, #4
005166cc  0a 00 a0 e1                                      mov r0, sl
005166d0  10 10 a0 e3                                      mov r1, #0x10
005166d4  14 a0 8d e5                                      str sl, [sp, #0x14]
005166d8  18 a0 8d e5                                      str sl, [sp, #0x18]
005166dc  e6 eb f7 eb                                      bl #0x31167c
005166e0  14 30 9d e5                                      ldr r3, [sp, #0x14]
005166e4  20 00 86 e2                                      add r0, r6, #0x20
005166e8  0a 10 a0 e1                                      mov r1, sl
005166ec  00 70 c3 e5                                      strb r7, [r3]
005166f0  73 fb ff eb                                      bl #0x5154c4
005166f4  08 10 a0 e1                                      mov r1, r8
005166f8  18 00 9d e5                                      ldr r0, [sp, #0x18]
005166fc  4c e1 f7 eb                                      bl #0x30ec34
00516700  0a 00 a0 e1                                      mov r0, sl
00516704  a8 f4 f7 eb                                      bl #0x3139ac
00516708  e7 ff ff ea                                      b #0x5166ac
0051670c  ff de f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00516710  4c e4 47 00 ac 40 00 00 5c 5a 3c 00              .byte 0x4c, 0xe4, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0x5c, 0x5a, 0x3c, 0x00

; FUNCTION 0x005169e0, declared_size=28, range_size=28, mode=arm
; class-group: TiXmlText
; alias: _ZNK9TiXmlText6CopyToEPS_
; demangled: TiXmlText::CopyTo(TiXmlText*) const
; decoder-mode: arm
005169e0  70 40 2d e9                                      push {r4, r5, r6, lr}
005169e4  00 50 a0 e1                                      mov r5, r0
005169e8  01 40 a0 e1                                      mov r4, r1
005169ec  d8 ff ff eb                                      bl #0x516954
005169f0  40 30 d5 e5                                      ldrb r3, [r5, #0x40]
005169f4  40 30 c4 e5                                      strb r3, [r4, #0x40]
005169f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0051756c, declared_size=116, range_size=116, mode=arm
; class-group: TiXmlText
; alias: _ZNK9TiXmlText5CloneEv
; demangled: TiXmlText::Clone() const
; decoder-mode: arm
0051756c  70 40 2d e9                                      push {r4, r5, r6, lr}
00517570  00 10 a0 e3                                      mov r1, #0
00517574  00 60 a0 e1                                      mov r6, r0
00517578  44 00 a0 e3                                      mov r0, #0x44
0051757c  fb e3 f7 eb                                      bl #0x310570
00517580  4c 50 9f e5                                      ldr r5, [pc, #0x4c]
00517584  04 10 a0 e3                                      mov r1, #4
00517588  00 40 a0 e1                                      mov r4, r0
0051758c  21 fa ff eb                                      bl #0x515e18
00517590  40 30 9f e5                                      ldr r3, [pc, #0x40]
00517594  05 50 8f e0                                      add r5, pc, r5
00517598  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0051759c  03 30 95 e7                                      ldr r3, [r5, r3]
005175a0  04 00 a0 e1                                      mov r0, r4
005175a4  01 10 8f e0                                      add r1, pc, r1
005175a8  08 30 83 e2                                      add r3, r3, #8
005175ac  01 20 a0 e1                                      mov r2, r1
005175b0  20 30 80 e4                                      str r3, [r0], #0x20
005175b4  09 e5 f7 eb                                      bl #0x3109e0
005175b8  00 30 a0 e3                                      mov r3, #0
005175bc  06 00 a0 e1                                      mov r0, r6
005175c0  40 30 c4 e5                                      strb r3, [r4, #0x40]
005175c4  04 10 a0 e1                                      mov r1, r4
005175c8  04 fd ff eb                                      bl #0x5169e0
005175cc  04 00 a0 e1                                      mov r0, r4
005175d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005175d4  fc d4 47 00 44 25 00 00 64 42 3b 00              .byte 0xfc, 0xd4, 0x47, 0x00, 0x44, 0x25, 0x00, 0x00, 0x64, 0x42, 0x3b, 0x00

; FUNCTION 0x00518990, declared_size=124, range_size=124, mode=arm
; class-group: TiXmlText
; alias: _ZNK9TiXmlText5BlankEv
; demangled: TiXmlText::Blank() const
; decoder-mode: arm
00518990  30 00 2d e9                                      push {r4, r5}
00518994  30 50 90 e5                                      ldr r5, [r0, #0x30]
00518998  34 c0 90 e5                                      ldr ip, [r0, #0x34]
0051899c  60 20 9f e5                                      ldr r2, [pc, #0x60]
005189a0  0c 50 55 e0                                      subs r5, r5, ip
005189a4  02 20 8f e0                                      add r2, pc, r2
005189a8  13 00 00 0a                                      beq #0x5189fc
005189ac  54 10 9f e5                                      ldr r1, [pc, #0x54]
005189b0  00 30 a0 e3                                      mov r3, #0
005189b4  01 20 92 e7                                      ldr r2, [r2, r1]
005189b8  00 40 92 e5                                      ldr r4, [r2]
005189bc  03 20 dc e7                                      ldrb r2, [ip, r3]
005189c0  01 30 83 e2                                      add r3, r3, #1
005189c4  02 10 84 e0                                      add r1, r4, r2
005189c8  01 00 d1 e5                                      ldrb r0, [r1, #1]
005189cc  72 20 af e6                                      sxtb r2, r2
005189d0  d0 01 e0 e7                                      ubfx r0, r0, #3, #1
005189d4  0a 00 52 e3                                      cmp r2, #0xa
005189d8  01 00 80 03                                      orreq r0, r0, #1
005189dc  00 00 50 e3                                      cmp r0, #0
005189e0  03 00 00 1a                                      bne #0x5189f4
005189e4  0d 00 52 e3                                      cmp r2, #0xd
005189e8  01 00 00 0a                                      beq #0x5189f4
005189ec  30 00 bd e8                                      pop {r4, r5}
005189f0  1e ff 2f e1                                      bx lr
005189f4  05 00 53 e1                                      cmp r3, r5
005189f8  ef ff ff 1a                                      bne #0x5189bc
005189fc  01 00 a0 e3                                      mov r0, #1
00518a00  f9 ff ff ea                                      b #0x5189ec
; mapping-symbol data/literal pool
00518a04  ec c0 47 00 dc 1d 00 00                          .byte 0xec, 0xc0, 0x47, 0x00, 0xdc, 0x1d, 0x00, 0x00

; FUNCTION 0x00519080, declared_size=88, range_size=88, mode=arm
; class-group: TiXmlText
; alias: _ZN9TiXmlTextC1EPKc.clone.1
; demangled: TiXmlText::TiXmlText(char const*) [clone .clone.1]
; decoder-mode: arm
00519080  70 40 2d e9                                      push {r4, r5, r6, lr}
00519084  04 10 a0 e3                                      mov r1, #4
00519088  3c 40 9f e5                                      ldr r4, [pc, #0x3c]
0051908c  00 50 a0 e1                                      mov r5, r0
00519090  60 f3 ff eb                                      bl #0x515e18
00519094  34 30 9f e5                                      ldr r3, [pc, #0x34]
00519098  04 40 8f e0                                      add r4, pc, r4
0051909c  30 10 9f e5                                      ldr r1, [pc, #0x30]
005190a0  03 30 94 e7                                      ldr r3, [r4, r3]
005190a4  05 00 a0 e1                                      mov r0, r5
005190a8  01 10 8f e0                                      add r1, pc, r1
005190ac  08 30 83 e2                                      add r3, r3, #8
005190b0  20 30 80 e4                                      str r3, [r0], #0x20
005190b4  01 20 a0 e1                                      mov r2, r1
005190b8  48 de f7 eb                                      bl #0x3109e0
005190bc  00 30 a0 e3                                      mov r3, #0
005190c0  40 30 c5 e5                                      strb r3, [r5, #0x40]
005190c4  05 00 a0 e1                                      mov r0, r5
005190c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005190cc  f8 b9 47 00 44 25 00 00 60 27 3b 00              .byte 0xf8, 0xb9, 0x47, 0x00, 0x44, 0x25, 0x00, 0x00, 0x60, 0x27, 0x3b, 0x00

; FUNCTION 0x0051993c, declared_size=224, range_size=224, mode=arm
; class-group: TiXmlText
; alias: _ZN9TiXmlText8StreamInEPSiPSs
; demangled: TiXmlText::StreamIn(std::basic_istream<char, std::char_traits<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*)
; decoder-mode: arm
0051993c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00519940  00 50 a0 e1                                      mov r5, r0
00519944  0c d0 4d e2                                      sub sp, sp, #0xc
00519948  01 40 a0 e1                                      mov r4, r1
0051994c  02 70 a0 e1                                      mov r7, r2
00519950  00 30 94 e5                                      ldr r3, [r4]
00519954  04 00 a0 e1                                      mov r0, r4
00519958  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051995c  03 30 84 e0                                      add r3, r4, r3
00519960  08 30 93 e5                                      ldr r3, [r3, #8]
00519964  00 00 53 e3                                      cmp r3, #0
00519968  1e 00 00 1a                                      bne #0x5199e8
0051996c  68 fe ff eb                                      bl #0x519314
00519970  40 30 d5 e5                                      ldrb r3, [r5, #0x40]
00519974  00 60 a0 e1                                      mov r6, r0
00519978  70 10 af e6                                      sxtb r1, r0
0051997c  00 00 53 e3                                      cmp r3, #0
00519980  07 00 a0 e1                                      mov r0, r7
00519984  01 00 00 1a                                      bne #0x519990
00519988  3c 00 56 e3                                      cmp r6, #0x3c
0051998c  15 00 00 0a                                      beq #0x5199e8
00519990  00 00 56 e3                                      cmp r6, #0
00519994  15 00 00 da                                      ble #0x5199f0
00519998  2f 42 f8 eb                                      bl #0x32a25c
0051999c  04 00 a0 e1                                      mov r0, r4
005199a0  47 fd ff eb                                      bl #0x518ec4
005199a4  40 30 d5 e5                                      ldrb r3, [r5, #0x40]
005199a8  00 00 53 e3                                      cmp r3, #0
005199ac  e7 ff ff 0a                                      beq #0x519950
005199b0  3e 00 56 e3                                      cmp r6, #0x3e
005199b4  e5 ff ff 1a                                      bne #0x519950
005199b8  14 20 97 e5                                      ldr r2, [r7, #0x14]
005199bc  10 30 97 e5                                      ldr r3, [r7, #0x10]
005199c0  03 30 62 e0                                      rsb r3, r2, r3
005199c4  02 00 53 e3                                      cmp r3, #2
005199c8  03 20 82 e0                                      add r2, r2, r3
005199cc  df ff ff 9a                                      bls #0x519950
005199d0  d2 30 52 e1                                      ldrsb r3, [r2, #-2]
005199d4  5d 00 53 e3                                      cmp r3, #0x5d
005199d8  dc ff ff 1a                                      bne #0x519950
005199dc  d3 30 52 e1                                      ldrsb r3, [r2, #-3]
005199e0  5d 00 53 e3                                      cmp r3, #0x5d
005199e4  d9 ff ff 1a                                      bne #0x519950
005199e8  0c d0 8d e2                                      add sp, sp, #0xc
005199ec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005199f0  05 00 a0 e1                                      mov r0, r5
005199f4  af ea ff eb                                      bl #0x5144b8
005199f8  00 00 50 e3                                      cmp r0, #0
005199fc  f9 ff ff 0a                                      beq #0x5199e8
00519a00  00 c0 a0 e3                                      mov ip, #0
00519a04  0c 20 a0 e1                                      mov r2, ip
00519a08  0e 10 a0 e3                                      mov r1, #0xe
00519a0c  0c 30 a0 e1                                      mov r3, ip
00519a10  00 c0 8d e5                                      str ip, [sp]
00519a14  b3 fe ff eb                                      bl #0x5194e8
00519a18  f2 ff ff ea                                      b #0x5199e8

; FUNCTION 0x0051ab30, declared_size=520, range_size=520, mode=arm
; class-group: TiXmlText
; alias: _ZN9TiXmlText5ParseEPKcP16TiXmlParsingData13TiXmlEncoding
; demangled: TiXmlText::Parse(char const*, TiXmlParsingData*, TiXmlEncoding)
; decoder-mode: arm
0051ab30  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051ab34  dc 51 9f e5                                      ldr r5, [pc, #0x1dc]
0051ab38  dc 91 9f e5                                      ldr sb, [pc, #0x1dc]
0051ab3c  dc e1 9f e5                                      ldr lr, [pc, #0x1dc]
0051ab40  05 50 8f e0                                      add r5, pc, r5
0051ab44  09 c0 95 e7                                      ldr ip, [r5, sb]
0051ab48  0e e0 8f e0                                      add lr, pc, lr
0051ab4c  20 a0 80 e2                                      add sl, r0, #0x20
0051ab50  00 c0 9c e5                                      ldr ip, [ip]
0051ab54  2c d0 4d e2                                      sub sp, sp, #0x2c
0051ab58  00 60 a0 e1                                      mov r6, r0
0051ab5c  02 70 a0 e1                                      mov r7, r2
0051ab60  01 80 a0 e1                                      mov r8, r1
0051ab64  0e 20 a0 e1                                      mov r2, lr
0051ab68  0e 10 a0 e1                                      mov r1, lr
0051ab6c  0a 00 a0 e1                                      mov r0, sl
0051ab70  24 c0 8d e5                                      str ip, [sp, #0x24]
0051ab74  03 40 a0 e1                                      mov r4, r3
0051ab78  98 d7 f7 eb                                      bl #0x3109e0
0051ab7c  06 00 a0 e1                                      mov r0, r6
0051ab80  4c e6 ff eb                                      bl #0x5144b8
0051ab84  00 00 57 e3                                      cmp r7, #0
0051ab88  00 b0 a0 e1                                      mov fp, r0
0051ab8c  07 00 00 0a                                      beq #0x51abb0
0051ab90  07 00 a0 e1                                      mov r0, r7
0051ab94  08 10 a0 e1                                      mov r1, r8
0051ab98  04 20 a0 e1                                      mov r2, r4
0051ab9c  9d f6 ff eb                                      bl #0x518618
0051aba0  00 30 97 e5                                      ldr r3, [r7]
0051aba4  04 30 86 e5                                      str r3, [r6, #4]
0051aba8  04 30 97 e5                                      ldr r3, [r7, #4]
0051abac  08 30 86 e5                                      str r3, [r6, #8]
0051abb0  40 20 d6 e5                                      ldrb r2, [r6, #0x40]
0051abb4  00 00 52 e3                                      cmp r2, #0
0051abb8  2a 00 00 0a                                      beq #0x51ac68
0051abbc  60 11 9f e5                                      ldr r1, [pc, #0x160]
0051abc0  01 30 a0 e3                                      mov r3, #1
0051abc4  40 30 c6 e5                                      strb r3, [r6, #0x40]
0051abc8  01 10 8f e0                                      add r1, pc, r1
0051abcc  08 00 a0 e1                                      mov r0, r8
0051abd0  00 20 a0 e3                                      mov r2, #0
0051abd4  04 30 a0 e1                                      mov r3, r4
0051abd8  2f f7 ff eb                                      bl #0x51889c
0051abdc  00 60 50 e2                                      subs r6, r0, #0
0051abe0  44 00 00 0a                                      beq #0x51acf8
0051abe4  09 60 98 e2                                      adds r6, r8, #9
0051abe8  02 00 00 0a                                      beq #0x51abf8
0051abec  d9 30 d8 e1                                      ldrsb r3, [r8, #9]
0051abf0  00 00 53 e3                                      cmp r3, #0
0051abf4  2d 00 00 1a                                      bne #0x51acb0
0051abf8  0c 70 8d e2                                      add r7, sp, #0xc
0051abfc  07 00 a0 e1                                      mov r0, r7
0051ac00  10 10 a0 e3                                      mov r1, #0x10
0051ac04  1c 70 8d e5                                      str r7, [sp, #0x1c]
0051ac08  20 70 8d e5                                      str r7, [sp, #0x20]
0051ac0c  9a da f7 eb                                      bl #0x31167c
0051ac10  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0051ac14  00 c0 a0 e3                                      mov ip, #0
0051ac18  06 00 a0 e1                                      mov r0, r6
0051ac1c  00 c0 c3 e5                                      strb ip, [r3]
0051ac20  00 31 9f e5                                      ldr r3, [pc, #0x100]
0051ac24  0c 20 a0 e1                                      mov r2, ip
0051ac28  07 10 a0 e1                                      mov r1, r7
0051ac2c  03 30 8f e0                                      add r3, pc, r3
0051ac30  04 40 8d e5                                      str r4, [sp, #4]
0051ac34  00 c0 8d e5                                      str ip, [sp]
0051ac38  26 f9 ff eb                                      bl #0x5190d8
0051ac3c  00 60 a0 e1                                      mov r6, r0
0051ac40  07 00 a0 e1                                      mov r0, r7
0051ac44  58 e3 f7 eb                                      bl #0x3139ac
0051ac48  09 30 95 e7                                      ldr r3, [r5, sb]
0051ac4c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0051ac50  06 00 a0 e1                                      mov r0, r6
0051ac54  00 30 93 e5                                      ldr r3, [r3]
0051ac58  03 00 52 e1                                      cmp r2, r3
0051ac5c  2c 00 00 1a                                      bne #0x51ad14
0051ac60  2c d0 8d e2                                      add sp, sp, #0x2c
0051ac64  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051ac68  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
0051ac6c  08 00 a0 e1                                      mov r0, r8
0051ac70  04 30 a0 e1                                      mov r3, r4
0051ac74  01 10 8f e0                                      add r1, pc, r1
0051ac78  07 f7 ff eb                                      bl #0x51889c
0051ac7c  00 c0 50 e2                                      subs ip, r0, #0
0051ac80  cd ff ff 1a                                      bne #0x51abbc
0051ac84  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0051ac88  08 00 a0 e1                                      mov r0, r8
0051ac8c  0a 10 a0 e1                                      mov r1, sl
0051ac90  03 30 8f e0                                      add r3, pc, r3
0051ac94  01 20 a0 e3                                      mov r2, #1
0051ac98  00 c0 8d e5                                      str ip, [sp]
0051ac9c  04 40 8d e5                                      str r4, [sp, #4]
0051aca0  0c f9 ff eb                                      bl #0x5190d8
0051aca4  00 60 50 e2                                      subs r6, r0, #0
0051aca8  01 60 46 12                                      subne r6, r6, #1
0051acac  e5 ff ff ea                                      b #0x51ac48
0051acb0  7c 70 9f e5                                      ldr r7, [pc, #0x7c]
0051acb4  07 70 8f e0                                      add r7, pc, r7
0051acb8  06 00 a0 e1                                      mov r0, r6
0051acbc  07 10 a0 e1                                      mov r1, r7
0051acc0  00 20 a0 e3                                      mov r2, #0
0051acc4  04 30 a0 e1                                      mov r3, r4
0051acc8  f3 f6 ff eb                                      bl #0x51889c
0051accc  00 00 50 e3                                      cmp r0, #0
0051acd0  c8 ff ff 1a                                      bne #0x51abf8
0051acd4  d1 10 d6 e0                                      ldrsb r1, [r6], #1
0051acd8  0a 00 a0 e1                                      mov r0, sl
0051acdc  5e 3d f8 eb                                      bl #0x32a25c
0051ace0  00 00 56 e3                                      cmp r6, #0
0051ace4  c3 ff ff 0a                                      beq #0x51abf8
0051ace8  d0 30 d6 e1                                      ldrsb r3, [r6]
0051acec  00 00 53 e3                                      cmp r3, #0
0051acf0  c0 ff ff 0a                                      beq #0x51abf8
0051acf4  ef ff ff ea                                      b #0x51acb8
0051acf8  0b 00 a0 e1                                      mov r0, fp
0051acfc  08 20 a0 e1                                      mov r2, r8
0051ad00  07 30 a0 e1                                      mov r3, r7
0051ad04  0f 10 a0 e3                                      mov r1, #0xf
0051ad08  00 40 8d e5                                      str r4, [sp]
0051ad0c  f5 f9 ff eb                                      bl #0x5194e8
0051ad10  cc ff ff ea                                      b #0x51ac48
0051ad14  7d cd f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0051ad18  50 9f 47 00 ac 40 00 00 c0 0c 3b 00 e8 15 3c 00  .byte 0x50, 0x9f, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x0c, 0x3b, 0x00, 0xe8, 0x15, 0x3c, 0x00
0051ad28  94 15 3c 00 3c 15 3c 00 80 14 3c 00 0c 15 3c 00  .byte 0x94, 0x15, 0x3c, 0x00, 0x3c, 0x15, 0x3c, 0x00, 0x80, 0x14, 0x3c, 0x00, 0x0c, 0x15, 0x3c, 0x00
