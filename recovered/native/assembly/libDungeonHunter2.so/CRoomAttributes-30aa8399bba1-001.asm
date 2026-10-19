; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00817d78, declared_size=4, range_size=4, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes6ReloadEv
; demangled: CRoomAttributes::Reload()
; decoder-mode: arm
00817d78  1e ff 2f e1                                      bx lr

; FUNCTION 0x00817d7c, declared_size=24, range_size=24, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes16IsAttibuteActiveE20tROOM_ATTRIBUTES_INT
; demangled: CRoomAttributes::IsAttibuteActive(tROOM_ATTRIBUTES_INT)
; decoder-mode: arm
00817d7c  60 33 90 e5                                      ldr r3, [r0, #0x360]
00817d80  01 20 a0 e3                                      mov r2, #1
00817d84  12 31 13 e0                                      ands r3, r3, r2, lsl r1
00817d88  00 00 a0 03                                      moveq r0, #0
00817d8c  01 00 a0 13                                      movne r0, #1
00817d90  1e ff 2f e1                                      bx lr

; FUNCTION 0x00817d94, declared_size=24, range_size=24, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes16IsAttibuteActiveE20tROOM_ATTRIBUTES_BIN
; demangled: CRoomAttributes::IsAttibuteActive(tROOM_ATTRIBUTES_BIN)
; decoder-mode: arm
00817d94  88 33 90 e5                                      ldr r3, [r0, #0x388]
00817d98  01 20 a0 e3                                      mov r2, #1
00817d9c  12 31 13 e0                                      ands r3, r3, r2, lsl r1
00817da0  00 00 a0 03                                      moveq r0, #0
00817da4  01 00 a0 13                                      movne r0, #1
00817da8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00817dac, declared_size=16, range_size=16, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes15GetAttributeIntE20tROOM_ATTRIBUTES_INT
; demangled: CRoomAttributes::GetAttributeInt(tROOM_ATTRIBUTES_INT)
; decoder-mode: arm
00817dac  28 30 a0 e3                                      mov r3, #0x28
00817db0  93 01 23 e0                                      mla r3, r3, r1, r0
00817db4  58 01 93 e5                                      ldr r0, [r3, #0x158]
00817db8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00817dbc, declared_size=68, range_size=68, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes15GetAttributeBinE20tROOM_ATTRIBUTES_BINPvj
; demangled: CRoomAttributes::GetAttributeBin(tROOM_ATTRIBUTES_BIN, void*, unsigned int)
; decoder-mode: arm
00817dbc  70 40 2d e9                                      push {r4, r5, r6, lr}
00817dc0  28 50 a0 e3                                      mov r5, #0x28
00817dc4  95 01 05 e0                                      mul r5, r5, r1
00817dc8  02 10 a0 e1                                      mov r1, r2
00817dcc  9e 4f 85 e2                                      add r4, r5, #0x278
00817dd0  04 40 80 e0                                      add r4, r0, r4
00817dd4  05 50 80 e0                                      add r5, r0, r5
00817dd8  03 20 a0 e1                                      mov r2, r3
00817ddc  04 00 a0 e1                                      mov r0, r4
00817de0  78 32 95 e5                                      ldr r3, [r5, #0x278]
00817de4  0f e0 a0 e1                                      mov lr, pc
00817de8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00817dec  78 32 95 e5                                      ldr r3, [r5, #0x278]
00817df0  04 00 a0 e1                                      mov r0, r4
00817df4  0f e0 a0 e1                                      mov lr, pc
00817df8  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00817dfc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00817e00, declared_size=32, range_size=32, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes16GetMaxBufferSizeE20tROOM_ATTRIBUTES_BIN
; demangled: CRoomAttributes::GetMaxBufferSize(tROOM_ATTRIBUTES_BIN)
; decoder-mode: arm
00817e00  04 00 51 e3                                      cmp r1, #4
00817e04  00 00 a0 83                                      movhi r0, #0
00817e08  1e ff 2f 81                                      bxhi lr
00817e0c  08 30 9f e5                                      ldr r3, [pc, #8]
00817e10  03 30 8f e0                                      add r3, pc, r3
00817e14  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00817e18  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00817e1c  64 44 0f 00                                      .byte 0x64, 0x44, 0x0f, 0x00

; FUNCTION 0x00817e4c, declared_size=8, range_size=8, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes6ResendEv
; demangled: CRoomAttributes::Resend()
; decoder-mode: arm
00817e4c  08 00 80 e2                                      add r0, r0, #8
00817e50  89 ed ff ea                                      b #0x81347c

; FUNCTION 0x00817e54, declared_size=8, range_size=8, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes22AreChangesAcknowledgedEv
; demangled: CRoomAttributes::AreChangesAcknowledged()
; decoder-mode: arm
00817e54  08 00 80 e2                                      add r0, r0, #8
00817e58  29 ee ff ea                                      b #0x813704

; FUNCTION 0x00817e5c, declared_size=16, range_size=16, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes11UnserializeER12NetBitStream
; demangled: CRoomAttributes::Unserialize(NetBitStream&)
; decoder-mode: arm
00817e5c  08 00 80 e2                                      add r0, r0, #8
00817e60  00 20 e0 e3                                      mvn r2, #0
00817e64  00 30 a0 e3                                      mov r3, #0
00817e68  e1 ed ff ea                                      b #0x8135f4

; FUNCTION 0x00817e6c, declared_size=80, range_size=80, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes11UnserializeEPcj
; demangled: CRoomAttributes::Unserialize(char*, unsigned int)
; decoder-mode: arm
00817e6c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00817e70  24 d0 4d e2                                      sub sp, sp, #0x24
00817e74  02 60 a0 e1                                      mov r6, r2
00817e78  00 50 a0 e1                                      mov r5, r0
00817e7c  01 70 a0 e1                                      mov r7, r1
00817e80  0d 00 a0 e1                                      mov r0, sp
00817e84  02 10 a0 e1                                      mov r1, r2
00817e88  9e da ff eb                                      bl #0x80e908
00817e8c  0d 00 a0 e1                                      mov r0, sp
00817e90  07 10 a0 e1                                      mov r1, r7
00817e94  06 20 a0 e1                                      mov r2, r6
00817e98  e7 db ff eb                                      bl #0x80ee3c
00817e9c  05 00 a0 e1                                      mov r0, r5
00817ea0  0d 10 a0 e1                                      mov r1, sp
00817ea4  ec ff ff eb                                      bl #0x817e5c
00817ea8  0d 00 a0 e1                                      mov r0, sp
00817eac  0d 40 a0 e1                                      mov r4, sp
00817eb0  36 da ff eb                                      bl #0x80e790
00817eb4  24 d0 8d e2                                      add sp, sp, #0x24
00817eb8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00817ebc, declared_size=44, range_size=44, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes9SerializeEiiR12NetBitStream
; demangled: CRoomAttributes::Serialize(int, int, NetBitStream&)
; decoder-mode: arm
00817ebc  02 c0 a0 e1                                      mov ip, r2
00817ec0  10 40 2d e9                                      push {r4, lr}
00817ec4  01 e0 a0 e1                                      mov lr, r1
00817ec8  0e 20 a0 e1                                      mov r2, lr
00817ecc  03 10 a0 e1                                      mov r1, r3
00817ed0  08 00 80 e2                                      add r0, r0, #8
00817ed4  0c 30 a0 e1                                      mov r3, ip
00817ed8  88 f3 ff eb                                      bl #0x814d00
00817edc  00 00 50 e2                                      subs r0, r0, #0
00817ee0  01 00 a0 13                                      movne r0, #1
00817ee4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00817ee8, declared_size=8, range_size=8, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes10HasChangedEv
; demangled: CRoomAttributes::HasChanged()
; decoder-mode: arm
00817ee8  08 00 80 e2                                      add r0, r0, #8
00817eec  52 ee ff ea                                      b #0x81383c

; FUNCTION 0x00817ef0, declared_size=8, range_size=8, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes25ProcessAcknowledgedPacketEii
; demangled: CRoomAttributes::ProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
00817ef0  08 00 80 e2                                      add r0, r0, #8
00817ef4  8b f3 ff ea                                      b #0x814d28

; FUNCTION 0x00817ef8, declared_size=8, range_size=8, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes17ProcessLostPacketEii
; demangled: CRoomAttributes::ProcessLostPacket(int, int)
; decoder-mode: arm
00817ef8  08 00 80 e2                                      add r0, r0, #8
00817efc  1c f2 ff ea                                      b #0x814774

; FUNCTION 0x00817fec, declared_size=164, range_size=164, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes11UnserializeEiR12NetBitStream
; demangled: CRoomAttributes::Unserialize(int, NetBitStream&)
; decoder-mode: arm
00817fec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00817ff0  08 d0 4d e2                                      sub sp, sp, #8
00817ff4  01 40 a0 e1                                      mov r4, r1
00817ff8  02 50 a0 e1                                      mov r5, r2
00817ffc  00 60 a0 e1                                      mov r6, r0
00818000  e1 a3 ff eb                                      bl #0x800f8c
00818004  00 30 90 e5                                      ldr r3, [r0]
00818008  0f e0 a0 e1                                      mov lr, pc
0081800c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00818010  00 70 a0 e1                                      mov r7, r0
00818014  30 e0 ff eb                                      bl #0x8100dc
00818018  00 80 a0 e1                                      mov r8, r0
0081801c  2e e0 ff eb                                      bl #0x8100dc
00818020  00 20 a0 e3                                      mov r2, #0
00818024  70 11 90 e5                                      ldr r1, [r0, #0x170]
00818028  08 00 a0 e1                                      mov r0, r8
0081802c  6b e0 ff eb                                      bl #0x8101e0
00818030  a0 31 90 e5                                      ldr r3, [r0, #0x1a0]
00818034  03 00 57 e1                                      cmp r7, r3
00818038  12 00 00 0a                                      beq #0x818088
0081803c  26 e0 ff eb                                      bl #0x8100dc
00818040  00 70 a0 e1                                      mov r7, r0
00818044  24 e0 ff eb                                      bl #0x8100dc
00818048  00 20 a0 e3                                      mov r2, #0
0081804c  70 11 90 e5                                      ldr r1, [r0, #0x170]
00818050  07 00 a0 e1                                      mov r0, r7
00818054  61 e0 ff eb                                      bl #0x8101e0
00818058  a0 31 90 e5                                      ldr r3, [r0, #0x1a0]
0081805c  01 00 73 e3                                      cmn r3, #1
00818060  01 10 a0 13                                      movne r1, #1
00818064  07 00 00 0a                                      beq #0x818088
00818068  00 c0 a0 e3                                      mov ip, #0
0081806c  08 00 86 e2                                      add r0, r6, #8
00818070  05 20 a0 e1                                      mov r2, r5
00818074  04 30 a0 e1                                      mov r3, r4
00818078  00 c0 8d e5                                      str ip, [sp]
0081807c  78 ec ff eb                                      bl #0x813264
00818080  08 d0 8d e2                                      add sp, sp, #8
00818084  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00818088  00 10 a0 e3                                      mov r1, #0
0081808c  f5 ff ff ea                                      b #0x818068

; FUNCTION 0x008183e0, declared_size=356, range_size=356, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes17EraseAttributeIntE20tROOM_ATTRIBUTES_INT
; demangled: CRoomAttributes::EraseAttributeInt(tROOM_ATTRIBUTES_INT)
; decoder-mode: arm
008183e0  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
008183e4  40 41 9f e5                                      ldr r4, [pc, #0x140]
008183e8  40 31 9f e5                                      ldr r3, [pc, #0x140]
008183ec  54 d0 4d e2                                      sub sp, sp, #0x54
008183f0  04 40 8f e0                                      add r4, pc, r4
008183f4  48 20 9d e5                                      ldr r2, [sp, #0x48]
008183f8  03 30 94 e7                                      ldr r3, [r4, r3]
008183fc  00 c0 e0 e3                                      mvn ip, #0
00818400  00 00 52 e3                                      cmp r2, #0
00818404  00 60 a0 e3                                      mov r6, #0
00818408  00 20 a0 e3                                      mov r2, #0
0081840c  00 70 a0 e3                                      mov r7, #0
00818410  08 30 83 e2                                      add r3, r3, #8
00818414  20 e0 a0 e3                                      mov lr, #0x20
00818418  f0 63 cd e1                                      strd r6, r7, [sp, #0x30]
0081841c  2c e0 8d e5                                      str lr, [sp, #0x2c]
00818420  3c c0 8d e5                                      str ip, [sp, #0x3c]
00818424  28 30 8d e5                                      str r3, [sp, #0x28]
00818428  00 50 a0 e1                                      mov r5, r0
0081842c  01 60 a0 e1                                      mov r6, r1
00818430  38 c0 8d e5                                      str ip, [sp, #0x38]
00818434  40 20 8d e5                                      str r2, [sp, #0x40]
00818438  44 20 cd e5                                      strb r2, [sp, #0x44]
0081843c  28 70 8d 02                                      addeq r7, sp, #0x28
00818440  03 00 00 0a                                      beq #0x818454
00818444  28 70 8d e2                                      add r7, sp, #0x28
00818448  07 00 a0 e1                                      mov r0, r7
0081844c  48 20 8d e5                                      str r2, [sp, #0x48]
00818450  cb f2 ff eb                                      bl #0x814f84
00818454  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00818458  28 00 a0 e3                                      mov r0, #0x28
0081845c  90 06 00 e0                                      mul r0, r0, r6
00818460  03 30 94 e7                                      ldr r3, [r4, r3]
00818464  00 20 85 e0                                      add r2, r5, r0
00818468  4e 0f 80 e2                                      add r0, r0, #0x138
0081846c  08 30 83 e2                                      add r3, r3, #8
00818470  28 30 8d e5                                      str r3, [sp, #0x28]
00818474  38 31 92 e5                                      ldr r3, [r2, #0x138]
00818478  20 10 87 e2                                      add r1, r7, #0x20
0081847c  00 00 85 e0                                      add r0, r5, r0
00818480  0f e0 a0 e1                                      mov lr, pc
00818484  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00818488  60 33 95 e5                                      ldr r3, [r5, #0x360]
0081848c  01 10 a0 e3                                      mov r1, #1
00818490  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00818494  11 66 c3 e1                                      bic r6, r3, r1, lsl r6
00818498  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0081849c  02 20 94 e7                                      ldr r2, [r4, r2]
008184a0  20 10 9d e5                                      ldr r1, [sp, #0x20]
008184a4  03 30 94 e7                                      ldr r3, [r4, r3]
008184a8  08 20 82 e2                                      add r2, r2, #8
008184ac  01 00 56 e1                                      cmp r6, r1
008184b0  00 00 e0 e3                                      mvn r0, #0
008184b4  00 10 a0 e3                                      mov r1, #0
008184b8  08 30 83 e2                                      add r3, r3, #8
008184bc  28 20 8d e5                                      str r2, [sp, #0x28]
008184c0  00 80 a0 e3                                      mov r8, #0
008184c4  08 20 a0 e3                                      mov r2, #8
008184c8  00 90 a0 e3                                      mov sb, #0
008184cc  04 20 8d e5                                      str r2, [sp, #4]
008184d0  f8 80 cd e1                                      strd r8, sb, [sp, #8]
008184d4  14 00 8d e5                                      str r0, [sp, #0x14]
008184d8  1c 10 cd e5                                      strb r1, [sp, #0x1c]
008184dc  00 30 8d e5                                      str r3, [sp]
008184e0  10 00 8d e5                                      str r0, [sp, #0x10]
008184e4  18 10 8d e5                                      str r1, [sp, #0x18]
008184e8  0d 70 a0 01                                      moveq r7, sp
008184ec  03 00 00 0a                                      beq #0x818500
008184f0  0d 00 a0 e1                                      mov r0, sp
008184f4  0d 70 a0 e1                                      mov r7, sp
008184f8  20 60 8d e5                                      str r6, [sp, #0x20]
008184fc  a0 f2 ff eb                                      bl #0x814f84
00818500  38 20 9f e5                                      ldr r2, [pc, #0x38]
00818504  40 33 95 e5                                      ldr r3, [r5, #0x340]
00818508  0d 0d 85 e2                                      add r0, r5, #0x340
0081850c  02 20 94 e7                                      ldr r2, [r4, r2]
00818510  20 10 87 e2                                      add r1, r7, #0x20
00818514  08 20 82 e2                                      add r2, r2, #8
00818518  00 20 8d e5                                      str r2, [sp]
0081851c  0f e0 a0 e1                                      mov lr, pc
00818520  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00818524  54 d0 8d e2                                      add sp, sp, #0x54
00818528  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
; mapping-symbol data/literal pool
0081852c  a0 c6 17 00 84 29 00 00 c8 10 00 00 a8 10 00 00  .byte 0xa0, 0xc6, 0x17, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
0081853c  68 40 00 00 24 10 00 00                          .byte 0x68, 0x40, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00

; FUNCTION 0x00818544, declared_size=360, range_size=360, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes15SetAttributeIntE20tROOM_ATTRIBUTES_INTi
; demangled: CRoomAttributes::SetAttributeInt(tROOM_ATTRIBUTES_INT, int)
; decoder-mode: arm
00818544  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
00818548  60 33 90 e5                                      ldr r3, [r0, #0x360]
0081854c  01 60 a0 e1                                      mov r6, r1
00818550  01 10 a0 e3                                      mov r1, #1
00818554  11 36 83 e1                                      orr r3, r3, r1, lsl r6
00818558  34 41 9f e5                                      ldr r4, [pc, #0x134]
0081855c  34 11 9f e5                                      ldr r1, [pc, #0x134]
00818560  54 d0 4d e2                                      sub sp, sp, #0x54
00818564  04 40 8f e0                                      add r4, pc, r4
00818568  00 50 a0 e1                                      mov r5, r0
0081856c  01 10 94 e7                                      ldr r1, [r4, r1]
00818570  48 00 9d e5                                      ldr r0, [sp, #0x48]
00818574  00 c0 e0 e3                                      mvn ip, #0
00818578  00 80 a0 e3                                      mov r8, #0
0081857c  00 00 53 e1                                      cmp r3, r0
00818580  08 10 81 e2                                      add r1, r1, #8
00818584  00 00 a0 e3                                      mov r0, #0
00818588  08 e0 a0 e3                                      mov lr, #8
0081858c  00 90 a0 e3                                      mov sb, #0
00818590  f0 83 cd e1                                      strd r8, sb, [sp, #0x30]
00818594  2c e0 8d e5                                      str lr, [sp, #0x2c]
00818598  3c c0 8d e5                                      str ip, [sp, #0x3c]
0081859c  44 00 cd e5                                      strb r0, [sp, #0x44]
008185a0  28 10 8d e5                                      str r1, [sp, #0x28]
008185a4  02 70 a0 e1                                      mov r7, r2
008185a8  38 c0 8d e5                                      str ip, [sp, #0x38]
008185ac  40 00 8d e5                                      str r0, [sp, #0x40]
008185b0  28 80 8d 02                                      addeq r8, sp, #0x28
008185b4  03 00 00 0a                                      beq #0x8185c8
008185b8  28 80 8d e2                                      add r8, sp, #0x28
008185bc  08 00 a0 e1                                      mov r0, r8
008185c0  48 30 8d e5                                      str r3, [sp, #0x48]
008185c4  6e f2 ff eb                                      bl #0x814f84
008185c8  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
008185cc  20 10 88 e2                                      add r1, r8, #0x20
008185d0  40 33 95 e5                                      ldr r3, [r5, #0x340]
008185d4  02 20 94 e7                                      ldr r2, [r4, r2]
008185d8  0d 0d 85 e2                                      add r0, r5, #0x340
008185dc  00 80 a0 e3                                      mov r8, #0
008185e0  08 20 82 e2                                      add r2, r2, #8
008185e4  28 20 8d e5                                      str r2, [sp, #0x28]
008185e8  0f e0 a0 e1                                      mov lr, pc
008185ec  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008185f0  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
008185f4  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
008185f8  20 10 9d e5                                      ldr r1, [sp, #0x20]
008185fc  02 20 94 e7                                      ldr r2, [r4, r2]
00818600  03 30 94 e7                                      ldr r3, [r4, r3]
00818604  01 00 57 e1                                      cmp r7, r1
00818608  08 20 82 e2                                      add r2, r2, #8
0081860c  00 00 e0 e3                                      mvn r0, #0
00818610  00 10 a0 e3                                      mov r1, #0
00818614  08 30 83 e2                                      add r3, r3, #8
00818618  28 20 8d e5                                      str r2, [sp, #0x28]
0081861c  00 90 a0 e3                                      mov sb, #0
00818620  20 20 a0 e3                                      mov r2, #0x20
00818624  f8 80 cd e1                                      strd r8, sb, [sp, #8]
00818628  04 20 8d e5                                      str r2, [sp, #4]
0081862c  14 00 8d e5                                      str r0, [sp, #0x14]
00818630  1c 10 cd e5                                      strb r1, [sp, #0x1c]
00818634  00 30 8d e5                                      str r3, [sp]
00818638  10 00 8d e5                                      str r0, [sp, #0x10]
0081863c  18 10 8d e5                                      str r1, [sp, #0x18]
00818640  0d 80 a0 01                                      moveq r8, sp
00818644  03 00 00 0a                                      beq #0x818658
00818648  0d 00 a0 e1                                      mov r0, sp
0081864c  0d 80 a0 e1                                      mov r8, sp
00818650  20 70 8d e5                                      str r7, [sp, #0x20]
00818654  4a f2 ff eb                                      bl #0x814f84
00818658  48 20 9f e5                                      ldr r2, [pc, #0x48]
0081865c  28 30 a0 e3                                      mov r3, #0x28
00818660  93 06 06 e0                                      mul r6, r3, r6
00818664  02 20 94 e7                                      ldr r2, [r4, r2]
00818668  06 30 85 e0                                      add r3, r5, r6
0081866c  4e 6f 86 e2                                      add r6, r6, #0x138
00818670  08 20 82 e2                                      add r2, r2, #8
00818674  00 20 8d e5                                      str r2, [sp]
00818678  06 00 85 e0                                      add r0, r5, r6
0081867c  38 31 93 e5                                      ldr r3, [r3, #0x138]
00818680  20 10 88 e2                                      add r1, r8, #0x20
00818684  0f e0 a0 e1                                      mov lr, pc
00818688  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0081868c  54 d0 8d e2                                      add sp, sp, #0x54
00818690  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
; mapping-symbol data/literal pool
00818694  2c c5 17 00 68 40 00 00 24 10 00 00 a8 10 00 00  .byte 0x2c, 0xc5, 0x17, 0x00, 0x68, 0x40, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
008186a4  84 29 00 00 c8 10 00 00                          .byte 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00

; FUNCTION 0x00818900, declared_size=44, range_size=44, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes4CopyERKS_
; demangled: CRoomAttributes::Copy(CRoomAttributes const&)
; decoder-mode: arm
00818900  70 40 2d e9                                      push {r4, r5, r6, lr}
00818904  00 40 a0 e1                                      mov r4, r0
00818908  08 30 94 e4                                      ldr r3, [r4], #8
0081890c  01 50 a0 e1                                      mov r5, r1
00818910  0f e0 a0 e1                                      mov lr, pc
00818914  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00818918  04 00 a0 e1                                      mov r0, r4
0081891c  08 10 85 e2                                      add r1, r5, #8
00818920  0f 20 a0 e3                                      mov r2, #0xf
00818924  70 40 bd e8                                      pop {r4, r5, r6, lr}
00818928  5f ff ff ea                                      b #0x8186ac

; FUNCTION 0x0081892c, declared_size=28, range_size=28, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributesaSERKS_
; demangled: CRoomAttributes::operator=(CRoomAttributes const&)
; decoder-mode: arm
0081892c  01 00 50 e1                                      cmp r0, r1
00818930  10 40 2d e9                                      push {r4, lr}
00818934  00 40 a0 e1                                      mov r4, r0
00818938  00 00 00 0a                                      beq #0x818940
0081893c  ef ff ff eb                                      bl #0x818900
00818940  04 00 a0 e1                                      mov r0, r4
00818944  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00818948, declared_size=224, range_size=224, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes17EraseAttributeBinE20tROOM_ATTRIBUTES_BIN
; demangled: CRoomAttributes::EraseAttributeBin(tROOM_ATTRIBUTES_BIN)
; decoder-mode: arm
00818948  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
0081894c  28 30 a0 e3                                      mov r3, #0x28
00818950  93 01 03 e0                                      mul r3, r3, r1
00818954  00 40 a0 e1                                      mov r4, r0
00818958  03 20 80 e0                                      add r2, r0, r3
0081895c  01 50 a0 e1                                      mov r5, r1
00818960  9e 0f 83 e2                                      add r0, r3, #0x278
00818964  00 10 a0 e3                                      mov r1, #0
00818968  2c d0 4d e2                                      sub sp, sp, #0x2c
0081896c  78 32 92 e5                                      ldr r3, [r2, #0x278]
00818970  00 00 84 e0                                      add r0, r4, r0
00818974  01 20 a0 e1                                      mov r2, r1
00818978  0f e0 a0 e1                                      mov lr, pc
0081897c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00818980  88 33 94 e5                                      ldr r3, [r4, #0x388]
00818984  01 20 a0 e3                                      mov r2, #1
00818988  8c 60 9f e5                                      ldr r6, [pc, #0x8c]
0081898c  12 55 c3 e1                                      bic r5, r3, r2, lsl r5
00818990  88 30 9f e5                                      ldr r3, [pc, #0x88]
00818994  06 60 8f e0                                      add r6, pc, r6
00818998  20 20 9d e5                                      ldr r2, [sp, #0x20]
0081899c  03 30 96 e7                                      ldr r3, [r6, r3]
008189a0  00 10 e0 e3                                      mvn r1, #0
008189a4  02 00 55 e1                                      cmp r5, r2
008189a8  08 30 83 e2                                      add r3, r3, #8
008189ac  00 20 a0 e3                                      mov r2, #0
008189b0  05 00 a0 e3                                      mov r0, #5
008189b4  00 80 a0 e3                                      mov r8, #0
008189b8  00 90 a0 e3                                      mov sb, #0
008189bc  04 00 8d e5                                      str r0, [sp, #4]
008189c0  f8 80 cd e1                                      strd r8, sb, [sp, #8]
008189c4  14 10 8d e5                                      str r1, [sp, #0x14]
008189c8  1c 20 cd e5                                      strb r2, [sp, #0x1c]
008189cc  00 30 8d e5                                      str r3, [sp]
008189d0  10 10 8d e5                                      str r1, [sp, #0x10]
008189d4  18 20 8d e5                                      str r2, [sp, #0x18]
008189d8  0d 70 a0 01                                      moveq r7, sp
008189dc  03 00 00 0a                                      beq #0x8189f0
008189e0  0d 00 a0 e1                                      mov r0, sp
008189e4  0d 70 a0 e1                                      mov r7, sp
008189e8  20 50 8d e5                                      str r5, [sp, #0x20]
008189ec  64 f1 ff eb                                      bl #0x814f84
008189f0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
008189f4  68 33 94 e5                                      ldr r3, [r4, #0x368]
008189f8  da 0f 84 e2                                      add r0, r4, #0x368
008189fc  02 20 96 e7                                      ldr r2, [r6, r2]
00818a00  20 10 87 e2                                      add r1, r7, #0x20
00818a04  08 20 82 e2                                      add r2, r2, #8
00818a08  00 20 8d e5                                      str r2, [sp]
00818a0c  0f e0 a0 e1                                      mov lr, pc
00818a10  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00818a14  2c d0 8d e2                                      add sp, sp, #0x2c
00818a18  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
; mapping-symbol data/literal pool
00818a1c  fc c0 17 00 68 40 00 00 8c 2c 00 00              .byte 0xfc, 0xc0, 0x17, 0x00, 0x68, 0x40, 0x00, 0x00, 0x8c, 0x2c, 0x00, 0x00

; FUNCTION 0x00818a28, declared_size=492, range_size=492, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes5ClearEv
; demangled: CRoomAttributes::Clear()
; decoder-mode: arm
00818a28  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
00818a2c  00 10 a0 e3                                      mov r1, #0
00818a30  54 d0 4d e2                                      sub sp, sp, #0x54
00818a34  00 40 a0 e1                                      mov r4, r0
00818a38  68 fe ff eb                                      bl #0x8183e0
00818a3c  04 00 a0 e1                                      mov r0, r4
00818a40  01 10 a0 e3                                      mov r1, #1
00818a44  65 fe ff eb                                      bl #0x8183e0
00818a48  04 00 a0 e1                                      mov r0, r4
00818a4c  02 10 a0 e3                                      mov r1, #2
00818a50  62 fe ff eb                                      bl #0x8183e0
00818a54  04 00 a0 e1                                      mov r0, r4
00818a58  03 10 a0 e3                                      mov r1, #3
00818a5c  5f fe ff eb                                      bl #0x8183e0
00818a60  04 00 a0 e1                                      mov r0, r4
00818a64  04 10 a0 e3                                      mov r1, #4
00818a68  5c fe ff eb                                      bl #0x8183e0
00818a6c  04 00 a0 e1                                      mov r0, r4
00818a70  05 10 a0 e3                                      mov r1, #5
00818a74  59 fe ff eb                                      bl #0x8183e0
00818a78  04 00 a0 e1                                      mov r0, r4
00818a7c  06 10 a0 e3                                      mov r1, #6
00818a80  56 fe ff eb                                      bl #0x8183e0
00818a84  04 00 a0 e1                                      mov r0, r4
00818a88  07 10 a0 e3                                      mov r1, #7
00818a8c  53 fe ff eb                                      bl #0x8183e0
00818a90  04 00 a0 e1                                      mov r0, r4
00818a94  00 10 a0 e3                                      mov r1, #0
00818a98  aa ff ff eb                                      bl #0x818948
00818a9c  5c 51 9f e5                                      ldr r5, [pc, #0x15c]
00818aa0  04 00 a0 e1                                      mov r0, r4
00818aa4  01 10 a0 e3                                      mov r1, #1
00818aa8  a6 ff ff eb                                      bl #0x818948
00818aac  50 71 9f e5                                      ldr r7, [pc, #0x150]
00818ab0  04 00 a0 e1                                      mov r0, r4
00818ab4  02 10 a0 e3                                      mov r1, #2
00818ab8  a2 ff ff eb                                      bl #0x818948
00818abc  04 00 a0 e1                                      mov r0, r4
00818ac0  03 10 a0 e3                                      mov r1, #3
00818ac4  9f ff ff eb                                      bl #0x818948
00818ac8  05 50 8f e0                                      add r5, pc, r5
00818acc  04 00 a0 e1                                      mov r0, r4
00818ad0  04 10 a0 e3                                      mov r1, #4
00818ad4  9b ff ff eb                                      bl #0x818948
00818ad8  48 30 9d e5                                      ldr r3, [sp, #0x48]
00818adc  07 10 95 e7                                      ldr r1, [r5, r7]
00818ae0  00 20 e0 e3                                      mvn r2, #0
00818ae4  00 00 53 e3                                      cmp r3, #0
00818ae8  00 80 a0 e3                                      mov r8, #0
00818aec  00 30 a0 e3                                      mov r3, #0
00818af0  08 10 81 e2                                      add r1, r1, #8
00818af4  08 00 a0 e3                                      mov r0, #8
00818af8  00 90 a0 e3                                      mov sb, #0
00818afc  f0 83 cd e1                                      strd r8, sb, [sp, #0x30]
00818b00  2c 00 8d e5                                      str r0, [sp, #0x2c]
00818b04  3c 20 8d e5                                      str r2, [sp, #0x3c]
00818b08  28 10 8d e5                                      str r1, [sp, #0x28]
00818b0c  38 20 8d e5                                      str r2, [sp, #0x38]
00818b10  40 30 8d e5                                      str r3, [sp, #0x40]
00818b14  44 30 cd e5                                      strb r3, [sp, #0x44]
00818b18  28 80 8d 02                                      addeq r8, sp, #0x28
00818b1c  03 00 00 0a                                      beq #0x818b30
00818b20  28 80 8d e2                                      add r8, sp, #0x28
00818b24  08 00 a0 e1                                      mov r0, r8
00818b28  48 30 8d e5                                      str r3, [sp, #0x48]
00818b2c  14 f1 ff eb                                      bl #0x814f84
00818b30  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
00818b34  d0 60 9f e5                                      ldr r6, [pc, #0xd0]
00818b38  20 10 88 e2                                      add r1, r8, #0x20
00818b3c  02 20 95 e7                                      ldr r2, [r5, r2]
00818b40  40 33 94 e5                                      ldr r3, [r4, #0x340]
00818b44  0d 0d 84 e2                                      add r0, r4, #0x340
00818b48  08 20 82 e2                                      add r2, r2, #8
00818b4c  28 20 8d e5                                      str r2, [sp, #0x28]
00818b50  0f e0 a0 e1                                      mov lr, pc
00818b54  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00818b58  06 00 95 e7                                      ldr r0, [r5, r6]
00818b5c  07 10 95 e7                                      ldr r1, [r5, r7]
00818b60  20 30 9d e5                                      ldr r3, [sp, #0x20]
00818b64  08 00 80 e2                                      add r0, r0, #8
00818b68  00 20 e0 e3                                      mvn r2, #0
00818b6c  00 00 53 e3                                      cmp r3, #0
00818b70  08 10 81 e2                                      add r1, r1, #8
00818b74  00 30 a0 e3                                      mov r3, #0
00818b78  28 00 8d e5                                      str r0, [sp, #0x28]
00818b7c  00 80 a0 e3                                      mov r8, #0
00818b80  05 00 a0 e3                                      mov r0, #5
00818b84  00 90 a0 e3                                      mov sb, #0
00818b88  04 00 8d e5                                      str r0, [sp, #4]
00818b8c  f8 80 cd e1                                      strd r8, sb, [sp, #8]
00818b90  14 20 8d e5                                      str r2, [sp, #0x14]
00818b94  00 10 8d e5                                      str r1, [sp]
00818b98  10 20 8d e5                                      str r2, [sp, #0x10]
00818b9c  18 30 8d e5                                      str r3, [sp, #0x18]
00818ba0  1c 30 cd e5                                      strb r3, [sp, #0x1c]
00818ba4  0d 70 a0 01                                      moveq r7, sp
00818ba8  03 00 00 0a                                      beq #0x818bbc
00818bac  0d 00 a0 e1                                      mov r0, sp
00818bb0  0d 70 a0 e1                                      mov r7, sp
00818bb4  20 30 8d e5                                      str r3, [sp, #0x20]
00818bb8  f1 f0 ff eb                                      bl #0x814f84
00818bbc  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00818bc0  68 33 94 e5                                      ldr r3, [r4, #0x368]
00818bc4  20 10 87 e2                                      add r1, r7, #0x20
00818bc8  02 20 95 e7                                      ldr r2, [r5, r2]
00818bcc  da 0f 84 e2                                      add r0, r4, #0x368
00818bd0  08 20 82 e2                                      add r2, r2, #8
00818bd4  00 20 8d e5                                      str r2, [sp]
00818bd8  0f e0 a0 e1                                      mov lr, pc
00818bdc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00818be0  06 30 95 e7                                      ldr r3, [r5, r6]
00818be4  08 00 84 e2                                      add r0, r4, #8
00818be8  00 10 a0 e3                                      mov r1, #0
00818bec  08 30 83 e2                                      add r3, r3, #8
00818bf0  00 30 8d e5                                      str r3, [sp]
00818bf4  9c ea ff eb                                      bl #0x81366c
00818bf8  54 d0 8d e2                                      add sp, sp, #0x54
00818bfc  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
; mapping-symbol data/literal pool
00818c00  c8 bf 17 00 68 40 00 00 24 10 00 00 a8 10 00 00  .byte 0xc8, 0xbf, 0x17, 0x00, 0x68, 0x40, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
00818c10  8c 2c 00 00                                      .byte 0x8c, 0x2c, 0x00, 0x00

; FUNCTION 0x00818c14, declared_size=64, range_size=64, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributesD1Ev
; demangled: CRoomAttributes::~CRoomAttributes()
; decoder-mode: arm
00818c14  30 30 9f e5                                      ldr r3, [pc, #0x30]
00818c18  30 20 9f e5                                      ldr r2, [pc, #0x30]
00818c1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00818c20  03 30 8f e0                                      add r3, pc, r3
00818c24  02 20 93 e7                                      ldr r2, [r3, r2]
00818c28  00 40 a0 e1                                      mov r4, r0
00818c2c  00 50 a0 e1                                      mov r5, r0
00818c30  08 20 82 e2                                      add r2, r2, #8
00818c34  08 20 84 e4                                      str r2, [r4], #8
00818c38  7a ff ff eb                                      bl #0x818a28
00818c3c  04 00 a0 e1                                      mov r0, r4
00818c40  2b fd ff eb                                      bl #0x8180f4
00818c44  05 00 a0 e1                                      mov r0, r5
00818c48  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00818c4c  70 be 17 00 8c 32 00 00                          .byte 0x70, 0xbe, 0x17, 0x00, 0x8c, 0x32, 0x00, 0x00

; FUNCTION 0x00818c54, declared_size=28, range_size=28, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributesD0Ev
; demangled: CRoomAttributes::~CRoomAttributes()
; decoder-mode: arm
00818c54  10 40 2d e9                                      push {r4, lr}
00818c58  00 40 a0 e1                                      mov r4, r0
00818c5c  ec ff ff eb                                      bl #0x818c14
00818c60  04 00 a0 e1                                      mov r0, r4
00818c64  f5 dd eb eb                                      bl #0x310440
00818c68  04 00 a0 e1                                      mov r0, r4
00818c6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00818c70, declared_size=64, range_size=64, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributesD2Ev
; demangled: CRoomAttributes::~CRoomAttributes()
; decoder-mode: arm
00818c70  30 30 9f e5                                      ldr r3, [pc, #0x30]
00818c74  30 20 9f e5                                      ldr r2, [pc, #0x30]
00818c78  70 40 2d e9                                      push {r4, r5, r6, lr}
00818c7c  03 30 8f e0                                      add r3, pc, r3
00818c80  02 20 93 e7                                      ldr r2, [r3, r2]
00818c84  00 40 a0 e1                                      mov r4, r0
00818c88  00 50 a0 e1                                      mov r5, r0
00818c8c  08 20 82 e2                                      add r2, r2, #8
00818c90  08 20 84 e4                                      str r2, [r4], #8
00818c94  63 ff ff eb                                      bl #0x818a28
00818c98  04 00 a0 e1                                      mov r0, r4
00818c9c  14 fd ff eb                                      bl #0x8180f4
00818ca0  05 00 a0 e1                                      mov r0, r5
00818ca4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00818ca8  14 be 17 00 8c 32 00 00                          .byte 0x14, 0xbe, 0x17, 0x00, 0x8c, 0x32, 0x00, 0x00

; FUNCTION 0x00818cb0, declared_size=252, range_size=252, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes15SetAttributeBinE20tROOM_ATTRIBUTES_BINPKvj
; demangled: CRoomAttributes::SetAttributeBin(tROOM_ATTRIBUTES_BIN, void const*, unsigned int)
; decoder-mode: arm
00818cb0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00818cb4  00 50 a0 e1                                      mov r5, r0
00818cb8  88 03 90 e5                                      ldr r0, [r0, #0x388]
00818cbc  01 c0 a0 e3                                      mov ip, #1
00818cc0  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
00818cc4  1c c1 80 e1                                      orr ip, r0, ip, lsl r1
00818cc8  01 60 a0 e1                                      mov r6, r1
00818ccc  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
00818cd0  28 d0 4d e2                                      sub sp, sp, #0x28
00818cd4  04 40 8f e0                                      add r4, pc, r4
00818cd8  20 00 9d e5                                      ldr r0, [sp, #0x20]
00818cdc  01 10 94 e7                                      ldr r1, [r4, r1]
00818ce0  00 e0 e0 e3                                      mvn lr, #0
00818ce4  00 00 5c e1                                      cmp ip, r0
00818ce8  05 70 a0 e3                                      mov r7, #5
00818cec  00 00 a0 e3                                      mov r0, #0
00818cf0  00 80 a0 e3                                      mov r8, #0
00818cf4  08 10 81 e2                                      add r1, r1, #8
00818cf8  00 90 a0 e3                                      mov sb, #0
00818cfc  04 70 8d e5                                      str r7, [sp, #4]
00818d00  f8 80 cd e1                                      strd r8, sb, [sp, #8]
00818d04  14 e0 8d e5                                      str lr, [sp, #0x14]
00818d08  1c 00 cd e5                                      strb r0, [sp, #0x1c]
00818d0c  00 10 8d e5                                      str r1, [sp]
00818d10  02 70 a0 e1                                      mov r7, r2
00818d14  03 80 a0 e1                                      mov r8, r3
00818d18  10 e0 8d e5                                      str lr, [sp, #0x10]
00818d1c  18 00 8d e5                                      str r0, [sp, #0x18]
00818d20  0d a0 a0 01                                      moveq sl, sp
00818d24  03 00 00 0a                                      beq #0x818d38
00818d28  0d 00 a0 e1                                      mov r0, sp
00818d2c  0d a0 a0 e1                                      mov sl, sp
00818d30  20 c0 8d e5                                      str ip, [sp, #0x20]
00818d34  92 f0 ff eb                                      bl #0x814f84
00818d38  64 20 9f e5                                      ldr r2, [pc, #0x64]
00818d3c  68 33 95 e5                                      ldr r3, [r5, #0x368]
00818d40  20 10 8a e2                                      add r1, sl, #0x20
00818d44  02 20 94 e7                                      ldr r2, [r4, r2]
00818d48  da 0f 85 e2                                      add r0, r5, #0x368
00818d4c  08 20 82 e2                                      add r2, r2, #8
00818d50  00 20 8d e5                                      str r2, [sp]
00818d54  0f e0 a0 e1                                      mov lr, pc
00818d58  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00818d5c  44 20 9f e5                                      ldr r2, [pc, #0x44]
00818d60  28 30 a0 e3                                      mov r3, #0x28
00818d64  93 06 06 e0                                      mul r6, r3, r6
00818d68  02 20 94 e7                                      ldr r2, [r4, r2]
00818d6c  06 30 85 e0                                      add r3, r5, r6
00818d70  9e 6f 86 e2                                      add r6, r6, #0x278
00818d74  08 20 82 e2                                      add r2, r2, #8
00818d78  00 20 8d e5                                      str r2, [sp]
00818d7c  06 00 85 e0                                      add r0, r5, r6
00818d80  78 c2 93 e5                                      ldr ip, [r3, #0x278]
00818d84  07 10 a0 e1                                      mov r1, r7
00818d88  08 20 a0 e1                                      mov r2, r8
00818d8c  0f e0 a0 e1                                      mov lr, pc
00818d90  28 f0 9c e5                                      ldr pc, [ip, #0x28]
00818d94  28 d0 8d e2                                      add sp, sp, #0x28
00818d98  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00818d9c  bc bd 17 00 68 40 00 00 8c 2c 00 00 a8 10 00 00  .byte 0xbc, 0xbd, 0x17, 0x00, 0x68, 0x40, 0x00, 0x00, 0x8c, 0x2c, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00819050, declared_size=68, range_size=68, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributesC1ERKS_
; demangled: CRoomAttributes::CRoomAttributes(CRoomAttributes const&)
; decoder-mode: arm
00819050  34 30 9f e5                                      ldr r3, [pc, #0x34]
00819054  34 20 9f e5                                      ldr r2, [pc, #0x34]
00819058  70 40 2d e9                                      push {r4, r5, r6, lr}
0081905c  03 30 8f e0                                      add r3, pc, r3
00819060  02 20 93 e7                                      ldr r2, [r3, r2]
00819064  00 40 a0 e1                                      mov r4, r0
00819068  01 50 a0 e1                                      mov r5, r1
0081906c  08 20 82 e2                                      add r2, r2, #8
00819070  08 20 80 e4                                      str r2, [r0], #8
00819074  4c ff ff eb                                      bl #0x818dac
00819078  04 00 a0 e1                                      mov r0, r4
0081907c  05 10 a0 e1                                      mov r1, r5
00819080  1e fe ff eb                                      bl #0x818900
00819084  04 00 a0 e1                                      mov r0, r4
00819088  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081908c  34 ba 17 00 8c 32 00 00                          .byte 0x34, 0xba, 0x17, 0x00, 0x8c, 0x32, 0x00, 0x00

; FUNCTION 0x00819094, declared_size=68, range_size=68, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributesC2ERKS_
; demangled: CRoomAttributes::CRoomAttributes(CRoomAttributes const&)
; decoder-mode: arm
00819094  34 30 9f e5                                      ldr r3, [pc, #0x34]
00819098  34 20 9f e5                                      ldr r2, [pc, #0x34]
0081909c  70 40 2d e9                                      push {r4, r5, r6, lr}
008190a0  03 30 8f e0                                      add r3, pc, r3
008190a4  02 20 93 e7                                      ldr r2, [r3, r2]
008190a8  00 40 a0 e1                                      mov r4, r0
008190ac  01 50 a0 e1                                      mov r5, r1
008190b0  08 20 82 e2                                      add r2, r2, #8
008190b4  08 20 80 e4                                      str r2, [r0], #8
008190b8  3b ff ff eb                                      bl #0x818dac
008190bc  04 00 a0 e1                                      mov r0, r4
008190c0  05 10 a0 e1                                      mov r1, r5
008190c4  0d fe ff eb                                      bl #0x818900
008190c8  04 00 a0 e1                                      mov r0, r4
008190cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008190d0  f0 b9 17 00 8c 32 00 00                          .byte 0xf0, 0xb9, 0x17, 0x00, 0x8c, 0x32, 0x00, 0x00

; FUNCTION 0x008190d8, declared_size=84, range_size=84, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes9SerializeER12NetBitStreamj
; demangled: CRoomAttributes::Serialize(NetBitStream&, unsigned int)
; decoder-mode: arm
008190d8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008190dc  e3 df 4d e2                                      sub sp, sp, #0x38c
008190e0  00 60 a0 e1                                      mov r6, r0
008190e4  02 70 a0 e1                                      mov r7, r2
008190e8  0d 00 a0 e1                                      mov r0, sp
008190ec  01 50 a0 e1                                      mov r5, r1
008190f0  2d ff ff eb                                      bl #0x818dac
008190f4  0d 00 a0 e1                                      mov r0, sp
008190f8  07 20 a0 e1                                      mov r2, r7
008190fc  08 10 86 e2                                      add r1, r6, #8
00819100  69 fd ff eb                                      bl #0x8186ac
00819104  00 20 e0 e3                                      mvn r2, #0
00819108  0d 00 a0 e1                                      mov r0, sp
0081910c  05 10 a0 e1                                      mov r1, r5
00819110  02 30 a0 e1                                      mov r3, r2
00819114  f9 ee ff eb                                      bl #0x814d00
00819118  0d 00 a0 e1                                      mov r0, sp
0081911c  0d 40 a0 e1                                      mov r4, sp
00819120  f3 fb ff eb                                      bl #0x8180f4
00819124  e3 df 8d e2                                      add sp, sp, #0x38c
00819128  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0081912c, declared_size=88, range_size=88, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributes9SerializeEPcjj
; demangled: CRoomAttributes::Serialize(char*, unsigned int, unsigned int)
; decoder-mode: arm
0081912c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00819130  20 d0 4d e2                                      sub sp, sp, #0x20
00819134  03 70 a0 e1                                      mov r7, r3
00819138  00 80 a0 e1                                      mov r8, r0
0081913c  01 60 a0 e1                                      mov r6, r1
00819140  0d 00 a0 e1                                      mov r0, sp
00819144  02 10 a0 e1                                      mov r1, r2
00819148  02 50 a0 e1                                      mov r5, r2
0081914c  ed d5 ff eb                                      bl #0x80e908
00819150  08 00 a0 e1                                      mov r0, r8
00819154  0d 10 a0 e1                                      mov r1, sp
00819158  07 20 a0 e1                                      mov r2, r7
0081915c  dd ff ff eb                                      bl #0x8190d8
00819160  0d 00 a0 e1                                      mov r0, sp
00819164  06 10 a0 e1                                      mov r1, r6
00819168  05 20 a0 e1                                      mov r2, r5
0081916c  26 d7 ff eb                                      bl #0x80ee0c
00819170  0d 00 a0 e1                                      mov r0, sp
00819174  0d 40 a0 e1                                      mov r4, sp
00819178  84 d5 ff eb                                      bl #0x80e790
0081917c  20 d0 8d e2                                      add sp, sp, #0x20
00819180  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00819184, declared_size=60, range_size=60, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributesC1Ev
; demangled: CRoomAttributes::CRoomAttributes()
; decoder-mode: arm
00819184  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00819188  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0081918c  10 40 2d e9                                      push {r4, lr}
00819190  03 30 8f e0                                      add r3, pc, r3
00819194  02 20 93 e7                                      ldr r2, [r3, r2]
00819198  00 40 a0 e1                                      mov r4, r0
0081919c  08 20 82 e2                                      add r2, r2, #8
008191a0  08 20 80 e4                                      str r2, [r0], #8
008191a4  00 ff ff eb                                      bl #0x818dac
008191a8  04 00 a0 e1                                      mov r0, r4
008191ac  1d fe ff eb                                      bl #0x818a28
008191b0  04 00 a0 e1                                      mov r0, r4
008191b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008191b8  00 b9 17 00 8c 32 00 00                          .byte 0x00, 0xb9, 0x17, 0x00, 0x8c, 0x32, 0x00, 0x00

; FUNCTION 0x008191c0, declared_size=60, range_size=60, mode=arm
; class-group: CRoomAttributes
; alias: _ZN15CRoomAttributesC2Ev
; demangled: CRoomAttributes::CRoomAttributes()
; decoder-mode: arm
008191c0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
008191c4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
008191c8  10 40 2d e9                                      push {r4, lr}
008191cc  03 30 8f e0                                      add r3, pc, r3
008191d0  02 20 93 e7                                      ldr r2, [r3, r2]
008191d4  00 40 a0 e1                                      mov r4, r0
008191d8  08 20 82 e2                                      add r2, r2, #8
008191dc  08 20 80 e4                                      str r2, [r0], #8
008191e0  f1 fe ff eb                                      bl #0x818dac
008191e4  04 00 a0 e1                                      mov r0, r4
008191e8  0e fe ff eb                                      bl #0x818a28
008191ec  04 00 a0 e1                                      mov r0, r4
008191f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008191f4  c4 b8 17 00 8c 32 00 00                          .byte 0xc4, 0xb8, 0x17, 0x00, 0x8c, 0x32, 0x00, 0x00
