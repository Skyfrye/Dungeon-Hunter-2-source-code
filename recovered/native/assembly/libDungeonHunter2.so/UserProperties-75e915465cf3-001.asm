; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00318178, declared_size=96, range_size=96, mode=arm
; class-group: UserProperties
; alias: _ZN14UserPropertiesD1Ev
; demangled: UserProperties::~UserProperties()
; decoder-mode: arm
00318178  70 40 2d e9                                      push {r4, r5, r6, lr}
0031817c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00318180  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00318184  14 10 90 e5                                      ldr r1, [r0, #0x14]
00318188  03 30 8f e0                                      add r3, pc, r3
0031818c  02 20 93 e7                                      ldr r2, [r3, r2]
00318190  00 00 51 e3                                      cmp r1, #0
00318194  00 40 a0 e1                                      mov r4, r0
00318198  08 20 82 e2                                      add r2, r2, #8
0031819c  00 20 80 e5                                      str r2, [r0]
003181a0  08 00 00 0a                                      beq #0x3181c8
003181a4  04 50 80 e2                                      add r5, r0, #4
003181a8  05 00 a0 e1                                      mov r0, r5
003181ac  08 10 94 e5                                      ldr r1, [r4, #8]
003181b0  c3 ff ff eb                                      bl #0x3180c4
003181b4  00 30 a0 e3                                      mov r3, #0
003181b8  10 50 84 e5                                      str r5, [r4, #0x10]
003181bc  14 30 84 e5                                      str r3, [r4, #0x14]
003181c0  0c 50 84 e5                                      str r5, [r4, #0xc]
003181c4  08 30 84 e5                                      str r3, [r4, #8]
003181c8  04 00 a0 e1                                      mov r0, r4
003181cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003181d0  08 c9 67 00 10 28 00 00                          .byte 0x08, 0xc9, 0x67, 0x00, 0x10, 0x28, 0x00, 0x00

; FUNCTION 0x003181d8, declared_size=28, range_size=28, mode=arm
; class-group: UserProperties
; alias: _ZN14UserPropertiesD0Ev
; demangled: UserProperties::~UserProperties()
; decoder-mode: arm
003181d8  10 40 2d e9                                      push {r4, lr}
003181dc  00 40 a0 e1                                      mov r4, r0
003181e0  e4 ff ff eb                                      bl #0x318178
003181e4  04 00 a0 e1                                      mov r0, r4
003181e8  94 e0 ff eb                                      bl #0x310440
003181ec  04 00 a0 e1                                      mov r0, r4
003181f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003181f4, declared_size=96, range_size=96, mode=arm
; class-group: UserProperties
; alias: _ZN14UserPropertiesD2Ev
; demangled: UserProperties::~UserProperties()
; decoder-mode: arm
003181f4  70 40 2d e9                                      push {r4, r5, r6, lr}
003181f8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003181fc  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00318200  14 10 90 e5                                      ldr r1, [r0, #0x14]
00318204  03 30 8f e0                                      add r3, pc, r3
00318208  02 20 93 e7                                      ldr r2, [r3, r2]
0031820c  00 00 51 e3                                      cmp r1, #0
00318210  00 40 a0 e1                                      mov r4, r0
00318214  08 20 82 e2                                      add r2, r2, #8
00318218  00 20 80 e5                                      str r2, [r0]
0031821c  08 00 00 0a                                      beq #0x318244
00318220  04 50 80 e2                                      add r5, r0, #4
00318224  05 00 a0 e1                                      mov r0, r5
00318228  08 10 94 e5                                      ldr r1, [r4, #8]
0031822c  a4 ff ff eb                                      bl #0x3180c4
00318230  00 30 a0 e3                                      mov r3, #0
00318234  10 50 84 e5                                      str r5, [r4, #0x10]
00318238  14 30 84 e5                                      str r3, [r4, #0x14]
0031823c  0c 50 84 e5                                      str r5, [r4, #0xc]
00318240  08 30 84 e5                                      str r3, [r4, #8]
00318244  04 00 a0 e1                                      mov r0, r4
00318248  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0031824c  8c c8 67 00 10 28 00 00                          .byte 0x8c, 0xc8, 0x67, 0x00, 0x10, 0x28, 0x00, 0x00

; FUNCTION 0x00318e18, declared_size=68, range_size=68, mode=arm
; class-group: UserProperties
; alias: _ZN14UserProperties11AddPropertyEPKcS1_
; demangled: UserProperties::AddProperty(char const*, char const*)
; decoder-mode: arm
00318e18  30 40 2d e9                                      push {r4, r5, lr}
00318e1c  0c d0 4d e2                                      sub sp, sp, #0xc
00318e20  08 30 8d e2                                      add r3, sp, #8
00318e24  04 10 23 e5                                      str r1, [r3, #-4]!
00318e28  03 10 a0 e1                                      mov r1, r3
00318e2c  04 00 80 e2                                      add r0, r0, #4
00318e30  02 40 a0 e1                                      mov r4, r2
00318e34  9e ff ff eb                                      bl #0x318cb4
00318e38  00 50 a0 e1                                      mov r5, r0
00318e3c  04 00 a0 e1                                      mov r0, r4
00318e40  03 d4 ff eb                                      bl #0x30de54
00318e44  04 10 a0 e1                                      mov r1, r4
00318e48  00 20 84 e0                                      add r2, r4, r0
00318e4c  05 00 a0 e1                                      mov r0, r5
00318e50  e2 de ff eb                                      bl #0x3109e0
00318e54  0c d0 8d e2                                      add sp, sp, #0xc
00318e58  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00318e5c, declared_size=392, range_size=392, mode=arm
; class-group: UserProperties
; alias: _ZN14UserProperties14_ParseKeyValueEPcS0_
; demangled: UserProperties::_ParseKeyValue(char*, char*)
; decoder-mode: arm
00318e5c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00318e60  00 30 d1 e5                                      ldrb r3, [r1]
00318e64  68 c1 9f e5                                      ldr ip, [pc, #0x168]
00318e68  00 70 a0 e1                                      mov r7, r0
00318e6c  00 00 53 e3                                      cmp r3, #0
00318e70  0c c0 8f e0                                      add ip, pc, ip
00318e74  02 a0 a0 e1                                      mov sl, r2
00318e78  41 00 00 0a                                      beq #0x318f84
00318e7c  54 21 9f e5                                      ldr r2, [pc, #0x154]
00318e80  01 80 a0 e1                                      mov r8, r1
00318e84  02 20 9c e7                                      ldr r2, [ip, r2]
00318e88  00 00 92 e5                                      ldr r0, [r2]
00318e8c  73 20 af e6                                      sxtb r2, r3
00318e90  01 00 72 e3                                      cmn r2, #1
00318e94  72 10 e0 e6                                      uxtab r1, r0, r2
00318e98  3a 00 00 0a                                      beq #0x318f88
00318e9c  01 20 d1 e5                                      ldrb r2, [r1, #1]
00318ea0  07 00 12 e3                                      tst r2, #7
00318ea4  37 00 00 0a                                      beq #0x318f88
00318ea8  00 00 53 e3                                      cmp r3, #0
00318eac  34 00 00 0a                                      beq #0x318f84
00318eb0  01 40 d8 e5                                      ldrb r4, [r8, #1]
00318eb4  01 50 88 e2                                      add r5, r8, #1
00318eb8  00 00 54 e3                                      cmp r4, #0
00318ebc  13 00 00 0a                                      beq #0x318f10
00318ec0  74 30 af e6                                      sxtb r3, r4
00318ec4  01 00 73 e3                                      cmn r3, #1
00318ec8  10 00 00 0a                                      beq #0x318f10
00318ecc  73 30 e0 e6                                      uxtab r3, r0, r3
00318ed0  01 30 d3 e5                                      ldrb r3, [r3, #1]
00318ed4  07 00 13 e3                                      tst r3, #7
00318ed8  08 50 a0 11                                      movne r5, r8
00318edc  0b 00 00 0a                                      beq #0x318f10
00318ee0  02 40 d5 e5                                      ldrb r4, [r5, #2]
00318ee4  00 00 54 e3                                      cmp r4, #0
00318ee8  74 30 af e6                                      sxtb r3, r4
00318eec  29 00 00 0a                                      beq #0x318f98
00318ef0  01 00 73 e3                                      cmn r3, #1
00318ef4  73 20 e0 e6                                      uxtab r2, r0, r3
00318ef8  26 00 00 0a                                      beq #0x318f98
00318efc  01 30 d2 e5                                      ldrb r3, [r2, #1]
00318f00  01 50 85 e2                                      add r5, r5, #1
00318f04  07 00 13 e3                                      tst r3, #7
00318f08  f4 ff ff 1a                                      bne #0x318ee0
00318f0c  01 50 85 e2                                      add r5, r5, #1
00318f10  00 30 a0 e3                                      mov r3, #0
00318f14  00 00 5a e3                                      cmp sl, #0
00318f18  00 30 c5 e5                                      strb r3, [r5]
00318f1c  25 00 00 0a                                      beq #0x318fb8
00318f20  b4 60 9f e5                                      ldr r6, [pc, #0xb4]
00318f24  0a 00 a0 e1                                      mov r0, sl
00318f28  06 60 8f e0                                      add r6, pc, r6
00318f2c  06 10 a0 e1                                      mov r1, r6
00318f30  27 d7 ff eb                                      bl #0x30ebd4
00318f34  00 00 50 e3                                      cmp r0, #0
00318f38  18 00 00 0a                                      beq #0x318fa0
00318f3c  03 90 80 e2                                      add sb, r0, #3
00318f40  06 10 a0 e1                                      mov r1, r6
00318f44  09 00 a0 e1                                      mov r0, sb
00318f48  21 d7 ff eb                                      bl #0x30ebd4
00318f4c  00 00 59 e3                                      cmp sb, #0
00318f50  00 00 50 13                                      cmpne r0, #0
00318f54  00 60 a0 e1                                      mov r6, r0
00318f58  00 30 a0 13                                      movne r3, #0
00318f5c  01 30 a0 03                                      moveq r3, #1
00318f60  0e 00 00 0a                                      beq #0x318fa0
00318f64  00 30 c0 e5                                      strb r3, [r0]
00318f68  08 10 a0 e1                                      mov r1, r8
00318f6c  07 00 a0 e1                                      mov r0, r7
00318f70  09 20 a0 e1                                      mov r2, sb
00318f74  a7 ff ff eb                                      bl #0x318e18
00318f78  25 30 a0 e3                                      mov r3, #0x25
00318f7c  00 30 c6 e5                                      strb r3, [r6]
00318f80  00 40 c5 e5                                      strb r4, [r5]
00318f84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00318f88  01 30 f8 e5                                      ldrb r3, [r8, #1]!
00318f8c  00 00 53 e3                                      cmp r3, #0
00318f90  bd ff ff 1a                                      bne #0x318e8c
00318f94  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00318f98  02 50 85 e2                                      add r5, r5, #2
00318f9c  db ff ff ea                                      b #0x318f10
00318fa0  07 00 a0 e1                                      mov r0, r7
00318fa4  08 10 a0 e1                                      mov r1, r8
00318fa8  0a 20 a0 e1                                      mov r2, sl
00318fac  99 ff ff eb                                      bl #0x318e18
00318fb0  00 40 c5 e5                                      strb r4, [r5]
00318fb4  f2 ff ff ea                                      b #0x318f84
00318fb8  20 20 9f e5                                      ldr r2, [pc, #0x20]
00318fbc  07 00 a0 e1                                      mov r0, r7
00318fc0  08 10 a0 e1                                      mov r1, r8
00318fc4  02 20 8f e0                                      add r2, pc, r2
00318fc8  92 ff ff eb                                      bl #0x318e18
00318fcc  00 40 c5 e5                                      strb r4, [r5]
00318fd0  eb ff ff ea                                      b #0x318f84
; mapping-symbol data/literal pool
00318fd4  20 bc 67 00 dc 1d 00 00 48 58 5a 00 44 28 5b 00  .byte 0x20, 0xbc, 0x67, 0x00, 0xdc, 0x1d, 0x00, 0x00, 0x48, 0x58, 0x5a, 0x00, 0x44, 0x28, 0x5b, 0x00

; FUNCTION 0x00318fe4, declared_size=88, range_size=88, mode=arm
; class-group: UserProperties
; alias: _ZN14UserProperties10_ParseLineEPc
; demangled: UserProperties::_ParseLine(char*)
; decoder-mode: arm
00318fe4  70 40 2d e9                                      push {r4, r5, r6, lr}
00318fe8  01 50 a0 e1                                      mov r5, r1
00318fec  00 60 a0 e1                                      mov r6, r0
00318ff0  3d 10 a0 e3                                      mov r1, #0x3d
00318ff4  05 00 a0 e1                                      mov r0, r5
00318ff8  0a d7 ff eb                                      bl #0x30ec28
00318ffc  00 40 50 e2                                      subs r4, r0, #0
00319000  08 00 00 0a                                      beq #0x319028
00319004  00 30 a0 e3                                      mov r3, #0
00319008  04 20 a0 e1                                      mov r2, r4
0031900c  01 30 c2 e4                                      strb r3, [r2], #1
00319010  06 00 a0 e1                                      mov r0, r6
00319014  05 10 a0 e1                                      mov r1, r5
00319018  8f ff ff eb                                      bl #0x318e5c
0031901c  3d 30 a0 e3                                      mov r3, #0x3d
00319020  00 30 c4 e5                                      strb r3, [r4]
00319024  70 80 bd e8                                      pop {r4, r5, r6, pc}
00319028  06 00 a0 e1                                      mov r0, r6
0031902c  05 10 a0 e1                                      mov r1, r5
00319030  04 20 a0 e1                                      mov r2, r4
00319034  70 40 bd e8                                      pop {r4, r5, r6, lr}
00319038  87 ff ff ea                                      b #0x318e5c

; FUNCTION 0x0031903c, declared_size=284, range_size=284, mode=arm
; class-group: UserProperties
; alias: _ZN14UserProperties16_ParsePropertiesEPKc
; demangled: UserProperties::_ParseProperties(char const*)
; decoder-mode: arm
0031903c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00319040  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
00319044  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
00319048  2c d0 4d e2                                      sub sp, sp, #0x2c
0031904c  04 40 8f e0                                      add r4, pc, r4
00319050  05 30 94 e7                                      ldr r3, [r4, r5]
00319054  00 20 51 e2                                      subs r2, r1, #0
00319058  00 60 a0 e1                                      mov r6, r0
0031905c  00 30 93 e5                                      ldr r3, [r3]
00319060  24 30 8d e5                                      str r3, [sp, #0x24]
00319064  1e 00 00 0a                                      beq #0x3190e4
00319068  0c 70 8d e2                                      add r7, sp, #0xc
0031906c  07 00 a0 e1                                      mov r0, r7
00319070  08 20 8d e2                                      add r2, sp, #8
00319074  1c ec ff eb                                      bl #0x3140ec
00319078  0a b0 a0 e3                                      mov fp, #0xa
0031907c  20 a0 9d e5                                      ldr sl, [sp, #0x20]
00319080  00 90 a0 e3                                      mov sb, #0
00319084  05 00 00 ea                                      b #0x3190a0
00319088  0a 10 a0 e1                                      mov r1, sl
0031908c  00 90 c8 e5                                      strb sb, [r8]
00319090  06 00 a0 e1                                      mov r0, r6
00319094  d2 ff ff eb                                      bl #0x318fe4
00319098  01 a0 88 e2                                      add sl, r8, #1
0031909c  00 b0 c8 e5                                      strb fp, [r8]
003190a0  0a 00 a0 e1                                      mov r0, sl
003190a4  0a 10 a0 e3                                      mov r1, #0xa
003190a8  de d6 ff eb                                      bl #0x30ec28
003190ac  00 80 50 e2                                      subs r8, r0, #0
003190b0  f4 ff ff 1a                                      bne #0x319088
003190b4  06 00 a0 e1                                      mov r0, r6
003190b8  0a 10 a0 e1                                      mov r1, sl
003190bc  c8 ff ff eb                                      bl #0x318fe4
003190c0  07 00 a0 e1                                      mov r0, r7
003190c4  62 fc ff eb                                      bl #0x318254
003190c8  05 30 94 e7                                      ldr r3, [r4, r5]
003190cc  24 20 9d e5                                      ldr r2, [sp, #0x24]
003190d0  00 30 93 e5                                      ldr r3, [r3]
003190d4  03 00 52 e1                                      cmp r2, r3
003190d8  16 00 00 1a                                      bne #0x319138
003190dc  2c d0 8d e2                                      add sp, sp, #0x2c
003190e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003190e4  58 30 9f e5                                      ldr r3, [pc, #0x58]
003190e8  03 30 94 e7                                      ldr r3, [r4, r3]
003190ec  00 30 93 e5                                      ldr r3, [r3]
003190f0  02 00 53 e3                                      cmp r3, #2
003190f4  00 20 82 05                                      streq r2, [r2]
003190f8  f2 ff ff 0a                                      beq #0x3190c8
003190fc  01 00 53 e3                                      cmp r3, #1
00319100  f0 ff ff 1a                                      bne #0x3190c8
00319104  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00319108  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0031910c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00319110  00 00 94 e7                                      ldr r0, [r4, r0]
00319114  38 30 9f e5                                      ldr r3, [pc, #0x38]
00319118  25 c0 a0 e3                                      mov ip, #0x25
0031911c  01 10 8f e0                                      add r1, pc, r1
00319120  02 20 8f e0                                      add r2, pc, r2
00319124  03 30 8f e0                                      add r3, pc, r3
00319128  a8 00 80 e2                                      add r0, r0, #0xa8
0031912c  00 c0 8d e5                                      str ip, [sp]
00319130  b3 d3 ff eb                                      bl #0x30e004
00319134  e3 ff ff ea                                      b #0x3190c8
00319138  74 d4 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031913c  44 ba 67 00 ac 40 00 00 c0 39 00 00 c0 19 00 00  .byte 0x44, 0xba, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0031914c  bc 52 5a 00 58 56 5a 00 5c 56 5a 00              .byte 0xbc, 0x52, 0x5a, 0x00, 0x58, 0x56, 0x5a, 0x00, 0x5c, 0x56, 0x5a, 0x00

; FUNCTION 0x00319158, declared_size=88, range_size=88, mode=arm
; class-group: UserProperties
; alias: _ZN14UserPropertiesC1EPKc
; demangled: UserProperties::UserProperties(char const*)
; decoder-mode: arm
00319158  48 20 9f e5                                      ldr r2, [pc, #0x48]
0031915c  70 40 2d e9                                      push {r4, r5, r6, lr}
00319160  44 50 9f e5                                      ldr r5, [pc, #0x44]
00319164  02 20 8f e0                                      add r2, pc, r2
00319168  00 c0 a0 e3                                      mov ip, #0
0031916c  05 50 92 e7                                      ldr r5, [r2, r5]
00319170  00 30 a0 e1                                      mov r3, r0
00319174  08 c0 80 e5                                      str ip, [r0, #8]
00319178  08 50 85 e2                                      add r5, r5, #8
0031917c  00 50 80 e5                                      str r5, [r0]
00319180  0c 00 51 e1                                      cmp r1, ip
00319184  04 c0 e3 e5                                      strb ip, [r3, #4]!
00319188  00 40 a0 e1                                      mov r4, r0
0031918c  10 30 80 e5                                      str r3, [r0, #0x10]
00319190  14 c0 80 e5                                      str ip, [r0, #0x14]
00319194  0c 30 80 e5                                      str r3, [r0, #0xc]
00319198  00 00 00 0a                                      beq #0x3191a0
0031919c  a6 ff ff eb                                      bl #0x31903c
003191a0  04 00 a0 e1                                      mov r0, r4
003191a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003191a8  2c b9 67 00 10 28 00 00                          .byte 0x2c, 0xb9, 0x67, 0x00, 0x10, 0x28, 0x00, 0x00

; FUNCTION 0x003191b0, declared_size=88, range_size=88, mode=arm
; class-group: UserProperties
; alias: _ZN14UserPropertiesC2EPKc
; demangled: UserProperties::UserProperties(char const*)
; decoder-mode: arm
003191b0  48 20 9f e5                                      ldr r2, [pc, #0x48]
003191b4  70 40 2d e9                                      push {r4, r5, r6, lr}
003191b8  44 50 9f e5                                      ldr r5, [pc, #0x44]
003191bc  02 20 8f e0                                      add r2, pc, r2
003191c0  00 c0 a0 e3                                      mov ip, #0
003191c4  05 50 92 e7                                      ldr r5, [r2, r5]
003191c8  00 30 a0 e1                                      mov r3, r0
003191cc  08 c0 80 e5                                      str ip, [r0, #8]
003191d0  08 50 85 e2                                      add r5, r5, #8
003191d4  00 50 80 e5                                      str r5, [r0]
003191d8  0c 00 51 e1                                      cmp r1, ip
003191dc  04 c0 e3 e5                                      strb ip, [r3, #4]!
003191e0  00 40 a0 e1                                      mov r4, r0
003191e4  10 30 80 e5                                      str r3, [r0, #0x10]
003191e8  14 c0 80 e5                                      str ip, [r0, #0x14]
003191ec  0c 30 80 e5                                      str r3, [r0, #0xc]
003191f0  00 00 00 0a                                      beq #0x3191f8
003191f4  90 ff ff eb                                      bl #0x31903c
003191f8  04 00 a0 e1                                      mov r0, r4
003191fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00319200  d4 b8 67 00 10 28 00 00                          .byte 0xd4, 0xb8, 0x67, 0x00, 0x10, 0x28, 0x00, 0x00
