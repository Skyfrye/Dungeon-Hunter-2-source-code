; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00844180, declared_size=8, range_size=8, mode=arm
; class-group: slim::XmlDocument
; alias: _ZN4slim11XmlDocument14loadFromStreamERSi
; demangled: slim::XmlDocument::loadFromStream(std::basic_istream<char, std::char_traits<char> >&)
; decoder-mode: arm
00844180  00 00 a0 e3                                      mov r0, #0
00844184  1e ff 2f e1                                      bx lr

; FUNCTION 0x00844188, declared_size=8, range_size=8, mode=arm
; class-group: slim::XmlDocument
; alias: _ZNK4slim11XmlDocument4saveEPKcNS_6EncodeE
; demangled: slim::XmlDocument::save(char const*, slim::Encode) const
; decoder-mode: arm
00844188  01 00 a0 e3                                      mov r0, #1
0084418c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00844464, declared_size=272, range_size=272, mode=arm
; class-group: slim::XmlDocument
; alias: _ZN4slim11XmlDocument9findLabelERPKcjS3_Rj
; demangled: slim::XmlDocument::findLabel(char const*&, unsigned int, char const*&, unsigned int&)
; decoder-mode: arm
00844464  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00844468  01 40 a0 e1                                      mov r4, r1
0084446c  00 00 91 e5                                      ldr r0, [r1]
00844470  3c 10 a0 e3                                      mov r1, #0x3c
00844474  03 80 a0 e1                                      mov r8, r3
00844478  02 70 a0 e1                                      mov r7, r2
0084447c  4e 28 eb eb                                      bl #0x30e5bc
00844480  00 00 50 e3                                      cmp r0, #0
00844484  18 60 9d e5                                      ldr r6, [sp, #0x18]
00844488  37 00 00 0a                                      beq #0x84456c
0084448c  01 50 80 e2                                      add r5, r0, #1
00844490  00 50 88 e5                                      str r5, [r8]
00844494  00 20 94 e5                                      ldr r2, [r4]
00844498  02 20 65 e0                                      rsb r2, r5, r2
0084449c  07 20 82 e0                                      add r2, r2, r7
008444a0  06 00 52 e3                                      cmp r2, #6
008444a4  0c 00 00 8a                                      bhi #0x8444dc
008444a8  05 00 a0 e1                                      mov r0, r5
008444ac  3e 10 a0 e3                                      mov r1, #0x3e
008444b0  41 28 eb eb                                      bl #0x30e5bc
008444b4  00 00 50 e3                                      cmp r0, #0
008444b8  2b 00 00 0a                                      beq #0x84456c
008444bc  00 50 65 e0                                      rsb r5, r5, r0
008444c0  01 00 80 e2                                      add r0, r0, #1
008444c4  00 50 86 e5                                      str r5, [r6]
008444c8  00 00 84 e5                                      str r0, [r4]
008444cc  00 00 96 e5                                      ldr r0, [r6]
008444d0  00 00 50 e2                                      subs r0, r0, #0
008444d4  01 00 a0 13                                      movne r0, #1
008444d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008444dc  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
008444e0  21 00 53 e3                                      cmp r3, #0x21
008444e4  ef ff ff 1a                                      bne #0x8444a8
008444e8  d1 30 d5 e1                                      ldrsb r3, [r5, #1]
008444ec  2d 00 53 e3                                      cmp r3, #0x2d
008444f0  ec ff ff 1a                                      bne #0x8444a8
008444f4  d2 30 d5 e1                                      ldrsb r3, [r5, #2]
008444f8  2d 00 53 e3                                      cmp r3, #0x2d
008444fc  e9 ff ff 1a                                      bne #0x8444a8
00844500  04 80 80 e2                                      add r8, r0, #4
00844504  05 70 42 e2                                      sub r7, r2, #5
00844508  02 00 00 ea                                      b #0x844518
0084450c  08 80 e0 e1                                      mvn r8, r8
00844510  08 70 87 e0                                      add r7, r7, r8
00844514  02 80 a0 e1                                      mov r8, r2
00844518  07 20 a0 e1                                      mov r2, r7
0084451c  08 00 a0 e1                                      mov r0, r8
00844520  2d 10 a0 e3                                      mov r1, #0x2d
00844524  24 28 eb eb                                      bl #0x30e5bc
00844528  00 00 50 e3                                      cmp r0, #0
0084452c  0e 00 00 0a                                      beq #0x84456c
00844530  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00844534  01 20 80 e2                                      add r2, r0, #1
00844538  00 80 68 e0                                      rsb r8, r8, r0
0084453c  2d 00 53 e3                                      cmp r3, #0x2d
00844540  f1 ff ff 1a                                      bne #0x84450c
00844544  d2 30 d0 e1                                      ldrsb r3, [r0, #2]
00844548  3e 00 53 e3                                      cmp r3, #0x3e
0084454c  ee ff ff 1a                                      bne #0x84450c
00844550  02 30 65 e2                                      rsb r3, r5, #2
00844554  03 30 80 e0                                      add r3, r0, r3
00844558  03 00 80 e2                                      add r0, r0, #3
0084455c  00 30 86 e5                                      str r3, [r6]
00844560  00 00 84 e5                                      str r0, [r4]
00844564  01 00 a0 e3                                      mov r0, #1
00844568  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0084456c  00 00 a0 e3                                      mov r0, #0
00844570  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00844574, declared_size=72, range_size=72, mode=arm
; class-group: slim::XmlDocument
; alias: _ZN4slim11XmlDocument12loadFromFileEPKc
; demangled: slim::XmlDocument::loadFromFile(char const*)
; decoder-mode: arm
00844574  00 00 51 e3                                      cmp r1, #0
00844578  10 40 2d e9                                      push {r4, lr}
0084457c  01 00 00 0a                                      beq #0x844588
00844580  00 00 a0 e3                                      mov r0, #0
00844584  10 80 bd e8                                      pop {r4, pc}
00844588  20 00 9f e5                                      ldr r0, [pc, #0x20]
0084458c  20 20 9f e5                                      ldr r2, [pc, #0x20]
00844590  20 30 9f e5                                      ldr r3, [pc, #0x20]
00844594  00 00 8f e0                                      add r0, pc, r0
00844598  02 20 8f e0                                      add r2, pc, r2
0084459c  03 30 8f e0                                      add r3, pc, r3
008445a0  f8 10 a0 e3                                      mov r1, #0xf8
008445a4  a5 29 eb eb                                      bl #0x30ec40
008445a8  00 00 a0 e3                                      mov r0, #0
008445ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008445b0  d4 ab 0c 00 60 a9 0c 00 2c ac 0c 00              .byte 0xd4, 0xab, 0x0c, 0x00, 0x60, 0xa9, 0x0c, 0x00, 0x2c, 0xac, 0x0c, 0x00

; FUNCTION 0x008449c4, declared_size=28, range_size=28, mode=arm
; class-group: slim::XmlDocument
; alias: _ZN4slim11XmlDocumentC1Ev
; demangled: slim::XmlDocument::XmlDocument()
; decoder-mode: arm
008449c4  00 10 a0 e3                                      mov r1, #0
008449c8  10 40 2d e9                                      push {r4, lr}
008449cc  01 20 a0 e1                                      mov r2, r1
008449d0  00 40 a0 e1                                      mov r4, r0
008449d4  eb ff ff eb                                      bl #0x844988
008449d8  04 00 a0 e1                                      mov r0, r4
008449dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008449e0, declared_size=28, range_size=28, mode=arm
; class-group: slim::XmlDocument
; alias: _ZN4slim11XmlDocumentC2Ev
; demangled: slim::XmlDocument::XmlDocument()
; decoder-mode: arm
008449e0  00 10 a0 e3                                      mov r1, #0
008449e4  10 40 2d e9                                      push {r4, lr}
008449e8  01 20 a0 e1                                      mov r2, r1
008449ec  00 40 a0 e1                                      mov r4, r0
008449f0  e4 ff ff eb                                      bl #0x844988
008449f4  04 00 a0 e1                                      mov r0, r4
008449f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00844db8, declared_size=396, range_size=396, mode=arm
; class-group: slim::XmlDocument
; alias: _ZN4slim11XmlDocument10parseLabelEPNS_7XmlNodeEPKcj
; demangled: slim::XmlDocument::parseLabel(slim::XmlNode*, char const*, unsigned int)
; decoder-mode: arm
00844db8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00844dbc  02 40 a0 e1                                      mov r4, r2
00844dc0  d0 20 d2 e1                                      ldrsb r2, [r2]
00844dc4  01 90 a0 e1                                      mov sb, r1
00844dc8  03 70 a0 e1                                      mov r7, r3
00844dcc  2f 00 52 e3                                      cmp r2, #0x2f
00844dd0  20 00 52 13                                      cmpne r2, #0x20
00844dd4  09 00 00 1a                                      bne #0x844e00
00844dd8  00 20 a0 e3                                      mov r2, #0
00844ddc  04 50 a0 e1                                      mov r5, r4
00844de0  02 20 84 e0                                      add r2, r4, r2
00844de4  09 00 a0 e1                                      mov r0, sb
00844de8  04 10 a0 e1                                      mov r1, r4
00844dec  fb 2e eb eb                                      bl #0x3109e0
00844df0  d0 30 d5 e1                                      ldrsb r3, [r5]
00844df4  20 00 53 e3                                      cmp r3, #0x20
00844df8  11 00 00 0a                                      beq #0x844e44
00844dfc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00844e00  3e 00 52 e3                                      cmp r2, #0x3e
00844e04  04 50 a0 11                                      movne r5, r4
00844e08  f2 ff ff 0a                                      beq #0x844dd8
00844e0c  d1 30 f5 e1                                      ldrsb r3, [r5, #1]!
00844e10  2f 00 53 e3                                      cmp r3, #0x2f
00844e14  20 00 53 13                                      cmpne r3, #0x20
00844e18  01 00 00 0a                                      beq #0x844e24
00844e1c  3e 00 53 e3                                      cmp r3, #0x3e
00844e20  f9 ff ff 1a                                      bne #0x844e0c
00844e24  05 20 64 e0                                      rsb r2, r4, r5
00844e28  02 20 84 e0                                      add r2, r4, r2
00844e2c  09 00 a0 e1                                      mov r0, sb
00844e30  04 10 a0 e1                                      mov r1, r4
00844e34  e9 2e eb eb                                      bl #0x3109e0
00844e38  d0 30 d5 e1                                      ldrsb r3, [r5]
00844e3c  20 00 53 e3                                      cmp r3, #0x20
00844e40  ed ff ff 1a                                      bne #0x844dfc
00844e44  07 70 84 e0                                      add r7, r4, r7
00844e48  05 00 57 e1                                      cmp r7, r5
00844e4c  ea ff ff 9a                                      bls #0x844dfc
00844e50  73 30 af e6                                      sxtb r3, r3
00844e54  20 00 53 e3                                      cmp r3, #0x20
00844e58  02 00 00 1a                                      bne #0x844e68
00844e5c  d1 30 f5 e1                                      ldrsb r3, [r5, #1]!
00844e60  20 00 53 e3                                      cmp r3, #0x20
00844e64  fc ff ff 0a                                      beq #0x844e5c
00844e68  3d 40 53 e2                                      subs r4, r3, #0x3d
00844e6c  01 40 a0 13                                      movne r4, #1
00844e70  00 00 54 e3                                      cmp r4, #0
00844e74  05 80 a0 e1                                      mov r8, r5
00844e78  05 20 a0 01                                      moveq r2, r5
00844e7c  0a 00 00 0a                                      beq #0x844eac
00844e80  2f 00 53 e3                                      cmp r3, #0x2f
00844e84  2b 00 00 0a                                      beq #0x844f38
00844e88  3e 00 53 e3                                      cmp r3, #0x3e
00844e8c  05 20 a0 11                                      movne r2, r5
00844e90  28 00 00 0a                                      beq #0x844f38
00844e94  d1 30 f2 e1                                      ldrsb r3, [r2, #1]!
00844e98  3d 00 53 e3                                      cmp r3, #0x3d
00844e9c  20 00 53 13                                      cmpne r3, #0x20
00844ea0  1f 00 00 1a                                      bne #0x844f24
00844ea4  02 40 65 e0                                      rsb r4, r5, r2
00844ea8  02 50 a0 e1                                      mov r5, r2
00844eac  05 00 a0 e1                                      mov r0, r5
00844eb0  07 20 62 e0                                      rsb r2, r2, r7
00844eb4  22 10 a0 e3                                      mov r1, #0x22
00844eb8  bf 25 eb eb                                      bl #0x30e5bc
00844ebc  00 00 50 e3                                      cmp r0, #0
00844ec0  cd ff ff 0a                                      beq #0x844dfc
00844ec4  01 50 80 e2                                      add r5, r0, #1
00844ec8  05 00 a0 e1                                      mov r0, r5
00844ecc  22 10 a0 e3                                      mov r1, #0x22
00844ed0  07 20 65 e0                                      rsb r2, r5, r7
00844ed4  b8 25 eb eb                                      bl #0x30e5bc
00844ed8  00 60 50 e2                                      subs r6, r0, #0
00844edc  c6 ff ff 0a                                      beq #0x844dfc
00844ee0  00 10 a0 e3                                      mov r1, #0
00844ee4  01 20 a0 e1                                      mov r2, r1
00844ee8  09 00 a0 e1                                      mov r0, sb
00844eec  8b ff ff eb                                      bl #0x844d20
00844ef0  08 10 a0 e1                                      mov r1, r8
00844ef4  00 a0 a0 e1                                      mov sl, r0
00844ef8  04 20 88 e0                                      add r2, r8, r4
00844efc  b7 2e eb eb                                      bl #0x3109e0
00844f00  05 10 a0 e1                                      mov r1, r5
00844f04  18 00 8a e2                                      add r0, sl, #0x18
00844f08  06 20 a0 e1                                      mov r2, r6
00844f0c  01 50 86 e2                                      add r5, r6, #1
00844f10  b2 2e eb eb                                      bl #0x3109e0
00844f14  05 00 57 e1                                      cmp r7, r5
00844f18  b7 ff ff 9a                                      bls #0x844dfc
00844f1c  01 30 d6 e5                                      ldrb r3, [r6, #1]
00844f20  ca ff ff ea                                      b #0x844e50
00844f24  2f 00 53 e3                                      cmp r3, #0x2f
00844f28  dd ff ff 0a                                      beq #0x844ea4
00844f2c  3e 00 53 e3                                      cmp r3, #0x3e
00844f30  d7 ff ff 1a                                      bne #0x844e94
00844f34  da ff ff ea                                      b #0x844ea4
00844f38  05 20 a0 e1                                      mov r2, r5
00844f3c  00 40 a0 e3                                      mov r4, #0
00844f40  d9 ff ff ea                                      b #0x844eac

; FUNCTION 0x00844fdc, declared_size=512, range_size=512, mode=arm
; class-group: slim::XmlDocument
; alias: _ZN4slim11XmlDocument5parseEPKcj
; demangled: slim::XmlDocument::parse(char const*, unsigned int)
; decoder-mode: arm
00844fdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00844fe0  dc 31 9f e5                                      ldr r3, [pc, #0x1dc]
00844fe4  24 d0 4d e2                                      sub sp, sp, #0x24
00844fe8  d8 b1 9f e5                                      ldr fp, [pc, #0x1d8]
00844fec  03 30 8f e0                                      add r3, pc, r3
00844ff0  6e 3f 83 e2                                      add r3, r3, #0x1b8
00844ff4  08 30 8d e5                                      str r3, [sp, #8]
00844ff8  cc 31 9f e5                                      ldr r3, [pc, #0x1cc]
00844ffc  00 90 a0 e3                                      mov sb, #0
00845000  01 40 a0 e1                                      mov r4, r1
00845004  03 30 8f e0                                      add r3, pc, r3
00845008  00 a0 a0 e1                                      mov sl, r0
0084500c  1c 10 8d e5                                      str r1, [sp, #0x1c]
00845010  02 60 81 e0                                      add r6, r1, r2
00845014  18 90 8d e5                                      str sb, [sp, #0x18]
00845018  14 90 8d e5                                      str sb, [sp, #0x14]
0084501c  0b b0 8f e0                                      add fp, pc, fp
00845020  0c 30 8d e5                                      str r3, [sp, #0xc]
00845024  00 50 a0 e1                                      mov r5, r0
00845028  06 00 54 e1                                      cmp r4, r6
0084502c  1c 70 8d e2                                      add r7, sp, #0x1c
00845030  18 80 8d e2                                      add r8, sp, #0x18
00845034  37 00 00 2a                                      bhs #0x845118
00845038  00 00 55 e3                                      cmp r5, #0
0084503c  4d 00 00 0a                                      beq #0x845178
00845040  14 c0 8d e2                                      add ip, sp, #0x14
00845044  0a 00 a0 e1                                      mov r0, sl
00845048  06 20 64 e0                                      rsb r2, r4, r6
0084504c  07 10 a0 e1                                      mov r1, r7
00845050  08 30 a0 e1                                      mov r3, r8
00845054  00 c0 8d e5                                      str ip, [sp]
00845058  01 fd ff eb                                      bl #0x844464
0084505c  00 00 50 e3                                      cmp r0, #0
00845060  2c 00 00 0a                                      beq #0x845118
00845064  18 20 9d e5                                      ldr r2, [sp, #0x18]
00845068  d0 30 d2 e1                                      ldrsb r3, [r2]
0084506c  2f 00 53 e3                                      cmp r3, #0x2f
00845070  37 00 00 0a                                      beq #0x845154
00845074  3f 00 53 e3                                      cmp r3, #0x3f
00845078  23 00 00 0a                                      beq #0x84510c
0084507c  21 00 53 e3                                      cmp r3, #0x21
00845080  12 00 00 0a                                      beq #0x8450d0
00845084  01 20 a0 e3                                      mov r2, #1
00845088  05 00 a0 e1                                      mov r0, r5
0084508c  00 10 a0 e3                                      mov r1, #0
00845090  ab ff ff eb                                      bl #0x844f44
00845094  00 40 a0 e1                                      mov r4, r0
00845098  04 10 a0 e1                                      mov r1, r4
0084509c  18 20 9d e5                                      ldr r2, [sp, #0x18]
008450a0  14 30 9d e5                                      ldr r3, [sp, #0x14]
008450a4  0a 00 a0 e1                                      mov r0, sl
008450a8  42 ff ff eb                                      bl #0x844db8
008450ac  14 30 9d e5                                      ldr r3, [sp, #0x14]
008450b0  18 20 9d e5                                      ldr r2, [sp, #0x18]
008450b4  03 30 82 e0                                      add r3, r2, r3
008450b8  d1 30 53 e1                                      ldrsb r3, [r3, #-1]
008450bc  2f 00 53 e3                                      cmp r3, #0x2f
008450c0  04 50 a0 11                                      movne r5, r4
008450c4  01 90 89 12                                      addne sb, sb, #1
008450c8  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
008450cc  d5 ff ff ea                                      b #0x845028
008450d0  14 30 9d e5                                      ldr r3, [sp, #0x14]
008450d4  04 00 53 e3                                      cmp r3, #4
008450d8  36 00 00 9a                                      bls #0x8451b8
008450dc  00 10 a0 e3                                      mov r1, #0
008450e0  02 20 a0 e3                                      mov r2, #2
008450e4  05 00 a0 e1                                      mov r0, r5
008450e8  95 ff ff eb                                      bl #0x844f44
008450ec  18 10 9d e5                                      ldr r1, [sp, #0x18]
008450f0  14 20 9d e5                                      ldr r2, [sp, #0x14]
008450f4  03 10 81 e2                                      add r1, r1, #3
008450f8  05 20 42 e2                                      sub r2, r2, #5
008450fc  02 20 81 e0                                      add r2, r1, r2
00845100  36 2e eb eb                                      bl #0x3109e0
00845104  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
00845108  c6 ff ff ea                                      b #0x845028
0084510c  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
00845110  06 00 54 e1                                      cmp r4, r6
00845114  c7 ff ff 3a                                      blo #0x845038
00845118  00 00 59 e3                                      cmp sb, #0
0084511c  25 00 00 1a                                      bne #0x8451b8
00845120  05 00 5a e1                                      cmp sl, r5
00845124  08 00 00 0a                                      beq #0x84514c
00845128  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0084512c  a0 00 9f e5                                      ldr r0, [pc, #0xa0]
00845130  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
00845134  02 20 8f e0                                      add r2, pc, r2
00845138  00 00 8f e0                                      add r0, pc, r0
0084513c  6e 2f 82 e2                                      add r2, r2, #0x1b8
00845140  03 30 8f e0                                      add r3, pc, r3
00845144  0e 12 00 e3                                      movw r1, #0x20e
00845148  bc 26 eb eb                                      bl #0x30ec40
0084514c  01 00 a0 e3                                      mov r0, #1
00845150  19 00 00 ea                                      b #0x8451bc
00845154  00 00 59 e3                                      cmp sb, #0
00845158  16 00 00 0a                                      beq #0x8451b8
0084515c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00845160  01 00 53 e3                                      cmp r3, #1
00845164  0a 00 00 0a                                      beq #0x845194
00845168  3c 50 95 e5                                      ldr r5, [r5, #0x3c]
0084516c  01 90 49 e2                                      sub sb, sb, #1
00845170  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
00845174  ab ff ff ea                                      b #0x845028
00845178  0b 00 a0 e1                                      mov r0, fp
0084517c  08 20 9d e5                                      ldr r2, [sp, #8]
00845180  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00845184  d9 11 00 e3                                      movw r1, #0x1d9
00845188  ac 26 eb eb                                      bl #0x30ec40
0084518c  1c 40 9d e5                                      ldr r4, [sp, #0x1c]
00845190  aa ff ff ea                                      b #0x845040
00845194  40 10 95 e5                                      ldr r1, [r5, #0x40]
00845198  40 30 85 e2                                      add r3, r5, #0x40
0084519c  03 00 51 e1                                      cmp r1, r3
008451a0  f0 ff ff 1a                                      bne #0x845168
008451a4  04 10 a0 e1                                      mov r1, r4
008451a8  01 20 42 e2                                      sub r2, r2, #1
008451ac  18 00 85 e2                                      add r0, r5, #0x18
008451b0  0a 2e eb eb                                      bl #0x3109e0
008451b4  eb ff ff ea                                      b #0x845168
008451b8  00 00 a0 e3                                      mov r0, #0
008451bc  24 d0 8d e2                                      add sp, sp, #0x24
008451c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
008451c4  0c 9f 0c 00 4c a1 0c 00 14 a2 0c 00 c4 9d 0c 00  .byte 0x0c, 0x9f, 0x0c, 0x00, 0x4c, 0xa1, 0x0c, 0x00, 0x14, 0xa2, 0x0c, 0x00, 0xc4, 0x9d, 0x0c, 0x00
008451d4  30 a0 0c 00 f0 a0 0c 00                          .byte 0x30, 0xa0, 0x0c, 0x00, 0xf0, 0xa0, 0x0c, 0x00

; FUNCTION 0x008451dc, declared_size=140, range_size=140, mode=arm
; class-group: slim::XmlDocument
; alias: _ZN4slim11XmlDocument14loadFromMemoryEPKcj
; demangled: slim::XmlDocument::loadFromMemory(char const*, unsigned int)
; decoder-mode: arm
008451dc  70 40 2d e9                                      push {r4, r5, r6, lr}
008451e0  02 40 a0 e1                                      mov r4, r2
008451e4  01 50 a0 e1                                      mov r5, r1
008451e8  00 60 a0 e1                                      mov r6, r0
008451ec  79 fe ff eb                                      bl #0x844bd8
008451f0  02 00 54 e3                                      cmp r4, #2
008451f4  11 00 00 9a                                      bls #0x845240
008451f8  00 30 d5 e5                                      ldrb r3, [r5]
008451fc  fe 00 53 e3                                      cmp r3, #0xfe
00845200  0b 00 00 0a                                      beq #0x845234
00845204  ff 00 53 e3                                      cmp r3, #0xff
00845208  0e 00 00 0a                                      beq #0x845248
0084520c  ef 00 53 e3                                      cmp r3, #0xef
00845210  02 00 00 1a                                      bne #0x845220
00845214  01 30 d5 e5                                      ldrb r3, [r5, #1]
00845218  bb 00 53 e3                                      cmp r3, #0xbb
0084521c  0d 00 00 0a                                      beq #0x845258
00845220  06 00 a0 e1                                      mov r0, r6
00845224  05 10 a0 e1                                      mov r1, r5
00845228  04 20 a0 e1                                      mov r2, r4
0084522c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00845230  69 ff ff ea                                      b #0x844fdc
00845234  01 30 d5 e5                                      ldrb r3, [r5, #1]
00845238  ff 00 53 e3                                      cmp r3, #0xff
0084523c  f7 ff ff 1a                                      bne #0x845220
00845240  00 00 a0 e3                                      mov r0, #0
00845244  70 80 bd e8                                      pop {r4, r5, r6, pc}
00845248  01 30 d5 e5                                      ldrb r3, [r5, #1]
0084524c  fe 00 53 e3                                      cmp r3, #0xfe
00845250  f2 ff ff 1a                                      bne #0x845220
00845254  f9 ff ff ea                                      b #0x845240
00845258  02 30 d5 e5                                      ldrb r3, [r5, #2]
0084525c  bf 00 53 e3                                      cmp r3, #0xbf
00845260  ee ff ff 1a                                      bne #0x845220
00845264  f5 ff ff ea                                      b #0x845240
