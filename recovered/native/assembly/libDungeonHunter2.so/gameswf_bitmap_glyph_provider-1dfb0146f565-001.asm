; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a9698, declared_size=112, range_size=112, mode=arm
; class-group: gameswf::bitmap_glyph_provider
; alias: _ZN7gameswf21bitmap_glyph_providerC2Eiib
; demangled: gameswf::bitmap_glyph_provider::bitmap_glyph_provider(int, int, bool)
; decoder-mode: arm
007a9698  60 c0 9f e5                                      ldr ip, [pc, #0x60]
007a969c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007a96a0  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
007a96a4  0c c0 8f e0                                      add ip, pc, ip
007a96a8  01 70 a0 e1                                      mov r7, r1
007a96ac  05 50 9c e7                                      ldr r5, [ip, r5]
007a96b0  00 00 52 e3                                      cmp r2, #0
007a96b4  00 00 51 c3                                      cmpgt r1, #0
007a96b8  00 10 a0 e3                                      mov r1, #0
007a96bc  08 50 85 e2                                      add r5, r5, #8
007a96c0  02 60 a0 e1                                      mov r6, r2
007a96c4  00 40 a0 e1                                      mov r4, r0
007a96c8  00 50 80 e5                                      str r5, [r0]
007a96cc  08 30 c0 e5                                      strb r3, [r0, #8]
007a96d0  04 10 80 e5                                      str r1, [r0, #4]
007a96d4  0c 10 80 e5                                      str r1, [r0, #0xc]
007a96d8  06 00 00 da                                      ble #0x7a96f8
007a96dc  40 00 a0 e3                                      mov r0, #0x40
007a96e0  30 a5 fe eb                                      bl #0x752ba8
007a96e4  07 10 a0 e1                                      mov r1, r7
007a96e8  00 50 a0 e1                                      mov r5, r0
007a96ec  06 20 a0 e1                                      mov r2, r6
007a96f0  d4 6b 00 eb                                      bl #0x7c4648
007a96f4  0c 50 84 e5                                      str r5, [r4, #0xc]
007a96f8  04 00 a0 e1                                      mov r0, r4
007a96fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007a9700  ec b3 1e 00 2c 16 00 00                          .byte 0xec, 0xb3, 0x1e, 0x00, 0x2c, 0x16, 0x00, 0x00

; FUNCTION 0x007c4e34, declared_size=116, range_size=116, mode=arm
; class-group: gameswf::bitmap_glyph_provider
; alias: _ZN7gameswf21bitmap_glyph_providerD2Ev
; demangled: gameswf::bitmap_glyph_provider::~bitmap_glyph_provider()
; decoder-mode: arm
007c4e34  64 30 9f e5                                      ldr r3, [pc, #0x64]
007c4e38  64 20 9f e5                                      ldr r2, [pc, #0x64]
007c4e3c  70 40 2d e9                                      push {r4, r5, r6, lr}
007c4e40  03 30 8f e0                                      add r3, pc, r3
007c4e44  02 20 93 e7                                      ldr r2, [r3, r2]
007c4e48  00 40 a0 e1                                      mov r4, r0
007c4e4c  00 50 a0 e1                                      mov r5, r0
007c4e50  08 20 82 e2                                      add r2, r2, #8
007c4e54  04 20 84 e4                                      str r2, [r4], #4
007c4e58  04 00 a0 e1                                      mov r0, r4
007c4e5c  77 96 ff eb                                      bl #0x7aa840
007c4e60  0c 00 95 e5                                      ldr r0, [r5, #0xc]
007c4e64  00 00 50 e3                                      cmp r0, #0
007c4e68  08 00 00 0a                                      beq #0x7c4e90
007c4e6c  19 3c ff eb                                      bl #0x793ed8
007c4e70  0c 60 95 e5                                      ldr r6, [r5, #0xc]
007c4e74  00 00 56 e3                                      cmp r6, #0
007c4e78  04 00 00 0a                                      beq #0x7c4e90
007c4e7c  06 00 a0 e1                                      mov r0, r6
007c4e80  41 4f fe eb                                      bl #0x758b8c
007c4e84  06 00 a0 e1                                      mov r0, r6
007c4e88  00 10 a0 e3                                      mov r1, #0
007c4e8c  29 37 fe eb                                      bl #0x752b38
007c4e90  04 00 a0 e1                                      mov r0, r4
007c4e94  69 96 ff eb                                      bl #0x7aa840
007c4e98  05 00 a0 e1                                      mov r0, r5
007c4e9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007c4ea0  50 fc 1c 00 2c 16 00 00                          .byte 0x50, 0xfc, 0x1c, 0x00, 0x2c, 0x16, 0x00, 0x00

; FUNCTION 0x007c6048, declared_size=944, range_size=944, mode=arm
; class-group: gameswf::bitmap_glyph_provider
; alias: _ZN7gameswf21bitmap_glyph_provider15get_font_entityERKNS_9tu_stringEbb
; demangled: gameswf::bitmap_glyph_provider::get_font_entity(gameswf::tu_string const&, bool, bool)
; decoder-mode: arm
007c6048  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007c604c  8c 63 9f e5                                      ldr r6, [pc, #0x38c]
007c6050  8c c3 9f e5                                      ldr ip, [pc, #0x38c]
007c6054  63 df 4d e2                                      sub sp, sp, #0x18c
007c6058  06 60 8f e0                                      add r6, pc, r6
007c605c  0c c0 8d e5                                      str ip, [sp, #0xc]
007c6060  0c c0 96 e7                                      ldr ip, [r6, ip]
007c6064  02 80 a0 e1                                      mov r8, r2
007c6068  17 5e 8d e2                                      add r5, sp, #0x170
007c606c  00 20 9c e5                                      ldr r2, [ip]
007c6070  10 00 8d e5                                      str r0, [sp, #0x10]
007c6074  05 00 a0 e1                                      mov r0, r5
007c6078  03 a0 a0 e1                                      mov sl, r3
007c607c  84 21 8d e5                                      str r2, [sp, #0x184]
007c6080  01 b0 a0 e1                                      mov fp, r1
007c6084  e8 33 fe eb                                      bl #0x75302c
007c6088  00 00 58 e3                                      cmp r8, #0
007c608c  7c 00 00 1a                                      bne #0x7c6284
007c6090  00 00 5a e3                                      cmp sl, #0
007c6094  75 00 00 1a                                      bne #0x7c6270
007c6098  10 e0 9d e5                                      ldr lr, [sp, #0x10]
007c609c  57 4f 8d e2                                      add r4, sp, #0x15c
007c60a0  00 30 a0 e3                                      mov r3, #0
007c60a4  04 70 8e e2                                      add r7, lr, #4
007c60a8  1c 20 8d e2                                      add r2, sp, #0x1c
007c60ac  05 10 a0 e1                                      mov r1, r5
007c60b0  04 00 a0 e1                                      mov r0, r4
007c60b4  1c 30 8d e5                                      str r3, [sp, #0x1c]
007c60b8  14 20 8d e5                                      str r2, [sp, #0x14]
007c60bc  da 33 fe eb                                      bl #0x75302c
007c60c0  04 10 a0 e1                                      mov r1, r4
007c60c4  07 00 a0 e1                                      mov r0, r7
007c60c8  14 20 9d e5                                      ldr r2, [sp, #0x14]
007c60cc  dc fa ff eb                                      bl #0x7c4c44
007c60d0  5c c1 dd e5                                      ldrb ip, [sp, #0x15c]
007c60d4  00 90 a0 e1                                      mov sb, r0
007c60d8  7c 30 af e6                                      sxtb r3, ip
007c60dc  01 00 73 e3                                      cmn r3, #1
007c60e0  70 00 00 0a                                      beq #0x7c62a8
007c60e4  00 00 59 e3                                      cmp sb, #0
007c60e8  40 00 00 1a                                      bne #0x7c61f0
007c60ec  20 40 8d e2                                      add r4, sp, #0x20
007c60f0  09 10 a0 e1                                      mov r1, sb
007c60f4  01 2c a0 e3                                      mov r2, #0x100
007c60f8  04 00 a0 e1                                      mov r0, r4
007c60fc  d7 20 ed eb                                      bl #0x30e460
007c6100  d0 30 db e1                                      ldrsb r3, [fp]
007c6104  01 cc a0 e3                                      mov ip, #0x100
007c6108  08 10 a0 e1                                      mov r1, r8
007c610c  01 00 73 e3                                      cmn r3, #1
007c6110  0c 00 9b 05                                      ldreq r0, [fp, #0xc]
007c6114  01 00 8b 12                                      addne r0, fp, #1
007c6118  0a 20 a0 e1                                      mov r2, sl
007c611c  04 30 a0 e1                                      mov r3, r4
007c6120  00 c0 8d e5                                      str ip, [sp]
007c6124  98 94 f1 eb                                      bl #0x42b38c
007c6128  00 00 50 e3                                      cmp r0, #0
007c612c  22 00 00 0a                                      beq #0x7c61bc
007c6130  b0 12 9f e5                                      ldr r1, [pc, #0x2b0]
007c6134  04 00 a0 e1                                      mov r0, r4
007c6138  01 10 8f e0                                      add r1, pc, r1
007c613c  a4 22 ed eb                                      bl #0x30ebd4
007c6140  00 00 50 e3                                      cmp r0, #0
007c6144  5b 00 00 0a                                      beq #0x7c62b8
007c6148  10 e0 9d e5                                      ldr lr, [sp, #0x10]
007c614c  04 90 9e e5                                      ldr sb, [lr, #4]
007c6150  00 00 59 e3                                      cmp sb, #0
007c6154  07 00 00 0a                                      beq #0x7c6178
007c6158  04 30 99 e5                                      ldr r3, [sb, #4]
007c615c  00 00 53 e3                                      cmp r3, #0
007c6160  00 a0 a0 b3                                      movlt sl, #0
007c6164  33 00 00 aa                                      bge #0x7c6238
007c6168  00 00 57 e3                                      cmp r7, #0
007c616c  01 00 00 0a                                      beq #0x7c6178
007c6170  00 00 59 e3                                      cmp sb, #0
007c6174  5a 00 00 1a                                      bne #0x7c62e4
007c6178  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007c617c  4d 8f 8d e2                                      add r8, sp, #0x134
007c6180  04 10 a0 e1                                      mov r1, r4
007c6184  00 30 9c e5                                      ldr r3, [ip]
007c6188  08 00 a0 e1                                      mov r0, r8
007c618c  08 40 93 e5                                      ldr r4, [r3, #8]
007c6190  39 36 f1 eb                                      bl #0x413a7c
007c6194  08 10 a0 e1                                      mov r1, r8
007c6198  10 00 9d e5                                      ldr r0, [sp, #0x10]
007c619c  34 ff 2f e1                                      blx r4
007c61a0  00 10 a0 e1                                      mov r1, r0
007c61a4  14 00 9d e5                                      ldr r0, [sp, #0x14]
007c61a8  95 fa ff eb                                      bl #0x7c4c04
007c61ac  34 e1 dd e5                                      ldrb lr, [sp, #0x134]
007c61b0  7e 30 af e6                                      sxtb r3, lr
007c61b4  01 00 73 e3                                      cmn r3, #1
007c61b8  83 00 00 0a                                      beq #0x7c63cc
007c61bc  12 4e 8d e2                                      add r4, sp, #0x120
007c61c0  05 10 a0 e1                                      mov r1, r5
007c61c4  04 00 a0 e1                                      mov r0, r4
007c61c8  97 33 fe eb                                      bl #0x75302c
007c61cc  04 10 a0 e1                                      mov r1, r4
007c61d0  07 00 a0 e1                                      mov r0, r7
007c61d4  81 ff ff eb                                      bl #0x7c5fe0
007c61d8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007c61dc  88 fa ff eb                                      bl #0x7c4c04
007c61e0  20 21 dd e5                                      ldrb r2, [sp, #0x120]
007c61e4  72 30 af e6                                      sxtb r3, r2
007c61e8  01 00 73 e3                                      cmn r3, #1
007c61ec  38 00 00 0a                                      beq #0x7c62d4
007c61f0  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
007c61f4  08 00 a0 e1                                      mov r0, r8
007c61f8  00 00 50 e3                                      cmp r0, #0
007c61fc  00 00 00 0a                                      beq #0x7c6204
007c6200  0e 50 fe eb                                      bl #0x75a240
007c6204  70 c1 dd e5                                      ldrb ip, [sp, #0x170]
007c6208  7c 30 af e6                                      sxtb r3, ip
007c620c  01 00 73 e3                                      cmn r3, #1
007c6210  20 00 00 0a                                      beq #0x7c6298
007c6214  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007c6218  08 00 a0 e1                                      mov r0, r8
007c621c  02 30 96 e7                                      ldr r3, [r6, r2]
007c6220  84 21 9d e5                                      ldr r2, [sp, #0x184]
007c6224  00 30 93 e5                                      ldr r3, [r3]
007c6228  03 00 52 e1                                      cmp r2, r3
007c622c  6a 00 00 1a                                      bne #0x7c63dc
007c6230  63 df 8d e2                                      add sp, sp, #0x18c
007c6234  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007c6238  08 20 a0 e3                                      mov r2, #8
007c623c  00 a0 a0 e3                                      mov sl, #0
007c6240  02 10 99 e7                                      ldr r1, [sb, r2]
007c6244  02 00 89 e0                                      add r0, sb, r2
007c6248  02 00 71 e3                                      cmn r1, #2
007c624c  02 00 00 0a                                      beq #0x7c625c
007c6250  04 10 90 e5                                      ldr r1, [r0, #4]
007c6254  01 00 71 e3                                      cmn r1, #1
007c6258  c2 ff ff 1a                                      bne #0x7c6168
007c625c  01 a0 8a e2                                      add sl, sl, #1
007c6260  03 00 5a e1                                      cmp sl, r3
007c6264  20 20 82 e2                                      add r2, r2, #0x20
007c6268  f4 ff ff da                                      ble #0x7c6240
007c626c  bd ff ff ea                                      b #0x7c6168
007c6270  74 11 9f e5                                      ldr r1, [pc, #0x174]
007c6274  05 00 a0 e1                                      mov r0, r5
007c6278  01 10 8f e0                                      add r1, pc, r1
007c627c  d2 2f fe eb                                      bl #0x7521cc
007c6280  84 ff ff ea                                      b #0x7c6098
007c6284  64 11 9f e5                                      ldr r1, [pc, #0x164]
007c6288  05 00 a0 e1                                      mov r0, r5
007c628c  01 10 8f e0                                      add r1, pc, r1
007c6290  cd 2f fe eb                                      bl #0x7521cc
007c6294  7d ff ff ea                                      b #0x7c6090
007c6298  7c 01 9d e5                                      ldr r0, [sp, #0x17c]
007c629c  78 11 9d e5                                      ldr r1, [sp, #0x178]
007c62a0  24 32 fe eb                                      bl #0x752b38
007c62a4  da ff ff ea                                      b #0x7c6214
007c62a8  68 01 9d e5                                      ldr r0, [sp, #0x168]
007c62ac  64 11 9d e5                                      ldr r1, [sp, #0x164]
007c62b0  20 32 fe eb                                      bl #0x752b38
007c62b4  8a ff ff ea                                      b #0x7c60e4
007c62b8  34 11 9f e5                                      ldr r1, [pc, #0x134]
007c62bc  04 00 a0 e1                                      mov r0, r4
007c62c0  01 10 8f e0                                      add r1, pc, r1
007c62c4  42 22 ed eb                                      bl #0x30ebd4
007c62c8  00 00 50 e3                                      cmp r0, #0
007c62cc  9d ff ff 1a                                      bne #0x7c6148
007c62d0  b9 ff ff ea                                      b #0x7c61bc
007c62d4  2c 01 9d e5                                      ldr r0, [sp, #0x12c]
007c62d8  28 11 9d e5                                      ldr r1, [sp, #0x128]
007c62dc  15 32 fe eb                                      bl #0x752b38
007c62e0  c2 ff ff ea                                      b #0x7c61f0
007c62e4  04 b0 99 e5                                      ldr fp, [sb, #4]
007c62e8  0a 00 5b e1                                      cmp fp, sl
007c62ec  a1 ff ff ba                                      blt #0x7c6178
007c62f0  8a 32 89 e0                                      add r3, sb, sl, lsl #5
007c62f4  24 80 93 e5                                      ldr r8, [r3, #0x24]
007c62f8  00 00 58 e3                                      cmp r8, #0
007c62fc  21 00 00 0a                                      beq #0x7c6388
007c6300  d0 31 d8 e1                                      ldrsb r3, [r8, #0x10]
007c6304  04 10 a0 e1                                      mov r1, r4
007c6308  01 00 73 e3                                      cmn r3, #1
007c630c  11 00 88 12                                      addne r0, r8, #0x11
007c6310  1c 00 98 05                                      ldreq r0, [r8, #0x1c]
007c6314  00 20 ed eb                                      bl #0x30e31c
007c6318  00 00 50 e3                                      cmp r0, #0
007c631c  19 00 00 1a                                      bne #0x7c6388
007c6320  52 af 8d e2                                      add sl, sp, #0x148
007c6324  05 10 a0 e1                                      mov r1, r5
007c6328  62 4f 8d e2                                      add r4, sp, #0x188
007c632c  0a 00 a0 e1                                      mov r0, sl
007c6330  3d 33 fe eb                                      bl #0x75302c
007c6334  70 81 24 e5                                      str r8, [r4, #-0x170]!
007c6338  08 00 a0 e1                                      mov r0, r8
007c633c  48 4e fe eb                                      bl #0x759c64
007c6340  07 00 a0 e1                                      mov r0, r7
007c6344  0a 10 a0 e1                                      mov r1, sl
007c6348  04 20 a0 e1                                      mov r2, r4
007c634c  4f fe ff eb                                      bl #0x7c5c90
007c6350  18 00 9d e5                                      ldr r0, [sp, #0x18]
007c6354  00 00 50 e3                                      cmp r0, #0
007c6358  00 00 00 0a                                      beq #0x7c6360
007c635c  b7 4f fe eb                                      bl #0x75a240
007c6360  48 21 dd e5                                      ldrb r2, [sp, #0x148]
007c6364  72 30 af e6                                      sxtb r3, r2
007c6368  01 00 73 e3                                      cmn r3, #1
007c636c  1c 00 9d 15                                      ldrne r0, [sp, #0x1c]
007c6370  a0 ff ff 1a                                      bne #0x7c61f8
007c6374  54 01 9d e5                                      ldr r0, [sp, #0x154]
007c6378  50 11 9d e5                                      ldr r1, [sp, #0x150]
007c637c  ed 31 fe eb                                      bl #0x752b38
007c6380  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007c6384  9b ff ff ea                                      b #0x7c61f8
007c6388  01 a0 8a e2                                      add sl, sl, #1
007c638c  0b 00 5a e1                                      cmp sl, fp
007c6390  8a 32 a0 d1                                      lslle r3, sl, #5
007c6394  08 30 83 d2                                      addle r3, r3, #8
007c6398  d2 ff ff ca                                      bgt #0x7c62e8
007c639c  03 20 99 e7                                      ldr r2, [sb, r3]
007c63a0  03 10 89 e0                                      add r1, sb, r3
007c63a4  02 00 72 e3                                      cmn r2, #2
007c63a8  02 00 00 0a                                      beq #0x7c63b8
007c63ac  04 20 91 e5                                      ldr r2, [r1, #4]
007c63b0  01 00 72 e3                                      cmn r2, #1
007c63b4  cb ff ff 1a                                      bne #0x7c62e8
007c63b8  01 a0 8a e2                                      add sl, sl, #1
007c63bc  0b 00 5a e1                                      cmp sl, fp
007c63c0  20 30 83 e2                                      add r3, r3, #0x20
007c63c4  f4 ff ff da                                      ble #0x7c639c
007c63c8  c6 ff ff ea                                      b #0x7c62e8
007c63cc  40 01 9d e5                                      ldr r0, [sp, #0x140]
007c63d0  3c 11 9d e5                                      ldr r1, [sp, #0x13c]
007c63d4  d7 31 fe eb                                      bl #0x752b38
007c63d8  77 ff ff ea                                      b #0x7c61bc
007c63dc  cb 1f ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007c63e0  38 ea 1c 00 ac 40 00 00 c8 4f 14 00 80 4e 14 00  .byte 0x38, 0xea, 0x1c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc8, 0x4f, 0x14, 0x00, 0x80, 0x4e, 0x14, 0x00
007c63f0  a4 db 12 00 48 4e 14 00                          .byte 0xa4, 0xdb, 0x12, 0x00, 0x48, 0x4e, 0x14, 0x00

; FUNCTION 0x007c63f8, declared_size=116, range_size=116, mode=arm
; class-group: gameswf::bitmap_glyph_provider
; alias: _ZN7gameswf21bitmap_glyph_providerD1Ev
; demangled: gameswf::bitmap_glyph_provider::~bitmap_glyph_provider()
; decoder-mode: arm
007c63f8  64 30 9f e5                                      ldr r3, [pc, #0x64]
007c63fc  64 20 9f e5                                      ldr r2, [pc, #0x64]
007c6400  70 40 2d e9                                      push {r4, r5, r6, lr}
007c6404  03 30 8f e0                                      add r3, pc, r3
007c6408  02 20 93 e7                                      ldr r2, [r3, r2]
007c640c  00 40 a0 e1                                      mov r4, r0
007c6410  00 50 a0 e1                                      mov r5, r0
007c6414  08 20 82 e2                                      add r2, r2, #8
007c6418  04 20 84 e4                                      str r2, [r4], #4
007c641c  04 00 a0 e1                                      mov r0, r4
007c6420  06 91 ff eb                                      bl #0x7aa840
007c6424  0c 00 95 e5                                      ldr r0, [r5, #0xc]
007c6428  00 00 50 e3                                      cmp r0, #0
007c642c  08 00 00 0a                                      beq #0x7c6454
007c6430  a8 36 ff eb                                      bl #0x793ed8
007c6434  0c 60 95 e5                                      ldr r6, [r5, #0xc]
007c6438  00 00 56 e3                                      cmp r6, #0
007c643c  04 00 00 0a                                      beq #0x7c6454
007c6440  06 00 a0 e1                                      mov r0, r6
007c6444  d0 49 fe eb                                      bl #0x758b8c
007c6448  06 00 a0 e1                                      mov r0, r6
007c644c  00 10 a0 e3                                      mov r1, #0
007c6450  b8 31 fe eb                                      bl #0x752b38
007c6454  04 00 a0 e1                                      mov r0, r4
007c6458  f8 90 ff eb                                      bl #0x7aa840
007c645c  05 00 a0 e1                                      mov r0, r5
007c6460  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007c6464  8c e6 1c 00 2c 16 00 00                          .byte 0x8c, 0xe6, 0x1c, 0x00, 0x2c, 0x16, 0x00, 0x00

; FUNCTION 0x007c646c, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::bitmap_glyph_provider
; alias: _ZN7gameswf21bitmap_glyph_providerD0Ev
; demangled: gameswf::bitmap_glyph_provider::~bitmap_glyph_provider()
; decoder-mode: arm
007c646c  10 40 2d e9                                      push {r4, lr}
007c6470  00 40 a0 e1                                      mov r4, r0
007c6474  df ff ff eb                                      bl #0x7c63f8
007c6478  04 00 a0 e1                                      mov r0, r4
007c647c  8b 1f ed eb                                      bl #0x30e2b0
007c6480  04 00 a0 e1                                      mov r0, r4
007c6484  10 80 bd e8                                      pop {r4, pc}
