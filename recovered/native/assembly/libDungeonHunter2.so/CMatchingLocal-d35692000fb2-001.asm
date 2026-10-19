; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00801b08, declared_size=12, range_size=12, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal12IsRoomClosedEv
; demangled: CMatchingLocal::IsRoomClosed()
; decoder-mode: arm
00801b08  6d 3b 04 e3                                      movw r3, #0x4b6d
00801b0c  03 00 d0 e7                                      ldrb r0, [r0, r3]
00801b10  1e ff 2f e1                                      bx lr

; FUNCTION 0x00801b14, declared_size=28, range_size=28, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal12IsRoomHiddenEv
; demangled: CMatchingLocal::IsRoomHidden()
; decoder-mode: arm
00801b14  8d 3b 04 e3                                      movw r3, #0x4b8d
00801b18  03 30 d0 e7                                      ldrb r3, [r0, r3]
00801b1c  00 00 53 e3                                      cmp r3, #0
00801b20  6d 3b 04 03                                      movweq r3, #0x4b6d
00801b24  01 00 a0 13                                      movne r0, #1
00801b28  03 00 d0 07                                      ldrbeq r0, [r0, r3]
00801b2c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00801b30, declared_size=12, range_size=12, mode=arm
; class-group: CMatchingLocal
; alias: _ZNK14CMatchingLocal11GetMemberIdEv
; demangled: CMatchingLocal::GetMemberId() const
; decoder-mode: arm
00801b30  38 36 03 e3                                      movw r3, #0x3638
00801b34  03 00 90 e7                                      ldr r0, [r0, r3]
00801b38  1e ff 2f e1                                      bx lr

; FUNCTION 0x00801b3c, declared_size=12, range_size=12, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal11SetMemberIdEi
; demangled: CMatchingLocal::SetMemberId(int)
; decoder-mode: arm
00801b3c  38 36 03 e3                                      movw r3, #0x3638
00801b40  03 10 80 e7                                      str r1, [r0, r3]
00801b44  1e ff 2f e1                                      bx lr

; FUNCTION 0x00801b48, declared_size=12, range_size=12, mode=arm
; class-group: CMatchingLocal
; alias: _ZNK14CMatchingLocal17GetServerMemberIdEv
; demangled: CMatchingLocal::GetServerMemberId() const
; decoder-mode: arm
00801b48  3c 36 03 e3                                      movw r3, #0x363c
00801b4c  03 00 90 e7                                      ldr r0, [r0, r3]
00801b50  1e ff 2f e1                                      bx lr

