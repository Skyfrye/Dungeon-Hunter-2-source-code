; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00518618, declared_size=368, range_size=368, mode=arm
; class-group: TiXmlParsingData
; alias: _ZN16TiXmlParsingData5StampEPKc13TiXmlEncoding
; demangled: TiXmlParsingData::Stamp(char const*, TiXmlEncoding)
; decoder-mode: arm
00518618  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051861c  0c 70 90 e5                                      ldr r7, [r0, #0xc]
00518620  58 61 9f e5                                      ldr r6, [pc, #0x158]
00518624  00 50 a0 e1                                      mov r5, r0
00518628  00 00 57 e3                                      cmp r7, #0
0051862c  01 40 a0 e1                                      mov r4, r1
00518630  06 60 8f e0                                      add r6, pc, r6
00518634  02 90 a0 e1                                      mov sb, r2
00518638  16 00 00 da                                      ble #0x518698
0051863c  08 80 90 e5                                      ldr r8, [r0, #8]
00518640  00 a0 90 e5                                      ldr sl, [r0]
00518644  04 00 90 e5                                      ldr r0, [r0, #4]
00518648  01 00 58 e1                                      cmp r8, r1
0051864c  0e 00 00 2a                                      bhs #0x51868c
00518650  2c b1 9f e5                                      ldr fp, [pc, #0x12c]
00518654  00 30 d8 e5                                      ldrb r3, [r8]
00518658  0a 00 53 e3                                      cmp r3, #0xa
0051865c  2d 00 00 0a                                      beq #0x518718
00518660  12 00 00 8a                                      bhi #0x5186b0
00518664  00 00 53 e3                                      cmp r3, #0
00518668  0a 00 00 0a                                      beq #0x518698
0051866c  09 00 53 e3                                      cmp r3, #9
00518670  09 00 00 0a                                      beq #0x51869c
00518674  01 00 59 e3                                      cmp sb, #1
00518678  2d 00 00 0a                                      beq #0x518734
0051867c  01 80 88 e2                                      add r8, r8, #1
00518680  01 00 80 e2                                      add r0, r0, #1
00518684  08 00 54 e1                                      cmp r4, r8
00518688  f1 ff ff 8a                                      bhi #0x518654
0051868c  08 80 85 e5                                      str r8, [r5, #8]
00518690  00 a0 85 e5                                      str sl, [r5]
00518694  04 00 85 e5                                      str r0, [r5, #4]
00518698  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051869c  07 10 a0 e1                                      mov r1, r7
005186a0  ff d6 f7 eb                                      bl #0x30e2a4
005186a4  01 80 88 e2                                      add r8, r8, #1
005186a8  90 77 20 e0                                      mla r0, r0, r7, r7
005186ac  f4 ff ff ea                                      b #0x518684
005186b0  0d 00 53 e3                                      cmp r3, #0xd
005186b4  11 00 00 0a                                      beq #0x518700
005186b8  ef 00 53 e3                                      cmp r3, #0xef
005186bc  ec ff ff 1a                                      bne #0x518674
005186c0  01 00 59 e3                                      cmp sb, #1
005186c4  ec ff ff 1a                                      bne #0x51867c
005186c8  d1 30 d8 e1                                      ldrsb r3, [r8, #1]
005186cc  00 00 53 e3                                      cmp r3, #0
005186d0  eb ff ff 0a                                      beq #0x518684
005186d4  d2 30 d8 e1                                      ldrsb r3, [r8, #2]
005186d8  00 00 53 e3                                      cmp r3, #0
005186dc  e8 ff ff 0a                                      beq #0x518684
005186e0  01 30 d8 e5                                      ldrb r3, [r8, #1]
005186e4  bb 00 53 e3                                      cmp r3, #0xbb
005186e8  18 00 00 0a                                      beq #0x518750
005186ec  bf 00 53 e3                                      cmp r3, #0xbf
005186f0  1b 00 00 0a                                      beq #0x518764
005186f4  03 80 88 e2                                      add r8, r8, #3
005186f8  01 00 80 e2                                      add r0, r0, #1
005186fc  e0 ff ff ea                                      b #0x518684
00518700  d1 30 f8 e1                                      ldrsb r3, [r8, #1]!
00518704  01 a0 8a e2                                      add sl, sl, #1
00518708  0a 00 53 e3                                      cmp r3, #0xa
0051870c  05 00 00 0a                                      beq #0x518728
00518710  00 00 a0 e3                                      mov r0, #0
00518714  da ff ff ea                                      b #0x518684
00518718  d1 30 f8 e1                                      ldrsb r3, [r8, #1]!
0051871c  01 a0 8a e2                                      add sl, sl, #1
00518720  0d 00 53 e3                                      cmp r3, #0xd
00518724  f9 ff ff 1a                                      bne #0x518710
00518728  01 80 88 e2                                      add r8, r8, #1
0051872c  00 00 a0 e3                                      mov r0, #0
00518730  d3 ff ff ea                                      b #0x518684
00518734  0b 20 96 e7                                      ldr r2, [r6, fp]
00518738  01 00 80 e2                                      add r0, r0, #1
0051873c  03 31 92 e7                                      ldr r3, [r2, r3, lsl #2]
00518740  00 00 53 e3                                      cmp r3, #0
00518744  01 30 a0 03                                      moveq r3, #1
00518748  03 80 88 e0                                      add r8, r8, r3
0051874c  cc ff ff ea                                      b #0x518684
00518750  02 30 d8 e5                                      ldrb r3, [r8, #2]
00518754  bf 00 53 e3                                      cmp r3, #0xbf
00518758  e5 ff ff 1a                                      bne #0x5186f4
0051875c  03 80 88 e2                                      add r8, r8, #3
00518760  c7 ff ff ea                                      b #0x518684
00518764  02 30 d8 e5                                      ldrb r3, [r8, #2]
00518768  be 00 53 e3                                      cmp r3, #0xbe
0051876c  fa ff ff 0a                                      beq #0x51875c
00518770  bf 00 53 e3                                      cmp r3, #0xbf
00518774  de ff ff 1a                                      bne #0x5186f4
00518778  03 80 88 e2                                      add r8, r8, #3
0051877c  c0 ff ff ea                                      b #0x518684
; mapping-symbol data/literal pool
00518780  60 c4 47 00 44 2a 00 00                          .byte 0x60, 0xc4, 0x47, 0x00, 0x44, 0x2a, 0x00, 0x00
