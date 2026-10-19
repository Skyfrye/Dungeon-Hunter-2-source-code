; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006062f4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::video::CImageLoaderTGA
; alias: _ZN6glitch5video15CImageLoaderTGAD1Ev
; demangled: glitch::video::CImageLoaderTGA::~CImageLoaderTGA()
; decoder-mode: arm
006062f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00606318, declared_size=20, range_size=20, mode=arm
; class-group: glitch::video::CImageLoaderTGA
; alias: _ZN6glitch5video15CImageLoaderTGAD0Ev
; demangled: glitch::video::CImageLoaderTGA::~CImageLoaderTGA()
; decoder-mode: arm
00606318  10 40 2d e9                                      push {r4, lr}
0060631c  00 40 a0 e1                                      mov r4, r0
00606320  e2 1f f4 eb                                      bl #0x30e2b0
00606324  04 00 a0 e1                                      mov r0, r4
00606328  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00606368, declared_size=1040, range_size=1040, mode=arm
; class-group: glitch::video::CImageLoaderTGA
; alias: _ZNK6glitch5video15CImageLoaderTGA9loadImageEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderTGA::loadImage(glitch::io::IReadFile*) const
; decoder-mode: arm
00606368  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060636c  54 d0 4d e2                                      sub sp, sp, #0x54
00606370  20 00 8d e5                                      str r0, [sp, #0x20]
00606374  00 30 92 e5                                      ldr r3, [r2]
00606378  02 00 a0 e1                                      mov r0, r2
0060637c  30 10 8d e2                                      add r1, sp, #0x30
00606380  02 80 a0 e1                                      mov r8, r2
00606384  12 20 a0 e3                                      mov r2, #0x12
00606388  0f e0 a0 e1                                      mov lr, pc
0060638c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00606390  30 10 dd e5                                      ldrb r1, [sp, #0x30]
00606394  00 00 51 e3                                      cmp r1, #0
00606398  cc 00 00 1a                                      bne #0x6066d0
0060639c  31 30 dd e5                                      ldrb r3, [sp, #0x31]
006063a0  00 00 53 e3                                      cmp r3, #0
006063a4  1c 30 8d 05                                      streq r3, [sp, #0x1c]
006063a8  9c 00 00 1a                                      bne #0x606620
006063ac  40 30 dd e5                                      ldrb r3, [sp, #0x40]
006063b0  18 00 53 e3                                      cmp r3, #0x18
006063b4  ae 00 00 0a                                      beq #0x606674
006063b8  20 00 53 e3                                      cmp r3, #0x20
006063bc  c9 00 00 0a                                      beq #0x6066e8
006063c0  10 00 53 e3                                      cmp r3, #0x10
006063c4  13 00 00 0a                                      beq #0x606418
006063c8  00 30 98 e5                                      ldr r3, [r8]
006063cc  08 00 a0 e1                                      mov r0, r8
006063d0  0f e0 a0 e1                                      mov lr, pc
006063d4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006063d8  00 10 a0 e1                                      mov r1, r0
006063dc  8c 03 9f e5                                      ldr r0, [pc, #0x38c]
006063e0  03 20 a0 e3                                      mov r2, #3
006063e4  00 00 8f e0                                      add r0, pc, r0
006063e8  3e 12 00 eb                                      bl #0x60ace8
006063ec  20 20 9d e5                                      ldr r2, [sp, #0x20]
006063f0  00 30 a0 e3                                      mov r3, #0
006063f4  00 30 82 e5                                      str r3, [r2]
006063f8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006063fc  00 00 52 e3                                      cmp r2, #0
00606400  01 00 00 0a                                      beq #0x60640c
00606404  02 00 a0 e1                                      mov r0, r2
00606408  2a 1f f4 eb                                      bl #0x30e0b8
0060640c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00606410  54 d0 8d e2                                      add sp, sp, #0x54
00606414  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00606418  08 30 a0 e3                                      mov r3, #8
0060641c  24 30 8d e5                                      str r3, [sp, #0x24]
00606420  28 30 8d e5                                      str r3, [sp, #0x28]
00606424  32 70 dd e5                                      ldrb r7, [sp, #0x32]
00606428  0a 00 57 e3                                      cmp r7, #0xa
0060642c  02 00 57 13                                      cmpne r7, #2
00606430  00 70 a0 03                                      moveq r7, #0
00606434  01 70 a0 13                                      movne r7, #1
00606438  97 00 00 1a                                      bne #0x60669c
0060643c  be 33 dd e1                                      ldrh r3, [sp, #0x3e]
00606440  bc 23 dd e1                                      ldrh r2, [sp, #0x3c]
00606444  07 10 a0 e1                                      mov r1, r7
00606448  2c 00 a0 e3                                      mov r0, #0x2c
0060644c  44 20 8d e5                                      str r2, [sp, #0x44]
00606450  48 30 8d e5                                      str r3, [sp, #0x48]
00606454  54 b7 fc eb                                      bl #0x5341ac
00606458  24 10 9d e5                                      ldr r1, [sp, #0x24]
0060645c  44 20 8d e2                                      add r2, sp, #0x44
00606460  00 50 a0 e1                                      mov r5, r0
00606464  29 ef ff eb                                      bl #0x602110
00606468  00 00 55 e3                                      cmp r5, #0
0060646c  20 c0 9d 05                                      ldreq ip, [sp, #0x20]
00606470  00 50 8c 05                                      streq r5, [ip]
00606474  df ff ff 0a                                      beq #0x6063f8
00606478  08 10 95 e9                                      ldmib r5, {r3, ip}
0060647c  01 30 83 e2                                      add r3, r3, #1
00606480  2c c0 8d e5                                      str ip, [sp, #0x2c]
00606484  04 30 85 e5                                      str r3, [r5, #4]
00606488  32 30 dd e5                                      ldrb r3, [sp, #0x32]
0060648c  02 00 53 e3                                      cmp r3, #2
00606490  98 00 00 0a                                      beq #0x6066f8
00606494  bc 33 dd e1                                      ldrh r3, [sp, #0x3c]
00606498  be a3 dd e1                                      ldrh sl, [sp, #0x3e]
0060649c  40 60 dd e5                                      ldrb r6, [sp, #0x40]
006064a0  07 10 a0 e1                                      mov r1, r7
006064a4  9a 03 0a e0                                      mul sl, sl, r3
006064a8  a6 61 a0 e1                                      lsr r6, r6, #3
006064ac  96 0a 0a e0                                      mul sl, r6, sl
006064b0  0a 00 a0 e1                                      mov r0, sl
006064b4  3b b7 fc eb                                      bl #0x5341a8
006064b8  00 00 5a e3                                      cmp sl, #0
006064bc  00 40 a0 e1                                      mov r4, r0
006064c0  39 00 00 da                                      ble #0x6065ac
006064c4  4f 90 8d e2                                      add sb, sp, #0x4f
006064c8  07 b0 a0 e1                                      mov fp, r7
006064cc  0c 00 00 ea                                      b #0x606504
006064d0  01 30 83 e2                                      add r3, r3, #1
006064d4  73 20 ef e6                                      uxtb r2, r3
006064d8  4f 20 cd e5                                      strb r2, [sp, #0x4f]
006064dc  07 10 84 e0                                      add r1, r4, r7
006064e0  00 30 98 e5                                      ldr r3, [r8]
006064e4  96 02 02 e0                                      mul r2, r6, r2
006064e8  08 00 a0 e1                                      mov r0, r8
006064ec  0f e0 a0 e1                                      mov lr, pc
006064f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006064f4  4f 30 dd e5                                      ldrb r3, [sp, #0x4f]
006064f8  93 76 27 e0                                      mla r7, r3, r6, r7
006064fc  07 00 5a e1                                      cmp sl, r7
00606500  29 00 00 da                                      ble #0x6065ac
00606504  4f b0 cd e5                                      strb fp, [sp, #0x4f]
00606508  00 30 98 e5                                      ldr r3, [r8]
0060650c  08 00 a0 e1                                      mov r0, r8
00606510  09 10 a0 e1                                      mov r1, sb
00606514  01 20 a0 e3                                      mov r2, #1
00606518  0f e0 a0 e1                                      mov lr, pc
0060651c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00606520  4f 30 dd e5                                      ldrb r3, [sp, #0x4f]
00606524  80 00 13 e3                                      tst r3, #0x80
00606528  e8 ff ff 0a                                      beq #0x6064d0
0060652c  7f 30 43 e2                                      sub r3, r3, #0x7f
00606530  4f 30 cd e5                                      strb r3, [sp, #0x4f]
00606534  07 10 84 e0                                      add r1, r4, r7
00606538  00 30 98 e5                                      ldr r3, [r8]
0060653c  08 00 a0 e1                                      mov r0, r8
00606540  06 20 a0 e1                                      mov r2, r6
00606544  0f e0 a0 e1                                      mov lr, pc
00606548  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060654c  4f 30 dd e5                                      ldrb r3, [sp, #0x4f]
00606550  07 00 a0 e1                                      mov r0, r7
00606554  06 70 87 e0                                      add r7, r7, r6
00606558  01 00 53 e3                                      cmp r3, #1
0060655c  00 00 84 c0                                      addgt r0, r4, r0
00606560  07 10 84 c0                                      addgt r1, r4, r7
00606564  01 c0 a0 c3                                      movgt ip, #1
00606568  e3 ff ff da                                      ble #0x6064fc
0060656c  00 00 56 e3                                      cmp r6, #0
00606570  00 30 a0 13                                      movne r3, #0
00606574  05 00 00 0a                                      beq #0x606590
00606578  03 20 d0 e7                                      ldrb r2, [r0, r3]
0060657c  03 20 c1 e7                                      strb r2, [r1, r3]
00606580  01 30 83 e2                                      add r3, r3, #1
00606584  03 00 56 e1                                      cmp r6, r3
00606588  fa ff ff ca                                      bgt #0x606578
0060658c  4f 30 dd e5                                      ldrb r3, [sp, #0x4f]
00606590  01 c0 8c e2                                      add ip, ip, #1
00606594  03 00 5c e1                                      cmp ip, r3
00606598  07 70 86 e0                                      add r7, r6, r7
0060659c  06 10 81 e0                                      add r1, r1, r6
006065a0  f1 ff ff ba                                      blt #0x60656c
006065a4  07 00 5a e1                                      cmp sl, r7
006065a8  d5 ff ff ca                                      bgt #0x606504
006065ac  41 c0 dd e5                                      ldrb ip, [sp, #0x41]
006065b0  bc 63 dd e1                                      ldrh r6, [sp, #0x3c]
006065b4  be 73 dd e1                                      ldrh r7, [sp, #0x3e]
006065b8  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
006065bc  00 e0 a0 e3                                      mov lr, #0
006065c0  20 c0 2c e2                                      eor ip, ip, #0x20
006065c4  dc c2 e0 e7                                      ubfx ip, ip, #5, #1
006065c8  28 00 9d e5                                      ldr r0, [sp, #0x28]
006065cc  0e 20 a0 e1                                      mov r2, lr
006065d0  24 30 9d e5                                      ldr r3, [sp, #0x24]
006065d4  04 10 a0 e1                                      mov r1, r4
006065d8  00 80 8d e5                                      str r8, [sp]
006065dc  08 60 8d e5                                      str r6, [sp, #8]
006065e0  0c 70 8d e5                                      str r7, [sp, #0xc]
006065e4  10 c0 8d e5                                      str ip, [sp, #0x10]
006065e8  04 e0 8d e5                                      str lr, [sp, #4]
006065ec  ee cb ff eb                                      bl #0x5f95ac
006065f0  00 00 54 e3                                      cmp r4, #0
006065f4  01 00 00 0a                                      beq #0x606600
006065f8  04 00 a0 e1                                      mov r0, r4
006065fc  ad 1e f4 eb                                      bl #0x30e0b8
00606600  20 30 9d e5                                      ldr r3, [sp, #0x20]
00606604  05 00 a0 e1                                      mov r0, r5
00606608  00 50 83 e5                                      str r5, [r3]
0060660c  04 30 95 e5                                      ldr r3, [r5, #4]
00606610  01 30 83 e2                                      add r3, r3, #1
00606614  04 30 85 e5                                      str r3, [r5, #4]
00606618  d9 5b f4 eb                                      bl #0x31d584
0060661c  75 ff ff ea                                      b #0x6063f8
00606620  37 30 dd e5                                      ldrb r3, [sp, #0x37]
00606624  34 00 9d e5                                      ldr r0, [sp, #0x34]
00606628  00 10 a0 e3                                      mov r1, #0
0060662c  a3 31 a0 e1                                      lsr r3, r3, #3
00606630  50 04 ef e7                                      ubfx r0, r0, #8, #0x10
00606634  90 03 00 e0                                      mul r0, r0, r3
00606638  da b6 fc eb                                      bl #0x5341a8
0060663c  37 20 dd e5                                      ldrb r2, [sp, #0x37]
00606640  34 10 9d e5                                      ldr r1, [sp, #0x34]
00606644  1c 00 8d e5                                      str r0, [sp, #0x1c]
00606648  a2 21 a0 e1                                      lsr r2, r2, #3
0060664c  51 14 ef e7                                      ubfx r1, r1, #8, #0x10
00606650  00 30 98 e5                                      ldr r3, [r8]
00606654  91 02 02 e0                                      mul r2, r1, r2
00606658  08 00 a0 e1                                      mov r0, r8
0060665c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00606660  0f e0 a0 e1                                      mov lr, pc
00606664  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00606668  40 30 dd e5                                      ldrb r3, [sp, #0x40]
0060666c  18 00 53 e3                                      cmp r3, #0x18
00606670  50 ff ff 1a                                      bne #0x6063b8
00606674  32 70 dd e5                                      ldrb r7, [sp, #0x32]
00606678  0a 20 a0 e3                                      mov r2, #0xa
0060667c  0b 30 a0 e3                                      mov r3, #0xb
00606680  0a 00 57 e3                                      cmp r7, #0xa
00606684  02 00 57 13                                      cmpne r7, #2
00606688  24 20 8d e5                                      str r2, [sp, #0x24]
0060668c  28 30 8d e5                                      str r3, [sp, #0x28]
00606690  00 70 a0 03                                      moveq r7, #0
00606694  01 70 a0 13                                      movne r7, #1
00606698  67 ff ff 0a                                      beq #0x60643c
0060669c  00 30 98 e5                                      ldr r3, [r8]
006066a0  08 00 a0 e1                                      mov r0, r8
006066a4  0f e0 a0 e1                                      mov lr, pc
006066a8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006066ac  00 10 a0 e1                                      mov r1, r0
006066b0  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
006066b4  03 20 a0 e3                                      mov r2, #3
006066b8  00 00 8f e0                                      add r0, pc, r0
006066bc  89 11 00 eb                                      bl #0x60ace8
006066c0  20 80 9d e5                                      ldr r8, [sp, #0x20]
006066c4  00 30 a0 e3                                      mov r3, #0
006066c8  00 30 88 e5                                      str r3, [r8]
006066cc  49 ff ff ea                                      b #0x6063f8
006066d0  00 30 98 e5                                      ldr r3, [r8]
006066d4  08 00 a0 e1                                      mov r0, r8
006066d8  01 20 a0 e3                                      mov r2, #1
006066dc  0f e0 a0 e1                                      mov lr, pc
006066e0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006066e4  2c ff ff ea                                      b #0x60639c
006066e8  0d c0 a0 e3                                      mov ip, #0xd
006066ec  24 c0 8d e5                                      str ip, [sp, #0x24]
006066f0  28 c0 8d e5                                      str ip, [sp, #0x28]
006066f4  4a ff ff ea                                      b #0x606424
006066f8  be 13 dd e1                                      ldrh r1, [sp, #0x3e]
006066fc  bc 33 dd e1                                      ldrh r3, [sp, #0x3c]
00606700  40 20 dd e5                                      ldrb r2, [sp, #0x40]
00606704  08 00 a0 e1                                      mov r0, r8
00606708  91 03 03 e0                                      mul r3, r1, r3
0060670c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00606710  92 03 02 e0                                      mul r2, r2, r3
00606714  00 30 98 e5                                      ldr r3, [r8]
00606718  07 c0 82 e2                                      add ip, r2, #7
0060671c  00 00 52 e3                                      cmp r2, #0
00606720  0c 20 a0 b1                                      movlt r2, ip
00606724  c2 21 a0 e1                                      asr r2, r2, #3
00606728  0f e0 a0 e1                                      mov lr, pc
0060672c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00606730  41 c0 dd e5                                      ldrb ip, [sp, #0x41]
00606734  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00606738  bc e3 dd e1                                      ldrh lr, [sp, #0x3c]
0060673c  be 43 dd e1                                      ldrh r4, [sp, #0x3e]
00606740  20 c0 2c e2                                      eor ip, ip, #0x20
00606744  dc c2 e0 e7                                      ubfx ip, ip, #5, #1
00606748  28 00 9d e5                                      ldr r0, [sp, #0x28]
0060674c  07 20 a0 e1                                      mov r2, r7
00606750  24 30 9d e5                                      ldr r3, [sp, #0x24]
00606754  08 e0 8d e5                                      str lr, [sp, #8]
00606758  0c 40 8d e5                                      str r4, [sp, #0xc]
0060675c  10 c0 8d e5                                      str ip, [sp, #0x10]
00606760  01 80 a0 e1                                      mov r8, r1
00606764  82 00 8d e8                                      stm sp, {r1, r7}
00606768  8f cb ff eb                                      bl #0x5f95ac
0060676c  a3 ff ff ea                                      b #0x606600
; mapping-symbol data/literal pool
00606770  74 e6 2d 00 b8 e3 2d 00                          .byte 0x74, 0xe6, 0x2d, 0x00, 0xb8, 0xe3, 0x2d, 0x00

; FUNCTION 0x00606778, declared_size=244, range_size=244, mode=arm
; class-group: glitch::video::CImageLoaderTGA
; alias: _ZNK6glitch5video15CImageLoaderTGA21isALoadableFileFormatEPNS_2io9IReadFileE
; demangled: glitch::video::CImageLoaderTGA::isALoadableFileFormat(glitch::io::IReadFile*) const
; decoder-mode: arm
00606778  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0060677c  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
00606780  dc 60 9f e5                                      ldr r6, [pc, #0xdc]
00606784  24 d0 4d e2                                      sub sp, sp, #0x24
00606788  04 40 8f e0                                      add r4, pc, r4
0060678c  06 30 94 e7                                      ldr r3, [r4, r6]
00606790  00 50 51 e2                                      subs r5, r1, #0
00606794  00 30 93 e5                                      ldr r3, [r3]
00606798  1c 30 8d e5                                      str r3, [sp, #0x1c]
0060679c  05 00 00 0a                                      beq #0x6067b8
006067a0  00 30 95 e5                                      ldr r3, [r5]
006067a4  05 00 a0 e1                                      mov r0, r5
006067a8  0f e0 a0 e1                                      mov lr, pc
006067ac  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006067b0  19 00 50 e3                                      cmp r0, #0x19
006067b4  07 00 00 8a                                      bhi #0x6067d8
006067b8  00 00 a0 e3                                      mov r0, #0
006067bc  06 30 94 e7                                      ldr r3, [r4, r6]
006067c0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006067c4  00 30 93 e5                                      ldr r3, [r3]
006067c8  03 00 52 e1                                      cmp r2, r3
006067cc  22 00 00 1a                                      bne #0x60685c
006067d0  24 d0 8d e2                                      add sp, sp, #0x24
006067d4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006067d8  00 a0 a0 e3                                      mov sl, #0
006067dc  08 30 8d e2                                      add r3, sp, #8
006067e0  04 a0 83 e4                                      str sl, [r3], #4
006067e4  04 a0 83 e4                                      str sl, [r3], #4
006067e8  04 a0 83 e4                                      str sl, [r3], #4
006067ec  04 a0 83 e4                                      str sl, [r3], #4
006067f0  00 a0 8d e5                                      str sl, [sp]
006067f4  04 a0 8d e5                                      str sl, [sp, #4]
006067f8  b0 a0 c3 e1                                      strh sl, [r3]
006067fc  00 30 95 e5                                      ldr r3, [r5]
00606800  05 00 a0 e1                                      mov r0, r5
00606804  0d 70 a0 e1                                      mov r7, sp
00606808  18 80 93 e5                                      ldr r8, [r3, #0x18]
0060680c  0f e0 a0 e1                                      mov lr, pc
00606810  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00606814  0a 20 a0 e1                                      mov r2, sl
00606818  1a 10 40 e2                                      sub r1, r0, #0x1a
0060681c  05 00 a0 e1                                      mov r0, r5
00606820  38 ff 2f e1                                      blx r8
00606824  0d 10 a0 e1                                      mov r1, sp
00606828  1a 20 a0 e3                                      mov r2, #0x1a
0060682c  00 30 95 e5                                      ldr r3, [r5]
00606830  05 00 a0 e1                                      mov r0, r5
00606834  0f e0 a0 e1                                      mov lr, pc
00606838  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0060683c  24 10 9f e5                                      ldr r1, [pc, #0x24]
00606840  08 00 8d e2                                      add r0, sp, #8
00606844  01 10 8f e0                                      add r1, pc, r1
00606848  b3 1e f4 eb                                      bl #0x30e31c
0060684c  0a 00 50 e1                                      cmp r0, sl
00606850  00 00 a0 13                                      movne r0, #0
00606854  01 00 a0 03                                      moveq r0, #1
00606858  d7 ff ff ea                                      b #0x6067bc
0060685c  ab 1e f4 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00606860  08 e3 38 00 ac 40 00 00 4c e2 2d 00              .byte 0x08, 0xe3, 0x38, 0x00, 0xac, 0x40, 0x00, 0x00, 0x4c, 0xe2, 0x2d, 0x00

; FUNCTION 0x0060686c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::video::CImageLoaderTGA
; alias: _ZNK6glitch5video15CImageLoaderTGA24isALoadableFileExtensionEPKc
; demangled: glitch::video::CImageLoaderTGA::isALoadableFileExtension(char const*) const
; decoder-mode: arm
0060686c  10 40 2d e9                                      push {r4, lr}
00606870  01 00 a0 e1                                      mov r0, r1
00606874  01 40 a0 e1                                      mov r4, r1
00606878  30 10 9f e5                                      ldr r1, [pc, #0x30]
0060687c  01 10 8f e0                                      add r1, pc, r1
00606880  d3 20 f4 eb                                      bl #0x30ebd4
00606884  00 00 50 e3                                      cmp r0, #0
00606888  01 00 00 0a                                      beq #0x606894
0060688c  01 00 a0 e3                                      mov r0, #1
00606890  10 80 bd e8                                      pop {r4, pc}
00606894  18 10 9f e5                                      ldr r1, [pc, #0x18]
00606898  04 00 a0 e1                                      mov r0, r4
0060689c  01 10 8f e0                                      add r1, pc, r1
006068a0  cb 20 f4 eb                                      bl #0x30ebd4
006068a4  00 00 50 e2                                      subs r0, r0, #0
006068a8  01 00 a0 13                                      movne r0, #1
006068ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006068b0  bc 18 2c 00 0c e2 2d 00                          .byte 0xbc, 0x18, 0x2c, 0x00, 0x0c, 0xe2, 0x2d, 0x00