; FUNCTION 0x00801b54, declared_size=12, range_size=12, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal17GetRoomAttributesEv
; demangled: CMatchingLocal::GetRoomAttributes()
; decoder-mode: arm
00801b54  46 0c 80 e2                                      add r0, r0, #0x4600
00801b58  60 00 80 e2                                      add r0, r0, #0x60
00801b5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00801fb0, declared_size=56, range_size=56, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal14SendInvitationEPKcS1_b
; demangled: CMatchingLocal::SendInvitation(char const*, char const*, bool)
; decoder-mode: arm
00801fb0  28 c0 9f e5                                      ldr ip, [pc, #0x28]
00801fb4  28 30 9f e5                                      ldr r3, [pc, #0x28]
00801fb8  00 20 a0 e3                                      mov r2, #0
00801fbc  0c c0 8f e0                                      add ip, pc, ip
00801fc0  02 15 a0 e3                                      mov r1, #0x800000
00801fc4  03 00 9c e7                                      ldr r0, [ip, r3]
00801fc8  10 40 2d e9                                      push {r4, lr}
00801fcc  15 10 81 e2                                      add r1, r1, #0x15
00801fd0  02 30 a0 e1                                      mov r3, r2
00801fd4  8a f0 ff eb                                      bl #0x7fe204
00801fd8  00 00 a0 e3                                      mov r0, #0
00801fdc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00801fe0  d4 2a 19 00 3c 34 00 00                          .byte 0xd4, 0x2a, 0x19, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x00801fe8, declared_size=56, range_size=56, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal17ReceiveInvitationEv
; demangled: CMatchingLocal::ReceiveInvitation()
; decoder-mode: arm
00801fe8  28 c0 9f e5                                      ldr ip, [pc, #0x28]
00801fec  28 30 9f e5                                      ldr r3, [pc, #0x28]
00801ff0  00 20 a0 e3                                      mov r2, #0
00801ff4  0c c0 8f e0                                      add ip, pc, ip
00801ff8  02 15 a0 e3                                      mov r1, #0x800000
00801ffc  03 00 9c e7                                      ldr r0, [ip, r3]
00802000  10 40 2d e9                                      push {r4, lr}
00802004  17 10 81 e2                                      add r1, r1, #0x17
00802008  02 30 a0 e1                                      mov r3, r2
0080200c  7c f0 ff eb                                      bl #0x7fe204
00802010  00 00 a0 e3                                      mov r0, #0
00802014  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00802018  9c 2a 19 00 3c 34 00 00                          .byte 0x9c, 0x2a, 0x19, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x00805664, declared_size=28, range_size=28, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal13GetMemberMaskEi
; demangled: CMatchingLocal::GetMemberMask(int)
; decoder-mode: arm
00805664  00 00 51 e3                                      cmp r1, #0
00805668  01 10 41 a2                                      subge r1, r1, #1
0080566c  21 12 a0 a1                                      lsrge r1, r1, #4
00805670  01 00 a0 a3                                      movge r0, #1
00805674  00 00 a0 b3                                      movlt r0, #0
00805678  10 01 a0 a1                                      lslge r0, r0, r1
0080567c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00805680, declared_size=20, range_size=20, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal14GetFriendsListEb
; demangled: CMatchingLocal::GetFriendsList(bool)
; decoder-mode: arm
00805680  00 20 a0 e3                                      mov r2, #0
00805684  08 20 80 e5                                      str r2, [r0, #8]
00805688  00 20 80 e5                                      str r2, [r0]
0080568c  04 20 80 e5                                      str r2, [r0, #4]
00805690  1e ff 2f e1                                      bx lr

; FUNCTION 0x00805694, declared_size=12, range_size=12, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal19GetInvitationRoomIdEv
; demangled: CMatchingLocal::GetInvitationRoomId()
; decoder-mode: arm
00805694  00 00 a0 e3                                      mov r0, #0
00805698  00 10 a0 e3                                      mov r1, #0
0080569c  1e ff 2f e1                                      bx lr

; FUNCTION 0x008056a0, declared_size=32, range_size=32, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal16GetTransportTypeE14tPROTOCOL_TYPE
; demangled: CMatchingLocal::GetTransportType(tPROTOCOL_TYPE)
; decoder-mode: arm
008056a0  02 00 51 e3                                      cmp r1, #2
008056a4  00 00 a0 83                                      movhi r0, #0
008056a8  1e ff 2f 81                                      bxhi lr
008056ac  08 30 9f e5                                      ldr r3, [pc, #8]
008056b0  03 30 8f e0                                      add r3, pc, r3
008056b4  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
008056b8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
008056bc  4c 6b 10 00                                      .byte 0x4c, 0x6b, 0x10, 0x00

; FUNCTION 0x008057f0, declared_size=108, range_size=108, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal17ProcessLostPacketEii
; demangled: CMatchingLocal::ProcessLostPacket(int, int)
; decoder-mode: arm
008057f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008057f4  00 60 a0 e1                                      mov r6, r0
008057f8  01 80 a0 e1                                      mov r8, r1
008057fc  02 70 a0 e1                                      mov r7, r2
00805800  5f e5 ff eb                                      bl #0x7fed84
00805804  4a 0c 86 e2                                      add r0, r6, #0x4a00
00805808  20 00 80 e2                                      add r0, r0, #0x20
0080580c  08 10 a0 e1                                      mov r1, r8
00805810  07 20 a0 e1                                      mov r2, r7
00805814  d6 3b 00 eb                                      bl #0x814774
00805818  4b 5c 86 e2                                      add r5, r6, #0x4b00
0080581c  e0 50 85 e2                                      add r5, r5, #0xe0
00805820  00 40 a0 e3                                      mov r4, #0
00805824  66 af a0 e3                                      mov sl, #0x198
00805828  9a 04 00 e0                                      mul r0, sl, r4
0080582c  98 31 95 e4                                      ldr r3, [r5], #0x198
00805830  4b 0c 80 e2                                      add r0, r0, #0x4b00
00805834  e0 00 80 e2                                      add r0, r0, #0xe0
00805838  01 40 84 e2                                      add r4, r4, #1
0080583c  00 00 86 e0                                      add r0, r6, r0
00805840  08 10 a0 e1                                      mov r1, r8
00805844  07 20 a0 e1                                      mov r2, r7
00805848  0f e0 a0 e1                                      mov lr, pc
0080584c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00805850  20 00 54 e3                                      cmp r4, #0x20
00805854  f3 ff ff 1a                                      bne #0x805828
00805858  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0080585c, declared_size=108, range_size=108, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal25ProcessAcknowledgedPacketEii
; demangled: CMatchingLocal::ProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
0080585c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00805860  00 60 a0 e1                                      mov r6, r0
00805864  01 80 a0 e1                                      mov r8, r1
00805868  02 70 a0 e1                                      mov r7, r2
0080586c  25 e5 ff eb                                      bl #0x7fed08
00805870  4a 0c 86 e2                                      add r0, r6, #0x4a00
00805874  20 00 80 e2                                      add r0, r0, #0x20
00805878  08 10 a0 e1                                      mov r1, r8
0080587c  07 20 a0 e1                                      mov r2, r7
00805880  28 3d 00 eb                                      bl #0x814d28
00805884  4b 5c 86 e2                                      add r5, r6, #0x4b00
00805888  e0 50 85 e2                                      add r5, r5, #0xe0
0080588c  00 40 a0 e3                                      mov r4, #0
00805890  66 af a0 e3                                      mov sl, #0x198
00805894  9a 04 00 e0                                      mul r0, sl, r4
00805898  98 31 95 e4                                      ldr r3, [r5], #0x198
0080589c  4b 0c 80 e2                                      add r0, r0, #0x4b00
008058a0  e0 00 80 e2                                      add r0, r0, #0xe0
008058a4  01 40 84 e2                                      add r4, r4, #1
008058a8  00 00 86 e0                                      add r0, r6, r0
008058ac  08 10 a0 e1                                      mov r1, r8
008058b0  07 20 a0 e1                                      mov r2, r7
008058b4  0f e0 a0 e1                                      mov lr, pc
008058b8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
008058bc  20 00 54 e3                                      cmp r4, #0x20
008058c0  f3 ff ff 1a                                      bne #0x805894
008058c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00805998, declared_size=96, range_size=96, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal26ProcessChangeServerMessageEiR12NetBitStream
; demangled: CMatchingLocal::ProcessChangeServerMessage(int, NetBitStream&)
; decoder-mode: arm
00805998  70 40 2d e9                                      push {r4, r5, r6, lr}
0080599c  08 d0 4d e2                                      sub sp, sp, #8
008059a0  04 50 8d e2                                      add r5, sp, #4
008059a4  00 60 a0 e1                                      mov r6, r0
008059a8  05 10 a0 e1                                      mov r1, r5
008059ac  02 00 a0 e1                                      mov r0, r2
008059b0  04 20 a0 e3                                      mov r2, #4
008059b4  9b 24 00 eb                                      bl #0x80ec28
008059b8  04 20 9d e5                                      ldr r2, [sp, #4]
008059bc  3c 36 03 e3                                      movw r3, #0x363c
008059c0  28 40 9f e5                                      ldr r4, [pc, #0x28]
008059c4  03 20 86 e7                                      str r2, [r6, r3]
008059c8  24 30 9f e5                                      ldr r3, [pc, #0x24]
008059cc  04 40 8f e0                                      add r4, pc, r4
008059d0  02 15 a0 e3                                      mov r1, #0x800000
008059d4  03 00 94 e7                                      ldr r0, [r4, r3]
008059d8  0b 10 81 e2                                      add r1, r1, #0xb
008059dc  05 20 a0 e1                                      mov r2, r5
008059e0  04 30 a0 e3                                      mov r3, #4
008059e4  06 e2 ff eb                                      bl #0x7fe204
008059e8  08 d0 8d e2                                      add sp, sp, #8
008059ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008059f0  c4 f0 18 00 3c 34 00 00                          .byte 0xc4, 0xf0, 0x18, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x00805b14, declared_size=240, range_size=240, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal14ReadPacketDataEiiR12NetBitStream
; demangled: CMatchingLocal::ReadPacketData(int, int, NetBitStream&)
; decoder-mode: arm
00805b14  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00805b18  0c d0 4d e2                                      sub sp, sp, #0xc
00805b1c  00 60 a0 e1                                      mov r6, r0
00805b20  01 80 a0 e1                                      mov r8, r1
00805b24  03 70 a0 e1                                      mov r7, r3
00805b28  b9 e3 ff eb                                      bl #0x7fea14
00805b2c  38 36 03 e3                                      movw r3, #0x3638
00805b30  03 30 96 e7                                      ldr r3, [r6, r3]
00805b34  4a 0c 86 e2                                      add r0, r6, #0x4a00
00805b38  20 00 80 e2                                      add r0, r0, #0x20
00805b3c  00 00 53 e3                                      cmp r3, #0
00805b40  01 10 a0 b3                                      movlt r1, #1
00805b44  03 00 00 ba                                      blt #0x805b58
00805b48  3c 26 03 e3                                      movw r2, #0x363c
00805b4c  02 10 96 e7                                      ldr r1, [r6, r2]
00805b50  01 10 53 e0                                      subs r1, r3, r1
00805b54  01 10 a0 13                                      movne r1, #1
00805b58  08 30 a0 e1                                      mov r3, r8
00805b5c  00 c0 a0 e3                                      mov ip, #0
00805b60  07 20 a0 e1                                      mov r2, r7
00805b64  00 c0 8d e5                                      str ip, [sp]
00805b68  bd 35 00 eb                                      bl #0x813264
00805b6c  38 36 03 e3                                      movw r3, #0x3638
00805b70  03 30 96 e7                                      ldr r3, [r6, r3]
00805b74  00 00 53 e3                                      cmp r3, #0
00805b78  03 00 00 ba                                      blt #0x805b8c
00805b7c  3c 26 03 e3                                      movw r2, #0x363c
00805b80  02 20 96 e7                                      ldr r2, [r6, r2]
00805b84  02 00 53 e1                                      cmp r3, r2
00805b88  18 00 00 0a                                      beq #0x805bf0
00805b8c  7e 0c 86 e2                                      add r0, r6, #0x7e00
00805b90  e0 00 80 e2                                      add r0, r0, #0xe0
00805b94  07 10 a0 e1                                      mov r1, r7
00805b98  08 20 a0 e1                                      mov r2, r8
00805b9c  00 30 e0 e3                                      mvn r3, #0
00805ba0  af ff ff eb                                      bl #0x805a64
00805ba4  4b 5c 86 e2                                      add r5, r6, #0x4b00
00805ba8  e0 50 85 e2                                      add r5, r5, #0xe0
00805bac  00 40 a0 e3                                      mov r4, #0
00805bb0  66 af a0 e3                                      mov sl, #0x198
00805bb4  9a 04 00 e0                                      mul r0, sl, r4
00805bb8  98 c1 95 e4                                      ldr ip, [r5], #0x198
00805bbc  4b 0c 80 e2                                      add r0, r0, #0x4b00
00805bc0  e0 00 80 e2                                      add r0, r0, #0xe0
00805bc4  01 40 84 e2                                      add r4, r4, #1
00805bc8  00 00 86 e0                                      add r0, r6, r0
00805bcc  07 10 a0 e1                                      mov r1, r7
00805bd0  08 20 a0 e1                                      mov r2, r8
00805bd4  00 30 a0 e3                                      mov r3, #0
00805bd8  0f e0 a0 e1                                      mov lr, pc
00805bdc  14 f0 9c e5                                      ldr pc, [ip, #0x14]
00805be0  20 00 54 e3                                      cmp r4, #0x20
00805be4  f2 ff ff 1a                                      bne #0x805bb4
00805be8  0c d0 8d e2                                      add sp, sp, #0xc
00805bec  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00805bf0  7e 0c 86 e2                                      add r0, r6, #0x7e00
00805bf4  07 10 a0 e1                                      mov r1, r7
00805bf8  e0 00 80 e2                                      add r0, r0, #0xe0
00805bfc  7d ff ff eb                                      bl #0x8059f8
00805c00  e7 ff ff ea                                      b #0x805ba4

; FUNCTION 0x00805c04, declared_size=24, range_size=24, mode=arm
; class-group: CMatchingLocal
; alias: _ZNK14CMatchingLocal14GetMemberCountEv
; demangled: CMatchingLocal::GetMemberCount() const
; decoder-mode: arm
00805c04  10 40 2d e9                                      push {r4, lr}
00805c08  59 d8 ff eb                                      bl #0x7fbd74
00805c0c  00 10 a0 e3                                      mov r1, #0
00805c10  9f d8 ff eb                                      bl #0x7fbe94
00805c14  01 00 80 e2                                      add r0, r0, #1
00805c18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00805c1c, declared_size=172, range_size=172, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal8IsInRoomEi
; demangled: CMatchingLocal::IsInRoom(int)
; decoder-mode: arm
00805c1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00805c20  38 66 03 e3                                      movw r6, #0x3638
00805c24  06 30 90 e7                                      ldr r3, [r0, r6]
00805c28  00 40 a0 e1                                      mov r4, r0
00805c2c  01 50 a0 e1                                      mov r5, r1
00805c30  01 00 53 e1                                      cmp r3, r1
00805c34  1f 00 00 0a                                      beq #0x805cb8
00805c38  4d d8 ff eb                                      bl #0x7fbd74
00805c3c  05 10 a0 e1                                      mov r1, r5
00805c40  ab da ff eb                                      bl #0x7fc6f4
00805c44  00 00 50 e3                                      cmp r0, #0
00805c48  16 00 00 1a                                      bne #0x805ca8
00805c4c  06 30 94 e7                                      ldr r3, [r4, r6]
00805c50  00 00 53 e3                                      cmp r3, #0
00805c54  03 00 00 ba                                      blt #0x805c68
00805c58  3c 26 03 e3                                      movw r2, #0x363c
00805c5c  02 20 94 e7                                      ldr r2, [r4, r2]
00805c60  02 00 53 e1                                      cmp r3, r2
00805c64  11 00 00 0a                                      beq #0x805cb0
00805c68  00 30 94 e5                                      ldr r3, [r4]
00805c6c  04 00 a0 e1                                      mov r0, r4
00805c70  0f e0 a0 e1                                      mov lr, pc
00805c74  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00805c78  00 00 50 e3                                      cmp r0, #0
00805c7c  0b 00 00 0a                                      beq #0x805cb0
00805c80  04 00 a0 e1                                      mov r0, r4
00805c84  05 10 a0 e1                                      mov r1, r5
00805c88  43 e2 ff eb                                      bl #0x7fe59c
00805c8c  66 3f a0 e3                                      mov r3, #0x198
00805c90  93 40 24 e0                                      mla r4, r3, r0, r4
00805c94  30 2d 04 e3                                      movw r2, #0x4d30
00805c98  02 00 94 e7                                      ldr r0, [r4, r2]
00805c9c  00 00 e0 e1                                      mvn r0, r0
00805ca0  a0 0f a0 e1                                      lsr r0, r0, #0x1f
00805ca4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00805ca8  01 00 a0 e3                                      mov r0, #1
00805cac  70 80 bd e8                                      pop {r4, r5, r6, pc}
00805cb0  00 00 a0 e3                                      mov r0, #0
00805cb4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00805cb8  00 30 90 e5                                      ldr r3, [r0]
00805cbc  0f e0 a0 e1                                      mov lr, pc
00805cc0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00805cc4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00805cc8, declared_size=112, range_size=112, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal8IsInRoomEv
; demangled: CMatchingLocal::IsInRoom()
; decoder-mode: arm
00805cc8  10 40 2d e9                                      push {r4, lr}
00805ccc  38 36 03 e3                                      movw r3, #0x3638
00805cd0  03 30 90 e7                                      ldr r3, [r0, r3]
00805cd4  00 40 a0 e1                                      mov r4, r0
00805cd8  00 00 53 e3                                      cmp r3, #0
00805cdc  03 00 00 ba                                      blt #0x805cf0
00805ce0  3c 26 03 e3                                      movw r2, #0x363c
00805ce4  02 20 90 e7                                      ldr r2, [r0, r2]
00805ce8  02 00 53 e1                                      cmp r3, r2
00805cec  05 00 00 0a                                      beq #0x805d08
00805cf0  1f d8 ff eb                                      bl #0x7fbd74
00805cf4  3c 36 03 e3                                      movw r3, #0x363c
00805cf8  03 10 94 e7                                      ldr r1, [r4, r3]
00805cfc  7c da ff eb                                      bl #0x7fc6f4
00805d00  00 40 50 e2                                      subs r4, r0, #0
00805d04  01 00 00 0a                                      beq #0x805d10
00805d08  01 00 a0 e3                                      mov r0, #1
00805d0c  10 80 bd e8                                      pop {r4, pc}
00805d10  18 d8 ff eb                                      bl #0x7fbd78
00805d14  00 00 50 e3                                      cmp r0, #0
00805d18  fb ff ff 0a                                      beq #0x805d0c
00805d1c  14 d8 ff eb                                      bl #0x7fbd74
00805d20  04 10 a0 e1                                      mov r1, r4
00805d24  5a d8 ff eb                                      bl #0x7fbe94
00805d28  00 00 50 e3                                      cmp r0, #0
00805d2c  00 00 a0 d3                                      movle r0, #0
00805d30  01 00 a0 c3                                      movgt r0, #1
00805d34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00805d38, declared_size=32, range_size=32, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal10KickMemberEi
; demangled: CMatchingLocal::KickMember(int)
; decoder-mode: arm
00805d38  10 40 2d e9                                      push {r4, lr}
00805d3c  01 40 a0 e1                                      mov r4, r1
00805d40  0b d8 ff eb                                      bl #0x7fbd74
00805d44  04 10 a0 e1                                      mov r1, r4
00805d48  01 20 a0 e3                                      mov r2, #1
00805d4c  71 da ff eb                                      bl #0x7fc718
00805d50  00 00 a0 e3                                      mov r0, #0
00805d54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00805d58, declared_size=136, range_size=136, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal23SendChangeServerMessageEv
; demangled: CMatchingLocal::SendChangeServerMessage()
; decoder-mode: arm
00805d58  70 40 2d e9                                      push {r4, r5, r6, lr}
00805d5c  28 d0 4d e2                                      sub sp, sp, #0x28
00805d60  00 60 a0 e1                                      mov r6, r0
00805d64  02 1b a0 e3                                      mov r1, #0x800
00805d68  0d 00 a0 e1                                      mov r0, sp
00805d6c  e5 22 00 eb                                      bl #0x80e908
00805d70  04 50 a0 e3                                      mov r5, #4
00805d74  28 10 8d e2                                      add r1, sp, #0x28
00805d78  04 50 61 e5                                      strb r5, [r1, #-4]!
00805d7c  0d 00 a0 e1                                      mov r0, sp
00805d80  01 20 a0 e3                                      mov r2, #1
00805d84  07 24 00 eb                                      bl #0x80eda8
00805d88  38 36 03 e3                                      movw r3, #0x3638
00805d8c  03 30 96 e7                                      ldr r3, [r6, r3]
00805d90  28 10 8d e2                                      add r1, sp, #0x28
00805d94  05 20 a0 e1                                      mov r2, r5
00805d98  08 30 21 e5                                      str r3, [r1, #-8]!
00805d9c  0d 00 a0 e1                                      mov r0, sp
00805da0  00 24 00 eb                                      bl #0x80eda8
00805da4  f2 d7 ff eb                                      bl #0x7fbd74
00805da8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00805dac  05 10 a0 e1                                      mov r1, r5
00805db0  04 20 9d e5                                      ldr r2, [sp, #4]
00805db4  07 30 1c e2                                      ands r3, ip, #7
00805db8  01 30 a0 13                                      movne r3, #1
00805dbc  ac 31 83 e0                                      add r3, r3, ip, lsr #3
00805dc0  49 d8 ff eb                                      bl #0x7fbeec
00805dc4  00 50 a0 e1                                      mov r5, r0
00805dc8  0d 00 a0 e1                                      mov r0, sp
00805dcc  6f 22 00 eb                                      bl #0x80e790
00805dd0  0d 40 a0 e1                                      mov r4, sp
00805dd4  05 00 a0 e1                                      mov r0, r5
00805dd8  28 d0 8d e2                                      add sp, sp, #0x28
00805ddc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00805de0, declared_size=256, range_size=256, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal18SendServerResponseEb
; demangled: CMatchingLocal::SendServerResponse(bool)
; decoder-mode: arm
00805de0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00805de4  68 d0 4d e2                                      sub sp, sp, #0x68
00805de8  28 50 8d e2                                      add r5, sp, #0x28
00805dec  00 60 a0 e1                                      mov r6, r0
00805df0  01 70 a0 e1                                      mov r7, r1
00805df4  05 00 a0 e1                                      mov r0, r5
00805df8  02 1b a0 e3                                      mov r1, #0x800
00805dfc  c1 22 00 eb                                      bl #0x80e908
00805e00  68 10 8d e2                                      add r1, sp, #0x68
00805e04  01 20 a0 e3                                      mov r2, #1
00805e08  04 20 61 e5                                      strb r2, [r1, #-4]!
00805e0c  05 00 a0 e1                                      mov r0, r5
00805e10  e4 23 00 eb                                      bl #0x80eda8
00805e14  0d 00 a0 e1                                      mov r0, sp
00805e18  59 d9 ff eb                                      bl #0x7fc384
00805e1c  f7 52 00 eb                                      bl #0x81aa00
00805e20  48 80 8d e2                                      add r8, sp, #0x48
00805e24  00 10 a0 e1                                      mov r1, r0
00805e28  00 20 a0 e3                                      mov r2, #0
00805e2c  08 00 a0 e1                                      mov r0, r8
00805e30  be 53 00 eb                                      bl #0x81ad30
00805e34  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
00805e38  0d c0 a0 e1                                      mov ip, sp
00805e3c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00805e40  07 00 98 e8                                      ldm r8, {r0, r1, r2}
00805e44  07 00 8c e8                                      stm ip, {r0, r1, r2}
00805e48  04 00 9d e5                                      ldr r0, [sp, #4]
00805e4c  6e 21 ec eb                                      bl #0x30e40c
00805e50  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00805e54  6c 21 ec eb                                      bl #0x30e40c
00805e58  00 30 96 e5                                      ldr r3, [r6]
00805e5c  06 00 a0 e1                                      mov r0, r6
00805e60  0f e0 a0 e1                                      mov lr, pc
00805e64  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00805e68  1c 00 8d e5                                      str r0, [sp, #0x1c]
00805e6c  00 30 96 e5                                      ldr r3, [r6]
00805e70  06 00 a0 e1                                      mov r0, r6
00805e74  0f e0 a0 e1                                      mov lr, pc
00805e78  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00805e7c  0d 10 a0 e1                                      mov r1, sp
00805e80  20 00 8d e5                                      str r0, [sp, #0x20]
00805e84  28 20 a0 e3                                      mov r2, #0x28
00805e88  05 00 a0 e1                                      mov r0, r5
00805e8c  24 70 cd e5                                      strb r7, [sp, #0x24]
00805e90  c4 23 00 eb                                      bl #0x80eda8
00805e94  46 0c 86 e2                                      add r0, r6, #0x4600
00805e98  05 10 a0 e1                                      mov r1, r5
00805e9c  07 20 a0 e3                                      mov r2, #7
00805ea0  60 00 80 e2                                      add r0, r0, #0x60
00805ea4  8b 4c 00 eb                                      bl #0x8190d8
00805ea8  b1 d7 ff eb                                      bl #0x7fbd74
00805eac  38 c0 9d e5                                      ldr ip, [sp, #0x38]
00805eb0  02 10 a0 e3                                      mov r1, #2
00805eb4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00805eb8  07 30 1c e2                                      ands r3, ip, #7
00805ebc  01 30 a0 13                                      movne r3, #1
00805ec0  ac 31 83 e0                                      add r3, r3, ip, lsr #3
00805ec4  48 d9 ff eb                                      bl #0x7fc3ec
00805ec8  00 40 a0 e1                                      mov r4, r0
00805ecc  05 00 a0 e1                                      mov r0, r5
00805ed0  2e 22 00 eb                                      bl #0x80e790
00805ed4  04 00 a0 e1                                      mov r0, r4
00805ed8  68 d0 8d e2                                      add sp, sp, #0x68
00805edc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00805ee0, declared_size=76, range_size=76, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal20ProcessClientMessageER10CNetworkIdR12NetBitStream
; demangled: CMatchingLocal::ProcessClientMessage(CNetworkId&, NetBitStream&)
; decoder-mode: arm
00805ee0  10 40 2d e9                                      push {r4, lr}
00805ee4  38 36 03 e3                                      movw r3, #0x3638
00805ee8  03 30 90 e7                                      ldr r3, [r0, r3]
00805eec  00 40 a0 e1                                      mov r4, r0
00805ef0  00 00 53 e3                                      cmp r3, #0
00805ef4  03 00 00 ba                                      blt #0x805f08
00805ef8  3c 26 03 e3                                      movw r2, #0x363c
00805efc  02 20 90 e7                                      ldr r2, [r0, r2]
00805f00  02 00 53 e1                                      cmp r3, r2
00805f04  00 00 00 0a                                      beq #0x805f0c
00805f08  10 80 bd e8                                      pop {r4, pc}
00805f0c  00 30 90 e5                                      ldr r3, [r0]
00805f10  0f e0 a0 e1                                      mov lr, pc
00805f14  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00805f18  00 10 50 e2                                      subs r1, r0, #0
00805f1c  f9 ff ff 1a                                      bne #0x805f08
00805f20  04 00 a0 e1                                      mov r0, r4
00805f24  10 40 bd e8                                      pop {r4, lr}
00805f28  ac ff ff ea                                      b #0x805de0

; FUNCTION 0x00805f2c, declared_size=124, range_size=124, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal17SendClientRequestEv
; demangled: CMatchingLocal::SendClientRequest()
; decoder-mode: arm
00805f2c  30 40 2d e9                                      push {r4, r5, lr}
00805f30  44 d0 4d e2                                      sub sp, sp, #0x44
00805f34  02 1b a0 e3                                      mov r1, #0x800
00805f38  0d 00 a0 e1                                      mov r0, sp
00805f3c  71 22 00 eb                                      bl #0x80e908
00805f40  02 50 a0 e3                                      mov r5, #2
00805f44  40 10 8d e2                                      add r1, sp, #0x40
00805f48  04 50 61 e5                                      strb r5, [r1, #-4]!
00805f4c  01 20 a0 e3                                      mov r2, #1
00805f50  0d 00 a0 e1                                      mov r0, sp
00805f54  93 23 00 eb                                      bl #0x80eda8
00805f58  a8 52 00 eb                                      bl #0x81aa00
00805f5c  00 20 a0 e3                                      mov r2, #0
00805f60  00 10 a0 e1                                      mov r1, r0
00805f64  20 00 8d e2                                      add r0, sp, #0x20
00805f68  70 53 00 eb                                      bl #0x81ad30
00805f6c  80 d7 ff eb                                      bl #0x7fbd74
00805f70  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00805f74  05 10 a0 e1                                      mov r1, r5
00805f78  04 20 9d e5                                      ldr r2, [sp, #4]
00805f7c  07 30 1c e2                                      ands r3, ip, #7
00805f80  01 30 a0 13                                      movne r3, #1
00805f84  ac 31 83 e0                                      add r3, r3, ip, lsr #3
00805f88  17 d9 ff eb                                      bl #0x7fc3ec
00805f8c  00 50 a0 e1                                      mov r5, r0
00805f90  0d 00 a0 e1                                      mov r0, sp
00805f94  fd 21 00 eb                                      bl #0x80e790
00805f98  0d 40 a0 e1                                      mov r4, sp
00805f9c  05 00 a0 e1                                      mov r0, r5
00805fa0  44 d0 8d e2                                      add sp, sp, #0x44
00805fa4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00805fa8, declared_size=116, range_size=116, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal22PacketReceiverCallbackEiPci
; demangled: CMatchingLocal::PacketReceiverCallback(int, char*, int)
; decoder-mode: arm
00805fa8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00805fac  28 d0 4d e2                                      sub sp, sp, #0x28
00805fb0  04 40 8d e2                                      add r4, sp, #4
00805fb4  03 50 a0 e1                                      mov r5, r3
00805fb8  02 80 a0 e1                                      mov r8, r2
00805fbc  00 70 a0 e1                                      mov r7, r0
00805fc0  01 60 a0 e1                                      mov r6, r1
00805fc4  04 00 a0 e1                                      mov r0, r4
00805fc8  03 10 a0 e1                                      mov r1, r3
00805fcc  4d 22 00 eb                                      bl #0x80e908
00805fd0  04 00 a0 e1                                      mov r0, r4
00805fd4  08 10 a0 e1                                      mov r1, r8
00805fd8  05 20 a0 e1                                      mov r2, r5
00805fdc  96 23 00 eb                                      bl #0x80ee3c
00805fe0  04 00 a0 e1                                      mov r0, r4
00805fe4  24 10 8d e2                                      add r1, sp, #0x24
00805fe8  01 20 a0 e3                                      mov r2, #1
00805fec  0d 23 00 eb                                      bl #0x80ec28
00805ff0  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
00805ff4  04 00 53 e3                                      cmp r3, #4
00805ff8  03 00 00 1a                                      bne #0x80600c
00805ffc  07 00 a0 e1                                      mov r0, r7
00806000  06 10 a0 e1                                      mov r1, r6
00806004  04 20 a0 e1                                      mov r2, r4
00806008  62 fe ff eb                                      bl #0x805998
0080600c  04 00 a0 e1                                      mov r0, r4
00806010  de 21 00 eb                                      bl #0x80e790
00806014  28 d0 8d e2                                      add sp, sp, #0x28
00806018  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0080601c, declared_size=60, range_size=60, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal23sPacketReceiverCallbackEiPci
; demangled: CMatchingLocal::sPacketReceiverCallback(int, char*, int)
; decoder-mode: arm
0080601c  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
00806020  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00806024  30 00 2d e9                                      push {r4, r5}
00806028  0c c0 8f e0                                      add ip, pc, ip
0080602c  00 50 a0 e1                                      mov r5, r0
00806030  03 00 9c e7                                      ldr r0, [ip, r3]
00806034  01 40 a0 e1                                      mov r4, r1
00806038  02 30 a0 e1                                      mov r3, r2
0080603c  00 00 90 e5                                      ldr r0, [r0]
00806040  05 10 a0 e1                                      mov r1, r5
00806044  04 20 a0 e1                                      mov r2, r4
00806048  30 00 bd e8                                      pop {r4, r5}
0080604c  d5 ff ff ea                                      b #0x805fa8
; mapping-symbol data/literal pool
00806050  68 ea 18 00 38 43 00 00                          .byte 0x68, 0xea, 0x18, 0x00, 0x38, 0x43, 0x00, 0x00

; FUNCTION 0x00806058, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal7DestroyEv
; demangled: CMatchingLocal::Destroy()
; decoder-mode: arm
00806058  cb e2 ff ea                                      b #0x7feb8c

; FUNCTION 0x0080605c, declared_size=60, range_size=60, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal9TerminateEv
; demangled: CMatchingLocal::Terminate()
; decoder-mode: arm
0080605c  10 40 2d e9                                      push {r4, lr}
00806060  0c 20 d0 e5                                      ldrb r2, [r0, #0xc]
00806064  00 00 52 e3                                      cmp r2, #0
00806068  08 00 00 0a                                      beq #0x806090
0080606c  00 20 a0 e3                                      mov r2, #0
00806070  0c 20 c0 e5                                      strb r2, [r0, #0xc]
00806074  49 e5 ff eb                                      bl #0x7ff5a0
00806078  02 00 a0 e3                                      mov r0, #2
0080607c  ae d8 ff eb                                      bl #0x7fc33c
00806080  03 00 a0 e3                                      mov r0, #3
00806084  ac d8 ff eb                                      bl #0x7fc33c
00806088  04 00 a0 e3                                      mov r0, #4
0080608c  aa d8 ff eb                                      bl #0x7fc33c
00806090  00 00 a0 e3                                      mov r0, #0
00806094  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00806098, declared_size=56, range_size=56, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal9PingRoomsEv
; demangled: CMatchingLocal::PingRooms()
; decoder-mode: arm
00806098  28 c0 9f e5                                      ldr ip, [pc, #0x28]
0080609c  28 30 9f e5                                      ldr r3, [pc, #0x28]
008060a0  00 20 a0 e3                                      mov r2, #0
008060a4  0c c0 8f e0                                      add ip, pc, ip
008060a8  02 15 a0 e3                                      mov r1, #0x800000
008060ac  03 00 9c e7                                      ldr r0, [ip, r3]
008060b0  10 40 2d e9                                      push {r4, lr}
008060b4  10 10 81 e2                                      add r1, r1, #0x10
008060b8  02 30 a0 e1                                      mov r3, r2
008060bc  50 e0 ff eb                                      bl #0x7fe204
008060c0  00 00 a0 e3                                      mov r0, #0
008060c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008060c8  ec e9 18 00 3c 34 00 00                          .byte 0xec, 0xe9, 0x18, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x008063c4, declared_size=920, range_size=920, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal15WritePacketDataEiiR12NetBitStream
; demangled: CMatchingLocal::WritePacketData(int, int, NetBitStream&)
; decoder-mode: arm
008063c4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008063c8  e4 d0 4d e2                                      sub sp, sp, #0xe4
008063cc  00 40 a0 e1                                      mov r4, r0
008063d0  01 80 a0 e1                                      mov r8, r1
008063d4  03 a0 a0 e1                                      mov sl, r3
008063d8  02 90 a0 e1                                      mov sb, r2
008063dc  30 eb ff eb                                      bl #0x8010a4
008063e0  38 36 03 e3                                      movw r3, #0x3638
008063e4  03 30 94 e7                                      ldr r3, [r4, r3]
008063e8  00 50 a0 e1                                      mov r5, r0
008063ec  54 03 9f e5                                      ldr r0, [pc, #0x354]
008063f0  4a 6c 84 e2                                      add r6, r4, #0x4a00
008063f4  00 00 53 e3                                      cmp r3, #0
008063f8  00 00 8f e0                                      add r0, pc, r0
008063fc  20 00 8d e5                                      str r0, [sp, #0x20]
00806400  20 60 86 e2                                      add r6, r6, #0x20
00806404  00 10 a0 b3                                      movlt r1, #0
00806408  04 00 00 ba                                      blt #0x806420
0080640c  3c 26 03 e3                                      movw r2, #0x363c
00806410  02 10 94 e7                                      ldr r1, [r4, r2]
00806414  01 00 53 e1                                      cmp r3, r1
00806418  00 10 a0 13                                      movne r1, #0
0080641c  01 10 a0 03                                      moveq r1, #1
00806420  06 00 a0 e1                                      mov r0, r6
00806424  90 34 00 eb                                      bl #0x81366c
00806428  06 00 a0 e1                                      mov r0, r6
0080642c  09 30 a0 e1                                      mov r3, sb
00806430  0a 10 a0 e1                                      mov r1, sl
00806434  08 20 a0 e1                                      mov r2, r8
00806438  30 3a 00 eb                                      bl #0x814d00
0080643c  38 36 03 e3                                      movw r3, #0x3638
00806440  03 30 94 e7                                      ldr r3, [r4, r3]
00806444  00 00 50 e3                                      cmp r0, #0
00806448  01 50 85 13                                      orrne r5, r5, #1
0080644c  18 50 8d e5                                      str r5, [sp, #0x18]
00806450  00 00 53 e3                                      cmp r3, #0
00806454  00 60 a0 b3                                      movlt r6, #0
00806458  04 00 00 ba                                      blt #0x806470
0080645c  3c 26 03 e3                                      movw r2, #0x363c
00806460  02 60 94 e7                                      ldr r6, [r4, r2]
00806464  06 00 53 e1                                      cmp r3, r6
00806468  00 60 a0 13                                      movne r6, #0
0080646c  01 60 a0 03                                      moveq r6, #1
00806470  e4 7e 07 e3                                      movw r7, #0x7ee4
00806474  07 30 94 e7                                      ldr r3, [r4, r7]
00806478  00 00 53 e3                                      cmp r3, #0
0080647c  0b 00 00 da                                      ble #0x8064b0
00806480  00 50 a0 e3                                      mov r5, #0
00806484  56 bf a0 e3                                      mov fp, #0x158
00806488  9b 05 00 e0                                      mul r0, fp, r5
0080648c  06 10 a0 e1                                      mov r1, r6
00806490  7e 0c 80 e2                                      add r0, r0, #0x7e00
00806494  e8 00 80 e2                                      add r0, r0, #0xe8
00806498  00 00 84 e0                                      add r0, r4, r0
0080649c  72 34 00 eb                                      bl #0x81366c
008064a0  07 30 94 e7                                      ldr r3, [r4, r7]
008064a4  01 50 85 e2                                      add r5, r5, #1
008064a8  03 00 55 e1                                      cmp r5, r3
008064ac  f5 ff ff ba                                      blt #0x806488
008064b0  7e 0c 84 e2                                      add r0, r4, #0x7e00
008064b4  0a 10 a0 e1                                      mov r1, sl
008064b8  08 20 a0 e1                                      mov r2, r8
008064bc  09 30 a0 e1                                      mov r3, sb
008064c0  e0 00 80 e2                                      add r0, r0, #0xe0
008064c4  ff fc ff eb                                      bl #0x8058c8
008064c8  7c 12 9f e5                                      ldr r1, [pc, #0x27c]
008064cc  7c 22 9f e5                                      ldr r2, [pc, #0x27c]
008064d0  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
008064d4  3c 10 8d e5                                      str r1, [sp, #0x3c]
008064d8  18 10 9d e5                                      ldr r1, [sp, #0x18]
008064dc  74 e2 9f e5                                      ldr lr, [pc, #0x274]
008064e0  2c 20 8d e5                                      str r2, [sp, #0x2c]
008064e4  00 00 81 e1                                      orr r0, r1, r0
008064e8  40 20 8d e2                                      add r2, sp, #0x40
008064ec  30 30 8d e5                                      str r3, [sp, #0x30]
008064f0  34 e0 8d e5                                      str lr, [sp, #0x34]
008064f4  4b 6c 84 e2                                      add r6, r4, #0x4b00
008064f8  70 70 ef e6                                      uxtb r7, r0
008064fc  c4 30 8d e2                                      add r3, sp, #0xc4
00806500  a8 e0 8d e2                                      add lr, sp, #0xa8
00806504  20 00 82 e2                                      add r0, r2, #0x20
00806508  80 10 8d e2                                      add r1, sp, #0x80
0080650c  28 20 8d e5                                      str r2, [sp, #0x28]
00806510  e0 60 86 e2                                      add r6, r6, #0xe0
00806514  00 50 a0 e3                                      mov r5, #0
00806518  18 30 8d e5                                      str r3, [sp, #0x18]
0080651c  1c e0 8d e5                                      str lr, [sp, #0x1c]
00806520  38 00 8d e5                                      str r0, [sp, #0x38]
00806524  24 10 8d e5                                      str r1, [sp, #0x24]
00806528  38 b6 03 e3                                      movw fp, #0x3638
0080652c  0b 30 94 e7                                      ldr r3, [r4, fp]
00806530  00 00 53 e3                                      cmp r3, #0
00806534  03 00 00 ba                                      blt #0x806548
00806538  3c 26 03 e3                                      movw r2, #0x363c
0080653c  02 20 94 e7                                      ldr r2, [r4, r2]
00806540  02 00 53 e1                                      cmp r3, r2
00806544  2c 00 00 0a                                      beq #0x8065fc
00806548  66 bf a0 e3                                      mov fp, #0x198
0080654c  9b 05 0b e0                                      mul fp, fp, r5
00806550  00 00 53 e3                                      cmp r3, #0
00806554  4b bc 8b e2                                      add fp, fp, #0x4b00
00806558  e0 b0 8b e2                                      add fp, fp, #0xe0
0080655c  0b b0 84 e0                                      add fp, r4, fp
00806560  03 00 00 ba                                      blt #0x806574
00806564  3c 26 03 e3                                      movw r2, #0x363c
00806568  02 20 94 e7                                      ldr r2, [r4, r2]
0080656c  03 00 52 e1                                      cmp r2, r3
00806570  72 00 00 0a                                      beq #0x806740
00806574  50 11 96 e5                                      ldr r1, [r6, #0x150]
00806578  03 00 51 e1                                      cmp r1, r3
0080657c  00 10 a0 13                                      movne r1, #0
00806580  01 10 a0 03                                      moveq r1, #1
00806584  0b 00 a0 e1                                      mov r0, fp
00806588  37 34 00 eb                                      bl #0x81366c
0080658c  38 36 03 e3                                      movw r3, #0x3638
00806590  03 30 94 e7                                      ldr r3, [r4, r3]
00806594  00 00 53 e3                                      cmp r3, #0
00806598  03 00 00 ba                                      blt #0x8065ac
0080659c  3c 26 03 e3                                      movw r2, #0x363c
008065a0  02 20 94 e7                                      ldr r2, [r4, r2]
008065a4  02 00 53 e1                                      cmp r3, r2
008065a8  0f 00 00 0a                                      beq #0x8065ec
008065ac  01 10 a0 e3                                      mov r1, #1
008065b0  00 90 8d e5                                      str sb, [sp]
008065b4  0b 00 a0 e1                                      mov r0, fp
008065b8  98 c1 96 e4                                      ldr ip, [r6], #0x198
008065bc  0a 20 a0 e1                                      mov r2, sl
008065c0  08 30 a0 e1                                      mov r3, r8
008065c4  0f e0 a0 e1                                      mov lr, pc
008065c8  0c f0 9c e5                                      ldr pc, [ip, #0xc]
008065cc  01 50 85 e2                                      add r5, r5, #1
008065d0  00 00 50 e3                                      cmp r0, #0
008065d4  01 70 87 13                                      orrne r7, r7, #1
008065d8  20 00 55 e3                                      cmp r5, #0x20
008065dc  d1 ff ff 1a                                      bne #0x806528
008065e0  07 00 a0 e1                                      mov r0, r7
008065e4  e4 d0 8d e2                                      add sp, sp, #0xe4
008065e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008065ec  50 11 96 e5                                      ldr r1, [r6, #0x150]
008065f0  01 10 58 e0                                      subs r1, r8, r1
008065f4  01 10 a0 13                                      movne r1, #1
008065f8  ec ff ff ea                                      b #0x8065b0
008065fc  50 21 96 e5                                      ldr r2, [r6, #0x150]
00806600  02 00 53 e1                                      cmp r3, r2
00806604  cf ff ff 0a                                      beq #0x806548
00806608  d9 d5 ff eb                                      bl #0x7fbd74
0080660c  50 11 96 e5                                      ldr r1, [r6, #0x150]
00806610  37 d8 ff eb                                      bl #0x7fc6f4
00806614  00 c0 50 e2                                      subs ip, r0, #0
00806618  0b 30 94 17                                      ldrne r3, [r4, fp]
0080661c  c9 ff ff 1a                                      bne #0x806548
00806620  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00806624  20 e0 9d e5                                      ldr lr, [sp, #0x20]
00806628  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
0080662c  00 00 a0 e3                                      mov r0, #0
00806630  03 20 9e e7                                      ldr r2, [lr, r3]
00806634  00 30 e0 e3                                      mvn r3, #0
00806638  03 00 51 e1                                      cmp r1, r3
0080663c  20 10 a0 e3                                      mov r1, #0x20
00806640  08 20 82 e2                                      add r2, r2, #8
00806644  84 10 8d e5                                      str r1, [sp, #0x84]
00806648  00 10 a0 e3                                      mov r1, #0
0080664c  f8 08 cd e1                                      strd r0, r1, [sp, #0x88]
00806650  9c c0 cd e5                                      strb ip, [sp, #0x9c]
00806654  80 20 8d e5                                      str r2, [sp, #0x80]
00806658  90 30 8d e5                                      str r3, [sp, #0x90]
0080665c  94 30 8d e5                                      str r3, [sp, #0x94]
00806660  98 c0 8d e5                                      str ip, [sp, #0x98]
00806664  02 00 00 0a                                      beq #0x806674
00806668  24 00 9d e5                                      ldr r0, [sp, #0x24]
0080666c  a0 30 8d e5                                      str r3, [sp, #0xa0]
00806670  43 3a 00 eb                                      bl #0x814f84
00806674  20 20 9d e5                                      ldr r2, [sp, #0x20]
00806678  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0080667c  66 bf a0 e3                                      mov fp, #0x198
00806680  9b 05 0b e0                                      mul fp, fp, r5
00806684  01 30 92 e7                                      ldr r3, [r2, r1]
00806688  4d bc 8b e2                                      add fp, fp, #0x4d00
0080668c  10 00 8b e2                                      add r0, fp, #0x10
00806690  08 30 83 e2                                      add r3, r3, #8
00806694  80 30 8d e5                                      str r3, [sp, #0x80]
00806698  24 30 9d e5                                      ldr r3, [sp, #0x24]
0080669c  00 00 84 e0                                      add r0, r4, r0
008066a0  20 10 83 e2                                      add r1, r3, #0x20
008066a4  30 31 96 e5                                      ldr r3, [r6, #0x130]
008066a8  0f e0 a0 e1                                      mov lr, pc
008066ac  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008066b0  20 00 9d e5                                      ldr r0, [sp, #0x20]
008066b4  30 e0 9d e5                                      ldr lr, [sp, #0x30]
008066b8  0e c0 90 e7                                      ldr ip, [r0, lr]
008066bc  18 00 9d e5                                      ldr r0, [sp, #0x18]
008066c0  08 c0 8c e2                                      add ip, ip, #8
008066c4  80 c0 8d e5                                      str ip, [sp, #0x80]
008066c8  14 c0 8d e5                                      str ip, [sp, #0x14]
008066cc  2c d7 ff eb                                      bl #0x7fc384
008066d0  18 e0 9d e5                                      ldr lr, [sp, #0x18]
008066d4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
008066d8  0c e0 8d e5                                      str lr, [sp, #0xc]
008066dc  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
008066e0  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
008066e4  0e 30 a0 e1                                      mov r3, lr
008066e8  0c e0 9d e5                                      ldr lr, [sp, #0xc]
008066ec  07 00 9e e8                                      ldm lr, {r0, r1, r2}
008066f0  07 00 83 e8                                      stm r3, {r0, r1, r2}
008066f4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
008066f8  28 00 9d e5                                      ldr r0, [sp, #0x28]
008066fc  73 fe ff eb                                      bl #0x8060d0
00806700  20 10 9d e5                                      ldr r1, [sp, #0x20]
00806704  34 00 9d e5                                      ldr r0, [sp, #0x34]
00806708  00 30 91 e7                                      ldr r3, [r1, r0]
0080670c  38 00 8b e2                                      add r0, fp, #0x38
00806710  00 00 84 e0                                      add r0, r4, r0
00806714  08 30 83 e2                                      add r3, r3, #8
00806718  40 30 8d e5                                      str r3, [sp, #0x40]
0080671c  58 31 96 e5                                      ldr r3, [r6, #0x158]
00806720  38 10 9d e5                                      ldr r1, [sp, #0x38]
00806724  0f e0 a0 e1                                      mov lr, pc
00806728  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0080672c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00806730  38 36 03 e3                                      movw r3, #0x3638
00806734  03 30 94 e7                                      ldr r3, [r4, r3]
00806738  40 c0 8d e5                                      str ip, [sp, #0x40]
0080673c  81 ff ff ea                                      b #0x806548
00806740  01 10 a0 e3                                      mov r1, #1
00806744  8e ff ff ea                                      b #0x806584
; mapping-symbol data/literal pool
00806748  98 e6 18 00 84 29 00 00 c8 10 00 00 a8 10 00 00  .byte 0x98, 0xe6, 0x18, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
00806758  f0 28 00 00                                      .byte 0xf0, 0x28, 0x00, 0x00

; FUNCTION 0x0080675c, declared_size=332, range_size=332, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal19GenerateNewMemberIdEv
; demangled: CMatchingLocal::GenerateNewMemberId()
; decoder-mode: arm
0080675c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00806760  44 d0 4d e2                                      sub sp, sp, #0x44
00806764  00 40 a0 e1                                      mov r4, r0
00806768  5b e6 ff eb                                      bl #0x8000dc
0080676c  24 51 9f e5                                      ldr r5, [pc, #0x124]
00806770  24 31 9f e5                                      ldr r3, [pc, #0x124]
00806774  24 11 9f e5                                      ldr r1, [pc, #0x124]
00806778  05 50 8f e0                                      add r5, pc, r5
0080677c  03 30 95 e7                                      ldr r3, [r5, r3]
00806780  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
00806784  4b cc 84 e2                                      add ip, r4, #0x4b00
00806788  79 68 07 e3                                      movw r6, #0x7879
0080678c  b8 c0 8c e2                                      add ip, ip, #0xb8
00806790  08 30 83 e2                                      add r3, r3, #8
00806794  08 00 8d e5                                      str r0, [sp, #8]
00806798  10 10 8d e5                                      str r1, [sp, #0x10]
0080679c  0c 20 8d e5                                      str r2, [sp, #0xc]
008067a0  04 c0 8d e5                                      str ip, [sp, #4]
008067a4  78 68 47 e3                                      movt r6, #0x7878
008067a8  14 30 8d e5                                      str r3, [sp, #0x14]
008067ac  18 a0 8d e2                                      add sl, sp, #0x18
008067b0  d8 9b 04 e3                                      movw sb, #0x4bd8
008067b4  00 80 e0 e3                                      mvn r8, #0
008067b8  00 70 a0 e3                                      mov r7, #0
008067bc  09 30 94 e7                                      ldr r3, [r4, sb]
008067c0  0a 00 a0 e1                                      mov r0, sl
008067c4  28 80 8d e5                                      str r8, [sp, #0x28]
008067c8  03 22 a0 e1                                      lsl r2, r3, #4
008067cc  96 12 cb e0                                      smull r1, fp, r6, r2
008067d0  96 c3 c1 e0                                      smull ip, r1, r6, r3
008067d4  c2 cf a0 e1                                      asr ip, r2, #0x1f
008067d8  cb b3 6c e0                                      rsb fp, ip, fp, asr #7
008067dc  11 ce a0 e3                                      mov ip, #0x110
008067e0  9c 2b 62 e0                                      mls r2, ip, fp, r2
008067e4  c3 bf a0 e1                                      asr fp, r3, #0x1f
008067e8  c1 11 6b e0                                      rsb r1, fp, r1, asr #3
008067ec  01 10 81 e2                                      add r1, r1, #1
008067f0  38 c0 9d e5                                      ldr ip, [sp, #0x38]
008067f4  02 b0 81 e0                                      add fp, r1, r2
008067f8  14 10 9d e5                                      ldr r1, [sp, #0x14]
008067fc  01 e0 83 e2                                      add lr, r3, #1
00806800  20 20 a0 e3                                      mov r2, #0x20
00806804  1c 20 8d e5                                      str r2, [sp, #0x1c]
00806808  00 30 a0 e3                                      mov r3, #0
0080680c  00 20 a0 e3                                      mov r2, #0
00806810  0c 00 5e e1                                      cmp lr, ip
00806814  18 10 8d e5                                      str r1, [sp, #0x18]
00806818  f0 22 cd e1                                      strd r2, r3, [sp, #0x20]
0080681c  2c 80 8d e5                                      str r8, [sp, #0x2c]
00806820  30 70 8d e5                                      str r7, [sp, #0x30]
00806824  34 70 cd e5                                      strb r7, [sp, #0x34]
00806828  01 00 00 0a                                      beq #0x806834
0080682c  38 e0 8d e5                                      str lr, [sp, #0x38]
00806830  d3 39 00 eb                                      bl #0x814f84
00806834  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00806838  b8 2b 04 e3                                      movw r2, #0x4bb8
0080683c  04 00 9d e5                                      ldr r0, [sp, #4]
00806840  0c 30 95 e7                                      ldr r3, [r5, ip]
00806844  20 10 8a e2                                      add r1, sl, #0x20
00806848  08 30 83 e2                                      add r3, r3, #8
0080684c  18 30 8d e5                                      str r3, [sp, #0x18]
00806850  02 30 94 e7                                      ldr r3, [r4, r2]
00806854  0f e0 a0 e1                                      mov lr, pc
00806858  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0080685c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00806860  04 00 a0 e1                                      mov r0, r4
00806864  0b 10 a0 e1                                      mov r1, fp
00806868  03 20 95 e7                                      ldr r2, [r5, r3]
0080686c  00 30 94 e5                                      ldr r3, [r4]
00806870  08 20 82 e2                                      add r2, r2, #8
00806874  18 20 8d e5                                      str r2, [sp, #0x18]
00806878  0f e0 a0 e1                                      mov lr, pc
0080687c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00806880  08 c0 9d e5                                      ldr ip, [sp, #8]
00806884  0c 00 10 e1                                      tst r0, ip
00806888  cb ff ff 1a                                      bne #0x8067bc
0080688c  0b 00 a0 e1                                      mov r0, fp
00806890  44 d0 8d e2                                      add sp, sp, #0x44
00806894  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00806898  18 e3 18 00 84 29 00 00 c8 10 00 00 a8 10 00 00  .byte 0x18, 0xe3, 0x18, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00

; FUNCTION 0x00806d64, declared_size=232, range_size=232, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal8HideRoomEv
; demangled: CMatchingLocal::HideRoom()
; decoder-mode: arm
00806d64  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00806d68  c8 40 9f e5                                      ldr r4, [pc, #0xc8]
00806d6c  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
00806d70  24 d0 4d e2                                      sub sp, sp, #0x24
00806d74  04 40 8f e0                                      add r4, pc, r4
00806d78  1d 20 dd e5                                      ldrb r2, [sp, #0x1d]
00806d7c  03 30 94 e7                                      ldr r3, [r4, r3]
00806d80  00 10 e0 e3                                      mvn r1, #0
00806d84  01 00 52 e3                                      cmp r2, #1
00806d88  00 60 a0 e3                                      mov r6, #0
00806d8c  00 20 a0 e3                                      mov r2, #0
00806d90  08 30 83 e2                                      add r3, r3, #8
00806d94  01 c0 a0 e3                                      mov ip, #1
00806d98  00 70 a0 e3                                      mov r7, #0
00806d9c  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00806da0  14 10 8d e5                                      str r1, [sp, #0x14]
00806da4  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00806da8  00 30 8d e5                                      str r3, [sp]
00806dac  00 50 a0 e1                                      mov r5, r0
00806db0  04 c0 8d e5                                      str ip, [sp, #4]
00806db4  10 10 8d e5                                      str r1, [sp, #0x10]
00806db8  18 20 8d e5                                      str r2, [sp, #0x18]
00806dbc  0d 60 a0 01                                      moveq r6, sp
00806dc0  03 00 00 0a                                      beq #0x806dd4
00806dc4  0d 00 a0 e1                                      mov r0, sp
00806dc8  0d 60 a0 e1                                      mov r6, sp
00806dcc  1d c0 cd e5                                      strb ip, [sp, #0x1d]
00806dd0  6b 38 00 eb                                      bl #0x814f84
00806dd4  64 30 9f e5                                      ldr r3, [pc, #0x64]
00806dd8  4b 0c 85 e2                                      add r0, r5, #0x4b00
00806ddc  1d 10 86 e2                                      add r1, r6, #0x1d
00806de0  03 30 94 e7                                      ldr r3, [r4, r3]
00806de4  70 00 80 e2                                      add r0, r0, #0x70
00806de8  08 30 83 e2                                      add r3, r3, #8
00806dec  00 30 8d e5                                      str r3, [sp]
00806df0  70 3b 04 e3                                      movw r3, #0x4b70
00806df4  03 30 95 e7                                      ldr r3, [r5, r3]
00806df8  0f e0 a0 e1                                      mov lr, pc
00806dfc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00806e00  3c c0 9f e5                                      ldr ip, [pc, #0x3c]
00806e04  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00806e08  00 20 a0 e3                                      mov r2, #0
00806e0c  0c c0 94 e7                                      ldr ip, [r4, ip]
00806e10  02 15 a0 e3                                      mov r1, #0x800000
00806e14  03 00 94 e7                                      ldr r0, [r4, r3]
00806e18  08 c0 8c e2                                      add ip, ip, #8
00806e1c  0a 10 81 e2                                      add r1, r1, #0xa
00806e20  02 30 a0 e1                                      mov r3, r2
00806e24  00 c0 8d e5                                      str ip, [sp]
00806e28  f5 dc ff eb                                      bl #0x7fe204
00806e2c  00 00 a0 e3                                      mov r0, #0
00806e30  24 d0 8d e2                                      add sp, sp, #0x24
00806e34  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00806e38  1c dd 18 00 18 30 00 00 c8 0a 00 00 a8 10 00 00  .byte 0x1c, 0xdd, 0x18, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
00806e48  3c 34 00 00                                      .byte 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x00806e4c, declared_size=380, range_size=380, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal9CloseRoomEv
; demangled: CMatchingLocal::CloseRoom()
; decoder-mode: arm
00806e4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00806e50  44 d0 4d e2                                      sub sp, sp, #0x44
00806e54  00 30 90 e5                                      ldr r3, [r0]
00806e58  00 50 a0 e1                                      mov r5, r0
00806e5c  0f e0 a0 e1                                      mov lr, pc
00806e60  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00806e64  48 41 9f e5                                      ldr r4, [pc, #0x148]
00806e68  48 a1 9f e5                                      ldr sl, [pc, #0x148]
00806e6c  3d 30 dd e5                                      ldrb r3, [sp, #0x3d]
00806e70  04 40 8f e0                                      add r4, pc, r4
00806e74  0a c0 94 e7                                      ldr ip, [r4, sl]
00806e78  01 00 53 e3                                      cmp r3, #1
00806e7c  00 20 e0 e3                                      mvn r2, #0
00806e80  00 30 a0 e3                                      mov r3, #0
00806e84  08 c0 8c e2                                      add ip, ip, #8
00806e88  01 10 a0 e3                                      mov r1, #1
00806e8c  00 60 a0 e3                                      mov r6, #0
00806e90  00 70 a0 e3                                      mov r7, #0
00806e94  0d 00 c5 e5                                      strb r0, [r5, #0xd]
00806e98  f8 62 cd e1                                      strd r6, r7, [sp, #0x28]
00806e9c  34 20 8d e5                                      str r2, [sp, #0x34]
00806ea0  3c 30 cd e5                                      strb r3, [sp, #0x3c]
00806ea4  20 c0 8d e5                                      str ip, [sp, #0x20]
00806ea8  24 10 8d e5                                      str r1, [sp, #0x24]
00806eac  30 20 8d e5                                      str r2, [sp, #0x30]
00806eb0  38 30 8d e5                                      str r3, [sp, #0x38]
00806eb4  20 90 8d 02                                      addeq sb, sp, #0x20
00806eb8  03 00 00 0a                                      beq #0x806ecc
00806ebc  20 90 8d e2                                      add sb, sp, #0x20
00806ec0  09 00 a0 e1                                      mov r0, sb
00806ec4  3d 10 cd e5                                      strb r1, [sp, #0x3d]
00806ec8  2d 38 00 eb                                      bl #0x814f84
00806ecc  e8 80 9f e5                                      ldr r8, [pc, #0xe8]
00806ed0  e8 60 9f e5                                      ldr r6, [pc, #0xe8]
00806ed4  4b 7c 85 e2                                      add r7, r5, #0x4b00
00806ed8  08 20 94 e7                                      ldr r2, [r4, r8]
00806edc  50 3b 04 e3                                      movw r3, #0x4b50
00806ee0  03 30 95 e7                                      ldr r3, [r5, r3]
00806ee4  08 20 82 e2                                      add r2, r2, #8
00806ee8  20 20 8d e5                                      str r2, [sp, #0x20]
00806eec  1d 10 89 e2                                      add r1, sb, #0x1d
00806ef0  50 00 87 e2                                      add r0, r7, #0x50
00806ef4  0f e0 a0 e1                                      mov lr, pc
00806ef8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00806efc  0a 00 94 e7                                      ldr r0, [r4, sl]
00806f00  1d 30 dd e5                                      ldrb r3, [sp, #0x1d]
00806f04  06 c0 94 e7                                      ldr ip, [r4, r6]
00806f08  00 10 e0 e3                                      mvn r1, #0
00806f0c  01 00 53 e3                                      cmp r3, #1
00806f10  00 20 a0 e3                                      mov r2, #0
00806f14  00 a0 a0 e3                                      mov sl, #0
00806f18  08 00 80 e2                                      add r0, r0, #8
00806f1c  08 c0 8c e2                                      add ip, ip, #8
00806f20  01 30 a0 e3                                      mov r3, #1
00806f24  00 b0 a0 e3                                      mov fp, #0
00806f28  f8 a0 cd e1                                      strd sl, fp, [sp, #8]
00806f2c  20 c0 8d e5                                      str ip, [sp, #0x20]
00806f30  14 10 8d e5                                      str r1, [sp, #0x14]
00806f34  1c 20 cd e5                                      strb r2, [sp, #0x1c]
00806f38  09 00 8d e8                                      stm sp, {r0, r3}
00806f3c  10 10 8d e5                                      str r1, [sp, #0x10]
00806f40  18 20 8d e5                                      str r2, [sp, #0x18]
00806f44  0d a0 a0 01                                      moveq sl, sp
00806f48  03 00 00 0a                                      beq #0x806f5c
00806f4c  0d 00 a0 e1                                      mov r0, sp
00806f50  0d a0 a0 e1                                      mov sl, sp
00806f54  1d 30 cd e5                                      strb r3, [sp, #0x1d]
00806f58  09 38 00 eb                                      bl #0x814f84
00806f5c  08 20 94 e7                                      ldr r2, [r4, r8]
00806f60  70 3b 04 e3                                      movw r3, #0x4b70
00806f64  03 30 95 e7                                      ldr r3, [r5, r3]
00806f68  08 20 82 e2                                      add r2, r2, #8
00806f6c  00 20 8d e5                                      str r2, [sp]
00806f70  70 00 87 e2                                      add r0, r7, #0x70
00806f74  1d 10 8a e2                                      add r1, sl, #0x1d
00806f78  0f e0 a0 e1                                      mov lr, pc
00806f7c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00806f80  06 c0 94 e7                                      ldr ip, [r4, r6]
00806f84  38 30 9f e5                                      ldr r3, [pc, #0x38]
00806f88  00 20 a0 e3                                      mov r2, #0
00806f8c  02 15 a0 e3                                      mov r1, #0x800000
00806f90  03 00 94 e7                                      ldr r0, [r4, r3]
00806f94  08 c0 8c e2                                      add ip, ip, #8
00806f98  0a 10 81 e2                                      add r1, r1, #0xa
00806f9c  02 30 a0 e1                                      mov r3, r2
00806fa0  00 c0 8d e5                                      str ip, [sp]
00806fa4  96 dc ff eb                                      bl #0x7fe204
00806fa8  00 00 a0 e3                                      mov r0, #0
00806fac  44 d0 8d e2                                      add sp, sp, #0x44
00806fb0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00806fb4  20 dc 18 00 18 30 00 00 c8 0a 00 00 a8 10 00 00  .byte 0x20, 0xdc, 0x18, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
00806fc4  3c 34 00 00                                      .byte 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x00806fc8, declared_size=244, range_size=244, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal8ShowRoomEv
; demangled: CMatchingLocal::ShowRoom()
; decoder-mode: arm
00806fc8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00806fcc  0e 30 d0 e5                                      ldrb r3, [r0, #0xe]
00806fd0  d0 40 9f e5                                      ldr r4, [pc, #0xd0]
00806fd4  24 d0 4d e2                                      sub sp, sp, #0x24
00806fd8  00 00 53 e3                                      cmp r3, #0
00806fdc  00 50 a0 e1                                      mov r5, r0
00806fe0  04 40 8f e0                                      add r4, pc, r4
00806fe4  02 00 00 0a                                      beq #0x806ff4
00806fe8  00 00 a0 e3                                      mov r0, #0
00806fec  24 d0 8d e2                                      add sp, sp, #0x24
00806ff0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00806ff4  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
00806ff8  1d 00 dd e5                                      ldrb r0, [sp, #0x1d]
00806ffc  00 10 e0 e3                                      mvn r1, #0
00807000  02 20 94 e7                                      ldr r2, [r4, r2]
00807004  00 00 50 e3                                      cmp r0, #0
00807008  00 60 a0 e3                                      mov r6, #0
0080700c  08 20 82 e2                                      add r2, r2, #8
00807010  01 00 a0 e3                                      mov r0, #1
00807014  00 70 a0 e3                                      mov r7, #0
00807018  f8 60 cd e1                                      strd r6, r7, [sp, #8]
0080701c  04 00 8d e5                                      str r0, [sp, #4]
00807020  14 10 8d e5                                      str r1, [sp, #0x14]
00807024  00 20 8d e5                                      str r2, [sp]
00807028  10 10 8d e5                                      str r1, [sp, #0x10]
0080702c  18 30 8d e5                                      str r3, [sp, #0x18]
00807030  1c 30 cd e5                                      strb r3, [sp, #0x1c]
00807034  0d 60 a0 01                                      moveq r6, sp
00807038  03 00 00 0a                                      beq #0x80704c
0080703c  0d 00 a0 e1                                      mov r0, sp
00807040  0d 60 a0 e1                                      mov r6, sp
00807044  1d 30 cd e5                                      strb r3, [sp, #0x1d]
00807048  cd 37 00 eb                                      bl #0x814f84
0080704c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00807050  4b 0c 85 e2                                      add r0, r5, #0x4b00
00807054  1d 10 86 e2                                      add r1, r6, #0x1d
00807058  03 30 94 e7                                      ldr r3, [r4, r3]
0080705c  70 00 80 e2                                      add r0, r0, #0x70
00807060  08 30 83 e2                                      add r3, r3, #8
00807064  00 30 8d e5                                      str r3, [sp]
00807068  70 3b 04 e3                                      movw r3, #0x4b70
0080706c  03 30 95 e7                                      ldr r3, [r5, r3]
00807070  0f e0 a0 e1                                      mov lr, pc
00807074  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00807078  34 c0 9f e5                                      ldr ip, [pc, #0x34]
0080707c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00807080  00 20 a0 e3                                      mov r2, #0
00807084  0c c0 94 e7                                      ldr ip, [r4, ip]
00807088  02 15 a0 e3                                      mov r1, #0x800000
0080708c  03 00 94 e7                                      ldr r0, [r4, r3]
00807090  08 c0 8c e2                                      add ip, ip, #8
00807094  0a 10 81 e2                                      add r1, r1, #0xa
00807098  02 30 a0 e1                                      mov r3, r2
0080709c  00 c0 8d e5                                      str ip, [sp]
008070a0  57 dc ff eb                                      bl #0x7fe204
008070a4  cf ff ff ea                                      b #0x806fe8
; mapping-symbol data/literal pool
008070a8  b0 da 18 00 18 30 00 00 c8 0a 00 00 a8 10 00 00  .byte 0xb0, 0xda, 0x18, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
008070b8  3c 34 00 00                                      .byte 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x008070bc, declared_size=388, range_size=388, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal8OpenRoomEb
; demangled: CMatchingLocal::OpenRoom(bool)
; decoder-mode: arm
008070bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008070c0  0e 30 d0 e5                                      ldrb r3, [r0, #0xe]
008070c4  60 41 9f e5                                      ldr r4, [pc, #0x160]
008070c8  44 d0 4d e2                                      sub sp, sp, #0x44
008070cc  00 00 53 e3                                      cmp r3, #0
008070d0  00 50 a0 e1                                      mov r5, r0
008070d4  01 60 a0 e1                                      mov r6, r1
008070d8  04 40 8f e0                                      add r4, pc, r4
008070dc  02 00 00 0a                                      beq #0x8070ec
008070e0  00 00 a0 e3                                      mov r0, #0
008070e4  44 d0 8d e2                                      add sp, sp, #0x44
008070e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008070ec  3c 91 9f e5                                      ldr sb, [pc, #0x13c]
008070f0  3d 00 dd e5                                      ldrb r0, [sp, #0x3d]
008070f4  00 20 e0 e3                                      mvn r2, #0
008070f8  09 10 94 e7                                      ldr r1, [r4, sb]
008070fc  00 00 50 e3                                      cmp r0, #0
00807100  00 b0 a0 e3                                      mov fp, #0
00807104  08 10 81 e2                                      add r1, r1, #8
00807108  01 00 a0 e3                                      mov r0, #1
0080710c  00 a0 a0 e3                                      mov sl, #0
00807110  f8 a2 cd e1                                      strd sl, fp, [sp, #0x28]
00807114  24 00 8d e5                                      str r0, [sp, #0x24]
00807118  34 20 8d e5                                      str r2, [sp, #0x34]
0080711c  20 10 8d e5                                      str r1, [sp, #0x20]
00807120  30 20 8d e5                                      str r2, [sp, #0x30]
00807124  38 30 8d e5                                      str r3, [sp, #0x38]
00807128  3c 30 cd e5                                      strb r3, [sp, #0x3c]
0080712c  20 b0 8d 02                                      addeq fp, sp, #0x20
00807130  03 00 00 0a                                      beq #0x807144
00807134  20 b0 8d e2                                      add fp, sp, #0x20
00807138  0b 00 a0 e1                                      mov r0, fp
0080713c  3d 30 cd e5                                      strb r3, [sp, #0x3d]
00807140  8f 37 00 eb                                      bl #0x814f84
00807144  e8 a0 9f e5                                      ldr sl, [pc, #0xe8]
00807148  e8 70 9f e5                                      ldr r7, [pc, #0xe8]
0080714c  4b 8c 85 e2                                      add r8, r5, #0x4b00
00807150  0a 20 94 e7                                      ldr r2, [r4, sl]
00807154  50 3b 04 e3                                      movw r3, #0x4b50
00807158  03 30 95 e7                                      ldr r3, [r5, r3]
0080715c  08 20 82 e2                                      add r2, r2, #8
00807160  20 20 8d e5                                      str r2, [sp, #0x20]
00807164  1d 10 8b e2                                      add r1, fp, #0x1d
00807168  50 00 88 e2                                      add r0, r8, #0x50
0080716c  0f e0 a0 e1                                      mov lr, pc
00807170  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00807174  07 00 94 e7                                      ldr r0, [r4, r7]
00807178  09 10 94 e7                                      ldr r1, [r4, sb]
0080717c  1d 30 dd e5                                      ldrb r3, [sp, #0x1d]
00807180  08 00 80 e2                                      add r0, r0, #8
00807184  01 60 26 e2                                      eor r6, r6, #1
00807188  20 00 8d e5                                      str r0, [sp, #0x20]
0080718c  01 00 a0 e3                                      mov r0, #1
00807190  06 00 53 e1                                      cmp r3, r6
00807194  08 c0 81 e2                                      add ip, r1, #8
00807198  00 20 e0 e3                                      mvn r2, #0
0080719c  00 30 a0 e3                                      mov r3, #0
008071a0  04 00 8d e5                                      str r0, [sp, #4]
008071a4  00 10 a0 e3                                      mov r1, #0
008071a8  00 00 a0 e3                                      mov r0, #0
008071ac  f8 00 cd e1                                      strd r0, r1, [sp, #8]
008071b0  14 20 8d e5                                      str r2, [sp, #0x14]
008071b4  1c 30 cd e5                                      strb r3, [sp, #0x1c]
008071b8  00 c0 8d e5                                      str ip, [sp]
008071bc  10 20 8d e5                                      str r2, [sp, #0x10]
008071c0  18 30 8d e5                                      str r3, [sp, #0x18]
008071c4  0d 90 a0 01                                      moveq sb, sp
008071c8  03 00 00 0a                                      beq #0x8071dc
008071cc  0d 00 a0 e1                                      mov r0, sp
008071d0  0d 90 a0 e1                                      mov sb, sp
008071d4  1d 60 cd e5                                      strb r6, [sp, #0x1d]
008071d8  69 37 00 eb                                      bl #0x814f84
008071dc  0a 20 94 e7                                      ldr r2, [r4, sl]
008071e0  70 3b 04 e3                                      movw r3, #0x4b70
008071e4  03 30 95 e7                                      ldr r3, [r5, r3]
008071e8  08 20 82 e2                                      add r2, r2, #8
008071ec  00 20 8d e5                                      str r2, [sp]
008071f0  70 00 88 e2                                      add r0, r8, #0x70
008071f4  1d 10 89 e2                                      add r1, sb, #0x1d
008071f8  0f e0 a0 e1                                      mov lr, pc
008071fc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00807200  07 c0 94 e7                                      ldr ip, [r4, r7]
00807204  30 30 9f e5                                      ldr r3, [pc, #0x30]
00807208  00 20 a0 e3                                      mov r2, #0
0080720c  02 15 a0 e3                                      mov r1, #0x800000
00807210  03 00 94 e7                                      ldr r0, [r4, r3]
00807214  08 c0 8c e2                                      add ip, ip, #8
00807218  0a 10 81 e2                                      add r1, r1, #0xa
0080721c  02 30 a0 e1                                      mov r3, r2
00807220  00 c0 8d e5                                      str ip, [sp]
00807224  f6 db ff eb                                      bl #0x7fe204
00807228  ac ff ff ea                                      b #0x8070e0
; mapping-symbol data/literal pool
0080722c  b8 d9 18 00 18 30 00 00 c8 0a 00 00 a8 10 00 00  .byte 0xb8, 0xd9, 0x18, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
0080723c  3c 34 00 00                                      .byte 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x008072d8, declared_size=236, range_size=236, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal12RemoveServerER10CNetworkId
; demangled: CMatchingLocal::RemoveServer(CNetworkId&)
; decoder-mode: arm
008072d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008072dc  46 6c 80 e2                                      add r6, r0, #0x4600
008072e0  3c 80 86 e2                                      add r8, r6, #0x3c
008072e4  00 40 a0 e1                                      mov r4, r0
008072e8  08 d0 4d e2                                      sub sp, sp, #8
008072ec  08 00 a0 e1                                      mov r0, r8
008072f0  01 70 a0 e1                                      mov r7, r1
008072f4  1c 1c 00 eb                                      bl #0x80e36c
008072f8  4c 36 04 e3                                      movw r3, #0x464c
008072fc  03 50 94 e7                                      ldr r5, [r4, r3]
00807300  44 60 86 e2                                      add r6, r6, #0x44
00807304  05 00 56 e1                                      cmp r6, r5
00807308  0f 00 00 0a                                      beq #0x80734c
0080730c  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00807310  00 00 54 e3                                      cmp r4, #0
00807314  01 00 00 1a                                      bne #0x807320
00807318  0e 00 00 ea                                      b #0x807358
0080731c  03 40 a0 e1                                      mov r4, r3
00807320  08 30 94 e5                                      ldr r3, [r4, #8]
00807324  00 00 53 e3                                      cmp r3, #0
00807328  fb ff ff 1a                                      bne #0x80731c
0080732c  1c 00 85 e2                                      add r0, r5, #0x1c
00807330  07 10 a0 e1                                      mov r1, r7
00807334  80 d1 ff eb                                      bl #0x7fb93c
00807338  00 00 50 e3                                      cmp r0, #0
0080733c  18 00 00 1a                                      bne #0x8073a4
00807340  04 50 a0 e1                                      mov r5, r4
00807344  05 00 56 e1                                      cmp r6, r5
00807348  ef ff ff 1a                                      bne #0x80730c
0080734c  08 00 a0 e1                                      mov r0, r8
00807350  04 1c 00 eb                                      bl #0x80e368
00807354  18 00 00 ea                                      b #0x8073bc
00807358  04 30 95 e5                                      ldr r3, [r5, #4]
0080735c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00807360  02 00 55 e1                                      cmp r5, r2
00807364  05 40 a0 11                                      movne r4, r5
00807368  00 20 a0 13                                      movne r2, #0
0080736c  05 00 00 1a                                      bne #0x807388
00807370  03 40 a0 e1                                      mov r4, r3
00807374  04 30 93 e5                                      ldr r3, [r3, #4]
00807378  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0080737c  04 00 52 e1                                      cmp r2, r4
00807380  fa ff ff 0a                                      beq #0x807370
00807384  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00807388  02 00 53 e1                                      cmp r3, r2
0080738c  1c 00 85 e2                                      add r0, r5, #0x1c
00807390  07 10 a0 e1                                      mov r1, r7
00807394  03 40 a0 11                                      movne r4, r3
00807398  67 d1 ff eb                                      bl #0x7fb93c
0080739c  00 00 50 e3                                      cmp r0, #0
008073a0  e6 ff ff 0a                                      beq #0x807340
008073a4  08 10 8d e2                                      add r1, sp, #8
008073a8  06 00 a0 e1                                      mov r0, r6
008073ac  04 50 21 e5                                      str r5, [r1, #-4]!
008073b0  b6 ff ff eb                                      bl #0x807290
008073b4  08 00 a0 e1                                      mov r0, r8
008073b8  ea 1b 00 eb                                      bl #0x80e368
008073bc  08 d0 8d e2                                      add sp, sp, #8
008073c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008073c4, declared_size=224, range_size=224, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal12PurgeServersEv
; demangled: CMatchingLocal::PurgeServers()
; decoder-mode: arm
008073c4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008073c8  46 6c 80 e2                                      add r6, r0, #0x4600
008073cc  3c a0 86 e2                                      add sl, r6, #0x3c
008073d0  0c d0 4d e2                                      sub sp, sp, #0xc
008073d4  00 40 a0 e1                                      mov r4, r0
008073d8  0a 00 a0 e1                                      mov r0, sl
008073dc  e2 1b 00 eb                                      bl #0x80e36c
008073e0  4c 36 04 e3                                      movw r3, #0x464c
008073e4  03 50 94 e7                                      ldr r5, [r4, r3]
008073e8  44 60 86 e2                                      add r6, r6, #0x44
008073ec  20 7e 04 e3                                      movw r7, #0x4e20
008073f0  05 00 56 e1                                      cmp r6, r5
008073f4  04 80 8d e2                                      add r8, sp, #4
008073f8  16 00 00 0a                                      beq #0x807458
008073fc  0c 40 95 e5                                      ldr r4, [r5, #0xc]
00807400  00 00 54 e3                                      cmp r4, #0
00807404  01 00 00 1a                                      bne #0x807410
00807408  16 00 00 ea                                      b #0x807468
0080740c  03 40 a0 e1                                      mov r4, r3
00807410  08 30 94 e5                                      ldr r3, [r4, #8]
00807414  00 00 53 e3                                      cmp r3, #0
00807418  fb ff ff 1a                                      bne #0x80740c
0080741c  dc d8 ff eb                                      bl #0x7fd794
00807420  00 30 90 e5                                      ldr r3, [r0]
00807424  0f e0 a0 e1                                      mov lr, pc
00807428  00 f0 93 e5                                      ldr pc, [r3]
0080742c  38 30 95 e5                                      ldr r3, [r5, #0x38]
00807430  00 30 63 e0                                      rsb r3, r3, r0
00807434  07 00 53 e1                                      cmp r3, r7
00807438  03 00 00 9a                                      bls #0x80744c
0080743c  06 00 a0 e1                                      mov r0, r6
00807440  08 10 a0 e1                                      mov r1, r8
00807444  04 50 8d e5                                      str r5, [sp, #4]
00807448  90 ff ff eb                                      bl #0x807290
0080744c  04 50 a0 e1                                      mov r5, r4
00807450  05 00 56 e1                                      cmp r6, r5
00807454  e8 ff ff 1a                                      bne #0x8073fc
00807458  0a 00 a0 e1                                      mov r0, sl
0080745c  c1 1b 00 eb                                      bl #0x80e368
00807460  0c d0 8d e2                                      add sp, sp, #0xc
00807464  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00807468  04 30 95 e5                                      ldr r3, [r5, #4]
0080746c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00807470  02 00 55 e1                                      cmp r5, r2
00807474  05 40 a0 11                                      movne r4, r5
00807478  00 20 a0 13                                      movne r2, #0
0080747c  05 00 00 1a                                      bne #0x807498
00807480  03 40 a0 e1                                      mov r4, r3
00807484  04 30 93 e5                                      ldr r3, [r3, #4]
00807488  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0080748c  04 00 52 e1                                      cmp r2, r4
00807490  fa ff ff 0a                                      beq #0x807480
00807494  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00807498  03 00 52 e1                                      cmp r2, r3
0080749c  03 40 a0 11                                      movne r4, r3
008074a0  dd ff ff ea                                      b #0x80741c

; FUNCTION 0x008074a4, declared_size=1208, range_size=1208, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal5ResetEv
; demangled: CMatchingLocal::Reset()
; decoder-mode: arm
008074a4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008074a8  90 44 9f e5                                      ldr r4, [pc, #0x490]
008074ac  59 df 4d e2                                      sub sp, sp, #0x164
008074b0  8c 84 9f e5                                      ldr r8, [pc, #0x48c]
008074b4  25 21 dd e5                                      ldrb r2, [sp, #0x125]
008074b8  04 40 8f e0                                      add r4, pc, r4
008074bc  08 30 94 e7                                      ldr r3, [r4, r8]
008074c0  00 50 a0 e1                                      mov r5, r0
008074c4  01 00 52 e3                                      cmp r2, #1
008074c8  5c c6 04 e3                                      movw ip, #0x465c
008074cc  00 20 a0 e3                                      mov r2, #0
008074d0  0c 20 85 e7                                      str r2, [r5, ip]
008074d4  30 c6 03 e3                                      movw ip, #0x3630
008074d8  0c 20 c5 e7                                      strb r2, [r5, ip]
008074dc  08 00 83 e2                                      add r0, r3, #8
008074e0  00 10 e0 e3                                      mvn r1, #0
008074e4  01 30 a0 e3                                      mov r3, #1
008074e8  00 60 a0 e3                                      mov r6, #0
008074ec  00 70 a0 e3                                      mov r7, #0
008074f0  11 ce 8d e2                                      add ip, sp, #0x110
008074f4  f0 60 cc e1                                      strd r6, r7, [ip]
008074f8  1c 11 8d e5                                      str r1, [sp, #0x11c]
008074fc  24 21 cd e5                                      strb r2, [sp, #0x124]
00807500  08 01 8d e5                                      str r0, [sp, #0x108]
00807504  0c 31 8d e5                                      str r3, [sp, #0x10c]
00807508  18 11 8d e5                                      str r1, [sp, #0x118]
0080750c  20 21 8d e5                                      str r2, [sp, #0x120]
00807510  42 af 8d 02                                      addeq sl, sp, #0x108
00807514  03 00 00 0a                                      beq #0x807528
00807518  42 af 8d e2                                      add sl, sp, #0x108
0080751c  0a 00 a0 e1                                      mov r0, sl
00807520  25 31 cd e5                                      strb r3, [sp, #0x125]
00807524  96 36 00 eb                                      bl #0x814f84
00807528  18 74 9f e5                                      ldr r7, [pc, #0x418]
0080752c  18 14 9f e5                                      ldr r1, [pc, #0x418]
00807530  4b 6c 85 e2                                      add r6, r5, #0x4b00
00807534  07 20 94 e7                                      ldr r2, [r4, r7]
00807538  0c 10 8d e5                                      str r1, [sp, #0xc]
0080753c  50 3b 04 e3                                      movw r3, #0x4b50
00807540  08 20 82 e2                                      add r2, r2, #8
00807544  03 30 95 e7                                      ldr r3, [r5, r3]
00807548  1d 10 8a e2                                      add r1, sl, #0x1d
0080754c  08 21 8d e5                                      str r2, [sp, #0x108]
00807550  50 00 86 e2                                      add r0, r6, #0x50
00807554  0f e0 a0 e1                                      mov lr, pc
00807558  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0080755c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00807560  08 00 94 e7                                      ldr r0, [r4, r8]
00807564  05 31 dd e5                                      ldrb r3, [sp, #0x105]
00807568  02 c0 94 e7                                      ldr ip, [r4, r2]
0080756c  00 10 e0 e3                                      mvn r1, #0
00807570  01 00 53 e3                                      cmp r3, #1
00807574  00 20 a0 e3                                      mov r2, #0
00807578  00 80 a0 e3                                      mov r8, #0
0080757c  08 00 80 e2                                      add r0, r0, #8
00807580  08 c0 8c e2                                      add ip, ip, #8
00807584  01 30 a0 e3                                      mov r3, #1
00807588  00 90 a0 e3                                      mov sb, #0
0080758c  f0 8f cd e1                                      strd r8, sb, [sp, #0xf0]
00807590  08 c1 8d e5                                      str ip, [sp, #0x108]
00807594  fc 10 8d e5                                      str r1, [sp, #0xfc]
00807598  04 21 cd e5                                      strb r2, [sp, #0x104]
0080759c  e8 00 8d e5                                      str r0, [sp, #0xe8]
008075a0  ec 30 8d e5                                      str r3, [sp, #0xec]
008075a4  f8 10 8d e5                                      str r1, [sp, #0xf8]
008075a8  00 21 8d e5                                      str r2, [sp, #0x100]
008075ac  e8 80 8d 02                                      addeq r8, sp, #0xe8
008075b0  03 00 00 0a                                      beq #0x8075c4
008075b4  e8 80 8d e2                                      add r8, sp, #0xe8
008075b8  08 00 a0 e1                                      mov r0, r8
008075bc  05 31 cd e5                                      strb r3, [sp, #0x105]
008075c0  6f 36 00 eb                                      bl #0x814f84
008075c4  07 30 94 e7                                      ldr r3, [r4, r7]
008075c8  80 c3 9f e5                                      ldr ip, [pc, #0x380]
008075cc  1d 10 88 e2                                      add r1, r8, #0x1d
008075d0  08 30 83 e2                                      add r3, r3, #8
008075d4  e8 30 8d e5                                      str r3, [sp, #0xe8]
008075d8  14 c0 8d e5                                      str ip, [sp, #0x14]
008075dc  70 3b 04 e3                                      movw r3, #0x4b70
008075e0  03 30 95 e7                                      ldr r3, [r5, r3]
008075e4  70 00 86 e2                                      add r0, r6, #0x70
008075e8  0f e0 a0 e1                                      mov lr, pc
008075ec  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008075f0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
008075f4  14 20 9d e5                                      ldr r2, [sp, #0x14]
008075f8  e0 30 9d e5                                      ldr r3, [sp, #0xe0]
008075fc  01 00 94 e7                                      ldr r0, [r4, r1]
00807600  02 10 94 e7                                      ldr r1, [r4, r2]
00807604  00 00 53 e3                                      cmp r3, #0
00807608  08 00 80 e2                                      add r0, r0, #8
0080760c  00 20 e0 e3                                      mvn r2, #0
00807610  00 30 a0 e3                                      mov r3, #0
00807614  08 10 81 e2                                      add r1, r1, #8
00807618  e8 00 8d e5                                      str r0, [sp, #0xe8]
0080761c  00 80 a0 e3                                      mov r8, #0
00807620  20 00 a0 e3                                      mov r0, #0x20
00807624  00 90 a0 e3                                      mov sb, #0
00807628  c4 00 8d e5                                      str r0, [sp, #0xc4]
0080762c  f8 8c cd e1                                      strd r8, sb, [sp, #0xc8]
00807630  d4 20 8d e5                                      str r2, [sp, #0xd4]
00807634  c0 10 8d e5                                      str r1, [sp, #0xc0]
00807638  d0 20 8d e5                                      str r2, [sp, #0xd0]
0080763c  d8 30 8d e5                                      str r3, [sp, #0xd8]
00807640  dc 30 cd e5                                      strb r3, [sp, #0xdc]
00807644  c0 70 8d 02                                      addeq r7, sp, #0xc0
00807648  03 00 00 0a                                      beq #0x80765c
0080764c  c0 70 8d e2                                      add r7, sp, #0xc0
00807650  07 00 a0 e1                                      mov r0, r7
00807654  e0 30 8d e5                                      str r3, [sp, #0xe0]
00807658  49 36 00 eb                                      bl #0x814f84
0080765c  f0 32 9f e5                                      ldr r3, [pc, #0x2f0]
00807660  20 10 87 e2                                      add r1, r7, #0x20
00807664  b8 00 86 e2                                      add r0, r6, #0xb8
00807668  10 30 8d e5                                      str r3, [sp, #0x10]
0080766c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00807670  b8 3b 04 e3                                      movw r3, #0x4bb8
00807674  03 30 95 e7                                      ldr r3, [r5, r3]
00807678  0c 20 94 e7                                      ldr r2, [r4, ip]
0080767c  e4 9e 07 e3                                      movw sb, #0x7ee4
00807680  00 a0 e0 e3                                      mvn sl, #0
00807684  08 20 82 e2                                      add r2, r2, #8
00807688  c0 20 8d e5                                      str r2, [sp, #0xc0]
0080768c  0f e0 a0 e1                                      mov lr, pc
00807690  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00807694  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00807698  09 20 95 e7                                      ldr r2, [r5, sb]
0080769c  01 30 94 e7                                      ldr r3, [r4, r1]
008076a0  00 00 52 e3                                      cmp r2, #0
008076a4  01 10 e0 e3                                      mvn r1, #1
008076a8  08 30 83 e2                                      add r3, r3, #8
008076ac  3c 26 03 e3                                      movw r2, #0x363c
008076b0  02 10 85 e7                                      str r1, [r5, r2]
008076b4  c0 30 8d e5                                      str r3, [sp, #0xc0]
008076b8  38 36 03 e3                                      movw r3, #0x3638
008076bc  03 a0 85 e7                                      str sl, [r5, r3]
008076c0  31 00 00 da                                      ble #0x80778c
008076c4  14 20 9d e5                                      ldr r2, [sp, #0x14]
008076c8  98 b0 8d e2                                      add fp, sp, #0x98
008076cc  02 79 85 e2                                      add r7, r5, #0x8000
008076d0  02 30 94 e7                                      ldr r3, [r4, r2]
008076d4  00 60 a0 e3                                      mov r6, #0
008076d8  18 70 87 e2                                      add r7, r7, #0x18
008076dc  08 30 83 e2                                      add r3, r3, #8
008076e0  04 30 8d e5                                      str r3, [sp, #4]
008076e4  20 30 8b e2                                      add r3, fp, #0x20
008076e8  06 80 a0 e1                                      mov r8, r6
008076ec  08 30 8d e5                                      str r3, [sp, #8]
008076f0  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
008076f4  04 c0 9d e5                                      ldr ip, [sp, #4]
008076f8  20 10 a0 e3                                      mov r1, #0x20
008076fc  03 00 73 e3                                      cmn r3, #3
00807700  00 20 a0 e3                                      mov r2, #0
00807704  00 30 a0 e3                                      mov r3, #0
00807708  0b 00 a0 e1                                      mov r0, fp
0080770c  98 c0 8d e5                                      str ip, [sp, #0x98]
00807710  9c 10 8d e5                                      str r1, [sp, #0x9c]
00807714  f0 2a cd e1                                      strd r2, r3, [sp, #0xa0]
00807718  a8 a0 8d e5                                      str sl, [sp, #0xa8]
0080771c  ac a0 8d e5                                      str sl, [sp, #0xac]
00807720  b0 80 8d e5                                      str r8, [sp, #0xb0]
00807724  b4 80 cd e5                                      strb r8, [sp, #0xb4]
00807728  02 00 00 0a                                      beq #0x807738
0080772c  02 30 e0 e3                                      mvn r3, #2
00807730  b8 30 8d e5                                      str r3, [sp, #0xb8]
00807734  12 36 00 eb                                      bl #0x814f84
00807738  10 10 9d e5                                      ldr r1, [sp, #0x10]
0080773c  56 cf a0 e3                                      mov ip, #0x158
00807740  9c 06 00 e0                                      mul r0, ip, r6
00807744  01 30 94 e7                                      ldr r3, [r4, r1]
00807748  02 09 80 e2                                      add r0, r0, #0x8000
0080774c  18 00 80 e2                                      add r0, r0, #0x18
00807750  08 30 83 e2                                      add r3, r3, #8
00807754  98 30 8d e5                                      str r3, [sp, #0x98]
00807758  58 31 97 e4                                      ldr r3, [r7], #0x158
0080775c  00 00 85 e0                                      add r0, r5, r0
00807760  08 10 9d e5                                      ldr r1, [sp, #8]
00807764  0f e0 a0 e1                                      mov lr, pc
00807768  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0080776c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00807770  01 60 86 e2                                      add r6, r6, #1
00807774  02 30 94 e7                                      ldr r3, [r4, r2]
00807778  09 20 95 e7                                      ldr r2, [r5, sb]
0080777c  08 30 83 e2                                      add r3, r3, #8
00807780  02 00 56 e1                                      cmp r6, r2
00807784  98 30 8d e5                                      str r3, [sp, #0x98]
00807788  d8 ff ff ba                                      blt #0x8076f0
0080778c  46 7c 85 e2                                      add r7, r5, #0x4600
00807790  3c 30 87 e2                                      add r3, r7, #0x3c
00807794  03 00 a0 e1                                      mov r0, r3
00807798  54 66 04 e3                                      movw r6, #0x4654
0080779c  2c 30 8d e5                                      str r3, [sp, #0x2c]
008077a0  f1 1a 00 eb                                      bl #0x80e36c
008077a4  06 30 95 e7                                      ldr r3, [r5, r6]
008077a8  00 00 53 e3                                      cmp r3, #0
008077ac  56 00 00 1a                                      bne #0x80790c
008077b0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
008077b4  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
008077b8  70 20 8d e2                                      add r2, sp, #0x70
008077bc  0c 30 94 e7                                      ldr r3, [r4, ip]
008077c0  30 c0 8d e2                                      add ip, sp, #0x30
008077c4  1c 10 8d e5                                      str r1, [sp, #0x1c]
008077c8  08 30 83 e2                                      add r3, r3, #8
008077cc  4d 7c 85 e2                                      add r7, r5, #0x4d00
008077d0  18 20 8d e5                                      str r2, [sp, #0x18]
008077d4  4a bf 8d e2                                      add fp, sp, #0x128
008077d8  20 30 8d e5                                      str r3, [sp, #0x20]
008077dc  51 1f 8d e2                                      add r1, sp, #0x144
008077e0  20 20 82 e2                                      add r2, r2, #0x20
008077e4  20 30 8c e2                                      add r3, ip, #0x20
008077e8  00 60 a0 e3                                      mov r6, #0
008077ec  14 c0 8d e5                                      str ip, [sp, #0x14]
008077f0  38 70 87 e2                                      add r7, r7, #0x38
008077f4  04 10 8d e5                                      str r1, [sp, #4]
008077f8  00 90 e0 e3                                      mvn sb, #0
008077fc  24 20 8d e5                                      str r2, [sp, #0x24]
00807800  08 b0 8d e5                                      str fp, [sp, #8]
00807804  28 30 8d e5                                      str r3, [sp, #0x28]
00807808  05 a0 a0 e1                                      mov sl, r5
0080780c  90 30 9d e5                                      ldr r3, [sp, #0x90]
00807810  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00807814  00 20 a0 e3                                      mov r2, #0
00807818  01 00 73 e3                                      cmn r3, #1
0080781c  00 30 a0 e3                                      mov r3, #0
00807820  20 10 a0 e3                                      mov r1, #0x20
00807824  f8 27 cd e1                                      strd r2, r3, [sp, #0x78]
00807828  00 30 a0 e3                                      mov r3, #0
0080782c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00807830  70 c0 8d e5                                      str ip, [sp, #0x70]
00807834  74 10 8d e5                                      str r1, [sp, #0x74]
00807838  80 90 8d e5                                      str sb, [sp, #0x80]
0080783c  84 90 8d e5                                      str sb, [sp, #0x84]
00807840  88 30 8d e5                                      str r3, [sp, #0x88]
00807844  8c 30 cd e5                                      strb r3, [sp, #0x8c]
00807848  01 00 00 0a                                      beq #0x807854
0080784c  90 90 8d e5                                      str sb, [sp, #0x90]
00807850  cb 35 00 eb                                      bl #0x814f84
00807854  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00807858  66 1f a0 e3                                      mov r1, #0x198
0080785c  91 06 05 e0                                      mul r5, r1, r6
00807860  0c 30 94 e7                                      ldr r3, [r4, ip]
00807864  4d 5c 85 e2                                      add r5, r5, #0x4d00
00807868  10 00 85 e2                                      add r0, r5, #0x10
0080786c  08 30 83 e2                                      add r3, r3, #8
00807870  70 30 8d e5                                      str r3, [sp, #0x70]
00807874  28 30 17 e5                                      ldr r3, [r7, #-0x28]
00807878  24 10 9d e5                                      ldr r1, [sp, #0x24]
0080787c  00 00 8a e0                                      add r0, sl, r0
00807880  0f e0 a0 e1                                      mov lr, pc
00807884  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00807888  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0080788c  04 00 9d e5                                      ldr r0, [sp, #4]
00807890  01 60 86 e2                                      add r6, r6, #1
00807894  02 80 94 e7                                      ldr r8, [r4, r2]
00807898  08 80 88 e2                                      add r8, r8, #8
0080789c  70 80 8d e5                                      str r8, [sp, #0x70]
008078a0  b7 d2 ff eb                                      bl #0x7fc384
008078a4  04 c0 9d e5                                      ldr ip, [sp, #4]
008078a8  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
008078ac  0f 00 ab e8                                      stm fp!, {r0, r1, r2, r3}
008078b0  07 00 9c e8                                      ldm ip, {r0, r1, r2}
008078b4  07 00 8b e8                                      stm fp, {r0, r1, r2}
008078b8  08 10 9d e5                                      ldr r1, [sp, #8]
008078bc  14 00 9d e5                                      ldr r0, [sp, #0x14]
008078c0  02 fa ff eb                                      bl #0x8060d0
008078c4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
008078c8  38 00 85 e2                                      add r0, r5, #0x38
008078cc  00 00 8a e0                                      add r0, sl, r0
008078d0  0c 30 94 e7                                      ldr r3, [r4, ip]
008078d4  28 10 9d e5                                      ldr r1, [sp, #0x28]
008078d8  08 30 83 e2                                      add r3, r3, #8
008078dc  30 30 8d e5                                      str r3, [sp, #0x30]
008078e0  98 31 97 e4                                      ldr r3, [r7], #0x198
008078e4  0f e0 a0 e1                                      mov lr, pc
008078e8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008078ec  20 00 56 e3                                      cmp r6, #0x20
008078f0  30 80 8d e5                                      str r8, [sp, #0x30]
008078f4  08 b0 9d e5                                      ldr fp, [sp, #8]
008078f8  c3 ff ff 1a                                      bne #0x80780c
008078fc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00807900  98 1a 00 eb                                      bl #0x80e368
00807904  59 df 8d e2                                      add sp, sp, #0x164
00807908  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0080790c  44 70 87 e2                                      add r7, r7, #0x44
00807910  48 86 04 e3                                      movw r8, #0x4648
00807914  07 00 a0 e1                                      mov r0, r7
00807918  08 10 95 e7                                      ldr r1, [r5, r8]
0080791c  fe ea ff eb                                      bl #0x80251c
00807920  50 26 04 e3                                      movw r2, #0x4650
00807924  02 70 85 e7                                      str r7, [r5, r2]
00807928  00 30 a0 e3                                      mov r3, #0
0080792c  4c 26 04 e3                                      movw r2, #0x464c
00807930  06 30 85 e7                                      str r3, [r5, r6]
00807934  02 70 85 e7                                      str r7, [r5, r2]
00807938  08 30 85 e7                                      str r3, [r5, r8]
0080793c  9b ff ff ea                                      b #0x8077b0
; mapping-symbol data/literal pool
00807940  d8 d5 18 00 18 30 00 00 c8 0a 00 00 a8 10 00 00  .byte 0xd8, 0xd5, 0x18, 0x00, 0x18, 0x30, 0x00, 0x00, 0xc8, 0x0a, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
00807950  84 29 00 00 c8 10 00 00 f0 28 00 00              .byte 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00, 0xf0, 0x28, 0x00, 0x00

; FUNCTION 0x0080795c, declared_size=120, range_size=120, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal9LeaveRoomEv
; demangled: CMatchingLocal::LeaveRoom()
; decoder-mode: arm
0080795c  70 40 2d e9                                      push {r4, r5, r6, lr}
00807960  38 36 03 e3                                      movw r3, #0x3638
00807964  03 30 90 e7                                      ldr r3, [r0, r3]
00807968  5c 40 9f e5                                      ldr r4, [pc, #0x5c]
0080796c  00 50 a0 e1                                      mov r5, r0
00807970  00 00 53 e3                                      cmp r3, #0
00807974  04 40 8f e0                                      add r4, pc, r4
00807978  03 00 00 ba                                      blt #0x80798c
0080797c  3c 26 03 e3                                      movw r2, #0x363c
00807980  02 20 90 e7                                      ldr r2, [r0, r2]
00807984  02 00 53 e1                                      cmp r3, r2
00807988  0c 00 00 0a                                      beq #0x8079c0
0080798c  f8 d0 ff eb                                      bl #0x7fbd74
00807990  2f d1 ff eb                                      bl #0x7fbe54
00807994  05 00 a0 e1                                      mov r0, r5
00807998  c1 fe ff eb                                      bl #0x8074a4
0080799c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
008079a0  00 20 a0 e3                                      mov r2, #0
008079a4  02 15 a0 e3                                      mov r1, #0x800000
008079a8  03 00 94 e7                                      ldr r0, [r4, r3]
008079ac  04 10 81 e2                                      add r1, r1, #4
008079b0  02 30 a0 e1                                      mov r3, r2
008079b4  12 da ff eb                                      bl #0x7fe204
008079b8  00 00 a0 e3                                      mov r0, #0
008079bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
008079c0  01 10 a0 e3                                      mov r1, #1
008079c4  05 f9 ff eb                                      bl #0x805de0
008079c8  ef ff ff ea                                      b #0x80798c
; mapping-symbol data/literal pool
008079cc  1c d1 18 00 3c 34 00 00                          .byte 0x1c, 0xd1, 0x18, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x008079d4, declared_size=536, range_size=536, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal22CreateJoinRoomInternalEbR15CRoomAttributes
; demangled: CMatchingLocal::CreateJoinRoomInternal(bool, CRoomAttributes&)
; decoder-mode: arm
008079d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008079d8  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
008079dc  f0 51 9f e5                                      ldr r5, [pc, #0x1f0]
008079e0  00 40 a0 e1                                      mov r4, r0
008079e4  00 00 53 e3                                      cmp r3, #0
008079e8  05 50 8f e0                                      add r5, pc, r5
008079ec  a4 d0 4d e2                                      sub sp, sp, #0xa4
008079f0  01 a0 a0 e1                                      mov sl, r1
008079f4  02 80 a0 e1                                      mov r8, r2
008079f8  00 00 e0 03                                      mvneq r0, #0
008079fc  01 00 00 1a                                      bne #0x807a08
00807a00  a4 d0 8d e2                                      add sp, sp, #0xa4
00807a04  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00807a08  a5 fe ff eb                                      bl #0x8074a4
00807a0c  01 20 a0 e3                                      mov r2, #1
00807a10  30 36 03 e3                                      movw r3, #0x3630
00807a14  03 20 c4 e7                                      strb r2, [r4, r3]
00807a18  00 30 94 e5                                      ldr r3, [r4]
00807a1c  04 00 a0 e1                                      mov r0, r4
00807a20  0f e0 a0 e1                                      mov lr, pc
00807a24  ac f0 93 e5                                      ldr pc, [r3, #0xac]
00807a28  38 76 03 e3                                      movw r7, #0x3638
00807a2c  3c 36 03 e3                                      movw r3, #0x363c
00807a30  00 60 a0 e3                                      mov r6, #0
00807a34  03 00 84 e7                                      str r0, [r4, r3]
00807a38  07 00 84 e7                                      str r0, [r4, r7]
00807a3c  0a 10 a0 e1                                      mov r1, sl
00807a40  0d 60 c4 e5                                      strb r6, [r4, #0xd]
00807a44  00 30 94 e5                                      ldr r3, [r4]
00807a48  04 00 a0 e1                                      mov r0, r4
00807a4c  0f e0 a0 e1                                      mov lr, pc
00807a50  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00807a54  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
00807a58  02 15 a0 e3                                      mov r1, #0x800000
00807a5c  06 20 a0 e1                                      mov r2, r6
00807a60  03 00 95 e7                                      ldr r0, [r5, r3]
00807a64  03 10 81 e2                                      add r1, r1, #3
00807a68  06 30 a0 e1                                      mov r3, r6
00807a6c  e4 d9 ff eb                                      bl #0x7fe204
00807a70  46 0c 84 e2                                      add r0, r4, #0x4600
00807a74  08 10 a0 e1                                      mov r1, r8
00807a78  60 00 80 e2                                      add r0, r0, #0x60
00807a7c  aa 43 00 eb                                      bl #0x81892c
00807a80  07 10 94 e7                                      ldr r1, [r4, r7]
00807a84  04 00 a0 e1                                      mov r0, r4
00807a88  c3 da ff eb                                      bl #0x7fe59c
00807a8c  48 21 9f e5                                      ldr r2, [pc, #0x148]
00807a90  07 30 94 e7                                      ldr r3, [r4, r7]
00807a94  00 80 a0 e1                                      mov r8, r0
00807a98  02 20 95 e7                                      ldr r2, [r5, r2]
00807a9c  60 00 9d e5                                      ldr r0, [sp, #0x60]
00807aa0  00 10 e0 e3                                      mvn r1, #0
00807aa4  08 20 82 e2                                      add r2, r2, #8
00807aa8  00 00 53 e1                                      cmp r3, r0
00807aac  00 a0 a0 e3                                      mov sl, #0
00807ab0  20 00 a0 e3                                      mov r0, #0x20
00807ab4  00 b0 a0 e3                                      mov fp, #0
00807ab8  5c 60 cd e5                                      strb r6, [sp, #0x5c]
00807abc  58 60 8d e5                                      str r6, [sp, #0x58]
00807ac0  44 00 8d e5                                      str r0, [sp, #0x44]
00807ac4  f8 a4 cd e1                                      strd sl, fp, [sp, #0x48]
00807ac8  54 10 8d e5                                      str r1, [sp, #0x54]
00807acc  40 20 8d e5                                      str r2, [sp, #0x40]
00807ad0  50 10 8d e5                                      str r1, [sp, #0x50]
00807ad4  40 60 8d 02                                      addeq r6, sp, #0x40
00807ad8  03 00 00 0a                                      beq #0x807aec
00807adc  40 60 8d e2                                      add r6, sp, #0x40
00807ae0  06 00 a0 e1                                      mov r0, r6
00807ae4  60 30 8d e5                                      str r3, [sp, #0x60]
00807ae8  25 35 00 eb                                      bl #0x814f84
00807aec  ec 30 9f e5                                      ldr r3, [pc, #0xec]
00807af0  66 2f a0 e3                                      mov r2, #0x198
00807af4  92 08 08 e0                                      mul r8, r2, r8
00807af8  03 30 95 e7                                      ldr r3, [r5, r3]
00807afc  4d 7c 88 e2                                      add r7, r8, #0x4d00
00807b00  dc 90 9f e5                                      ldr sb, [pc, #0xdc]
00807b04  08 30 83 e2                                      add r3, r3, #8
00807b08  40 30 8d e5                                      str r3, [sp, #0x40]
00807b0c  08 80 84 e0                                      add r8, r4, r8
00807b10  10 00 87 e2                                      add r0, r7, #0x10
00807b14  10 3d 04 e3                                      movw r3, #0x4d10
00807b18  20 10 86 e2                                      add r1, r6, #0x20
00807b1c  03 30 98 e7                                      ldr r3, [r8, r3]
00807b20  00 00 84 e0                                      add r0, r4, r0
00807b24  0f e0 a0 e1                                      mov lr, pc
00807b28  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00807b2c  09 90 95 e7                                      ldr sb, [r5, sb]
00807b30  84 a0 8d e2                                      add sl, sp, #0x84
00807b34  0d 60 a0 e1                                      mov r6, sp
00807b38  08 90 89 e2                                      add sb, sb, #8
00807b3c  40 90 8d e5                                      str sb, [sp, #0x40]
00807b40  ae 4b 00 eb                                      bl #0x81aa00
00807b44  00 20 a0 e3                                      mov r2, #0
00807b48  00 10 a0 e1                                      mov r1, r0
00807b4c  0a 00 a0 e1                                      mov r0, sl
00807b50  76 4c 00 eb                                      bl #0x81ad30
00807b54  0f 00 ba e8                                      ldm sl!, {r0, r1, r2, r3}
00807b58  68 c0 8d e2                                      add ip, sp, #0x68
00807b5c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00807b60  07 00 9a e8                                      ldm sl, {r0, r1, r2}
00807b64  07 00 8c e8                                      stm ip, {r0, r1, r2}
00807b68  68 10 8d e2                                      add r1, sp, #0x68
00807b6c  0d 00 a0 e1                                      mov r0, sp
00807b70  56 f9 ff eb                                      bl #0x8060d0
00807b74  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00807b78  38 00 87 e2                                      add r0, r7, #0x38
00807b7c  00 00 84 e0                                      add r0, r4, r0
00807b80  03 30 95 e7                                      ldr r3, [r5, r3]
00807b84  20 10 8d e2                                      add r1, sp, #0x20
00807b88  08 30 83 e2                                      add r3, r3, #8
00807b8c  00 30 8d e5                                      str r3, [sp]
00807b90  38 3d 04 e3                                      movw r3, #0x4d38
00807b94  03 30 98 e7                                      ldr r3, [r8, r3]
00807b98  0f e0 a0 e1                                      mov lr, pc
00807b9c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00807ba0  00 90 8d e5                                      str sb, [sp]
00807ba4  00 30 94 e5                                      ldr r3, [r4]
00807ba8  04 00 a0 e1                                      mov r0, r4
00807bac  0f e0 a0 e1                                      mov lr, pc
00807bb0  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00807bb4  00 50 50 e2                                      subs r5, r0, #0
00807bb8  00 00 a0 13                                      movne r0, #0
00807bbc  8f ff ff 1a                                      bne #0x807a00
00807bc0  04 00 a0 e1                                      mov r0, r4
00807bc4  05 10 a0 e1                                      mov r1, r5
00807bc8  84 f8 ff eb                                      bl #0x805de0
00807bcc  05 00 a0 e1                                      mov r0, r5
00807bd0  8a ff ff ea                                      b #0x807a00
; mapping-symbol data/literal pool
00807bd4  a8 d0 18 00 3c 34 00 00 84 29 00 00 c8 10 00 00  .byte 0xa8, 0xd0, 0x18, 0x00, 0x3c, 0x34, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
00807be4  a8 10 00 00 f0 28 00 00                          .byte 0xa8, 0x10, 0x00, 0x00, 0xf0, 0x28, 0x00, 0x00

; FUNCTION 0x00807bec, declared_size=132, range_size=132, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal18SearchRoomInternalER17CRoomSearchFilterbh
; demangled: CMatchingLocal::SearchRoomInternal(CRoomSearchFilter&, bool, unsigned char)
; decoder-mode: arm
00807bec  70 40 2d e9                                      push {r4, r5, r6, lr}
00807bf0  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00807bf4  6c 40 9f e5                                      ldr r4, [pc, #0x6c]
00807bf8  00 50 a0 e1                                      mov r5, r0
00807bfc  00 00 53 e3                                      cmp r3, #0
00807c00  01 60 a0 e1                                      mov r6, r1
00807c04  04 40 8f e0                                      add r4, pc, r4
00807c08  01 00 00 1a                                      bne #0x807c14
00807c0c  00 00 e0 e3                                      mvn r0, #0
00807c10  70 80 bd e8                                      pop {r4, r5, r6, pc}
00807c14  22 fe ff eb                                      bl #0x8074a4
00807c18  49 0c 85 e2                                      add r0, r5, #0x4900
00807c1c  f8 00 80 e2                                      add r0, r0, #0xf8
00807c20  06 10 a0 e1                                      mov r1, r6
00807c24  f8 49 00 eb                                      bl #0x81a40c
00807c28  54 36 04 e3                                      movw r3, #0x4654
00807c2c  03 00 95 e7                                      ldr r0, [r5, r3]
00807c30  01 20 a0 e3                                      mov r2, #1
00807c34  30 36 03 e3                                      movw r3, #0x3630
00807c38  00 00 50 e3                                      cmp r0, #0
00807c3c  03 20 c5 e7                                      strb r2, [r5, r3]
00807c40  07 00 00 0a                                      beq #0x807c64
00807c44  20 30 9f e5                                      ldr r3, [pc, #0x20]
00807c48  00 20 a0 e3                                      mov r2, #0
00807c4c  02 15 a0 e3                                      mov r1, #0x800000
00807c50  03 00 94 e7                                      ldr r0, [r4, r3]
00807c54  0e 10 81 e2                                      add r1, r1, #0xe
00807c58  02 30 a0 e1                                      mov r3, r2
00807c5c  68 d9 ff eb                                      bl #0x7fe204
00807c60  00 00 a0 e3                                      mov r0, #0
00807c64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00807c68  8c ce 18 00 3c 34 00 00                          .byte 0x8c, 0xce, 0x18, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x00807c70, declared_size=152, range_size=152, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal10InitializeEi
; demangled: CMatchingLocal::Initialize(int)
; decoder-mode: arm
00807c70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00807c74  00 60 a0 e1                                      mov r6, r0
00807c78  f7 de ff eb                                      bl #0x7ff85c
00807c7c  0c 50 d6 e5                                      ldrb r5, [r6, #0xc]
00807c80  70 40 9f e5                                      ldr r4, [pc, #0x70]
00807c84  00 00 55 e3                                      cmp r5, #0
00807c88  04 40 8f e0                                      add r4, pc, r4
00807c8c  17 00 00 1a                                      bne #0x807cf0
00807c90  64 30 9f e5                                      ldr r3, [pc, #0x64]
00807c94  02 00 a0 e3                                      mov r0, #2
00807c98  00 10 a0 e1                                      mov r1, r0
00807c9c  03 70 94 e7                                      ldr r7, [r4, r3]
00807ca0  07 20 a0 e1                                      mov r2, r7
00807ca4  bb d0 ff eb                                      bl #0x7fbf98
00807ca8  07 20 a0 e1                                      mov r2, r7
00807cac  01 10 a0 e3                                      mov r1, #1
00807cb0  03 00 a0 e3                                      mov r0, #3
00807cb4  b7 d0 ff eb                                      bl #0x7fbf98
00807cb8  40 30 9f e5                                      ldr r3, [pc, #0x40]
00807cbc  01 10 a0 e3                                      mov r1, #1
00807cc0  04 00 a0 e3                                      mov r0, #4
00807cc4  03 20 94 e7                                      ldr r2, [r4, r3]
00807cc8  a3 d0 ff eb                                      bl #0x7fbf5c
00807ccc  06 00 a0 e1                                      mov r0, r6
00807cd0  f3 fd ff eb                                      bl #0x8074a4
00807cd4  28 30 9f e5                                      ldr r3, [pc, #0x28]
00807cd8  02 15 a0 e3                                      mov r1, #0x800000
00807cdc  05 20 a0 e1                                      mov r2, r5
00807ce0  03 00 94 e7                                      ldr r0, [r4, r3]
00807ce4  01 10 81 e2                                      add r1, r1, #1
00807ce8  05 30 a0 e1                                      mov r3, r5
00807cec  44 d9 ff eb                                      bl #0x7fe204
00807cf0  00 00 a0 e3                                      mov r0, #0
00807cf4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00807cf8  08 ce 18 00 64 07 00 00 50 32 00 00 3c 34 00 00  .byte 0x08, 0xce, 0x18, 0x00, 0x64, 0x07, 0x00, 0x00, 0x50, 0x32, 0x00, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x00807d08, declared_size=316, range_size=316, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocalC1Ev
; demangled: CMatchingLocal::CMatchingLocal()
; decoder-mode: arm
00807d08  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00807d0c  24 71 9f e5                                      ldr r7, [pc, #0x124]
00807d10  00 60 a0 e1                                      mov r6, r0
00807d14  c8 e0 ff eb                                      bl #0x80003c
00807d18  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
00807d1c  07 70 8f e0                                      add r7, pc, r7
00807d20  01 10 a0 e3                                      mov r1, #1
00807d24  03 30 97 e7                                      ldr r3, [r7, r3]
00807d28  34 26 03 e3                                      movw r2, #0x3634
00807d2c  02 10 86 e7                                      str r1, [r6, r2]
00807d30  00 10 e0 e3                                      mvn r1, #0
00807d34  38 26 03 e3                                      movw r2, #0x3638
00807d38  02 10 86 e7                                      str r1, [r6, r2]
00807d3c  08 30 83 e2                                      add r3, r3, #8
00807d40  01 10 e0 e3                                      mvn r1, #1
00807d44  3c 26 03 e3                                      movw r2, #0x363c
00807d48  02 10 86 e7                                      str r1, [r6, r2]
00807d4c  46 5c 86 e2                                      add r5, r6, #0x4600
00807d50  00 40 a0 e3                                      mov r4, #0
00807d54  00 30 86 e5                                      str r3, [r6]
00807d58  30 36 03 e3                                      movw r3, #0x3630
00807d5c  03 40 c6 e7                                      strb r4, [r6, r3]
00807d60  38 00 85 e2                                      add r0, r5, #0x38
00807d64  8b 19 00 eb                                      bl #0x80e398
00807d68  3c 00 85 e2                                      add r0, r5, #0x3c
00807d6c  89 19 00 eb                                      bl #0x80e398
00807d70  40 00 85 e2                                      add r0, r5, #0x40
00807d74  87 19 00 eb                                      bl #0x80e398
00807d78  44 30 85 e2                                      add r3, r5, #0x44
00807d7c  50 26 04 e3                                      movw r2, #0x4650
00807d80  02 30 86 e7                                      str r3, [r6, r2]
00807d84  48 26 04 e3                                      movw r2, #0x4648
00807d88  02 40 86 e7                                      str r4, [r6, r2]
00807d8c  44 26 04 e3                                      movw r2, #0x4644
00807d90  02 40 c6 e7                                      strb r4, [r6, r2]
00807d94  4c 26 04 e3                                      movw r2, #0x464c
00807d98  02 30 86 e7                                      str r3, [r6, r2]
00807d9c  54 36 04 e3                                      movw r3, #0x4654
00807da0  03 40 86 e7                                      str r4, [r6, r3]
00807da4  5c 36 04 e3                                      movw r3, #0x465c
00807da8  03 40 86 e7                                      str r4, [r6, r3]
00807dac  60 00 85 e2                                      add r0, r5, #0x60
00807db0  f3 44 00 eb                                      bl #0x819184
00807db4  49 0c 86 e2                                      add r0, r6, #0x4900
00807db8  f8 00 80 e2                                      add r0, r0, #0xf8
00807dbc  1e 45 00 eb                                      bl #0x81923c
00807dc0  4a 0c 86 e2                                      add r0, r6, #0x4a00
00807dc4  20 00 80 e2                                      add r0, r0, #0x20
00807dc8  e5 fa ff eb                                      bl #0x806964
00807dcc  4b 5c 86 e2                                      add r5, r6, #0x4b00
00807dd0  e0 50 85 e2                                      add r5, r5, #0xe0
00807dd4  04 00 85 e0                                      add r0, r5, r4
00807dd8  66 4f 84 e2                                      add r4, r4, #0x198
00807ddc  6d fb ff eb                                      bl #0x806b98
00807de0  33 0c 54 e3                                      cmp r4, #0x3300
00807de4  fa ff ff 1a                                      bne #0x807dd4
00807de8  50 30 9f e5                                      ldr r3, [pc, #0x50]
00807dec  e0 2e 07 e3                                      movw r2, #0x7ee0
00807df0  7e 5c 86 e2                                      add r5, r6, #0x7e00
00807df4  03 30 97 e7                                      ldr r3, [r7, r3]
00807df8  e8 50 85 e2                                      add r5, r5, #0xe8
00807dfc  00 40 a0 e3                                      mov r4, #0
00807e00  08 30 83 e2                                      add r3, r3, #8
00807e04  02 30 86 e7                                      str r3, [r6, r2]
00807e08  20 20 a0 e3                                      mov r2, #0x20
00807e0c  e4 3e 07 e3                                      movw r3, #0x7ee4
00807e10  03 20 86 e7                                      str r2, [r6, r3]
00807e14  04 00 85 e0                                      add r0, r5, r4
00807e18  56 4f 84 e2                                      add r4, r4, #0x158
00807e1c  a2 fb ff eb                                      bl #0x806cac
00807e20  2b 0c 54 e3                                      cmp r4, #0x2b00
00807e24  fa ff ff 1a                                      bne #0x807e14
00807e28  06 00 a0 e1                                      mov r0, r6
00807e2c  9c fd ff eb                                      bl #0x8074a4
00807e30  06 00 a0 e1                                      mov r0, r6
00807e34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00807e38  74 cd 18 00 0c 40 00 00 54 26 00 00              .byte 0x74, 0xcd, 0x18, 0x00, 0x0c, 0x40, 0x00, 0x00, 0x54, 0x26, 0x00, 0x00

; FUNCTION 0x00807e44, declared_size=316, range_size=316, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocalC2Ev
; demangled: CMatchingLocal::CMatchingLocal()
; decoder-mode: arm
00807e44  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00807e48  24 71 9f e5                                      ldr r7, [pc, #0x124]
00807e4c  00 60 a0 e1                                      mov r6, r0
00807e50  79 e0 ff eb                                      bl #0x80003c
00807e54  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
00807e58  07 70 8f e0                                      add r7, pc, r7
00807e5c  01 10 a0 e3                                      mov r1, #1
00807e60  03 30 97 e7                                      ldr r3, [r7, r3]
00807e64  34 26 03 e3                                      movw r2, #0x3634
00807e68  02 10 86 e7                                      str r1, [r6, r2]
00807e6c  00 10 e0 e3                                      mvn r1, #0
00807e70  38 26 03 e3                                      movw r2, #0x3638
00807e74  02 10 86 e7                                      str r1, [r6, r2]
00807e78  08 30 83 e2                                      add r3, r3, #8
00807e7c  01 10 e0 e3                                      mvn r1, #1
00807e80  3c 26 03 e3                                      movw r2, #0x363c
00807e84  02 10 86 e7                                      str r1, [r6, r2]
00807e88  46 5c 86 e2                                      add r5, r6, #0x4600
00807e8c  00 40 a0 e3                                      mov r4, #0
00807e90  00 30 86 e5                                      str r3, [r6]
00807e94  30 36 03 e3                                      movw r3, #0x3630
00807e98  03 40 c6 e7                                      strb r4, [r6, r3]
00807e9c  38 00 85 e2                                      add r0, r5, #0x38
00807ea0  3c 19 00 eb                                      bl #0x80e398
00807ea4  3c 00 85 e2                                      add r0, r5, #0x3c
00807ea8  3a 19 00 eb                                      bl #0x80e398
00807eac  40 00 85 e2                                      add r0, r5, #0x40
00807eb0  38 19 00 eb                                      bl #0x80e398
00807eb4  44 30 85 e2                                      add r3, r5, #0x44
00807eb8  50 26 04 e3                                      movw r2, #0x4650
00807ebc  02 30 86 e7                                      str r3, [r6, r2]
00807ec0  48 26 04 e3                                      movw r2, #0x4648
00807ec4  02 40 86 e7                                      str r4, [r6, r2]
00807ec8  44 26 04 e3                                      movw r2, #0x4644
00807ecc  02 40 c6 e7                                      strb r4, [r6, r2]
00807ed0  4c 26 04 e3                                      movw r2, #0x464c
00807ed4  02 30 86 e7                                      str r3, [r6, r2]
00807ed8  54 36 04 e3                                      movw r3, #0x4654
00807edc  03 40 86 e7                                      str r4, [r6, r3]
00807ee0  5c 36 04 e3                                      movw r3, #0x465c
00807ee4  03 40 86 e7                                      str r4, [r6, r3]
00807ee8  60 00 85 e2                                      add r0, r5, #0x60
00807eec  a4 44 00 eb                                      bl #0x819184
00807ef0  49 0c 86 e2                                      add r0, r6, #0x4900
00807ef4  f8 00 80 e2                                      add r0, r0, #0xf8
00807ef8  cf 44 00 eb                                      bl #0x81923c
00807efc  4a 0c 86 e2                                      add r0, r6, #0x4a00
00807f00  20 00 80 e2                                      add r0, r0, #0x20
00807f04  96 fa ff eb                                      bl #0x806964
00807f08  4b 5c 86 e2                                      add r5, r6, #0x4b00
00807f0c  e0 50 85 e2                                      add r5, r5, #0xe0
00807f10  04 00 85 e0                                      add r0, r5, r4
00807f14  66 4f 84 e2                                      add r4, r4, #0x198
00807f18  1e fb ff eb                                      bl #0x806b98
00807f1c  33 0c 54 e3                                      cmp r4, #0x3300
00807f20  fa ff ff 1a                                      bne #0x807f10
00807f24  50 30 9f e5                                      ldr r3, [pc, #0x50]
00807f28  e0 2e 07 e3                                      movw r2, #0x7ee0
00807f2c  7e 5c 86 e2                                      add r5, r6, #0x7e00
00807f30  03 30 97 e7                                      ldr r3, [r7, r3]
00807f34  e8 50 85 e2                                      add r5, r5, #0xe8
00807f38  00 40 a0 e3                                      mov r4, #0
00807f3c  08 30 83 e2                                      add r3, r3, #8
00807f40  02 30 86 e7                                      str r3, [r6, r2]
00807f44  20 20 a0 e3                                      mov r2, #0x20
00807f48  e4 3e 07 e3                                      movw r3, #0x7ee4
00807f4c  03 20 86 e7                                      str r2, [r6, r3]
00807f50  04 00 85 e0                                      add r0, r5, r4
00807f54  56 4f 84 e2                                      add r4, r4, #0x158
00807f58  53 fb ff eb                                      bl #0x806cac
00807f5c  2b 0c 54 e3                                      cmp r4, #0x2b00
00807f60  fa ff ff 1a                                      bne #0x807f50
00807f64  06 00 a0 e1                                      mov r0, r6
00807f68  4d fd ff eb                                      bl #0x8074a4
00807f6c  06 00 a0 e1                                      mov r0, r6
00807f70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00807f74  38 cc 18 00 0c 40 00 00 54 26 00 00              .byte 0x38, 0xcc, 0x18, 0x00, 0x0c, 0x40, 0x00, 0x00, 0x54, 0x26, 0x00, 0x00

; FUNCTION 0x00807f80, declared_size=276, range_size=276, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocalD1Ev
; demangled: CMatchingLocal::~CMatchingLocal()
; decoder-mode: arm
00807f80  00 31 9f e5                                      ldr r3, [pc, #0x100]
00807f84  00 11 9f e5                                      ldr r1, [pc, #0x100]
00807f88  00 21 9f e5                                      ldr r2, [pc, #0x100]
00807f8c  03 30 8f e0                                      add r3, pc, r3
00807f90  01 10 93 e7                                      ldr r1, [r3, r1]
00807f94  02 20 93 e7                                      ldr r2, [r3, r2]
00807f98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00807f9c  7e 6c 80 e2                                      add r6, r0, #0x7e00
00807fa0  00 40 a0 e1                                      mov r4, r0
00807fa4  08 10 81 e2                                      add r1, r1, #8
00807fa8  08 20 82 e2                                      add r2, r2, #8
00807fac  e8 60 86 e2                                      add r6, r6, #0xe8
00807fb0  e0 0e 07 e3                                      movw r0, #0x7ee0
00807fb4  00 20 84 e7                                      str r2, [r4, r0]
00807fb8  2b 5c 86 e2                                      add r5, r6, #0x2b00
00807fbc  00 10 84 e5                                      str r1, [r4]
00807fc0  58 31 35 e5                                      ldr r3, [r5, #-0x158]!
00807fc4  05 00 a0 e1                                      mov r0, r5
00807fc8  0f e0 a0 e1                                      mov lr, pc
00807fcc  00 f0 93 e5                                      ldr pc, [r3]
00807fd0  06 00 55 e1                                      cmp r5, r6
00807fd4  f9 ff ff 1a                                      bne #0x807fc0
00807fd8  4b 6c 84 e2                                      add r6, r4, #0x4b00
00807fdc  e0 60 86 e2                                      add r6, r6, #0xe0
00807fe0  33 5c 86 e2                                      add r5, r6, #0x3300
00807fe4  98 31 35 e5                                      ldr r3, [r5, #-0x198]!
00807fe8  05 00 a0 e1                                      mov r0, r5
00807fec  0f e0 a0 e1                                      mov lr, pc
00807ff0  00 f0 93 e5                                      ldr pc, [r3]
00807ff4  06 00 55 e1                                      cmp r5, r6
00807ff8  f9 ff ff 1a                                      bne #0x807fe4
00807ffc  4a 0c 84 e2                                      add r0, r4, #0x4a00
00808000  20 00 80 e2                                      add r0, r0, #0x20
00808004  6c f8 ff eb                                      bl #0x8061bc
00808008  49 0c 84 e2                                      add r0, r4, #0x4900
0080800c  f8 00 80 e2                                      add r0, r0, #0xf8
00808010  46 5c 84 e2                                      add r5, r4, #0x4600
00808014  12 47 00 eb                                      bl #0x819c64
00808018  54 66 04 e3                                      movw r6, #0x4654
0080801c  60 00 85 e2                                      add r0, r5, #0x60
00808020  fb 42 00 eb                                      bl #0x818c14
00808024  06 30 94 e7                                      ldr r3, [r4, r6]
00808028  00 00 53 e3                                      cmp r3, #0
0080802c  0b 00 00 0a                                      beq #0x808060
00808030  44 70 85 e2                                      add r7, r5, #0x44
00808034  48 86 04 e3                                      movw r8, #0x4648
00808038  07 00 a0 e1                                      mov r0, r7
0080803c  08 10 94 e7                                      ldr r1, [r4, r8]
00808040  35 e9 ff eb                                      bl #0x80251c
00808044  50 26 04 e3                                      movw r2, #0x4650
00808048  02 70 84 e7                                      str r7, [r4, r2]
0080804c  00 30 a0 e3                                      mov r3, #0
00808050  4c 26 04 e3                                      movw r2, #0x464c
00808054  06 30 84 e7                                      str r3, [r4, r6]
00808058  02 70 84 e7                                      str r7, [r4, r2]
0080805c  08 30 84 e7                                      str r3, [r4, r8]
00808060  40 00 85 e2                                      add r0, r5, #0x40
00808064  c1 18 00 eb                                      bl #0x80e370
00808068  3c 00 85 e2                                      add r0, r5, #0x3c
0080806c  bf 18 00 eb                                      bl #0x80e370
00808070  38 00 85 e2                                      add r0, r5, #0x38
00808074  bd 18 00 eb                                      bl #0x80e370
00808078  04 00 a0 e1                                      mov r0, r4
0080807c  79 e2 ff eb                                      bl #0x800a68
00808080  04 00 a0 e1                                      mov r0, r4
00808084  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00808088  04 cb 18 00 0c 40 00 00 54 26 00 00              .byte 0x04, 0xcb, 0x18, 0x00, 0x0c, 0x40, 0x00, 0x00, 0x54, 0x26, 0x00, 0x00

; FUNCTION 0x00808094, declared_size=28, range_size=28, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocalD0Ev
; demangled: CMatchingLocal::~CMatchingLocal()
; decoder-mode: arm
00808094  10 40 2d e9                                      push {r4, lr}
00808098  00 40 a0 e1                                      mov r4, r0
0080809c  b7 ff ff eb                                      bl #0x807f80
008080a0  04 00 a0 e1                                      mov r0, r4
008080a4  e5 20 ec eb                                      bl #0x310440
008080a8  04 00 a0 e1                                      mov r0, r4
008080ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008080b0, declared_size=276, range_size=276, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocalD2Ev
; demangled: CMatchingLocal::~CMatchingLocal()
; decoder-mode: arm
008080b0  00 31 9f e5                                      ldr r3, [pc, #0x100]
008080b4  00 11 9f e5                                      ldr r1, [pc, #0x100]
008080b8  00 21 9f e5                                      ldr r2, [pc, #0x100]
008080bc  03 30 8f e0                                      add r3, pc, r3
008080c0  01 10 93 e7                                      ldr r1, [r3, r1]
008080c4  02 20 93 e7                                      ldr r2, [r3, r2]
008080c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008080cc  7e 6c 80 e2                                      add r6, r0, #0x7e00
008080d0  00 40 a0 e1                                      mov r4, r0
008080d4  08 10 81 e2                                      add r1, r1, #8
008080d8  08 20 82 e2                                      add r2, r2, #8
008080dc  e8 60 86 e2                                      add r6, r6, #0xe8
008080e0  e0 0e 07 e3                                      movw r0, #0x7ee0
008080e4  00 20 84 e7                                      str r2, [r4, r0]
008080e8  2b 5c 86 e2                                      add r5, r6, #0x2b00
008080ec  00 10 84 e5                                      str r1, [r4]
008080f0  58 31 35 e5                                      ldr r3, [r5, #-0x158]!
008080f4  05 00 a0 e1                                      mov r0, r5
008080f8  0f e0 a0 e1                                      mov lr, pc
008080fc  00 f0 93 e5                                      ldr pc, [r3]
00808100  06 00 55 e1                                      cmp r5, r6
00808104  f9 ff ff 1a                                      bne #0x8080f0
00808108  4b 6c 84 e2                                      add r6, r4, #0x4b00
0080810c  e0 60 86 e2                                      add r6, r6, #0xe0
00808110  33 5c 86 e2                                      add r5, r6, #0x3300
00808114  98 31 35 e5                                      ldr r3, [r5, #-0x198]!
00808118  05 00 a0 e1                                      mov r0, r5
0080811c  0f e0 a0 e1                                      mov lr, pc
00808120  00 f0 93 e5                                      ldr pc, [r3]
00808124  06 00 55 e1                                      cmp r5, r6
00808128  f9 ff ff 1a                                      bne #0x808114
0080812c  4a 0c 84 e2                                      add r0, r4, #0x4a00
00808130  20 00 80 e2                                      add r0, r0, #0x20
00808134  20 f8 ff eb                                      bl #0x8061bc
00808138  49 0c 84 e2                                      add r0, r4, #0x4900
0080813c  f8 00 80 e2                                      add r0, r0, #0xf8
00808140  46 5c 84 e2                                      add r5, r4, #0x4600
00808144  c6 46 00 eb                                      bl #0x819c64
00808148  54 66 04 e3                                      movw r6, #0x4654
0080814c  60 00 85 e2                                      add r0, r5, #0x60
00808150  af 42 00 eb                                      bl #0x818c14
00808154  06 30 94 e7                                      ldr r3, [r4, r6]
00808158  00 00 53 e3                                      cmp r3, #0
0080815c  0b 00 00 0a                                      beq #0x808190
00808160  44 70 85 e2                                      add r7, r5, #0x44
00808164  48 86 04 e3                                      movw r8, #0x4648
00808168  07 00 a0 e1                                      mov r0, r7
0080816c  08 10 94 e7                                      ldr r1, [r4, r8]
00808170  e9 e8 ff eb                                      bl #0x80251c
00808174  50 26 04 e3                                      movw r2, #0x4650
00808178  02 70 84 e7                                      str r7, [r4, r2]
0080817c  00 30 a0 e3                                      mov r3, #0
00808180  4c 26 04 e3                                      movw r2, #0x464c
00808184  06 30 84 e7                                      str r3, [r4, r6]
00808188  02 70 84 e7                                      str r7, [r4, r2]
0080818c  08 30 84 e7                                      str r3, [r4, r8]
00808190  40 00 85 e2                                      add r0, r5, #0x40
00808194  75 18 00 eb                                      bl #0x80e370
00808198  3c 00 85 e2                                      add r0, r5, #0x3c
0080819c  73 18 00 eb                                      bl #0x80e370
008081a0  38 00 85 e2                                      add r0, r5, #0x38
008081a4  71 18 00 eb                                      bl #0x80e370
008081a8  04 00 a0 e1                                      mov r0, r4
008081ac  2d e2 ff eb                                      bl #0x800a68
008081b0  04 00 a0 e1                                      mov r0, r4
008081b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008081b8  d4 c9 18 00 0c 40 00 00 54 26 00 00              .byte 0xd4, 0xc9, 0x18, 0x00, 0x0c, 0x40, 0x00, 0x00, 0x54, 0x26, 0x00, 0x00

; FUNCTION 0x0080838c, declared_size=428, range_size=428, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal11GetRoomListEv
; demangled: CMatchingLocal::GetRoomList()
; decoder-mode: arm
0080838c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00808390  98 b1 9f e5                                      ldr fp, [pc, #0x198]
00808394  98 21 9f e5                                      ldr r2, [pc, #0x198]
00808398  f7 df 4d e2                                      sub sp, sp, #0x3dc
0080839c  0b b0 8f e0                                      add fp, pc, fp
008083a0  02 30 9b e7                                      ldr r3, [fp, r2]
008083a4  46 9c 81 e2                                      add sb, r1, #0x4600
008083a8  04 20 8d e5                                      str r2, [sp, #4]
008083ac  00 30 93 e5                                      ldr r3, [r3]
008083b0  00 20 a0 e3                                      mov r2, #0
008083b4  01 40 a0 e1                                      mov r4, r1
008083b8  3c 10 89 e2                                      add r1, sb, #0x3c
008083bc  00 10 8d e5                                      str r1, [sp]
008083c0  08 20 80 e5                                      str r2, [r0, #8]
008083c4  00 20 80 e5                                      str r2, [r0]
008083c8  04 20 80 e5                                      str r2, [r0, #4]
008083cc  00 80 a0 e1                                      mov r8, r0
008083d0  00 00 9d e5                                      ldr r0, [sp]
008083d4  d4 33 8d e5                                      str r3, [sp, #0x3d4]
008083d8  e3 17 00 eb                                      bl #0x80e36c
008083dc  4c 36 04 e3                                      movw r3, #0x464c
008083e0  03 40 94 e7                                      ldr r4, [r4, r3]
008083e4  08 60 8d e2                                      add r6, sp, #8
008083e8  86 a4 a0 e3                                      mov sl, #0x86000000
008083ec  44 90 89 e2                                      add sb, sb, #0x44
008083f0  ca aa a0 e1                                      asr sl, sl, #0x15
008083f4  08 50 86 e2                                      add r5, r6, #8
008083f8  28 70 86 e2                                      add r7, r6, #0x28
008083fc  04 00 59 e1                                      cmp sb, r4
00808400  2d 00 00 0a                                      beq #0x8084bc
00808404  00 10 a0 e3                                      mov r1, #0
00808408  f1 2f a0 e3                                      mov r2, #0x3c4
0080840c  06 00 a0 e1                                      mov r0, r6
00808410  12 18 ec eb                                      bl #0x30e460
00808414  d0 21 c4 e1                                      ldrd r2, r3, [r4, #0x10]
00808418  f6 1f 8d e2                                      add r1, sp, #0x3d8
0080841c  fa 20 81 e1                                      strd r2, r3, [r1, sl]
00808420  20 50 8d e5                                      str r5, [sp, #0x20]
00808424  24 50 8d e5                                      str r5, [sp, #0x24]
00808428  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0080842c  05 00 a0 e1                                      mov r0, r5
00808430  50 10 94 e5                                      ldr r1, [r4, #0x50]
00808434  ab 24 ec eb                                      bl #0x3116e8
00808438  54 30 94 e5                                      ldr r3, [r4, #0x54]
0080843c  60 10 84 e2                                      add r1, r4, #0x60
00808440  07 00 a0 e1                                      mov r0, r7
00808444  28 30 8d e5                                      str r3, [sp, #0x28]
00808448  00 43 00 eb                                      bl #0x819050
0080844c  58 30 94 e5                                      ldr r3, [r4, #0x58]
00808450  06 10 a0 e1                                      mov r1, r6
00808454  08 00 a0 e1                                      mov r0, r8
00808458  c8 33 8d e5                                      str r3, [sp, #0x3c8]
0080845c  85 ff ff eb                                      bl #0x808278
00808460  07 00 a0 e1                                      mov r0, r7
00808464  ea 41 00 eb                                      bl #0x818c14
00808468  24 00 9d e5                                      ldr r0, [sp, #0x24]
0080846c  05 00 50 e1                                      cmp r0, r5
00808470  06 00 00 0a                                      beq #0x808490
00808474  00 00 50 e3                                      cmp r0, #0
00808478  04 00 00 0a                                      beq #0x808490
0080847c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00808480  01 10 60 e0                                      rsb r1, r0, r1
00808484  80 00 51 e3                                      cmp r1, #0x80
00808488  16 00 00 8a                                      bhi #0x8084e8
0080848c  a9 d7 02 eb                                      bl #0x8be338
00808490  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00808494  00 00 52 e3                                      cmp r2, #0
00808498  01 00 00 1a                                      bne #0x8084a4
0080849c  15 00 00 ea                                      b #0x8084f8
008084a0  03 20 a0 e1                                      mov r2, r3
008084a4  08 30 92 e5                                      ldr r3, [r2, #8]
008084a8  00 00 53 e3                                      cmp r3, #0
008084ac  fb ff ff 1a                                      bne #0x8084a0
008084b0  02 40 a0 e1                                      mov r4, r2
008084b4  04 00 59 e1                                      cmp sb, r4
008084b8  d1 ff ff 1a                                      bne #0x808404
008084bc  00 00 9d e5                                      ldr r0, [sp]
008084c0  a8 17 00 eb                                      bl #0x80e368
008084c4  04 20 9d e5                                      ldr r2, [sp, #4]
008084c8  08 00 a0 e1                                      mov r0, r8
008084cc  02 30 9b e7                                      ldr r3, [fp, r2]
008084d0  d4 23 9d e5                                      ldr r2, [sp, #0x3d4]
008084d4  00 30 93 e5                                      ldr r3, [r3]
008084d8  03 00 52 e1                                      cmp r2, r3
008084dc  12 00 00 1a                                      bne #0x80852c
008084e0  f7 df 8d e2                                      add sp, sp, #0x3dc
008084e4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008084e8  d4 1f ec eb                                      bl #0x310440
008084ec  0c 20 94 e5                                      ldr r2, [r4, #0xc]
008084f0  00 00 52 e3                                      cmp r2, #0
008084f4  ea ff ff 1a                                      bne #0x8084a4
008084f8  04 30 94 e5                                      ldr r3, [r4, #4]
008084fc  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00808500  01 00 54 e1                                      cmp r4, r1
00808504  05 00 00 1a                                      bne #0x808520
00808508  03 40 a0 e1                                      mov r4, r3
0080850c  04 30 93 e5                                      ldr r3, [r3, #4]
00808510  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00808514  04 00 52 e1                                      cmp r2, r4
00808518  fa ff ff 0a                                      beq #0x808508
0080851c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00808520  02 00 53 e1                                      cmp r3, r2
00808524  03 40 a0 11                                      movne r4, r3
00808528  b3 ff ff ea                                      b #0x8083fc
0080852c  77 17 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00808530  f4 c6 18 00 ac 40 00 00                          .byte 0xf4, 0xc6, 0x18, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00808538, declared_size=348, range_size=348, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal13GetMemberNameEi
; demangled: CMatchingLocal::GetMemberName(int)
; decoder-mode: arm
00808538  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0080853c  48 51 9f e5                                      ldr r5, [pc, #0x148]
00808540  48 61 9f e5                                      ldr r6, [pc, #0x148]
00808544  40 d0 4d e2                                      sub sp, sp, #0x40
00808548  05 50 8f e0                                      add r5, pc, r5
0080854c  06 30 95 e7                                      ldr r3, [r5, r6]
00808550  00 40 a0 e1                                      mov r4, r0
00808554  01 00 a0 e1                                      mov r0, r1
00808558  00 c0 93 e5                                      ldr ip, [r3]
0080855c  00 30 91 e5                                      ldr r3, [r1]
00808560  02 70 a0 e1                                      mov r7, r2
00808564  3c c0 8d e5                                      str ip, [sp, #0x3c]
00808568  0f e0 a0 e1                                      mov lr, pc
0080856c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00808570  07 00 50 e1                                      cmp r0, r7
00808574  3c 00 00 0a                                      beq #0x80866c
00808578  fd cd ff eb                                      bl #0x7fbd74
0080857c  07 20 a0 e1                                      mov r2, r7
00808580  00 10 a0 e1                                      mov r1, r0
00808584  0d 00 a0 e1                                      mov r0, sp
00808588  46 d0 ff eb                                      bl #0x7fc6a8
0080858c  1b 49 00 eb                                      bl #0x81aa00
00808590  24 70 8d e2                                      add r7, sp, #0x24
00808594  00 10 a0 e1                                      mov r1, r0
00808598  00 30 90 e5                                      ldr r3, [r0]
0080859c  0d 20 a0 e1                                      mov r2, sp
008085a0  07 00 a0 e1                                      mov r0, r7
008085a4  0f e0 a0 e1                                      mov lr, pc
008085a8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008085ac  34 10 9d e5                                      ldr r1, [sp, #0x34]
008085b0  38 30 9d e5                                      ldr r3, [sp, #0x38]
008085b4  0d 80 a0 e1                                      mov r8, sp
008085b8  03 00 51 e1                                      cmp r1, r3
008085bc  26 00 00 0a                                      beq #0x80865c
008085c0  40 20 8d e2                                      add r2, sp, #0x40
008085c4  2e 00 a0 e3                                      mov r0, #0x2e
008085c8  24 00 62 e5                                      strb r0, [r2, #-0x24]!
008085cc  03 00 a0 e1                                      mov r0, r3
008085d0  20 30 8d e2                                      add r3, sp, #0x20
008085d4  8a 19 ed eb                                      bl #0x34ec04
008085d8  34 10 9d e5                                      ldr r1, [sp, #0x34]
008085dc  01 00 50 e1                                      cmp r0, r1
008085e0  38 30 9d 05                                      ldreq r3, [sp, #0x38]
008085e4  1c 00 00 0a                                      beq #0x80865c
008085e8  38 30 9d e5                                      ldr r3, [sp, #0x38]
008085ec  00 00 63 e0                                      rsb r0, r3, r0
008085f0  01 20 63 e0                                      rsb r2, r3, r1
008085f4  02 00 50 e1                                      cmp r0, r2
008085f8  00 20 83 90                                      addls r2, r3, r0
008085fc  02 20 83 80                                      addhi r2, r3, r2
00808600  03 10 a0 e1                                      mov r1, r3
00808604  04 00 a0 e1                                      mov r0, r4
00808608  10 40 84 e5                                      str r4, [r4, #0x10]
0080860c  14 40 84 e5                                      str r4, [r4, #0x14]
00808610  34 24 ec eb                                      bl #0x3116e8
00808614  38 00 9d e5                                      ldr r0, [sp, #0x38]
00808618  07 00 50 e1                                      cmp r0, r7
0080861c  06 00 00 0a                                      beq #0x80863c
00808620  00 00 50 e3                                      cmp r0, #0
00808624  04 00 00 0a                                      beq #0x80863c
00808628  24 10 9d e5                                      ldr r1, [sp, #0x24]
0080862c  01 10 60 e0                                      rsb r1, r0, r1
00808630  80 00 51 e3                                      cmp r1, #0x80
00808634  0a 00 00 8a                                      bhi #0x808664
00808638  3e d7 02 eb                                      bl #0x8be338
0080863c  06 30 95 e7                                      ldr r3, [r5, r6]
00808640  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00808644  04 00 a0 e1                                      mov r0, r4
00808648  00 30 93 e5                                      ldr r3, [r3]
0080864c  03 00 52 e1                                      cmp r2, r3
00808650  0c 00 00 1a                                      bne #0x808688
00808654  40 d0 8d e2                                      add sp, sp, #0x40
00808658  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0080865c  00 00 e0 e3                                      mvn r0, #0
00808660  e2 ff ff ea                                      b #0x8085f0
00808664  75 1f ec eb                                      bl #0x310440
00808668  f3 ff ff ea                                      b #0x80863c
0080866c  e3 48 00 eb                                      bl #0x81aa00
00808670  00 10 a0 e1                                      mov r1, r0
00808674  00 30 90 e5                                      ldr r3, [r0]
00808678  04 00 a0 e1                                      mov r0, r4
0080867c  0f e0 a0 e1                                      mov lr, pc
00808680  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00808684  ec ff ff ea                                      b #0x80863c
00808688  20 17 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0080868c  48 c5 18 00 ac 40 00 00                          .byte 0x48, 0xc5, 0x18, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00808694, declared_size=224, range_size=224, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal23GetSearchRoomAttributesEy
; demangled: CMatchingLocal::GetSearchRoomAttributes(unsigned long long)
; decoder-mode: arm
00808694  10 40 2d e9                                      push {r4, lr}
00808698  48 c6 04 e3                                      movw ip, #0x4648
0080869c  0c c0 91 e7                                      ldr ip, [r1, ip]
008086a0  08 d0 4d e2                                      sub sp, sp, #8
008086a4  46 1c 81 e2                                      add r1, r1, #0x4600
008086a8  00 00 5c e3                                      cmp ip, #0
008086ac  00 40 a0 e1                                      mov r4, r0
008086b0  f0 20 cd e1                                      strd r2, r3, [sp]
008086b4  44 10 81 e2                                      add r1, r1, #0x44
008086b8  19 00 00 0a                                      beq #0x808724
008086bc  00 e0 9d e5                                      ldr lr, [sp]
008086c0  04 00 9d e5                                      ldr r0, [sp, #4]
008086c4  01 20 a0 e1                                      mov r2, r1
008086c8  14 30 9c e5                                      ldr r3, [ip, #0x14]
008086cc  00 00 53 e1                                      cmp r3, r0
008086d0  09 00 00 3a                                      blo #0x8086fc
008086d4  05 00 00 0a                                      beq #0x8086f0
008086d8  08 30 9c e5                                      ldr r3, [ip, #8]
008086dc  0c 20 a0 e1                                      mov r2, ip
008086e0  00 00 53 e3                                      cmp r3, #0
008086e4  09 00 00 0a                                      beq #0x808710
008086e8  03 c0 a0 e1                                      mov ip, r3
008086ec  f5 ff ff ea                                      b #0x8086c8
008086f0  10 30 9c e5                                      ldr r3, [ip, #0x10]
008086f4  0e 00 53 e1                                      cmp r3, lr
008086f8  f6 ff ff 2a                                      bhs #0x8086d8
008086fc  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00808700  02 c0 a0 e1                                      mov ip, r2
00808704  0c 20 a0 e1                                      mov r2, ip
00808708  00 00 53 e3                                      cmp r3, #0
0080870c  f5 ff ff 1a                                      bne #0x8086e8
00808710  0c 00 51 e1                                      cmp r1, ip
00808714  13 00 00 0a                                      beq #0x808768
00808718  14 30 9c e5                                      ldr r3, [ip, #0x14]
0080871c  00 00 53 e1                                      cmp r3, r0
00808720  0b 00 00 9a                                      bls #0x808754
00808724  01 c0 a0 e1                                      mov ip, r1
00808728  0c 00 51 e1                                      cmp r1, ip
0080872c  0d 00 00 0a                                      beq #0x808768
00808730  01 00 a0 e1                                      mov r0, r1
00808734  0d 10 a0 e1                                      mov r1, sp
00808738  72 ea ff eb                                      bl #0x803108
0080873c  48 10 80 e2                                      add r1, r0, #0x48
00808740  04 00 a0 e1                                      mov r0, r4
00808744  41 42 00 eb                                      bl #0x819050
00808748  04 00 a0 e1                                      mov r0, r4
0080874c  08 d0 8d e2                                      add sp, sp, #8
00808750  10 80 bd e8                                      pop {r4, pc}
00808754  f3 ff ff 1a                                      bne #0x808728
00808758  10 30 9c e5                                      ldr r3, [ip, #0x10]
0080875c  0e 00 53 e1                                      cmp r3, lr
00808760  f0 ff ff 9a                                      bls #0x808728
00808764  ee ff ff ea                                      b #0x808724
00808768  04 00 a0 e1                                      mov r0, r4
0080876c  84 42 00 eb                                      bl #0x819184
00808770  f4 ff ff ea                                      b #0x808748

; FUNCTION 0x00808774, declared_size=408, range_size=408, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal16JoinRoomInternalEy
; demangled: CMatchingLocal::JoinRoomInternal(unsigned long long)
; decoder-mode: arm
00808774  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00808778  46 7c 80 e2                                      add r7, r0, #0x4600
0080877c  3c 50 87 e2                                      add r5, r7, #0x3c
00808780  08 d0 4d e2                                      sub sp, sp, #8
00808784  00 40 a0 e1                                      mov r4, r0
00808788  05 00 a0 e1                                      mov r0, r5
0080878c  f0 20 cd e1                                      strd r2, r3, [sp]
00808790  f5 16 00 eb                                      bl #0x80e36c
00808794  48 36 04 e3                                      movw r3, #0x4648
00808798  03 30 94 e7                                      ldr r3, [r4, r3]
0080879c  60 61 9f e5                                      ldr r6, [pc, #0x160]
008087a0  44 70 87 e2                                      add r7, r7, #0x44
008087a4  00 00 53 e3                                      cmp r3, #0
008087a8  06 60 8f e0                                      add r6, pc, r6
008087ac  19 00 00 0a                                      beq #0x808818
008087b0  00 c0 9d e5                                      ldr ip, [sp]
008087b4  04 00 9d e5                                      ldr r0, [sp, #4]
008087b8  07 10 a0 e1                                      mov r1, r7
008087bc  14 20 93 e5                                      ldr r2, [r3, #0x14]
008087c0  00 00 52 e1                                      cmp r2, r0
008087c4  09 00 00 3a                                      blo #0x8087f0
008087c8  05 00 00 0a                                      beq #0x8087e4
008087cc  08 20 93 e5                                      ldr r2, [r3, #8]
008087d0  03 10 a0 e1                                      mov r1, r3
008087d4  00 00 52 e3                                      cmp r2, #0
008087d8  09 00 00 0a                                      beq #0x808804
008087dc  02 30 a0 e1                                      mov r3, r2
008087e0  f5 ff ff ea                                      b #0x8087bc
008087e4  10 20 93 e5                                      ldr r2, [r3, #0x10]
008087e8  0c 00 52 e1                                      cmp r2, ip
008087ec  f6 ff ff 2a                                      bhs #0x8087cc
008087f0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008087f4  01 30 a0 e1                                      mov r3, r1
008087f8  03 10 a0 e1                                      mov r1, r3
008087fc  00 00 52 e3                                      cmp r2, #0
00808800  f5 ff ff 1a                                      bne #0x8087dc
00808804  03 00 57 e1                                      cmp r7, r3
00808808  35 00 00 0a                                      beq #0x8088e4
0080880c  14 20 93 e5                                      ldr r2, [r3, #0x14]
00808810  00 00 52 e1                                      cmp r2, r0
00808814  16 00 00 9a                                      bls #0x808874
00808818  07 30 a0 e1                                      mov r3, r7
0080881c  03 00 57 e1                                      cmp r7, r3
00808820  2f 00 00 0a                                      beq #0x8088e4
00808824  07 00 a0 e1                                      mov r0, r7
00808828  0d 10 a0 e1                                      mov r1, sp
0080882c  35 ea ff eb                                      bl #0x803108
00808830  08 30 94 e5                                      ldr r3, [r4, #8]
00808834  3c 20 90 e5                                      ldr r2, [r0, #0x3c]
00808838  0d 80 a0 e1                                      mov r8, sp
0080883c  03 00 52 e1                                      cmp r2, r3
00808840  10 00 00 ba                                      blt #0x808888
00808844  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00808848  02 15 a0 e3                                      mov r1, #0x800000
0080884c  00 20 a0 e3                                      mov r2, #0
00808850  03 00 96 e7                                      ldr r0, [r6, r3]
00808854  0d 10 81 e2                                      add r1, r1, #0xd
00808858  02 30 a0 e1                                      mov r3, r2
0080885c  68 d6 ff eb                                      bl #0x7fe204
00808860  05 00 a0 e1                                      mov r0, r5
00808864  bf 16 00 eb                                      bl #0x80e368
00808868  00 00 a0 e3                                      mov r0, #0
0080886c  08 d0 8d e2                                      add sp, sp, #8
00808870  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00808874  e8 ff ff 1a                                      bne #0x80881c
00808878  10 20 93 e5                                      ldr r2, [r3, #0x10]
0080887c  0c 00 52 e1                                      cmp r2, ip
00808880  e5 ff ff 9a                                      bls #0x80881c
00808884  e3 ff ff ea                                      b #0x808818
00808888  0d 10 a0 e1                                      mov r1, sp
0080888c  07 00 a0 e1                                      mov r0, r7
00808890  1c ea ff eb                                      bl #0x803108
00808894  00 20 90 e5                                      ldr r2, [r0]
00808898  3c 36 03 e3                                      movw r3, #0x363c
0080889c  03 20 84 e7                                      str r2, [r4, r3]
008088a0  33 cd ff eb                                      bl #0x7fbd74
008088a4  0d 10 a0 e1                                      mov r1, sp
008088a8  00 60 a0 e1                                      mov r6, r0
008088ac  07 00 a0 e1                                      mov r0, r7
008088b0  14 ea ff eb                                      bl #0x803108
008088b4  0d 10 a0 e1                                      mov r1, sp
008088b8  00 80 90 e5                                      ldr r8, [r0]
008088bc  07 00 a0 e1                                      mov r0, r7
008088c0  10 ea ff eb                                      bl #0x803108
008088c4  08 10 a0 e1                                      mov r1, r8
008088c8  04 20 80 e2                                      add r2, r0, #4
008088cc  06 00 a0 e1                                      mov r0, r6
008088d0  16 d0 ff eb                                      bl #0x7fc930
008088d4  00 20 a0 e3                                      mov r2, #0
008088d8  30 36 03 e3                                      movw r3, #0x3630
008088dc  03 20 c4 e7                                      strb r2, [r4, r3]
008088e0  de ff ff ea                                      b #0x808860
008088e4  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
008088e8  00 20 a0 e3                                      mov r2, #0
008088ec  02 15 a0 e3                                      mov r1, #0x800000
008088f0  03 00 96 e7                                      ldr r0, [r6, r3]
008088f4  0c 10 81 e2                                      add r1, r1, #0xc
008088f8  02 30 a0 e1                                      mov r3, r2
008088fc  40 d6 ff eb                                      bl #0x7fe204
00808900  d6 ff ff ea                                      b #0x808860
; mapping-symbol data/literal pool
00808904  e8 c2 18 00 3c 34 00 00                          .byte 0xe8, 0xc2, 0x18, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x0080890c, declared_size=3056, range_size=3056, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal6UpdateEv
; demangled: CMatchingLocal::Update()
; decoder-mode: arm
0080890c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00808910  00 40 a0 e1                                      mov r4, r0
00808914  73 df 4d e2                                      sub sp, sp, #0x1cc
00808918  f7 e3 ff eb                                      bl #0x8018fc
0080891c  0c 30 d4 e5                                      ldrb r3, [r4, #0xc]
00808920  b0 5b 9f e5                                      ldr r5, [pc, #0xbb0]
00808924  00 00 53 e3                                      cmp r3, #0
00808928  05 50 8f e0                                      add r5, pc, r5
0080892c  00 00 e0 03                                      mvneq r0, #0
00808930  01 00 00 1a                                      bne #0x80893c
00808934  73 df 8d e2                                      add sp, sp, #0x1cc
00808938  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0080893c  0c cd ff eb                                      bl #0x7fbd74
00808940  00 10 a0 e3                                      mov r1, #0
00808944  52 cd ff eb                                      bl #0x7fbe94
00808948  00 30 50 e2                                      subs r3, r0, #0
0080894c  91 00 00 0a                                      beq #0x808b98
00808950  84 0b 9f e5                                      ldr r0, [pc, #0xb84]
00808954  38 36 03 e3                                      movw r3, #0x3638
00808958  03 20 94 e7                                      ldr r2, [r4, r3]
0080895c  18 00 8d e5                                      str r0, [sp, #0x18]
00808960  00 00 52 e3                                      cmp r2, #0
00808964  03 00 00 ba                                      blt #0x808978
00808968  3c 36 03 e3                                      movw r3, #0x363c
0080896c  03 30 94 e7                                      ldr r3, [r4, r3]
00808970  02 00 53 e1                                      cmp r3, r2
00808974  ee 01 00 0a                                      beq #0x809134
00808978  30 36 03 e3                                      movw r3, #0x3630
0080897c  03 30 d4 e7                                      ldrb r3, [r4, r3]
00808980  00 00 53 e3                                      cmp r3, #0
00808984  c2 01 00 1a                                      bne #0x809094
00808988  38 86 03 e3                                      movw r8, #0x3638
0080898c  08 30 94 e7                                      ldr r3, [r4, r8]
00808990  00 00 53 e3                                      cmp r3, #0
00808994  e9 00 00 da                                      ble #0x808d40
00808998  3c a6 03 e3                                      movw sl, #0x363c
0080899c  f4 cc ff eb                                      bl #0x7fbd74
008089a0  0a 10 94 e7                                      ldr r1, [r4, sl]
008089a4  52 cf ff eb                                      bl #0x7fc6f4
008089a8  00 70 50 e2                                      subs r7, r0, #0
008089ac  e3 00 00 1a                                      bne #0x808d40
008089b0  e4 3e 07 e3                                      movw r3, #0x7ee4
008089b4  03 30 94 e7                                      ldr r3, [r4, r3]
008089b8  00 00 53 e3                                      cmp r3, #0
008089bc  df 00 00 da                                      ble #0x808d40
008089c0  18 ab 9f e5                                      ldr sl, [pc, #0xb18]
008089c4  18 bb 9f e5                                      ldr fp, [pc, #0xb18]
008089c8  4b 3c 84 e2                                      add r3, r4, #0x4b00
008089cc  36 cc 84 e2                                      add ip, r4, #0x3600
008089d0  70 e0 83 e2                                      add lr, r3, #0x70
008089d4  02 69 84 e2                                      add r6, r4, #0x8000
008089d8  3c c0 8c e2                                      add ip, ip, #0x3c
008089dc  50 30 83 e2                                      add r3, r3, #0x50
008089e0  01 0c 8d e2                                      add r0, sp, #0x100
008089e4  12 1e 8d e2                                      add r1, sp, #0x120
008089e8  f8 9a 9f e5                                      ldr sb, [pc, #0xaf8]
008089ec  14 e0 8d e5                                      str lr, [sp, #0x14]
008089f0  10 c0 8d e5                                      str ip, [sp, #0x10]
008089f4  38 60 86 e2                                      add r6, r6, #0x38
008089f8  1c 30 8d e5                                      str r3, [sp, #0x1c]
008089fc  0c 00 8d e5                                      str r0, [sp, #0xc]
00808a00  08 10 8d e5                                      str r1, [sp, #8]
00808a04  04 a0 8d e5                                      str sl, [sp, #4]
00808a08  00 b0 8d e5                                      str fp, [sp]
00808a0c  0a 00 00 ea                                      b #0x808a3c
00808a10  d7 cc ff eb                                      bl #0x7fbd74
00808a14  00 10 96 e5                                      ldr r1, [r6]
00808a18  35 cf ff eb                                      bl #0x7fc6f4
00808a1c  00 00 50 e3                                      cmp r0, #0
00808a20  c6 00 00 1a                                      bne #0x808d40
00808a24  e4 3e 07 e3                                      movw r3, #0x7ee4
00808a28  03 30 94 e7                                      ldr r3, [r4, r3]
00808a2c  01 70 87 e2                                      add r7, r7, #1
00808a30  56 6f 86 e2                                      add r6, r6, #0x158
00808a34  03 00 57 e1                                      cmp r7, r3
00808a38  c0 00 00 aa                                      bge #0x808d40
00808a3c  00 20 96 e5                                      ldr r2, [r6]
00808a40  08 30 94 e7                                      ldr r3, [r4, r8]
00808a44  02 00 53 e1                                      cmp r3, r2
00808a48  f0 ff ff 1a                                      bne #0x808a10
00808a4c  04 20 9d e5                                      ldr r2, [sp, #4]
00808a50  3d 11 dd e5                                      ldrb r1, [sp, #0x13d]
00808a54  00 e0 a0 e3                                      mov lr, #0
00808a58  02 c0 95 e7                                      ldr ip, [r5, r2]
00808a5c  3c a6 03 e3                                      movw sl, #0x363c
00808a60  08 00 9d e5                                      ldr r0, [sp, #8]
00808a64  08 c0 8c e2                                      add ip, ip, #8
00808a68  0e 00 51 e1                                      cmp r1, lr
00808a6c  20 c1 8d e5                                      str ip, [sp, #0x120]
00808a70  00 10 e0 e3                                      mvn r1, #0
00808a74  0a 30 84 e7                                      str r3, [r4, sl]
00808a78  01 b0 a0 e3                                      mov fp, #1
00808a7c  00 20 a0 e3                                      mov r2, #0
00808a80  00 30 a0 e3                                      mov r3, #0
00808a84  13 ae 8d e2                                      add sl, sp, #0x130
00808a88  34 11 8d e5                                      str r1, [sp, #0x134]
00808a8c  24 b1 8d e5                                      str fp, [sp, #0x124]
00808a90  f8 20 4a e1                                      strd r2, r3, [sl, #-8]
00808a94  30 11 8d e5                                      str r1, [sp, #0x130]
00808a98  38 e1 8d e5                                      str lr, [sp, #0x138]
00808a9c  3c e1 cd e5                                      strb lr, [sp, #0x13c]
00808aa0  01 00 00 0a                                      beq #0x808aac
00808aa4  3d e1 cd e5                                      strb lr, [sp, #0x13d]
00808aa8  35 31 00 eb                                      bl #0x814f84
00808aac  09 20 95 e7                                      ldr r2, [r5, sb]
00808ab0  08 b0 9d e5                                      ldr fp, [sp, #8]
00808ab4  50 3b 04 e3                                      movw r3, #0x4b50
00808ab8  08 20 82 e2                                      add r2, r2, #8
00808abc  03 30 94 e7                                      ldr r3, [r4, r3]
00808ac0  1d 10 8b e2                                      add r1, fp, #0x1d
00808ac4  20 21 8d e5                                      str r2, [sp, #0x120]
00808ac8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00808acc  0f e0 a0 e1                                      mov lr, pc
00808ad0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00808ad4  00 50 9d e8                                      ldm sp, {ip, lr}
00808ad8  1d 31 dd e5                                      ldrb r3, [sp, #0x11d]
00808adc  0c 10 95 e7                                      ldr r1, [r5, ip]
00808ae0  0e c0 95 e7                                      ldr ip, [r5, lr]
00808ae4  00 20 e0 e3                                      mvn r2, #0
00808ae8  08 10 81 e2                                      add r1, r1, #8
00808aec  08 c0 8c e2                                      add ip, ip, #8
00808af0  00 00 53 e3                                      cmp r3, #0
00808af4  00 c1 8d e5                                      str ip, [sp, #0x100]
00808af8  00 30 a0 e3                                      mov r3, #0
00808afc  20 11 8d e5                                      str r1, [sp, #0x120]
00808b00  00 a0 a0 e3                                      mov sl, #0
00808b04  01 10 a0 e3                                      mov r1, #1
00808b08  00 b0 a0 e3                                      mov fp, #0
00808b0c  11 ce 8d e2                                      add ip, sp, #0x110
00808b10  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00808b14  14 21 8d e5                                      str r2, [sp, #0x114]
00808b18  04 11 8d e5                                      str r1, [sp, #0x104]
00808b1c  f8 a0 4c e1                                      strd sl, fp, [ip, #-8]
00808b20  10 21 8d e5                                      str r2, [sp, #0x110]
00808b24  18 31 8d e5                                      str r3, [sp, #0x118]
00808b28  1c 31 cd e5                                      strb r3, [sp, #0x11c]
00808b2c  01 00 00 0a                                      beq #0x808b38
00808b30  1d 31 cd e5                                      strb r3, [sp, #0x11d]
00808b34  12 31 00 eb                                      bl #0x814f84
00808b38  09 20 95 e7                                      ldr r2, [r5, sb]
00808b3c  0c e0 9d e5                                      ldr lr, [sp, #0xc]
00808b40  70 3b 04 e3                                      movw r3, #0x4b70
00808b44  08 20 82 e2                                      add r2, r2, #8
00808b48  03 30 94 e7                                      ldr r3, [r4, r3]
00808b4c  1d 10 8e e2                                      add r1, lr, #0x1d
00808b50  00 21 8d e5                                      str r2, [sp, #0x100]
00808b54  14 00 9d e5                                      ldr r0, [sp, #0x14]
00808b58  0f e0 a0 e1                                      mov lr, pc
00808b5c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00808b60  00 00 9d e5                                      ldr r0, [sp]
00808b64  00 30 95 e7                                      ldr r3, [r5, r0]
00808b68  04 00 a0 e1                                      mov r0, r4
00808b6c  08 30 83 e2                                      add r3, r3, #8
00808b70  00 31 8d e5                                      str r3, [sp, #0x100]
00808b74  77 f4 ff eb                                      bl #0x805d58
00808b78  18 20 9d e5                                      ldr r2, [sp, #0x18]
00808b7c  02 15 a0 e3                                      mov r1, #0x800000
00808b80  0b 10 81 e2                                      add r1, r1, #0xb
00808b84  02 00 95 e7                                      ldr r0, [r5, r2]
00808b88  04 30 a0 e3                                      mov r3, #4
00808b8c  10 20 9d e5                                      ldr r2, [sp, #0x10]
00808b90  9b d5 ff eb                                      bl #0x7fe204
00808b94  a2 ff ff ea                                      b #0x808a24
00808b98  38 26 03 e3                                      movw r2, #0x3638
00808b9c  02 10 94 e7                                      ldr r1, [r4, r2]
00808ba0  00 00 51 e3                                      cmp r1, #0
00808ba4  17 02 00 ba                                      blt #0x809408
00808ba8  3c 06 03 e3                                      movw r0, #0x363c
00808bac  00 20 94 e7                                      ldr r2, [r4, r0]
00808bb0  02 00 51 e1                                      cmp r1, r2
00808bb4  2a 02 00 0a                                      beq #0x809464
00808bb8  20 a9 9f e5                                      ldr sl, [pc, #0x920]
00808bbc  7d e1 dd e5                                      ldrb lr, [sp, #0x17d]
00808bc0  00 10 84 e7                                      str r1, [r4, r0]
00808bc4  0a c0 95 e7                                      ldr ip, [r5, sl]
00808bc8  01 10 a0 e3                                      mov r1, #1
00808bcc  00 20 e0 e3                                      mvn r2, #0
00808bd0  00 00 5e e3                                      cmp lr, #0
00808bd4  08 c0 8c e2                                      add ip, ip, #8
00808bd8  64 11 8d e5                                      str r1, [sp, #0x164]
00808bdc  00 00 a0 e3                                      mov r0, #0
00808be0  00 10 a0 e3                                      mov r1, #0
00808be4  17 be 8d e2                                      add fp, sp, #0x170
00808be8  f8 00 4b e1                                      strd r0, r1, [fp, #-8]
00808bec  74 21 8d e5                                      str r2, [sp, #0x174]
00808bf0  60 c1 8d e5                                      str ip, [sp, #0x160]
00808bf4  70 21 8d e5                                      str r2, [sp, #0x170]
00808bf8  78 31 8d e5                                      str r3, [sp, #0x178]
00808bfc  7c 31 cd e5                                      strb r3, [sp, #0x17c]
00808c00  16 9e 8d 02                                      addeq sb, sp, #0x160
00808c04  03 00 00 0a                                      beq #0x808c18
00808c08  16 9e 8d e2                                      add sb, sp, #0x160
00808c0c  09 00 a0 e1                                      mov r0, sb
00808c10  7d 31 cd e5                                      strb r3, [sp, #0x17d]
00808c14  da 30 00 eb                                      bl #0x814f84
00808c18  c8 88 9f e5                                      ldr r8, [pc, #0x8c8]
00808c1c  c0 78 9f e5                                      ldr r7, [pc, #0x8c0]
00808c20  4b 6c 84 e2                                      add r6, r4, #0x4b00
00808c24  08 20 95 e7                                      ldr r2, [r5, r8]
00808c28  50 3b 04 e3                                      movw r3, #0x4b50
00808c2c  03 30 94 e7                                      ldr r3, [r4, r3]
00808c30  08 20 82 e2                                      add r2, r2, #8
00808c34  60 21 8d e5                                      str r2, [sp, #0x160]
00808c38  1d 10 89 e2                                      add r1, sb, #0x1d
00808c3c  50 00 86 e2                                      add r0, r6, #0x50
00808c40  0f e0 a0 e1                                      mov lr, pc
00808c44  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00808c48  07 00 95 e7                                      ldr r0, [r5, r7]
00808c4c  0a 10 95 e7                                      ldr r1, [r5, sl]
00808c50  5d 31 dd e5                                      ldrb r3, [sp, #0x15d]
00808c54  08 00 80 e2                                      add r0, r0, #8
00808c58  00 20 e0 e3                                      mvn r2, #0
00808c5c  00 00 53 e3                                      cmp r3, #0
00808c60  00 a0 a0 e3                                      mov sl, #0
00808c64  00 30 a0 e3                                      mov r3, #0
00808c68  08 10 81 e2                                      add r1, r1, #8
00808c6c  60 01 8d e5                                      str r0, [sp, #0x160]
00808c70  00 b0 a0 e3                                      mov fp, #0
00808c74  01 00 a0 e3                                      mov r0, #1
00808c78  15 ce 8d e2                                      add ip, sp, #0x150
00808c7c  f8 a0 4c e1                                      strd sl, fp, [ip, #-8]
00808c80  44 01 8d e5                                      str r0, [sp, #0x144]
00808c84  54 21 8d e5                                      str r2, [sp, #0x154]
00808c88  40 11 8d e5                                      str r1, [sp, #0x140]
00808c8c  50 21 8d e5                                      str r2, [sp, #0x150]
00808c90  58 31 8d e5                                      str r3, [sp, #0x158]
00808c94  5c 31 cd e5                                      strb r3, [sp, #0x15c]
00808c98  05 ad 8d 02                                      addeq sl, sp, #0x140
00808c9c  03 00 00 0a                                      beq #0x808cb0
00808ca0  05 ad 8d e2                                      add sl, sp, #0x140
00808ca4  0a 00 a0 e1                                      mov r0, sl
00808ca8  5d 31 cd e5                                      strb r3, [sp, #0x15d]
00808cac  b4 30 00 eb                                      bl #0x814f84
00808cb0  08 30 95 e7                                      ldr r3, [r5, r8]
00808cb4  1d 10 8a e2                                      add r1, sl, #0x1d
00808cb8  70 00 86 e2                                      add r0, r6, #0x70
00808cbc  08 30 83 e2                                      add r3, r3, #8
00808cc0  40 31 8d e5                                      str r3, [sp, #0x140]
00808cc4  70 3b 04 e3                                      movw r3, #0x4b70
00808cc8  03 30 94 e7                                      ldr r3, [r4, r3]
00808ccc  0f e0 a0 e1                                      mov lr, pc
00808cd0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00808cd4  07 30 95 e7                                      ldr r3, [r5, r7]
00808cd8  fc e7 9f e5                                      ldr lr, [pc, #0x7fc]
00808cdc  04 00 a0 e1                                      mov r0, r4
00808ce0  08 30 83 e2                                      add r3, r3, #8
00808ce4  18 e0 8d e5                                      str lr, [sp, #0x18]
00808ce8  40 31 8d e5                                      str r3, [sp, #0x140]
00808cec  19 f4 ff eb                                      bl #0x805d58
00808cf0  18 30 9d e5                                      ldr r3, [sp, #0x18]
00808cf4  02 15 a0 e3                                      mov r1, #0x800000
00808cf8  36 2c 84 e2                                      add r2, r4, #0x3600
00808cfc  3c 20 82 e2                                      add r2, r2, #0x3c
00808d00  03 00 95 e7                                      ldr r0, [r5, r3]
00808d04  0b 10 81 e2                                      add r1, r1, #0xb
00808d08  04 30 a0 e3                                      mov r3, #4
00808d0c  3c d5 ff eb                                      bl #0x7fe204
00808d10  38 36 03 e3                                      movw r3, #0x3638
00808d14  03 20 94 e7                                      ldr r2, [r4, r3]
00808d18  10 ff ff ea                                      b #0x808960
00808d1c  b8 01 9d e5                                      ldr r0, [sp, #0x1b8]
00808d20  00 00 50 e3                                      cmp r0, #0
00808d24  05 00 00 0a                                      beq #0x808d40
00808d28  c0 11 9d e5                                      ldr r1, [sp, #0x1c0]
00808d2c  01 10 60 e0                                      rsb r1, r0, r1
00808d30  03 10 c1 e3                                      bic r1, r1, #3
00808d34  80 00 51 e3                                      cmp r1, #0x80
00808d38  c7 01 00 8a                                      bhi #0x80945c
00808d3c  7d d5 02 eb                                      bl #0x8be338
00808d40  0b cc ff eb                                      bl #0x7fbd74
00808d44  06 16 a0 e3                                      mov r1, #0x600000
00808d48  08 00 80 e2                                      add r0, r0, #8
00808d4c  01 10 81 e2                                      add r1, r1, #1
00808d50  00 20 a0 e3                                      mov r2, #0
00808d54  a7 d5 ff eb                                      bl #0x7fe3f8
00808d58  00 00 50 e3                                      cmp r0, #0
00808d5c  60 00 00 1a                                      bne #0x808ee4
00808d60  84 37 9f e5                                      ldr r3, [pc, #0x784]
00808d64  01 15 a0 e3                                      mov r1, #0x400000
00808d68  0e 10 81 e2                                      add r1, r1, #0xe
00808d6c  03 60 95 e7                                      ldr r6, [r5, r3]
00808d70  00 20 a0 e3                                      mov r2, #0
00808d74  06 00 a0 e1                                      mov r0, r6
00808d78  9e d5 ff eb                                      bl #0x7fe3f8
00808d7c  00 00 50 e3                                      cmp r0, #0
00808d80  43 00 00 1a                                      bne #0x808e94
00808d84  00 30 94 e5                                      ldr r3, [r4]
00808d88  04 00 a0 e1                                      mov r0, r4
00808d8c  0f e0 a0 e1                                      mov lr, pc
00808d90  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00808d94  00 00 50 e3                                      cmp r0, #0
00808d98  2b 00 00 0a                                      beq #0x808e4c
00808d9c  38 36 03 e3                                      movw r3, #0x3638
00808da0  03 30 94 e7                                      ldr r3, [r4, r3]
00808da4  00 00 53 e3                                      cmp r3, #0
00808da8  03 00 00 ba                                      blt #0x808dbc
00808dac  3c 26 03 e3                                      movw r2, #0x363c
00808db0  02 20 94 e7                                      ldr r2, [r4, r2]
00808db4  02 00 53 e1                                      cmp r3, r2
00808db8  23 00 00 0a                                      beq #0x808e4c
00808dbc  4b 6c 84 e2                                      add r6, r4, #0x4b00
00808dc0  e0 60 86 e2                                      add r6, r6, #0xe0
00808dc4  00 70 a0 e3                                      mov r7, #0
00808dc8  66 8f a0 e3                                      mov r8, #0x198
00808dcc  38 a6 03 e3                                      movw sl, #0x3638
00808dd0  98 07 09 e0                                      mul sb, r8, r7
00808dd4  50 31 96 e5                                      ldr r3, [r6, #0x150]
00808dd8  4b 0c 89 e2                                      add r0, sb, #0x4b00
00808ddc  e0 00 80 e2                                      add r0, r0, #0xe0
00808de0  00 00 53 e3                                      cmp r3, #0
00808de4  00 00 84 e0                                      add r0, r4, r0
00808de8  01 70 87 e2                                      add r7, r7, #1
00808dec  13 00 00 da                                      ble #0x808e40
00808df0  00 30 96 e5                                      ldr r3, [r6]
00808df4  0f e0 a0 e1                                      mov lr, pc
00808df8  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00808dfc  00 00 50 e3                                      cmp r0, #0
00808e00  0e 00 00 0a                                      beq #0x808e40
00808e04  50 21 96 e5                                      ldr r2, [r6, #0x150]
00808e08  0a 30 94 e7                                      ldr r3, [r4, sl]
00808e0c  03 00 52 e1                                      cmp r2, r3
00808e10  0a 00 00 0a                                      beq #0x808e40
00808e14  d6 cb ff eb                                      bl #0x7fbd74
00808e18  50 11 96 e5                                      ldr r1, [r6, #0x150]
00808e1c  34 ce ff eb                                      bl #0x7fc6f4
00808e20  00 00 50 e3                                      cmp r0, #0
00808e24  05 00 00 1a                                      bne #0x808e40
00808e28  d1 cb ff eb                                      bl #0x7fbd74
00808e2c  4d 2c 89 e2                                      add r2, sb, #0x4d00
00808e30  58 20 82 e2                                      add r2, r2, #0x58
00808e34  02 20 84 e0                                      add r2, r4, r2
00808e38  50 11 96 e5                                      ldr r1, [r6, #0x150]
00808e3c  bb ce ff eb                                      bl #0x7fc930
00808e40  20 00 57 e3                                      cmp r7, #0x20
00808e44  66 6f 86 e2                                      add r6, r6, #0x198
00808e48  e0 ff ff 1a                                      bne #0x808dd0
00808e4c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00808e50  02 15 a0 e3                                      mov r1, #0x800000
00808e54  0a 10 81 e2                                      add r1, r1, #0xa
00808e58  0c 00 95 e7                                      ldr r0, [r5, ip]
00808e5c  01 20 a0 e3                                      mov r2, #1
00808e60  64 d5 ff eb                                      bl #0x7fe3f8
00808e64  00 00 50 e3                                      cmp r0, #0
00808e68  07 00 00 0a                                      beq #0x808e8c
00808e6c  38 36 03 e3                                      movw r3, #0x3638
00808e70  03 30 94 e7                                      ldr r3, [r4, r3]
00808e74  00 00 53 e3                                      cmp r3, #0
00808e78  03 00 00 ba                                      blt #0x808e8c
00808e7c  3c 26 03 e3                                      movw r2, #0x363c
00808e80  02 20 94 e7                                      ldr r2, [r4, r2]
00808e84  02 00 53 e1                                      cmp r3, r2
00808e88  61 01 00 0a                                      beq #0x809414
00808e8c  00 00 a0 e3                                      mov r0, #0
00808e90  a7 fe ff ea                                      b #0x808934
00808e94  01 15 a0 e3                                      mov r1, #0x400000
00808e98  0e 10 81 e2                                      add r1, r1, #0xe
00808e9c  6e 2f 8d e2                                      add r2, sp, #0x1b8
00808ea0  08 30 a0 e3                                      mov r3, #8
00808ea4  06 00 a0 e1                                      mov r0, r6
00808ea8  2d d4 ff eb                                      bl #0x7fdf64
00808eac  00 30 94 e5                                      ldr r3, [r4]
00808eb0  04 00 a0 e1                                      mov r0, r4
00808eb4  b8 71 9d e5                                      ldr r7, [sp, #0x1b8]
00808eb8  0f e0 a0 e1                                      mov lr, pc
00808ebc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00808ec0  00 00 57 e1                                      cmp r7, r0
00808ec4  ae ff ff 1a                                      bne #0x808d84
00808ec8  00 20 a0 e3                                      mov r2, #0
00808ecc  01 15 a0 e3                                      mov r1, #0x400000
00808ed0  06 00 a0 e1                                      mov r0, r6
00808ed4  0a 10 81 e2                                      add r1, r1, #0xa
00808ed8  02 30 a0 e1                                      mov r3, r2
00808edc  c8 d4 ff eb                                      bl #0x7fe204
00808ee0  a7 ff ff ea                                      b #0x808d84
00808ee4  00 30 a0 e3                                      mov r3, #0
00808ee8  72 6f 8d e2                                      add r6, sp, #0x1c8
00808eec  04 30 26 e5                                      str r3, [r6, #-4]!
00808ef0  9f cb ff eb                                      bl #0x7fbd74
00808ef4  06 16 a0 e3                                      mov r1, #0x600000
00808ef8  01 10 81 e2                                      add r1, r1, #1
00808efc  04 30 a0 e3                                      mov r3, #4
00808f00  08 00 80 e2                                      add r0, r0, #8
00808f04  06 20 a0 e1                                      mov r2, r6
00808f08  15 d4 ff eb                                      bl #0x7fdf64
00808f0c  38 36 03 e3                                      movw r3, #0x3638
00808f10  03 10 94 e7                                      ldr r1, [r4, r3]
00808f14  00 00 51 e3                                      cmp r1, #0
00808f18  54 01 00 ba                                      blt #0x809470
00808f1c  3c 36 03 e3                                      movw r3, #0x363c
00808f20  03 30 94 e7                                      ldr r3, [r4, r3]
00808f24  03 00 51 e1                                      cmp r1, r3
00808f28  53 01 00 0a                                      beq #0x80947c
00808f2c  04 00 a0 e1                                      mov r0, r4
00808f30  99 d5 ff eb                                      bl #0x7fe59c
00808f34  b4 15 9f e5                                      ldr r1, [pc, #0x5b4]
00808f38  38 36 03 e3                                      movw r3, #0x3638
00808f3c  03 30 94 e7                                      ldr r3, [r4, r3]
00808f40  00 60 a0 e1                                      mov r6, r0
00808f44  01 10 95 e7                                      ldr r1, [r5, r1]
00808f48  80 00 9d e5                                      ldr r0, [sp, #0x80]
00808f4c  2a 23 a0 e3                                      mov r2, #0xa8000000
00808f50  42 2b a0 e1                                      asr r2, r2, #0x16
00808f54  00 80 a0 e3                                      mov r8, #0
00808f58  00 90 a0 e3                                      mov sb, #0
00808f5c  72 af 8d e2                                      add sl, sp, #0x1c8
00808f60  00 00 53 e1                                      cmp r3, r0
00808f64  00 c0 e0 e3                                      mvn ip, #0
00808f68  00 00 a0 e3                                      mov r0, #0
00808f6c  08 10 81 e2                                      add r1, r1, #8
00808f70  f2 80 8a e1                                      strd r8, sb, [sl, r2]
00808f74  20 20 a0 e3                                      mov r2, #0x20
00808f78  64 20 8d e5                                      str r2, [sp, #0x64]
00808f7c  74 c0 8d e5                                      str ip, [sp, #0x74]
00808f80  7c 00 cd e5                                      strb r0, [sp, #0x7c]
00808f84  60 10 8d e5                                      str r1, [sp, #0x60]
00808f88  70 c0 8d e5                                      str ip, [sp, #0x70]
00808f8c  78 00 8d e5                                      str r0, [sp, #0x78]
00808f90  60 70 8d 02                                      addeq r7, sp, #0x60
00808f94  03 00 00 0a                                      beq #0x808fa8
00808f98  60 70 8d e2                                      add r7, sp, #0x60
00808f9c  07 00 a0 e1                                      mov r0, r7
00808fa0  80 30 8d e5                                      str r3, [sp, #0x80]
00808fa4  f6 2f 00 eb                                      bl #0x814f84
00808fa8  44 35 9f e5                                      ldr r3, [pc, #0x544]
00808fac  66 af a0 e3                                      mov sl, #0x198
00808fb0  9a 06 0a e0                                      mul sl, sl, r6
00808fb4  03 30 95 e7                                      ldr r3, [r5, r3]
00808fb8  4d 6c 8a e2                                      add r6, sl, #0x4d00
00808fbc  20 95 9f e5                                      ldr sb, [pc, #0x520]
00808fc0  08 30 83 e2                                      add r3, r3, #8
00808fc4  60 30 8d e5                                      str r3, [sp, #0x60]
00808fc8  0a a0 84 e0                                      add sl, r4, sl
00808fcc  10 00 86 e2                                      add r0, r6, #0x10
00808fd0  10 3d 04 e3                                      movw r3, #0x4d10
00808fd4  20 10 87 e2                                      add r1, r7, #0x20
00808fd8  03 30 9a e7                                      ldr r3, [sl, r3]
00808fdc  00 00 84 e0                                      add r0, r4, r0
00808fe0  0f e0 a0 e1                                      mov lr, pc
00808fe4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00808fe8  09 90 95 e7                                      ldr sb, [r5, sb]
00808fec  67 8f 8d e2                                      add r8, sp, #0x19c
00808ff0  20 70 8d e2                                      add r7, sp, #0x20
00808ff4  08 90 89 e2                                      add sb, sb, #8
00808ff8  60 90 8d e5                                      str sb, [sp, #0x60]
00808ffc  7f 46 00 eb                                      bl #0x81aa00
00809000  00 20 a0 e3                                      mov r2, #0
00809004  00 10 a0 e1                                      mov r1, r0
00809008  08 00 a0 e1                                      mov r0, r8
0080900c  47 47 00 eb                                      bl #0x81ad30
00809010  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
00809014  06 cd 8d e2                                      add ip, sp, #0x180
00809018  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0080901c  07 00 98 e8                                      ldm r8, {r0, r1, r2}
00809020  07 00 8c e8                                      stm ip, {r0, r1, r2}
00809024  06 1d 8d e2                                      add r1, sp, #0x180
00809028  07 00 a0 e1                                      mov r0, r7
0080902c  27 f4 ff eb                                      bl #0x8060d0
00809030  c0 34 9f e5                                      ldr r3, [pc, #0x4c0]
00809034  38 00 86 e2                                      add r0, r6, #0x38
00809038  00 00 84 e0                                      add r0, r4, r0
0080903c  03 30 95 e7                                      ldr r3, [r5, r3]
00809040  20 10 87 e2                                      add r1, r7, #0x20
00809044  08 30 83 e2                                      add r3, r3, #8
00809048  20 30 8d e5                                      str r3, [sp, #0x20]
0080904c  38 3d 04 e3                                      movw r3, #0x4d38
00809050  03 30 9a e7                                      ldr r3, [sl, r3]
00809054  0f e0 a0 e1                                      mov lr, pc
00809058  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0080905c  18 b0 9d e5                                      ldr fp, [sp, #0x18]
00809060  02 15 a0 e3                                      mov r1, #0x800000
00809064  00 20 a0 e3                                      mov r2, #0
00809068  03 10 81 e2                                      add r1, r1, #3
0080906c  0b 00 95 e7                                      ldr r0, [r5, fp]
00809070  02 30 a0 e1                                      mov r3, r2
00809074  20 90 8d e5                                      str sb, [sp, #0x20]
00809078  61 d4 ff eb                                      bl #0x7fe204
0080907c  3c cb ff eb                                      bl #0x7fbd74
00809080  06 16 a0 e3                                      mov r1, #0x600000
00809084  08 00 80 e2                                      add r0, r0, #8
00809088  01 10 81 e2                                      add r1, r1, #1
0080908c  d7 d4 ff eb                                      bl #0x7fe3f0
00809090  32 ff ff ea                                      b #0x808d60
00809094  be d1 ff eb                                      bl #0x7fd794
00809098  00 30 90 e5                                      ldr r3, [r0]
0080909c  0f e0 a0 e1                                      mov lr, pc
008090a0  00 f0 93 e5                                      ldr pc, [r3]
008090a4  5c 36 04 e3                                      movw r3, #0x465c
008090a8  03 10 94 e7                                      ldr r1, [r4, r3]
008090ac  54 36 04 e3                                      movw r3, #0x4654
008090b0  03 20 94 e7                                      ldr r2, [r4, r3]
008090b4  d3 3d 04 e3                                      movw r3, #0x4dd3
008090b8  00 00 61 e0                                      rsb r0, r1, r0
008090bc  62 30 41 e3                                      movt r3, #0x1062
008090c0  93 e0 83 e0                                      umull lr, r3, r3, r0
008090c4  04 00 82 e2                                      add r0, r2, #4
008090c8  0f 00 50 e3                                      cmp r0, #0xf
008090cc  0f 00 a0 a3                                      movge r0, #0xf
008090d0  23 03 50 e1                                      cmp r0, r3, lsr #6
008090d4  dd 00 00 aa                                      bge #0x809450
008090d8  00 00 51 e3                                      cmp r1, #0
008090dc  07 00 00 0a                                      beq #0x809100
008090e0  00 00 52 e3                                      cmp r2, #0
008090e4  05 00 00 1a                                      bne #0x809100
008090e8  18 30 9d e5                                      ldr r3, [sp, #0x18]
008090ec  02 15 a0 e3                                      mov r1, #0x800000
008090f0  0f 10 81 e2                                      add r1, r1, #0xf
008090f4  03 00 95 e7                                      ldr r0, [r5, r3]
008090f8  02 30 a0 e1                                      mov r3, r2
008090fc  40 d4 ff eb                                      bl #0x7fe204
00809100  04 00 a0 e1                                      mov r0, r4
00809104  88 f3 ff eb                                      bl #0x805f2c
00809108  00 00 50 e3                                      cmp r0, #0
0080910c  05 00 00 da                                      ble #0x809128
00809110  9f d1 ff eb                                      bl #0x7fd794
00809114  00 30 90 e5                                      ldr r3, [r0]
00809118  0f e0 a0 e1                                      mov lr, pc
0080911c  00 f0 93 e5                                      ldr pc, [r3]
00809120  5c 36 04 e3                                      movw r3, #0x465c
00809124  03 00 84 e7                                      str r0, [r4, r3]
00809128  04 00 a0 e1                                      mov r0, r4
0080912c  a4 f8 ff eb                                      bl #0x8073c4
00809130  14 fe ff ea                                      b #0x808988
00809134  0e cb ff eb                                      bl #0x7fbd74
00809138  00 10 a0 e3                                      mov r1, #0
0080913c  54 cb ff eb                                      bl #0x7fbe94
00809140  00 00 50 e3                                      cmp r0, #0
00809144  6f 00 00 da                                      ble #0x809308
00809148  09 cb ff eb                                      bl #0x7fbd74
0080914c  01 20 a0 e3                                      mov r2, #1
00809150  00 10 a0 e1                                      mov r1, r0
00809154  6e 0f 8d e2                                      add r0, sp, #0x1b8
00809158  49 d0 ff eb                                      bl #0x7fd284
0080915c  e4 3e 07 e3                                      movw r3, #0x7ee4
00809160  03 30 94 e7                                      ldr r3, [r4, r3]
00809164  00 00 53 e3                                      cmp r3, #0
00809168  eb fe ff da                                      ble #0x808d1c
0080916c  80 a3 9f e5                                      ldr sl, [pc, #0x380]
00809170  2f c3 a0 e3                                      mov ip, #0xbc000000
00809174  02 89 84 e2                                      add r8, r4, #0x8000
00809178  00 60 a0 e3                                      mov r6, #0
0080917c  4c cb a0 e1                                      asr ip, ip, #0x16
00809180  b0 e0 8d e2                                      add lr, sp, #0xb0
00809184  d8 00 8d e2                                      add r0, sp, #0xd8
00809188  0c a0 8d e5                                      str sl, [sp, #0xc]
0080918c  50 73 9f e5                                      ldr r7, [pc, #0x350]
00809190  58 b3 9f e5                                      ldr fp, [pc, #0x358]
00809194  18 80 88 e2                                      add r8, r8, #0x18
00809198  14 c0 8d e5                                      str ip, [sp, #0x14]
0080919c  00 90 e0 e3                                      mvn sb, #0
008091a0  06 a0 a0 e1                                      mov sl, r6
008091a4  08 e0 8d e5                                      str lr, [sp, #8]
008091a8  10 00 8d e5                                      str r0, [sp, #0x10]
008091ac  29 00 00 ea                                      b #0x809258
008091b0  0b 20 95 e7                                      ldr r2, [r5, fp]
008091b4  06 c1 93 e7                                      ldr ip, [r3, r6, lsl #2]
008091b8  f8 10 9d e5                                      ldr r1, [sp, #0xf8]
008091bc  08 20 82 e2                                      add r2, r2, #8
008091c0  d8 20 8d e5                                      str r2, [sp, #0xd8]
008091c4  01 00 5c e1                                      cmp ip, r1
008091c8  00 20 a0 e3                                      mov r2, #0
008091cc  20 10 a0 e3                                      mov r1, #0x20
008091d0  00 30 a0 e3                                      mov r3, #0
008091d4  10 00 9d e5                                      ldr r0, [sp, #0x10]
008091d8  dc 10 8d e5                                      str r1, [sp, #0xdc]
008091dc  f0 2e cd e1                                      strd r2, r3, [sp, #0xe0]
008091e0  e8 90 8d e5                                      str sb, [sp, #0xe8]
008091e4  ec 90 8d e5                                      str sb, [sp, #0xec]
008091e8  f0 a0 8d e5                                      str sl, [sp, #0xf0]
008091ec  f4 a0 cd e5                                      strb sl, [sp, #0xf4]
008091f0  01 00 00 0a                                      beq #0x8091fc
008091f4  f8 c0 8d e5                                      str ip, [sp, #0xf8]
008091f8  61 2f 00 eb                                      bl #0x814f84
008091fc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00809200  56 3f a0 e3                                      mov r3, #0x158
00809204  93 06 00 e0                                      mul r0, r3, r6
00809208  0c 30 95 e7                                      ldr r3, [r5, ip]
0080920c  10 e0 9d e5                                      ldr lr, [sp, #0x10]
00809210  02 09 80 e2                                      add r0, r0, #0x8000
00809214  08 30 83 e2                                      add r3, r3, #8
00809218  d8 30 8d e5                                      str r3, [sp, #0xd8]
0080921c  18 00 80 e2                                      add r0, r0, #0x18
00809220  00 30 98 e5                                      ldr r3, [r8]
00809224  00 00 84 e0                                      add r0, r4, r0
00809228  20 10 8e e2                                      add r1, lr, #0x20
0080922c  0f e0 a0 e1                                      mov lr, pc
00809230  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00809234  07 30 95 e7                                      ldr r3, [r5, r7]
00809238  08 30 83 e2                                      add r3, r3, #8
0080923c  d8 30 8d e5                                      str r3, [sp, #0xd8]
00809240  e4 3e 07 e3                                      movw r3, #0x7ee4
00809244  03 30 94 e7                                      ldr r3, [r4, r3]
00809248  01 60 86 e2                                      add r6, r6, #1
0080924c  56 8f 88 e2                                      add r8, r8, #0x158
00809250  03 00 56 e1                                      cmp r6, r3
00809254  b0 fe ff aa                                      bge #0x808d1c
00809258  b8 31 9d e5                                      ldr r3, [sp, #0x1b8]
0080925c  bc 21 9d e5                                      ldr r2, [sp, #0x1bc]
00809260  02 20 63 e0                                      rsb r2, r3, r2
00809264  42 01 56 e1                                      cmp r6, r2, asr #2
00809268  d0 ff ff 3a                                      blo #0x8091b0
0080926c  0b 30 95 e7                                      ldr r3, [r5, fp]
00809270  d0 20 9d e5                                      ldr r2, [sp, #0xd0]
00809274  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00809278  08 30 83 e2                                      add r3, r3, #8
0080927c  03 00 72 e3                                      cmn r2, #3
00809280  b0 30 8d e5                                      str r3, [sp, #0xb0]
00809284  20 10 a0 e3                                      mov r1, #0x20
00809288  00 20 a0 e3                                      mov r2, #0
0080928c  00 30 a0 e3                                      mov r3, #0
00809290  72 ef 8d e2                                      add lr, sp, #0x1c8
00809294  08 00 9d e5                                      ldr r0, [sp, #8]
00809298  b4 10 8d e5                                      str r1, [sp, #0xb4]
0080929c  fc 20 8e e1                                      strd r2, r3, [lr, ip]
008092a0  c0 90 8d e5                                      str sb, [sp, #0xc0]
008092a4  c4 90 8d e5                                      str sb, [sp, #0xc4]
008092a8  c8 a0 8d e5                                      str sl, [sp, #0xc8]
008092ac  cc a0 cd e5                                      strb sl, [sp, #0xcc]
008092b0  02 00 00 0a                                      beq #0x8092c0
008092b4  02 10 e0 e3                                      mvn r1, #2
008092b8  d0 10 8d e5                                      str r1, [sp, #0xd0]
008092bc  30 2f 00 eb                                      bl #0x814f84
008092c0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
008092c4  56 2f a0 e3                                      mov r2, #0x158
008092c8  92 06 00 e0                                      mul r0, r2, r6
008092cc  0c 30 95 e7                                      ldr r3, [r5, ip]
008092d0  08 e0 9d e5                                      ldr lr, [sp, #8]
008092d4  02 09 80 e2                                      add r0, r0, #0x8000
008092d8  08 30 83 e2                                      add r3, r3, #8
008092dc  b0 30 8d e5                                      str r3, [sp, #0xb0]
008092e0  18 00 80 e2                                      add r0, r0, #0x18
008092e4  00 30 98 e5                                      ldr r3, [r8]
008092e8  00 00 84 e0                                      add r0, r4, r0
008092ec  20 10 8e e2                                      add r1, lr, #0x20
008092f0  0f e0 a0 e1                                      mov lr, pc
008092f4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008092f8  07 30 95 e7                                      ldr r3, [r5, r7]
008092fc  08 30 83 e2                                      add r3, r3, #8
00809300  b0 30 8d e5                                      str r3, [sp, #0xb0]
00809304  cd ff ff ea                                      b #0x809240
00809308  e4 9e 07 e3                                      movw sb, #0x7ee4
0080930c  09 30 94 e7                                      ldr r3, [r4, sb]
00809310  00 00 53 e3                                      cmp r3, #0
00809314  89 fe ff da                                      ble #0x808d40
00809318  d0 b1 9f e5                                      ldr fp, [pc, #0x1d0]
0080931c  d0 01 9f e5                                      ldr r0, [pc, #0x1d0]
00809320  88 10 8d e2                                      add r1, sp, #0x88
00809324  0b 30 95 e7                                      ldr r3, [r5, fp]
00809328  b2 24 a0 e3                                      mov r2, #0xb2000000
0080932c  b0 71 9f e5                                      ldr r7, [pc, #0x1b0]
00809330  08 30 83 e2                                      add r3, r3, #8
00809334  02 89 84 e2                                      add r8, r4, #0x8000
00809338  00 60 a0 e3                                      mov r6, #0
0080933c  42 2b a0 e1                                      asr r2, r2, #0x16
00809340  14 30 8d e5                                      str r3, [sp, #0x14]
00809344  20 30 81 e2                                      add r3, r1, #0x20
00809348  0c 00 8d e5                                      str r0, [sp, #0xc]
0080934c  10 10 8d e5                                      str r1, [sp, #0x10]
00809350  18 80 88 e2                                      add r8, r8, #0x18
00809354  08 20 8d e5                                      str r2, [sp, #8]
00809358  00 a0 e0 e3                                      mvn sl, #0
0080935c  06 b0 a0 e1                                      mov fp, r6
00809360  1c 30 8d e5                                      str r3, [sp, #0x1c]
00809364  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00809368  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
0080936c  20 e0 a0 e3                                      mov lr, #0x20
00809370  88 c0 8d e5                                      str ip, [sp, #0x88]
00809374  08 c0 9d e5                                      ldr ip, [sp, #8]
00809378  03 00 73 e3                                      cmn r3, #3
0080937c  8c e0 8d e5                                      str lr, [sp, #0x8c]
00809380  00 20 a0 e3                                      mov r2, #0
00809384  00 30 a0 e3                                      mov r3, #0
00809388  72 ef 8d e2                                      add lr, sp, #0x1c8
0080938c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00809390  98 a0 8d e5                                      str sl, [sp, #0x98]
00809394  fc 20 8e e1                                      strd r2, r3, [lr, ip]
00809398  9c a0 8d e5                                      str sl, [sp, #0x9c]
0080939c  a0 b0 8d e5                                      str fp, [sp, #0xa0]
008093a0  a4 b0 cd e5                                      strb fp, [sp, #0xa4]
008093a4  02 00 00 0a                                      beq #0x8093b4
008093a8  02 20 e0 e3                                      mvn r2, #2
008093ac  a8 20 8d e5                                      str r2, [sp, #0xa8]
008093b0  f3 2e 00 eb                                      bl #0x814f84
008093b4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
008093b8  56 3f a0 e3                                      mov r3, #0x158
008093bc  93 06 00 e0                                      mul r0, r3, r6
008093c0  0c 30 95 e7                                      ldr r3, [r5, ip]
008093c4  02 09 80 e2                                      add r0, r0, #0x8000
008093c8  18 00 80 e2                                      add r0, r0, #0x18
008093cc  08 30 83 e2                                      add r3, r3, #8
008093d0  88 30 8d e5                                      str r3, [sp, #0x88]
008093d4  58 31 98 e4                                      ldr r3, [r8], #0x158
008093d8  00 00 84 e0                                      add r0, r4, r0
008093dc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
008093e0  0f e0 a0 e1                                      mov lr, pc
008093e4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008093e8  09 20 94 e7                                      ldr r2, [r4, sb]
008093ec  07 30 95 e7                                      ldr r3, [r5, r7]
008093f0  01 60 86 e2                                      add r6, r6, #1
008093f4  02 00 56 e1                                      cmp r6, r2
008093f8  08 30 83 e2                                      add r3, r3, #8
008093fc  88 30 8d e5                                      str r3, [sp, #0x88]
00809400  d7 ff ff ba                                      blt #0x809364
00809404  4d fe ff ea                                      b #0x808d40
00809408  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0080940c  18 10 8d e5                                      str r1, [sp, #0x18]
00809410  58 fd ff ea                                      b #0x808978
00809414  00 30 94 e5                                      ldr r3, [r4]
00809418  04 00 a0 e1                                      mov r0, r4
0080941c  0f e0 a0 e1                                      mov lr, pc
00809420  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00809424  00 00 50 e3                                      cmp r0, #0
00809428  22 00 00 1a                                      bne #0x8094b8
0080942c  00 30 94 e5                                      ldr r3, [r4]
00809430  04 00 a0 e1                                      mov r0, r4
00809434  0f e0 a0 e1                                      mov lr, pc
00809438  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0080943c  00 10 a0 e1                                      mov r1, r0
00809440  04 00 a0 e1                                      mov r0, r4
00809444  65 f2 ff eb                                      bl #0x805de0
00809448  00 00 a0 e3                                      mov r0, #0
0080944c  38 fd ff ea                                      b #0x808934
00809450  00 00 51 e3                                      cmp r1, #0
00809454  29 ff ff 0a                                      beq #0x809100
00809458  32 ff ff ea                                      b #0x809128
0080945c  f7 1b ec eb                                      bl #0x310440
00809460  36 fe ff ea                                      b #0x808d40
00809464  70 30 9f e5                                      ldr r3, [pc, #0x70]
00809468  18 30 8d e5                                      str r3, [sp, #0x18]
0080946c  3b fd ff ea                                      b #0x808960
00809470  01 00 71 e3                                      cmn r1, #1
00809474  00 ff ff 0a                                      beq #0x80907c
00809478  ab fe ff ea                                      b #0x808f2c
0080947c  00 30 94 e5                                      ldr r3, [r4]
00809480  04 00 a0 e1                                      mov r0, r4
00809484  0f e0 a0 e1                                      mov lr, pc
00809488  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0080948c  00 00 50 e3                                      cmp r0, #0
00809490  f9 fe ff 1a                                      bne #0x80907c
00809494  00 30 94 e5                                      ldr r3, [r4]
00809498  04 00 a0 e1                                      mov r0, r4
0080949c  0f e0 a0 e1                                      mov lr, pc
008094a0  58 f0 93 e5                                      ldr pc, [r3, #0x58]
008094a4  00 10 50 e2                                      subs r1, r0, #0
008094a8  f3 fe ff 1a                                      bne #0x80907c
008094ac  04 00 a0 e1                                      mov r0, r4
008094b0  4a f2 ff eb                                      bl #0x805de0
008094b4  f0 fe ff ea                                      b #0x80907c
008094b8  00 30 94 e5                                      ldr r3, [r4]
008094bc  04 00 a0 e1                                      mov r0, r4
008094c0  0f e0 a0 e1                                      mov lr, pc
008094c4  54 f0 93 e5                                      ldr pc, [r3, #0x54]
008094c8  00 00 50 e3                                      cmp r0, #0
008094cc  d6 ff ff 1a                                      bne #0x80942c
008094d0  00 00 a0 e3                                      mov r0, #0
008094d4  16 fd ff ea                                      b #0x808934
; mapping-symbol data/literal pool
008094d8  68 c1 18 00 3c 34 00 00 18 30 00 00 a8 10 00 00  .byte 0x68, 0xc1, 0x18, 0x00, 0x3c, 0x34, 0x00, 0x00, 0x18, 0x30, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
008094e8  c8 0a 00 00 88 15 00 00 84 29 00 00 c8 10 00 00  .byte 0xc8, 0x0a, 0x00, 0x00, 0x88, 0x15, 0x00, 0x00, 0x84, 0x29, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
008094f8  f0 28 00 00                                      .byte 0xf0, 0x28, 0x00, 0x00

; FUNCTION 0x008094fc, declared_size=712, range_size=712, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal9AddServerEiR10CNetworkIdiR15CRoomAttributes
; demangled: CMatchingLocal::AddServer(int, CNetworkId&, int, CRoomAttributes&)
; decoder-mode: arm
008094fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00809500  b0 62 9f e5                                      ldr r6, [pc, #0x2b0]
00809504  b0 a2 9f e5                                      ldr sl, [pc, #0x2b0]
00809508  00 70 a0 e1                                      mov r7, r0
0080950c  06 60 8f e0                                      add r6, pc, r6
00809510  0a 00 96 e7                                      ldr r0, [r6, sl]
00809514  41 de 4d e2                                      sub sp, sp, #0x410
00809518  04 d0 4d e2                                      sub sp, sp, #4
0080951c  00 c0 90 e5                                      ldr ip, [r0]
00809520  46 4c 87 e2                                      add r4, r7, #0x4600
00809524  03 b0 a0 e1                                      mov fp, r3
00809528  38 34 9d e5                                      ldr r3, [sp, #0x438]
0080952c  3c 80 84 e2                                      add r8, r4, #0x3c
00809530  08 00 a0 e1                                      mov r0, r8
00809534  00 30 8d e5                                      str r3, [sp]
00809538  04 10 8d e5                                      str r1, [sp, #4]
0080953c  0c c4 8d e5                                      str ip, [sp, #0x40c]
00809540  02 50 a0 e1                                      mov r5, r2
00809544  88 13 00 eb                                      bl #0x80e36c
00809548  4c 36 04 e3                                      movw r3, #0x464c
0080954c  03 90 97 e7                                      ldr sb, [r7, r3]
00809550  44 40 84 e2                                      add r4, r4, #0x44
00809554  09 00 54 e1                                      cmp r4, sb
00809558  0f 00 00 0a                                      beq #0x80959c
0080955c  1c 00 89 e2                                      add r0, sb, #0x1c
00809560  05 10 a0 e1                                      mov r1, r5
00809564  f4 c8 ff eb                                      bl #0x7fb93c
00809568  00 00 50 e3                                      cmp r0, #0
0080956c  27 00 00 1a                                      bne #0x809610
00809570  0c 20 99 e5                                      ldr r2, [sb, #0xc]
00809574  00 00 52 e3                                      cmp r2, #0
00809578  01 00 00 1a                                      bne #0x809584
0080957c  16 00 00 ea                                      b #0x8095dc
00809580  03 20 a0 e1                                      mov r2, r3
00809584  08 30 92 e5                                      ldr r3, [r2, #8]
00809588  00 00 53 e3                                      cmp r3, #0
0080958c  fb ff ff 1a                                      bne #0x809580
00809590  02 90 a0 e1                                      mov sb, r2
00809594  09 00 54 e1                                      cmp r4, sb
00809598  ef ff ff 1a                                      bne #0x80955c
0080959c  49 0c 87 e2                                      add r0, r7, #0x4900
008095a0  f8 00 80 e2                                      add r0, r0, #0xf8
008095a4  00 10 9d e5                                      ldr r1, [sp]
008095a8  e6 3f 00 eb                                      bl #0x819548
008095ac  00 00 50 e3                                      cmp r0, #0
008095b0  1f 00 00 1a                                      bne #0x809634
008095b4  08 00 a0 e1                                      mov r0, r8
008095b8  6a 13 00 eb                                      bl #0x80e368
008095bc  0a 30 96 e7                                      ldr r3, [r6, sl]
008095c0  0c 24 9d e5                                      ldr r2, [sp, #0x40c]
008095c4  00 30 93 e5                                      ldr r3, [r3]
008095c8  03 00 52 e1                                      cmp r2, r3
008095cc  78 00 00 1a                                      bne #0x8097b4
008095d0  14 d0 8d e2                                      add sp, sp, #0x14
008095d4  01 db 8d e2                                      add sp, sp, #0x400
008095d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008095dc  04 30 99 e5                                      ldr r3, [sb, #4]
008095e0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
008095e4  01 00 59 e1                                      cmp sb, r1
008095e8  05 00 00 1a                                      bne #0x809604
008095ec  03 90 a0 e1                                      mov sb, r3
008095f0  04 30 93 e5                                      ldr r3, [r3, #4]
008095f4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008095f8  09 00 52 e1                                      cmp r2, sb
008095fc  fa ff ff 0a                                      beq #0x8095ec
00809600  0c 20 99 e5                                      ldr r2, [sb, #0xc]
00809604  03 00 52 e1                                      cmp r2, r3
00809608  03 90 a0 11                                      movne sb, r3
0080960c  d0 ff ff ea                                      b #0x809554
00809610  5f d0 ff eb                                      bl #0x7fd794
00809614  00 30 90 e5                                      ldr r3, [r0]
00809618  0f e0 a0 e1                                      mov lr, pc
0080961c  00 f0 93 e5                                      ldr pc, [r3]
00809620  54 b0 89 e5                                      str fp, [sb, #0x54]
00809624  38 00 89 e5                                      str r0, [sb, #0x38]
00809628  08 00 a0 e1                                      mov r0, r8
0080962c  4d 13 00 eb                                      bl #0x80e368
00809630  e1 ff ff ea                                      b #0x8095bc
00809634  10 90 8d e2                                      add sb, sp, #0x10
00809638  09 00 a0 e1                                      mov r0, sb
0080963c  e0 fa ff eb                                      bl #0x8081c4
00809640  04 30 9d e5                                      ldr r3, [sp, #4]
00809644  04 c0 89 e2                                      add ip, sb, #4
00809648  0c 00 55 e1                                      cmp r5, ip
0080964c  10 30 8d e5                                      str r3, [sp, #0x10]
00809650  04 00 00 0a                                      beq #0x809668
00809654  05 e0 a0 e1                                      mov lr, r5
00809658  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0080965c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00809660  07 00 9e e8                                      ldm lr, {r0, r1, r2}
00809664  07 00 8c e8                                      stm ip, {r0, r1, r2}
00809668  49 d0 ff eb                                      bl #0x7fd794
0080966c  00 30 90 e5                                      ldr r3, [r0]
00809670  0f e0 a0 e1                                      mov lr, pc
00809674  00 f0 93 e5                                      ldr pc, [r3]
00809678  fd 3f 8d e2                                      add r3, sp, #0x3f4
0080967c  04 30 8d e5                                      str r3, [sp, #4]
00809680  30 00 8d e5                                      str r0, [sp, #0x30]
00809684  dd 44 00 eb                                      bl #0x81aa00
00809688  00 30 a0 e1                                      mov r3, r0
0080968c  00 30 93 e5                                      ldr r3, [r3]
00809690  00 10 a0 e1                                      mov r1, r0
00809694  05 20 a0 e1                                      mov r2, r5
00809698  04 00 9d e5                                      ldr r0, [sp, #4]
0080969c  0f e0 a0 e1                                      mov lr, pc
008096a0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008096a4  04 24 9d e5                                      ldr r2, [sp, #0x404]
008096a8  08 14 9d e5                                      ldr r1, [sp, #0x408]
008096ac  24 00 89 e2                                      add r0, sb, #0x24
008096b0  ca 1c ec eb                                      bl #0x3109e0
008096b4  04 00 9d e5                                      ldr r0, [sp, #4]
008096b8  e5 3a ec eb                                      bl #0x318254
008096bc  4c b0 8d e5                                      str fp, [sp, #0x4c]
008096c0  33 d0 ff eb                                      bl #0x7fd794
008096c4  00 30 90 e5                                      ldr r3, [r0]
008096c8  0f e0 a0 e1                                      mov lr, pc
008096cc  00 f0 93 e5                                      ldr pc, [r3]
008096d0  5c 36 04 e3                                      movw r3, #0x465c
008096d4  03 30 97 e7                                      ldr r3, [r7, r3]
008096d8  00 10 9d e5                                      ldr r1, [sp]
008096dc  00 30 63 e0                                      rsb r3, r3, r0
008096e0  48 00 89 e2                                      add r0, sb, #0x48
008096e4  50 30 8d e5                                      str r3, [sp, #0x50]
008096e8  8f 3c 00 eb                                      bl #0x81892c
008096ec  34 26 03 e3                                      movw r2, #0x3634
008096f0  02 30 97 e7                                      ldr r3, [r7, r2]
008096f4  04 10 49 e2                                      sub r1, sb, #4
008096f8  04 00 a0 e1                                      mov r0, r4
008096fc  01 c0 83 e2                                      add ip, r3, #1
00809700  02 c0 87 e7                                      str ip, [r7, r2]
00809704  0c 30 8d e5                                      str r3, [sp, #0xc]
00809708  22 e6 ff eb                                      bl #0x802f98
0080970c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00809710  00 c0 a0 e1                                      mov ip, r0
00809714  04 e0 89 e2                                      add lr, sb, #4
00809718  04 30 8c e4                                      str r3, [ip], #4
0080971c  0e 00 5c e1                                      cmp ip, lr
00809720  00 40 a0 e1                                      mov r4, r0
00809724  0f 00 be 18                                      ldmne lr!, {r0, r1, r2, r3}
00809728  0f 00 ac 18                                      stmne ip!, {r0, r1, r2, r3}
0080972c  0c 30 a0 11                                      movne r3, ip
00809730  07 00 9e 18                                      ldmne lr, {r0, r1, r2}
00809734  07 00 83 18                                      stmne r3, {r0, r1, r2}
00809738  24 30 89 e2                                      add r3, sb, #0x24
0080973c  24 00 84 e2                                      add r0, r4, #0x24
00809740  03 00 50 e1                                      cmp r0, r3
00809744  30 30 9d e5                                      ldr r3, [sp, #0x30]
00809748  20 30 84 e5                                      str r3, [r4, #0x20]
0080974c  02 00 00 0a                                      beq #0x80975c
00809750  48 10 9d e5                                      ldr r1, [sp, #0x48]
00809754  44 20 9d e5                                      ldr r2, [sp, #0x44]
00809758  a0 1c ec eb                                      bl #0x3109e0
0080975c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00809760  48 00 84 e2                                      add r0, r4, #0x48
00809764  48 10 89 e2                                      add r1, sb, #0x48
00809768  3c 30 84 e5                                      str r3, [r4, #0x3c]
0080976c  50 30 9d e5                                      ldr r3, [sp, #0x50]
00809770  40 30 84 e5                                      str r3, [r4, #0x40]
00809774  6c 3c 00 eb                                      bl #0x81892c
00809778  30 36 03 e3                                      movw r3, #0x3630
0080977c  03 30 d7 e7                                      ldrb r3, [r7, r3]
00809780  00 00 53 e3                                      cmp r3, #0
00809784  02 00 00 1a                                      bne #0x809794
00809788  09 00 a0 e1                                      mov r0, sb
0080978c  ab f6 ff eb                                      bl #0x807240
00809790  87 ff ff ea                                      b #0x8095b4
00809794  24 30 9f e5                                      ldr r3, [pc, #0x24]
00809798  00 20 a0 e3                                      mov r2, #0
0080979c  02 15 a0 e3                                      mov r1, #0x800000
008097a0  03 00 96 e7                                      ldr r0, [r6, r3]
008097a4  0e 10 81 e2                                      add r1, r1, #0xe
008097a8  02 30 a0 e1                                      mov r3, r2
008097ac  94 d2 ff eb                                      bl #0x7fe204
008097b0  f4 ff ff ea                                      b #0x809788
008097b4  d5 12 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008097b8  84 b5 18 00 ac 40 00 00 3c 34 00 00              .byte 0x84, 0xb5, 0x18, 0x00, 0xac, 0x40, 0x00, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x008097c4, declared_size=264, range_size=264, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal20ProcessServerMessageER10CNetworkIdR12NetBitStream
; demangled: CMatchingLocal::ProcessServerMessage(CNetworkId&, NetBitStream&)
; decoder-mode: arm
008097c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008097c8  38 36 03 e3                                      movw r3, #0x3638
008097cc  03 30 90 e7                                      ldr r3, [r0, r3]
008097d0  ec 70 9f e5                                      ldr r7, [pc, #0xec]
008097d4  f2 df 4d e2                                      sub sp, sp, #0x3c8
008097d8  00 00 53 e3                                      cmp r3, #0
008097dc  00 40 a0 e1                                      mov r4, r0
008097e0  02 80 a0 e1                                      mov r8, r2
008097e4  07 70 8f e0                                      add r7, pc, r7
008097e8  03 00 00 ba                                      blt #0x8097fc
008097ec  3c 26 03 e3                                      movw r2, #0x363c
008097f0  02 20 90 e7                                      ldr r2, [r0, r2]
008097f4  02 00 53 e1                                      cmp r3, r2
008097f8  28 00 00 0a                                      beq #0x8098a0
008097fc  3a 6e 8d e2                                      add r6, sp, #0x3a0
00809800  06 00 a0 e1                                      mov r0, r6
00809804  08 50 8d e2                                      add r5, sp, #8
00809808  dd ca ff eb                                      bl #0x7fc384
0080980c  05 00 a0 e1                                      mov r0, r5
00809810  5b 3e 00 eb                                      bl #0x819184
00809814  28 20 a0 e3                                      mov r2, #0x28
00809818  08 00 a0 e1                                      mov r0, r8
0080981c  06 10 a0 e1                                      mov r1, r6
00809820  00 15 00 eb                                      bl #0x80ec28
00809824  08 10 a0 e1                                      mov r1, r8
00809828  05 00 a0 e1                                      mov r0, r5
0080982c  8a 39 00 eb                                      bl #0x817e5c
00809830  4f c9 ff eb                                      bl #0x7fbd74
00809834  bc 13 9d e5                                      ldr r1, [sp, #0x3bc]
00809838  ad cb ff eb                                      bl #0x7fc6f4
0080983c  00 00 50 e3                                      cmp r0, #0
00809840  0e 00 00 0a                                      beq #0x809880
00809844  08 30 94 e5                                      ldr r3, [r4, #8]
00809848  c0 23 9d e5                                      ldr r2, [sp, #0x3c0]
0080984c  03 00 52 e1                                      cmp r2, r3
00809850  0a 00 00 da                                      ble #0x809880
00809854  46 c9 ff eb                                      bl #0x7fbd74
00809858  bc 13 9d e5                                      ldr r1, [sp, #0x3bc]
0080985c  00 20 a0 e3                                      mov r2, #0
00809860  ac cb ff eb                                      bl #0x7fc718
00809864  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00809868  02 15 a0 e3                                      mov r1, #0x800000
0080986c  00 20 a0 e3                                      mov r2, #0
00809870  03 00 97 e7                                      ldr r0, [r7, r3]
00809874  0d 10 81 e2                                      add r1, r1, #0xd
00809878  02 30 a0 e1                                      mov r3, r2
0080987c  60 d2 ff eb                                      bl #0x7fe204
00809880  c4 33 dd e5                                      ldrb r3, [sp, #0x3c4]
00809884  00 00 53 e3                                      cmp r3, #0
00809888  06 00 00 0a                                      beq #0x8098a8
0080988c  04 00 a0 e1                                      mov r0, r4
00809890  06 10 a0 e1                                      mov r1, r6
00809894  8f f6 ff eb                                      bl #0x8072d8
00809898  05 00 a0 e1                                      mov r0, r5
0080989c  dc 3c 00 eb                                      bl #0x818c14
008098a0  f2 df 8d e2                                      add sp, sp, #0x3c8
008098a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008098a8  04 00 a0 e1                                      mov r0, r4
008098ac  bc 13 9d e5                                      ldr r1, [sp, #0x3bc]
008098b0  06 20 a0 e1                                      mov r2, r6
008098b4  c0 33 9d e5                                      ldr r3, [sp, #0x3c0]
008098b8  00 50 8d e5                                      str r5, [sp]
008098bc  0e ff ff eb                                      bl #0x8094fc
008098c0  f4 ff ff ea                                      b #0x809898
; mapping-symbol data/literal pool
008098c4  ac b2 18 00 3c 34 00 00                          .byte 0xac, 0xb2, 0x18, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x008098cc, declared_size=144, range_size=144, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal31BroadcastPacketReceiverCallbackER10CNetworkIdPci
; demangled: CMatchingLocal::BroadcastPacketReceiverCallback(CNetworkId&, char*, int)
; decoder-mode: arm
008098cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008098d0  28 d0 4d e2                                      sub sp, sp, #0x28
008098d4  04 40 8d e2                                      add r4, sp, #4
008098d8  03 50 a0 e1                                      mov r5, r3
008098dc  02 80 a0 e1                                      mov r8, r2
008098e0  00 70 a0 e1                                      mov r7, r0
008098e4  01 60 a0 e1                                      mov r6, r1
008098e8  04 00 a0 e1                                      mov r0, r4
008098ec  03 10 a0 e1                                      mov r1, r3
008098f0  04 14 00 eb                                      bl #0x80e908
008098f4  04 00 a0 e1                                      mov r0, r4
008098f8  08 10 a0 e1                                      mov r1, r8
008098fc  05 20 a0 e1                                      mov r2, r5
00809900  4d 15 00 eb                                      bl #0x80ee3c
00809904  04 00 a0 e1                                      mov r0, r4
00809908  24 10 8d e2                                      add r1, sp, #0x24
0080990c  01 20 a0 e3                                      mov r2, #1
00809910  c4 14 00 eb                                      bl #0x80ec28
00809914  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
00809918  01 00 53 e3                                      cmp r3, #1
0080991c  09 00 00 0a                                      beq #0x809948
00809920  02 00 53 e3                                      cmp r3, #2
00809924  03 00 00 1a                                      bne #0x809938
00809928  07 00 a0 e1                                      mov r0, r7
0080992c  06 10 a0 e1                                      mov r1, r6
00809930  04 20 a0 e1                                      mov r2, r4
00809934  69 f1 ff eb                                      bl #0x805ee0
00809938  04 00 a0 e1                                      mov r0, r4
0080993c  93 13 00 eb                                      bl #0x80e790
00809940  28 d0 8d e2                                      add sp, sp, #0x28
00809944  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00809948  07 00 a0 e1                                      mov r0, r7
0080994c  06 10 a0 e1                                      mov r1, r6
00809950  04 20 a0 e1                                      mov r2, r4
00809954  9a ff ff eb                                      bl #0x8097c4
00809958  f6 ff ff ea                                      b #0x809938

; FUNCTION 0x0080995c, declared_size=60, range_size=60, mode=arm
; class-group: CMatchingLocal
; alias: _ZN14CMatchingLocal32sBroadcastPacketReceiverCallbackER10CNetworkIdPci
; demangled: CMatchingLocal::sBroadcastPacketReceiverCallback(CNetworkId&, char*, int)
; decoder-mode: arm
0080995c  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
00809960  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00809964  30 00 2d e9                                      push {r4, r5}
00809968  0c c0 8f e0                                      add ip, pc, ip
0080996c  00 50 a0 e1                                      mov r5, r0
00809970  03 00 9c e7                                      ldr r0, [ip, r3]
00809974  01 40 a0 e1                                      mov r4, r1
00809978  02 30 a0 e1                                      mov r3, r2
0080997c  00 00 90 e5                                      ldr r0, [r0]
00809980  05 10 a0 e1                                      mov r1, r5
00809984  04 20 a0 e1                                      mov r2, r4
00809988  30 00 bd e8                                      pop {r4, r5}
0080998c  ce ff ff ea                                      b #0x8098cc
; mapping-symbol data/literal pool
00809990  28 b1 18 00 38 43 00 00                          .byte 0x28, 0xb1, 0x18, 0x00, 0x38, 0x43, 0x00, 0x00
