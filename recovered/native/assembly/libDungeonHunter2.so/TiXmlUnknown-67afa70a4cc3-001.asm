; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005142c0, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlUnknown
; alias: _ZNK12TiXmlUnknown9ToUnknownEv
; demangled: TiXmlUnknown::ToUnknown() const
; decoder-mode: arm
005142c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005142c4, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlUnknown
; alias: _ZN12TiXmlUnknown9ToUnknownEv
; demangled: TiXmlUnknown::ToUnknown()
; decoder-mode: arm
005142c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005146f0, declared_size=32, range_size=32, mode=arm
; class-group: TiXmlUnknown
; alias: _ZNK12TiXmlUnknown6AcceptEP12TiXmlVisitor
; demangled: TiXmlUnknown::Accept(TiXmlVisitor*) const
; decoder-mode: arm
005146f0  10 40 2d e9                                      push {r4, lr}
005146f4  01 30 a0 e1                                      mov r3, r1
005146f8  00 10 a0 e1                                      mov r1, r0
005146fc  03 00 a0 e1                                      mov r0, r3
00514700  00 30 93 e5                                      ldr r3, [r3]
00514704  0f e0 a0 e1                                      mov lr, pc
00514708  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0051470c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00514b84, declared_size=52, range_size=52, mode=arm
; class-group: TiXmlUnknown
; alias: _ZN12TiXmlUnknownD1Ev
; demangled: TiXmlUnknown::~TiXmlUnknown()
; decoder-mode: arm
00514b84  24 30 9f e5                                      ldr r3, [pc, #0x24]
00514b88  24 20 9f e5                                      ldr r2, [pc, #0x24]
00514b8c  10 40 2d e9                                      push {r4, lr}
00514b90  03 30 8f e0                                      add r3, pc, r3
00514b94  02 20 93 e7                                      ldr r2, [r3, r2]
00514b98  00 40 a0 e1                                      mov r4, r0
00514b9c  08 20 82 e2                                      add r2, r2, #8
00514ba0  00 20 80 e5                                      str r2, [r0]
00514ba4  c2 ff ff eb                                      bl #0x514ab4
00514ba8  04 00 a0 e1                                      mov r0, r4
00514bac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00514bb0  00 ff 47 00 40 47 00 00                          .byte 0x00, 0xff, 0x47, 0x00, 0x40, 0x47, 0x00, 0x00

; FUNCTION 0x00515118, declared_size=76, range_size=76, mode=arm
; class-group: TiXmlUnknown
; alias: _ZNK12TiXmlUnknown5PrintEP7__sFILEi
; demangled: TiXmlUnknown::Print(__sFILE*, int) const
; decoder-mode: arm
00515118  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0051511c  00 60 52 e2                                      subs r6, r2, #0
00515120  00 70 a0 e1                                      mov r7, r0
00515124  01 50 a0 e1                                      mov r5, r1
00515128  06 00 00 da                                      ble #0x515148
0051512c  00 40 a0 e3                                      mov r4, #0
00515130  01 40 84 e2                                      add r4, r4, #1
00515134  09 00 a0 e3                                      mov r0, #9
00515138  05 10 a0 e1                                      mov r1, r5
0051513c  9e e6 f7 eb                                      bl #0x30ebbc
00515140  06 00 54 e1                                      cmp r4, r6
00515144  f9 ff ff 1a                                      bne #0x515130
00515148  10 10 9f e5                                      ldr r1, [pc, #0x10]
0051514c  34 20 97 e5                                      ldr r2, [r7, #0x34]
00515150  05 00 a0 e1                                      mov r0, r5
00515154  01 10 8f e0                                      add r1, pc, r1
00515158  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0051515c  a8 e3 f7 ea                                      b #0x30e004
; mapping-symbol data/literal pool
00515160  64 6f 3c 00                                      .byte 0x64, 0x6f, 0x3c, 0x00

; FUNCTION 0x00515b20, declared_size=60, range_size=60, mode=arm
; class-group: TiXmlUnknown
; alias: _ZN12TiXmlUnknownD0Ev
; demangled: TiXmlUnknown::~TiXmlUnknown()
; decoder-mode: arm
00515b20  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00515b24  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00515b28  10 40 2d e9                                      push {r4, lr}
00515b2c  03 30 8f e0                                      add r3, pc, r3
00515b30  02 20 93 e7                                      ldr r2, [r3, r2]
00515b34  00 40 a0 e1                                      mov r4, r0
00515b38  08 20 82 e2                                      add r2, r2, #8
00515b3c  00 20 80 e5                                      str r2, [r0]
00515b40  db fb ff eb                                      bl #0x514ab4
00515b44  04 00 a0 e1                                      mov r0, r4
00515b48  3c ea f7 eb                                      bl #0x310440
00515b4c  04 00 a0 e1                                      mov r0, r4
00515b50  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00515b54  64 ef 47 00 40 47 00 00                          .byte 0x64, 0xef, 0x47, 0x00, 0x40, 0x47, 0x00, 0x00

; FUNCTION 0x00516988, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlUnknown
; alias: _ZNK12TiXmlUnknown6CopyToEPS_
; demangled: TiXmlUnknown::CopyTo(TiXmlUnknown*) const
; decoder-mode: arm
00516988  f1 ff ff ea                                      b #0x516954

; FUNCTION 0x0051698c, declared_size=84, range_size=84, mode=arm
; class-group: TiXmlUnknown
; alias: _ZNK12TiXmlUnknown5CloneEv
; demangled: TiXmlUnknown::Clone() const
; decoder-mode: arm
0051698c  70 40 2d e9                                      push {r4, r5, r6, lr}
00516990  00 10 a0 e3                                      mov r1, #0
00516994  00 60 a0 e1                                      mov r6, r0
00516998  40 00 a0 e3                                      mov r0, #0x40
0051699c  f3 e6 f7 eb                                      bl #0x310570
005169a0  30 40 9f e5                                      ldr r4, [pc, #0x30]
005169a4  03 10 a0 e3                                      mov r1, #3
005169a8  00 50 a0 e1                                      mov r5, r0
005169ac  19 fd ff eb                                      bl #0x515e18
005169b0  24 30 9f e5                                      ldr r3, [pc, #0x24]
005169b4  04 40 8f e0                                      add r4, pc, r4
005169b8  06 00 a0 e1                                      mov r0, r6
005169bc  03 30 94 e7                                      ldr r3, [r4, r3]
005169c0  05 10 a0 e1                                      mov r1, r5
005169c4  08 30 83 e2                                      add r3, r3, #8
005169c8  00 30 85 e5                                      str r3, [r5]
005169cc  ed ff ff eb                                      bl #0x516988
005169d0  05 00 a0 e1                                      mov r0, r5
005169d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005169d8  dc e0 47 00 40 47 00 00                          .byte 0xdc, 0xe0, 0x47, 0x00, 0x40, 0x47, 0x00, 0x00

; FUNCTION 0x005196cc, declared_size=368, range_size=368, mode=arm
; class-group: TiXmlUnknown
; alias: _ZN12TiXmlUnknown5ParseEPKcP16TiXmlParsingData13TiXmlEncoding
; demangled: TiXmlUnknown::Parse(char const*, TiXmlParsingData*, TiXmlEncoding)
; decoder-mode: arm
005196cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005196d0  08 d0 4d e2                                      sub sp, sp, #8
005196d4  01 60 a0 e1                                      mov r6, r1
005196d8  03 40 a0 e1                                      mov r4, r3
005196dc  02 50 a0 e1                                      mov r5, r2
005196e0  00 70 a0 e1                                      mov r7, r0
005196e4  73 eb ff eb                                      bl #0x5144b8
005196e8  04 10 a0 e1                                      mov r1, r4
005196ec  00 80 a0 e1                                      mov r8, r0
005196f0  06 00 a0 e1                                      mov r0, r6
005196f4  23 fc ff eb                                      bl #0x518788
005196f8  00 00 55 e3                                      cmp r5, #0
005196fc  00 60 a0 e1                                      mov r6, r0
00519700  07 00 00 0a                                      beq #0x519724
00519704  05 00 a0 e1                                      mov r0, r5
00519708  06 10 a0 e1                                      mov r1, r6
0051970c  04 20 a0 e1                                      mov r2, r4
00519710  c0 fb ff eb                                      bl #0x518618
00519714  00 30 95 e5                                      ldr r3, [r5]
00519718  04 30 87 e5                                      str r3, [r7, #4]
0051971c  04 30 95 e5                                      ldr r3, [r5, #4]
00519720  08 30 87 e5                                      str r3, [r7, #8]
00519724  00 00 56 e3                                      cmp r6, #0
00519728  34 00 00 0a                                      beq #0x519800
0051972c  00 30 d6 e5                                      ldrb r3, [r6]
00519730  00 00 53 e3                                      cmp r3, #0
00519734  31 00 00 0a                                      beq #0x519800
00519738  3c 00 53 e3                                      cmp r3, #0x3c
0051973c  2f 00 00 1a                                      bne #0x519800
00519740  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
00519744  20 70 87 e2                                      add r7, r7, #0x20
00519748  01 50 86 e2                                      add r5, r6, #1
0051974c  01 10 8f e0                                      add r1, pc, r1
00519750  07 00 a0 e1                                      mov r0, r7
00519754  01 20 a0 e1                                      mov r2, r1
00519758  a0 dc f7 eb                                      bl #0x3109e0
0051975c  00 00 55 e3                                      cmp r5, #0
00519760  15 00 00 0a                                      beq #0x5197bc
00519764  01 30 d6 e5                                      ldrb r3, [r6, #1]
00519768  00 00 53 e3                                      cmp r3, #0
0051976c  0c 00 00 0a                                      beq #0x5197a4
00519770  73 10 af e6                                      sxtb r1, r3
00519774  3e 00 51 e3                                      cmp r1, #0x3e
00519778  06 50 a0 11                                      movne r5, r6
0051977c  09 00 00 0a                                      beq #0x5197a8
00519780  07 00 a0 e1                                      mov r0, r7
00519784  b4 42 f8 eb                                      bl #0x32a25c
00519788  02 00 75 e3                                      cmn r5, #2
0051978c  0a 00 00 0a                                      beq #0x5197bc
00519790  02 30 d5 e5                                      ldrb r3, [r5, #2]
00519794  00 00 53 e3                                      cmp r3, #0
00519798  73 10 af e6                                      sxtb r1, r3
0051979c  11 00 00 1a                                      bne #0x5197e8
005197a0  02 50 85 e2                                      add r5, r5, #2
005197a4  03 10 a0 e1                                      mov r1, r3
005197a8  3e 00 51 e3                                      cmp r1, #0x3e
005197ac  11 00 00 0a                                      beq #0x5197f8
005197b0  05 00 a0 e1                                      mov r0, r5
005197b4  08 d0 8d e2                                      add sp, sp, #8
005197b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005197bc  00 00 58 e3                                      cmp r8, #0
005197c0  19 00 00 0a                                      beq #0x51982c
005197c4  00 20 a0 e3                                      mov r2, #0
005197c8  0a 10 a0 e3                                      mov r1, #0xa
005197cc  08 00 a0 e1                                      mov r0, r8
005197d0  02 30 a0 e1                                      mov r3, r2
005197d4  00 50 a0 e3                                      mov r5, #0
005197d8  00 40 8d e5                                      str r4, [sp]
005197dc  41 ff ff eb                                      bl #0x5194e8
005197e0  d0 10 d5 e1                                      ldrsb r1, [r5]
005197e4  ef ff ff ea                                      b #0x5197a8
005197e8  3e 00 51 e3                                      cmp r1, #0x3e
005197ec  01 50 85 e2                                      add r5, r5, #1
005197f0  e2 ff ff 1a                                      bne #0x519780
005197f4  01 50 85 e2                                      add r5, r5, #1
005197f8  01 50 85 e2                                      add r5, r5, #1
005197fc  eb ff ff ea                                      b #0x5197b0
00519800  00 00 58 e3                                      cmp r8, #0
00519804  08 50 a0 01                                      moveq r5, r8
00519808  e8 ff ff 0a                                      beq #0x5197b0
0051980c  05 30 a0 e1                                      mov r3, r5
00519810  08 00 a0 e1                                      mov r0, r8
00519814  06 20 a0 e1                                      mov r2, r6
00519818  0a 10 a0 e3                                      mov r1, #0xa
0051981c  00 40 8d e5                                      str r4, [sp]
00519820  00 50 a0 e3                                      mov r5, #0
00519824  2f ff ff eb                                      bl #0x5194e8
00519828  e0 ff ff ea                                      b #0x5197b0
0051982c  08 50 a0 e1                                      mov r5, r8
00519830  d0 10 d8 e1                                      ldrsb r1, [r8]
00519834  db ff ff ea                                      b #0x5197a8
; mapping-symbol data/literal pool
00519838  bc 20 3b 00                                      .byte 0xbc, 0x20, 0x3b, 0x00

; FUNCTION 0x005198bc, declared_size=128, range_size=128, mode=arm
; class-group: TiXmlUnknown
; alias: _ZN12TiXmlUnknown8StreamInEPSiPSs
; demangled: TiXmlUnknown::StreamIn(std::basic_istream<char, std::char_traits<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*)
; decoder-mode: arm
005198bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005198c0  00 60 a0 e1                                      mov r6, r0
005198c4  08 d0 4d e2                                      sub sp, sp, #8
005198c8  01 50 a0 e1                                      mov r5, r1
005198cc  02 80 a0 e1                                      mov r8, r2
005198d0  00 30 95 e5                                      ldr r3, [r5]
005198d4  05 00 a0 e1                                      mov r0, r5
005198d8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005198dc  03 30 85 e0                                      add r3, r5, r3
005198e0  08 40 93 e5                                      ldr r4, [r3, #8]
005198e4  00 00 54 e3                                      cmp r4, #0
005198e8  07 00 00 1a                                      bne #0x51990c
005198ec  74 fd ff eb                                      bl #0x518ec4
005198f0  00 70 50 e2                                      subs r7, r0, #0
005198f4  77 10 af e6                                      sxtb r1, r7
005198f8  08 00 a0 e1                                      mov r0, r8
005198fc  04 00 00 da                                      ble #0x519914
00519900  55 42 f8 eb                                      bl #0x32a25c
00519904  3e 00 57 e3                                      cmp r7, #0x3e
00519908  f0 ff ff 1a                                      bne #0x5198d0
0051990c  08 d0 8d e2                                      add sp, sp, #8
00519910  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00519914  06 00 a0 e1                                      mov r0, r6
00519918  e6 ea ff eb                                      bl #0x5144b8
0051991c  00 00 50 e3                                      cmp r0, #0
00519920  f9 ff ff 0a                                      beq #0x51990c
00519924  04 20 a0 e1                                      mov r2, r4
00519928  0e 10 a0 e3                                      mov r1, #0xe
0051992c  04 30 a0 e1                                      mov r3, r4
00519930  00 40 8d e5                                      str r4, [sp]
00519934  eb fe ff eb                                      bl #0x5194e8
00519938  f3 ff ff ea                                      b #0x51990c
