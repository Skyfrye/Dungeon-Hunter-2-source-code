; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00560638, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CTextureAttribute
; alias: _ZN6glitch2io17CTextureAttribute10getTextureEv
; demangled: glitch::io::CTextureAttribute::getTexture()
; decoder-mode: arm
00560638  24 30 91 e5                                      ldr r3, [r1, #0x24]
0056063c  00 00 53 e3                                      cmp r3, #0
00560640  00 30 80 e5                                      str r3, [r0]
00560644  04 20 93 15                                      ldrne r2, [r3, #4]
00560648  01 20 82 12                                      addne r2, r2, #1
0056064c  04 20 83 15                                      strne r2, [r3, #4]
00560650  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560654, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CTextureAttribute
; alias: _ZN6glitch2io17CTextureAttribute7getBoolEv
; demangled: glitch::io::CTextureAttribute::getBool()
; decoder-mode: arm
00560654  24 00 90 e5                                      ldr r0, [r0, #0x24]
00560658  00 00 50 e2                                      subs r0, r0, #0
0056065c  01 00 a0 13                                      movne r0, #1
00560660  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560664, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::CTextureAttribute
; alias: _ZN6glitch2io17CTextureAttribute10setTextureERKN5boost13intrusive_ptrINS_5video8ITextureEEE
; demangled: glitch::io::CTextureAttribute::setTexture(boost::intrusive_ptr<glitch::video::ITexture> const&)
; decoder-mode: arm
00560664  00 30 91 e5                                      ldr r3, [r1]
00560668  00 00 53 e3                                      cmp r3, #0
0056066c  04 20 93 15                                      ldrne r2, [r3, #4]
00560670  01 20 82 12                                      addne r2, r2, #1
00560674  04 20 83 15                                      strne r2, [r3, #4]
00560678  24 20 90 e5                                      ldr r2, [r0, #0x24]
0056067c  24 30 80 e5                                      str r3, [r0, #0x24]
00560680  00 00 52 e3                                      cmp r2, #0
00560684  1e ff 2f 01                                      bxeq lr
00560688  02 00 a0 e1                                      mov r0, r2
0056068c  bc f3 f6 ea                                      b #0x31d584

; FUNCTION 0x00560690, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CTextureAttribute
; alias: _ZNK6glitch2io17CTextureAttribute7getTypeEv
; demangled: glitch::io::CTextureAttribute::getType() const
; decoder-mode: arm
00560690  1a 00 a0 e3                                      mov r0, #0x1a
00560694  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560698, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CTextureAttribute
; alias: _ZNK6glitch2io17CTextureAttribute13getTypeStringEv
; demangled: glitch::io::CTextureAttribute::getTypeString() const
; decoder-mode: arm
00560698  04 00 9f e5                                      ldr r0, [pc, #4]
0056069c  00 00 8f e0                                      add r0, pc, r0
005606a0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005606a4  34 e8 37 00                                      .byte 0x34, 0xe8, 0x37, 0x00

; FUNCTION 0x00561e00, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CTextureAttribute
; alias: _ZN6glitch2io17CTextureAttribute9getStringEv
; demangled: glitch::io::CTextureAttribute::getString()
; decoder-mode: arm
00561e00  10 40 2d e9                                      push {r4, lr}
00561e04  00 40 a0 e1                                      mov r4, r0
00561e08  28 20 91 e5                                      ldr r2, [r1, #0x28]
00561e0c  24 10 81 e2                                      add r1, r1, #0x24
00561e10  6d 5a 00 eb                                      bl #0x5787cc
00561e14  04 00 a0 e1                                      mov r0, r4
00561e18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00564834, declared_size=240, range_size=240, mode=arm
; class-group: glitch::io::CTextureAttribute
; alias: _ZN6glitch2io17CTextureAttribute10getStringWEv
; demangled: glitch::io::CTextureAttribute::getStringW()
; decoder-mode: arm
00564834  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00564838  d8 70 9f e5                                      ldr r7, [pc, #0xd8]
0056483c  d8 80 9f e5                                      ldr r8, [pc, #0xd8]
00564840  24 c0 91 e5                                      ldr ip, [r1, #0x24]
00564844  07 70 8f e0                                      add r7, pc, r7
00564848  08 20 97 e7                                      ldr r2, [r7, r8]
0056484c  24 d0 4d e2                                      sub sp, sp, #0x24
00564850  00 00 5c e3                                      cmp ip, #0
00564854  00 20 92 e5                                      ldr r2, [r2]
00564858  00 60 a0 e1                                      mov r6, r0
0056485c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00564860  27 00 00 0a                                      beq #0x564904
00564864  04 a0 8d e2                                      add sl, sp, #4
00564868  00 30 91 e5                                      ldr r3, [r1]
0056486c  0a 00 a0 e1                                      mov r0, sl
00564870  0f e0 a0 e1                                      mov lr, pc
00564874  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00564878  18 50 9d e5                                      ldr r5, [sp, #0x18]
0056487c  14 40 9d e5                                      ldr r4, [sp, #0x14]
00564880  06 00 a0 e1                                      mov r0, r6
00564884  40 60 86 e5                                      str r6, [r6, #0x40]
00564888  04 40 65 e0                                      rsb r4, r5, r4
0056488c  01 10 84 e2                                      add r1, r4, #1
00564890  44 60 86 e5                                      str r6, [r6, #0x44]
00564894  21 f0 f6 eb                                      bl #0x320920
00564898  00 00 54 e3                                      cmp r4, #0
0056489c  44 10 96 e5                                      ldr r1, [r6, #0x44]
005648a0  06 00 00 da                                      ble #0x5648c0
005648a4  00 30 a0 e3                                      mov r3, #0
005648a8  d3 20 95 e1                                      ldrsb r2, [r5, r3]
005648ac  03 21 81 e7                                      str r2, [r1, r3, lsl #2]
005648b0  01 30 83 e2                                      add r3, r3, #1
005648b4  04 00 53 e1                                      cmp r3, r4
005648b8  fa ff ff 1a                                      bne #0x5648a8
005648bc  03 11 81 e0                                      add r1, r1, r3, lsl #2
005648c0  00 30 a0 e3                                      mov r3, #0
005648c4  40 10 86 e5                                      str r1, [r6, #0x40]
005648c8  00 30 81 e5                                      str r3, [r1]
005648cc  18 00 9d e5                                      ldr r0, [sp, #0x18]
005648d0  0a 00 50 e1                                      cmp r0, sl
005648d4  02 00 00 0a                                      beq #0x5648e4
005648d8  03 00 50 e1                                      cmp r0, r3
005648dc  00 00 00 0a                                      beq #0x5648e4
005648e0  da ae f6 eb                                      bl #0x310450
005648e4  08 30 97 e7                                      ldr r3, [r7, r8]
005648e8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005648ec  06 00 a0 e1                                      mov r0, r6
005648f0  00 30 93 e5                                      ldr r3, [r3]
005648f4  03 00 52 e1                                      cmp r2, r3
005648f8  05 00 00 1a                                      bne #0x564914
005648fc  24 d0 8d e2                                      add sp, sp, #0x24
00564900  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00564904  14 10 9f e5                                      ldr r1, [pc, #0x14]
00564908  01 10 8f e0                                      add r1, pc, r1
0056490c  6d 06 f7 eb                                      bl #0x3262c8
00564910  f3 ff ff ea                                      b #0x5648e4
00564914  7d a6 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00564918  4c 02 43 00 ac 40 00 00 00 6f 36 00              .byte 0x4c, 0x02, 0x43, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x6f, 0x36, 0x00

; FUNCTION 0x00564a20, declared_size=152, range_size=152, mode=arm
; class-group: glitch::io::CTextureAttribute
; alias: _ZN6glitch2io17CTextureAttribute9getStringEPc
; demangled: glitch::io::CTextureAttribute::getString(char*)
; decoder-mode: arm
00564a20  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00564a24  84 40 9f e5                                      ldr r4, [pc, #0x84]
00564a28  84 50 9f e5                                      ldr r5, [pc, #0x84]
00564a2c  24 30 90 e5                                      ldr r3, [r0, #0x24]
00564a30  04 40 8f e0                                      add r4, pc, r4
00564a34  05 20 94 e7                                      ldr r2, [r4, r5]
00564a38  24 d0 4d e2                                      sub sp, sp, #0x24
00564a3c  00 00 53 e3                                      cmp r3, #0
00564a40  00 20 92 e5                                      ldr r2, [r2]
00564a44  01 70 a0 e1                                      mov r7, r1
00564a48  1c 20 8d e5                                      str r2, [sp, #0x1c]
00564a4c  00 30 c1 05                                      strbeq r3, [r1]
00564a50  0e 00 00 0a                                      beq #0x564a90
00564a54  04 60 8d e2                                      add r6, sp, #4
00564a58  00 10 a0 e1                                      mov r1, r0
00564a5c  00 30 90 e5                                      ldr r3, [r0]
00564a60  06 00 a0 e1                                      mov r0, r6
00564a64  0f e0 a0 e1                                      mov lr, pc
00564a68  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00564a6c  07 00 a0 e1                                      mov r0, r7
00564a70  18 10 9d e5                                      ldr r1, [sp, #0x18]
00564a74  a9 a6 f6 eb                                      bl #0x30e520
00564a78  18 00 9d e5                                      ldr r0, [sp, #0x18]
00564a7c  06 00 50 e1                                      cmp r0, r6
00564a80  02 00 00 0a                                      beq #0x564a90
00564a84  00 00 50 e3                                      cmp r0, #0
00564a88  00 00 00 0a                                      beq #0x564a90
00564a8c  6f ae f6 eb                                      bl #0x310450
00564a90  05 30 94 e7                                      ldr r3, [r4, r5]
00564a94  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00564a98  00 30 93 e5                                      ldr r3, [r3]
00564a9c  03 00 52 e1                                      cmp r2, r3
00564aa0  01 00 00 1a                                      bne #0x564aac
00564aa4  24 d0 8d e2                                      add sp, sp, #0x24
00564aa8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00564aac  17 a6 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00564ab0  60 00 43 00 ac 40 00 00                          .byte 0x60, 0x00, 0x43, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0056522c, declared_size=256, range_size=256, mode=arm
; class-group: glitch::io::CTextureAttribute
; alias: _ZN6glitch2io17CTextureAttribute9setStringEPKc
; demangled: glitch::io::CTextureAttribute::setString(char const*)
; decoder-mode: arm
0056522c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00565230  ec 40 9f e5                                      ldr r4, [pc, #0xec]
00565234  ec 60 9f e5                                      ldr r6, [pc, #0xec]
00565238  2c d0 4d e2                                      sub sp, sp, #0x2c
0056523c  04 40 8f e0                                      add r4, pc, r4
00565240  06 30 94 e7                                      ldr r3, [r4, r6]
00565244  00 20 a0 e3                                      mov r2, #0
00565248  00 c0 51 e2                                      subs ip, r1, #0
0056524c  00 30 93 e5                                      ldr r3, [r3]
00565250  04 20 8d e5                                      str r2, [sp, #4]
00565254  00 50 a0 e1                                      mov r5, r0
00565258  24 30 8d e5                                      str r3, [sp, #0x24]
0056525c  02 00 00 0a                                      beq #0x56526c
00565260  d0 30 dc e1                                      ldrsb r3, [ip]
00565264  02 00 53 e1                                      cmp r3, r2
00565268  0f 00 00 1a                                      bne #0x5652ac
0056526c  05 00 a0 e1                                      mov r0, r5
00565270  00 30 95 e5                                      ldr r3, [r5]
00565274  04 10 8d e2                                      add r1, sp, #4
00565278  0f e0 a0 e1                                      mov lr, pc
0056527c  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00565280  04 00 9d e5                                      ldr r0, [sp, #4]
00565284  00 00 50 e3                                      cmp r0, #0
00565288  00 00 00 0a                                      beq #0x565290
0056528c  bc e0 f6 eb                                      bl #0x31d584
00565290  06 30 94 e7                                      ldr r3, [r4, r6]
00565294  24 20 9d e5                                      ldr r2, [sp, #0x24]
00565298  00 30 93 e5                                      ldr r3, [r3]
0056529c  03 00 52 e1                                      cmp r2, r3
005652a0  1e 00 00 1a                                      bne #0x565320
005652a4  2c d0 8d e2                                      add sp, sp, #0x2c
005652a8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005652ac  0c 70 8d e2                                      add r7, sp, #0xc
005652b0  08 20 8d e2                                      add r2, sp, #8
005652b4  07 00 a0 e1                                      mov r0, r7
005652b8  5f 03 f7 eb                                      bl #0x32603c
005652bc  28 20 95 e5                                      ldr r2, [r5, #0x28]
005652c0  0d 00 a0 e1                                      mov r0, sp
005652c4  07 10 a0 e1                                      mov r1, r7
005652c8  e8 4c 00 eb                                      bl #0x578670
005652cc  00 30 9d e5                                      ldr r3, [sp]
005652d0  00 00 53 e3                                      cmp r3, #0
005652d4  04 20 93 15                                      ldrne r2, [r3, #4]
005652d8  01 20 82 12                                      addne r2, r2, #1
005652dc  04 20 83 15                                      strne r2, [r3, #4]
005652e0  04 00 9d e5                                      ldr r0, [sp, #4]
005652e4  04 30 8d e5                                      str r3, [sp, #4]
005652e8  00 00 50 e3                                      cmp r0, #0
005652ec  00 00 00 0a                                      beq #0x5652f4
005652f0  a3 e0 f6 eb                                      bl #0x31d584
005652f4  00 00 9d e5                                      ldr r0, [sp]
005652f8  00 00 50 e3                                      cmp r0, #0
005652fc  00 00 00 0a                                      beq #0x565304
00565300  9f e0 f6 eb                                      bl #0x31d584
00565304  20 00 9d e5                                      ldr r0, [sp, #0x20]
00565308  07 00 50 e1                                      cmp r0, r7
0056530c  d6 ff ff 0a                                      beq #0x56526c
00565310  00 00 50 e3                                      cmp r0, #0
00565314  d4 ff ff 0a                                      beq #0x56526c
00565318  4c ac f6 eb                                      bl #0x310450
0056531c  d2 ff ff ea                                      b #0x56526c
00565320  fa a3 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00565324  54 f8 42 00 ac 40 00 00                          .byte 0x54, 0xf8, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005653c8, declared_size=128, range_size=128, mode=arm
; class-group: glitch::io::CTextureAttribute
; alias: _ZN6glitch2io17CTextureAttributeD1Ev
; demangled: glitch::io::CTextureAttribute::~CTextureAttribute()
; decoder-mode: arm
005653c8  70 40 2d e9                                      push {r4, r5, r6, lr}
005653cc  68 50 9f e5                                      ldr r5, [pc, #0x68]
005653d0  68 30 9f e5                                      ldr r3, [pc, #0x68]
005653d4  00 40 a0 e1                                      mov r4, r0
005653d8  05 50 8f e0                                      add r5, pc, r5
005653dc  28 00 90 e5                                      ldr r0, [r0, #0x28]
005653e0  03 30 95 e7                                      ldr r3, [r5, r3]
005653e4  00 00 50 e3                                      cmp r0, #0
005653e8  08 30 83 e2                                      add r3, r3, #8
005653ec  00 30 84 e5                                      str r3, [r4]
005653f0  00 00 00 0a                                      beq #0x5653f8
005653f4  62 e0 f6 eb                                      bl #0x31d584
005653f8  24 00 94 e5                                      ldr r0, [r4, #0x24]
005653fc  00 00 50 e3                                      cmp r0, #0
00565400  00 00 00 0a                                      beq #0x565408
00565404  5e e0 f6 eb                                      bl #0x31d584
00565408  34 20 9f e5                                      ldr r2, [pc, #0x34]
0056540c  04 30 a0 e1                                      mov r3, r4
00565410  02 20 95 e7                                      ldr r2, [r5, r2]
00565414  08 20 82 e2                                      add r2, r2, #8
00565418  08 20 83 e4                                      str r2, [r3], #8
0056541c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00565420  03 00 50 e1                                      cmp r0, r3
00565424  02 00 00 0a                                      beq #0x565434
00565428  00 00 50 e3                                      cmp r0, #0
0056542c  00 00 00 0a                                      beq #0x565434
00565430  06 ac f6 eb                                      bl #0x310450
00565434  04 00 a0 e1                                      mov r0, r4
00565438  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0056543c  b8 f6 42 00 70 0c 00 00 44 2c 00 00              .byte 0xb8, 0xf6, 0x42, 0x00, 0x70, 0x0c, 0x00, 0x00, 0x44, 0x2c, 0x00, 0x00

; FUNCTION 0x00565448, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CTextureAttribute
; alias: _ZN6glitch2io17CTextureAttributeD0Ev
; demangled: glitch::io::CTextureAttribute::~CTextureAttribute()
; decoder-mode: arm
00565448  10 40 2d e9                                      push {r4, lr}
0056544c  00 40 a0 e1                                      mov r4, r0
00565450  dc ff ff eb                                      bl #0x5653c8
00565454  04 00 a0 e1                                      mov r0, r4
00565458  94 a3 f6 eb                                      bl #0x30e2b0
0056545c  04 00 a0 e1                                      mov r0, r4
00565460  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00566ea0, declared_size=220, range_size=220, mode=arm
; class-group: glitch::io::CTextureAttribute
; alias: _ZN6glitch2io17CTextureAttributeC1EPKcRKN5boost13intrusive_ptrINS_5video8ITextureEEEPNS6_12IVideoDriverEb
; demangled: glitch::io::CTextureAttribute::CTextureAttribute(char const*, boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
00566ea0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00566ea4  c4 60 9f e5                                      ldr r6, [pc, #0xc4]
00566ea8  c4 c0 9f e5                                      ldr ip, [pc, #0xc4]
00566eac  00 40 a0 e1                                      mov r4, r0
00566eb0  06 60 8f e0                                      add r6, pc, r6
00566eb4  0c c0 96 e7                                      ldr ip, [r6, ip]
00566eb8  00 50 a0 e1                                      mov r5, r0
00566ebc  01 00 a0 e3                                      mov r0, #1
00566ec0  08 c0 8c e2                                      add ip, ip, #8
00566ec4  04 00 84 e5                                      str r0, [r4, #4]
00566ec8  08 c0 85 e4                                      str ip, [r5], #8
00566ecc  01 70 a0 e1                                      mov r7, r1
00566ed0  18 50 84 e5                                      str r5, [r4, #0x18]
00566ed4  1c 50 84 e5                                      str r5, [r4, #0x1c]
00566ed8  05 00 a0 e1                                      mov r0, r5
00566edc  10 10 a0 e3                                      mov r1, #0x10
00566ee0  03 80 a0 e1                                      mov r8, r3
00566ee4  02 a0 a0 e1                                      mov sl, r2
00566ee8  20 90 dd e5                                      ldrb sb, [sp, #0x20]
00566eec  ad e6 f6 eb                                      bl #0x3209a8
00566ef0  80 30 9f e5                                      ldr r3, [pc, #0x80]
00566ef4  18 10 94 e5                                      ldr r1, [r4, #0x18]
00566ef8  00 20 a0 e3                                      mov r2, #0
00566efc  03 30 96 e7                                      ldr r3, [r6, r3]
00566f00  00 20 c1 e5                                      strb r2, [r1]
00566f04  00 00 58 e3                                      cmp r8, #0
00566f08  08 30 83 e2                                      add r3, r3, #8
00566f0c  00 30 84 e5                                      str r3, [r4]
00566f10  24 20 84 e5                                      str r2, [r4, #0x24]
00566f14  20 90 c4 e5                                      strb sb, [r4, #0x20]
00566f18  28 80 84 e5                                      str r8, [r4, #0x28]
00566f1c  04 30 98 15                                      ldrne r3, [r8, #4]
00566f20  07 00 a0 e1                                      mov r0, r7
00566f24  01 30 83 12                                      addne r3, r3, #1
00566f28  04 30 88 15                                      strne r3, [r8, #4]
00566f2c  c8 9b f6 eb                                      bl #0x30de54
00566f30  07 10 a0 e1                                      mov r1, r7
00566f34  00 20 87 e0                                      add r2, r7, r0
00566f38  05 00 a0 e1                                      mov r0, r5
00566f3c  11 e7 f6 eb                                      bl #0x320b88
00566f40  00 30 9a e5                                      ldr r3, [sl]
00566f44  00 00 53 e3                                      cmp r3, #0
00566f48  04 20 93 15                                      ldrne r2, [r3, #4]
00566f4c  01 20 82 12                                      addne r2, r2, #1
00566f50  04 20 83 15                                      strne r2, [r3, #4]
00566f54  24 00 94 e5                                      ldr r0, [r4, #0x24]
00566f58  24 30 84 e5                                      str r3, [r4, #0x24]
00566f5c  00 00 50 e3                                      cmp r0, #0
00566f60  00 00 00 0a                                      beq #0x566f68
00566f64  86 d9 f6 eb                                      bl #0x31d584
00566f68  04 00 a0 e1                                      mov r0, r4
00566f6c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00566f70  e0 db 42 00 44 2c 00 00 70 0c 00 00              .byte 0xe0, 0xdb, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x70, 0x0c, 0x00, 0x00
