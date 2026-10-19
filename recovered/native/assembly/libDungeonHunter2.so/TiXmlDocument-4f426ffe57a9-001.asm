; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005145c8, declared_size=120, range_size=120, mode=arm
; class-group: TiXmlDocument
; alias: _ZNK13TiXmlDocument6AcceptEP12TiXmlVisitor
; demangled: TiXmlDocument::Accept(TiXmlVisitor*) const
; decoder-mode: arm
005145c8  70 40 2d e9                                      push {r4, r5, r6, lr}
005145cc  00 60 a0 e1                                      mov r6, r0
005145d0  00 30 91 e5                                      ldr r3, [r1]
005145d4  01 00 a0 e1                                      mov r0, r1
005145d8  01 50 a0 e1                                      mov r5, r1
005145dc  06 10 a0 e1                                      mov r1, r6
005145e0  0f e0 a0 e1                                      mov lr, pc
005145e4  08 f0 93 e5                                      ldr pc, [r3, #8]
005145e8  00 00 50 e3                                      cmp r0, #0
005145ec  0d 00 00 0a                                      beq #0x514628
005145f0  18 40 96 e5                                      ldr r4, [r6, #0x18]
005145f4  00 00 54 e3                                      cmp r4, #0
005145f8  03 00 00 1a                                      bne #0x51460c
005145fc  09 00 00 ea                                      b #0x514628
00514600  3c 40 94 e5                                      ldr r4, [r4, #0x3c]
00514604  00 00 54 e3                                      cmp r4, #0
00514608  06 00 00 0a                                      beq #0x514628
0051460c  00 30 94 e5                                      ldr r3, [r4]
00514610  04 00 a0 e1                                      mov r0, r4
00514614  05 10 a0 e1                                      mov r1, r5
00514618  0f e0 a0 e1                                      mov lr, pc
0051461c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00514620  00 00 50 e3                                      cmp r0, #0
00514624  f5 ff ff 1a                                      bne #0x514600
00514628  05 00 a0 e1                                      mov r0, r5
0051462c  06 10 a0 e1                                      mov r1, r6
00514630  00 30 95 e5                                      ldr r3, [r5]
00514634  0f e0 a0 e1                                      mov lr, pc
00514638  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0051463c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005150cc, declared_size=76, range_size=76, mode=arm
; class-group: TiXmlDocument
; alias: _ZNK13TiXmlDocument5PrintEP7__sFILEi
; demangled: TiXmlDocument::Print(__sFILE*, int) const
; decoder-mode: arm
005150cc  70 40 2d e9                                      push {r4, r5, r6, lr}
005150d0  18 40 90 e5                                      ldr r4, [r0, #0x18]
005150d4  01 50 a0 e1                                      mov r5, r1
005150d8  02 60 a0 e1                                      mov r6, r2
005150dc  00 00 54 e3                                      cmp r4, #0
005150e0  0b 00 00 0a                                      beq #0x515114
005150e4  04 00 a0 e1                                      mov r0, r4
005150e8  00 30 94 e5                                      ldr r3, [r4]
005150ec  05 10 a0 e1                                      mov r1, r5
005150f0  06 20 a0 e1                                      mov r2, r6
005150f4  0f e0 a0 e1                                      mov lr, pc
005150f8  08 f0 93 e5                                      ldr pc, [r3, #8]
005150fc  0a 00 a0 e3                                      mov r0, #0xa
00515100  05 10 a0 e1                                      mov r1, r5
00515104  ac e6 f7 eb                                      bl #0x30ebbc
00515108  3c 40 94 e5                                      ldr r4, [r4, #0x3c]
0051510c  00 00 54 e3                                      cmp r4, #0
00515110  f3 ff ff 1a                                      bne #0x5150e4
00515114  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005164a8, declared_size=396, range_size=396, mode=arm
; class-group: TiXmlDocument
; alias: _ZN13TiXmlDocument14LoadFromBufferEPKvi13TiXmlEncoding
; demangled: TiXmlDocument::LoadFromBuffer(void const*, int, TiXmlEncoding)
; decoder-mode: arm
005164a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005164ac  78 51 9f e5                                      ldr r5, [pc, #0x178]
005164b0  78 91 9f e5                                      ldr sb, [pc, #0x178]
005164b4  02 80 a0 e1                                      mov r8, r2
005164b8  05 50 8f e0                                      add r5, pc, r5
005164bc  09 20 95 e7                                      ldr r2, [r5, sb]
005164c0  03 b0 a0 e1                                      mov fp, r3
005164c4  2c d0 4d e2                                      sub sp, sp, #0x2c
005164c8  00 30 92 e5                                      ldr r3, [r2]
005164cc  00 60 a0 e1                                      mov r6, r0
005164d0  01 a0 a0 e1                                      mov sl, r1
005164d4  24 30 8d e5                                      str r3, [sp, #0x24]
005164d8  7a f7 ff eb                                      bl #0x5142c8
005164dc  00 30 e0 e3                                      mvn r3, #0
005164e0  00 00 58 e3                                      cmp r8, #0
005164e4  04 30 86 e5                                      str r3, [r6, #4]
005164e8  08 30 86 e5                                      str r3, [r6, #8]
005164ec  45 00 00 da                                      ble #0x516608
005164f0  0c 40 8d e2                                      add r4, sp, #0xc
005164f4  04 00 a0 e1                                      mov r0, r4
005164f8  10 10 a0 e3                                      mov r1, #0x10
005164fc  1c 40 8d e5                                      str r4, [sp, #0x1c]
00516500  20 40 8d e5                                      str r4, [sp, #0x20]
00516504  5c ec f7 eb                                      bl #0x31167c
00516508  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0051650c  00 20 a0 e3                                      mov r2, #0
00516510  08 10 a0 e1                                      mov r1, r8
00516514  00 20 c3 e5                                      strb r2, [r3]
00516518  04 00 a0 e1                                      mov r0, r4
0051651c  13 50 f8 eb                                      bl #0x32a570
00516520  0a 70 a0 e1                                      mov r7, sl
00516524  08 80 8a e0                                      add r8, sl, r8
00516528  0a 10 a0 e1                                      mov r1, sl
0051652c  08 00 57 e1                                      cmp r7, r8
00516530  16 00 00 2a                                      bhs #0x516590
00516534  d0 30 d7 e1                                      ldrsb r3, [r7]
00516538  0a 00 53 e3                                      cmp r3, #0xa
0051653c  2b 00 00 0a                                      beq #0x5165f0
00516540  0d 00 53 e3                                      cmp r3, #0xd
00516544  01 70 87 12                                      addne r7, r7, #1
00516548  f7 ff ff 1a                                      bne #0x51652c
0051654c  07 20 61 e0                                      rsb r2, r1, r7
00516550  00 00 52 e3                                      cmp r2, #0
00516554  02 00 00 da                                      ble #0x516564
00516558  02 20 81 e0                                      add r2, r1, r2
0051655c  04 00 a0 e1                                      mov r0, r4
00516560  a7 e8 f7 eb                                      bl #0x310804
00516564  0a 10 a0 e3                                      mov r1, #0xa
00516568  04 00 a0 e1                                      mov r0, r4
0051656c  3a 4f f8 eb                                      bl #0x32a25c
00516570  d1 30 d7 e1                                      ldrsb r3, [r7, #1]
00516574  01 10 87 e2                                      add r1, r7, #1
00516578  0a 00 53 e3                                      cmp r3, #0xa
0051657c  02 70 87 02                                      addeq r7, r7, #2
00516580  01 70 a0 11                                      movne r7, r1
00516584  07 10 a0 01                                      moveq r1, r7
00516588  08 00 57 e1                                      cmp r7, r8
0051658c  e8 ff ff 3a                                      blo #0x516534
00516590  01 00 57 e1                                      cmp r7, r1
00516594  02 00 00 0a                                      beq #0x5165a4
00516598  07 20 a0 e1                                      mov r2, r7
0051659c  04 00 a0 e1                                      mov r0, r4
005165a0  97 e8 f7 eb                                      bl #0x310804
005165a4  0b 30 a0 e1                                      mov r3, fp
005165a8  00 c0 96 e5                                      ldr ip, [r6]
005165ac  06 00 a0 e1                                      mov r0, r6
005165b0  20 10 9d e5                                      ldr r1, [sp, #0x20]
005165b4  00 20 a0 e3                                      mov r2, #0
005165b8  0f e0 a0 e1                                      mov lr, pc
005165bc  0c f0 9c e5                                      ldr pc, [ip, #0xc]
005165c0  40 30 d6 e5                                      ldrb r3, [r6, #0x40]
005165c4  04 00 a0 e1                                      mov r0, r4
005165c8  01 40 23 e2                                      eor r4, r3, #1
005165cc  f6 f4 f7 eb                                      bl #0x3139ac
005165d0  09 30 95 e7                                      ldr r3, [r5, sb]
005165d4  24 20 9d e5                                      ldr r2, [sp, #0x24]
005165d8  04 00 a0 e1                                      mov r0, r4
005165dc  00 30 93 e5                                      ldr r3, [r3]
005165e0  03 00 52 e1                                      cmp r2, r3
005165e4  0f 00 00 1a                                      bne #0x516628
005165e8  2c d0 8d e2                                      add sp, sp, #0x2c
005165ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005165f0  01 20 87 e2                                      add r2, r7, #1
005165f4  02 70 a0 e1                                      mov r7, r2
005165f8  04 00 a0 e1                                      mov r0, r4
005165fc  80 e8 f7 eb                                      bl #0x310804
00516600  07 10 a0 e1                                      mov r1, r7
00516604  c8 ff ff ea                                      b #0x51652c
00516608  00 40 a0 e3                                      mov r4, #0
0051660c  06 00 a0 e1                                      mov r0, r6
00516610  0d 10 a0 e3                                      mov r1, #0xd
00516614  04 20 a0 e1                                      mov r2, r4
00516618  04 30 a0 e1                                      mov r3, r4
0051661c  00 40 8d e5                                      str r4, [sp]
00516620  b0 0b 00 eb                                      bl #0x5194e8
00516624  e9 ff ff ea                                      b #0x5165d0
00516628  38 df f7 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0051662c  d8 e5 47 00 ac 40 00 00                          .byte 0xd8, 0xe5, 0x47, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00516d20, declared_size=148, range_size=148, mode=arm
; class-group: TiXmlDocument
; alias: _ZNK13TiXmlDocument6CopyToEPS_
; demangled: TiXmlDocument::CopyTo(TiXmlDocument*) const
; decoder-mode: arm
00516d20  70 40 2d e9                                      push {r4, r5, r6, lr}
00516d24  00 50 a0 e1                                      mov r5, r0
00516d28  01 40 a0 e1                                      mov r4, r1
00516d2c  08 ff ff eb                                      bl #0x516954
00516d30  40 30 d5 e5                                      ldrb r3, [r5, #0x40]
00516d34  48 00 84 e2                                      add r0, r4, #0x48
00516d38  48 20 85 e2                                      add r2, r5, #0x48
00516d3c  40 30 c4 e5                                      strb r3, [r4, #0x40]
00516d40  44 30 95 e5                                      ldr r3, [r5, #0x44]
00516d44  02 00 50 e1                                      cmp r0, r2
00516d48  44 30 84 e5                                      str r3, [r4, #0x44]
00516d4c  02 00 00 0a                                      beq #0x516d5c
00516d50  5c 10 95 e5                                      ldr r1, [r5, #0x5c]
00516d54  58 20 95 e5                                      ldr r2, [r5, #0x58]
00516d58  20 e7 f7 eb                                      bl #0x3109e0
00516d5c  60 30 95 e5                                      ldr r3, [r5, #0x60]
00516d60  60 30 84 e5                                      str r3, [r4, #0x60]
00516d64  64 30 95 e5                                      ldr r3, [r5, #0x64]
00516d68  64 30 84 e5                                      str r3, [r4, #0x64]
00516d6c  68 30 95 e5                                      ldr r3, [r5, #0x68]
00516d70  68 30 84 e5                                      str r3, [r4, #0x68]
00516d74  6c 30 d5 e5                                      ldrb r3, [r5, #0x6c]
00516d78  6c 30 c4 e5                                      strb r3, [r4, #0x6c]
00516d7c  18 50 95 e5                                      ldr r5, [r5, #0x18]
00516d80  00 00 55 e3                                      cmp r5, #0
00516d84  09 00 00 0a                                      beq #0x516db0
00516d88  00 30 95 e5                                      ldr r3, [r5]
00516d8c  05 00 a0 e1                                      mov r0, r5
00516d90  0f e0 a0 e1                                      mov lr, pc
00516d94  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00516d98  00 10 a0 e1                                      mov r1, r0
00516d9c  04 00 a0 e1                                      mov r0, r4
00516da0  ef fa ff eb                                      bl #0x515964
00516da4  3c 50 95 e5                                      ldr r5, [r5, #0x3c]
00516da8  00 00 55 e3                                      cmp r5, #0
00516dac  f5 ff ff 1a                                      bne #0x516d88
00516db0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00516db4, declared_size=32, range_size=32, mode=arm
; class-group: TiXmlDocument
; alias: _ZN13TiXmlDocumentaSERKS_
; demangled: TiXmlDocument::operator=(TiXmlDocument const&)
; decoder-mode: arm
00516db4  70 40 2d e9                                      push {r4, r5, r6, lr}
00516db8  01 50 a0 e1                                      mov r5, r1
00516dbc  00 40 a0 e1                                      mov r4, r0
00516dc0  40 f5 ff eb                                      bl #0x5142c8
00516dc4  05 00 a0 e1                                      mov r0, r5
00516dc8  04 10 a0 e1                                      mov r1, r4
00516dcc  70 40 bd e8                                      pop {r4, r5, r6, lr}
00516dd0  d2 ff ff ea                                      b #0x516d20

; FUNCTION 0x00516dd4, declared_size=120, range_size=120, mode=arm
; class-group: TiXmlDocument
; alias: _ZN13TiXmlDocumentC1ERKS_
; demangled: TiXmlDocument::TiXmlDocument(TiXmlDocument const&)
; decoder-mode: arm
00516dd4  70 40 2d e9                                      push {r4, r5, r6, lr}
00516dd8  01 60 a0 e1                                      mov r6, r1
00516ddc  60 50 9f e5                                      ldr r5, [pc, #0x60]
00516de0  00 10 a0 e3                                      mov r1, #0
00516de4  00 40 a0 e1                                      mov r4, r0
00516de8  0a fc ff eb                                      bl #0x515e18
00516dec  54 20 9f e5                                      ldr r2, [pc, #0x54]
00516df0  05 50 8f e0                                      add r5, pc, r5
00516df4  04 30 a0 e1                                      mov r3, r4
00516df8  02 20 95 e7                                      ldr r2, [r5, r2]
00516dfc  10 10 a0 e3                                      mov r1, #0x10
00516e00  08 20 82 e2                                      add r2, r2, #8
00516e04  48 20 83 e4                                      str r2, [r3], #0x48
00516e08  03 00 a0 e1                                      mov r0, r3
00516e0c  58 30 84 e5                                      str r3, [r4, #0x58]
00516e10  5c 30 84 e5                                      str r3, [r4, #0x5c]
00516e14  18 ea f7 eb                                      bl #0x31167c
00516e18  58 20 94 e5                                      ldr r2, [r4, #0x58]
00516e1c  00 30 e0 e3                                      mvn r3, #0
00516e20  00 10 a0 e3                                      mov r1, #0
00516e24  00 10 c2 e5                                      strb r1, [r2]
00516e28  06 00 a0 e1                                      mov r0, r6
00516e2c  64 30 84 e5                                      str r3, [r4, #0x64]
00516e30  68 30 84 e5                                      str r3, [r4, #0x68]
00516e34  04 10 a0 e1                                      mov r1, r4
00516e38  b8 ff ff eb                                      bl #0x516d20
00516e3c  04 00 a0 e1                                      mov r0, r4
00516e40  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00516e44  a0 dc 47 00 30 09 00 00                          .byte 0xa0, 0xdc, 0x47, 0x00, 0x30, 0x09, 0x00, 0x00

; FUNCTION 0x00516e4c, declared_size=120, range_size=120, mode=arm
; class-group: TiXmlDocument
; alias: _ZN13TiXmlDocumentC2ERKS_
; demangled: TiXmlDocument::TiXmlDocument(TiXmlDocument const&)
; decoder-mode: arm
00516e4c  70 40 2d e9                                      push {r4, r5, r6, lr}
00516e50  01 60 a0 e1                                      mov r6, r1
00516e54  60 50 9f e5                                      ldr r5, [pc, #0x60]
00516e58  00 10 a0 e3                                      mov r1, #0
00516e5c  00 40 a0 e1                                      mov r4, r0
00516e60  ec fb ff eb                                      bl #0x515e18
00516e64  54 20 9f e5                                      ldr r2, [pc, #0x54]
00516e68  05 50 8f e0                                      add r5, pc, r5
00516e6c  04 30 a0 e1                                      mov r3, r4
00516e70  02 20 95 e7                                      ldr r2, [r5, r2]
00516e74  10 10 a0 e3                                      mov r1, #0x10
00516e78  08 20 82 e2                                      add r2, r2, #8
00516e7c  48 20 83 e4                                      str r2, [r3], #0x48
00516e80  03 00 a0 e1                                      mov r0, r3
00516e84  58 30 84 e5                                      str r3, [r4, #0x58]
00516e88  5c 30 84 e5                                      str r3, [r4, #0x5c]
00516e8c  fa e9 f7 eb                                      bl #0x31167c
00516e90  58 20 94 e5                                      ldr r2, [r4, #0x58]
00516e94  00 30 e0 e3                                      mvn r3, #0
00516e98  00 10 a0 e3                                      mov r1, #0
00516e9c  00 10 c2 e5                                      strb r1, [r2]
00516ea0  06 00 a0 e1                                      mov r0, r6
00516ea4  64 30 84 e5                                      str r3, [r4, #0x64]
00516ea8  68 30 84 e5                                      str r3, [r4, #0x68]
00516eac  04 10 a0 e1                                      mov r1, r4
00516eb0  9a ff ff eb                                      bl #0x516d20
00516eb4  04 00 a0 e1                                      mov r0, r4
00516eb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00516ebc  28 dc 47 00 30 09 00 00                          .byte 0x28, 0xdc, 0x47, 0x00, 0x30, 0x09, 0x00, 0x00

; FUNCTION 0x00516ec4, declared_size=156, range_size=156, mode=arm
; class-group: TiXmlDocument
; alias: _ZN13TiXmlDocumentC1Ev
; demangled: TiXmlDocument::TiXmlDocument()
; decoder-mode: arm
00516ec4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00516ec8  00 10 a0 e3                                      mov r1, #0
00516ecc  80 70 9f e5                                      ldr r7, [pc, #0x80]
00516ed0  00 40 a0 e1                                      mov r4, r0
00516ed4  cf fb ff eb                                      bl #0x515e18
00516ed8  78 30 9f e5                                      ldr r3, [pc, #0x78]
00516edc  07 70 8f e0                                      add r7, pc, r7
00516ee0  04 60 a0 e1                                      mov r6, r4
00516ee4  03 30 97 e7                                      ldr r3, [r7, r3]
00516ee8  10 10 a0 e3                                      mov r1, #0x10
00516eec  00 50 a0 e3                                      mov r5, #0
00516ef0  08 30 83 e2                                      add r3, r3, #8
00516ef4  48 30 86 e4                                      str r3, [r6], #0x48
00516ef8  06 00 a0 e1                                      mov r0, r6
00516efc  58 60 84 e5                                      str r6, [r4, #0x58]
00516f00  5c 60 84 e5                                      str r6, [r4, #0x5c]
00516f04  dc e9 f7 eb                                      bl #0x31167c
00516f08  58 20 94 e5                                      ldr r2, [r4, #0x58]
00516f0c  48 10 9f e5                                      ldr r1, [pc, #0x48]
00516f10  00 30 e0 e3                                      mvn r3, #0
00516f14  00 50 c2 e5                                      strb r5, [r2]
00516f18  01 10 8f e0                                      add r1, pc, r1
00516f1c  04 20 a0 e3                                      mov r2, #4
00516f20  60 20 84 e5                                      str r2, [r4, #0x60]
00516f24  64 30 84 e5                                      str r3, [r4, #0x64]
00516f28  68 30 84 e5                                      str r3, [r4, #0x68]
00516f2c  6c 50 c4 e5                                      strb r5, [r4, #0x6c]
00516f30  40 50 c4 e5                                      strb r5, [r4, #0x40]
00516f34  44 50 84 e5                                      str r5, [r4, #0x44]
00516f38  06 00 a0 e1                                      mov r0, r6
00516f3c  01 20 a0 e1                                      mov r2, r1
00516f40  a6 e6 f7 eb                                      bl #0x3109e0
00516f44  64 50 84 e5                                      str r5, [r4, #0x64]
00516f48  68 50 84 e5                                      str r5, [r4, #0x68]
00516f4c  04 00 a0 e1                                      mov r0, r4
00516f50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00516f54  b4 db 47 00 30 09 00 00 f0 48 3b 00              .byte 0xb4, 0xdb, 0x47, 0x00, 0x30, 0x09, 0x00, 0x00, 0xf0, 0x48, 0x3b, 0x00

; FUNCTION 0x00516f60, declared_size=56, range_size=56, mode=arm
; class-group: TiXmlDocument
; alias: _ZNK13TiXmlDocument5CloneEv
; demangled: TiXmlDocument::Clone() const
; decoder-mode: arm
00516f60  70 40 2d e9                                      push {r4, r5, r6, lr}
00516f64  00 10 a0 e3                                      mov r1, #0
00516f68  00 50 a0 e1                                      mov r5, r0
00516f6c  70 00 a0 e3                                      mov r0, #0x70
00516f70  7e e5 f7 eb                                      bl #0x310570
00516f74  00 40 a0 e1                                      mov r4, r0
00516f78  d1 ff ff eb                                      bl #0x516ec4
00516f7c  00 00 54 e3                                      cmp r4, #0
00516f80  02 00 00 0a                                      beq #0x516f90
00516f84  05 00 a0 e1                                      mov r0, r5
00516f88  04 10 a0 e1                                      mov r1, r4
00516f8c  63 ff ff eb                                      bl #0x516d20
00516f90  04 00 a0 e1                                      mov r0, r4
00516f94  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00516f98, declared_size=156, range_size=156, mode=arm
; class-group: TiXmlDocument
; alias: _ZN13TiXmlDocumentC2Ev
; demangled: TiXmlDocument::TiXmlDocument()
; decoder-mode: arm
00516f98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00516f9c  00 10 a0 e3                                      mov r1, #0
00516fa0  80 70 9f e5                                      ldr r7, [pc, #0x80]
00516fa4  00 40 a0 e1                                      mov r4, r0
00516fa8  9a fb ff eb                                      bl #0x515e18
00516fac  78 30 9f e5                                      ldr r3, [pc, #0x78]
00516fb0  07 70 8f e0                                      add r7, pc, r7
00516fb4  04 60 a0 e1                                      mov r6, r4
00516fb8  03 30 97 e7                                      ldr r3, [r7, r3]
00516fbc  10 10 a0 e3                                      mov r1, #0x10
00516fc0  00 50 a0 e3                                      mov r5, #0
00516fc4  08 30 83 e2                                      add r3, r3, #8
00516fc8  48 30 86 e4                                      str r3, [r6], #0x48
00516fcc  06 00 a0 e1                                      mov r0, r6
00516fd0  58 60 84 e5                                      str r6, [r4, #0x58]
00516fd4  5c 60 84 e5                                      str r6, [r4, #0x5c]
00516fd8  a7 e9 f7 eb                                      bl #0x31167c
00516fdc  58 20 94 e5                                      ldr r2, [r4, #0x58]
00516fe0  48 10 9f e5                                      ldr r1, [pc, #0x48]
00516fe4  00 30 e0 e3                                      mvn r3, #0
00516fe8  00 50 c2 e5                                      strb r5, [r2]
00516fec  01 10 8f e0                                      add r1, pc, r1
00516ff0  04 20 a0 e3                                      mov r2, #4
00516ff4  60 20 84 e5                                      str r2, [r4, #0x60]
00516ff8  64 30 84 e5                                      str r3, [r4, #0x64]
00516ffc  68 30 84 e5                                      str r3, [r4, #0x68]
00517000  6c 50 c4 e5                                      strb r5, [r4, #0x6c]
00517004  40 50 c4 e5                                      strb r5, [r4, #0x40]
00517008  44 50 84 e5                                      str r5, [r4, #0x44]
0051700c  06 00 a0 e1                                      mov r0, r6
00517010  01 20 a0 e1                                      mov r2, r1
00517014  71 e6 f7 eb                                      bl #0x3109e0
00517018  64 50 84 e5                                      str r5, [r4, #0x64]
0051701c  68 50 84 e5                                      str r5, [r4, #0x68]
00517020  04 00 a0 e1                                      mov r0, r4
00517024  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00517028  e0 da 47 00 30 09 00 00 1c 48 3b 00              .byte 0xe0, 0xda, 0x47, 0x00, 0x30, 0x09, 0x00, 0x00, 0x1c, 0x48, 0x3b, 0x00

; FUNCTION 0x005184a8, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlDocument
; alias: _ZNK13TiXmlDocument10ToDocumentEv
; demangled: TiXmlDocument::ToDocument() const
; decoder-mode: arm
005184a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005184ac, declared_size=4, range_size=4, mode=arm
; class-group: TiXmlDocument
; alias: _ZN13TiXmlDocument10ToDocumentEv
; demangled: TiXmlDocument::ToDocument()
; decoder-mode: arm
005184ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x00518a70, declared_size=60, range_size=60, mode=arm
; class-group: TiXmlDocument
; alias: _ZN13TiXmlDocumentD1Ev
; demangled: TiXmlDocument::~TiXmlDocument()
; decoder-mode: arm
00518a70  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00518a74  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00518a78  10 40 2d e9                                      push {r4, lr}
00518a7c  03 30 8f e0                                      add r3, pc, r3
00518a80  02 20 93 e7                                      ldr r2, [r3, r2]
00518a84  00 40 a0 e1                                      mov r4, r0
00518a88  08 20 82 e2                                      add r2, r2, #8
00518a8c  48 20 80 e4                                      str r2, [r0], #0x48
00518a90  c5 eb f7 eb                                      bl #0x3139ac
00518a94  04 00 a0 e1                                      mov r0, r4
00518a98  05 f0 ff eb                                      bl #0x514ab4
00518a9c  04 00 a0 e1                                      mov r0, r4
00518aa0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00518aa4  14 c0 47 00 30 09 00 00                          .byte 0x14, 0xc0, 0x47, 0x00, 0x30, 0x09, 0x00, 0x00

; FUNCTION 0x00518e28, declared_size=68, range_size=68, mode=arm
; class-group: TiXmlDocument
; alias: _ZN13TiXmlDocumentD0Ev
; demangled: TiXmlDocument::~TiXmlDocument()
; decoder-mode: arm
00518e28  34 30 9f e5                                      ldr r3, [pc, #0x34]
00518e2c  34 20 9f e5                                      ldr r2, [pc, #0x34]
00518e30  10 40 2d e9                                      push {r4, lr}
00518e34  03 30 8f e0                                      add r3, pc, r3
00518e38  02 20 93 e7                                      ldr r2, [r3, r2]
00518e3c  00 40 a0 e1                                      mov r4, r0
00518e40  08 20 82 e2                                      add r2, r2, #8
00518e44  48 20 80 e4                                      str r2, [r0], #0x48
00518e48  d7 ea f7 eb                                      bl #0x3139ac
00518e4c  04 00 a0 e1                                      mov r0, r4
00518e50  17 ef ff eb                                      bl #0x514ab4
00518e54  04 00 a0 e1                                      mov r0, r4
00518e58  78 dd f7 eb                                      bl #0x310440
00518e5c  04 00 a0 e1                                      mov r0, r4
00518e60  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00518e64  5c bc 47 00 30 09 00 00                          .byte 0x5c, 0xbc, 0x47, 0x00, 0x30, 0x09, 0x00, 0x00

; FUNCTION 0x005194e8, declared_size=156, range_size=156, mode=arm
; class-group: TiXmlDocument
; alias: _ZN13TiXmlDocument8SetErrorEiPKcP16TiXmlParsingData13TiXmlEncoding
; demangled: TiXmlDocument::SetError(int, char const*, TiXmlParsingData*, TiXmlEncoding)
; decoder-mode: arm
005194e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005194ec  00 40 a0 e1                                      mov r4, r0
005194f0  40 00 d0 e5                                      ldrb r0, [r0, #0x40]
005194f4  80 c0 9f e5                                      ldr ip, [pc, #0x80]
005194f8  02 50 a0 e1                                      mov r5, r2
005194fc  00 00 50 e3                                      cmp r0, #0
00519500  0c c0 8f e0                                      add ip, pc, ip
00519504  03 60 a0 e1                                      mov r6, r3
00519508  00 00 00 0a                                      beq #0x519510
0051950c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00519510  01 30 a0 e3                                      mov r3, #1
00519514  40 30 c4 e5                                      strb r3, [r4, #0x40]
00519518  60 30 9f e5                                      ldr r3, [pc, #0x60]
0051951c  44 10 84 e5                                      str r1, [r4, #0x44]
00519520  03 30 9c e7                                      ldr r3, [ip, r3]
00519524  01 71 93 e7                                      ldr r7, [r3, r1, lsl #2]
00519528  07 00 a0 e1                                      mov r0, r7
0051952c  48 d2 f7 eb                                      bl #0x30de54
00519530  07 10 a0 e1                                      mov r1, r7
00519534  00 20 87 e0                                      add r2, r7, r0
00519538  48 00 84 e2                                      add r0, r4, #0x48
0051953c  27 dd f7 eb                                      bl #0x3109e0
00519540  00 30 e0 e3                                      mvn r3, #0
00519544  00 00 56 e3                                      cmp r6, #0
00519548  00 00 55 13                                      cmpne r5, #0
0051954c  64 30 84 e5                                      str r3, [r4, #0x64]
00519550  68 30 84 e5                                      str r3, [r4, #0x68]
00519554  ec ff ff 0a                                      beq #0x51950c
00519558  05 10 a0 e1                                      mov r1, r5
0051955c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00519560  06 00 a0 e1                                      mov r0, r6
00519564  2b fc ff eb                                      bl #0x518618
00519568  00 30 96 e5                                      ldr r3, [r6]
0051956c  64 30 84 e5                                      str r3, [r4, #0x64]
00519570  04 30 96 e5                                      ldr r3, [r6, #4]
00519574  68 30 84 e5                                      str r3, [r4, #0x68]
00519578  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0051957c  90 b5 47 00 c8 14 00 00                          .byte 0x90, 0xb5, 0x47, 0x00, 0xc8, 0x14, 0x00, 0x00

; FUNCTION 0x0051a734, declared_size=616, range_size=616, mode=arm
; class-group: TiXmlDocument
; alias: _ZN13TiXmlDocument5ParseEPKcP16TiXmlParsingData13TiXmlEncoding
; demangled: TiXmlDocument::Parse(char const*, TiXmlParsingData*, TiXmlEncoding)
; decoder-mode: arm
0051a734  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0051a738  50 c2 9f e5                                      ldr ip, [pc, #0x250]
0051a73c  00 60 a0 e3                                      mov r6, #0
0051a740  00 70 a0 e1                                      mov r7, r0
0051a744  0c c0 8f e0                                      add ip, pc, ip
0051a748  01 50 a0 e1                                      mov r5, r1
0051a74c  40 60 c0 e5                                      strb r6, [r0, #0x40]
0051a750  44 60 80 e5                                      str r6, [r0, #0x44]
0051a754  18 d0 4d e2                                      sub sp, sp, #0x18
0051a758  0c 10 a0 e1                                      mov r1, ip
0051a75c  02 80 a0 e1                                      mov r8, r2
0051a760  48 00 80 e2                                      add r0, r0, #0x48
0051a764  0c 20 a0 e1                                      mov r2, ip
0051a768  03 40 a0 e1                                      mov r4, r3
0051a76c  9b d8 f7 eb                                      bl #0x3109e0
0051a770  06 00 55 e1                                      cmp r5, r6
0051a774  64 60 87 e5                                      str r6, [r7, #0x64]
0051a778  68 60 87 e5                                      str r6, [r7, #0x68]
0051a77c  73 00 00 0a                                      beq #0x51a950
0051a780  d0 30 d5 e1                                      ldrsb r3, [r5]
0051a784  06 00 53 e1                                      cmp r3, r6
0051a788  70 00 00 0a                                      beq #0x51a950
0051a78c  00 30 e0 e3                                      mvn r3, #0
0051a790  04 30 87 e5                                      str r3, [r7, #4]
0051a794  08 30 87 e5                                      str r3, [r7, #8]
0051a798  00 00 58 e3                                      cmp r8, #0
0051a79c  00 20 98 15                                      ldrne r2, [r8]
0051a7a0  60 10 97 e5                                      ldr r1, [r7, #0x60]
0051a7a4  08 30 a0 01                                      moveq r3, r8
0051a7a8  04 20 87 15                                      strne r2, [r7, #4]
0051a7ac  04 30 98 15                                      ldrne r3, [r8, #4]
0051a7b0  04 80 87 05                                      streq r8, [r7, #4]
0051a7b4  08 80 87 05                                      streq r8, [r7, #8]
0051a7b8  08 30 87 15                                      strne r3, [r7, #8]
0051a7bc  03 20 a0 01                                      moveq r2, r3
0051a7c0  00 00 54 e3                                      cmp r4, #0
0051a7c4  04 20 87 e5                                      str r2, [r7, #4]
0051a7c8  14 10 8d e5                                      str r1, [sp, #0x14]
0051a7cc  08 30 87 e5                                      str r3, [r7, #8]
0051a7d0  10 50 8d e5                                      str r5, [sp, #0x10]
0051a7d4  08 20 8d e5                                      str r2, [sp, #8]
0051a7d8  0c 30 8d e5                                      str r3, [sp, #0xc]
0051a7dc  2c 00 00 0a                                      beq #0x51a894
0051a7e0  05 00 a0 e1                                      mov r0, r5
0051a7e4  04 10 a0 e1                                      mov r1, r4
0051a7e8  e6 f7 ff eb                                      bl #0x518788
0051a7ec  00 50 50 e2                                      subs r5, r0, #0
0051a7f0  57 00 00 0a                                      beq #0x51a954
0051a7f4  d0 30 d5 e1                                      ldrsb r3, [r5]
0051a7f8  00 00 53 e3                                      cmp r3, #0
0051a7fc  1e 00 00 0a                                      beq #0x51a87c
0051a800  8c a1 9f e5                                      ldr sl, [pc, #0x18c]
0051a804  8c 91 9f e5                                      ldr sb, [pc, #0x18c]
0051a808  08 80 8d e2                                      add r8, sp, #8
0051a80c  0a a0 8f e0                                      add sl, pc, sl
0051a810  09 90 8f e0                                      add sb, pc, sb
0051a814  07 00 a0 e1                                      mov r0, r7
0051a818  05 10 a0 e1                                      mov r1, r5
0051a81c  04 20 a0 e1                                      mov r2, r4
0051a820  ba fc ff eb                                      bl #0x519b10
0051a824  00 60 50 e2                                      subs r6, r0, #0
0051a828  13 00 00 0a                                      beq #0x51a87c
0051a82c  05 10 a0 e1                                      mov r1, r5
0051a830  08 20 a0 e1                                      mov r2, r8
0051a834  04 30 a0 e1                                      mov r3, r4
0051a838  00 c0 96 e5                                      ldr ip, [r6]
0051a83c  0f e0 a0 e1                                      mov lr, pc
0051a840  0c f0 9c e5                                      ldr pc, [ip, #0xc]
0051a844  06 10 a0 e1                                      mov r1, r6
0051a848  00 50 a0 e1                                      mov r5, r0
0051a84c  07 00 a0 e1                                      mov r0, r7
0051a850  43 ec ff eb                                      bl #0x515964
0051a854  00 00 54 e3                                      cmp r4, #0
0051a858  1c 00 00 0a                                      beq #0x51a8d0
0051a85c  05 00 a0 e1                                      mov r0, r5
0051a860  04 10 a0 e1                                      mov r1, r4
0051a864  c7 f7 ff eb                                      bl #0x518788
0051a868  00 50 50 e2                                      subs r5, r0, #0
0051a86c  02 00 00 0a                                      beq #0x51a87c
0051a870  d0 30 d5 e1                                      ldrsb r3, [r5]
0051a874  00 00 53 e3                                      cmp r3, #0
0051a878  e5 ff ff 1a                                      bne #0x51a814
0051a87c  18 60 97 e5                                      ldr r6, [r7, #0x18]
0051a880  00 00 56 e3                                      cmp r6, #0
0051a884  39 00 00 0a                                      beq #0x51a970
0051a888  05 00 a0 e1                                      mov r0, r5
0051a88c  18 d0 8d e2                                      add sp, sp, #0x18
0051a890  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0051a894  00 30 d5 e5                                      ldrb r3, [r5]
0051a898  ef 00 53 e3                                      cmp r3, #0xef
0051a89c  cf ff ff 1a                                      bne #0x51a7e0
0051a8a0  01 30 d5 e5                                      ldrb r3, [r5, #1]
0051a8a4  00 00 53 e3                                      cmp r3, #0
0051a8a8  cc ff ff 0a                                      beq #0x51a7e0
0051a8ac  bb 00 53 e3                                      cmp r3, #0xbb
0051a8b0  ca ff ff 1a                                      bne #0x51a7e0
0051a8b4  02 30 d5 e5                                      ldrb r3, [r5, #2]
0051a8b8  00 00 53 e3                                      cmp r3, #0
0051a8bc  c7 ff ff 0a                                      beq #0x51a7e0
0051a8c0  bf 00 53 e3                                      cmp r3, #0xbf
0051a8c4  01 40 84 02                                      addeq r4, r4, #1
0051a8c8  6c 40 c7 05                                      strbeq r4, [r7, #0x6c]
0051a8cc  c3 ff ff ea                                      b #0x51a7e0
0051a8d0  00 30 96 e5                                      ldr r3, [r6]
0051a8d4  06 00 a0 e1                                      mov r0, r6
0051a8d8  0f e0 a0 e1                                      mov lr, pc
0051a8dc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0051a8e0  00 00 50 e3                                      cmp r0, #0
0051a8e4  dc ff ff 0a                                      beq #0x51a85c
0051a8e8  00 30 96 e5                                      ldr r3, [r6]
0051a8ec  06 00 a0 e1                                      mov r0, r6
0051a8f0  0f e0 a0 e1                                      mov lr, pc
0051a8f4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0051a8f8  6c 60 90 e5                                      ldr r6, [r0, #0x6c]
0051a8fc  d0 30 d6 e1                                      ldrsb r3, [r6]
0051a900  00 00 53 e3                                      cmp r3, #0
0051a904  01 00 00 1a                                      bne #0x51a910
0051a908  01 40 a0 e3                                      mov r4, #1
0051a90c  d2 ff ff ea                                      b #0x51a85c
0051a910  06 00 a0 e1                                      mov r0, r6
0051a914  0a 10 a0 e1                                      mov r1, sl
0051a918  01 20 a0 e3                                      mov r2, #1
0051a91c  04 30 a0 e1                                      mov r3, r4
0051a920  dd f7 ff eb                                      bl #0x51889c
0051a924  00 00 50 e3                                      cmp r0, #0
0051a928  f6 ff ff 1a                                      bne #0x51a908
0051a92c  04 30 a0 e1                                      mov r3, r4
0051a930  06 00 a0 e1                                      mov r0, r6
0051a934  09 10 a0 e1                                      mov r1, sb
0051a938  01 20 a0 e3                                      mov r2, #1
0051a93c  d6 f7 ff eb                                      bl #0x51889c
0051a940  00 00 50 e3                                      cmp r0, #0
0051a944  02 40 a0 03                                      moveq r4, #2
0051a948  01 40 a0 13                                      movne r4, #1
0051a94c  c2 ff ff ea                                      b #0x51a85c
0051a950  00 50 a0 e3                                      mov r5, #0
0051a954  07 00 a0 e1                                      mov r0, r7
0051a958  0d 10 a0 e3                                      mov r1, #0xd
0051a95c  05 20 a0 e1                                      mov r2, r5
0051a960  05 30 a0 e1                                      mov r3, r5
0051a964  00 50 8d e5                                      str r5, [sp]
0051a968  de fa ff eb                                      bl #0x5194e8
0051a96c  c5 ff ff ea                                      b #0x51a888
0051a970  07 00 a0 e1                                      mov r0, r7
0051a974  0d 10 a0 e3                                      mov r1, #0xd
0051a978  06 20 a0 e1                                      mov r2, r6
0051a97c  06 30 a0 e1                                      mov r3, r6
0051a980  00 40 8d e5                                      str r4, [sp]
0051a984  06 50 a0 e1                                      mov r5, r6
0051a988  d6 fa ff eb                                      bl #0x5194e8
0051a98c  bd ff ff ea                                      b #0x51a888
; mapping-symbol data/literal pool
0051a990  c4 10 3b 00 04 20 3c 00 08 20 3c 00              .byte 0xc4, 0x10, 0x3b, 0x00, 0x04, 0x20, 0x3c, 0x00, 0x08, 0x20, 0x3c, 0x00

; FUNCTION 0x0051a99c, declared_size=404, range_size=404, mode=arm
; class-group: TiXmlDocument
; alias: _ZN13TiXmlDocument8StreamInEPSiPSs
; demangled: TiXmlDocument::StreamIn(std::basic_istream<char, std::char_traits<char> >*, std::basic_string<char, std::char_traits<char>, std::allocator<char> >*)
; decoder-mode: arm
0051a99c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0051a9a0  01 40 a0 e1                                      mov r4, r1
0051a9a4  0c d0 4d e2                                      sub sp, sp, #0xc
0051a9a8  00 a0 a0 e1                                      mov sl, r0
0051a9ac  3c 10 a0 e3                                      mov r1, #0x3c
0051a9b0  04 00 a0 e1                                      mov r0, r4
0051a9b4  02 60 a0 e1                                      mov r6, r2
0051a9b8  7d fa ff eb                                      bl #0x5193b4
0051a9bc  00 c0 50 e2                                      subs ip, r0, #0
0051a9c0  00 70 a0 13                                      movne r7, #0
0051a9c4  4b 00 00 0a                                      beq #0x51aaf8
0051a9c8  00 30 94 e5                                      ldr r3, [r4]
0051a9cc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051a9d0  03 30 84 e0                                      add r3, r4, r3
0051a9d4  08 30 93 e5                                      ldr r3, [r3, #8]
0051a9d8  00 00 53 e3                                      cmp r3, #0
0051a9dc  13 00 00 1a                                      bne #0x51aa30
0051a9e0  10 80 96 e5                                      ldr r8, [r6, #0x10]
0051a9e4  14 30 96 e5                                      ldr r3, [r6, #0x14]
0051a9e8  08 80 63 e0                                      rsb r8, r3, r8
0051a9ec  04 00 a0 e1                                      mov r0, r4
0051a9f0  47 fa ff eb                                      bl #0x519314
0051a9f4  3e 00 50 e3                                      cmp r0, #0x3e
0051a9f8  04 00 a0 e1                                      mov r0, r4
0051a9fc  14 00 00 0a                                      beq #0x51aa54
0051aa00  2f f9 ff eb                                      bl #0x518ec4
0051aa04  00 10 50 e2                                      subs r1, r0, #0
0051aa08  71 10 af e6                                      sxtb r1, r1
0051aa0c  06 00 a0 e1                                      mov r0, r6
0051aa10  2d 00 00 da                                      ble #0x51aacc
0051aa14  10 3e f8 eb                                      bl #0x32a25c
0051aa18  00 30 94 e5                                      ldr r3, [r4]
0051aa1c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051aa20  03 30 84 e0                                      add r3, r4, r3
0051aa24  08 50 93 e5                                      ldr r5, [r3, #8]
0051aa28  00 00 55 e3                                      cmp r5, #0
0051aa2c  ee ff ff 0a                                      beq #0x51a9ec
0051aa30  00 c0 a0 e3                                      mov ip, #0
0051aa34  0c 20 a0 e1                                      mov r2, ip
0051aa38  0a 00 a0 e1                                      mov r0, sl
0051aa3c  01 10 a0 e3                                      mov r1, #1
0051aa40  0c 30 a0 e1                                      mov r3, ip
0051aa44  00 c0 8d e5                                      str ip, [sp]
0051aa48  a6 fa ff eb                                      bl #0x5194e8
0051aa4c  0c d0 8d e2                                      add sp, sp, #0xc
0051aa50  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0051aa54  00 30 94 e5                                      ldr r3, [r4]
0051aa58  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051aa5c  03 30 84 e0                                      add r3, r4, r3
0051aa60  08 50 93 e5                                      ldr r5, [r3, #8]
0051aa64  00 00 55 e3                                      cmp r5, #0
0051aa68  f0 ff ff 1a                                      bne #0x51aa30
0051aa6c  14 10 96 e5                                      ldr r1, [r6, #0x14]
0051aa70  0a 00 a0 e1                                      mov r0, sl
0051aa74  05 20 a0 e1                                      mov r2, r5
0051aa78  08 10 81 e0                                      add r1, r1, r8
0051aa7c  23 fc ff eb                                      bl #0x519b10
0051aa80  00 80 50 e2                                      subs r8, r0, #0
0051aa84  22 00 00 0a                                      beq #0x51ab14
0051aa88  04 10 a0 e1                                      mov r1, r4
0051aa8c  06 20 a0 e1                                      mov r2, r6
0051aa90  00 30 98 e5                                      ldr r3, [r8]
0051aa94  0f e0 a0 e1                                      mov lr, pc
0051aa98  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0051aa9c  00 30 98 e5                                      ldr r3, [r8]
0051aaa0  08 00 a0 e1                                      mov r0, r8
0051aaa4  0f e0 a0 e1                                      mov lr, pc
0051aaa8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0051aaac  00 30 98 e5                                      ldr r3, [r8]
0051aab0  00 50 a0 e1                                      mov r5, r0
0051aab4  08 00 a0 e1                                      mov r0, r8
0051aab8  0f e0 a0 e1                                      mov lr, pc
0051aabc  04 f0 93 e5                                      ldr pc, [r3, #4]
0051aac0  00 00 55 e3                                      cmp r5, #0
0051aac4  bf ff ff 0a                                      beq #0x51a9c8
0051aac8  df ff ff ea                                      b #0x51aa4c
0051aacc  07 30 a0 e1                                      mov r3, r7
0051aad0  0a 00 a0 e1                                      mov r0, sl
0051aad4  0e 10 a0 e3                                      mov r1, #0xe
0051aad8  07 20 a0 e1                                      mov r2, r7
0051aadc  00 70 8d e5                                      str r7, [sp]
0051aae0  80 fa ff eb                                      bl #0x5194e8
0051aae4  00 30 94 e5                                      ldr r3, [r4]
0051aae8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0051aaec  03 30 84 e0                                      add r3, r4, r3
0051aaf0  08 50 93 e5                                      ldr r5, [r3, #8]
0051aaf4  da ff ff ea                                      b #0x51aa64
0051aaf8  0c 20 a0 e1                                      mov r2, ip
0051aafc  0a 00 a0 e1                                      mov r0, sl
0051ab00  08 10 a0 e3                                      mov r1, #8
0051ab04  0c 30 a0 e1                                      mov r3, ip
0051ab08  00 c0 8d e5                                      str ip, [sp]
0051ab0c  75 fa ff eb                                      bl #0x5194e8
0051ab10  cd ff ff ea                                      b #0x51aa4c
0051ab14  05 20 a0 e1                                      mov r2, r5
0051ab18  0a 00 a0 e1                                      mov r0, sl
0051ab1c  01 10 a0 e3                                      mov r1, #1
0051ab20  05 30 a0 e1                                      mov r3, r5
0051ab24  00 50 8d e5                                      str r5, [sp]
0051ab28  6e fa ff eb                                      bl #0x5194e8
0051ab2c  c6 ff ff ea                                      b #0x51aa4c
