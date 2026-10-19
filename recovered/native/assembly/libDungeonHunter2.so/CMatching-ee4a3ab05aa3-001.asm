; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fe4a4, declared_size=8, range_size=8, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching25ReceiveGameBootInvitationEv
; demangled: CMatching::ReceiveGameBootInvitation()
; decoder-mode: arm
007fe4a4  00 00 a0 e3                                      mov r0, #0
007fe4a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fe4ac, declared_size=12, range_size=12, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching9GetRoomIdEv
; demangled: CMatching::GetRoomId()
; decoder-mode: arm
007fe4ac  00 00 a0 e3                                      mov r0, #0
007fe4b0  00 10 a0 e3                                      mov r1, #0
007fe4b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fe4b8, declared_size=8, range_size=8, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching14LimitRoomSlotsEj
; demangled: CMatching::LimitRoomSlots(unsigned int)
; decoder-mode: arm
007fe4b8  00 00 a0 e3                                      mov r0, #0
007fe4bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fe4c0, declared_size=32, range_size=32, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching19SetMatchingProviderENS_18MATCHING_PROVIDERSE
; demangled: CMatching::SetMatchingProvider(CMatching::MATCHING_PROVIDERS)
; decoder-mode: arm
007fe4c0  10 30 9f e5                                      ldr r3, [pc, #0x10]
007fe4c4  10 20 9f e5                                      ldr r2, [pc, #0x10]
007fe4c8  03 30 8f e0                                      add r3, pc, r3
007fe4cc  02 20 93 e7                                      ldr r2, [r3, r2]
007fe4d0  00 00 82 e5                                      str r0, [r2]
007fe4d4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007fe4d8  c8 65 19 00 58 4b 00 00                          .byte 0xc8, 0x65, 0x19, 0x00, 0x58, 0x4b, 0x00, 0x00

; FUNCTION 0x007fe4e0, declared_size=100, range_size=100, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching8IsServerEv
; demangled: CMatching::IsServer()
; decoder-mode: arm
007fe4e0  70 40 2d e9                                      push {r4, r5, r6, lr}
007fe4e4  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007fe4e8  00 40 a0 e1                                      mov r4, r0
007fe4ec  00 00 53 e3                                      cmp r3, #0
007fe4f0  01 00 00 1a                                      bne #0x7fe4fc
007fe4f4  00 00 a0 e3                                      mov r0, #0
007fe4f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007fe4fc  00 30 90 e5                                      ldr r3, [r0]
007fe500  0f e0 a0 e1                                      mov lr, pc
007fe504  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007fe508  00 00 50 e3                                      cmp r0, #0
007fe50c  f8 ff ff ba                                      blt #0x7fe4f4
007fe510  00 30 94 e5                                      ldr r3, [r4]
007fe514  04 00 a0 e1                                      mov r0, r4
007fe518  0f e0 a0 e1                                      mov lr, pc
007fe51c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
007fe520  00 30 94 e5                                      ldr r3, [r4]
007fe524  00 50 a0 e1                                      mov r5, r0
007fe528  04 00 a0 e1                                      mov r0, r4
007fe52c  0f e0 a0 e1                                      mov lr, pc
007fe530  74 f0 93 e5                                      ldr pc, [r3, #0x74]
007fe534  00 00 55 e1                                      cmp r5, r0
007fe538  00 00 a0 13                                      movne r0, #0
007fe53c  01 00 a0 03                                      moveq r0, #1
007fe540  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007fe544, declared_size=48, range_size=48, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching14IsMemberServerEi
; demangled: CMatching::IsMemberServer(int)
; decoder-mode: arm
007fe544  10 40 2d e9                                      push {r4, lr}
007fe548  00 40 51 e2                                      subs r4, r1, #0
007fe54c  06 00 00 ba                                      blt #0x7fe56c
007fe550  00 30 90 e5                                      ldr r3, [r0]
007fe554  0f e0 a0 e1                                      mov lr, pc
007fe558  74 f0 93 e5                                      ldr pc, [r3, #0x74]
007fe55c  00 00 54 e1                                      cmp r4, r0
007fe560  00 00 a0 13                                      movne r0, #0
007fe564  01 00 a0 03                                      moveq r0, #1
007fe568  10 80 bd e8                                      pop {r4, pc}
007fe56c  00 00 a0 e3                                      mov r0, #0
007fe570  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fe574, declared_size=40, range_size=40, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching8LockRoomEb
; demangled: CMatching::LockRoom(bool)
; decoder-mode: arm
007fe574  00 00 51 e3                                      cmp r1, #0
007fe578  10 40 2d e9                                      push {r4, lr}
007fe57c  00 40 a0 e1                                      mov r4, r0
007fe580  02 00 00 0a                                      beq #0x7fe590
007fe584  00 30 90 e5                                      ldr r3, [r0]
007fe588  0f e0 a0 e1                                      mov lr, pc
007fe58c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
007fe590  01 30 a0 e3                                      mov r3, #1
007fe594  0e 30 c4 e5                                      strb r3, [r4, #0xe]
007fe598  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fe59c, declared_size=68, range_size=68, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching14GetMemberIndexEi
; demangled: CMatching::GetMemberIndex(int)
; decoder-mode: arm
007fe59c  10 40 2d e9                                      push {r4, lr}
007fe5a0  00 30 90 e5                                      ldr r3, [r0]
007fe5a4  0f e0 a0 e1                                      mov lr, pc
007fe5a8  84 f0 93 e5                                      ldr pc, [r3, #0x84]
007fe5ac  00 30 50 e2                                      subs r3, r0, #0
007fe5b0  06 00 00 0a                                      beq #0x7fe5d0
007fe5b4  01 00 13 e2                                      ands r0, r3, #1
007fe5b8  06 00 00 1a                                      bne #0x7fe5d8
007fe5bc  a3 30 a0 e1                                      lsr r3, r3, #1
007fe5c0  01 00 13 e3                                      tst r3, #1
007fe5c4  01 00 80 e2                                      add r0, r0, #1
007fe5c8  fb ff ff 0a                                      beq #0x7fe5bc
007fe5cc  10 80 bd e8                                      pop {r4, pc}
007fe5d0  00 00 e0 e3                                      mvn r0, #0
007fe5d4  10 80 bd e8                                      pop {r4, pc}
007fe5d8  00 00 a0 e3                                      mov r0, #0
007fe5dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fe5e0, declared_size=56, range_size=56, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching9GetTeamIdEi
; demangled: CMatching::GetTeamId(int)
; decoder-mode: arm
007fe5e0  10 40 2d e9                                      push {r4, lr}
007fe5e4  00 40 a0 e1                                      mov r4, r0
007fe5e8  eb ff ff eb                                      bl #0x7fe59c
007fe5ec  00 00 50 e3                                      cmp r0, #0
007fe5f0  06 00 00 ba                                      blt #0x7fe610
007fe5f4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007fe5f8  03 00 50 e1                                      cmp r0, r3
007fe5fc  03 00 00 aa                                      bge #0x7fe610
007fe600  1b 3e a0 e3                                      mov r3, #0x1b0
007fe604  93 40 24 e0                                      mla r4, r3, r0, r4
007fe608  98 01 d4 e5                                      ldrb r0, [r4, #0x198]
007fe60c  10 80 bd e8                                      pop {r4, pc}
007fe610  00 00 a0 e3                                      mov r0, #0
007fe614  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fe618, declared_size=16, range_size=16, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching18GetMemberIdByIndexEj
; demangled: CMatching::GetMemberIdByIndex(unsigned int)
; decoder-mode: arm
007fe618  1b 3e a0 e3                                      mov r3, #0x1b0
007fe61c  93 01 23 e0                                      mla r3, r3, r1, r0
007fe620  70 01 93 e5                                      ldr r0, [r3, #0x170]
007fe624  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fe628, declared_size=68, range_size=68, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching15sReadPacketDataEiiR12NetBitStream
; demangled: CMatching::sReadPacketData(int, int, NetBitStream&)
; decoder-mode: arm
007fe628  10 40 2d e9                                      push {r4, lr}
007fe62c  30 e0 9f e5                                      ldr lr, [pc, #0x30]
007fe630  30 30 9f e5                                      ldr r3, [pc, #0x30]
007fe634  01 40 a0 e1                                      mov r4, r1
007fe638  0e e0 8f e0                                      add lr, pc, lr
007fe63c  03 c0 9e e7                                      ldr ip, [lr, r3]
007fe640  00 10 a0 e1                                      mov r1, r0
007fe644  02 30 a0 e1                                      mov r3, r2
007fe648  00 c0 9c e5                                      ldr ip, [ip]
007fe64c  04 20 a0 e1                                      mov r2, r4
007fe650  0c 00 a0 e1                                      mov r0, ip
007fe654  00 c0 9c e5                                      ldr ip, [ip]
007fe658  0f e0 a0 e1                                      mov lr, pc
007fe65c  10 f0 9c e5                                      ldr pc, [ip, #0x10]
007fe660  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fe664  58 64 19 00 38 43 00 00                          .byte 0x58, 0x64, 0x19, 0x00, 0x38, 0x43, 0x00, 0x00

; FUNCTION 0x007fe66c, declared_size=68, range_size=68, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching16sWritePacketDataEiiR12NetBitStream
; demangled: CMatching::sWritePacketData(int, int, NetBitStream&)
; decoder-mode: arm
007fe66c  10 40 2d e9                                      push {r4, lr}
007fe670  30 e0 9f e5                                      ldr lr, [pc, #0x30]
007fe674  30 30 9f e5                                      ldr r3, [pc, #0x30]
007fe678  01 40 a0 e1                                      mov r4, r1
007fe67c  0e e0 8f e0                                      add lr, pc, lr
007fe680  03 c0 9e e7                                      ldr ip, [lr, r3]
007fe684  00 10 a0 e1                                      mov r1, r0
007fe688  02 30 a0 e1                                      mov r3, r2
007fe68c  00 c0 9c e5                                      ldr ip, [ip]
007fe690  04 20 a0 e1                                      mov r2, r4
007fe694  0c 00 a0 e1                                      mov r0, ip
007fe698  00 c0 9c e5                                      ldr ip, [ip]
007fe69c  0f e0 a0 e1                                      mov lr, pc
007fe6a0  0c f0 9c e5                                      ldr pc, [ip, #0xc]
007fe6a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fe6a8  14 64 19 00 38 43 00 00                          .byte 0x14, 0x64, 0x19, 0x00, 0x38, 0x43, 0x00, 0x00

; FUNCTION 0x007fe6b0, declared_size=60, range_size=60, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching26sProcessAcknowledgedPacketEii
; demangled: CMatching::sProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
007fe6b0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007fe6b4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007fe6b8  10 40 2d e9                                      push {r4, lr}
007fe6bc  03 30 8f e0                                      add r3, pc, r3
007fe6c0  02 c0 93 e7                                      ldr ip, [r3, r2]
007fe6c4  01 20 a0 e1                                      mov r2, r1
007fe6c8  00 10 a0 e1                                      mov r1, r0
007fe6cc  00 c0 9c e5                                      ldr ip, [ip]
007fe6d0  0c 00 a0 e1                                      mov r0, ip
007fe6d4  00 30 9c e5                                      ldr r3, [ip]
007fe6d8  0f e0 a0 e1                                      mov lr, pc
007fe6dc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
007fe6e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fe6e4  d4 63 19 00 38 43 00 00                          .byte 0xd4, 0x63, 0x19, 0x00, 0x38, 0x43, 0x00, 0x00

; FUNCTION 0x007fe6ec, declared_size=60, range_size=60, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching18sProcessLostPacketEii
; demangled: CMatching::sProcessLostPacket(int, int)
; decoder-mode: arm
007fe6ec  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007fe6f0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007fe6f4  10 40 2d e9                                      push {r4, lr}
007fe6f8  03 30 8f e0                                      add r3, pc, r3
007fe6fc  02 c0 93 e7                                      ldr ip, [r3, r2]
007fe700  01 20 a0 e1                                      mov r2, r1
007fe704  00 10 a0 e1                                      mov r1, r0
007fe708  00 c0 9c e5                                      ldr ip, [ip]
007fe70c  0c 00 a0 e1                                      mov r0, ip
007fe710  00 30 9c e5                                      ldr r3, [ip]
007fe714  0f e0 a0 e1                                      mov lr, pc
007fe718  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007fe71c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007fe720  98 63 19 00 38 43 00 00                          .byte 0x98, 0x63, 0x19, 0x00, 0x38, 0x43, 0x00, 0x00

; FUNCTION 0x007fea14, declared_size=68, range_size=68, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching14ReadPacketDataEiiR12NetBitStream
; demangled: CMatching::ReadPacketData(int, int, NetBitStream&)
; decoder-mode: arm
007fea14  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fea18  00 40 a0 e1                                      mov r4, r0
007fea1c  01 50 a0 e1                                      mov r5, r1
007fea20  03 60 a0 e1                                      mov r6, r3
007fea24  18 30 94 e4                                      ldr r3, [r4], #0x18
007fea28  02 70 a0 e1                                      mov r7, r2
007fea2c  0f e0 a0 e1                                      mov lr, pc
007fea30  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
007fea34  05 10 a0 e1                                      mov r1, r5
007fea38  06 20 a0 e1                                      mov r2, r6
007fea3c  6a 65 00 eb                                      bl #0x817fec
007fea40  04 00 a0 e1                                      mov r0, r4
007fea44  06 10 a0 e1                                      mov r1, r6
007fea48  05 20 a0 e1                                      mov r2, r5
007fea4c  07 30 a0 e1                                      mov r3, r7
007fea50  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
007fea54  c2 ff ff ea                                      b #0x7fe964

; FUNCTION 0x007feac4, declared_size=64, range_size=64, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching16ResendMemberDataEv
; demangled: CMatching::ResendMemberData()
; decoder-mode: arm
007feac4  70 40 2d e9                                      push {r4, r5, r6, lr}
007feac8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
007feacc  00 50 a0 e1                                      mov r5, r0
007fead0  00 00 53 e3                                      cmp r3, #0
007fead4  09 00 00 da                                      ble #0x7feb00
007fead8  00 40 a0 e3                                      mov r4, #0
007feadc  1b 6e a0 e3                                      mov r6, #0x1b0
007feae0  96 04 00 e0                                      mul r0, r6, r4
007feae4  01 40 84 e2                                      add r4, r4, #1
007feae8  20 00 80 e2                                      add r0, r0, #0x20
007feaec  00 00 85 e0                                      add r0, r5, r0
007feaf0  61 52 00 eb                                      bl #0x81347c
007feaf4  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007feaf8  03 00 54 e1                                      cmp r4, r3
007feafc  f7 ff ff ba                                      blt #0x7feae0
007feb00  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007feb40, declared_size=76, range_size=76, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching10SearchRoomE17CRoomSearchFilterbh
; demangled: CMatching::SearchRoom(CRoomSearchFilter, bool, unsigned char)
; decoder-mode: arm
007feb40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007feb44  01 50 a0 e1                                      mov r5, r1
007feb48  03 60 a0 e1                                      mov r6, r3
007feb4c  00 10 a0 e3                                      mov r1, #0
007feb50  e5 3e 0b e3                                      movw r3, #0xbee5
007feb54  00 40 a0 e1                                      mov r4, r0
007feb58  02 70 a0 e1                                      mov r7, r2
007feb5c  05 00 a0 e1                                      mov r0, r5
007feb60  01 20 a0 e1                                      mov r2, r1
007feb64  00 30 4b e3                                      movt r3, #0xb000
007feb68  62 6c 00 eb                                      bl #0x819cf8
007feb6c  04 00 a0 e1                                      mov r0, r4
007feb70  05 10 a0 e1                                      mov r1, r5
007feb74  07 20 a0 e1                                      mov r2, r7
007feb78  06 30 a0 e1                                      mov r3, r6
007feb7c  00 c0 94 e5                                      ldr ip, [r4]
007feb80  0f e0 a0 e1                                      mov lr, pc
007feb84  08 f0 9c e5                                      ldr pc, [ip, #8]
007feb88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007feb8c, declared_size=112, range_size=112, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching7DestroyEv
; demangled: CMatching::Destroy()
; decoder-mode: arm
007feb8c  60 30 9f e5                                      ldr r3, [pc, #0x60]
007feb90  60 20 9f e5                                      ldr r2, [pc, #0x60]
007feb94  10 40 2d e9                                      push {r4, lr}
007feb98  03 30 8f e0                                      add r3, pc, r3
007feb9c  02 40 93 e7                                      ldr r4, [r3, r2]
007feba0  00 30 94 e5                                      ldr r3, [r4]
007feba4  00 00 53 e3                                      cmp r3, #0
007feba8  10 00 00 0a                                      beq #0x7febf0
007febac  03 00 a0 e1                                      mov r0, r3
007febb0  00 30 93 e5                                      ldr r3, [r3]
007febb4  0f e0 a0 e1                                      mov lr, pc
007febb8  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
007febbc  ba 6e 00 eb                                      bl #0x81a6ac
007febc0  00 30 90 e5                                      ldr r3, [r0]
007febc4  0f e0 a0 e1                                      mov lr, pc
007febc8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007febcc  00 30 94 e5                                      ldr r3, [r4]
007febd0  00 00 53 e3                                      cmp r3, #0
007febd4  05 00 00 0a                                      beq #0x7febf0
007febd8  03 00 a0 e1                                      mov r0, r3
007febdc  00 30 93 e5                                      ldr r3, [r3]
007febe0  0f e0 a0 e1                                      mov lr, pc
007febe4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007febe8  00 30 a0 e3                                      mov r3, #0
007febec  00 30 84 e5                                      str r3, [r4]
007febf0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
007febf4  f8 5e 19 00 38 43 00 00                          .byte 0xf8, 0x5e, 0x19, 0x00, 0x38, 0x43, 0x00, 0x00

; FUNCTION 0x007fed08, declared_size=124, range_size=124, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching25ProcessAcknowledgedPacketEii
; demangled: CMatching::ProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
007fed08  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007fed0c  00 60 a0 e1                                      mov r6, r0
007fed10  18 30 96 e4                                      ldr r3, [r6], #0x18
007fed14  01 70 a0 e1                                      mov r7, r1
007fed18  02 80 a0 e1                                      mov r8, r2
007fed1c  00 40 a0 e1                                      mov r4, r0
007fed20  0f e0 a0 e1                                      mov lr, pc
007fed24  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
007fed28  07 10 a0 e1                                      mov r1, r7
007fed2c  08 20 a0 e1                                      mov r2, r8
007fed30  6e 64 00 eb                                      bl #0x817ef0
007fed34  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007fed38  00 00 53 e3                                      cmp r3, #0
007fed3c  0f 00 00 da                                      ble #0x7fed80
007fed40  06 50 a0 e1                                      mov r5, r6
007fed44  00 40 a0 e3                                      mov r4, #0
007fed48  36 a0 a0 e3                                      mov sl, #0x36
007fed4c  9a 04 00 e0                                      mul r0, sl, r4
007fed50  08 30 95 e5                                      ldr r3, [r5, #8]
007fed54  01 00 80 e2                                      add r0, r0, #1
007fed58  80 01 86 e0                                      add r0, r6, r0, lsl #3
007fed5c  07 10 a0 e1                                      mov r1, r7
007fed60  08 20 a0 e1                                      mov r2, r8
007fed64  0f e0 a0 e1                                      mov lr, pc
007fed68  40 f0 93 e5                                      ldr pc, [r3, #0x40]
007fed6c  04 30 96 e5                                      ldr r3, [r6, #4]
007fed70  01 40 84 e2                                      add r4, r4, #1
007fed74  1b 5e 85 e2                                      add r5, r5, #0x1b0
007fed78  03 00 54 e1                                      cmp r4, r3
007fed7c  f2 ff ff ba                                      blt #0x7fed4c
007fed80  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007fed84, declared_size=124, range_size=124, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching17ProcessLostPacketEii
; demangled: CMatching::ProcessLostPacket(int, int)
; decoder-mode: arm
007fed84  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007fed88  00 60 a0 e1                                      mov r6, r0
007fed8c  18 30 96 e4                                      ldr r3, [r6], #0x18
007fed90  01 70 a0 e1                                      mov r7, r1
007fed94  02 80 a0 e1                                      mov r8, r2
007fed98  00 40 a0 e1                                      mov r4, r0
007fed9c  0f e0 a0 e1                                      mov lr, pc
007feda0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
007feda4  07 10 a0 e1                                      mov r1, r7
007feda8  08 20 a0 e1                                      mov r2, r8
007fedac  51 64 00 eb                                      bl #0x817ef8
007fedb0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007fedb4  00 00 53 e3                                      cmp r3, #0
007fedb8  0f 00 00 da                                      ble #0x7fedfc
007fedbc  06 50 a0 e1                                      mov r5, r6
007fedc0  00 40 a0 e3                                      mov r4, #0
007fedc4  36 a0 a0 e3                                      mov sl, #0x36
007fedc8  9a 04 00 e0                                      mul r0, sl, r4
007fedcc  08 30 95 e5                                      ldr r3, [r5, #8]
007fedd0  01 00 80 e2                                      add r0, r0, #1
007fedd4  80 01 86 e0                                      add r0, r6, r0, lsl #3
007fedd8  07 10 a0 e1                                      mov r1, r7
007feddc  08 20 a0 e1                                      mov r2, r8
007fede0  0f e0 a0 e1                                      mov lr, pc
007fede4  44 f0 93 e5                                      ldr pc, [r3, #0x44]
007fede8  04 30 96 e5                                      ldr r3, [r6, #4]
007fedec  01 40 84 e2                                      add r4, r4, #1
007fedf0  1b 5e 85 e2                                      add r5, r5, #0x1b0
007fedf4  03 00 54 e1                                      cmp r4, r3
007fedf8  f2 ff ff ba                                      blt #0x7fedc8
007fedfc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007ff008, declared_size=76, range_size=76, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching21SetRoomMemberAttibuteEiPKvi
; demangled: CMatching::SetRoomMemberAttibute(int, void const*, int)
; decoder-mode: arm
007ff008  70 40 2d e9                                      push {r4, r5, r6, lr}
007ff00c  02 40 a0 e1                                      mov r4, r2
007ff010  03 60 a0 e1                                      mov r6, r3
007ff014  00 50 a0 e1                                      mov r5, r0
007ff018  5f fd ff eb                                      bl #0x7fe59c
007ff01c  00 00 50 e3                                      cmp r0, #0
007ff020  0a 00 00 ba                                      blt #0x7ff050
007ff024  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007ff028  03 00 50 e1                                      cmp r0, r3
007ff02c  07 00 00 aa                                      bge #0x7ff050
007ff030  1b 3e a0 e3                                      mov r3, #0x1b0
007ff034  93 00 00 e0                                      mul r0, r3, r0
007ff038  04 10 a0 e1                                      mov r1, r4
007ff03c  1a 0e 80 e2                                      add r0, r0, #0x1a0
007ff040  00 00 85 e0                                      add r0, r5, r0
007ff044  06 20 a0 e1                                      mov r2, r6
007ff048  70 40 bd e8                                      pop {r4, r5, r6, lr}
007ff04c  d9 ff ff ea                                      b #0x7fefb8
007ff050  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007ff054, declared_size=104, range_size=104, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching21GetRoomMemberAttibuteEiPvi
; demangled: CMatching::GetRoomMemberAttibute(int, void*, int)
; decoder-mode: arm
007ff054  70 40 2d e9                                      push {r4, r5, r6, lr}
007ff058  02 60 a0 e1                                      mov r6, r2
007ff05c  00 50 a0 e1                                      mov r5, r0
007ff060  4d fd ff eb                                      bl #0x7fe59c
007ff064  00 00 50 e3                                      cmp r0, #0
007ff068  0f 00 00 ba                                      blt #0x7ff0ac
007ff06c  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007ff070  03 00 50 e1                                      cmp r0, r3
007ff074  0c 00 00 aa                                      bge #0x7ff0ac
007ff078  1b 4e a0 e3                                      mov r4, #0x1b0
007ff07c  94 50 24 e0                                      mla r4, r4, r0, r5
007ff080  c0 11 94 e5                                      ldr r1, [r4, #0x1c0]
007ff084  07 4d 84 e2                                      add r4, r4, #0x1c0
007ff088  00 00 51 e3                                      cmp r1, #0
007ff08c  08 00 00 0a                                      beq #0x7ff0b4
007ff090  04 20 94 e5                                      ldr r2, [r4, #4]
007ff094  00 00 52 e3                                      cmp r2, #0
007ff098  05 00 00 da                                      ble #0x7ff0b4
007ff09c  06 00 a0 e1                                      mov r0, r6
007ff0a0  f0 3d ec eb                                      bl #0x30e868
007ff0a4  04 00 94 e5                                      ldr r0, [r4, #4]
007ff0a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
007ff0ac  00 00 a0 e3                                      mov r0, #0
007ff0b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
007ff0b4  00 00 a0 e3                                      mov r0, #0
007ff0b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007ff120, declared_size=560, range_size=560, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching8JoinRoomEy
; demangled: CMatching::JoinRoom(unsigned long long)
; decoder-mode: arm
007ff120  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ff124  7c d0 4d e2                                      sub sp, sp, #0x7c
007ff128  f0 22 cd e1                                      strd r2, r3, [sp, #0x20]
007ff12c  00 40 a0 e1                                      mov r4, r0
007ff130  21 30 00 eb                                      bl #0x80b1bc
007ff134  01 10 a0 e3                                      mov r1, #1
007ff138  54 2f 00 eb                                      bl #0x80ae90
007ff13c  e6 43 00 eb                                      bl #0x8100dc
007ff140  70 48 00 eb                                      bl #0x811308
007ff144  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007ff148  e8 61 9f e5                                      ldr r6, [pc, #0x1e8]
007ff14c  00 00 53 e3                                      cmp r3, #0
007ff150  06 60 8f e0                                      add r6, pc, r6
007ff154  70 00 00 da                                      ble #0x7ff31c
007ff158  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
007ff15c  dc 31 9f e5                                      ldr r3, [pc, #0x1dc]
007ff160  dc 21 9f e5                                      ldr r2, [pc, #0x1dc]
007ff164  08 10 8d e5                                      str r1, [sp, #8]
007ff168  03 30 96 e7                                      ldr r3, [r6, r3]
007ff16c  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
007ff170  10 20 8d e5                                      str r2, [sp, #0x10]
007ff174  08 30 83 e2                                      add r3, r3, #8
007ff178  50 20 8d e2                                      add r2, sp, #0x50
007ff17c  0c 10 8d e5                                      str r1, [sp, #0xc]
007ff180  c4 b1 9f e5                                      ldr fp, [pc, #0x1c4]
007ff184  28 10 8d e2                                      add r1, sp, #0x28
007ff188  00 70 a0 e3                                      mov r7, #0
007ff18c  04 20 8d e5                                      str r2, [sp, #4]
007ff190  14 30 8d e5                                      str r3, [sp, #0x14]
007ff194  20 20 82 e2                                      add r2, r2, #0x20
007ff198  20 30 81 e2                                      add r3, r1, #0x20
007ff19c  00 10 8d e5                                      str r1, [sp]
007ff1a0  04 80 a0 e1                                      mov r8, r4
007ff1a4  00 50 e0 e3                                      mvn r5, #0
007ff1a8  07 a0 a0 e1                                      mov sl, r7
007ff1ac  18 20 8d e5                                      str r2, [sp, #0x18]
007ff1b0  1c 30 8d e5                                      str r3, [sp, #0x1c]
007ff1b4  70 30 9d e5                                      ldr r3, [sp, #0x70]
007ff1b8  14 20 9d e5                                      ldr r2, [sp, #0x14]
007ff1bc  1b 1e a0 e3                                      mov r1, #0x1b0
007ff1c0  01 00 73 e3                                      cmn r3, #1
007ff1c4  20 30 a0 e3                                      mov r3, #0x20
007ff1c8  50 20 8d e5                                      str r2, [sp, #0x50]
007ff1cc  54 30 8d e5                                      str r3, [sp, #0x54]
007ff1d0  00 20 a0 e3                                      mov r2, #0
007ff1d4  00 30 a0 e3                                      mov r3, #0
007ff1d8  91 07 09 e0                                      mul sb, r1, r7
007ff1dc  04 00 9d e5                                      ldr r0, [sp, #4]
007ff1e0  f8 25 cd e1                                      strd r2, r3, [sp, #0x58]
007ff1e4  60 50 8d e5                                      str r5, [sp, #0x60]
007ff1e8  64 50 8d e5                                      str r5, [sp, #0x64]
007ff1ec  68 a0 8d e5                                      str sl, [sp, #0x68]
007ff1f0  6c a0 cd e5                                      strb sl, [sp, #0x6c]
007ff1f4  01 00 00 0a                                      beq #0x7ff200
007ff1f8  70 50 8d e5                                      str r5, [sp, #0x70]
007ff1fc  60 57 00 eb                                      bl #0x814f84
007ff200  08 10 9d e5                                      ldr r1, [sp, #8]
007ff204  1b 2e a0 e3                                      mov r2, #0x1b0
007ff208  92 07 00 e0                                      mul r0, r2, r7
007ff20c  01 30 96 e7                                      ldr r3, [r6, r1]
007ff210  15 0e 80 e2                                      add r0, r0, #0x150
007ff214  00 00 84 e0                                      add r0, r4, r0
007ff218  08 30 83 e2                                      add r3, r3, #8
007ff21c  50 30 8d e5                                      str r3, [sp, #0x50]
007ff220  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ff224  50 31 98 e5                                      ldr r3, [r8, #0x150]
007ff228  0f e0 a0 e1                                      mov lr, pc
007ff22c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007ff230  10 10 9d e5                                      ldr r1, [sp, #0x10]
007ff234  0b 30 96 e7                                      ldr r3, [r6, fp]
007ff238  01 70 87 e2                                      add r7, r7, #1
007ff23c  01 20 96 e7                                      ldr r2, [r6, r1]
007ff240  48 10 9d e5                                      ldr r1, [sp, #0x48]
007ff244  08 30 83 e2                                      add r3, r3, #8
007ff248  08 20 82 e2                                      add r2, r2, #8
007ff24c  28 20 8d e5                                      str r2, [sp, #0x28]
007ff250  08 20 a0 e3                                      mov r2, #8
007ff254  50 30 8d e5                                      str r3, [sp, #0x50]
007ff258  2c 20 8d e5                                      str r2, [sp, #0x2c]
007ff25c  00 30 a0 e3                                      mov r3, #0
007ff260  00 20 a0 e3                                      mov r2, #0
007ff264  00 00 51 e3                                      cmp r1, #0
007ff268  00 00 9d e5                                      ldr r0, [sp]
007ff26c  f0 23 cd e1                                      strd r2, r3, [sp, #0x30]
007ff270  38 50 8d e5                                      str r5, [sp, #0x38]
007ff274  3c 50 8d e5                                      str r5, [sp, #0x3c]
007ff278  40 a0 8d e5                                      str sl, [sp, #0x40]
007ff27c  44 a0 cd e5                                      strb sl, [sp, #0x44]
007ff280  01 00 00 0a                                      beq #0x7ff28c
007ff284  48 a0 8d e5                                      str sl, [sp, #0x48]
007ff288  3d 57 00 eb                                      bl #0x814f84
007ff28c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007ff290  5e 0f 89 e2                                      add r0, sb, #0x178
007ff294  00 00 84 e0                                      add r0, r4, r0
007ff298  01 30 96 e7                                      ldr r3, [r6, r1]
007ff29c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007ff2a0  08 30 83 e2                                      add r3, r3, #8
007ff2a4  28 30 8d e5                                      str r3, [sp, #0x28]
007ff2a8  78 31 98 e5                                      ldr r3, [r8, #0x178]
007ff2ac  0f e0 a0 e1                                      mov lr, pc
007ff2b0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007ff2b4  0b 30 96 e7                                      ldr r3, [r6, fp]
007ff2b8  00 10 a0 e3                                      mov r1, #0
007ff2bc  1a 0e 89 e2                                      add r0, sb, #0x1a0
007ff2c0  08 30 83 e2                                      add r3, r3, #8
007ff2c4  00 00 84 e0                                      add r0, r4, r0
007ff2c8  01 20 a0 e1                                      mov r2, r1
007ff2cc  28 30 8d e5                                      str r3, [sp, #0x28]
007ff2d0  38 ff ff eb                                      bl #0x7fefb8
007ff2d4  c8 51 88 e5                                      str r5, [r8, #0x1c8]
007ff2d8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007ff2dc  1b 8e 88 e2                                      add r8, r8, #0x1b0
007ff2e0  03 00 57 e1                                      cmp r7, r3
007ff2e4  b2 ff ff ba                                      blt #0x7ff1b4
007ff2e8  00 00 53 e3                                      cmp r3, #0
007ff2ec  0a 00 00 da                                      ble #0x7ff31c
007ff2f0  00 50 a0 e3                                      mov r5, #0
007ff2f4  1b 6e a0 e3                                      mov r6, #0x1b0
007ff2f8  96 05 00 e0                                      mul r0, r6, r5
007ff2fc  00 10 a0 e3                                      mov r1, #0
007ff300  20 00 80 e2                                      add r0, r0, #0x20
007ff304  00 00 84 e0                                      add r0, r4, r0
007ff308  d7 50 00 eb                                      bl #0x81366c
007ff30c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007ff310  01 50 85 e2                                      add r5, r5, #1
007ff314  03 00 55 e1                                      cmp r5, r3
007ff318  f6 ff ff ba                                      blt #0x7ff2f8
007ff31c  04 00 a0 e1                                      mov r0, r4
007ff320  d0 22 cd e1                                      ldrd r2, r3, [sp, #0x20]
007ff324  00 10 94 e5                                      ldr r1, [r4]
007ff328  0f e0 a0 e1                                      mov lr, pc
007ff32c  00 f0 91 e5                                      ldr pc, [r1]
007ff330  7c d0 8d e2                                      add sp, sp, #0x7c
007ff334  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007ff338  40 59 19 00 c8 10 00 00 84 29 00 00 68 40 00 00  .byte 0x40, 0x59, 0x19, 0x00, 0xc8, 0x10, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0x68, 0x40, 0x00, 0x00
007ff348  24 10 00 00 a8 10 00 00                          .byte 0x24, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x007ff350, declared_size=592, range_size=592, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching14CreateJoinRoomEb15CRoomAttributes
; demangled: CMatching::CreateJoinRoom(bool, CRoomAttributes)
; decoder-mode: arm
007ff350  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ff354  7c d0 4d e2                                      sub sp, sp, #0x7c
007ff358  20 20 8d e5                                      str r2, [sp, #0x20]
007ff35c  00 80 a0 e1                                      mov r8, r0
007ff360  24 10 8d e5                                      str r1, [sp, #0x24]
007ff364  94 2f 00 eb                                      bl #0x80b1bc
007ff368  01 10 a0 e3                                      mov r1, #1
007ff36c  c7 2e 00 eb                                      bl #0x80ae90
007ff370  59 43 00 eb                                      bl #0x8100dc
007ff374  e3 47 00 eb                                      bl #0x811308
007ff378  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
007ff37c  04 52 9f e5                                      ldr r5, [pc, #0x204]
007ff380  00 00 53 e3                                      cmp r3, #0
007ff384  05 50 8f e0                                      add r5, pc, r5
007ff388  63 00 00 da                                      ble #0x7ff51c
007ff38c  f8 11 9f e5                                      ldr r1, [pc, #0x1f8]
007ff390  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
007ff394  f8 21 9f e5                                      ldr r2, [pc, #0x1f8]
007ff398  10 10 8d e5                                      str r1, [sp, #0x10]
007ff39c  03 30 95 e7                                      ldr r3, [r5, r3]
007ff3a0  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
007ff3a4  0c 20 8d e5                                      str r2, [sp, #0xc]
007ff3a8  08 30 83 e2                                      add r3, r3, #8
007ff3ac  50 20 8d e2                                      add r2, sp, #0x50
007ff3b0  08 10 8d e5                                      str r1, [sp, #8]
007ff3b4  e0 b1 9f e5                                      ldr fp, [pc, #0x1e0]
007ff3b8  28 10 8d e2                                      add r1, sp, #0x28
007ff3bc  00 60 a0 e3                                      mov r6, #0
007ff3c0  00 20 8d e5                                      str r2, [sp]
007ff3c4  14 30 8d e5                                      str r3, [sp, #0x14]
007ff3c8  20 20 82 e2                                      add r2, r2, #0x20
007ff3cc  20 30 81 e2                                      add r3, r1, #0x20
007ff3d0  04 10 8d e5                                      str r1, [sp, #4]
007ff3d4  08 70 a0 e1                                      mov r7, r8
007ff3d8  00 40 e0 e3                                      mvn r4, #0
007ff3dc  06 a0 a0 e1                                      mov sl, r6
007ff3e0  18 20 8d e5                                      str r2, [sp, #0x18]
007ff3e4  1c 30 8d e5                                      str r3, [sp, #0x1c]
007ff3e8  70 30 9d e5                                      ldr r3, [sp, #0x70]
007ff3ec  14 20 9d e5                                      ldr r2, [sp, #0x14]
007ff3f0  1b 1e a0 e3                                      mov r1, #0x1b0
007ff3f4  01 00 73 e3                                      cmn r3, #1
007ff3f8  20 30 a0 e3                                      mov r3, #0x20
007ff3fc  50 20 8d e5                                      str r2, [sp, #0x50]
007ff400  54 30 8d e5                                      str r3, [sp, #0x54]
007ff404  00 20 a0 e3                                      mov r2, #0
007ff408  00 30 a0 e3                                      mov r3, #0
007ff40c  91 06 09 e0                                      mul sb, r1, r6
007ff410  00 00 9d e5                                      ldr r0, [sp]
007ff414  f8 25 cd e1                                      strd r2, r3, [sp, #0x58]
007ff418  60 40 8d e5                                      str r4, [sp, #0x60]
007ff41c  64 40 8d e5                                      str r4, [sp, #0x64]
007ff420  68 a0 8d e5                                      str sl, [sp, #0x68]
007ff424  6c a0 cd e5                                      strb sl, [sp, #0x6c]
007ff428  01 00 00 0a                                      beq #0x7ff434
007ff42c  70 40 8d e5                                      str r4, [sp, #0x70]
007ff430  d3 56 00 eb                                      bl #0x814f84
007ff434  10 10 9d e5                                      ldr r1, [sp, #0x10]
007ff438  1b 2e a0 e3                                      mov r2, #0x1b0
007ff43c  92 06 00 e0                                      mul r0, r2, r6
007ff440  01 30 95 e7                                      ldr r3, [r5, r1]
007ff444  15 0e 80 e2                                      add r0, r0, #0x150
007ff448  00 00 88 e0                                      add r0, r8, r0
007ff44c  08 30 83 e2                                      add r3, r3, #8
007ff450  50 30 8d e5                                      str r3, [sp, #0x50]
007ff454  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ff458  50 31 97 e5                                      ldr r3, [r7, #0x150]
007ff45c  0f e0 a0 e1                                      mov lr, pc
007ff460  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007ff464  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007ff468  0b 30 95 e7                                      ldr r3, [r5, fp]
007ff46c  01 60 86 e2                                      add r6, r6, #1
007ff470  01 20 95 e7                                      ldr r2, [r5, r1]
007ff474  48 10 9d e5                                      ldr r1, [sp, #0x48]
007ff478  08 30 83 e2                                      add r3, r3, #8
007ff47c  08 20 82 e2                                      add r2, r2, #8
007ff480  28 20 8d e5                                      str r2, [sp, #0x28]
007ff484  08 20 a0 e3                                      mov r2, #8
007ff488  50 30 8d e5                                      str r3, [sp, #0x50]
007ff48c  2c 20 8d e5                                      str r2, [sp, #0x2c]
007ff490  00 30 a0 e3                                      mov r3, #0
007ff494  00 20 a0 e3                                      mov r2, #0
007ff498  00 00 51 e3                                      cmp r1, #0
007ff49c  04 00 9d e5                                      ldr r0, [sp, #4]
007ff4a0  f0 23 cd e1                                      strd r2, r3, [sp, #0x30]
007ff4a4  38 40 8d e5                                      str r4, [sp, #0x38]
007ff4a8  3c 40 8d e5                                      str r4, [sp, #0x3c]
007ff4ac  40 a0 8d e5                                      str sl, [sp, #0x40]
007ff4b0  44 a0 cd e5                                      strb sl, [sp, #0x44]
007ff4b4  01 00 00 0a                                      beq #0x7ff4c0
007ff4b8  48 a0 8d e5                                      str sl, [sp, #0x48]
007ff4bc  b0 56 00 eb                                      bl #0x814f84
007ff4c0  08 10 9d e5                                      ldr r1, [sp, #8]
007ff4c4  5e 0f 89 e2                                      add r0, sb, #0x178
007ff4c8  00 00 88 e0                                      add r0, r8, r0
007ff4cc  01 30 95 e7                                      ldr r3, [r5, r1]
007ff4d0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007ff4d4  08 30 83 e2                                      add r3, r3, #8
007ff4d8  28 30 8d e5                                      str r3, [sp, #0x28]
007ff4dc  78 31 97 e5                                      ldr r3, [r7, #0x178]
007ff4e0  0f e0 a0 e1                                      mov lr, pc
007ff4e4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007ff4e8  0b 30 95 e7                                      ldr r3, [r5, fp]
007ff4ec  00 10 a0 e3                                      mov r1, #0
007ff4f0  1a 0e 89 e2                                      add r0, sb, #0x1a0
007ff4f4  08 30 83 e2                                      add r3, r3, #8
007ff4f8  00 00 88 e0                                      add r0, r8, r0
007ff4fc  01 20 a0 e1                                      mov r2, r1
007ff500  28 30 8d e5                                      str r3, [sp, #0x28]
007ff504  ab fe ff eb                                      bl #0x7fefb8
007ff508  c8 41 87 e5                                      str r4, [r7, #0x1c8]
007ff50c  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
007ff510  1b 7e 87 e2                                      add r7, r7, #0x1b0
007ff514  03 00 56 e1                                      cmp r6, r3
007ff518  b2 ff ff ba                                      blt #0x7ff3e8
007ff51c  e5 2e 0b e3                                      movw r2, #0xbee5
007ff520  00 20 4b e3                                      movt r2, #0xb000
007ff524  20 00 9d e5                                      ldr r0, [sp, #0x20]
007ff528  00 10 a0 e3                                      mov r1, #0
007ff52c  04 64 00 eb                                      bl #0x818544
007ff530  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
007ff534  00 00 53 e3                                      cmp r3, #0
007ff538  0a 00 00 da                                      ble #0x7ff568
007ff53c  00 40 a0 e3                                      mov r4, #0
007ff540  1b 5e a0 e3                                      mov r5, #0x1b0
007ff544  95 04 00 e0                                      mul r0, r5, r4
007ff548  01 10 a0 e3                                      mov r1, #1
007ff54c  20 00 80 e2                                      add r0, r0, #0x20
007ff550  00 00 88 e0                                      add r0, r8, r0
007ff554  44 50 00 eb                                      bl #0x81366c
007ff558  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
007ff55c  01 40 84 e2                                      add r4, r4, #1
007ff560  03 00 54 e1                                      cmp r4, r3
007ff564  f6 ff ff ba                                      blt #0x7ff544
007ff568  08 00 a0 e1                                      mov r0, r8
007ff56c  24 10 9d e5                                      ldr r1, [sp, #0x24]
007ff570  20 20 9d e5                                      ldr r2, [sp, #0x20]
007ff574  00 30 98 e5                                      ldr r3, [r8]
007ff578  0f e0 a0 e1                                      mov lr, pc
007ff57c  04 f0 93 e5                                      ldr pc, [r3, #4]
007ff580  7c d0 8d e2                                      add sp, sp, #0x7c
007ff584  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007ff588  0c 57 19 00 c8 10 00 00 84 29 00 00 68 40 00 00  .byte 0x0c, 0x57, 0x19, 0x00, 0xc8, 0x10, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0x68, 0x40, 0x00, 0x00
007ff598  24 10 00 00 a8 10 00 00                          .byte 0x24, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x007ff5a0, declared_size=700, range_size=700, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching9TerminateEv
; demangled: CMatching::Terminate()
; decoder-mode: arm
007ff5a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ff5a4  7c d0 4d e2                                      sub sp, sp, #0x7c
007ff5a8  00 30 90 e5                                      ldr r3, [r0]
007ff5ac  00 80 a0 e1                                      mov r8, r0
007ff5b0  0f e0 a0 e1                                      mov lr, pc
007ff5b4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
007ff5b8  7c 52 9f e5                                      ldr r5, [pc, #0x27c]
007ff5bc  00 00 50 e3                                      cmp r0, #0
007ff5c0  05 50 8f e0                                      add r5, pc, r5
007ff5c4  97 00 00 1a                                      bne #0x7ff828
007ff5c8  00 00 a0 e3                                      mov r0, #0
007ff5cc  00 60 a0 e1                                      mov r6, r0
007ff5d0  3a 57 00 eb                                      bl #0x8152c0
007ff5d4  0c 60 c8 e5                                      strb r6, [r8, #0xc]
007ff5d8  ca 42 00 eb                                      bl #0x810108
007ff5dc  55 2c 00 eb                                      bl #0x80a738
007ff5e0  0b 57 00 eb                                      bl #0x815214
007ff5e4  eb f5 ff eb                                      bl #0x7fcd98
007ff5e8  2f 6c 00 eb                                      bl #0x81a6ac
007ff5ec  4c 12 9f e5                                      ldr r1, [pc, #0x24c]
007ff5f0  24 10 8d e5                                      str r1, [sp, #0x24]
007ff5f4  00 30 90 e5                                      ldr r3, [r0]
007ff5f8  0f e0 a0 e1                                      mov lr, pc
007ff5fc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
007ff600  24 20 9d e5                                      ldr r2, [sp, #0x24]
007ff604  02 00 95 e7                                      ldr r0, [r5, r2]
007ff608  8a fb ff eb                                      bl #0x7fe438
007ff60c  30 32 9f e5                                      ldr r3, [pc, #0x230]
007ff610  03 00 95 e7                                      ldr r0, [r5, r3]
007ff614  87 fb ff eb                                      bl #0x7fe438
007ff618  00 30 98 e5                                      ldr r3, [r8]
007ff61c  08 00 a0 e1                                      mov r0, r8
007ff620  0f e0 a0 e1                                      mov lr, pc
007ff624  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
007ff628  00 30 90 e5                                      ldr r3, [r0]
007ff62c  0f e0 a0 e1                                      mov lr, pc
007ff630  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007ff634  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
007ff638  06 00 53 e1                                      cmp r3, r6
007ff63c  6f 00 00 da                                      ble #0x7ff800
007ff640  00 32 9f e5                                      ldr r3, [pc, #0x200]
007ff644  00 12 9f e5                                      ldr r1, [pc, #0x200]
007ff648  00 22 9f e5                                      ldr r2, [pc, #0x200]
007ff64c  10 30 8d e5                                      str r3, [sp, #0x10]
007ff650  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
007ff654  0c 10 8d e5                                      str r1, [sp, #0xc]
007ff658  14 20 8d e5                                      str r2, [sp, #0x14]
007ff65c  03 30 95 e7                                      ldr r3, [r5, r3]
007ff660  50 10 8d e2                                      add r1, sp, #0x50
007ff664  28 20 8d e2                                      add r2, sp, #0x28
007ff668  08 30 83 e2                                      add r3, r3, #8
007ff66c  e4 b1 9f e5                                      ldr fp, [pc, #0x1e4]
007ff670  04 10 8d e5                                      str r1, [sp, #4]
007ff674  18 30 8d e5                                      str r3, [sp, #0x18]
007ff678  20 30 81 e2                                      add r3, r1, #0x20
007ff67c  20 10 82 e2                                      add r1, r2, #0x20
007ff680  08 20 8d e5                                      str r2, [sp, #8]
007ff684  08 70 a0 e1                                      mov r7, r8
007ff688  00 40 e0 e3                                      mvn r4, #0
007ff68c  06 a0 a0 e1                                      mov sl, r6
007ff690  1c 30 8d e5                                      str r3, [sp, #0x1c]
007ff694  20 10 8d e5                                      str r1, [sp, #0x20]
007ff698  18 30 9d e5                                      ldr r3, [sp, #0x18]
007ff69c  1b 2e a0 e3                                      mov r2, #0x1b0
007ff6a0  92 06 09 e0                                      mul sb, r2, r6
007ff6a4  50 30 8d e5                                      str r3, [sp, #0x50]
007ff6a8  70 30 9d e5                                      ldr r3, [sp, #0x70]
007ff6ac  20 10 a0 e3                                      mov r1, #0x20
007ff6b0  00 20 a0 e3                                      mov r2, #0
007ff6b4  01 00 73 e3                                      cmn r3, #1
007ff6b8  00 30 a0 e3                                      mov r3, #0
007ff6bc  04 00 9d e5                                      ldr r0, [sp, #4]
007ff6c0  54 10 8d e5                                      str r1, [sp, #0x54]
007ff6c4  f8 25 cd e1                                      strd r2, r3, [sp, #0x58]
007ff6c8  60 40 8d e5                                      str r4, [sp, #0x60]
007ff6cc  64 40 8d e5                                      str r4, [sp, #0x64]
007ff6d0  68 a0 8d e5                                      str sl, [sp, #0x68]
007ff6d4  6c a0 cd e5                                      strb sl, [sp, #0x6c]
007ff6d8  01 00 00 0a                                      beq #0x7ff6e4
007ff6dc  70 40 8d e5                                      str r4, [sp, #0x70]
007ff6e0  27 56 00 eb                                      bl #0x814f84
007ff6e4  10 10 9d e5                                      ldr r1, [sp, #0x10]
007ff6e8  1b 2e a0 e3                                      mov r2, #0x1b0
007ff6ec  92 06 00 e0                                      mul r0, r2, r6
007ff6f0  01 30 95 e7                                      ldr r3, [r5, r1]
007ff6f4  15 0e 80 e2                                      add r0, r0, #0x150
007ff6f8  00 00 88 e0                                      add r0, r8, r0
007ff6fc  08 30 83 e2                                      add r3, r3, #8
007ff700  50 30 8d e5                                      str r3, [sp, #0x50]
007ff704  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007ff708  50 31 97 e5                                      ldr r3, [r7, #0x150]
007ff70c  0f e0 a0 e1                                      mov lr, pc
007ff710  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007ff714  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007ff718  0b 30 95 e7                                      ldr r3, [r5, fp]
007ff71c  01 60 86 e2                                      add r6, r6, #1
007ff720  01 20 95 e7                                      ldr r2, [r5, r1]
007ff724  48 10 9d e5                                      ldr r1, [sp, #0x48]
007ff728  08 30 83 e2                                      add r3, r3, #8
007ff72c  08 20 82 e2                                      add r2, r2, #8
007ff730  28 20 8d e5                                      str r2, [sp, #0x28]
007ff734  08 20 a0 e3                                      mov r2, #8
007ff738  50 30 8d e5                                      str r3, [sp, #0x50]
007ff73c  2c 20 8d e5                                      str r2, [sp, #0x2c]
007ff740  00 30 a0 e3                                      mov r3, #0
007ff744  00 20 a0 e3                                      mov r2, #0
007ff748  00 00 51 e3                                      cmp r1, #0
007ff74c  08 00 9d e5                                      ldr r0, [sp, #8]
007ff750  f0 23 cd e1                                      strd r2, r3, [sp, #0x30]
007ff754  38 40 8d e5                                      str r4, [sp, #0x38]
007ff758  3c 40 8d e5                                      str r4, [sp, #0x3c]
007ff75c  40 a0 8d e5                                      str sl, [sp, #0x40]
007ff760  44 a0 cd e5                                      strb sl, [sp, #0x44]
007ff764  01 00 00 0a                                      beq #0x7ff770
007ff768  48 a0 8d e5                                      str sl, [sp, #0x48]
007ff76c  04 56 00 eb                                      bl #0x814f84
007ff770  14 10 9d e5                                      ldr r1, [sp, #0x14]
007ff774  5e 0f 89 e2                                      add r0, sb, #0x178
007ff778  00 00 88 e0                                      add r0, r8, r0
007ff77c  01 30 95 e7                                      ldr r3, [r5, r1]
007ff780  20 10 9d e5                                      ldr r1, [sp, #0x20]
007ff784  08 30 83 e2                                      add r3, r3, #8
007ff788  28 30 8d e5                                      str r3, [sp, #0x28]
007ff78c  78 31 97 e5                                      ldr r3, [r7, #0x178]
007ff790  0f e0 a0 e1                                      mov lr, pc
007ff794  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007ff798  0b 30 95 e7                                      ldr r3, [r5, fp]
007ff79c  00 10 a0 e3                                      mov r1, #0
007ff7a0  1a 0e 89 e2                                      add r0, sb, #0x1a0
007ff7a4  08 30 83 e2                                      add r3, r3, #8
007ff7a8  00 00 88 e0                                      add r0, r8, r0
007ff7ac  01 20 a0 e1                                      mov r2, r1
007ff7b0  28 30 8d e5                                      str r3, [sp, #0x28]
007ff7b4  ff fd ff eb                                      bl #0x7fefb8
007ff7b8  c8 41 87 e5                                      str r4, [r7, #0x1c8]
007ff7bc  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
007ff7c0  1b 7e 87 e2                                      add r7, r7, #0x1b0
007ff7c4  03 00 56 e1                                      cmp r6, r3
007ff7c8  b2 ff ff ba                                      blt #0x7ff698
007ff7cc  00 00 53 e3                                      cmp r3, #0
007ff7d0  0a 00 00 da                                      ble #0x7ff800
007ff7d4  00 40 a0 e3                                      mov r4, #0
007ff7d8  1b 6e a0 e3                                      mov r6, #0x1b0
007ff7dc  96 04 00 e0                                      mul r0, r6, r4
007ff7e0  00 10 a0 e3                                      mov r1, #0
007ff7e4  20 00 80 e2                                      add r0, r0, #0x20
007ff7e8  00 00 88 e0                                      add r0, r8, r0
007ff7ec  9e 4f 00 eb                                      bl #0x81366c
007ff7f0  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
007ff7f4  01 40 84 e2                                      add r4, r4, #1
007ff7f8  03 00 54 e1                                      cmp r4, r3
007ff7fc  f6 ff ff ba                                      blt #0x7ff7dc
007ff800  24 30 9d e5                                      ldr r3, [sp, #0x24]
007ff804  00 20 a0 e3                                      mov r2, #0
007ff808  01 15 a0 e3                                      mov r1, #0x400000
007ff80c  03 00 95 e7                                      ldr r0, [r5, r3]
007ff810  02 10 81 e2                                      add r1, r1, #2
007ff814  02 30 a0 e1                                      mov r3, r2
007ff818  79 fa ff eb                                      bl #0x7fe204
007ff81c  00 00 a0 e3                                      mov r0, #0
007ff820  7c d0 8d e2                                      add sp, sp, #0x7c
007ff824  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ff828  00 30 98 e5                                      ldr r3, [r8]
007ff82c  08 00 a0 e1                                      mov r0, r8
007ff830  0f e0 a0 e1                                      mov lr, pc
007ff834  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
007ff838  62 ff ff ea                                      b #0x7ff5c8
; mapping-symbol data/literal pool
007ff83c  d0 54 19 00 88 15 00 00 3c 34 00 00 c8 10 00 00  .byte 0xd0, 0x54, 0x19, 0x00, 0x88, 0x15, 0x00, 0x00, 0x3c, 0x34, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
007ff84c  68 40 00 00 24 10 00 00 84 29 00 00 a8 10 00 00  .byte 0x68, 0x40, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x007ff85c, declared_size=716, range_size=716, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching10InitializeEi
; demangled: CMatching::Initialize(int)
; decoder-mode: arm
007ff85c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ff860  0c 70 d0 e5                                      ldrb r7, [r0, #0xc]
007ff864  8c 42 9f e5                                      ldr r4, [pc, #0x28c]
007ff868  7c d0 4d e2                                      sub sp, sp, #0x7c
007ff86c  00 00 57 e3                                      cmp r7, #0
007ff870  00 50 a0 e1                                      mov r5, r0
007ff874  01 60 a0 e1                                      mov r6, r1
007ff878  04 40 8f e0                                      add r4, pc, r4
007ff87c  95 00 00 1a                                      bne #0x7ffad8
007ff880  74 32 9f e5                                      ldr r3, [pc, #0x274]
007ff884  74 02 9f e5                                      ldr r0, [pc, #0x274]
007ff888  03 10 94 e7                                      ldr r1, [r4, r3]
007ff88c  70 32 9f e5                                      ldr r3, [pc, #0x270]
007ff890  00 c0 94 e7                                      ldr ip, [r4, r0]
007ff894  07 00 a0 e1                                      mov r0, r7
007ff898  03 20 94 e7                                      ldr r2, [r4, r3]
007ff89c  64 32 9f e5                                      ldr r3, [pc, #0x264]
007ff8a0  00 c0 8d e5                                      str ip, [sp]
007ff8a4  03 30 94 e7                                      ldr r3, [r4, r3]
007ff8a8  6a 56 00 eb                                      bl #0x815258
007ff8ac  58 32 9f e5                                      ldr r3, [pc, #0x258]
007ff8b0  08 60 85 e5                                      str r6, [r5, #8]
007ff8b4  0e 70 c5 e5                                      strb r7, [r5, #0xe]
007ff8b8  03 00 94 e7                                      ldr r0, [r4, r3]
007ff8bc  0d 70 c5 e5                                      strb r7, [r5, #0xd]
007ff8c0  dc fa ff eb                                      bl #0x7fe438
007ff8c4  44 32 9f e5                                      ldr r3, [pc, #0x244]
007ff8c8  03 00 94 e7                                      ldr r0, [r4, r3]
007ff8cc  d9 fa ff eb                                      bl #0x7fe438
007ff8d0  75 6b 00 eb                                      bl #0x81a6ac
007ff8d4  00 30 90 e5                                      ldr r3, [r0]
007ff8d8  0f e0 a0 e1                                      mov lr, pc
007ff8dc  08 f0 93 e5                                      ldr pc, [r3, #8]
007ff8e0  76 f5 ff eb                                      bl #0x7fcec0
007ff8e4  00 30 95 e5                                      ldr r3, [r5]
007ff8e8  05 00 a0 e1                                      mov r0, r5
007ff8ec  0f e0 a0 e1                                      mov lr, pc
007ff8f0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
007ff8f4  00 30 90 e5                                      ldr r3, [r0]
007ff8f8  0f e0 a0 e1                                      mov lr, pc
007ff8fc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007ff900  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007ff904  00 00 53 e3                                      cmp r3, #0
007ff908  6f 00 00 da                                      ble #0x7ffacc
007ff90c  00 12 9f e5                                      ldr r1, [pc, #0x200]
007ff910  00 32 9f e5                                      ldr r3, [pc, #0x200]
007ff914  00 22 9f e5                                      ldr r2, [pc, #0x200]
007ff918  14 10 8d e5                                      str r1, [sp, #0x14]
007ff91c  03 30 94 e7                                      ldr r3, [r4, r3]
007ff920  f8 11 9f e5                                      ldr r1, [pc, #0x1f8]
007ff924  10 20 8d e5                                      str r2, [sp, #0x10]
007ff928  08 30 83 e2                                      add r3, r3, #8
007ff92c  50 20 8d e2                                      add r2, sp, #0x50
007ff930  18 10 8d e5                                      str r1, [sp, #0x18]
007ff934  e8 b1 9f e5                                      ldr fp, [pc, #0x1e8]
007ff938  28 10 8d e2                                      add r1, sp, #0x28
007ff93c  08 20 8d e5                                      str r2, [sp, #8]
007ff940  1c 30 8d e5                                      str r3, [sp, #0x1c]
007ff944  20 20 82 e2                                      add r2, r2, #0x20
007ff948  20 30 81 e2                                      add r3, r1, #0x20
007ff94c  0c 10 8d e5                                      str r1, [sp, #0xc]
007ff950  05 80 a0 e1                                      mov r8, r5
007ff954  00 60 e0 e3                                      mvn r6, #0
007ff958  07 a0 a0 e1                                      mov sl, r7
007ff95c  20 20 8d e5                                      str r2, [sp, #0x20]
007ff960  24 30 8d e5                                      str r3, [sp, #0x24]
007ff964  70 30 9d e5                                      ldr r3, [sp, #0x70]
007ff968  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007ff96c  1b 1e a0 e3                                      mov r1, #0x1b0
007ff970  01 00 73 e3                                      cmn r3, #1
007ff974  20 30 a0 e3                                      mov r3, #0x20
007ff978  50 20 8d e5                                      str r2, [sp, #0x50]
007ff97c  54 30 8d e5                                      str r3, [sp, #0x54]
007ff980  00 20 a0 e3                                      mov r2, #0
007ff984  00 30 a0 e3                                      mov r3, #0
007ff988  91 07 09 e0                                      mul sb, r1, r7
007ff98c  08 00 9d e5                                      ldr r0, [sp, #8]
007ff990  f8 25 cd e1                                      strd r2, r3, [sp, #0x58]
007ff994  60 60 8d e5                                      str r6, [sp, #0x60]
007ff998  64 60 8d e5                                      str r6, [sp, #0x64]
007ff99c  68 a0 8d e5                                      str sl, [sp, #0x68]
007ff9a0  6c a0 cd e5                                      strb sl, [sp, #0x6c]
007ff9a4  01 00 00 0a                                      beq #0x7ff9b0
007ff9a8  70 60 8d e5                                      str r6, [sp, #0x70]
007ff9ac  74 55 00 eb                                      bl #0x814f84
007ff9b0  14 10 9d e5                                      ldr r1, [sp, #0x14]
007ff9b4  1b 2e a0 e3                                      mov r2, #0x1b0
007ff9b8  92 07 00 e0                                      mul r0, r2, r7
007ff9bc  01 30 94 e7                                      ldr r3, [r4, r1]
007ff9c0  15 0e 80 e2                                      add r0, r0, #0x150
007ff9c4  00 00 85 e0                                      add r0, r5, r0
007ff9c8  08 30 83 e2                                      add r3, r3, #8
007ff9cc  50 30 8d e5                                      str r3, [sp, #0x50]
007ff9d0  20 10 9d e5                                      ldr r1, [sp, #0x20]
007ff9d4  50 31 98 e5                                      ldr r3, [r8, #0x150]
007ff9d8  0f e0 a0 e1                                      mov lr, pc
007ff9dc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007ff9e0  10 10 9d e5                                      ldr r1, [sp, #0x10]
007ff9e4  0b 30 94 e7                                      ldr r3, [r4, fp]
007ff9e8  01 70 87 e2                                      add r7, r7, #1
007ff9ec  01 20 94 e7                                      ldr r2, [r4, r1]
007ff9f0  48 10 9d e5                                      ldr r1, [sp, #0x48]
007ff9f4  08 30 83 e2                                      add r3, r3, #8
007ff9f8  08 20 82 e2                                      add r2, r2, #8
007ff9fc  28 20 8d e5                                      str r2, [sp, #0x28]
007ffa00  08 20 a0 e3                                      mov r2, #8
007ffa04  50 30 8d e5                                      str r3, [sp, #0x50]
007ffa08  2c 20 8d e5                                      str r2, [sp, #0x2c]
007ffa0c  00 30 a0 e3                                      mov r3, #0
007ffa10  00 20 a0 e3                                      mov r2, #0
007ffa14  00 00 51 e3                                      cmp r1, #0
007ffa18  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007ffa1c  f0 23 cd e1                                      strd r2, r3, [sp, #0x30]
007ffa20  38 60 8d e5                                      str r6, [sp, #0x38]
007ffa24  3c 60 8d e5                                      str r6, [sp, #0x3c]
007ffa28  40 a0 8d e5                                      str sl, [sp, #0x40]
007ffa2c  44 a0 cd e5                                      strb sl, [sp, #0x44]
007ffa30  01 00 00 0a                                      beq #0x7ffa3c
007ffa34  48 a0 8d e5                                      str sl, [sp, #0x48]
007ffa38  51 55 00 eb                                      bl #0x814f84
007ffa3c  18 10 9d e5                                      ldr r1, [sp, #0x18]
007ffa40  5e 0f 89 e2                                      add r0, sb, #0x178
007ffa44  00 00 85 e0                                      add r0, r5, r0
007ffa48  01 30 94 e7                                      ldr r3, [r4, r1]
007ffa4c  24 10 9d e5                                      ldr r1, [sp, #0x24]
007ffa50  08 30 83 e2                                      add r3, r3, #8
007ffa54  28 30 8d e5                                      str r3, [sp, #0x28]
007ffa58  78 31 98 e5                                      ldr r3, [r8, #0x178]
007ffa5c  0f e0 a0 e1                                      mov lr, pc
007ffa60  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007ffa64  0b 30 94 e7                                      ldr r3, [r4, fp]
007ffa68  00 10 a0 e3                                      mov r1, #0
007ffa6c  1a 0e 89 e2                                      add r0, sb, #0x1a0
007ffa70  08 30 83 e2                                      add r3, r3, #8
007ffa74  00 00 85 e0                                      add r0, r5, r0
007ffa78  01 20 a0 e1                                      mov r2, r1
007ffa7c  28 30 8d e5                                      str r3, [sp, #0x28]
007ffa80  4c fd ff eb                                      bl #0x7fefb8
007ffa84  c8 61 88 e5                                      str r6, [r8, #0x1c8]
007ffa88  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007ffa8c  1b 8e 88 e2                                      add r8, r8, #0x1b0
007ffa90  03 00 57 e1                                      cmp r7, r3
007ffa94  b2 ff ff ba                                      blt #0x7ff964
007ffa98  00 00 53 e3                                      cmp r3, #0
007ffa9c  0a 00 00 da                                      ble #0x7ffacc
007ffaa0  00 40 a0 e3                                      mov r4, #0
007ffaa4  1b 6e a0 e3                                      mov r6, #0x1b0
007ffaa8  96 04 00 e0                                      mul r0, r6, r4
007ffaac  00 10 a0 e3                                      mov r1, #0
007ffab0  20 00 80 e2                                      add r0, r0, #0x20
007ffab4  00 00 85 e0                                      add r0, r5, r0
007ffab8  eb 4e 00 eb                                      bl #0x81366c
007ffabc  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
007ffac0  01 40 84 e2                                      add r4, r4, #1
007ffac4  03 00 54 e1                                      cmp r4, r3
007ffac8  f6 ff ff ba                                      blt #0x7ffaa8
007ffacc  00 00 a0 e3                                      mov r0, #0
007ffad0  7c d0 8d e2                                      add sp, sp, #0x7c
007ffad4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ffad8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007ffadc  00 20 a0 e3                                      mov r2, #0
007ffae0  01 15 a0 e3                                      mov r1, #0x400000
007ffae4  03 00 94 e7                                      ldr r0, [r4, r3]
007ffae8  01 10 81 e2                                      add r1, r1, #1
007ffaec  02 30 a0 e1                                      mov r3, r2
007ffaf0  c3 f9 ff eb                                      bl #0x7fe204
007ffaf4  f4 ff ff ea                                      b #0x7ffacc
; mapping-symbol data/literal pool
007ffaf8  18 52 19 00 18 11 00 00 68 48 00 00 d0 13 00 00  .byte 0x18, 0x52, 0x19, 0x00, 0x18, 0x11, 0x00, 0x00, 0x68, 0x48, 0x00, 0x00, 0xd0, 0x13, 0x00, 0x00
007ffb08  58 41 00 00 88 15 00 00 3c 34 00 00 c8 10 00 00  .byte 0x58, 0x41, 0x00, 0x00, 0x88, 0x15, 0x00, 0x00, 0x3c, 0x34, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
007ffb18  84 29 00 00 68 40 00 00 24 10 00 00 a8 10 00 00  .byte 0x84, 0x29, 0x00, 0x00, 0x68, 0x40, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x007fff9c, declared_size=160, range_size=160, mode=arm
; class-group: CMatching
; alias: _ZN9CMatchingC1Ev
; demangled: CMatching::CMatching()
; decoder-mode: arm
007fff9c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
007fffa0  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
007fffa4  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
007fffa8  03 30 8f e0                                      add r3, pc, r3
007fffac  01 10 93 e7                                      ldr r1, [r3, r1]
007fffb0  02 20 93 e7                                      ldr r2, [r3, r2]
007fffb4  70 40 2d e9                                      push {r4, r5, r6, lr}
007fffb8  08 10 81 e2                                      add r1, r1, #8
007fffbc  08 20 82 e2                                      add r2, r2, #8
007fffc0  00 40 a0 e3                                      mov r4, #0
007fffc4  00 10 80 e5                                      str r1, [r0]
007fffc8  18 20 80 e5                                      str r2, [r0, #0x18]
007fffcc  01 10 a0 e3                                      mov r1, #1
007fffd0  20 20 a0 e3                                      mov r2, #0x20
007fffd4  00 60 a0 e1                                      mov r6, r0
007fffd8  10 10 c0 e5                                      strb r1, [r0, #0x10]
007fffdc  1c 20 80 e5                                      str r2, [r0, #0x1c]
007fffe0  08 40 80 e5                                      str r4, [r0, #8]
007fffe4  0c 40 c0 e5                                      strb r4, [r0, #0xc]
007fffe8  0d 40 c0 e5                                      strb r4, [r0, #0xd]
007fffec  0e 40 c0 e5                                      strb r4, [r0, #0xe]
007ffff0  0f 40 c0 e5                                      strb r4, [r0, #0xf]
007ffff4  02 50 80 e0                                      add r5, r0, r2
007ffff8  04 00 85 e0                                      add r0, r5, r4
007ffffc  1b 4e 84 e2                                      add r4, r4, #0x1b0
00800000  3f ff ff eb                                      bl #0x7ffd04
00800004  36 0c 54 e3                                      cmp r4, #0x3600
00800008  fa ff ff 1a                                      bne #0x7ffff8
0080000c  00 30 a0 e3                                      mov r3, #0
00800010  28 26 03 e3                                      movw r2, #0x3628
00800014  02 30 86 e7                                      str r3, [r6, r2]
00800018  20 26 03 e3                                      movw r2, #0x3620
0080001c  02 30 86 e7                                      str r3, [r6, r2]
00800020  24 26 03 e3                                      movw r2, #0x3624
00800024  02 30 86 e7                                      str r3, [r6, r2]
00800028  06 00 a0 e1                                      mov r0, r6
0080002c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00800030  e8 4a 19 00 e0 11 00 00 98 46 00 00              .byte 0xe8, 0x4a, 0x19, 0x00, 0xe0, 0x11, 0x00, 0x00, 0x98, 0x46, 0x00, 0x00

; FUNCTION 0x0080003c, declared_size=160, range_size=160, mode=arm
; class-group: CMatching
; alias: _ZN9CMatchingC2Ev
; demangled: CMatching::CMatching()
; decoder-mode: arm
0080003c  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00800040  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
00800044  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
00800048  03 30 8f e0                                      add r3, pc, r3
0080004c  01 10 93 e7                                      ldr r1, [r3, r1]
00800050  02 20 93 e7                                      ldr r2, [r3, r2]
00800054  70 40 2d e9                                      push {r4, r5, r6, lr}
00800058  08 10 81 e2                                      add r1, r1, #8
0080005c  08 20 82 e2                                      add r2, r2, #8
00800060  00 40 a0 e3                                      mov r4, #0
00800064  00 10 80 e5                                      str r1, [r0]
00800068  18 20 80 e5                                      str r2, [r0, #0x18]
0080006c  01 10 a0 e3                                      mov r1, #1
00800070  20 20 a0 e3                                      mov r2, #0x20
00800074  00 60 a0 e1                                      mov r6, r0
00800078  10 10 c0 e5                                      strb r1, [r0, #0x10]
0080007c  1c 20 80 e5                                      str r2, [r0, #0x1c]
00800080  08 40 80 e5                                      str r4, [r0, #8]
00800084  0c 40 c0 e5                                      strb r4, [r0, #0xc]
00800088  0d 40 c0 e5                                      strb r4, [r0, #0xd]
0080008c  0e 40 c0 e5                                      strb r4, [r0, #0xe]
00800090  0f 40 c0 e5                                      strb r4, [r0, #0xf]
00800094  02 50 80 e0                                      add r5, r0, r2
00800098  04 00 85 e0                                      add r0, r5, r4
0080009c  1b 4e 84 e2                                      add r4, r4, #0x1b0
008000a0  17 ff ff eb                                      bl #0x7ffd04
008000a4  36 0c 54 e3                                      cmp r4, #0x3600
008000a8  fa ff ff 1a                                      bne #0x800098
008000ac  00 30 a0 e3                                      mov r3, #0
008000b0  28 26 03 e3                                      movw r2, #0x3628
008000b4  02 30 86 e7                                      str r3, [r6, r2]
008000b8  20 26 03 e3                                      movw r2, #0x3620
008000bc  02 30 86 e7                                      str r3, [r6, r2]
008000c0  24 26 03 e3                                      movw r2, #0x3624
008000c4  02 30 86 e7                                      str r3, [r6, r2]
008000c8  06 00 a0 e1                                      mov r0, r6
008000cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008000d0  48 4a 19 00 e0 11 00 00 98 46 00 00              .byte 0x48, 0x4a, 0x19, 0x00, 0xe0, 0x11, 0x00, 0x00, 0x98, 0x46, 0x00, 0x00

; FUNCTION 0x008000dc, declared_size=248, range_size=248, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching11GetRoomMaskEv
; demangled: CMatching::GetRoomMask()
; decoder-mode: arm
008000dc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008000e0  10 30 d0 e5                                      ldrb r3, [r0, #0x10]
008000e4  14 d0 4d e2                                      sub sp, sp, #0x14
008000e8  00 40 a0 e1                                      mov r4, r0
008000ec  00 00 53 e3                                      cmp r3, #0
008000f0  04 00 00 1a                                      bne #0x800108
008000f4  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
008000f8  03 50 9f e7                                      ldr r5, [pc, r3]
008000fc  05 00 a0 e1                                      mov r0, r5
00800100  14 d0 8d e2                                      add sp, sp, #0x14
00800104  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00800108  00 30 90 e5                                      ldr r3, [r0]
0080010c  84 50 93 e5                                      ldr r5, [r3, #0x84]
00800110  0f e0 a0 e1                                      mov lr, pc
00800114  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00800118  00 10 a0 e1                                      mov r1, r0
0080011c  04 00 a0 e1                                      mov r0, r4
00800120  35 ff 2f e1                                      blx r5
00800124  00 50 a0 e1                                      mov r5, r0
00800128  04 00 a0 e1                                      mov r0, r4
0080012c  eb f8 ff eb                                      bl #0x7fe4e0
00800130  00 00 50 e3                                      cmp r0, #0
00800134  15 00 00 0a                                      beq #0x800190
00800138  04 70 8d e2                                      add r7, sp, #4
0080013c  00 30 94 e5                                      ldr r3, [r4]
00800140  07 00 a0 e1                                      mov r0, r7
00800144  04 10 a0 e1                                      mov r1, r4
00800148  0f e0 a0 e1                                      mov lr, pc
0080014c  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00800150  04 60 9d e5                                      ldr r6, [sp, #4]
00800154  08 30 9d e5                                      ldr r3, [sp, #8]
00800158  03 00 56 e1                                      cmp r6, r3
0080015c  08 00 00 0a                                      beq #0x800184
00800160  04 10 96 e4                                      ldr r1, [r6], #4
00800164  00 30 94 e5                                      ldr r3, [r4]
00800168  04 00 a0 e1                                      mov r0, r4
0080016c  0f e0 a0 e1                                      mov lr, pc
00800170  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00800174  08 30 9d e5                                      ldr r3, [sp, #8]
00800178  00 50 85 e1                                      orr r5, r5, r0
0080017c  03 00 56 e1                                      cmp r6, r3
00800180  f6 ff ff 1a                                      bne #0x800160
00800184  07 00 a0 e1                                      mov r0, r7
00800188  04 fc f0 eb                                      bl #0x43f1a0
0080018c  08 00 00 ea                                      b #0x8001b4
00800190  00 30 94 e5                                      ldr r3, [r4]
00800194  04 00 a0 e1                                      mov r0, r4
00800198  84 60 93 e5                                      ldr r6, [r3, #0x84]
0080019c  0f e0 a0 e1                                      mov lr, pc
008001a0  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
008001a4  00 10 a0 e1                                      mov r1, r0
008001a8  04 00 a0 e1                                      mov r0, r4
008001ac  36 ff 2f e1                                      blx r6
008001b0  00 50 85 e1                                      orr r5, r5, r0
008001b4  14 30 9f e5                                      ldr r3, [pc, #0x14]
008001b8  03 30 8f e0                                      add r3, pc, r3
008001bc  00 50 83 e5                                      str r5, [r3]
008001c0  00 30 a0 e3                                      mov r3, #0
008001c4  10 30 c4 e5                                      strb r3, [r4, #0x10]
008001c8  cb ff ff ea                                      b #0x8000fc
; mapping-symbol data/literal pool
008001cc  b8 ef 22 00 f8 ee 22 00                          .byte 0xb8, 0xef, 0x22, 0x00, 0xf8, 0xee, 0x22, 0x00

; FUNCTION 0x008001d4, declared_size=32, range_size=32, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching12TestRoomMaskEj
; demangled: CMatching::TestRoomMask(unsigned int)
; decoder-mode: arm
008001d4  10 40 2d e9                                      push {r4, lr}
008001d8  01 40 a0 e1                                      mov r4, r1
008001dc  be ff ff eb                                      bl #0x8000dc
008001e0  04 10 00 e0                                      and r1, r0, r4
008001e4  00 00 51 e1                                      cmp r1, r0
008001e8  00 00 a0 13                                      movne r0, #0
008001ec  01 00 a0 03                                      moveq r0, #1
008001f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008002bc, declared_size=1356, range_size=1356, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching18UpdateMemberIdListEv
; demangled: CMatching::UpdateMemberIdList()
; decoder-mode: arm
008002bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008002c0  d4 d0 4d e2                                      sub sp, sp, #0xd4
008002c4  00 30 90 e5                                      ldr r3, [r0]
008002c8  00 70 a0 e1                                      mov r7, r0
008002cc  0f e0 a0 e1                                      mov lr, pc
008002d0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
008002d4  10 85 9f e5                                      ldr r8, [pc, #0x510]
008002d8  00 00 50 e3                                      cmp r0, #0
008002dc  08 80 8f e0                                      add r8, pc, r8
008002e0  01 00 00 1a                                      bne #0x8002ec
008002e4  d4 d0 8d e2                                      add sp, sp, #0xd4
008002e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008002ec  07 00 a0 e1                                      mov r0, r7
008002f0  7a f8 ff eb                                      bl #0x7fe4e0
008002f4  00 00 50 e3                                      cmp r0, #0
008002f8  29 00 00 1a                                      bne #0x8003a4
008002fc  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
00800300  00 00 53 e3                                      cmp r3, #0
00800304  f6 ff ff da                                      ble #0x8002e4
00800308  e0 a4 9f e5                                      ldr sl, [pc, #0x4e0]
0080030c  07 40 a0 e1                                      mov r4, r7
00800310  00 50 a0 e3                                      mov r5, #0
00800314  c8 90 8d e2                                      add sb, sp, #0xc8
00800318  06 00 00 ea                                      b #0x800338
0080031c  00 00 56 e3                                      cmp r6, #0
00800320  16 00 00 ba                                      blt #0x800380
00800324  c8 c1 84 e5                                      str ip, [r4, #0x1c8]
00800328  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
0080032c  03 00 55 e1                                      cmp r5, r3
00800330  1b 4e 84 e2                                      add r4, r4, #0x1b0
00800334  ea ff ff aa                                      bge #0x8002e4
00800338  70 c1 94 e5                                      ldr ip, [r4, #0x170]
0080033c  c8 61 94 e5                                      ldr r6, [r4, #0x1c8]
00800340  01 50 85 e2                                      add r5, r5, #1
00800344  0c 00 56 e1                                      cmp r6, ip
00800348  f7 ff ff 0a                                      beq #0x80032c
0080034c  00 00 5c e3                                      cmp ip, #0
00800350  f1 ff ff aa                                      bge #0x80031c
00800354  02 15 a0 e3                                      mov r1, #0x800000
00800358  07 10 81 e2                                      add r1, r1, #7
0080035c  0a 00 98 e7                                      ldr r0, [r8, sl]
00800360  09 20 a0 e1                                      mov r2, sb
00800364  04 30 a0 e3                                      mov r3, #4
00800368  c8 60 8d e5                                      str r6, [sp, #0xc8]
0080036c  a4 f7 ff eb                                      bl #0x7fe204
00800370  c8 61 94 e5                                      ldr r6, [r4, #0x1c8]
00800374  70 c1 94 e5                                      ldr ip, [r4, #0x170]
00800378  00 00 56 e3                                      cmp r6, #0
0080037c  e8 ff ff aa                                      bge #0x800324
00800380  02 15 a0 e3                                      mov r1, #0x800000
00800384  06 10 81 e2                                      add r1, r1, #6
00800388  0a 00 98 e7                                      ldr r0, [r8, sl]
0080038c  09 20 a0 e1                                      mov r2, sb
00800390  04 30 a0 e3                                      mov r3, #4
00800394  c8 c0 8d e5                                      str ip, [sp, #0xc8]
00800398  99 f7 ff eb                                      bl #0x7fe204
0080039c  70 c1 94 e5                                      ldr ip, [r4, #0x170]
008003a0  df ff ff ea                                      b #0x800324
008003a4  00 30 97 e5                                      ldr r3, [r7]
008003a8  07 00 a0 e1                                      mov r0, r7
008003ac  0f e0 a0 e1                                      mov lr, pc
008003b0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
008003b4  00 00 50 e3                                      cmp r0, #0
008003b8  cf ff ff 0a                                      beq #0x8002fc
008003bc  bc 00 8d e2                                      add r0, sp, #0xbc
008003c0  10 00 8d e5                                      str r0, [sp, #0x10]
008003c4  6a ee ff eb                                      bl #0x7fbd74
008003c8  00 20 a0 e3                                      mov r2, #0
008003cc  00 10 a0 e1                                      mov r1, r0
008003d0  10 00 9d e5                                      ldr r0, [sp, #0x10]
008003d4  aa f3 ff eb                                      bl #0x7fd284
008003d8  00 30 97 e5                                      ldr r3, [r7]
008003dc  07 00 a0 e1                                      mov r0, r7
008003e0  0f e0 a0 e1                                      mov lr, pc
008003e4  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
008003e8  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
008003ec  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
008003f0  cc 00 8d e5                                      str r0, [sp, #0xcc]
008003f4  03 00 51 e1                                      cmp r1, r3
008003f8  f6 00 00 0a                                      beq #0x8007d8
008003fc  00 00 81 e5                                      str r0, [r1]
00800400  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
00800404  04 20 82 e2                                      add r2, r2, #4
00800408  c0 20 8d e5                                      str r2, [sp, #0xc0]
0080040c  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
00800410  02 20 63 e0                                      rsb r2, r3, r2
00800414  22 21 b0 e1                                      lsrs r2, r2, #2
00800418  20 00 00 0a                                      beq #0x8004a0
0080041c  d0 13 9f e5                                      ldr r1, [pc, #0x3d0]
00800420  d0 23 9f e5                                      ldr r2, [pc, #0x3d0]
00800424  d0 03 9f e5                                      ldr r0, [pc, #0x3d0]
00800428  14 10 8d e5                                      str r1, [sp, #0x14]
0080042c  cc 13 9f e5                                      ldr r1, [pc, #0x3cc]
00800430  cc 63 9f e5                                      ldr r6, [pc, #0x3cc]
00800434  04 20 8d e5                                      str r2, [sp, #4]
00800438  90 20 8d e2                                      add r2, sp, #0x90
0080043c  08 00 8d e5                                      str r0, [sp, #8]
00800440  0c 10 8d e5                                      str r1, [sp, #0xc]
00800444  00 40 a0 e3                                      mov r4, #0
00800448  1b 5e a0 e3                                      mov r5, #0x1b0
0080044c  68 a0 8d e2                                      add sl, sp, #0x68
00800450  00 20 8d e5                                      str r2, [sp]
00800454  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
00800458  07 00 a0 e1                                      mov r0, r7
0080045c  4e f8 ff eb                                      bl #0x7fe59c
00800460  00 90 50 e2                                      subs sb, r0, #0
00800464  04 b1 a0 e1                                      lsl fp, r4, #2
00800468  06 00 00 ba                                      blt #0x800488
0080046c  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
00800470  03 00 59 e1                                      cmp sb, r3
00800474  03 00 00 aa                                      bge #0x800488
00800478  95 79 23 e0                                      mla r3, r5, sb, r7
0080047c  70 31 93 e5                                      ldr r3, [r3, #0x170]
00800480  00 00 53 e3                                      cmp r3, #0
00800484  75 00 00 ba                                      blt #0x800660
00800488  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
0080048c  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
00800490  01 40 84 e2                                      add r4, r4, #1
00800494  02 20 63 e0                                      rsb r2, r3, r2
00800498  42 01 54 e1                                      cmp r4, r2, asr #2
0080049c  ec ff ff 3a                                      blo #0x800454
008004a0  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
008004a4  00 00 53 e3                                      cmp r3, #0
008004a8  17 00 00 da                                      ble #0x80050c
008004ac  40 23 9f e5                                      ldr r2, [pc, #0x340]
008004b0  40 03 9f e5                                      ldr r0, [pc, #0x340]
008004b4  40 13 9f e5                                      ldr r1, [pc, #0x340]
008004b8  0c 20 8d e5                                      str r2, [sp, #0xc]
008004bc  3c 23 9f e5                                      ldr r2, [pc, #0x33c]
008004c0  3c 63 9f e5                                      ldr r6, [pc, #0x33c]
008004c4  18 a0 8d e2                                      add sl, sp, #0x18
008004c8  07 00 8d e8                                      stm sp, {r0, r1, r2}
008004cc  07 40 a0 e1                                      mov r4, r7
008004d0  00 50 a0 e3                                      mov r5, #0
008004d4  40 b0 8d e2                                      add fp, sp, #0x40
008004d8  0a 90 a0 e1                                      mov sb, sl
008004dc  70 11 94 e5                                      ldr r1, [r4, #0x170]
008004e0  00 00 51 e3                                      cmp r1, #0
008004e4  04 00 00 ba                                      blt #0x8004fc
008004e8  07 00 a0 e1                                      mov r0, r7
008004ec  14 f8 ff eb                                      bl #0x7fe544
008004f0  00 00 50 e3                                      cmp r0, #0
008004f4  07 00 00 0a                                      beq #0x800518
008004f8  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
008004fc  01 50 85 e2                                      add r5, r5, #1
00800500  03 00 55 e1                                      cmp r5, r3
00800504  1b 4e 84 e2                                      add r4, r4, #0x1b0
00800508  f3 ff ff ba                                      blt #0x8004dc
0080050c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00800510  22 fb f0 eb                                      bl #0x43f1a0
00800514  78 ff ff ea                                      b #0x8002fc
00800518  15 ee ff eb                                      bl #0x7fbd74
0080051c  70 11 94 e5                                      ldr r1, [r4, #0x170]
00800520  73 f0 ff eb                                      bl #0x7fc6f4
00800524  00 c0 50 e2                                      subs ip, r0, #0
00800528  f2 ff ff 1a                                      bne #0x8004f8
0080052c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00800530  60 10 9d e5                                      ldr r1, [sp, #0x60]
00800534  20 00 a0 e3                                      mov r0, #0x20
00800538  03 20 98 e7                                      ldr r2, [r8, r3]
0080053c  00 30 e0 e3                                      mvn r3, #0
00800540  03 00 51 e1                                      cmp r1, r3
00800544  08 20 82 e2                                      add r2, r2, #8
00800548  44 00 8d e5                                      str r0, [sp, #0x44]
0080054c  00 10 a0 e3                                      mov r1, #0
00800550  00 00 a0 e3                                      mov r0, #0
00800554  5c c0 cd e5                                      strb ip, [sp, #0x5c]
00800558  40 20 8d e5                                      str r2, [sp, #0x40]
0080055c  f8 04 cd e1                                      strd r0, r1, [sp, #0x48]
00800560  50 30 8d e5                                      str r3, [sp, #0x50]
00800564  54 30 8d e5                                      str r3, [sp, #0x54]
00800568  58 c0 8d e5                                      str ip, [sp, #0x58]
0080056c  02 00 00 0a                                      beq #0x80057c
00800570  0b 00 a0 e1                                      mov r0, fp
00800574  60 30 8d e5                                      str r3, [sp, #0x60]
00800578  81 52 00 eb                                      bl #0x814f84
0080057c  00 10 9d e5                                      ldr r1, [sp]
00800580  1b 0e a0 e3                                      mov r0, #0x1b0
00800584  90 05 00 e0                                      mul r0, r0, r5
00800588  01 30 98 e7                                      ldr r3, [r8, r1]
0080058c  15 0e 80 e2                                      add r0, r0, #0x150
00800590  00 00 87 e0                                      add r0, r7, r0
00800594  08 30 83 e2                                      add r3, r3, #8
00800598  40 30 8d e5                                      str r3, [sp, #0x40]
0080059c  50 31 94 e5                                      ldr r3, [r4, #0x150]
008005a0  20 10 8b e2                                      add r1, fp, #0x20
008005a4  0f e0 a0 e1                                      mov lr, pc
008005a8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008005ac  04 20 9d e5                                      ldr r2, [sp, #4]
008005b0  06 00 98 e7                                      ldr r0, [r8, r6]
008005b4  38 30 9d e5                                      ldr r3, [sp, #0x38]
008005b8  02 10 98 e7                                      ldr r1, [r8, r2]
008005bc  08 00 80 e2                                      add r0, r0, #8
008005c0  40 00 8d e5                                      str r0, [sp, #0x40]
008005c4  08 10 81 e2                                      add r1, r1, #8
008005c8  08 00 a0 e3                                      mov r0, #8
008005cc  00 20 e0 e3                                      mvn r2, #0
008005d0  00 00 53 e3                                      cmp r3, #0
008005d4  1c 00 8d e5                                      str r0, [sp, #0x1c]
008005d8  00 30 a0 e3                                      mov r3, #0
008005dc  18 10 8d e5                                      str r1, [sp, #0x18]
008005e0  00 00 a0 e3                                      mov r0, #0
008005e4  00 10 a0 e3                                      mov r1, #0
008005e8  2c 20 8d e5                                      str r2, [sp, #0x2c]
008005ec  f0 02 cd e1                                      strd r0, r1, [sp, #0x20]
008005f0  28 20 8d e5                                      str r2, [sp, #0x28]
008005f4  30 30 8d e5                                      str r3, [sp, #0x30]
008005f8  34 30 cd e5                                      strb r3, [sp, #0x34]
008005fc  02 00 00 0a                                      beq #0x80060c
00800600  09 00 a0 e1                                      mov r0, sb
00800604  38 30 8d e5                                      str r3, [sp, #0x38]
00800608  5d 52 00 eb                                      bl #0x814f84
0080060c  08 10 9d e5                                      ldr r1, [sp, #8]
00800610  1b ae a0 e3                                      mov sl, #0x1b0
00800614  9a 05 0a e0                                      mul sl, sl, r5
00800618  01 30 98 e7                                      ldr r3, [r8, r1]
0080061c  5e 0f 8a e2                                      add r0, sl, #0x178
00800620  00 00 87 e0                                      add r0, r7, r0
00800624  08 30 83 e2                                      add r3, r3, #8
00800628  18 30 8d e5                                      str r3, [sp, #0x18]
0080062c  20 10 89 e2                                      add r1, sb, #0x20
00800630  78 31 94 e5                                      ldr r3, [r4, #0x178]
00800634  0f e0 a0 e1                                      mov lr, pc
00800638  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0080063c  06 30 98 e7                                      ldr r3, [r8, r6]
00800640  1a 0e 8a e2                                      add r0, sl, #0x1a0
00800644  00 10 a0 e3                                      mov r1, #0
00800648  08 30 83 e2                                      add r3, r3, #8
0080064c  00 00 87 e0                                      add r0, r7, r0
00800650  01 20 a0 e1                                      mov r2, r1
00800654  18 30 8d e5                                      str r3, [sp, #0x18]
00800658  56 fa ff eb                                      bl #0x7fefb8
0080065c  a5 ff ff ea                                      b #0x8004f8
00800660  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
00800664  07 00 a0 e1                                      mov r0, r7
00800668  0b 10 93 e7                                      ldr r1, [r3, fp]
0080066c  b4 f7 ff eb                                      bl #0x7fe544
00800670  00 00 50 e3                                      cmp r0, #0
00800674  50 00 00 0a                                      beq #0x8007bc
00800678  14 30 9d e5                                      ldr r3, [sp, #0x14]
0080067c  b0 20 9d e5                                      ldr r2, [sp, #0xb0]
00800680  00 10 a0 e3                                      mov r1, #0
00800684  03 00 98 e7                                      ldr r0, [r8, r3]
00800688  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
0080068c  00 c0 e0 e3                                      mvn ip, #0
00800690  08 e0 80 e2                                      add lr, r0, #8
00800694  0b 30 93 e7                                      ldr r3, [r3, fp]
00800698  00 00 a0 e3                                      mov r0, #0
0080069c  f8 09 cd e1                                      strd r0, r1, [sp, #0x98]
008006a0  02 00 53 e1                                      cmp r3, r2
008006a4  20 10 a0 e3                                      mov r1, #0x20
008006a8  00 20 a0 e3                                      mov r2, #0
008006ac  a4 c0 8d e5                                      str ip, [sp, #0xa4]
008006b0  ac 20 cd e5                                      strb r2, [sp, #0xac]
008006b4  90 e0 8d e5                                      str lr, [sp, #0x90]
008006b8  94 10 8d e5                                      str r1, [sp, #0x94]
008006bc  a0 c0 8d e5                                      str ip, [sp, #0xa0]
008006c0  a8 20 8d e5                                      str r2, [sp, #0xa8]
008006c4  02 00 00 0a                                      beq #0x8006d4
008006c8  00 00 9d e5                                      ldr r0, [sp]
008006cc  b0 30 8d e5                                      str r3, [sp, #0xb0]
008006d0  2b 52 00 eb                                      bl #0x814f84
008006d4  04 20 9d e5                                      ldr r2, [sp, #4]
008006d8  95 09 00 e0                                      mul r0, r5, sb
008006dc  02 30 98 e7                                      ldr r3, [r8, r2]
008006e0  00 20 9d e5                                      ldr r2, [sp]
008006e4  08 30 83 e2                                      add r3, r3, #8
008006e8  90 30 8d e5                                      str r3, [sp, #0x90]
008006ec  00 30 87 e0                                      add r3, r7, r0
008006f0  15 0e 80 e2                                      add r0, r0, #0x150
008006f4  20 10 82 e2                                      add r1, r2, #0x20
008006f8  50 31 93 e5                                      ldr r3, [r3, #0x150]
008006fc  00 00 87 e0                                      add r0, r7, r0
00800700  0f e0 a0 e1                                      mov lr, pc
00800704  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00800708  08 30 9d e5                                      ldr r3, [sp, #8]
0080070c  06 00 98 e7                                      ldr r0, [r8, r6]
00800710  00 20 e0 e3                                      mvn r2, #0
00800714  03 10 98 e7                                      ldr r1, [r8, r3]
00800718  88 30 9d e5                                      ldr r3, [sp, #0x88]
0080071c  08 00 80 e2                                      add r0, r0, #8
00800720  90 00 8d e5                                      str r0, [sp, #0x90]
00800724  08 00 a0 e3                                      mov r0, #8
00800728  08 c0 81 e2                                      add ip, r1, #8
0080072c  00 00 53 e3                                      cmp r3, #0
00800730  6c 00 8d e5                                      str r0, [sp, #0x6c]
00800734  00 30 a0 e3                                      mov r3, #0
00800738  00 00 a0 e3                                      mov r0, #0
0080073c  00 10 a0 e3                                      mov r1, #0
00800740  f0 07 cd e1                                      strd r0, r1, [sp, #0x70]
00800744  7c 20 8d e5                                      str r2, [sp, #0x7c]
00800748  68 c0 8d e5                                      str ip, [sp, #0x68]
0080074c  78 20 8d e5                                      str r2, [sp, #0x78]
00800750  80 30 8d e5                                      str r3, [sp, #0x80]
00800754  84 30 cd e5                                      strb r3, [sp, #0x84]
00800758  02 00 00 0a                                      beq #0x800768
0080075c  0a 00 a0 e1                                      mov r0, sl
00800760  88 30 8d e5                                      str r3, [sp, #0x88]
00800764  06 52 00 eb                                      bl #0x814f84
00800768  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0080076c  95 09 09 e0                                      mul sb, r5, sb
00800770  01 30 98 e7                                      ldr r3, [r8, r1]
00800774  5e 0f 89 e2                                      add r0, sb, #0x178
00800778  00 00 87 e0                                      add r0, r7, r0
0080077c  08 30 83 e2                                      add r3, r3, #8
00800780  68 30 8d e5                                      str r3, [sp, #0x68]
00800784  09 30 87 e0                                      add r3, r7, sb
00800788  20 10 8a e2                                      add r1, sl, #0x20
0080078c  78 31 93 e5                                      ldr r3, [r3, #0x178]
00800790  0f e0 a0 e1                                      mov lr, pc
00800794  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00800798  06 30 98 e7                                      ldr r3, [r8, r6]
0080079c  1a 0e 89 e2                                      add r0, sb, #0x1a0
008007a0  00 10 a0 e3                                      mov r1, #0
008007a4  08 30 83 e2                                      add r3, r3, #8
008007a8  00 00 87 e0                                      add r0, r7, r0
008007ac  01 20 a0 e1                                      mov r2, r1
008007b0  68 30 8d e5                                      str r3, [sp, #0x68]
008007b4  ff f9 ff eb                                      bl #0x7fefb8
008007b8  32 ff ff ea                                      b #0x800488
008007bc  6c ed ff eb                                      bl #0x7fbd74
008007c0  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
008007c4  0b 10 93 e7                                      ldr r1, [r3, fp]
008007c8  c9 ef ff eb                                      bl #0x7fc6f4
008007cc  00 00 50 e3                                      cmp r0, #0
008007d0  2c ff ff 0a                                      beq #0x800488
008007d4  a7 ff ff ea                                      b #0x800678
008007d8  cc 20 8d e2                                      add r2, sp, #0xcc
008007dc  10 00 9d e5                                      ldr r0, [sp, #0x10]
008007e0  83 fe ff eb                                      bl #0x8001f4
008007e4  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
008007e8  07 ff ff ea                                      b #0x80040c
; mapping-symbol data/literal pool
008007ec  b4 47 19 00 3c 34 00 00 84 29 00 00 c8 10 00 00  .byte 0xb4, 0x47, 0x19, 0x00, 0x3c, 0x34, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
008007fc  68 40 00 00 24 10 00 00 a8 10 00 00              .byte 0x68, 0x40, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00800808, declared_size=164, range_size=164, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching15GetMemberIdListEv
; demangled: CMatching::GetMemberIdList()
; decoder-mode: arm
00800808  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080080c  00 50 a0 e3                                      mov r5, #0
00800810  00 50 80 e5                                      str r5, [r0]
00800814  04 50 80 e5                                      str r5, [r0, #4]
00800818  08 50 80 e5                                      str r5, [r0, #8]
0080081c  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
00800820  08 d0 4d e2                                      sub sp, sp, #8
00800824  00 60 a0 e1                                      mov r6, r0
00800828  05 00 52 e1                                      cmp r2, r5
0080082c  01 70 a0 e1                                      mov r7, r1
00800830  1a 00 00 da                                      ble #0x8008a0
00800834  01 40 a0 e1                                      mov r4, r1
00800838  04 80 8d e2                                      add r8, sp, #4
0080083c  08 00 00 ea                                      b #0x800864
00800840  00 30 81 e5                                      str r3, [r1]
00800844  04 30 96 e5                                      ldr r3, [r6, #4]
00800848  04 30 83 e2                                      add r3, r3, #4
0080084c  04 30 86 e5                                      str r3, [r6, #4]
00800850  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
00800854  01 50 85 e2                                      add r5, r5, #1
00800858  02 00 55 e1                                      cmp r5, r2
0080085c  1b 4e 84 e2                                      add r4, r4, #0x1b0
00800860  0e 00 00 aa                                      bge #0x8008a0
00800864  70 31 94 e5                                      ldr r3, [r4, #0x170]
00800868  00 00 53 e3                                      cmp r3, #0
0080086c  f8 ff ff ba                                      blt #0x800854
00800870  06 00 96 e9                                      ldmib r6, {r1, r2}
00800874  04 30 8d e5                                      str r3, [sp, #4]
00800878  02 00 51 e1                                      cmp r1, r2
0080087c  ef ff ff 1a                                      bne #0x800840
00800880  08 20 a0 e1                                      mov r2, r8
00800884  06 00 a0 e1                                      mov r0, r6
00800888  59 fe ff eb                                      bl #0x8001f4
0080088c  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
00800890  01 50 85 e2                                      add r5, r5, #1
00800894  1b 4e 84 e2                                      add r4, r4, #0x1b0
00800898  02 00 55 e1                                      cmp r5, r2
0080089c  f0 ff ff ba                                      blt #0x800864
008008a0  06 00 a0 e1                                      mov r0, r6
008008a4  08 d0 8d e2                                      add sp, sp, #8
008008a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008008ac, declared_size=212, range_size=212, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching9SetTeamIdEih
; demangled: CMatching::SetTeamId(int, unsigned char)
; decoder-mode: arm
008008ac  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
008008b0  2c d0 4d e2                                      sub sp, sp, #0x2c
008008b4  02 50 a0 e1                                      mov r5, r2
008008b8  00 40 a0 e1                                      mov r4, r0
008008bc  36 f7 ff eb                                      bl #0x7fe59c
008008c0  ac 60 9f e5                                      ldr r6, [pc, #0xac]
008008c4  00 70 50 e2                                      subs r7, r0, #0
008008c8  06 60 8f e0                                      add r6, pc, r6
008008cc  26 00 00 ba                                      blt #0x80096c
008008d0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
008008d4  03 00 57 e1                                      cmp r7, r3
008008d8  23 00 00 aa                                      bge #0x80096c
008008dc  94 30 9f e5                                      ldr r3, [pc, #0x94]
008008e0  20 20 9d e5                                      ldr r2, [sp, #0x20]
008008e4  00 10 e0 e3                                      mvn r1, #0
008008e8  03 30 96 e7                                      ldr r3, [r6, r3]
008008ec  02 00 55 e1                                      cmp r5, r2
008008f0  00 80 a0 e3                                      mov r8, #0
008008f4  00 20 a0 e3                                      mov r2, #0
008008f8  08 30 83 e2                                      add r3, r3, #8
008008fc  08 00 a0 e3                                      mov r0, #8
00800900  00 90 a0 e3                                      mov sb, #0
00800904  f8 80 cd e1                                      strd r8, sb, [sp, #8]
00800908  04 00 8d e5                                      str r0, [sp, #4]
0080090c  14 10 8d e5                                      str r1, [sp, #0x14]
00800910  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00800914  00 30 8d e5                                      str r3, [sp]
00800918  10 10 8d e5                                      str r1, [sp, #0x10]
0080091c  18 20 8d e5                                      str r2, [sp, #0x18]
00800920  0d 80 a0 01                                      moveq r8, sp
00800924  03 00 00 0a                                      beq #0x800938
00800928  0d 00 a0 e1                                      mov r0, sp
0080092c  0d 80 a0 e1                                      mov r8, sp
00800930  20 50 8d e5                                      str r5, [sp, #0x20]
00800934  92 51 00 eb                                      bl #0x814f84
00800938  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0080093c  1b 3e a0 e3                                      mov r3, #0x1b0
00800940  93 07 07 e0                                      mul r7, r3, r7
00800944  02 20 96 e7                                      ldr r2, [r6, r2]
00800948  07 30 84 e0                                      add r3, r4, r7
0080094c  5e 7f 87 e2                                      add r7, r7, #0x178
00800950  08 20 82 e2                                      add r2, r2, #8
00800954  00 20 8d e5                                      str r2, [sp]
00800958  07 00 84 e0                                      add r0, r4, r7
0080095c  78 31 93 e5                                      ldr r3, [r3, #0x178]
00800960  20 10 88 e2                                      add r1, r8, #0x20
00800964  0f e0 a0 e1                                      mov lr, pc
00800968  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0080096c  2c d0 8d e2                                      add sp, sp, #0x2c
00800970  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
; mapping-symbol data/literal pool
00800974  c8 41 19 00 68 40 00 00 24 10 00 00              .byte 0xc8, 0x41, 0x19, 0x00, 0x68, 0x40, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00

; FUNCTION 0x00800a68, declared_size=152, range_size=152, mode=arm
; class-group: CMatching
; alias: _ZN9CMatchingD2Ev
; demangled: CMatching::~CMatching()
; decoder-mode: arm
00800a68  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00800a6c  80 50 9f e5                                      ldr r5, [pc, #0x80]
00800a70  80 30 9f e5                                      ldr r3, [pc, #0x80]
00800a74  36 2c 80 e2                                      add r2, r0, #0x3600
00800a78  05 50 8f e0                                      add r5, pc, r5
00800a7c  03 30 95 e7                                      ldr r3, [r5, r3]
00800a80  00 40 a0 e1                                      mov r4, r0
00800a84  20 10 82 e2                                      add r1, r2, #0x20
00800a88  08 30 83 e2                                      add r3, r3, #8
00800a8c  00 30 80 e5                                      str r3, [r0]
00800a90  20 00 92 e5                                      ldr r0, [r2, #0x20]
00800a94  00 00 50 e3                                      cmp r0, #0
00800a98  05 00 00 0a                                      beq #0x800ab4
00800a9c  08 10 91 e5                                      ldr r1, [r1, #8]
00800aa0  01 10 60 e0                                      rsb r1, r0, r1
00800aa4  03 10 c1 e3                                      bic r1, r1, #3
00800aa8  80 00 51 e3                                      cmp r1, #0x80
00800aac  0e 00 00 8a                                      bhi #0x800aec
00800ab0  20 f6 02 eb                                      bl #0x8be338
00800ab4  40 30 9f e5                                      ldr r3, [pc, #0x40]
00800ab8  20 70 84 e2                                      add r7, r4, #0x20
00800abc  36 6c 87 e2                                      add r6, r7, #0x3600
00800ac0  03 30 95 e7                                      ldr r3, [r5, r3]
00800ac4  08 30 83 e2                                      add r3, r3, #8
00800ac8  18 30 84 e5                                      str r3, [r4, #0x18]
00800acc  b0 31 36 e5                                      ldr r3, [r6, #-0x1b0]!
00800ad0  06 00 a0 e1                                      mov r0, r6
00800ad4  0f e0 a0 e1                                      mov lr, pc
00800ad8  00 f0 93 e5                                      ldr pc, [r3]
00800adc  07 00 56 e1                                      cmp r6, r7
00800ae0  f9 ff ff 1a                                      bne #0x800acc
00800ae4  04 00 a0 e1                                      mov r0, r4
00800ae8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00800aec  53 3e ec eb                                      bl #0x310440
00800af0  ef ff ff ea                                      b #0x800ab4
; mapping-symbol data/literal pool
00800af4  18 40 19 00 e0 11 00 00 98 46 00 00              .byte 0x18, 0x40, 0x19, 0x00, 0xe0, 0x11, 0x00, 0x00, 0x98, 0x46, 0x00, 0x00

; FUNCTION 0x00800b00, declared_size=152, range_size=152, mode=arm
; class-group: CMatching
; alias: _ZN9CMatchingD1Ev
; demangled: CMatching::~CMatching()
; decoder-mode: arm
00800b00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00800b04  80 50 9f e5                                      ldr r5, [pc, #0x80]
00800b08  80 30 9f e5                                      ldr r3, [pc, #0x80]
00800b0c  36 2c 80 e2                                      add r2, r0, #0x3600
00800b10  05 50 8f e0                                      add r5, pc, r5
00800b14  03 30 95 e7                                      ldr r3, [r5, r3]
00800b18  00 40 a0 e1                                      mov r4, r0
00800b1c  20 10 82 e2                                      add r1, r2, #0x20
00800b20  08 30 83 e2                                      add r3, r3, #8
00800b24  00 30 80 e5                                      str r3, [r0]
00800b28  20 00 92 e5                                      ldr r0, [r2, #0x20]
00800b2c  00 00 50 e3                                      cmp r0, #0
00800b30  05 00 00 0a                                      beq #0x800b4c
00800b34  08 10 91 e5                                      ldr r1, [r1, #8]
00800b38  01 10 60 e0                                      rsb r1, r0, r1
00800b3c  03 10 c1 e3                                      bic r1, r1, #3
00800b40  80 00 51 e3                                      cmp r1, #0x80
00800b44  0e 00 00 8a                                      bhi #0x800b84
00800b48  fa f5 02 eb                                      bl #0x8be338
00800b4c  40 30 9f e5                                      ldr r3, [pc, #0x40]
00800b50  20 70 84 e2                                      add r7, r4, #0x20
00800b54  36 6c 87 e2                                      add r6, r7, #0x3600
00800b58  03 30 95 e7                                      ldr r3, [r5, r3]
00800b5c  08 30 83 e2                                      add r3, r3, #8
00800b60  18 30 84 e5                                      str r3, [r4, #0x18]
00800b64  b0 31 36 e5                                      ldr r3, [r6, #-0x1b0]!
00800b68  06 00 a0 e1                                      mov r0, r6
00800b6c  0f e0 a0 e1                                      mov lr, pc
00800b70  00 f0 93 e5                                      ldr pc, [r3]
00800b74  07 00 56 e1                                      cmp r6, r7
00800b78  f9 ff ff 1a                                      bne #0x800b64
00800b7c  04 00 a0 e1                                      mov r0, r4
00800b80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00800b84  2d 3e ec eb                                      bl #0x310440
00800b88  ef ff ff ea                                      b #0x800b4c
; mapping-symbol data/literal pool
00800b8c  80 3f 19 00 e0 11 00 00 98 46 00 00              .byte 0x80, 0x3f, 0x19, 0x00, 0xe0, 0x11, 0x00, 0x00, 0x98, 0x46, 0x00, 0x00

; FUNCTION 0x00800b98, declared_size=28, range_size=28, mode=arm
; class-group: CMatching
; alias: _ZN9CMatchingD0Ev
; demangled: CMatching::~CMatching()
; decoder-mode: arm
00800b98  10 40 2d e9                                      push {r4, lr}
00800b9c  00 40 a0 e1                                      mov r4, r0
00800ba0  d6 ff ff eb                                      bl #0x800b00
00800ba4  04 00 a0 e1                                      mov r0, r4
00800ba8  24 3e ec eb                                      bl #0x310440
00800bac  04 00 a0 e1                                      mov r0, r4
00800bb0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00800f8c, declared_size=280, range_size=280, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching3GetEv
; demangled: CMatching::Get()
; decoder-mode: arm
00800f8c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00800f90  00 41 9f e5                                      ldr r4, [pc, #0x100]
00800f94  00 51 9f e5                                      ldr r5, [pc, #0x100]
00800f98  04 40 8f e0                                      add r4, pc, r4
00800f9c  05 30 94 e7                                      ldr r3, [r4, r5]
00800fa0  00 00 93 e5                                      ldr r0, [r3]
00800fa4  00 00 50 e3                                      cmp r0, #0
00800fa8  00 00 00 0a                                      beq #0x800fb0
00800fac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00800fb0  e8 60 9f e5                                      ldr r6, [pc, #0xe8]
00800fb4  06 30 94 e7                                      ldr r3, [r4, r6]
00800fb8  00 10 93 e5                                      ldr r1, [r3]
00800fbc  00 00 51 e3                                      cmp r1, #0
00800fc0  01 20 a0 03                                      moveq r2, #1
00800fc4  00 20 83 05                                      streq r2, [r3]
00800fc8  0a 00 00 0a                                      beq #0x800ff8
00800fcc  01 00 51 e3                                      cmp r1, #1
00800fd0  08 00 00 0a                                      beq #0x800ff8
00800fd4  02 00 51 e3                                      cmp r1, #2
00800fd8  25 00 00 0a                                      beq #0x801074
00800fdc  03 00 51 e3                                      cmp r1, #3
00800fe0  18 00 00 0a                                      beq #0x801048
00800fe4  04 00 51 e3                                      cmp r1, #4
00800fe8  0c 00 00 0a                                      beq #0x801020
00800fec  05 30 94 e7                                      ldr r3, [r4, r5]
00800ff0  00 00 93 e5                                      ldr r0, [r3]
00800ff4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00800ff8  02 10 a0 e3                                      mov r1, #2
00800ffc  e8 09 0a e3                                      movw r0, #0xa9e8
00801000  5a 3d ec eb                                      bl #0x310570
00801004  00 70 a0 e1                                      mov r7, r0
00801008  3e 1b 00 eb                                      bl #0x807d08
0080100c  06 20 94 e7                                      ldr r2, [r4, r6]
00801010  05 30 94 e7                                      ldr r3, [r4, r5]
00801014  00 10 92 e5                                      ldr r1, [r2]
00801018  00 70 83 e5                                      str r7, [r3]
0080101c  ec ff ff ea                                      b #0x800fd4
00801020  02 10 a0 e3                                      mov r1, #2
00801024  08 0c 06 e3                                      movw r0, #0x6c08
00801028  50 3d ec eb                                      bl #0x310570
0080102c  01 10 a0 e3                                      mov r1, #1
00801030  00 60 a0 e1                                      mov r6, r0
00801034  68 76 00 eb                                      bl #0x81e9dc
00801038  05 30 94 e7                                      ldr r3, [r4, r5]
0080103c  06 00 a0 e1                                      mov r0, r6
00801040  00 60 83 e5                                      str r6, [r3]
00801044  d8 ff ff ea                                      b #0x800fac
00801048  02 10 a0 e3                                      mov r1, #2
0080104c  08 0c 06 e3                                      movw r0, #0x6c08
00801050  46 3d ec eb                                      bl #0x310570
00801054  00 10 a0 e3                                      mov r1, #0
00801058  00 70 a0 e1                                      mov r7, r0
0080105c  5e 76 00 eb                                      bl #0x81e9dc
00801060  06 20 94 e7                                      ldr r2, [r4, r6]
00801064  05 30 94 e7                                      ldr r3, [r4, r5]
00801068  00 10 92 e5                                      ldr r1, [r2]
0080106c  00 70 83 e5                                      str r7, [r3]
00801070  db ff ff ea                                      b #0x800fe4
00801074  b8 0b 0a e3                                      movw r0, #0xabb8
00801078  3c 3d ec eb                                      bl #0x310570
0080107c  00 70 a0 e1                                      mov r7, r0
00801080  94 ff ff eb                                      bl #0x800ed8
00801084  06 20 94 e7                                      ldr r2, [r4, r6]
00801088  05 30 94 e7                                      ldr r3, [r4, r5]
0080108c  00 10 92 e5                                      ldr r1, [r2]
00801090  00 70 83 e5                                      str r7, [r3]
00801094  d0 ff ff ea                                      b #0x800fdc
; mapping-symbol data/literal pool
00801098  f8 3a 19 00 38 43 00 00 58 4b 00 00              .byte 0xf8, 0x3a, 0x19, 0x00, 0x38, 0x43, 0x00, 0x00, 0x58, 0x4b, 0x00, 0x00

; FUNCTION 0x008010a4, declared_size=124, range_size=124, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching15WritePacketDataEiiR12NetBitStream
; demangled: CMatching::WritePacketData(int, int, NetBitStream&)
; decoder-mode: arm
008010a4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008010a8  00 c0 90 e5                                      ldr ip, [r0]
008010ac  02 80 a0 e1                                      mov r8, r2
008010b0  03 60 a0 e1                                      mov r6, r3
008010b4  01 50 a0 e1                                      mov r5, r1
008010b8  00 40 a0 e1                                      mov r4, r0
008010bc  0f e0 a0 e1                                      mov lr, pc
008010c0  a4 f0 9c e5                                      ldr pc, [ip, #0xa4]
008010c4  00 70 a0 e1                                      mov r7, r0
008010c8  af ff ff eb                                      bl #0x800f8c
008010cc  03 f5 ff eb                                      bl #0x7fe4e0
008010d0  00 10 a0 e1                                      mov r1, r0
008010d4  08 00 87 e2                                      add r0, r7, #8
008010d8  63 49 00 eb                                      bl #0x81366c
008010dc  00 30 94 e5                                      ldr r3, [r4]
008010e0  04 00 a0 e1                                      mov r0, r4
008010e4  0f e0 a0 e1                                      mov lr, pc
008010e8  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
008010ec  05 10 a0 e1                                      mov r1, r5
008010f0  08 20 a0 e1                                      mov r2, r8
008010f4  06 30 a0 e1                                      mov r3, r6
008010f8  6f 5b 00 eb                                      bl #0x817ebc
008010fc  06 10 a0 e1                                      mov r1, r6
00801100  00 70 a0 e1                                      mov r7, r0
00801104  05 20 a0 e1                                      mov r2, r5
00801108  18 00 84 e2                                      add r0, r4, #0x18
0080110c  08 30 a0 e1                                      mov r3, r8
00801110  df f5 ff eb                                      bl #0x7fe894
00801114  07 00 80 e1                                      orr r0, r0, r7
00801118  70 00 ef e6                                      uxtb r0, r0
0080111c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00801120, declared_size=2012, range_size=2012, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching13ProcessEventsEv
; demangled: CMatching::ProcessEvents()
; decoder-mode: arm
00801120  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00801124  c4 47 9f e5                                      ldr r4, [pc, #0x7c4]
00801128  c4 57 9f e5                                      ldr r5, [pc, #0x7c4]
0080112c  0c d0 4d e2                                      sub sp, sp, #0xc
00801130  04 40 8f e0                                      add r4, pc, r4
00801134  05 70 94 e7                                      ldr r7, [r4, r5]
00801138  00 60 a0 e1                                      mov r6, r0
0080113c  02 15 a0 e3                                      mov r1, #0x800000
00801140  00 20 a0 e3                                      mov r2, #0
00801144  07 00 a0 e1                                      mov r0, r7
00801148  aa f4 ff eb                                      bl #0x7fe3f8
0080114c  00 00 50 e3                                      cmp r0, #0
00801150  e2 00 00 1a                                      bne #0x8014e0
00801154  02 15 a0 e3                                      mov r1, #0x800000
00801158  01 10 81 e2                                      add r1, r1, #1
0080115c  05 00 94 e7                                      ldr r0, [r4, r5]
00801160  01 20 a0 e3                                      mov r2, #1
00801164  a3 f4 ff eb                                      bl #0x7fe3f8
00801168  00 00 50 e3                                      cmp r0, #0
0080116c  cd 00 00 1a                                      bne #0x8014a8
00801170  05 70 94 e7                                      ldr r7, [r4, r5]
00801174  02 15 a0 e3                                      mov r1, #0x800000
00801178  17 10 81 e2                                      add r1, r1, #0x17
0080117c  07 00 a0 e1                                      mov r0, r7
00801180  01 20 a0 e3                                      mov r2, #1
00801184  9b f4 ff eb                                      bl #0x7fe3f8
00801188  00 00 50 e3                                      cmp r0, #0
0080118c  bd 00 00 0a                                      beq #0x801488
00801190  60 37 9f e5                                      ldr r3, [pc, #0x760]
00801194  01 15 a0 e3                                      mov r1, #0x400000
00801198  00 20 a0 e3                                      mov r2, #0
0080119c  03 00 94 e7                                      ldr r0, [r4, r3]
008011a0  14 10 81 e2                                      add r1, r1, #0x14
008011a4  02 30 a0 e1                                      mov r3, r2
008011a8  15 f4 ff eb                                      bl #0x7fe204
008011ac  05 70 94 e7                                      ldr r7, [r4, r5]
008011b0  02 15 a0 e3                                      mov r1, #0x800000
008011b4  14 10 81 e2                                      add r1, r1, #0x14
008011b8  07 00 a0 e1                                      mov r0, r7
008011bc  01 20 a0 e3                                      mov r2, #1
008011c0  8c f4 ff eb                                      bl #0x7fe3f8
008011c4  00 00 50 e3                                      cmp r0, #0
008011c8  a6 00 00 0a                                      beq #0x801468
008011cc  24 37 9f e5                                      ldr r3, [pc, #0x724]
008011d0  01 15 a0 e3                                      mov r1, #0x400000
008011d4  00 20 a0 e3                                      mov r2, #0
008011d8  03 00 94 e7                                      ldr r0, [r4, r3]
008011dc  13 10 81 e2                                      add r1, r1, #0x13
008011e0  02 30 a0 e1                                      mov r3, r2
008011e4  06 f4 ff eb                                      bl #0x7fe204
008011e8  0c 30 d6 e5                                      ldrb r3, [r6, #0xc]
008011ec  00 00 53 e3                                      cmp r3, #0
008011f0  01 00 00 1a                                      bne #0x8011fc
008011f4  0c d0 8d e2                                      add sp, sp, #0xc
008011f8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008011fc  02 15 a0 e3                                      mov r1, #0x800000
00801200  03 10 81 e2                                      add r1, r1, #3
00801204  05 00 94 e7                                      ldr r0, [r4, r5]
00801208  01 20 a0 e3                                      mov r2, #1
0080120c  79 f4 ff eb                                      bl #0x7fe3f8
00801210  00 00 50 e3                                      cmp r0, #0
00801214  84 01 00 1a                                      bne #0x80182c
00801218  02 15 a0 e3                                      mov r1, #0x800000
0080121c  0c 10 81 e2                                      add r1, r1, #0xc
00801220  05 00 94 e7                                      ldr r0, [r4, r5]
00801224  01 20 a0 e3                                      mov r2, #1
00801228  72 f4 ff eb                                      bl #0x7fe3f8
0080122c  00 00 50 e3                                      cmp r0, #0
00801230  75 01 00 1a                                      bne #0x80180c
00801234  02 15 a0 e3                                      mov r1, #0x800000
00801238  0d 10 81 e2                                      add r1, r1, #0xd
0080123c  05 00 94 e7                                      ldr r0, [r4, r5]
00801240  01 20 a0 e3                                      mov r2, #1
00801244  6b f4 ff eb                                      bl #0x7fe3f8
00801248  00 00 50 e3                                      cmp r0, #0
0080124c  66 01 00 1a                                      bne #0x8017ec
00801250  02 15 a0 e3                                      mov r1, #0x800000
00801254  04 10 81 e2                                      add r1, r1, #4
00801258  05 00 94 e7                                      ldr r0, [r4, r5]
0080125c  01 20 a0 e3                                      mov r2, #1
00801260  64 f4 ff eb                                      bl #0x7fe3f8
00801264  00 00 50 e3                                      cmp r0, #0
00801268  50 01 00 1a                                      bne #0x8017b0
0080126c  02 15 a0 e3                                      mov r1, #0x800000
00801270  05 10 81 e2                                      add r1, r1, #5
00801274  05 00 94 e7                                      ldr r0, [r4, r5]
00801278  01 20 a0 e3                                      mov r2, #1
0080127c  5d f4 ff eb                                      bl #0x7fe3f8
00801280  00 00 50 e3                                      cmp r0, #0
00801284  3a 01 00 1a                                      bne #0x801774
00801288  02 15 a0 e3                                      mov r1, #0x800000
0080128c  09 10 81 e2                                      add r1, r1, #9
00801290  05 00 94 e7                                      ldr r0, [r4, r5]
00801294  01 20 a0 e3                                      mov r2, #1
00801298  56 f4 ff eb                                      bl #0x7fe3f8
0080129c  00 00 50 e3                                      cmp r0, #0
008012a0  20 01 00 1a                                      bne #0x801728
008012a4  05 70 94 e7                                      ldr r7, [r4, r5]
008012a8  02 15 a0 e3                                      mov r1, #0x800000
008012ac  11 10 81 e2                                      add r1, r1, #0x11
008012b0  07 00 a0 e1                                      mov r0, r7
008012b4  01 20 a0 e3                                      mov r2, #1
008012b8  4e f4 ff eb                                      bl #0x7fe3f8
008012bc  00 00 50 e3                                      cmp r0, #0
008012c0  13 01 00 1a                                      bne #0x801714
008012c4  05 70 94 e7                                      ldr r7, [r4, r5]
008012c8  02 15 a0 e3                                      mov r1, #0x800000
008012cc  10 10 81 e2                                      add r1, r1, #0x10
008012d0  07 00 a0 e1                                      mov r0, r7
008012d4  01 20 a0 e3                                      mov r2, #1
008012d8  46 f4 ff eb                                      bl #0x7fe3f8
008012dc  00 00 50 e3                                      cmp r0, #0
008012e0  06 01 00 1a                                      bne #0x801700
008012e4  02 15 a0 e3                                      mov r1, #0x800000
008012e8  12 10 81 e2                                      add r1, r1, #0x12
008012ec  05 00 94 e7                                      ldr r0, [r4, r5]
008012f0  01 20 a0 e3                                      mov r2, #1
008012f4  3f f4 ff eb                                      bl #0x7fe3f8
008012f8  00 00 50 e3                                      cmp r0, #0
008012fc  f7 00 00 1a                                      bne #0x8016e0
00801300  02 15 a0 e3                                      mov r1, #0x800000
00801304  0e 10 81 e2                                      add r1, r1, #0xe
00801308  05 00 94 e7                                      ldr r0, [r4, r5]
0080130c  01 20 a0 e3                                      mov r2, #1
00801310  38 f4 ff eb                                      bl #0x7fe3f8
00801314  00 00 50 e3                                      cmp r0, #0
00801318  e8 00 00 1a                                      bne #0x8016c0
0080131c  02 15 a0 e3                                      mov r1, #0x800000
00801320  0f 10 81 e2                                      add r1, r1, #0xf
00801324  05 00 94 e7                                      ldr r0, [r4, r5]
00801328  01 20 a0 e3                                      mov r2, #1
0080132c  31 f4 ff eb                                      bl #0x7fe3f8
00801330  00 00 50 e3                                      cmp r0, #0
00801334  d9 00 00 1a                                      bne #0x8016a0
00801338  00 30 96 e5                                      ldr r3, [r6]
0080133c  06 00 a0 e1                                      mov r0, r6
00801340  0f e0 a0 e1                                      mov lr, pc
00801344  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00801348  00 30 90 e5                                      ldr r3, [r0]
0080134c  0f e0 a0 e1                                      mov lr, pc
00801350  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00801354  00 00 50 e3                                      cmp r0, #0
00801358  bd 00 00 1a                                      bne #0x801654
0080135c  5e 3b 00 eb                                      bl #0x8100dc
00801360  03 16 a0 e3                                      mov r1, #0x300000
00801364  06 0d 80 e2                                      add r0, r0, #0x180
00801368  01 10 81 e2                                      add r1, r1, #1
0080136c  01 20 a0 e3                                      mov r2, #1
00801370  20 f4 ff eb                                      bl #0x7fe3f8
00801374  00 00 50 e3                                      cmp r0, #0
00801378  ab 00 00 1a                                      bne #0x80162c
0080137c  05 70 94 e7                                      ldr r7, [r4, r5]
00801380  02 15 a0 e3                                      mov r1, #0x800000
00801384  06 10 81 e2                                      add r1, r1, #6
00801388  07 00 a0 e1                                      mov r0, r7
0080138c  00 20 a0 e3                                      mov r2, #0
00801390  18 f4 ff eb                                      bl #0x7fe3f8
00801394  00 00 50 e3                                      cmp r0, #0
00801398  90 00 00 1a                                      bne #0x8015e0
0080139c  02 15 a0 e3                                      mov r1, #0x800000
008013a0  0b 10 81 e2                                      add r1, r1, #0xb
008013a4  05 00 94 e7                                      ldr r0, [r4, r5]
008013a8  01 20 a0 e3                                      mov r2, #1
008013ac  11 f4 ff eb                                      bl #0x7fe3f8
008013b0  00 00 50 e3                                      cmp r0, #0
008013b4  70 00 00 1a                                      bne #0x80157c
008013b8  05 50 94 e7                                      ldr r5, [r4, r5]
008013bc  02 15 a0 e3                                      mov r1, #0x800000
008013c0  07 10 81 e2                                      add r1, r1, #7
008013c4  05 00 a0 e1                                      mov r0, r5
008013c8  00 20 a0 e3                                      mov r2, #0
008013cc  09 f4 ff eb                                      bl #0x7fe3f8
008013d0  00 00 50 e3                                      cmp r0, #0
008013d4  53 00 00 1a                                      bne #0x801528
008013d8  65 ea ff eb                                      bl #0x7fbd74
008013dc  06 16 a0 e3                                      mov r1, #0x600000
008013e0  08 00 80 e2                                      add r0, r0, #8
008013e4  04 10 81 e2                                      add r1, r1, #4
008013e8  00 20 a0 e3                                      mov r2, #0
008013ec  01 f4 ff eb                                      bl #0x7fe3f8
008013f0  00 00 50 e3                                      cmp r0, #0
008013f4  7e ff ff 0a                                      beq #0x8011f4
008013f8  5d ea ff eb                                      bl #0x7fbd74
008013fc  04 50 8d e2                                      add r5, sp, #4
00801400  06 16 a0 e3                                      mov r1, #0x600000
00801404  05 20 a0 e1                                      mov r2, r5
00801408  04 30 a0 e3                                      mov r3, #4
0080140c  04 10 81 e2                                      add r1, r1, #4
00801410  08 00 80 e2                                      add r0, r0, #8
00801414  d2 f2 ff eb                                      bl #0x7fdf64
00801418  55 ea ff eb                                      bl #0x7fbd74
0080141c  06 16 a0 e3                                      mov r1, #0x600000
00801420  08 00 80 e2                                      add r0, r0, #8
00801424  04 10 81 e2                                      add r1, r1, #4
00801428  f0 f3 ff eb                                      bl #0x7fe3f0
0080142c  00 30 96 e5                                      ldr r3, [r6]
00801430  06 00 a0 e1                                      mov r0, r6
00801434  0f e0 a0 e1                                      mov lr, pc
00801438  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
0080143c  04 30 9d e5                                      ldr r3, [sp, #4]
00801440  03 00 50 e1                                      cmp r0, r3
00801444  1d 01 00 0a                                      beq #0x8018c0
00801448  a8 34 9f e5                                      ldr r3, [pc, #0x4a8]
0080144c  01 15 a0 e3                                      mov r1, #0x400000
00801450  0e 10 81 e2                                      add r1, r1, #0xe
00801454  03 00 94 e7                                      ldr r0, [r4, r3]
00801458  05 20 a0 e1                                      mov r2, r5
0080145c  04 30 a0 e3                                      mov r3, #4
00801460  67 f3 ff eb                                      bl #0x7fe204
00801464  62 ff ff ea                                      b #0x8011f4
00801468  02 15 a0 e3                                      mov r1, #0x800000
0080146c  07 00 a0 e1                                      mov r0, r7
00801470  16 10 81 e2                                      add r1, r1, #0x16
00801474  01 20 a0 e3                                      mov r2, #1
00801478  de f3 ff eb                                      bl #0x7fe3f8
0080147c  00 00 50 e3                                      cmp r0, #0
00801480  58 ff ff 0a                                      beq #0x8011e8
00801484  50 ff ff ea                                      b #0x8011cc
00801488  02 15 a0 e3                                      mov r1, #0x800000
0080148c  07 00 a0 e1                                      mov r0, r7
00801490  15 10 81 e2                                      add r1, r1, #0x15
00801494  01 20 a0 e3                                      mov r2, #1
00801498  d6 f3 ff eb                                      bl #0x7fe3f8
0080149c  00 00 50 e3                                      cmp r0, #0
008014a0  41 ff ff 0a                                      beq #0x8011ac
008014a4  39 ff ff ea                                      b #0x801190
008014a8  01 30 a0 e3                                      mov r3, #1
008014ac  0c 30 c6 e5                                      strb r3, [r6, #0xc]
008014b0  0c 54 00 eb                                      bl #0x8164e8
008014b4  16 27 00 eb                                      bl #0x80b114
008014b8  08 00 96 e5                                      ldr r0, [r6, #8]
008014bc  b3 45 00 eb                                      bl #0x812b90
008014c0  30 34 9f e5                                      ldr r3, [pc, #0x430]
008014c4  00 20 a0 e3                                      mov r2, #0
008014c8  01 15 a0 e3                                      mov r1, #0x400000
008014cc  03 00 94 e7                                      ldr r0, [r4, r3]
008014d0  01 10 81 e2                                      add r1, r1, #1
008014d4  02 30 a0 e1                                      mov r3, r2
008014d8  49 f3 ff eb                                      bl #0x7fe204
008014dc  23 ff ff ea                                      b #0x801170
008014e0  08 80 8d e2                                      add r8, sp, #8
008014e4  00 30 a0 e3                                      mov r3, #0
008014e8  04 30 28 e5                                      str r3, [r8, #-4]!
008014ec  08 20 a0 e1                                      mov r2, r8
008014f0  02 15 a0 e3                                      mov r1, #0x800000
008014f4  04 30 a0 e3                                      mov r3, #4
008014f8  07 00 a0 e1                                      mov r0, r7
008014fc  98 f2 ff eb                                      bl #0x7fdf64
00801500  f0 33 9f e5                                      ldr r3, [pc, #0x3f0]
00801504  08 20 a0 e1                                      mov r2, r8
00801508  01 15 a0 e3                                      mov r1, #0x400000
0080150c  03 00 94 e7                                      ldr r0, [r4, r3]
00801510  04 30 a0 e3                                      mov r3, #4
00801514  3a f3 ff eb                                      bl #0x7fe204
00801518  07 00 a0 e1                                      mov r0, r7
0080151c  02 15 a0 e3                                      mov r1, #0x800000
00801520  b2 f3 ff eb                                      bl #0x7fe3f0
00801524  0a ff ff ea                                      b #0x801154
00801528  04 70 8d e2                                      add r7, sp, #4
0080152c  02 15 a0 e3                                      mov r1, #0x800000
00801530  07 20 a0 e1                                      mov r2, r7
00801534  04 30 a0 e3                                      mov r3, #4
00801538  07 10 81 e2                                      add r1, r1, #7
0080153c  05 00 a0 e1                                      mov r0, r5
00801540  87 f2 ff eb                                      bl #0x7fdf64
00801544  02 15 a0 e3                                      mov r1, #0x800000
00801548  07 10 81 e2                                      add r1, r1, #7
0080154c  05 00 a0 e1                                      mov r0, r5
00801550  a6 f3 ff eb                                      bl #0x7fe3f0
00801554  06 ea ff eb                                      bl #0x7fbd74
00801558  04 10 9d e5                                      ldr r1, [sp, #4]
0080155c  64 ec ff eb                                      bl #0x7fc6f4
00801560  00 00 50 e3                                      cmp r0, #0
00801564  bd 00 00 0a                                      beq #0x801860
00801568  01 ea ff eb                                      bl #0x7fbd74
0080156c  04 10 9d e5                                      ldr r1, [sp, #4]
00801570  00 20 a0 e3                                      mov r2, #0
00801574  67 ec ff eb                                      bl #0x7fc718
00801578  96 ff ff ea                                      b #0x8013d8
0080157c  06 00 a0 e1                                      mov r0, r6
00801580  d6 f3 ff eb                                      bl #0x7fe4e0
00801584  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
00801588  00 80 a0 e1                                      mov r8, r0
0080158c  00 00 53 e3                                      cmp r3, #0
00801590  0a 00 00 da                                      ble #0x8015c0
00801594  00 70 a0 e3                                      mov r7, #0
00801598  1b ae a0 e3                                      mov sl, #0x1b0
0080159c  9a 07 00 e0                                      mul r0, sl, r7
008015a0  08 10 a0 e1                                      mov r1, r8
008015a4  20 00 80 e2                                      add r0, r0, #0x20
008015a8  00 00 86 e0                                      add r0, r6, r0
008015ac  2e 48 00 eb                                      bl #0x81366c
008015b0  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
008015b4  01 70 87 e2                                      add r7, r7, #1
008015b8  03 00 57 e1                                      cmp r7, r3
008015bc  f6 ff ff ba                                      blt #0x80159c
008015c0  30 33 9f e5                                      ldr r3, [pc, #0x330]
008015c4  00 20 a0 e3                                      mov r2, #0
008015c8  01 15 a0 e3                                      mov r1, #0x400000
008015cc  03 00 94 e7                                      ldr r0, [r4, r3]
008015d0  12 10 81 e2                                      add r1, r1, #0x12
008015d4  02 30 a0 e1                                      mov r3, r2
008015d8  09 f3 ff eb                                      bl #0x7fe204
008015dc  75 ff ff ea                                      b #0x8013b8
008015e0  04 80 8d e2                                      add r8, sp, #4
008015e4  02 15 a0 e3                                      mov r1, #0x800000
008015e8  08 20 a0 e1                                      mov r2, r8
008015ec  04 30 a0 e3                                      mov r3, #4
008015f0  06 10 81 e2                                      add r1, r1, #6
008015f4  07 00 a0 e1                                      mov r0, r7
008015f8  59 f2 ff eb                                      bl #0x7fdf64
008015fc  02 15 a0 e3                                      mov r1, #0x800000
00801600  07 00 a0 e1                                      mov r0, r7
00801604  06 10 81 e2                                      add r1, r1, #6
00801608  78 f3 ff eb                                      bl #0x7fe3f0
0080160c  e4 32 9f e5                                      ldr r3, [pc, #0x2e4]
00801610  01 15 a0 e3                                      mov r1, #0x400000
00801614  0c 10 81 e2                                      add r1, r1, #0xc
00801618  03 00 94 e7                                      ldr r0, [r4, r3]
0080161c  08 20 a0 e1                                      mov r2, r8
00801620  04 30 a0 e3                                      mov r3, #4
00801624  f6 f2 ff eb                                      bl #0x7fe204
00801628  5b ff ff ea                                      b #0x80139c
0080162c  c4 32 9f e5                                      ldr r3, [pc, #0x2c4]
00801630  00 20 a0 e3                                      mov r2, #0
00801634  01 15 a0 e3                                      mov r1, #0x400000
00801638  08 10 81 e2                                      add r1, r1, #8
0080163c  03 00 94 e7                                      ldr r0, [r4, r3]
00801640  02 30 a0 e1                                      mov r3, r2
00801644  ee f2 ff eb                                      bl #0x7fe204
00801648  51 f0 ff eb                                      bl #0x7fd794
0080164c  e6 f0 ff eb                                      bl #0x7fd9ec
00801650  49 ff ff ea                                      b #0x80137c
00801654  9c 32 9f e5                                      ldr r3, [pc, #0x29c]
00801658  00 20 a0 e3                                      mov r2, #0
0080165c  01 15 a0 e3                                      mov r1, #0x400000
00801660  03 00 94 e7                                      ldr r0, [r4, r3]
00801664  0f 10 81 e2                                      add r1, r1, #0xf
00801668  02 30 a0 e1                                      mov r3, r2
0080166c  e4 f2 ff eb                                      bl #0x7fe204
00801670  06 00 a0 e1                                      mov r0, r6
00801674  99 f3 ff eb                                      bl #0x7fe4e0
00801678  00 a0 50 e2                                      subs sl, r0, #0
0080167c  7f 00 00 0a                                      beq #0x801880
00801680  00 30 96 e5                                      ldr r3, [r6]
00801684  06 00 a0 e1                                      mov r0, r6
00801688  0f e0 a0 e1                                      mov lr, pc
0080168c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00801690  00 30 90 e5                                      ldr r3, [r0]
00801694  0f e0 a0 e1                                      mov lr, pc
00801698  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0080169c  2e ff ff ea                                      b #0x80135c
008016a0  50 32 9f e5                                      ldr r3, [pc, #0x250]
008016a4  00 20 a0 e3                                      mov r2, #0
008016a8  01 15 a0 e3                                      mov r1, #0x400000
008016ac  03 00 94 e7                                      ldr r0, [r4, r3]
008016b0  04 10 81 e2                                      add r1, r1, #4
008016b4  02 30 a0 e1                                      mov r3, r2
008016b8  d1 f2 ff eb                                      bl #0x7fe204
008016bc  1d ff ff ea                                      b #0x801338
008016c0  30 32 9f e5                                      ldr r3, [pc, #0x230]
008016c4  00 20 a0 e3                                      mov r2, #0
008016c8  01 15 a0 e3                                      mov r1, #0x400000
008016cc  03 00 94 e7                                      ldr r0, [r4, r3]
008016d0  03 10 81 e2                                      add r1, r1, #3
008016d4  02 30 a0 e1                                      mov r3, r2
008016d8  c9 f2 ff eb                                      bl #0x7fe204
008016dc  0e ff ff ea                                      b #0x80131c
008016e0  10 32 9f e5                                      ldr r3, [pc, #0x210]
008016e4  00 20 a0 e3                                      mov r2, #0
008016e8  01 15 a0 e3                                      mov r1, #0x400000
008016ec  03 00 94 e7                                      ldr r0, [r4, r3]
008016f0  07 10 81 e2                                      add r1, r1, #7
008016f4  02 30 a0 e1                                      mov r3, r2
008016f8  c1 f2 ff eb                                      bl #0x7fe204
008016fc  ff fe ff ea                                      b #0x801300
00801700  02 15 a0 e3                                      mov r1, #0x800000
00801704  07 00 a0 e1                                      mov r0, r7
00801708  10 10 81 e2                                      add r1, r1, #0x10
0080170c  37 f3 ff eb                                      bl #0x7fe3f0
00801710  f3 fe ff ea                                      b #0x8012e4
00801714  02 15 a0 e3                                      mov r1, #0x800000
00801718  07 00 a0 e1                                      mov r0, r7
0080171c  11 10 81 e2                                      add r1, r1, #0x11
00801720  32 f3 ff eb                                      bl #0x7fe3f0
00801724  e6 fe ff ea                                      b #0x8012c4
00801728  6b 3a 00 eb                                      bl #0x8100dc
0080172c  f5 3e 00 eb                                      bl #0x811308
00801730  8f e9 ff eb                                      bl #0x7fbd74
00801734  c6 e9 ff eb                                      bl #0x7fbe54
00801738  9f 26 00 eb                                      bl #0x80b1bc
0080173c  01 10 a0 e3                                      mov r1, #1
00801740  d2 25 00 eb                                      bl #0x80ae90
00801744  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
00801748  00 20 a0 e3                                      mov r2, #0
0080174c  01 15 a0 e3                                      mov r1, #0x400000
00801750  03 00 94 e7                                      ldr r0, [r4, r3]
00801754  0b 10 81 e2                                      add r1, r1, #0xb
00801758  02 30 a0 e1                                      mov r3, r2
0080175c  a8 f2 ff eb                                      bl #0x7fe204
00801760  0b f0 ff eb                                      bl #0x7fd794
00801764  03 10 a0 e3                                      mov r1, #3
00801768  00 20 a0 e3                                      mov r2, #0
0080176c  6a ef ff eb                                      bl #0x7fd51c
00801770  cb fe ff ea                                      b #0x8012a4
00801774  58 3a 00 eb                                      bl #0x8100dc
00801778  e2 3e 00 eb                                      bl #0x811308
0080177c  7c e9 ff eb                                      bl #0x7fbd74
00801780  b3 e9 ff eb                                      bl #0x7fbe54
00801784  8c 26 00 eb                                      bl #0x80b1bc
00801788  01 10 a0 e3                                      mov r1, #1
0080178c  bf 25 00 eb                                      bl #0x80ae90
00801790  60 31 9f e5                                      ldr r3, [pc, #0x160]
00801794  00 20 a0 e3                                      mov r2, #0
00801798  01 15 a0 e3                                      mov r1, #0x400000
0080179c  03 00 94 e7                                      ldr r0, [r4, r3]
008017a0  0a 10 81 e2                                      add r1, r1, #0xa
008017a4  02 30 a0 e1                                      mov r3, r2
008017a8  95 f2 ff eb                                      bl #0x7fe204
008017ac  b5 fe ff ea                                      b #0x801288
008017b0  49 3a 00 eb                                      bl #0x8100dc
008017b4  d3 3e 00 eb                                      bl #0x811308
008017b8  6d e9 ff eb                                      bl #0x7fbd74
008017bc  a4 e9 ff eb                                      bl #0x7fbe54
008017c0  7d 26 00 eb                                      bl #0x80b1bc
008017c4  01 10 a0 e3                                      mov r1, #1
008017c8  b0 25 00 eb                                      bl #0x80ae90
008017cc  24 31 9f e5                                      ldr r3, [pc, #0x124]
008017d0  00 20 a0 e3                                      mov r2, #0
008017d4  01 15 a0 e3                                      mov r1, #0x400000
008017d8  03 00 94 e7                                      ldr r0, [r4, r3]
008017dc  09 10 81 e2                                      add r1, r1, #9
008017e0  02 30 a0 e1                                      mov r3, r2
008017e4  86 f2 ff eb                                      bl #0x7fe204
008017e8  9f fe ff ea                                      b #0x80126c
008017ec  04 31 9f e5                                      ldr r3, [pc, #0x104]
008017f0  00 20 a0 e3                                      mov r2, #0
008017f4  01 15 a0 e3                                      mov r1, #0x400000
008017f8  03 00 94 e7                                      ldr r0, [r4, r3]
008017fc  11 10 81 e2                                      add r1, r1, #0x11
00801800  02 30 a0 e1                                      mov r3, r2
00801804  7e f2 ff eb                                      bl #0x7fe204
00801808  90 fe ff ea                                      b #0x801250
0080180c  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
00801810  00 20 a0 e3                                      mov r2, #0
00801814  01 15 a0 e3                                      mov r1, #0x400000
00801818  03 00 94 e7                                      ldr r0, [r4, r3]
0080181c  10 10 81 e2                                      add r1, r1, #0x10
00801820  02 30 a0 e1                                      mov r3, r2
00801824  76 f2 ff eb                                      bl #0x7fe204
00801828  81 fe ff ea                                      b #0x801234
0080182c  2a 3a 00 eb                                      bl #0x8100dc
00801830  00 30 96 e5                                      ldr r3, [r6]
00801834  00 70 a0 e1                                      mov r7, r0
00801838  06 00 a0 e1                                      mov r0, r6
0080183c  0f e0 a0 e1                                      mov lr, pc
00801840  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00801844  00 20 a0 e3                                      mov r2, #0
00801848  00 10 a0 e1                                      mov r1, r0
0080184c  07 00 a0 e1                                      mov r0, r7
00801850  20 40 00 eb                                      bl #0x8118d8
00801854  ce ef ff eb                                      bl #0x7fd794
00801858  63 f0 ff eb                                      bl #0x7fd9ec
0080185c  6d fe ff ea                                      b #0x801218
00801860  90 30 9f e5                                      ldr r3, [pc, #0x90]
00801864  01 15 a0 e3                                      mov r1, #0x400000
00801868  0d 10 81 e2                                      add r1, r1, #0xd
0080186c  03 00 94 e7                                      ldr r0, [r4, r3]
00801870  07 20 a0 e1                                      mov r2, r7
00801874  04 30 a0 e3                                      mov r3, #4
00801878  61 f2 ff eb                                      bl #0x7fe204
0080187c  d5 fe ff ea                                      b #0x8013d8
00801880  c1 fd ff eb                                      bl #0x800f8c
00801884  00 30 90 e5                                      ldr r3, [r0]
00801888  0f e0 a0 e1                                      mov lr, pc
0080188c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00801890  00 70 a0 e1                                      mov r7, r0
00801894  10 3a 00 eb                                      bl #0x8100dc
00801898  00 80 a0 e1                                      mov r8, r0
0080189c  0e 3a 00 eb                                      bl #0x8100dc
008018a0  0a 20 a0 e1                                      mov r2, sl
008018a4  70 11 90 e5                                      ldr r1, [r0, #0x170]
008018a8  08 00 a0 e1                                      mov r0, r8
008018ac  4b 3a 00 eb                                      bl #0x8101e0
008018b0  a0 31 90 e5                                      ldr r3, [r0, #0x1a0]
008018b4  03 00 57 e1                                      cmp r7, r3
008018b8  a7 fe ff 1a                                      bne #0x80135c
008018bc  6f ff ff ea                                      b #0x801680
008018c0  30 30 9f e5                                      ldr r3, [pc, #0x30]
008018c4  01 15 a0 e3                                      mov r1, #0x400000
008018c8  05 20 a0 e1                                      mov r2, r5
008018cc  03 00 94 e7                                      ldr r0, [r4, r3]
008018d0  0a 10 81 e2                                      add r1, r1, #0xa
008018d4  04 30 a0 e3                                      mov r3, #4
008018d8  49 f2 ff eb                                      bl #0x7fe204
008018dc  ac ef ff eb                                      bl #0x7fd794
008018e0  06 10 a0 e3                                      mov r1, #6
008018e4  00 20 a0 e3                                      mov r2, #0
008018e8  0b ef ff eb                                      bl #0x7fd51c
008018ec  40 fe ff ea                                      b #0x8011f4
; mapping-symbol data/literal pool
008018f0  60 39 19 00 3c 34 00 00 88 15 00 00              .byte 0x60, 0x39, 0x19, 0x00, 0x3c, 0x34, 0x00, 0x00, 0x88, 0x15, 0x00, 0x00

; FUNCTION 0x008018fc, declared_size=116, range_size=116, mode=arm
; class-group: CMatching
; alias: _ZN9CMatching6UpdateEv
; demangled: CMatching::Update()
; decoder-mode: arm
008018fc  10 40 2d e9                                      push {r4, lr}
00801900  00 40 a0 e1                                      mov r4, r0
00801904  05 fe ff eb                                      bl #0x801120
00801908  0c 30 d4 e5                                      ldrb r3, [r4, #0xc]
0080190c  00 00 53 e3                                      cmp r3, #0
00801910  12 00 00 0a                                      beq #0x801960
00801914  28 26 00 eb                                      bl #0x80b1bc
00801918  97 23 00 eb                                      bl #0x80a77c
0080191c  14 e9 ff eb                                      bl #0x7fbd74
00801920  00 30 90 e5                                      ldr r3, [r0]
00801924  0f e0 a0 e1                                      mov lr, pc
00801928  08 f0 93 e5                                      ldr pc, [r3, #8]
0080192c  ea 39 00 eb                                      bl #0x8100dc
00801930  00 10 a0 e3                                      mov r1, #0
00801934  00 30 90 e5                                      ldr r3, [r0]
00801938  0f e0 a0 e1                                      mov lr, pc
0080193c  08 f0 93 e5                                      ldr pc, [r3, #8]
00801940  59 63 00 eb                                      bl #0x81a6ac
00801944  00 30 90 e5                                      ldr r3, [r0]
00801948  0f e0 a0 e1                                      mov lr, pc
0080194c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00801950  00 30 94 e5                                      ldr r3, [r4]
00801954  04 00 a0 e1                                      mov r0, r4
00801958  0f e0 a0 e1                                      mov lr, pc
0080195c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00801960  01 30 a0 e3                                      mov r3, #1
00801964  10 30 c4 e5                                      strb r3, [r4, #0x10]
00801968  00 00 a0 e3                                      mov r0, #0
0080196c  10 80 bd e8                                      pop {r4, pc}
