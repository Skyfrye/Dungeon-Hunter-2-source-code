; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081bbe8, declared_size=12, range_size=12, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive11SetMemberIdEi
; demangled: CMatchingGLLive::SetMemberId(int)
; decoder-mode: arm
0081bbe8  d9 3d a0 e3                                      mov r3, #0x3640
0081bbec  03 10 80 e7                                      str r1, [r0, r3]
0081bbf0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bbf4, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive19GenerateNewMemberIdEv
; demangled: CMatchingGLLive::GenerateNewMemberId()
; decoder-mode: arm
0081bbf4  00 00 e0 e3                                      mvn r0, #0
0081bbf8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bbfc, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive25SendConnectRequestMessageE12tPACKET_TYPEi
; demangled: CMatchingGLLive::SendConnectRequestMessage(tPACKET_TYPE, int)
; decoder-mode: arm
0081bbfc  00 00 a0 e3                                      mov r0, #0
0081bc00  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc04, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive28ProcessConnectRequestMessageER10CNetworkIdR12NetBitStream
; demangled: CMatchingGLLive::ProcessConnectRequestMessage(CNetworkId&, NetBitStream&)
; decoder-mode: arm
0081bc04  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc08, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive17ReceiveInvitationEv
; demangled: CMatchingGLLive::ReceiveInvitation()
; decoder-mode: arm
0081bc08  00 00 a0 e3                                      mov r0, #0
0081bc0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc10, declared_size=12, range_size=12, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive19GetInvitationRoomIdEv
; demangled: CMatchingGLLive::GetInvitationRoomId()
; decoder-mode: arm
0081bc10  00 00 a0 e3                                      mov r0, #0
0081bc14  00 10 a0 e3                                      mov r1, #0
0081bc18  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc1c, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive9CloseRoomEv
; demangled: CMatchingGLLive::CloseRoom()
; decoder-mode: arm
0081bc1c  00 00 a0 e3                                      mov r0, #0
0081bc20  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc24, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive8OpenRoomEb
; demangled: CMatchingGLLive::OpenRoom(bool)
; decoder-mode: arm
0081bc24  00 00 a0 e3                                      mov r0, #0
0081bc28  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc2c, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive8HideRoomEv
; demangled: CMatchingGLLive::HideRoom()
; decoder-mode: arm
0081bc2c  00 00 a0 e3                                      mov r0, #0
0081bc30  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc34, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive8ShowRoomEv
; demangled: CMatchingGLLive::ShowRoom()
; decoder-mode: arm
0081bc34  00 00 a0 e3                                      mov r0, #0
0081bc38  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc3c, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive12IsRoomClosedEv
; demangled: CMatchingGLLive::IsRoomClosed()
; decoder-mode: arm
0081bc3c  0e 00 d0 e5                                      ldrb r0, [r0, #0xe]
0081bc40  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc44, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive12IsRoomHiddenEv
; demangled: CMatchingGLLive::IsRoomHidden()
; decoder-mode: arm
0081bc44  0d 00 d0 e5                                      ldrb r0, [r0, #0xd]
0081bc48  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc4c, declared_size=8, range_size=8, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive19ProcessFriendEventsEv
; demangled: CMatchingGLLive::ProcessFriendEvents()
; decoder-mode: arm
0081bc4c  00 00 a0 e3                                      mov r0, #0
0081bc50  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc54, declared_size=32, range_size=32, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive16GetTransportTypeE14tPROTOCOL_TYPE
; demangled: CMatchingGLLive::GetTransportType(tPROTOCOL_TYPE)
; decoder-mode: arm
0081bc54  02 00 51 e3                                      cmp r1, #2
0081bc58  00 00 a0 83                                      movhi r0, #0
0081bc5c  1e ff 2f 81                                      bxhi lr
0081bc60  08 30 9f e5                                      ldr r3, [pc, #8]
0081bc64  03 30 8f e0                                      add r3, pc, r3
0081bc68  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
0081bc6c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0081bc70  24 06 0f 00                                      .byte 0x24, 0x06, 0x0f, 0x00

; FUNCTION 0x0081bc74, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive29ProcessConnectResponseMessageER10CNetworkIdR12NetBitStream
; demangled: CMatchingGLLive::ProcessConnectResponseMessage(CNetworkId&, NetBitStream&)
; decoder-mode: arm
0081bc74  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc78, declared_size=28, range_size=28, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive13GetMemberMaskEi
; demangled: CMatchingGLLive::GetMemberMask(int)
; decoder-mode: arm
0081bc78  00 00 51 e3                                      cmp r1, #0
0081bc7c  01 10 41 a2                                      subge r1, r1, #1
0081bc80  21 12 a0 a1                                      lsrge r1, r1, #4
0081bc84  01 00 a0 a3                                      movge r0, #1
0081bc88  00 00 a0 b3                                      movlt r0, #0
0081bc8c  10 01 a0 a1                                      lslge r0, r0, r1
0081bc90  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc94, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive20ProcessClientMessageER10CNetworkIdR12NetBitStream
; demangled: CMatchingGLLive::ProcessClientMessage(CNetworkId&, NetBitStream&)
; decoder-mode: arm
0081bc94  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc98, declared_size=4, range_size=4, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive13InitGLFriendsEv
; demangled: CMatchingGLLive::InitGLFriends()
; decoder-mode: arm
0081bc98  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bc9c, declared_size=12, range_size=12, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive19GLFriendsListLoadedEv
; demangled: CMatchingGLLive::GLFriendsListLoaded()
; decoder-mode: arm
0081bc9c  e0 3b 06 e3                                      movw r3, #0x6be0
0081bca0  03 00 d0 e7                                      ldrb r0, [r0, r3]
0081bca4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bca8, declared_size=12, range_size=12, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive19GLFriendsListLoadedEb
; demangled: CMatchingGLLive::GLFriendsListLoaded(bool)
; decoder-mode: arm
0081bca8  e0 3b 06 e3                                      movw r3, #0x6be0
0081bcac  03 10 c0 e7                                      strb r1, [r0, r3]
0081bcb0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0081bcd4, declared_size=52, range_size=52, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive17SetGLLivePasswordEPKc
; demangled: CMatchingGLLive::SetGLLivePassword(char const*)
; decoder-mode: arm
0081bcd4  70 40 2d e9                                      push {r4, r5, r6, lr}
0081bcd8  00 50 a0 e1                                      mov r5, r0
0081bcdc  01 00 a0 e1                                      mov r0, r1
0081bce0  01 40 a0 e1                                      mov r4, r1
0081bce4  5a c8 eb eb                                      bl #0x30de54
0081bce8  0f 00 50 e3                                      cmp r0, #0xf
0081bcec  00 00 00 9a                                      bls #0x81bcf4
0081bcf0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081bcf4  6b 0c 85 e2                                      add r0, r5, #0x6b00
0081bcf8  f2 00 80 e2                                      add r0, r0, #0xf2
0081bcfc  04 10 a0 e1                                      mov r1, r4
0081bd00  70 40 bd e8                                      pop {r4, r5, r6, lr}
0081bd04  05 ca eb ea                                      b #0x30e520

; FUNCTION 0x0081bd08, declared_size=52, range_size=52, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive17SetGLLiveUserNameEPKc
; demangled: CMatchingGLLive::SetGLLiveUserName(char const*)
; decoder-mode: arm
0081bd08  70 40 2d e9                                      push {r4, r5, r6, lr}
0081bd0c  00 50 a0 e1                                      mov r5, r0
0081bd10  01 00 a0 e1                                      mov r0, r1
0081bd14  01 40 a0 e1                                      mov r4, r1
0081bd18  4d c8 eb eb                                      bl #0x30de54
0081bd1c  0f 00 50 e3                                      cmp r0, #0xf
0081bd20  00 00 00 9a                                      bls #0x81bd28
0081bd24  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081bd28  6b 0c 85 e2                                      add r0, r5, #0x6b00
0081bd2c  e1 00 80 e2                                      add r0, r0, #0xe1
0081bd30  04 10 a0 e1                                      mov r1, r4
0081bd34  70 40 bd e8                                      pop {r4, r5, r6, lr}
0081bd38  f8 c9 eb ea                                      b #0x30e520

; FUNCTION 0x0081bd3c, declared_size=240, range_size=240, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive17SaveGLLiveProfileEv
; demangled: CMatchingGLLive::SaveGLLiveProfile()
; decoder-mode: arm
0081bd3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081bd40  d4 60 9f e5                                      ldr r6, [pc, #0xd4]
0081bd44  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
0081bd48  00 50 a0 e1                                      mov r5, r0
0081bd4c  06 60 8f e0                                      add r6, pc, r6
0081bd50  01 10 8f e0                                      add r1, pc, r1
0081bd54  06 00 a0 e1                                      mov r0, r6
0081bd58  2d 3d 00 eb                                      bl #0x82b214
0081bd5c  00 40 50 e2                                      subs r4, r0, #0
0081bd60  22 00 00 0a                                      beq #0x81bdf0
0081bd64  b8 70 9f e5                                      ldr r7, [pc, #0xb8]
0081bd68  6b 6c 85 e2                                      add r6, r5, #0x6b00
0081bd6c  07 70 8f e0                                      add r7, pc, r7
0081bd70  07 00 a0 e1                                      mov r0, r7
0081bd74  8c 3c 00 eb                                      bl #0x82afac
0081bd78  01 10 a0 e3                                      mov r1, #1
0081bd7c  01 20 80 e2                                      add r2, r0, #1
0081bd80  04 30 a0 e1                                      mov r3, r4
0081bd84  07 00 a0 e1                                      mov r0, r7
0081bd88  20 3c 00 eb                                      bl #0x82ae10
0081bd8c  01 10 a0 e3                                      mov r1, #1
0081bd90  01 20 a0 e1                                      mov r2, r1
0081bd94  04 30 a0 e1                                      mov r3, r4
0081bd98  f1 00 86 e2                                      add r0, r6, #0xf1
0081bd9c  1b 3c 00 eb                                      bl #0x82ae10
0081bda0  01 10 a0 e3                                      mov r1, #1
0081bda4  04 30 a0 e1                                      mov r3, r4
0081bda8  e1 00 86 e2                                      add r0, r6, #0xe1
0081bdac  10 20 a0 e3                                      mov r2, #0x10
0081bdb0  16 3c 00 eb                                      bl #0x82ae10
0081bdb4  f1 3b 06 e3                                      movw r3, #0x6bf1
0081bdb8  03 10 d5 e7                                      ldrb r1, [r5, r3]
0081bdbc  00 00 51 e3                                      cmp r1, #0
0081bdc0  6b 5c 85 12                                      addne r5, r5, #0x6b00
0081bdc4  f2 50 85 12                                      addne r5, r5, #0xf2
0081bdc8  0e 00 00 0a                                      beq #0x81be08
0081bdcc  01 10 a0 e3                                      mov r1, #1
0081bdd0  10 20 a0 e3                                      mov r2, #0x10
0081bdd4  04 30 a0 e1                                      mov r3, r4
0081bdd8  05 00 a0 e1                                      mov r0, r5
0081bddc  0b 3c 00 eb                                      bl #0x82ae10
0081bde0  04 00 a0 e1                                      mov r0, r4
0081bde4  24 3c 00 eb                                      bl #0x82ae7c
0081bde8  01 00 a0 e3                                      mov r0, #1
0081bdec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081bdf0  30 00 9f e5                                      ldr r0, [pc, #0x30]
0081bdf4  06 10 a0 e1                                      mov r1, r6
0081bdf8  00 00 8f e0                                      add r0, pc, r0
0081bdfc  60 3e 00 eb                                      bl #0x82b784
0081be00  04 00 a0 e1                                      mov r0, r4
0081be04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081be08  f2 50 86 e2                                      add r5, r6, #0xf2
0081be0c  05 00 a0 e1                                      mov r0, r5
0081be10  10 20 a0 e3                                      mov r2, #0x10
0081be14  52 3d 00 eb                                      bl #0x82b364
0081be18  eb ff ff ea                                      b #0x81bdcc
; mapping-symbol data/literal pool
0081be1c  4c 05 0f 00 48 32 0c 00 64 05 0f 00 b0 04 0f 00  .byte 0x4c, 0x05, 0x0f, 0x00, 0x48, 0x32, 0x0c, 0x00, 0x64, 0x05, 0x0f, 0x00, 0xb0, 0x04, 0x0f, 0x00

; FUNCTION 0x0081be2c, declared_size=348, range_size=348, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive17LoadGLLiveProfileEv
; demangled: CMatchingGLLive::LoadGLLiveProfile()
; decoder-mode: arm
0081be2c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081be30  40 61 9f e5                                      ldr r6, [pc, #0x140]
0081be34  40 11 9f e5                                      ldr r1, [pc, #0x140]
0081be38  6b 5c 80 e2                                      add r5, r0, #0x6b00
0081be3c  06 60 8f e0                                      add r6, pc, r6
0081be40  00 70 a0 e1                                      mov r7, r0
0081be44  01 10 8f e0                                      add r1, pc, r1
0081be48  06 00 a0 e1                                      mov r0, r6
0081be4c  f0 3c 00 eb                                      bl #0x82b214
0081be50  e1 80 85 e2                                      add r8, r5, #0xe1
0081be54  00 40 a0 e1                                      mov r4, r0
0081be58  00 10 a0 e3                                      mov r1, #0
0081be5c  08 00 a0 e1                                      mov r0, r8
0081be60  10 20 a0 e3                                      mov r2, #0x10
0081be64  f2 a0 85 e2                                      add sl, r5, #0xf2
0081be68  3d 3d 00 eb                                      bl #0x82b364
0081be6c  0a 00 a0 e1                                      mov r0, sl
0081be70  00 10 a0 e3                                      mov r1, #0
0081be74  10 20 a0 e3                                      mov r2, #0x10
0081be78  39 3d 00 eb                                      bl #0x82b364
0081be7c  00 90 a0 e3                                      mov sb, #0
0081be80  f1 3b 06 e3                                      movw r3, #0x6bf1
0081be84  00 00 54 e3                                      cmp r4, #0
0081be88  03 90 c7 e7                                      strb sb, [r7, r3]
0081be8c  20 00 00 0a                                      beq #0x81bf14
0081be90  e8 60 9f e5                                      ldr r6, [pc, #0xe8]
0081be94  06 60 8f e0                                      add r6, pc, r6
0081be98  06 00 a0 e1                                      mov r0, r6
0081be9c  42 3c 00 eb                                      bl #0x82afac
0081bea0  01 b0 80 e2                                      add fp, r0, #1
0081bea4  04 00 a0 e1                                      mov r0, r4
0081bea8  b2 3c 00 eb                                      bl #0x82b178
0081beac  00 00 5b e1                                      cmp fp, r0
0081beb0  13 00 00 aa                                      bge #0x81bf04
0081beb4  0b 00 a0 e1                                      mov r0, fp
0081beb8  65 d1 eb eb                                      bl #0x310454
0081bebc  0b 20 a0 e1                                      mov r2, fp
0081bec0  00 70 a0 e1                                      mov r7, r0
0081bec4  04 30 a0 e1                                      mov r3, r4
0081bec8  01 10 a0 e3                                      mov r1, #1
0081becc  c5 3c 00 eb                                      bl #0x82b1e8
0081bed0  07 00 a0 e1                                      mov r0, r7
0081bed4  06 10 a0 e1                                      mov r1, r6
0081bed8  1b 3d 00 eb                                      bl #0x82b34c
0081bedc  00 00 50 e3                                      cmp r0, #0
0081bee0  11 00 00 0a                                      beq #0x81bf2c
0081bee4  00 00 57 e3                                      cmp r7, #0
0081bee8  01 00 00 0a                                      beq #0x81bef4
0081beec  07 00 a0 e1                                      mov r0, r7
0081bef0  52 d1 eb eb                                      bl #0x310440
0081bef4  04 00 a0 e1                                      mov r0, r4
0081bef8  df 3b 00 eb                                      bl #0x82ae7c
0081befc  00 00 a0 e3                                      mov r0, #0
0081bf00  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081bf04  04 00 a0 e1                                      mov r0, r4
0081bf08  db 3b 00 eb                                      bl #0x82ae7c
0081bf0c  09 00 a0 e1                                      mov r0, sb
0081bf10  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081bf14  68 00 9f e5                                      ldr r0, [pc, #0x68]
0081bf18  06 10 a0 e1                                      mov r1, r6
0081bf1c  00 00 8f e0                                      add r0, pc, r0
0081bf20  17 3e 00 eb                                      bl #0x82b784
0081bf24  04 00 a0 e1                                      mov r0, r4
0081bf28  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081bf2c  01 10 a0 e3                                      mov r1, #1
0081bf30  01 20 a0 e1                                      mov r2, r1
0081bf34  04 30 a0 e1                                      mov r3, r4
0081bf38  f1 00 85 e2                                      add r0, r5, #0xf1
0081bf3c  a9 3c 00 eb                                      bl #0x82b1e8
0081bf40  04 30 a0 e1                                      mov r3, r4
0081bf44  08 00 a0 e1                                      mov r0, r8
0081bf48  01 10 a0 e3                                      mov r1, #1
0081bf4c  10 20 a0 e3                                      mov r2, #0x10
0081bf50  a4 3c 00 eb                                      bl #0x82b1e8
0081bf54  01 10 a0 e3                                      mov r1, #1
0081bf58  10 20 a0 e3                                      mov r2, #0x10
0081bf5c  04 30 a0 e1                                      mov r3, r4
0081bf60  0a 00 a0 e1                                      mov r0, sl
0081bf64  9f 3c 00 eb                                      bl #0x82b1e8
0081bf68  04 00 a0 e1                                      mov r0, r4
0081bf6c  c2 3b 00 eb                                      bl #0x82ae7c
0081bf70  01 00 a0 e3                                      mov r0, #1
0081bf74  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0081bf78  5c 04 0f 00 5c 49 0a 00 3c 04 0f 00 d4 03 0f 00  .byte 0x5c, 0x04, 0x0f, 0x00, 0x5c, 0x49, 0x0a, 0x00, 0x3c, 0x04, 0x0f, 0x00, 0xd4, 0x03, 0x0f, 0x00

; FUNCTION 0x0081bf88, declared_size=16, range_size=16, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive10IsLoggedInEv
; demangled: CMatchingGLLive::IsLoggedIn()
; decoder-mode: arm
0081bf88  10 40 2d e9                                      push {r4, lr}
0081bf8c  c6 f9 ff eb                                      bl #0x81a6ac
0081bf90  11 00 d0 e5                                      ldrb r0, [r0, #0x11]
0081bf94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081bf98, declared_size=76, range_size=76, mode=arm
; class-group: CMatchingGLLive
; alias: _ZNK15CMatchingGLLive17GetServerMemberIdEv
; demangled: CMatchingGLLive::GetServerMemberId() const
; decoder-mode: arm
0081bf98  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0081bf9c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0081bfa0  10 40 2d e9                                      push {r4, lr}
0081bfa4  03 30 8f e0                                      add r3, pc, r3
0081bfa8  02 20 93 e7                                      ldr r2, [r3, r2]
0081bfac  00 30 d2 e5                                      ldrb r3, [r2]
0081bfb0  00 00 53 e3                                      cmp r3, #0
0081bfb4  02 00 00 0a                                      beq #0x81bfc4
0081bfb8  44 36 03 e3                                      movw r3, #0x3644
0081bfbc  03 00 90 e7                                      ldr r0, [r0, r3]
0081bfc0  10 80 bd e8                                      pop {r4, pc}
0081bfc4  b8 f9 ff eb                                      bl #0x81a6ac
0081bfc8  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
0081bfcc  00 00 53 e3                                      cmp r3, #0
0081bfd0  00 00 e0 03                                      mvneq r0, #0
0081bfd4  00 00 a0 13                                      movne r0, #0
0081bfd8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081bfdc  ec 8a 17 00 74 06 00 00                          .byte 0xec, 0x8a, 0x17, 0x00, 0x74, 0x06, 0x00, 0x00

; FUNCTION 0x0081bfe4, declared_size=80, range_size=80, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive17ProcessLostPacketEii
; demangled: CMatchingGLLive::ProcessLostPacket(int, int)
; decoder-mode: arm
0081bfe4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0081bfe8  00 60 a0 e1                                      mov r6, r0
0081bfec  01 80 a0 e1                                      mov r8, r1
0081bff0  02 70 a0 e1                                      mov r7, r2
0081bff4  62 8b ff eb                                      bl #0x7fed84
0081bff8  3a 5c 86 e2                                      add r5, r6, #0x3a00
0081bffc  00 40 a0 e3                                      mov r4, #0
0081c000  5a af a0 e3                                      mov sl, #0x168
0081c004  9a 04 00 e0                                      mul r0, sl, r4
0081c008  68 31 95 e4                                      ldr r3, [r5], #0x168
0081c00c  3a 0c 80 e2                                      add r0, r0, #0x3a00
0081c010  01 40 84 e2                                      add r4, r4, #1
0081c014  00 00 86 e0                                      add r0, r6, r0
0081c018  08 10 a0 e1                                      mov r1, r8
0081c01c  07 20 a0 e1                                      mov r2, r7
0081c020  0f e0 a0 e1                                      mov lr, pc
0081c024  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0081c028  20 00 54 e3                                      cmp r4, #0x20
0081c02c  f4 ff ff 1a                                      bne #0x81c004
0081c030  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0081c034, declared_size=80, range_size=80, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive25ProcessAcknowledgedPacketEii
; demangled: CMatchingGLLive::ProcessAcknowledgedPacket(int, int)
; decoder-mode: arm
0081c034  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0081c038  00 60 a0 e1                                      mov r6, r0
0081c03c  01 80 a0 e1                                      mov r8, r1
0081c040  02 70 a0 e1                                      mov r7, r2
0081c044  2f 8b ff eb                                      bl #0x7fed08
0081c048  3a 5c 86 e2                                      add r5, r6, #0x3a00
0081c04c  00 40 a0 e3                                      mov r4, #0
0081c050  5a af a0 e3                                      mov sl, #0x168
0081c054  9a 04 00 e0                                      mul r0, sl, r4
0081c058  68 31 95 e4                                      ldr r3, [r5], #0x168
0081c05c  3a 0c 80 e2                                      add r0, r0, #0x3a00
0081c060  01 40 84 e2                                      add r4, r4, #1
0081c064  00 00 86 e0                                      add r0, r6, r0
0081c068  08 10 a0 e1                                      mov r1, r8
0081c06c  07 20 a0 e1                                      mov r2, r7
0081c070  0f e0 a0 e1                                      mov lr, pc
0081c074  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0081c078  20 00 54 e3                                      cmp r4, #0x20
0081c07c  f4 ff ff 1a                                      bne #0x81c054
0081c080  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0081c084, declared_size=20, range_size=20, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive15GLSendHighScoreEi
; demangled: CMatchingGLLive::GLSendHighScore(int)
; decoder-mode: arm
0081c084  1c 37 06 e3                                      movw r3, #0x671c
0081c088  03 00 90 e7                                      ldr r0, [r0, r3]
0081c08c  00 20 e0 e3                                      mvn r2, #0
0081c090  01 30 a0 e3                                      mov r3, #1
0081c094  c7 5b 00 ea                                      b #0x832fb8

; FUNCTION 0x0081c098, declared_size=20, range_size=20, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive17GetGLFriendsCountEv
; demangled: CMatchingGLLive::GetGLFriendsCount()
; decoder-mode: arm
0081c098  67 3c a0 e3                                      mov r3, #0x6700
0081c09c  03 00 90 e7                                      ldr r0, [r0, r3]
0081c0a0  00 00 50 e3                                      cmp r0, #0
0081c0a4  1e ff 2f 01                                      bxeq lr
0081c0a8  51 3e 00 ea                                      b #0x82b9f4

; FUNCTION 0x0081c0ac, declared_size=60, range_size=60, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive16GetGLFriendStateEi
; demangled: CMatchingGLLive::GetGLFriendState(int)
; decoder-mode: arm
0081c0ac  70 40 2d e9                                      push {r4, r5, r6, lr}
0081c0b0  00 40 51 e2                                      subs r4, r1, #0
0081c0b4  00 50 a0 e1                                      mov r5, r0
0081c0b8  04 00 00 ba                                      blt #0x81c0d0
0081c0bc  67 6c a0 e3                                      mov r6, #0x6700
0081c0c0  06 00 90 e7                                      ldr r0, [r0, r6]
0081c0c4  4a 3e 00 eb                                      bl #0x82b9f4
0081c0c8  00 00 54 e1                                      cmp r4, r0
0081c0cc  01 00 00 ba                                      blt #0x81c0d8
0081c0d0  00 00 e0 e3                                      mvn r0, #0
0081c0d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081c0d8  06 00 95 e7                                      ldr r0, [r5, r6]
0081c0dc  04 10 a0 e1                                      mov r1, r4
0081c0e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0081c0e4  8f 3e 00 ea                                      b #0x82bb28

; FUNCTION 0x0081c0e8, declared_size=20, range_size=20, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive18SendGLFriendInviteEPc
; demangled: CMatchingGLLive::SendGLFriendInvite(char*)
; decoder-mode: arm
0081c0e8  67 3c a0 e3                                      mov r3, #0x6700
0081c0ec  03 00 90 e7                                      ldr r0, [r0, r3]
0081c0f0  00 20 a0 e3                                      mov r2, #0
0081c0f4  02 30 a0 e1                                      mov r3, r2
0081c0f8  fb 41 00 ea                                      b #0x82c8ec

; FUNCTION 0x0081c0fc, declared_size=60, range_size=60, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive16GetGLFriendsNameEi
; demangled: CMatchingGLLive::GetGLFriendsName(int)
; decoder-mode: arm
0081c0fc  70 40 2d e9                                      push {r4, r5, r6, lr}
0081c100  00 40 51 e2                                      subs r4, r1, #0
0081c104  00 50 a0 e1                                      mov r5, r0
0081c108  04 00 00 ba                                      blt #0x81c120
0081c10c  67 6c a0 e3                                      mov r6, #0x6700
0081c110  06 00 90 e7                                      ldr r0, [r0, r6]
0081c114  36 3e 00 eb                                      bl #0x82b9f4
0081c118  00 00 54 e1                                      cmp r4, r0
0081c11c  01 00 00 ba                                      blt #0x81c128
0081c120  00 00 a0 e3                                      mov r0, #0
0081c124  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081c128  06 00 95 e7                                      ldr r0, [r5, r6]
0081c12c  04 10 a0 e1                                      mov r1, r4
0081c130  70 40 bd e8                                      pop {r4, r5, r6, lr}
0081c134  3c 3e 00 ea                                      b #0x82ba2c

; FUNCTION 0x0081c138, declared_size=60, range_size=60, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive18GetGLFriendsNumberEi
; demangled: CMatchingGLLive::GetGLFriendsNumber(int)
; decoder-mode: arm
0081c138  70 40 2d e9                                      push {r4, r5, r6, lr}
0081c13c  00 40 51 e2                                      subs r4, r1, #0
0081c140  00 50 a0 e1                                      mov r5, r0
0081c144  04 00 00 ba                                      blt #0x81c15c
0081c148  67 6c a0 e3                                      mov r6, #0x6700
0081c14c  06 00 90 e7                                      ldr r0, [r0, r6]
0081c150  27 3e 00 eb                                      bl #0x82b9f4
0081c154  00 00 54 e1                                      cmp r4, r0
0081c158  01 00 00 ba                                      blt #0x81c164
0081c15c  00 00 a0 e3                                      mov r0, #0
0081c160  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081c164  06 00 95 e7                                      ldr r0, [r5, r6]
0081c168  04 10 a0 e1                                      mov r1, r4
0081c16c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0081c170  21 3e 00 ea                                      b #0x82b9fc

; FUNCTION 0x0081c174, declared_size=24, range_size=24, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive23SendRequestLostPasswordEPc
; demangled: CMatchingGLLive::SendRequestLostPassword(char*)
; decoder-mode: arm
0081c174  10 40 2d e9                                      push {r4, lr}
0081c178  18 37 06 e3                                      movw r3, #0x6718
0081c17c  03 00 90 e7                                      ldr r0, [r0, r3]
0081c180  b1 86 00 eb                                      bl #0x83dc4c
0081c184  01 00 a0 e3                                      mov r0, #1
0081c188  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081c18c, declared_size=20, range_size=20, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive6GetGGIEv
; demangled: CMatchingGLLive::GetGGI()
; decoder-mode: arm
0081c18c  10 37 06 e3                                      movw r3, #0x6710
0081c190  03 00 90 e7                                      ldr r0, [r0, r3]
0081c194  00 00 50 e3                                      cmp r0, #0
0081c198  1e ff 2f 01                                      bxeq lr
0081c19c  d9 42 00 ea                                      b #0x82cd08

; FUNCTION 0x0081c1a0, declared_size=96, range_size=96, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive26ProcessChangeServerMessageEiR12NetBitStream
; demangled: CMatchingGLLive::ProcessChangeServerMessage(int, NetBitStream&)
; decoder-mode: arm
0081c1a0  70 40 2d e9                                      push {r4, r5, r6, lr}
0081c1a4  08 d0 4d e2                                      sub sp, sp, #8
0081c1a8  04 50 8d e2                                      add r5, sp, #4
0081c1ac  00 60 a0 e1                                      mov r6, r0
0081c1b0  05 10 a0 e1                                      mov r1, r5
0081c1b4  02 00 a0 e1                                      mov r0, r2
0081c1b8  04 20 a0 e3                                      mov r2, #4
0081c1bc  99 ca ff eb                                      bl #0x80ec28
0081c1c0  04 20 9d e5                                      ldr r2, [sp, #4]
0081c1c4  44 36 03 e3                                      movw r3, #0x3644
0081c1c8  28 40 9f e5                                      ldr r4, [pc, #0x28]
0081c1cc  03 20 86 e7                                      str r2, [r6, r3]
0081c1d0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0081c1d4  04 40 8f e0                                      add r4, pc, r4
0081c1d8  02 15 a0 e3                                      mov r1, #0x800000
0081c1dc  03 00 94 e7                                      ldr r0, [r4, r3]
0081c1e0  0b 10 81 e2                                      add r1, r1, #0xb
0081c1e4  05 20 a0 e1                                      mov r2, r5
0081c1e8  04 30 a0 e3                                      mov r3, #4
0081c1ec  04 88 ff eb                                      bl #0x7fe204
0081c1f0  08 d0 8d e2                                      add sp, sp, #8
0081c1f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081c1f8  bc 88 17 00 3c 34 00 00                          .byte 0xbc, 0x88, 0x17, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x0081c200, declared_size=196, range_size=196, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive24ProcessMemberJoinMessageEiR12NetBitStream
; demangled: CMatchingGLLive::ProcessMemberJoinMessage(int, NetBitStream&)
; decoder-mode: arm
0081c200  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081c204  08 10 a0 e3                                      mov r1, #8
0081c208  2c d0 4d e2                                      sub sp, sp, #0x2c
0081c20c  00 50 a0 e1                                      mov r5, r0
0081c210  02 00 a0 e1                                      mov r0, r2
0081c214  02 70 a0 e1                                      mov r7, r2
0081c218  d1 c8 ff eb                                      bl #0x80e564
0081c21c  98 90 9f e5                                      ldr sb, [pc, #0x98]
0081c220  70 80 af e6                                      sxtb r8, r0
0081c224  00 00 58 e3                                      cmp r8, #0
0081c228  09 90 8f e0                                      add sb, pc, sb
0081c22c  20 00 00 da                                      ble #0x81c2b4
0081c230  88 b0 9f e5                                      ldr fp, [pc, #0x88]
0081c234  08 60 8d e2                                      add r6, sp, #8
0081c238  00 40 a0 e3                                      mov r4, #0
0081c23c  04 a0 86 e2                                      add sl, r6, #4
0081c240  0a 00 a0 e1                                      mov r0, sl
0081c244  4e 80 ff eb                                      bl #0x7fc384
0081c248  07 00 a0 e1                                      mov r0, r7
0081c24c  06 10 a0 e1                                      mov r1, r6
0081c250  20 20 a0 e3                                      mov r2, #0x20
0081c254  73 ca ff eb                                      bl #0x80ec28
0081c258  08 30 9d e5                                      ldr r3, [sp, #8]
0081c25c  00 20 95 e5                                      ldr r2, [r5]
0081c260  05 00 a0 e1                                      mov r0, r5
0081c264  04 30 8d e5                                      str r3, [sp, #4]
0081c268  0f e0 a0 e1                                      mov lr, pc
0081c26c  6c f0 92 e5                                      ldr pc, [r2, #0x6c]
0081c270  04 30 9d e5                                      ldr r3, [sp, #4]
0081c274  01 40 84 e2                                      add r4, r4, #1
0081c278  00 00 53 e1                                      cmp r3, r0
0081c27c  0a 00 00 0a                                      beq #0x81c2ac
0081c280  bb 7e ff eb                                      bl #0x7fbd74
0081c284  08 10 9d e5                                      ldr r1, [sp, #8]
0081c288  19 81 ff eb                                      bl #0x7fc6f4
0081c28c  02 15 a0 e3                                      mov r1, #0x800000
0081c290  00 00 50 e3                                      cmp r0, #0
0081c294  06 10 81 e2                                      add r1, r1, #6
0081c298  06 20 a0 e1                                      mov r2, r6
0081c29c  04 30 a0 e3                                      mov r3, #4
0081c2a0  01 00 00 1a                                      bne #0x81c2ac
0081c2a4  0b 00 99 e7                                      ldr r0, [sb, fp]
0081c2a8  d5 87 ff eb                                      bl #0x7fe204
0081c2ac  08 00 54 e1                                      cmp r4, r8
0081c2b0  e2 ff ff ba                                      blt #0x81c240
0081c2b4  2c d0 8d e2                                      add sp, sp, #0x2c
0081c2b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0081c2bc  68 88 17 00 3c 34 00 00                          .byte 0x68, 0x88, 0x17, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x0081c2c4, declared_size=104, range_size=104, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive17SendClientRequestEv
; demangled: CMatchingGLLive::SendClientRequest()
; decoder-mode: arm
0081c2c4  30 40 2d e9                                      push {r4, r5, lr}
0081c2c8  2c d0 4d e2                                      sub sp, sp, #0x2c
0081c2cc  04 40 8d e2                                      add r4, sp, #4
0081c2d0  02 1b a0 e3                                      mov r1, #0x800
0081c2d4  04 00 a0 e1                                      mov r0, r4
0081c2d8  8a c9 ff eb                                      bl #0x80e908
0081c2dc  02 50 a0 e3                                      mov r5, #2
0081c2e0  28 10 8d e2                                      add r1, sp, #0x28
0081c2e4  04 50 61 e5                                      strb r5, [r1, #-4]!
0081c2e8  01 20 a0 e3                                      mov r2, #1
0081c2ec  04 00 a0 e1                                      mov r0, r4
0081c2f0  ac ca ff eb                                      bl #0x80eda8
0081c2f4  9e 7e ff eb                                      bl #0x7fbd74
0081c2f8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0081c2fc  05 10 a0 e1                                      mov r1, r5
0081c300  08 20 9d e5                                      ldr r2, [sp, #8]
0081c304  07 30 1c e2                                      ands r3, ip, #7
0081c308  01 30 a0 13                                      movne r3, #1
0081c30c  ac 31 83 e0                                      add r3, r3, ip, lsr #3
0081c310  35 80 ff eb                                      bl #0x7fc3ec
0081c314  00 50 a0 e1                                      mov r5, r0
0081c318  04 00 a0 e1                                      mov r0, r4
0081c31c  1b c9 ff eb                                      bl #0x80e790
0081c320  05 00 a0 e1                                      mov r0, r5
0081c324  2c d0 8d e2                                      add sp, sp, #0x2c
0081c328  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0081c32c, declared_size=80, range_size=80, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive30GetGLXPlayerUserFriendObserverEv
; demangled: CMatchingGLLive::GetGLXPlayerUserFriendObserver()
; decoder-mode: arm
0081c32c  40 30 9f e5                                      ldr r3, [pc, #0x40]
0081c330  40 20 9f e5                                      ldr r2, [pc, #0x40]
0081c334  70 40 2d e9                                      push {r4, r5, r6, lr}
0081c338  03 30 8f e0                                      add r3, pc, r3
0081c33c  02 40 93 e7                                      ldr r4, [r3, r2]
0081c340  00 50 94 e5                                      ldr r5, [r4]
0081c344  00 00 55 e3                                      cmp r5, #0
0081c348  01 00 00 0a                                      beq #0x81c354
0081c34c  05 00 a0 e1                                      mov r0, r5
0081c350  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081c354  02 10 a0 e3                                      mov r1, #2
0081c358  08 00 a0 e3                                      mov r0, #8
0081c35c  83 d0 eb eb                                      bl #0x310570
0081c360  00 50 a0 e1                                      mov r5, r0
0081c364  c5 13 00 eb                                      bl #0x821280
0081c368  00 50 84 e5                                      str r5, [r4]
0081c36c  05 00 a0 e1                                      mov r0, r5
0081c370  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081c374  58 87 17 00 e8 18 00 00                          .byte 0x58, 0x87, 0x17, 0x00, 0xe8, 0x18, 0x00, 0x00

; FUNCTION 0x0081c37c, declared_size=148, range_size=148, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive22GetGLXPlayerUserFriendEv
; demangled: CMatchingGLLive::GetGLXPlayerUserFriend()
; decoder-mode: arm
0081c37c  70 40 2d e9                                      push {r4, r5, r6, lr}
0081c380  78 40 9f e5                                      ldr r4, [pc, #0x78]
0081c384  78 30 9f e5                                      ldr r3, [pc, #0x78]
0081c388  08 d0 4d e2                                      sub sp, sp, #8
0081c38c  04 40 8f e0                                      add r4, pc, r4
0081c390  03 50 94 e7                                      ldr r5, [r4, r3]
0081c394  00 00 95 e5                                      ldr r0, [r5]
0081c398  00 00 50 e3                                      cmp r0, #0
0081c39c  01 00 00 0a                                      beq #0x81c3a8
0081c3a0  08 d0 8d e2                                      add sp, sp, #8
0081c3a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081c3a8  02 10 a0 e3                                      mov r1, #2
0081c3ac  74 00 a0 e3                                      mov r0, #0x74
0081c3b0  6e d0 eb eb                                      bl #0x310570
0081c3b4  00 60 a0 e1                                      mov r6, r0
0081c3b8  e8 41 00 eb                                      bl #0x82cb60
0081c3bc  00 60 85 e5                                      str r6, [r5]
0081c3c0  d9 ff ff eb                                      bl #0x81c32c
0081c3c4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0081c3c8  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0081c3cc  03 30 94 e7                                      ldr r3, [r4, r3]
0081c3d0  02 20 94 e7                                      ldr r2, [r4, r2]
0081c3d4  08 30 83 e2                                      add r3, r3, #8
0081c3d8  00 30 8d e5                                      str r3, [sp]
0081c3dc  04 30 d0 e5                                      ldrb r3, [r0, #4]
0081c3e0  00 10 92 e5                                      ldr r1, [r2]
0081c3e4  00 00 95 e5                                      ldr r0, [r5]
0081c3e8  04 30 cd e5                                      strb r3, [sp, #4]
0081c3ec  41 42 00 eb                                      bl #0x82ccf8
0081c3f0  0d 00 a0 e1                                      mov r0, sp
0081c3f4  ad 13 00 eb                                      bl #0x8212b0
0081c3f8  00 00 95 e5                                      ldr r0, [r5]
0081c3fc  e7 ff ff ea                                      b #0x81c3a0
; mapping-symbol data/literal pool
0081c400  04 87 17 00 34 1a 00 00 80 29 00 00 04 07 00 00  .byte 0x04, 0x87, 0x17, 0x00, 0x34, 0x1a, 0x00, 0x00, 0x80, 0x29, 0x00, 0x00, 0x04, 0x07, 0x00, 0x00

; FUNCTION 0x0081c410, declared_size=80, range_size=80, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive27GetGLXPlayerMPLobbyObserverEv
; demangled: CMatchingGLLive::GetGLXPlayerMPLobbyObserver()
; decoder-mode: arm
0081c410  40 30 9f e5                                      ldr r3, [pc, #0x40]
0081c414  40 20 9f e5                                      ldr r2, [pc, #0x40]
0081c418  70 40 2d e9                                      push {r4, r5, r6, lr}
0081c41c  03 30 8f e0                                      add r3, pc, r3
0081c420  02 40 93 e7                                      ldr r4, [r3, r2]
0081c424  00 50 94 e5                                      ldr r5, [r4]
0081c428  00 00 55 e3                                      cmp r5, #0
0081c42c  01 00 00 0a                                      beq #0x81c438
0081c430  05 00 a0 e1                                      mov r0, r5
0081c434  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081c438  02 10 a0 e3                                      mov r1, #2
0081c43c  4c 00 a0 e3                                      mov r0, #0x4c
0081c440  4a d0 eb eb                                      bl #0x310570
0081c444  00 50 a0 e1                                      mov r5, r0
0081c448  5a 18 00 eb                                      bl #0x8225b8
0081c44c  00 50 84 e5                                      str r5, [r4]
0081c450  05 00 a0 e1                                      mov r0, r5
0081c454  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081c458  74 86 17 00 cc 10 00 00                          .byte 0x74, 0x86, 0x17, 0x00, 0xcc, 0x10, 0x00, 0x00

; FUNCTION 0x0081c460, declared_size=52, range_size=52, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive9GetRoomIdEv
; demangled: CMatchingGLLive::GetRoomId()
; decoder-mode: arm
0081c460  10 40 2d e9                                      push {r4, lr}
0081c464  90 f8 ff eb                                      bl #0x81a6ac
0081c468  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
0081c46c  00 00 53 e3                                      cmp r3, #0
0081c470  00 20 e0 13                                      mvnne r2, #0
0081c474  00 30 e0 13                                      mvnne r3, #0
0081c478  02 00 00 1a                                      bne #0x81c488
0081c47c  e3 ff ff eb                                      bl #0x81c410
0081c480  08 20 90 e5                                      ldr r2, [r0, #8]
0081c484  c2 3f a0 e1                                      asr r3, r2, #0x1f
0081c488  03 10 a0 e1                                      mov r1, r3
0081c48c  02 00 a0 e1                                      mov r0, r2
0081c490  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081c494, declared_size=24, range_size=24, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive19GetMemberByMemberIdEi
; demangled: CMatchingGLLive::GetMemberByMemberId(int)
; decoder-mode: arm
0081c494  10 40 2d e9                                      push {r4, lr}
0081c498  01 40 a0 e1                                      mov r4, r1
0081c49c  db ff ff eb                                      bl #0x81c410
0081c4a0  04 10 a0 e1                                      mov r1, r4
0081c4a4  10 40 bd e8                                      pop {r4, lr}
0081c4a8  9d 17 00 ea                                      b #0x822324

; FUNCTION 0x0081c4ac, declared_size=120, range_size=120, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive8IsInRoomEv
; demangled: CMatchingGLLive::IsInRoom()
; decoder-mode: arm
0081c4ac  68 30 9f e5                                      ldr r3, [pc, #0x68]
0081c4b0  68 20 9f e5                                      ldr r2, [pc, #0x68]
0081c4b4  10 40 2d e9                                      push {r4, lr}
0081c4b8  03 30 8f e0                                      add r3, pc, r3
0081c4bc  02 20 93 e7                                      ldr r2, [r3, r2]
0081c4c0  00 30 d2 e5                                      ldrb r3, [r2]
0081c4c4  00 00 53 e3                                      cmp r3, #0
0081c4c8  04 00 00 1a                                      bne #0x81c4e0
0081c4cc  76 f8 ff eb                                      bl #0x81a6ac
0081c4d0  11 00 d0 e5                                      ldrb r0, [r0, #0x11]
0081c4d4  00 00 50 e3                                      cmp r0, #0
0081c4d8  05 00 00 1a                                      bne #0x81c4f4
0081c4dc  10 80 bd e8                                      pop {r4, pc}
0081c4e0  fe 87 ff eb                                      bl #0x7fe4e0
0081c4e4  00 40 50 e2                                      subs r4, r0, #0
0081c4e8  04 00 00 0a                                      beq #0x81c500
0081c4ec  01 00 a0 e3                                      mov r0, #1
0081c4f0  10 80 bd e8                                      pop {r4, pc}
0081c4f4  c5 ff ff eb                                      bl #0x81c410
0081c4f8  06 00 d0 e5                                      ldrb r0, [r0, #6]
0081c4fc  10 80 bd e8                                      pop {r4, pc}
0081c500  1b 7e ff eb                                      bl #0x7fbd74
0081c504  04 10 a0 e1                                      mov r1, r4
0081c508  61 7e ff eb                                      bl #0x7fbe94
0081c50c  00 00 50 e3                                      cmp r0, #0
0081c510  00 00 a0 d3                                      movle r0, #0
0081c514  01 00 a0 c3                                      movgt r0, #1
0081c518  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081c51c  d8 85 17 00 74 06 00 00                          .byte 0xd8, 0x85, 0x17, 0x00, 0x74, 0x06, 0x00, 0x00

; FUNCTION 0x0081c524, declared_size=116, range_size=116, mode=arm
; class-group: CMatchingGLLive
; alias: _ZNK15CMatchingGLLive14GetMemberCountEv
; demangled: CMatchingGLLive::GetMemberCount() const
; decoder-mode: arm
0081c524  64 30 9f e5                                      ldr r3, [pc, #0x64]
0081c528  64 20 9f e5                                      ldr r2, [pc, #0x64]
0081c52c  10 40 2d e9                                      push {r4, lr}
0081c530  03 30 8f e0                                      add r3, pc, r3
0081c534  02 20 93 e7                                      ldr r2, [r3, r2]
0081c538  00 30 d2 e5                                      ldrb r3, [r2]
0081c53c  00 00 53 e3                                      cmp r3, #0
0081c540  04 00 00 1a                                      bne #0x81c558
0081c544  b1 ff ff eb                                      bl #0x81c410
0081c548  06 00 d0 e5                                      ldrb r0, [r0, #6]
0081c54c  00 00 50 e3                                      cmp r0, #0
0081c550  05 00 00 1a                                      bne #0x81c56c
0081c554  10 80 bd e8                                      pop {r4, pc}
0081c558  05 7e ff eb                                      bl #0x7fbd74
0081c55c  00 10 a0 e3                                      mov r1, #0
0081c560  4b 7e ff eb                                      bl #0x7fbe94
0081c564  01 00 80 e2                                      add r0, r0, #1
0081c568  10 80 bd e8                                      pop {r4, pc}
0081c56c  a7 ff ff eb                                      bl #0x81c410
0081c570  24 20 90 e5                                      ldr r2, [r0, #0x24]
0081c574  28 00 90 e5                                      ldr r0, [r0, #0x28]
0081c578  3d 3f 0c e3                                      movw r3, #0xcf3d
0081c57c  f3 3c 43 e3                                      movt r3, #0x3cf3
0081c580  00 00 62 e0                                      rsb r0, r2, r0
0081c584  40 01 a0 e1                                      asr r0, r0, #2
0081c588  93 00 00 e0                                      mul r0, r3, r0
0081c58c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081c590  60 85 17 00 74 06 00 00                          .byte 0x60, 0x85, 0x17, 0x00, 0x74, 0x06, 0x00, 0x00

; FUNCTION 0x0081c598, declared_size=80, range_size=80, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive25GetGLXPlayerLoginObserverEv
; demangled: CMatchingGLLive::GetGLXPlayerLoginObserver()
; decoder-mode: arm
0081c598  40 30 9f e5                                      ldr r3, [pc, #0x40]
0081c59c  40 20 9f e5                                      ldr r2, [pc, #0x40]
0081c5a0  70 40 2d e9                                      push {r4, r5, r6, lr}
0081c5a4  03 30 8f e0                                      add r3, pc, r3
0081c5a8  02 40 93 e7                                      ldr r4, [r3, r2]
0081c5ac  00 50 94 e5                                      ldr r5, [r4]
0081c5b0  00 00 55 e3                                      cmp r5, #0
0081c5b4  01 00 00 0a                                      beq #0x81c5c0
0081c5b8  05 00 a0 e1                                      mov r0, r5
0081c5bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081c5c0  02 10 a0 e3                                      mov r1, #2
0081c5c4  8c 00 a0 e3                                      mov r0, #0x8c
0081c5c8  e8 cf eb eb                                      bl #0x310570
0081c5cc  00 50 a0 e1                                      mov r5, r0
0081c5d0  11 21 00 eb                                      bl #0x824a1c
0081c5d4  00 50 84 e5                                      str r5, [r4]
0081c5d8  05 00 a0 e1                                      mov r0, r5
0081c5dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081c5e0  ec 84 17 00 04 07 00 00                          .byte 0xec, 0x84, 0x17, 0x00, 0x04, 0x07, 0x00, 0x00

; FUNCTION 0x0081c5e8, declared_size=228, range_size=228, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive17GetGLXPlayerLoginEv
; demangled: CMatchingGLLive::GetGLXPlayerLogin()
; decoder-mode: arm
0081c5e8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0081c5ec  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
0081c5f0  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0081c5f4  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
0081c5f8  04 40 8f e0                                      add r4, pc, r4
0081c5fc  03 60 94 e7                                      ldr r6, [r4, r3]
0081c600  05 30 94 e7                                      ldr r3, [r4, r5]
0081c604  94 d0 4d e2                                      sub sp, sp, #0x94
0081c608  00 00 96 e5                                      ldr r0, [r6]
0081c60c  00 30 93 e5                                      ldr r3, [r3]
0081c610  00 00 50 e3                                      cmp r0, #0
0081c614  8c 30 8d e5                                      str r3, [sp, #0x8c]
0081c618  06 00 00 0a                                      beq #0x81c638
0081c61c  05 30 94 e7                                      ldr r3, [r4, r5]
0081c620  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
0081c624  00 30 93 e5                                      ldr r3, [r3]
0081c628  03 00 52 e1                                      cmp r2, r3
0081c62c  20 00 00 1a                                      bne #0x81c6b4
0081c630  94 d0 8d e2                                      add sp, sp, #0x94
0081c634  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0081c638  02 10 a0 e3                                      mov r1, #2
0081c63c  88 00 a0 e3                                      mov r0, #0x88
0081c640  ca cf eb eb                                      bl #0x310570
0081c644  00 70 a0 e1                                      mov r7, r0
0081c648  61 61 00 eb                                      bl #0x834bd4
0081c64c  00 70 86 e5                                      str r7, [r6]
0081c650  d0 ff ff eb                                      bl #0x81c598
0081c654  68 30 9f e5                                      ldr r3, [pc, #0x68]
0081c658  00 70 a0 e1                                      mov r7, r0
0081c65c  06 10 80 e2                                      add r1, r0, #6
0081c660  03 30 94 e7                                      ldr r3, [r4, r3]
0081c664  80 20 a0 e3                                      mov r2, #0x80
0081c668  06 00 8d e2                                      add r0, sp, #6
0081c66c  08 30 83 e2                                      add r3, r3, #8
0081c670  00 30 8d e5                                      str r3, [sp]
0081c674  04 30 d7 e5                                      ldrb r3, [r7, #4]
0081c678  04 30 cd e5                                      strb r3, [sp, #4]
0081c67c  05 30 d7 e5                                      ldrb r3, [r7, #5]
0081c680  05 30 cd e5                                      strb r3, [sp, #5]
0081c684  77 c8 eb eb                                      bl #0x30e868
0081c688  38 30 9f e5                                      ldr r3, [pc, #0x38]
0081c68c  88 20 97 e5                                      ldr r2, [r7, #0x88]
0081c690  00 00 96 e5                                      ldr r0, [r6]
0081c694  03 30 94 e7                                      ldr r3, [r4, r3]
0081c698  88 20 8d e5                                      str r2, [sp, #0x88]
0081c69c  00 10 93 e5                                      ldr r1, [r3]
0081c6a0  94 41 00 eb                                      bl #0x82ccf8
0081c6a4  0d 00 a0 e1                                      mov r0, sp
0081c6a8  c1 20 00 eb                                      bl #0x8249b4
0081c6ac  00 00 96 e5                                      ldr r0, [r6]
0081c6b0  d9 ff ff ea                                      b #0x81c61c
0081c6b4  15 c7 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081c6b8  98 84 17 00 c8 22 00 00 ac 40 00 00 20 13 00 00  .byte 0x98, 0x84, 0x17, 0x00, 0xc8, 0x22, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x13, 0x00, 0x00
0081c6c8  04 07 00 00                                      .byte 0x04, 0x07, 0x00, 0x00

; FUNCTION 0x0081c6cc, declared_size=124, range_size=124, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive10IsMyFriendEPc
; demangled: CMatchingGLLive::IsMyFriend(char*)
; decoder-mode: arm
0081c6cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0081c6d0  00 60 51 e2                                      subs r6, r1, #0
0081c6d4  00 40 a0 e1                                      mov r4, r0
0081c6d8  18 00 00 0a                                      beq #0x81c740
0081c6dc  c1 ff ff eb                                      bl #0x81c5e8
0081c6e0  74 00 90 e5                                      ldr r0, [r0, #0x74]
0081c6e4  00 00 50 e3                                      cmp r0, #0
0081c6e8  03 00 00 0a                                      beq #0x81c6fc
0081c6ec  06 10 a0 e1                                      mov r1, r6
0081c6f0  09 c7 eb eb                                      bl #0x30e31c
0081c6f4  00 00 50 e3                                      cmp r0, #0
0081c6f8  0d 00 00 0a                                      beq #0x81c734
0081c6fc  6b 5c 84 e2                                      add r5, r4, #0x6b00
0081c700  d8 3b 06 e3                                      movw r3, #0x6bd8
0081c704  03 40 94 e7                                      ldr r4, [r4, r3]
0081c708  d8 50 85 e2                                      add r5, r5, #0xd8
0081c70c  04 00 00 ea                                      b #0x81c724
0081c710  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0081c714  00 c7 eb eb                                      bl #0x30e31c
0081c718  00 00 50 e3                                      cmp r0, #0
0081c71c  05 00 00 0a                                      beq #0x81c738
0081c720  00 40 94 e5                                      ldr r4, [r4]
0081c724  04 00 55 e1                                      cmp r5, r4
0081c728  06 10 a0 e1                                      mov r1, r6
0081c72c  f7 ff ff 1a                                      bne #0x81c710
0081c730  02 00 a0 e3                                      mov r0, #2
0081c734  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081c738  01 00 a0 e3                                      mov r0, #1
0081c73c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081c740  00 00 e0 e3                                      mvn r0, #0
0081c744  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081c748, declared_size=68, range_size=68, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive16InitializeFriendEv
; demangled: CMatchingGLLive::InitializeFriend()
; decoder-mode: arm
0081c748  70 40 2d e9                                      push {r4, r5, r6, lr}
0081c74c  67 5c a0 e3                                      mov r5, #0x6700
0081c750  00 40 a0 e1                                      mov r4, r0
0081c754  05 60 90 e7                                      ldr r6, [r0, r5]
0081c758  a2 ff ff eb                                      bl #0x81c5e8
0081c75c  6b 41 00 eb                                      bl #0x82cd10
0081c760  00 10 a0 e1                                      mov r1, r0
0081c764  06 00 a0 e1                                      mov r0, r6
0081c768  97 41 00 eb                                      bl #0x82cdcc
0081c76c  00 10 a0 e3                                      mov r1, #0
0081c770  01 20 a0 e1                                      mov r2, r1
0081c774  05 00 94 e7                                      ldr r0, [r4, r5]
0081c778  b0 3f 00 eb                                      bl #0x82c640
0081c77c  01 20 a0 e3                                      mov r2, #1
0081c780  e9 37 06 e3                                      movw r3, #0x67e9
0081c784  03 20 c4 e7                                      strb r2, [r4, r3]
0081c788  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081c78c, declared_size=244, range_size=244, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive23SendGLFriendsGameInviteEPc
; demangled: CMatchingGLLive::SendGLFriendsGameInvite(char*)
; decoder-mode: arm
0081c78c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081c790  dc 50 9f e5                                      ldr r5, [pc, #0xdc]
0081c794  dc 70 9f e5                                      ldr r7, [pc, #0xdc]
0081c798  74 39 06 e3                                      movw r3, #0x6974
0081c79c  05 50 8f e0                                      add r5, pc, r5
0081c7a0  07 20 95 e7                                      ldr r2, [r5, r7]
0081c7a4  15 de 4d e2                                      sub sp, sp, #0x150
0081c7a8  74 3c 46 e3                                      movt r3, #0x6c74
0081c7ac  00 20 92 e5                                      ldr r2, [r2]
0081c7b0  c4 80 9f e5                                      ldr r8, [pc, #0xc4]
0081c7b4  0c 31 8d e5                                      str r3, [sp, #0x10c]
0081c7b8  01 cc 8d e2                                      add ip, sp, #0x100
0081c7bc  65 30 a0 e3                                      mov r3, #0x65
0081c7c0  b0 31 cc e1                                      strh r3, [ip, #0x10]
0081c7c4  0c c0 8d e2                                      add ip, sp, #0xc
0081c7c8  4c 21 8d e5                                      str r2, [sp, #0x14c]
0081c7cc  0c e0 a0 e1                                      mov lr, ip
0081c7d0  08 80 8f e0                                      add r8, pc, r8
0081c7d4  00 60 a0 e1                                      mov r6, r0
0081c7d8  01 40 a0 e1                                      mov r4, r1
0081c7dc  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
0081c7e0  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0081c7e4  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
0081c7e8  07 00 ae e8                                      stm lr!, {r0, r1, r2}
0081c7ec  08 27 06 e3                                      movw r2, #0x6708
0081c7f0  02 00 96 e7                                      ldr r0, [r6, r2]
0081c7f4  04 10 a0 e1                                      mov r1, r4
0081c7f8  00 30 ce e5                                      strb r3, [lr]
0081c7fc  08 20 a0 e3                                      mov r2, #8
0081c800  43 3f 8d e2                                      add r3, sp, #0x10c
0081c804  00 c0 8d e5                                      str ip, [sp]
0081c808  00 c0 a0 e3                                      mov ip, #0
0081c80c  6b 8c 86 e2                                      add r8, r6, #0x6b00
0081c810  04 c0 8d e5                                      str ip, [sp, #4]
0081c814  67 65 00 eb                                      bl #0x835db8
0081c818  d8 3b 06 e3                                      movw r3, #0x6bd8
0081c81c  03 60 96 e7                                      ldr r6, [r6, r3]
0081c820  d8 80 88 e2                                      add r8, r8, #0xd8
0081c824  05 00 00 ea                                      b #0x81c840
0081c828  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0081c82c  04 10 a0 e1                                      mov r1, r4
0081c830  b9 c6 eb eb                                      bl #0x30e31c
0081c834  00 00 50 e3                                      cmp r0, #0
0081c838  09 00 00 0a                                      beq #0x81c864
0081c83c  00 60 96 e5                                      ldr r6, [r6]
0081c840  06 00 58 e1                                      cmp r8, r6
0081c844  f7 ff ff 1a                                      bne #0x81c828
0081c848  07 30 95 e7                                      ldr r3, [r5, r7]
0081c84c  4c 21 9d e5                                      ldr r2, [sp, #0x14c]
0081c850  00 30 93 e5                                      ldr r3, [r3]
0081c854  03 00 52 e1                                      cmp r2, r3
0081c858  04 00 00 1a                                      bne #0x81c870
0081c85c  15 de 8d e2                                      add sp, sp, #0x150
0081c860  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081c864  01 30 a0 e3                                      mov r3, #1
0081c868  11 30 c6 e5                                      strb r3, [r6, #0x11]
0081c86c  f5 ff ff ea                                      b #0x81c848
0081c870  a6 c6 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081c874  f4 82 17 00 ac 40 00 00 48 fb 0e 00              .byte 0xf4, 0x82, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0xfb, 0x0e, 0x00

; FUNCTION 0x0081c880, declared_size=56, range_size=56, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive9PingRoomsEv
; demangled: CMatchingGLLive::PingRooms()
; decoder-mode: arm
0081c880  28 c0 9f e5                                      ldr ip, [pc, #0x28]
0081c884  28 30 9f e5                                      ldr r3, [pc, #0x28]
0081c888  00 20 a0 e3                                      mov r2, #0
0081c88c  0c c0 8f e0                                      add ip, pc, ip
0081c890  02 15 a0 e3                                      mov r1, #0x800000
0081c894  03 00 9c e7                                      ldr r0, [ip, r3]
0081c898  10 40 2d e9                                      push {r4, lr}
0081c89c  10 10 81 e2                                      add r1, r1, #0x10
0081c8a0  02 30 a0 e1                                      mov r3, r2
0081c8a4  56 86 ff eb                                      bl #0x7fe204
0081c8a8  00 00 a0 e3                                      mov r0, #0
0081c8ac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081c8b0  04 82 17 00 3c 34 00 00                          .byte 0x04, 0x82, 0x17, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x0081c8b8, declared_size=128, range_size=128, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive24ProcessRoomStatusMessageEiR12NetBitStream
; demangled: CMatchingGLLive::ProcessRoomStatusMessage(int, NetBitStream&)
; decoder-mode: arm
0081c8b8  70 40 2d e9                                      push {r4, r5, r6, lr}
0081c8bc  10 d0 4d e2                                      sub sp, sp, #0x10
0081c8c0  00 50 a0 e1                                      mov r5, r0
0081c8c4  04 10 8d e2                                      add r1, sp, #4
0081c8c8  02 00 a0 e1                                      mov r0, r2
0081c8cc  0c 20 a0 e3                                      mov r2, #0xc
0081c8d0  d4 c8 ff eb                                      bl #0x80ec28
0081c8d4  0c 60 9d e5                                      ldr r6, [sp, #0xc]
0081c8d8  04 e0 dd e5                                      ldrb lr, [sp, #4]
0081c8dc  05 c0 dd e5                                      ldrb ip, [sp, #5]
0081c8e0  4c 36 03 e3                                      movw r3, #0x364c
0081c8e4  08 00 9d e5                                      ldr r0, [sp, #8]
0081c8e8  03 60 85 e7                                      str r6, [r5, r3]
0081c8ec  38 36 03 e3                                      movw r3, #0x3638
0081c8f0  03 e0 c5 e7                                      strb lr, [r5, r3]
0081c8f4  39 36 03 e3                                      movw r3, #0x3639
0081c8f8  03 c0 c5 e7                                      strb ip, [r5, r3]
0081c8fc  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
0081c900  48 36 03 e3                                      movw r3, #0x3648
0081c904  03 00 85 e7                                      str r0, [r5, r3]
0081c908  24 30 9f e5                                      ldr r3, [pc, #0x24]
0081c90c  00 20 a0 e3                                      mov r2, #0
0081c910  04 40 8f e0                                      add r4, pc, r4
0081c914  02 15 a0 e3                                      mov r1, #0x800000
0081c918  03 00 94 e7                                      ldr r0, [r4, r3]
0081c91c  0a 10 81 e2                                      add r1, r1, #0xa
0081c920  02 30 a0 e1                                      mov r3, r2
0081c924  36 86 ff eb                                      bl #0x7fe204
0081c928  10 d0 8d e2                                      add sp, sp, #0x10
0081c92c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081c930  80 81 17 00 3c 34 00 00                          .byte 0x80, 0x81, 0x17, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x0081c938, declared_size=176, range_size=176, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive22PacketReceiverCallbackEiPci
; demangled: CMatchingGLLive::PacketReceiverCallback(int, char*, int)
; decoder-mode: arm
0081c938  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081c93c  28 d0 4d e2                                      sub sp, sp, #0x28
0081c940  04 40 8d e2                                      add r4, sp, #4
0081c944  03 50 a0 e1                                      mov r5, r3
0081c948  02 80 a0 e1                                      mov r8, r2
0081c94c  00 70 a0 e1                                      mov r7, r0
0081c950  01 60 a0 e1                                      mov r6, r1
0081c954  04 00 a0 e1                                      mov r0, r4
0081c958  03 10 a0 e1                                      mov r1, r3
0081c95c  e9 c7 ff eb                                      bl #0x80e908
0081c960  04 00 a0 e1                                      mov r0, r4
0081c964  08 10 a0 e1                                      mov r1, r8
0081c968  05 20 a0 e1                                      mov r2, r5
0081c96c  32 c9 ff eb                                      bl #0x80ee3c
0081c970  04 00 a0 e1                                      mov r0, r4
0081c974  24 10 8d e2                                      add r1, sp, #0x24
0081c978  01 20 a0 e3                                      mov r2, #1
0081c97c  a9 c8 ff eb                                      bl #0x80ec28
0081c980  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
0081c984  04 00 53 e3                                      cmp r3, #4
0081c988  11 00 00 0a                                      beq #0x81c9d4
0081c98c  05 00 53 e3                                      cmp r3, #5
0081c990  0a 00 00 0a                                      beq #0x81c9c0
0081c994  03 00 53 e3                                      cmp r3, #3
0081c998  03 00 00 0a                                      beq #0x81c9ac
0081c99c  04 00 a0 e1                                      mov r0, r4
0081c9a0  7a c7 ff eb                                      bl #0x80e790
0081c9a4  28 d0 8d e2                                      add sp, sp, #0x28
0081c9a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081c9ac  07 00 a0 e1                                      mov r0, r7
0081c9b0  06 10 a0 e1                                      mov r1, r6
0081c9b4  04 20 a0 e1                                      mov r2, r4
0081c9b8  10 fe ff eb                                      bl #0x81c200
0081c9bc  f6 ff ff ea                                      b #0x81c99c
0081c9c0  07 00 a0 e1                                      mov r0, r7
0081c9c4  06 10 a0 e1                                      mov r1, r6
0081c9c8  04 20 a0 e1                                      mov r2, r4
0081c9cc  b9 ff ff eb                                      bl #0x81c8b8
0081c9d0  f1 ff ff ea                                      b #0x81c99c
0081c9d4  07 00 a0 e1                                      mov r0, r7
0081c9d8  06 10 a0 e1                                      mov r1, r6
0081c9dc  04 20 a0 e1                                      mov r2, r4
0081c9e0  ee fd ff eb                                      bl #0x81c1a0
0081c9e4  ec ff ff ea                                      b #0x81c99c

; FUNCTION 0x0081c9e8, declared_size=60, range_size=60, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive23sPacketReceiverCallbackEiPci
; demangled: CMatchingGLLive::sPacketReceiverCallback(int, char*, int)
; decoder-mode: arm
0081c9e8  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
0081c9ec  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0081c9f0  30 00 2d e9                                      push {r4, r5}
0081c9f4  0c c0 8f e0                                      add ip, pc, ip
0081c9f8  00 50 a0 e1                                      mov r5, r0
0081c9fc  03 00 9c e7                                      ldr r0, [ip, r3]
0081ca00  01 40 a0 e1                                      mov r4, r1
0081ca04  02 30 a0 e1                                      mov r3, r2
0081ca08  00 00 90 e5                                      ldr r0, [r0]
0081ca0c  05 10 a0 e1                                      mov r1, r5
0081ca10  04 20 a0 e1                                      mov r2, r4
0081ca14  30 00 bd e8                                      pop {r4, r5}
0081ca18  c6 ff ff ea                                      b #0x81c938
; mapping-symbol data/literal pool
0081ca1c  9c 80 17 00 38 43 00 00                          .byte 0x9c, 0x80, 0x17, 0x00, 0x38, 0x43, 0x00, 0x00

; FUNCTION 0x0081ca24, declared_size=212, range_size=212, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive19ProcessGLLiveEventsEv
; demangled: CMatchingGLLive::ProcessGLLiveEvents()
; decoder-mode: arm
0081ca24  70 40 2d e9                                      push {r4, r5, r6, lr}
0081ca28  bc 40 9f e5                                      ldr r4, [pc, #0xbc]
0081ca2c  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
0081ca30  01 20 a0 e3                                      mov r2, #1
0081ca34  04 40 8f e0                                      add r4, pc, r4
0081ca38  00 60 a0 e1                                      mov r6, r0
0081ca3c  05 10 a0 e3                                      mov r1, #5
0081ca40  05 00 94 e7                                      ldr r0, [r4, r5]
0081ca44  6b 86 ff eb                                      bl #0x7fe3f8
0081ca48  00 00 50 e3                                      cmp r0, #0
0081ca4c  10 38 06 13                                      movwne r3, #0x6810
0081ca50  01 20 a0 13                                      movne r2, #1
0081ca54  03 20 c6 17                                      strbne r2, [r6, r3]
0081ca58  06 10 a0 e3                                      mov r1, #6
0081ca5c  01 20 a0 e3                                      mov r2, #1
0081ca60  05 00 94 e7                                      ldr r0, [r4, r5]
0081ca64  63 86 ff eb                                      bl #0x7fe3f8
0081ca68  00 00 50 e3                                      cmp r0, #0
0081ca6c  00 20 a0 13                                      movne r2, #0
0081ca70  10 38 06 13                                      movwne r3, #0x6810
0081ca74  03 20 c6 17                                      strbne r2, [r6, r3]
0081ca78  05 00 94 e7                                      ldr r0, [r4, r5]
0081ca7c  09 10 a0 e3                                      mov r1, #9
0081ca80  01 20 a0 e3                                      mov r2, #1
0081ca84  5b 86 ff eb                                      bl #0x7fe3f8
0081ca88  00 00 50 e3                                      cmp r0, #0
0081ca8c  0e 00 00 1a                                      bne #0x81cacc
0081ca90  05 00 94 e7                                      ldr r0, [r4, r5]
0081ca94  0a 10 a0 e3                                      mov r1, #0xa
0081ca98  01 20 a0 e3                                      mov r2, #1
0081ca9c  55 86 ff eb                                      bl #0x7fe3f8
0081caa0  00 00 50 e3                                      cmp r0, #0
0081caa4  06 00 00 0a                                      beq #0x81cac4
0081caa8  44 30 9f e5                                      ldr r3, [pc, #0x44]
0081caac  02 15 a0 e3                                      mov r1, #0x800000
0081cab0  00 20 a0 e3                                      mov r2, #0
0081cab4  03 00 94 e7                                      ldr r0, [r4, r3]
0081cab8  0d 10 81 e2                                      add r1, r1, #0xd
0081cabc  02 30 a0 e1                                      mov r3, r2
0081cac0  cf 85 ff eb                                      bl #0x7fe204
0081cac4  00 00 a0 e3                                      mov r0, #0
0081cac8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081cacc  20 30 9f e5                                      ldr r3, [pc, #0x20]
0081cad0  00 20 a0 e3                                      mov r2, #0
0081cad4  02 15 a0 e3                                      mov r1, #0x800000
0081cad8  03 00 94 e7                                      ldr r0, [r4, r3]
0081cadc  0c 10 81 e2                                      add r1, r1, #0xc
0081cae0  02 30 a0 e1                                      mov r3, r2
0081cae4  c6 85 ff eb                                      bl #0x7fe204
0081cae8  e8 ff ff ea                                      b #0x81ca90
; mapping-symbol data/literal pool
0081caec  5c 80 17 00 ac 35 00 00 3c 34 00 00              .byte 0x5c, 0x80, 0x17, 0x00, 0xac, 0x35, 0x00, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x0081cec0, declared_size=112, range_size=112, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive12IsFriendWithEPKcb
; demangled: CMatchingGLLive::IsFriendWith(char const*, bool)
; decoder-mode: arm
0081cec0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081cec4  10 d0 4d e2                                      sub sp, sp, #0x10
0081cec8  04 50 8d e2                                      add r5, sp, #4
0081cecc  00 30 90 e5                                      ldr r3, [r0]
0081ced0  01 40 a0 e1                                      mov r4, r1
0081ced4  00 10 a0 e1                                      mov r1, r0
0081ced8  05 00 a0 e1                                      mov r0, r5
0081cedc  0f e0 a0 e1                                      mov lr, pc
0081cee0  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
0081cee4  c0 00 9d e9                                      ldmib sp, {r6, r7}
0081cee8  07 00 56 e1                                      cmp r6, r7
0081ceec  00 80 a0 03                                      moveq r8, #0
0081cef0  09 00 00 0a                                      beq #0x81cf1c
0081cef4  18 00 96 e5                                      ldr r0, [r6, #0x18]
0081cef8  04 10 a0 e1                                      mov r1, r4
0081cefc  06 c5 eb eb                                      bl #0x30e31c
0081cf00  68 60 86 e2                                      add r6, r6, #0x68
0081cf04  01 80 70 e2                                      rsbs r8, r0, #1
0081cf08  00 80 a0 33                                      movlo r8, #0
0081cf0c  07 00 56 e1                                      cmp r6, r7
0081cf10  01 00 00 0a                                      beq #0x81cf1c
0081cf14  00 00 58 e3                                      cmp r8, #0
0081cf18  f5 ff ff 0a                                      beq #0x81cef4
0081cf1c  05 00 a0 e1                                      mov r0, r5
0081cf20  c8 ff ff eb                                      bl #0x81ce48
0081cf24  08 00 a0 e1                                      mov r0, r8
0081cf28  10 d0 8d e2                                      add sp, sp, #0x10
0081cf2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0081cf30, declared_size=204, range_size=204, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive14SendInvitationEPKcS1_b
; demangled: CMatchingGLLive::SendInvitation(char const*, char const*, bool)
; decoder-mode: arm
0081cf30  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081cf34  04 37 06 e3                                      movw r3, #0x6704
0081cf38  03 30 90 e7                                      ldr r3, [r0, r3]
0081cf3c  b0 90 9f e5                                      ldr sb, [pc, #0xb0]
0081cf40  00 50 a0 e1                                      mov r5, r0
0081cf44  04 30 d3 e5                                      ldrb r3, [r3, #4]
0081cf48  09 90 8f e0                                      add sb, pc, sb
0081cf4c  1c d0 4d e2                                      sub sp, sp, #0x1c
0081cf50  00 00 53 e3                                      cmp r3, #0
0081cf54  01 80 a0 e1                                      mov r8, r1
0081cf58  02 60 a0 e1                                      mov r6, r2
0081cf5c  01 00 a0 03                                      moveq r0, #1
0081cf60  01 00 00 1a                                      bne #0x81cf6c
0081cf64  1c d0 8d e2                                      add sp, sp, #0x1c
0081cf68  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081cf6c  0c b0 8d e2                                      add fp, sp, #0xc
0081cf70  00 30 95 e5                                      ldr r3, [r5]
0081cf74  0b 00 a0 e1                                      mov r0, fp
0081cf78  05 10 a0 e1                                      mov r1, r5
0081cf7c  00 20 a0 e3                                      mov r2, #0
0081cf80  0f e0 a0 e1                                      mov lr, pc
0081cf84  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
0081cf88  0c 40 9d e5                                      ldr r4, [sp, #0xc]
0081cf8c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0081cf90  03 00 54 e1                                      cmp r4, r3
0081cf94  0b 00 00 0a                                      beq #0x81cfc8
0081cf98  08 77 06 e3                                      movw r7, #0x6708
0081cf9c  00 a0 a0 e3                                      mov sl, #0
0081cfa0  18 10 94 e5                                      ldr r1, [r4, #0x18]
0081cfa4  07 00 95 e7                                      ldr r0, [r5, r7]
0081cfa8  08 30 a0 e1                                      mov r3, r8
0081cfac  08 20 a0 e3                                      mov r2, #8
0081cfb0  40 04 8d e8                                      stm sp, {r6, sl}
0081cfb4  7f 63 00 eb                                      bl #0x835db8
0081cfb8  10 30 9d e5                                      ldr r3, [sp, #0x10]
0081cfbc  68 40 84 e2                                      add r4, r4, #0x68
0081cfc0  03 00 54 e1                                      cmp r4, r3
0081cfc4  f5 ff ff 1a                                      bne #0x81cfa0
0081cfc8  28 30 9f e5                                      ldr r3, [pc, #0x28]
0081cfcc  00 20 a0 e3                                      mov r2, #0
0081cfd0  02 15 a0 e3                                      mov r1, #0x800000
0081cfd4  03 00 99 e7                                      ldr r0, [sb, r3]
0081cfd8  14 10 81 e2                                      add r1, r1, #0x14
0081cfdc  02 30 a0 e1                                      mov r3, r2
0081cfe0  87 84 ff eb                                      bl #0x7fe204
0081cfe4  0b 00 a0 e1                                      mov r0, fp
0081cfe8  96 ff ff eb                                      bl #0x81ce48
0081cfec  00 00 a0 e3                                      mov r0, #0
0081cff0  db ff ff ea                                      b #0x81cf64
; mapping-symbol data/literal pool
0081cff4  48 7b 17 00 3c 34 00 00                          .byte 0x48, 0x7b, 0x17, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x0081d2b4, declared_size=836, range_size=836, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLiveD1Ev
; demangled: CMatchingGLLive::~CMatchingGLLive()
; decoder-mode: arm
0081d2b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081d2b8  1c 43 9f e5                                      ldr r4, [pc, #0x31c]
0081d2bc  1c 33 9f e5                                      ldr r3, [pc, #0x31c]
0081d2c0  08 68 06 e3                                      movw r6, #0x6808
0081d2c4  04 40 8f e0                                      add r4, pc, r4
0081d2c8  06 20 90 e7                                      ldr r2, [r0, r6]
0081d2cc  03 30 94 e7                                      ldr r3, [r4, r3]
0081d2d0  00 50 a0 e1                                      mov r5, r0
0081d2d4  00 00 52 e3                                      cmp r2, #0
0081d2d8  08 30 83 e2                                      add r3, r3, #8
0081d2dc  00 30 80 e5                                      str r3, [r0]
0081d2e0  05 00 00 0a                                      beq #0x81d2fc
0081d2e4  00 30 92 e5                                      ldr r3, [r2]
0081d2e8  02 00 a0 e1                                      mov r0, r2
0081d2ec  0f e0 a0 e1                                      mov lr, pc
0081d2f0  04 f0 93 e5                                      ldr pc, [r3, #4]
0081d2f4  00 30 a0 e3                                      mov r3, #0
0081d2f8  06 30 85 e7                                      str r3, [r5, r6]
0081d2fc  10 67 06 e3                                      movw r6, #0x6710
0081d300  06 30 95 e7                                      ldr r3, [r5, r6]
0081d304  00 00 53 e3                                      cmp r3, #0
0081d308  05 00 00 0a                                      beq #0x81d324
0081d30c  03 00 a0 e1                                      mov r0, r3
0081d310  00 30 93 e5                                      ldr r3, [r3]
0081d314  0f e0 a0 e1                                      mov lr, pc
0081d318  04 f0 93 e5                                      ldr pc, [r3, #4]
0081d31c  00 30 a0 e3                                      mov r3, #0
0081d320  06 30 85 e7                                      str r3, [r5, r6]
0081d324  08 67 06 e3                                      movw r6, #0x6708
0081d328  06 30 95 e7                                      ldr r3, [r5, r6]
0081d32c  00 00 53 e3                                      cmp r3, #0
0081d330  05 00 00 0a                                      beq #0x81d34c
0081d334  03 00 a0 e1                                      mov r0, r3
0081d338  00 30 93 e5                                      ldr r3, [r3]
0081d33c  0f e0 a0 e1                                      mov lr, pc
0081d340  04 f0 93 e5                                      ldr pc, [r3, #4]
0081d344  00 30 a0 e3                                      mov r3, #0
0081d348  06 30 85 e7                                      str r3, [r5, r6]
0081d34c  0c 67 06 e3                                      movw r6, #0x670c
0081d350  06 00 95 e7                                      ldr r0, [r5, r6]
0081d354  00 00 50 e3                                      cmp r0, #0
0081d358  02 00 00 0a                                      beq #0x81d368
0081d35c  37 cc eb eb                                      bl #0x310440
0081d360  00 30 a0 e3                                      mov r3, #0
0081d364  06 30 85 e7                                      str r3, [r5, r6]
0081d368  67 6c a0 e3                                      mov r6, #0x6700
0081d36c  06 30 95 e7                                      ldr r3, [r5, r6]
0081d370  00 00 53 e3                                      cmp r3, #0
0081d374  05 00 00 0a                                      beq #0x81d390
0081d378  03 00 a0 e1                                      mov r0, r3
0081d37c  00 30 93 e5                                      ldr r3, [r3]
0081d380  0f e0 a0 e1                                      mov lr, pc
0081d384  04 f0 93 e5                                      ldr pc, [r3, #4]
0081d388  00 30 a0 e3                                      mov r3, #0
0081d38c  06 30 85 e7                                      str r3, [r5, r6]
0081d390  04 77 06 e3                                      movw r7, #0x6704
0081d394  07 60 95 e7                                      ldr r6, [r5, r7]
0081d398  00 00 56 e3                                      cmp r6, #0
0081d39c  05 00 00 0a                                      beq #0x81d3b8
0081d3a0  06 00 a0 e1                                      mov r0, r6
0081d3a4  c1 0f 00 eb                                      bl #0x8212b0
0081d3a8  06 00 a0 e1                                      mov r0, r6
0081d3ac  23 cc eb eb                                      bl #0x310440
0081d3b0  00 30 a0 e3                                      mov r3, #0
0081d3b4  07 30 85 e7                                      str r3, [r5, r7]
0081d3b8  24 32 9f e5                                      ldr r3, [pc, #0x224]
0081d3bc  03 60 94 e7                                      ldr r6, [r4, r3]
0081d3c0  00 30 96 e5                                      ldr r3, [r6]
0081d3c4  00 00 53 e3                                      cmp r3, #0
0081d3c8  05 00 00 0a                                      beq #0x81d3e4
0081d3cc  03 00 a0 e1                                      mov r0, r3
0081d3d0  00 30 93 e5                                      ldr r3, [r3]
0081d3d4  0f e0 a0 e1                                      mov lr, pc
0081d3d8  04 f0 93 e5                                      ldr pc, [r3, #4]
0081d3dc  00 30 a0 e3                                      mov r3, #0
0081d3e0  00 30 86 e5                                      str r3, [r6]
0081d3e4  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
0081d3e8  03 70 94 e7                                      ldr r7, [r4, r3]
0081d3ec  00 60 97 e5                                      ldr r6, [r7]
0081d3f0  00 00 56 e3                                      cmp r6, #0
0081d3f4  05 00 00 0a                                      beq #0x81d410
0081d3f8  06 00 a0 e1                                      mov r0, r6
0081d3fc  6c 1d 00 eb                                      bl #0x8249b4
0081d400  06 00 a0 e1                                      mov r0, r6
0081d404  0d cc eb eb                                      bl #0x310440
0081d408  00 30 a0 e3                                      mov r3, #0
0081d40c  00 30 87 e5                                      str r3, [r7]
0081d410  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
0081d414  03 60 94 e7                                      ldr r6, [r4, r3]
0081d418  00 30 96 e5                                      ldr r3, [r6]
0081d41c  00 00 53 e3                                      cmp r3, #0
0081d420  05 00 00 0a                                      beq #0x81d43c
0081d424  03 00 a0 e1                                      mov r0, r3
0081d428  00 30 93 e5                                      ldr r3, [r3]
0081d42c  0f e0 a0 e1                                      mov lr, pc
0081d430  04 f0 93 e5                                      ldr pc, [r3, #4]
0081d434  00 30 a0 e3                                      mov r3, #0
0081d438  00 30 86 e5                                      str r3, [r6]
0081d43c  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
0081d440  03 70 94 e7                                      ldr r7, [r4, r3]
0081d444  00 60 97 e5                                      ldr r6, [r7]
0081d448  00 00 56 e3                                      cmp r6, #0
0081d44c  05 00 00 0a                                      beq #0x81d468
0081d450  06 00 a0 e1                                      mov r0, r6
0081d454  9f 12 00 eb                                      bl #0x821ed8
0081d458  06 00 a0 e1                                      mov r0, r6
0081d45c  f7 cb eb eb                                      bl #0x310440
0081d460  00 30 a0 e3                                      mov r3, #0
0081d464  00 30 87 e5                                      str r3, [r7]
0081d468  84 31 9f e5                                      ldr r3, [pc, #0x184]
0081d46c  00 20 a0 e3                                      mov r2, #0
0081d470  6b 7c 85 e2                                      add r7, r5, #0x6b00
0081d474  03 30 94 e7                                      ldr r3, [r4, r3]
0081d478  d8 60 87 e2                                      add r6, r7, #0xd8
0081d47c  00 20 c3 e5                                      strb r2, [r3]
0081d480  d8 00 97 e5                                      ldr r0, [r7, #0xd8]
0081d484  06 00 50 e1                                      cmp r0, r6
0081d488  01 00 00 1a                                      bne #0x81d494
0081d48c  06 00 00 ea                                      b #0x81d4ac
0081d490  04 00 a0 e1                                      mov r0, r4
0081d494  00 40 90 e5                                      ldr r4, [r0]
0081d498  14 10 a0 e3                                      mov r1, #0x14
0081d49c  a5 83 02 eb                                      bl #0x8be338
0081d4a0  06 00 54 e1                                      cmp r4, r6
0081d4a4  f9 ff ff 1a                                      bne #0x81d490
0081d4a8  06 00 a0 e1                                      mov r0, r6
0081d4ac  1a 4b 85 e2                                      add r4, r5, #0x6800
0081d4b0  d8 00 87 e5                                      str r0, [r7, #0xd8]
0081d4b4  04 00 86 e5                                      str r0, [r6, #4]
0081d4b8  40 00 84 e2                                      add r0, r4, #0x40
0081d4bc  d4 ed ff eb                                      bl #0x818c14
0081d4c0  24 00 94 e5                                      ldr r0, [r4, #0x24]
0081d4c4  24 30 84 e2                                      add r3, r4, #0x24
0081d4c8  00 00 50 e3                                      cmp r0, #0
0081d4cc  05 00 00 0a                                      beq #0x81d4e8
0081d4d0  08 10 93 e5                                      ldr r1, [r3, #8]
0081d4d4  01 10 60 e0                                      rsb r1, r0, r1
0081d4d8  03 10 c1 e3                                      bic r1, r1, #3
0081d4dc  80 00 51 e3                                      cmp r1, #0x80
0081d4e0  3b 00 00 8a                                      bhi #0x81d5d4
0081d4e4  93 83 02 eb                                      bl #0x8be338
0081d4e8  14 00 84 e2                                      add r0, r4, #0x14
0081d4ec  67 4c 85 e2                                      add r4, r5, #0x6700
0081d4f0  17 89 f0 eb                                      bl #0x43f954
0081d4f4  f0 00 84 e2                                      add r0, r4, #0xf0
0081d4f8  55 eb eb eb                                      bl #0x318254
0081d4fc  60 00 84 e2                                      add r0, r4, #0x60
0081d500  9a c3 ff eb                                      bl #0x80e370
0081d504  5c 00 84 e2                                      add r0, r4, #0x5c
0081d508  98 c3 ff eb                                      bl #0x80e370
0081d50c  30 67 06 e3                                      movw r6, #0x6730
0081d510  38 00 84 e2                                      add r0, r4, #0x38
0081d514  d2 f1 ff eb                                      bl #0x819c64
0081d518  06 30 95 e7                                      ldr r3, [r5, r6]
0081d51c  00 00 53 e3                                      cmp r3, #0
0081d520  1e 00 00 1a                                      bne #0x81d5a0
0081d524  3a 6c 85 e2                                      add r6, r5, #0x3a00
0081d528  68 31 34 e5                                      ldr r3, [r4, #-0x168]!
0081d52c  04 00 a0 e1                                      mov r0, r4
0081d530  0f e0 a0 e1                                      mov lr, pc
0081d534  00 f0 93 e5                                      ldr pc, [r3]
0081d538  06 00 54 e1                                      cmp r4, r6
0081d53c  f9 ff ff 1a                                      bne #0x81d528
0081d540  f8 49 03 e3                                      movw r4, #0x39f8
0081d544  04 30 95 e7                                      ldr r3, [r5, r4]
0081d548  00 00 53 e3                                      cmp r3, #0
0081d54c  0c 00 00 0a                                      beq #0x81d584
0081d550  e7 6d 85 e2                                      add r6, r5, #0x39c0
0081d554  28 60 86 e2                                      add r6, r6, #0x28
0081d558  ec 79 03 e3                                      movw r7, #0x39ec
0081d55c  06 00 a0 e1                                      mov r0, r6
0081d560  07 10 95 e7                                      ldr r1, [r5, r7]
0081d564  ec 93 ff eb                                      bl #0x80251c
0081d568  f4 29 03 e3                                      movw r2, #0x39f4
0081d56c  02 60 85 e7                                      str r6, [r5, r2]
0081d570  00 30 a0 e3                                      mov r3, #0
0081d574  f0 29 03 e3                                      movw r2, #0x39f0
0081d578  04 30 85 e7                                      str r3, [r5, r4]
0081d57c  02 60 85 e7                                      str r6, [r5, r2]
0081d580  07 30 85 e7                                      str r3, [r5, r7]
0081d584  d9 0d 85 e2                                      add r0, r5, #0x3640
0081d588  10 00 80 e2                                      add r0, r0, #0x10
0081d58c  a0 ed ff eb                                      bl #0x818c14
0081d590  05 00 a0 e1                                      mov r0, r5
0081d594  33 8d ff eb                                      bl #0x800a68
0081d598  05 00 a0 e1                                      mov r0, r5
0081d59c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081d5a0  20 70 84 e2                                      add r7, r4, #0x20
0081d5a4  24 87 06 e3                                      movw r8, #0x6724
0081d5a8  07 00 a0 e1                                      mov r0, r7
0081d5ac  08 10 95 e7                                      ldr r1, [r5, r8]
0081d5b0  03 fe ff eb                                      bl #0x81cdc4
0081d5b4  2c 27 06 e3                                      movw r2, #0x672c
0081d5b8  02 70 85 e7                                      str r7, [r5, r2]
0081d5bc  00 30 a0 e3                                      mov r3, #0
0081d5c0  28 27 06 e3                                      movw r2, #0x6728
0081d5c4  06 30 85 e7                                      str r3, [r5, r6]
0081d5c8  02 70 85 e7                                      str r7, [r5, r2]
0081d5cc  08 30 85 e7                                      str r3, [r5, r8]
0081d5d0  d3 ff ff ea                                      b #0x81d524
0081d5d4  99 cb eb eb                                      bl #0x310440
0081d5d8  c2 ff ff ea                                      b #0x81d4e8
; mapping-symbol data/literal pool
0081d5dc  cc 77 17 00 cc 2e 00 00 c8 22 00 00 04 07 00 00  .byte 0xcc, 0x77, 0x17, 0x00, 0xcc, 0x2e, 0x00, 0x00, 0xc8, 0x22, 0x00, 0x00, 0x04, 0x07, 0x00, 0x00
0081d5ec  dc 35 00 00 cc 10 00 00 74 06 00 00              .byte 0xdc, 0x35, 0x00, 0x00, 0xcc, 0x10, 0x00, 0x00, 0x74, 0x06, 0x00, 0x00

; FUNCTION 0x0081d5f8, declared_size=28, range_size=28, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLiveD0Ev
; demangled: CMatchingGLLive::~CMatchingGLLive()
; decoder-mode: arm
0081d5f8  10 40 2d e9                                      push {r4, lr}
0081d5fc  00 40 a0 e1                                      mov r4, r0
0081d600  2b ff ff eb                                      bl #0x81d2b4
0081d604  04 00 a0 e1                                      mov r0, r4
0081d608  8c cb eb eb                                      bl #0x310440
0081d60c  04 00 a0 e1                                      mov r0, r4
0081d610  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081d614, declared_size=836, range_size=836, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLiveD2Ev
; demangled: CMatchingGLLive::~CMatchingGLLive()
; decoder-mode: arm
0081d614  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081d618  1c 43 9f e5                                      ldr r4, [pc, #0x31c]
0081d61c  1c 33 9f e5                                      ldr r3, [pc, #0x31c]
0081d620  08 68 06 e3                                      movw r6, #0x6808
0081d624  04 40 8f e0                                      add r4, pc, r4
0081d628  06 20 90 e7                                      ldr r2, [r0, r6]
0081d62c  03 30 94 e7                                      ldr r3, [r4, r3]
0081d630  00 50 a0 e1                                      mov r5, r0
0081d634  00 00 52 e3                                      cmp r2, #0
0081d638  08 30 83 e2                                      add r3, r3, #8
0081d63c  00 30 80 e5                                      str r3, [r0]
0081d640  05 00 00 0a                                      beq #0x81d65c
0081d644  00 30 92 e5                                      ldr r3, [r2]
0081d648  02 00 a0 e1                                      mov r0, r2
0081d64c  0f e0 a0 e1                                      mov lr, pc
0081d650  04 f0 93 e5                                      ldr pc, [r3, #4]
0081d654  00 30 a0 e3                                      mov r3, #0
0081d658  06 30 85 e7                                      str r3, [r5, r6]
0081d65c  10 67 06 e3                                      movw r6, #0x6710
0081d660  06 30 95 e7                                      ldr r3, [r5, r6]
0081d664  00 00 53 e3                                      cmp r3, #0
0081d668  05 00 00 0a                                      beq #0x81d684
0081d66c  03 00 a0 e1                                      mov r0, r3
0081d670  00 30 93 e5                                      ldr r3, [r3]
0081d674  0f e0 a0 e1                                      mov lr, pc
0081d678  04 f0 93 e5                                      ldr pc, [r3, #4]
0081d67c  00 30 a0 e3                                      mov r3, #0
0081d680  06 30 85 e7                                      str r3, [r5, r6]
0081d684  08 67 06 e3                                      movw r6, #0x6708
0081d688  06 30 95 e7                                      ldr r3, [r5, r6]
0081d68c  00 00 53 e3                                      cmp r3, #0
0081d690  05 00 00 0a                                      beq #0x81d6ac
0081d694  03 00 a0 e1                                      mov r0, r3
0081d698  00 30 93 e5                                      ldr r3, [r3]
0081d69c  0f e0 a0 e1                                      mov lr, pc
0081d6a0  04 f0 93 e5                                      ldr pc, [r3, #4]
0081d6a4  00 30 a0 e3                                      mov r3, #0
0081d6a8  06 30 85 e7                                      str r3, [r5, r6]
0081d6ac  0c 67 06 e3                                      movw r6, #0x670c
0081d6b0  06 00 95 e7                                      ldr r0, [r5, r6]
0081d6b4  00 00 50 e3                                      cmp r0, #0
0081d6b8  02 00 00 0a                                      beq #0x81d6c8
0081d6bc  5f cb eb eb                                      bl #0x310440
0081d6c0  00 30 a0 e3                                      mov r3, #0
0081d6c4  06 30 85 e7                                      str r3, [r5, r6]
0081d6c8  67 6c a0 e3                                      mov r6, #0x6700
0081d6cc  06 30 95 e7                                      ldr r3, [r5, r6]
0081d6d0  00 00 53 e3                                      cmp r3, #0
0081d6d4  05 00 00 0a                                      beq #0x81d6f0
0081d6d8  03 00 a0 e1                                      mov r0, r3
0081d6dc  00 30 93 e5                                      ldr r3, [r3]
0081d6e0  0f e0 a0 e1                                      mov lr, pc
0081d6e4  04 f0 93 e5                                      ldr pc, [r3, #4]
0081d6e8  00 30 a0 e3                                      mov r3, #0
0081d6ec  06 30 85 e7                                      str r3, [r5, r6]
0081d6f0  04 77 06 e3                                      movw r7, #0x6704
0081d6f4  07 60 95 e7                                      ldr r6, [r5, r7]
0081d6f8  00 00 56 e3                                      cmp r6, #0
0081d6fc  05 00 00 0a                                      beq #0x81d718
0081d700  06 00 a0 e1                                      mov r0, r6
0081d704  e9 0e 00 eb                                      bl #0x8212b0
0081d708  06 00 a0 e1                                      mov r0, r6
0081d70c  4b cb eb eb                                      bl #0x310440
0081d710  00 30 a0 e3                                      mov r3, #0
0081d714  07 30 85 e7                                      str r3, [r5, r7]
0081d718  24 32 9f e5                                      ldr r3, [pc, #0x224]
0081d71c  03 60 94 e7                                      ldr r6, [r4, r3]
0081d720  00 30 96 e5                                      ldr r3, [r6]
0081d724  00 00 53 e3                                      cmp r3, #0
0081d728  05 00 00 0a                                      beq #0x81d744
0081d72c  03 00 a0 e1                                      mov r0, r3
0081d730  00 30 93 e5                                      ldr r3, [r3]
0081d734  0f e0 a0 e1                                      mov lr, pc
0081d738  04 f0 93 e5                                      ldr pc, [r3, #4]
0081d73c  00 30 a0 e3                                      mov r3, #0
0081d740  00 30 86 e5                                      str r3, [r6]
0081d744  fc 31 9f e5                                      ldr r3, [pc, #0x1fc]
0081d748  03 70 94 e7                                      ldr r7, [r4, r3]
0081d74c  00 60 97 e5                                      ldr r6, [r7]
0081d750  00 00 56 e3                                      cmp r6, #0
0081d754  05 00 00 0a                                      beq #0x81d770
0081d758  06 00 a0 e1                                      mov r0, r6
0081d75c  94 1c 00 eb                                      bl #0x8249b4
0081d760  06 00 a0 e1                                      mov r0, r6
0081d764  35 cb eb eb                                      bl #0x310440
0081d768  00 30 a0 e3                                      mov r3, #0
0081d76c  00 30 87 e5                                      str r3, [r7]
0081d770  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
0081d774  03 60 94 e7                                      ldr r6, [r4, r3]
0081d778  00 30 96 e5                                      ldr r3, [r6]
0081d77c  00 00 53 e3                                      cmp r3, #0
0081d780  05 00 00 0a                                      beq #0x81d79c
0081d784  03 00 a0 e1                                      mov r0, r3
0081d788  00 30 93 e5                                      ldr r3, [r3]
0081d78c  0f e0 a0 e1                                      mov lr, pc
0081d790  04 f0 93 e5                                      ldr pc, [r3, #4]
0081d794  00 30 a0 e3                                      mov r3, #0
0081d798  00 30 86 e5                                      str r3, [r6]
0081d79c  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
0081d7a0  03 70 94 e7                                      ldr r7, [r4, r3]
0081d7a4  00 60 97 e5                                      ldr r6, [r7]
0081d7a8  00 00 56 e3                                      cmp r6, #0
0081d7ac  05 00 00 0a                                      beq #0x81d7c8
0081d7b0  06 00 a0 e1                                      mov r0, r6
0081d7b4  c7 11 00 eb                                      bl #0x821ed8
0081d7b8  06 00 a0 e1                                      mov r0, r6
0081d7bc  1f cb eb eb                                      bl #0x310440
0081d7c0  00 30 a0 e3                                      mov r3, #0
0081d7c4  00 30 87 e5                                      str r3, [r7]
0081d7c8  84 31 9f e5                                      ldr r3, [pc, #0x184]
0081d7cc  00 20 a0 e3                                      mov r2, #0
0081d7d0  6b 7c 85 e2                                      add r7, r5, #0x6b00
0081d7d4  03 30 94 e7                                      ldr r3, [r4, r3]
0081d7d8  d8 60 87 e2                                      add r6, r7, #0xd8
0081d7dc  00 20 c3 e5                                      strb r2, [r3]
0081d7e0  d8 00 97 e5                                      ldr r0, [r7, #0xd8]
0081d7e4  06 00 50 e1                                      cmp r0, r6
0081d7e8  01 00 00 1a                                      bne #0x81d7f4
0081d7ec  06 00 00 ea                                      b #0x81d80c
0081d7f0  04 00 a0 e1                                      mov r0, r4
0081d7f4  00 40 90 e5                                      ldr r4, [r0]
0081d7f8  14 10 a0 e3                                      mov r1, #0x14
0081d7fc  cd 82 02 eb                                      bl #0x8be338
0081d800  06 00 54 e1                                      cmp r4, r6
0081d804  f9 ff ff 1a                                      bne #0x81d7f0
0081d808  06 00 a0 e1                                      mov r0, r6
0081d80c  1a 4b 85 e2                                      add r4, r5, #0x6800
0081d810  d8 00 87 e5                                      str r0, [r7, #0xd8]
0081d814  04 00 86 e5                                      str r0, [r6, #4]
0081d818  40 00 84 e2                                      add r0, r4, #0x40
0081d81c  fc ec ff eb                                      bl #0x818c14
0081d820  24 00 94 e5                                      ldr r0, [r4, #0x24]
0081d824  24 30 84 e2                                      add r3, r4, #0x24
0081d828  00 00 50 e3                                      cmp r0, #0
0081d82c  05 00 00 0a                                      beq #0x81d848
0081d830  08 10 93 e5                                      ldr r1, [r3, #8]
0081d834  01 10 60 e0                                      rsb r1, r0, r1
0081d838  03 10 c1 e3                                      bic r1, r1, #3
0081d83c  80 00 51 e3                                      cmp r1, #0x80
0081d840  3b 00 00 8a                                      bhi #0x81d934
0081d844  bb 82 02 eb                                      bl #0x8be338
0081d848  14 00 84 e2                                      add r0, r4, #0x14
0081d84c  67 4c 85 e2                                      add r4, r5, #0x6700
0081d850  3f 88 f0 eb                                      bl #0x43f954
0081d854  f0 00 84 e2                                      add r0, r4, #0xf0
0081d858  7d ea eb eb                                      bl #0x318254
0081d85c  60 00 84 e2                                      add r0, r4, #0x60
0081d860  c2 c2 ff eb                                      bl #0x80e370
0081d864  5c 00 84 e2                                      add r0, r4, #0x5c
0081d868  c0 c2 ff eb                                      bl #0x80e370
0081d86c  30 67 06 e3                                      movw r6, #0x6730
0081d870  38 00 84 e2                                      add r0, r4, #0x38
0081d874  fa f0 ff eb                                      bl #0x819c64
0081d878  06 30 95 e7                                      ldr r3, [r5, r6]
0081d87c  00 00 53 e3                                      cmp r3, #0
0081d880  1e 00 00 1a                                      bne #0x81d900
0081d884  3a 6c 85 e2                                      add r6, r5, #0x3a00
0081d888  68 31 34 e5                                      ldr r3, [r4, #-0x168]!
0081d88c  04 00 a0 e1                                      mov r0, r4
0081d890  0f e0 a0 e1                                      mov lr, pc
0081d894  00 f0 93 e5                                      ldr pc, [r3]
0081d898  06 00 54 e1                                      cmp r4, r6
0081d89c  f9 ff ff 1a                                      bne #0x81d888
0081d8a0  f8 49 03 e3                                      movw r4, #0x39f8
0081d8a4  04 30 95 e7                                      ldr r3, [r5, r4]
0081d8a8  00 00 53 e3                                      cmp r3, #0
0081d8ac  0c 00 00 0a                                      beq #0x81d8e4
0081d8b0  e7 6d 85 e2                                      add r6, r5, #0x39c0
0081d8b4  28 60 86 e2                                      add r6, r6, #0x28
0081d8b8  ec 79 03 e3                                      movw r7, #0x39ec
0081d8bc  06 00 a0 e1                                      mov r0, r6
0081d8c0  07 10 95 e7                                      ldr r1, [r5, r7]
0081d8c4  14 93 ff eb                                      bl #0x80251c
0081d8c8  f4 29 03 e3                                      movw r2, #0x39f4
0081d8cc  02 60 85 e7                                      str r6, [r5, r2]
0081d8d0  00 30 a0 e3                                      mov r3, #0
0081d8d4  f0 29 03 e3                                      movw r2, #0x39f0
0081d8d8  04 30 85 e7                                      str r3, [r5, r4]
0081d8dc  02 60 85 e7                                      str r6, [r5, r2]
0081d8e0  07 30 85 e7                                      str r3, [r5, r7]
0081d8e4  d9 0d 85 e2                                      add r0, r5, #0x3640
0081d8e8  10 00 80 e2                                      add r0, r0, #0x10
0081d8ec  c8 ec ff eb                                      bl #0x818c14
0081d8f0  05 00 a0 e1                                      mov r0, r5
0081d8f4  5b 8c ff eb                                      bl #0x800a68
0081d8f8  05 00 a0 e1                                      mov r0, r5
0081d8fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081d900  20 70 84 e2                                      add r7, r4, #0x20
0081d904  24 87 06 e3                                      movw r8, #0x6724
0081d908  07 00 a0 e1                                      mov r0, r7
0081d90c  08 10 95 e7                                      ldr r1, [r5, r8]
0081d910  2b fd ff eb                                      bl #0x81cdc4
0081d914  2c 27 06 e3                                      movw r2, #0x672c
0081d918  02 70 85 e7                                      str r7, [r5, r2]
0081d91c  00 30 a0 e3                                      mov r3, #0
0081d920  28 27 06 e3                                      movw r2, #0x6728
0081d924  06 30 85 e7                                      str r3, [r5, r6]
0081d928  02 70 85 e7                                      str r7, [r5, r2]
0081d92c  08 30 85 e7                                      str r3, [r5, r8]
0081d930  d3 ff ff ea                                      b #0x81d884
0081d934  c1 ca eb eb                                      bl #0x310440
0081d938  c2 ff ff ea                                      b #0x81d848
; mapping-symbol data/literal pool
0081d93c  6c 74 17 00 cc 2e 00 00 c8 22 00 00 04 07 00 00  .byte 0x6c, 0x74, 0x17, 0x00, 0xcc, 0x2e, 0x00, 0x00, 0xc8, 0x22, 0x00, 0x00, 0x04, 0x07, 0x00, 0x00
0081d94c  dc 35 00 00 cc 10 00 00 74 06 00 00              .byte 0xdc, 0x35, 0x00, 0x00, 0xcc, 0x10, 0x00, 0x00, 0x74, 0x06, 0x00, 0x00

; FUNCTION 0x0081dba0, declared_size=356, range_size=356, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive21GetGLLiveMemberIdListEv
; demangled: CMatchingGLLive::GetGLLiveMemberIdList()
; decoder-mode: arm
0081dba0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0081dba4  10 d0 4d e2                                      sub sp, sp, #0x10
0081dba8  00 40 a0 e1                                      mov r4, r0
0081dbac  17 fa ff eb                                      bl #0x81c410
0081dbb0  24 10 80 e2                                      add r1, r0, #0x24
0081dbb4  0d 00 a0 e1                                      mov r0, sp
0081dbb8  d6 ff ff eb                                      bl #0x81db18
0081dbbc  00 50 9d e5                                      ldr r5, [sp]
0081dbc0  04 20 9d e5                                      ldr r2, [sp, #4]
0081dbc4  00 30 a0 e3                                      mov r3, #0
0081dbc8  0d 70 a0 e1                                      mov r7, sp
0081dbcc  02 00 55 e1                                      cmp r5, r2
0081dbd0  00 30 84 e5                                      str r3, [r4]
0081dbd4  04 30 84 e5                                      str r3, [r4, #4]
0081dbd8  08 30 84 e5                                      str r3, [r4, #8]
0081dbdc  10 00 00 0a                                      beq #0x81dc24
0081dbe0  08 a0 84 e2                                      add sl, r4, #8
0081dbe4  03 60 a0 e1                                      mov r6, r3
0081dbe8  0c 90 8d e2                                      add sb, sp, #0xc
0081dbec  01 00 00 ea                                      b #0x81dbf8
0081dbf0  04 60 94 e5                                      ldr r6, [r4, #4]
0081dbf4  08 30 94 e5                                      ldr r3, [r4, #8]
0081dbf8  06 00 53 e1                                      cmp r3, r6
0081dbfc  0d 00 00 0a                                      beq #0x81dc38
0081dc00  00 30 95 e5                                      ldr r3, [r5]
0081dc04  00 30 86 e5                                      str r3, [r6]
0081dc08  04 30 94 e5                                      ldr r3, [r4, #4]
0081dc0c  04 30 83 e2                                      add r3, r3, #4
0081dc10  04 30 84 e5                                      str r3, [r4, #4]
0081dc14  04 30 9d e5                                      ldr r3, [sp, #4]
0081dc18  54 50 85 e2                                      add r5, r5, #0x54
0081dc1c  03 00 55 e1                                      cmp r5, r3
0081dc20  f2 ff ff 1a                                      bne #0x81dbf0
0081dc24  0d 00 a0 e1                                      mov r0, sp
0081dc28  1f fd ff eb                                      bl #0x81d0ac
0081dc2c  04 00 a0 e1                                      mov r0, r4
0081dc30  10 d0 8d e2                                      add sp, sp, #0x10
0081dc34  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0081dc38  00 30 94 e5                                      ldr r3, [r4]
0081dc3c  04 20 94 e5                                      ldr r2, [r4, #4]
0081dc40  02 20 63 e0                                      rsb r2, r3, r2
0081dc44  42 21 a0 e1                                      asr r2, r2, #2
0081dc48  01 00 52 e3                                      cmp r2, #1
0081dc4c  02 30 82 20                                      addhs r3, r2, r2
0081dc50  01 30 82 32                                      addlo r3, r2, #1
0081dc54  07 01 73 e3                                      cmn r3, #0xc0000001
0081dc58  1b 00 00 9a                                      bls #0x81dccc
0081dc5c  03 31 e0 e3                                      mvn r3, #0xc0000000
0081dc60  03 10 a0 e1                                      mov r1, r3
0081dc64  0a 00 a0 e1                                      mov r0, sl
0081dc68  09 20 a0 e1                                      mov r2, sb
0081dc6c  0c 30 8d e5                                      str r3, [sp, #0xc]
0081dc70  39 08 ed eb                                      bl #0x35fd5c
0081dc74  00 10 94 e5                                      ldr r1, [r4]
0081dc78  00 80 a0 e1                                      mov r8, r0
0081dc7c  01 60 56 e0                                      subs r6, r6, r1
0081dc80  00 60 a0 01                                      moveq r6, r0
0081dc84  1a 00 00 1a                                      bne #0x81dcf4
0081dc88  00 30 95 e5                                      ldr r3, [r5]
0081dc8c  04 30 86 e4                                      str r3, [r6], #4
0081dc90  00 00 94 e5                                      ldr r0, [r4]
0081dc94  08 10 94 e5                                      ldr r1, [r4, #8]
0081dc98  00 00 50 e3                                      cmp r0, #0
0081dc9c  04 00 00 0a                                      beq #0x81dcb4
0081dca0  01 10 60 e0                                      rsb r1, r0, r1
0081dca4  03 10 c1 e3                                      bic r1, r1, #3
0081dca8  80 00 51 e3                                      cmp r1, #0x80
0081dcac  09 00 00 8a                                      bhi #0x81dcd8
0081dcb0  a0 81 02 eb                                      bl #0x8be338
0081dcb4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0081dcb8  00 80 84 e5                                      str r8, [r4]
0081dcbc  04 60 84 e5                                      str r6, [r4, #4]
0081dcc0  03 81 88 e0                                      add r8, r8, r3, lsl #2
0081dcc4  08 80 84 e5                                      str r8, [r4, #8]
0081dcc8  d1 ff ff ea                                      b #0x81dc14
0081dccc  03 00 52 e1                                      cmp r2, r3
0081dcd0  e2 ff ff 9a                                      bls #0x81dc60
0081dcd4  e0 ff ff ea                                      b #0x81dc5c
0081dcd8  d8 c9 eb eb                                      bl #0x310440
0081dcdc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0081dce0  00 80 84 e5                                      str r8, [r4]
0081dce4  04 60 84 e5                                      str r6, [r4, #4]
0081dce8  03 81 88 e0                                      add r8, r8, r3, lsl #2
0081dcec  08 80 84 e5                                      str r8, [r4, #8]
0081dcf0  c7 ff ff ea                                      b #0x81dc14
0081dcf4  06 20 a0 e1                                      mov r2, r6
0081dcf8  8e c0 eb eb                                      bl #0x30df38
0081dcfc  06 60 80 e0                                      add r6, r0, r6
0081dd00  e0 ff ff ea                                      b #0x81dc88

; FUNCTION 0x0081dd04, declared_size=412, range_size=412, mode=arm
; class-group: CMatchingGLLive
; alias: _ZNK15CMatchingGLLive17GetGLLiveMemberIdEv
; demangled: CMatchingGLLive::GetGLLiveMemberId() const
; decoder-mode: arm
0081dd04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081dd08  88 41 9f e5                                      ldr r4, [pc, #0x188]
0081dd0c  88 a1 9f e5                                      ldr sl, [pc, #0x188]
0081dd10  e8 27 06 e3                                      movw r2, #0x67e8
0081dd14  04 40 8f e0                                      add r4, pc, r4
0081dd18  0a 30 94 e7                                      ldr r3, [r4, sl]
0081dd1c  02 20 d0 e7                                      ldrb r2, [r0, r2]
0081dd20  5c d0 4d e2                                      sub sp, sp, #0x5c
0081dd24  00 30 93 e5                                      ldr r3, [r3]
0081dd28  00 00 52 e3                                      cmp r2, #0
0081dd2c  00 60 a0 e1                                      mov r6, r0
0081dd30  54 30 8d e5                                      str r3, [sp, #0x54]
0081dd34  08 00 00 0a                                      beq #0x81dd5c
0081dd38  00 70 e0 e3                                      mvn r7, #0
0081dd3c  0a 30 94 e7                                      ldr r3, [r4, sl]
0081dd40  54 20 9d e5                                      ldr r2, [sp, #0x54]
0081dd44  07 00 a0 e1                                      mov r0, r7
0081dd48  00 30 93 e5                                      ldr r3, [r3]
0081dd4c  03 00 52 e1                                      cmp r2, r3
0081dd50  4f 00 00 1a                                      bne #0x81de94
0081dd54  5c d0 8d e2                                      add sp, sp, #0x5c
0081dd58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081dd5c  52 f2 ff eb                                      bl #0x81a6ac
0081dd60  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
0081dd64  00 00 53 e3                                      cmp r3, #0
0081dd68  f2 ff ff 0a                                      beq #0x81dd38
0081dd6c  a7 f9 ff eb                                      bl #0x81c410
0081dd70  10 20 8d e2                                      add r2, sp, #0x10
0081dd74  24 10 80 e2                                      add r1, r0, #0x24
0081dd78  02 00 a0 e1                                      mov r0, r2
0081dd7c  0c 20 8d e5                                      str r2, [sp, #0xc]
0081dd80  64 ff ff eb                                      bl #0x81db18
0081dd84  48 f2 ff eb                                      bl #0x81a6ac
0081dd88  3c 30 8d e2                                      add r3, sp, #0x3c
0081dd8c  04 10 90 e5                                      ldr r1, [r0, #4]
0081dd90  20 20 8d e2                                      add r2, sp, #0x20
0081dd94  03 00 a0 e1                                      mov r0, r3
0081dd98  08 30 8d e5                                      str r3, [sp, #8]
0081dd9c  d2 d8 eb eb                                      bl #0x3140ec
0081dda0  50 50 9d e5                                      ldr r5, [sp, #0x50]
0081dda4  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
0081dda8  07 00 55 e1                                      cmp r5, r7
0081ddac  04 00 00 0a                                      beq #0x81ddc4
0081ddb0  d0 00 d5 e1                                      ldrsb r0, [r5]
0081ddb4  80 b7 f1 eb                                      bl #0x48bbbc
0081ddb8  01 00 c5 e4                                      strb r0, [r5], #1
0081ddbc  07 00 55 e1                                      cmp r5, r7
0081ddc0  fa ff ff 1a                                      bne #0x81ddb0
0081ddc4  00 30 96 e5                                      ldr r3, [r6]
0081ddc8  06 00 a0 e1                                      mov r0, r6
0081ddcc  0f e0 a0 e1                                      mov lr, pc
0081ddd0  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0081ddd4  00 80 a0 e3                                      mov r8, #0
0081ddd8  08 50 a0 e1                                      mov r5, r8
0081dddc  00 00 55 e1                                      cmp r5, r0
0081dde0  00 70 e0 e3                                      mvn r7, #0
0081dde4  24 90 8d e2                                      add sb, sp, #0x24
0081dde8  1c b0 8d e2                                      add fp, sp, #0x1c
0081ddec  23 00 00 aa                                      bge #0x81de80
0081ddf0  10 10 9d e5                                      ldr r1, [sp, #0x10]
0081ddf4  0b 20 a0 e1                                      mov r2, fp
0081ddf8  09 00 a0 e1                                      mov r0, sb
0081ddfc  08 10 81 e0                                      add r1, r1, r8
0081de00  28 10 81 e2                                      add r1, r1, #0x28
0081de04  b8 d8 eb eb                                      bl #0x3140ec
0081de08  34 20 9d e5                                      ldr r2, [sp, #0x34]
0081de0c  38 30 9d e5                                      ldr r3, [sp, #0x38]
0081de10  04 20 8d e5                                      str r2, [sp, #4]
0081de14  02 00 53 e1                                      cmp r3, r2
0081de18  09 00 00 0a                                      beq #0x81de44
0081de1c  d0 00 d3 e1                                      ldrsb r0, [r3]
0081de20  00 30 8d e5                                      str r3, [sp]
0081de24  64 b7 f1 eb                                      bl #0x48bbbc
0081de28  00 30 9d e5                                      ldr r3, [sp]
0081de2c  01 00 c3 e4                                      strb r0, [r3], #1
0081de30  04 20 9d e5                                      ldr r2, [sp, #4]
0081de34  02 00 53 e1                                      cmp r3, r2
0081de38  f7 ff ff 1a                                      bne #0x81de1c
0081de3c  38 30 9d e5                                      ldr r3, [sp, #0x38]
0081de40  04 30 8d e5                                      str r3, [sp, #4]
0081de44  50 10 9d e5                                      ldr r1, [sp, #0x50]
0081de48  04 00 9d e5                                      ldr r0, [sp, #4]
0081de4c  32 c1 eb eb                                      bl #0x30e31c
0081de50  00 00 50 e3                                      cmp r0, #0
0081de54  09 00 a0 e1                                      mov r0, sb
0081de58  05 70 a0 01                                      moveq r7, r5
0081de5c  fc e8 eb eb                                      bl #0x318254
0081de60  00 30 96 e5                                      ldr r3, [r6]
0081de64  06 00 a0 e1                                      mov r0, r6
0081de68  0f e0 a0 e1                                      mov lr, pc
0081de6c  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0081de70  01 50 85 e2                                      add r5, r5, #1
0081de74  00 00 55 e1                                      cmp r5, r0
0081de78  54 80 88 e2                                      add r8, r8, #0x54
0081de7c  db ff ff ba                                      blt #0x81ddf0
0081de80  08 00 9d e5                                      ldr r0, [sp, #8]
0081de84  f2 e8 eb eb                                      bl #0x318254
0081de88  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0081de8c  86 fc ff eb                                      bl #0x81d0ac
0081de90  a9 ff ff ea                                      b #0x81dd3c
0081de94  1d c1 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081de98  7c 6d 17 00 ac 40 00 00                          .byte 0x7c, 0x6d, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0081dea0, declared_size=52, range_size=52, mode=arm
; class-group: CMatchingGLLive
; alias: _ZNK15CMatchingGLLive11GetMemberIdEv
; demangled: CMatchingGLLive::GetMemberId() const
; decoder-mode: arm
0081dea0  24 30 9f e5                                      ldr r3, [pc, #0x24]
0081dea4  24 20 9f e5                                      ldr r2, [pc, #0x24]
0081dea8  03 30 8f e0                                      add r3, pc, r3
0081deac  02 20 93 e7                                      ldr r2, [r3, r2]
0081deb0  00 30 d2 e5                                      ldrb r3, [r2]
0081deb4  00 00 53 e3                                      cmp r3, #0
0081deb8  02 00 00 0a                                      beq #0x81dec8
0081debc  d9 3d a0 e3                                      mov r3, #0x3640
0081dec0  03 00 90 e7                                      ldr r0, [r0, r3]
0081dec4  1e ff 2f e1                                      bx lr
0081dec8  8d ff ff ea                                      b #0x81dd04
; mapping-symbol data/literal pool
0081decc  e8 6b 17 00 74 06 00 00                          .byte 0xe8, 0x6b, 0x17, 0x00, 0x74, 0x06, 0x00, 0x00

; FUNCTION 0x0081ded4, declared_size=188, range_size=188, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive8IsInRoomEi
; demangled: CMatchingGLLive::IsInRoom(int)
; decoder-mode: arm
0081ded4  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0081ded8  ac 20 9f e5                                      ldr r2, [pc, #0xac]
0081dedc  70 40 2d e9                                      push {r4, r5, r6, lr}
0081dee0  03 30 8f e0                                      add r3, pc, r3
0081dee4  02 20 93 e7                                      ldr r2, [r3, r2]
0081dee8  10 d0 4d e2                                      sub sp, sp, #0x10
0081deec  01 40 a0 e1                                      mov r4, r1
0081def0  00 30 d2 e5                                      ldrb r3, [r2]
0081def4  00 50 a0 e1                                      mov r5, r0
0081def8  00 00 53 e3                                      cmp r3, #0
0081defc  0a 00 00 0a                                      beq #0x81df2c
0081df00  d9 3d a0 e3                                      mov r3, #0x3640
0081df04  03 30 90 e7                                      ldr r3, [r0, r3]
0081df08  01 00 53 e1                                      cmp r3, r1
0081df0c  18 00 00 0a                                      beq #0x81df74
0081df10  97 77 ff eb                                      bl #0x7fbd74
0081df14  04 10 a0 e1                                      mov r1, r4
0081df18  f5 79 ff eb                                      bl #0x7fc6f4
0081df1c  00 40 a0 e1                                      mov r4, r0
0081df20  04 00 a0 e1                                      mov r0, r4
0081df24  10 d0 8d e2                                      add sp, sp, #0x10
0081df28  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081df2c  37 f9 ff eb                                      bl #0x81c410
0081df30  04 60 8d e2                                      add r6, sp, #4
0081df34  24 10 80 e2                                      add r1, r0, #0x24
0081df38  06 00 a0 e1                                      mov r0, r6
0081df3c  f5 fe ff eb                                      bl #0x81db18
0081df40  00 00 54 e3                                      cmp r4, #0
0081df44  06 00 00 ba                                      blt #0x81df64
0081df48  05 00 a0 e1                                      mov r0, r5
0081df4c  00 30 95 e5                                      ldr r3, [r5]
0081df50  0f e0 a0 e1                                      mov lr, pc
0081df54  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0081df58  00 00 54 e1                                      cmp r4, r0
0081df5c  01 40 a0 b3                                      movlt r4, #1
0081df60  00 00 00 ba                                      blt #0x81df68
0081df64  00 40 a0 e3                                      mov r4, #0
0081df68  06 00 a0 e1                                      mov r0, r6
0081df6c  4e fc ff eb                                      bl #0x81d0ac
0081df70  ea ff ff ea                                      b #0x81df20
0081df74  00 30 90 e5                                      ldr r3, [r0]
0081df78  0f e0 a0 e1                                      mov lr, pc
0081df7c  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0081df80  00 40 a0 e1                                      mov r4, r0
0081df84  e5 ff ff ea                                      b #0x81df20
; mapping-symbol data/literal pool
0081df88  b0 6b 17 00 74 06 00 00                          .byte 0xb0, 0x6b, 0x17, 0x00, 0x74, 0x06, 0x00, 0x00

; FUNCTION 0x0081df90, declared_size=148, range_size=148, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive13GetMemberNameEi
; demangled: CMatchingGLLive::GetMemberName(int)
; decoder-mode: arm
0081df90  70 40 2d e9                                      push {r4, r5, r6, lr}
0081df94  10 d0 4d e2                                      sub sp, sp, #0x10
0081df98  02 60 a0 e1                                      mov r6, r2
0081df9c  00 40 a0 e1                                      mov r4, r0
0081dfa0  1a f9 ff eb                                      bl #0x81c410
0081dfa4  24 10 80 e2                                      add r1, r0, #0x24
0081dfa8  0d 00 a0 e1                                      mov r0, sp
0081dfac  d9 fe ff eb                                      bl #0x81db18
0081dfb0  06 00 9d e8                                      ldm sp, {r1, r2}
0081dfb4  0d 50 a0 e1                                      mov r5, sp
0081dfb8  02 00 51 e1                                      cmp r1, r2
0081dfbc  03 00 00 1a                                      bne #0x81dfd0
0081dfc0  0a 00 00 ea                                      b #0x81dff0
0081dfc4  54 10 81 e2                                      add r1, r1, #0x54
0081dfc8  02 00 51 e1                                      cmp r1, r2
0081dfcc  07 00 00 0a                                      beq #0x81dff0
0081dfd0  00 30 91 e5                                      ldr r3, [r1]
0081dfd4  06 00 53 e1                                      cmp r3, r6
0081dfd8  f9 ff ff 1a                                      bne #0x81dfc4
0081dfdc  28 10 81 e2                                      add r1, r1, #0x28
0081dfe0  04 00 a0 e1                                      mov r0, r4
0081dfe4  0c 20 8d e2                                      add r2, sp, #0xc
0081dfe8  3f d8 eb eb                                      bl #0x3140ec
0081dfec  07 00 00 ea                                      b #0x81e010
0081dff0  10 40 84 e5                                      str r4, [r4, #0x10]
0081dff4  14 40 84 e5                                      str r4, [r4, #0x14]
0081dff8  04 00 a0 e1                                      mov r0, r4
0081dffc  10 10 a0 e3                                      mov r1, #0x10
0081e000  9d cd eb eb                                      bl #0x31167c
0081e004  10 30 94 e5                                      ldr r3, [r4, #0x10]
0081e008  00 20 a0 e3                                      mov r2, #0
0081e00c  00 20 c3 e5                                      strb r2, [r3]
0081e010  0d 00 a0 e1                                      mov r0, sp
0081e014  24 fc ff eb                                      bl #0x81d0ac
0081e018  04 00 a0 e1                                      mov r0, r4
0081e01c  10 d0 8d e2                                      add sp, sp, #0x10
0081e020  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081e25c, declared_size=628, range_size=628, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive12SyncMemberIdEv
; demangled: CMatchingGLLive::SyncMemberId()
; decoder-mode: arm
0081e25c  60 12 9f e5                                      ldr r1, [pc, #0x260]
0081e260  60 22 9f e5                                      ldr r2, [pc, #0x260]
0081e264  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081e268  01 10 8f e0                                      add r1, pc, r1
0081e26c  02 30 91 e7                                      ldr r3, [r1, r2]
0081e270  74 d0 4d e2                                      sub sp, sp, #0x74
0081e274  10 10 8d e5                                      str r1, [sp, #0x10]
0081e278  00 30 93 e5                                      ldr r3, [r3]
0081e27c  1c 20 8d e5                                      str r2, [sp, #0x1c]
0081e280  00 a0 a0 e1                                      mov sl, r0
0081e284  6c 30 8d e5                                      str r3, [sp, #0x6c]
0081e288  07 f1 ff eb                                      bl #0x81a6ac
0081e28c  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
0081e290  00 00 53 e3                                      cmp r3, #0
0081e294  78 00 00 0a                                      beq #0x81e47c
0081e298  2c 32 9f e5                                      ldr r3, [pc, #0x22c]
0081e29c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0081e2a0  03 30 91 e7                                      ldr r3, [r1, r3]
0081e2a4  00 30 d3 e5                                      ldrb r3, [r3]
0081e2a8  00 00 53 e3                                      cmp r3, #0
0081e2ac  72 00 00 0a                                      beq #0x81e47c
0081e2b0  56 f8 ff eb                                      bl #0x81c410
0081e2b4  24 20 90 e5                                      ldr r2, [r0, #0x24]
0081e2b8  28 70 90 e5                                      ldr r7, [r0, #0x28]
0081e2bc  3d 3f 0c e3                                      movw r3, #0xcf3d
0081e2c0  f3 3c 43 e3                                      movt r3, #0x3cf3
0081e2c4  07 70 62 e0                                      rsb r7, r2, r7
0081e2c8  47 71 a0 e1                                      asr r7, r7, #2
0081e2cc  93 07 07 e0                                      mul r7, r3, r7
0081e2d0  2c 20 8d e2                                      add r2, sp, #0x2c
0081e2d4  20 30 8d e2                                      add r3, sp, #0x20
0081e2d8  54 10 8d e2                                      add r1, sp, #0x54
0081e2dc  00 b0 a0 e3                                      mov fp, #0
0081e2e0  14 20 8d e5                                      str r2, [sp, #0x14]
0081e2e4  18 30 8d e5                                      str r3, [sp, #0x18]
0081e2e8  0c 10 8d e5                                      str r1, [sp, #0xc]
0081e2ec  3c 60 8d e2                                      add r6, sp, #0x3c
0081e2f0  38 80 8d e2                                      add r8, sp, #0x38
0081e2f4  14 00 9d e5                                      ldr r0, [sp, #0x14]
0081e2f8  00 30 9a e5                                      ldr r3, [sl]
0081e2fc  0a 10 a0 e1                                      mov r1, sl
0081e300  0f e0 a0 e1                                      mov lr, pc
0081e304  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0081e308  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0081e30c  30 40 9d e5                                      ldr r4, [sp, #0x30]
0081e310  00 00 50 e3                                      cmp r0, #0
0081e314  04 40 60 e0                                      rsb r4, r0, r4
0081e318  44 41 a0 e1                                      asr r4, r4, #2
0081e31c  05 00 00 0a                                      beq #0x81e338
0081e320  34 10 9d e5                                      ldr r1, [sp, #0x34]
0081e324  01 10 60 e0                                      rsb r1, r0, r1
0081e328  03 10 c1 e3                                      bic r1, r1, #3
0081e32c  80 00 51 e3                                      cmp r1, #0x80
0081e330  5e 00 00 8a                                      bhi #0x81e4b0
0081e334  ff 7f 02 eb                                      bl #0x8be338
0081e338  04 00 5b e1                                      cmp fp, r4
0081e33c  4e 00 00 aa                                      bge #0x81e47c
0081e340  18 00 9d e5                                      ldr r0, [sp, #0x18]
0081e344  00 30 9a e5                                      ldr r3, [sl]
0081e348  0a 10 a0 e1                                      mov r1, sl
0081e34c  0f e0 a0 e1                                      mov lr, pc
0081e350  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0081e354  20 00 9d e5                                      ldr r0, [sp, #0x20]
0081e358  00 00 50 e3                                      cmp r0, #0
0081e35c  0b 91 90 e7                                      ldr sb, [r0, fp, lsl #2]
0081e360  05 00 00 0a                                      beq #0x81e37c
0081e364  28 10 9d e5                                      ldr r1, [sp, #0x28]
0081e368  01 10 60 e0                                      rsb r1, r0, r1
0081e36c  03 10 c1 e3                                      bic r1, r1, #3
0081e370  80 00 51 e3                                      cmp r1, #0x80
0081e374  4f 00 00 8a                                      bhi #0x81e4b8
0081e378  ee 7f 02 eb                                      bl #0x8be338
0081e37c  09 10 a0 e1                                      mov r1, sb
0081e380  0a 00 a0 e1                                      mov r0, sl
0081e384  84 80 ff eb                                      bl #0x7fe59c
0081e388  5a 2f a0 e3                                      mov r2, #0x168
0081e38c  92 00 01 e0                                      mul r1, r2, r0
0081e390  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0081e394  ed 1d 81 e2                                      add r1, r1, #0x3b40
0081e398  10 10 81 e2                                      add r1, r1, #0x10
0081e39c  01 10 8a e0                                      add r1, sl, r1
0081e3a0  5c 35 ec eb                                      bl #0x32b918
0081e3a4  68 40 9d e5                                      ldr r4, [sp, #0x68]
0081e3a8  64 50 9d e5                                      ldr r5, [sp, #0x64]
0081e3ac  05 00 54 e1                                      cmp r4, r5
0081e3b0  04 00 00 0a                                      beq #0x81e3c8
0081e3b4  d0 00 d4 e1                                      ldrsb r0, [r4]
0081e3b8  ff b5 f1 eb                                      bl #0x48bbbc
0081e3bc  01 00 c4 e4                                      strb r0, [r4], #1
0081e3c0  05 00 54 e1                                      cmp r4, r5
0081e3c4  fa ff ff 1a                                      bne #0x81e3b4
0081e3c8  00 00 57 e3                                      cmp r7, #0
0081e3cc  26 00 00 da                                      ble #0x81e46c
0081e3d0  00 40 a0 e3                                      mov r4, #0
0081e3d4  04 50 a0 e1                                      mov r5, r4
0081e3d8  08 80 8d e5                                      str r8, [sp, #8]
0081e3dc  0b f8 ff eb                                      bl #0x81c410
0081e3e0  24 10 90 e5                                      ldr r1, [r0, #0x24]
0081e3e4  08 20 9d e5                                      ldr r2, [sp, #8]
0081e3e8  06 00 a0 e1                                      mov r0, r6
0081e3ec  04 10 81 e0                                      add r1, r1, r4
0081e3f0  28 10 81 e2                                      add r1, r1, #0x28
0081e3f4  3c d7 eb eb                                      bl #0x3140ec
0081e3f8  50 30 9d e5                                      ldr r3, [sp, #0x50]
0081e3fc  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0081e400  00 00 53 e1                                      cmp r3, r0
0081e404  0d 00 00 0a                                      beq #0x81e440
0081e408  05 80 a0 e1                                      mov r8, r5
0081e40c  04 60 8d e5                                      str r6, [sp, #4]
0081e410  00 50 a0 e1                                      mov r5, r0
0081e414  04 60 a0 e1                                      mov r6, r4
0081e418  03 40 a0 e1                                      mov r4, r3
0081e41c  d0 00 d4 e1                                      ldrsb r0, [r4]
0081e420  e5 b5 f1 eb                                      bl #0x48bbbc
0081e424  01 00 c4 e4                                      strb r0, [r4], #1
0081e428  05 00 54 e1                                      cmp r4, r5
0081e42c  fa ff ff 1a                                      bne #0x81e41c
0081e430  06 40 a0 e1                                      mov r4, r6
0081e434  50 00 9d e5                                      ldr r0, [sp, #0x50]
0081e438  04 60 9d e5                                      ldr r6, [sp, #4]
0081e43c  08 50 a0 e1                                      mov r5, r8
0081e440  68 10 9d e5                                      ldr r1, [sp, #0x68]
0081e444  b4 bf eb eb                                      bl #0x30e31c
0081e448  00 00 50 e3                                      cmp r0, #0
0081e44c  13 00 00 0a                                      beq #0x81e4a0
0081e450  01 50 85 e2                                      add r5, r5, #1
0081e454  06 00 a0 e1                                      mov r0, r6
0081e458  7d e7 eb eb                                      bl #0x318254
0081e45c  07 00 55 e1                                      cmp r5, r7
0081e460  54 40 84 e2                                      add r4, r4, #0x54
0081e464  dc ff ff 1a                                      bne #0x81e3dc
0081e468  08 80 9d e5                                      ldr r8, [sp, #8]
0081e46c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0081e470  77 e7 eb eb                                      bl #0x318254
0081e474  01 b0 8b e2                                      add fp, fp, #1
0081e478  9d ff ff ea                                      b #0x81e2f4
0081e47c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0081e480  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0081e484  01 30 92 e7                                      ldr r3, [r2, r1]
0081e488  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0081e48c  00 30 93 e5                                      ldr r3, [r3]
0081e490  03 00 52 e1                                      cmp r2, r3
0081e494  09 00 00 1a                                      bne #0x81e4c0
0081e498  74 d0 8d e2                                      add sp, sp, #0x74
0081e49c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081e4a0  da f7 ff eb                                      bl #0x81c410
0081e4a4  24 30 90 e5                                      ldr r3, [r0, #0x24]
0081e4a8  04 90 83 e7                                      str sb, [r3, r4]
0081e4ac  e7 ff ff ea                                      b #0x81e450
0081e4b0  e2 c7 eb eb                                      bl #0x310440
0081e4b4  9f ff ff ea                                      b #0x81e338
0081e4b8  e0 c7 eb eb                                      bl #0x310440
0081e4bc  ae ff ff ea                                      b #0x81e37c
0081e4c0  92 bf eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081e4c4  28 68 17 00 ac 40 00 00 74 06 00 00              .byte 0x28, 0x68, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x74, 0x06, 0x00, 0x00

; FUNCTION 0x0081e4d0, declared_size=208, range_size=208, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive14ReadPacketDataEiiR12NetBitStream
; demangled: CMatchingGLLive::ReadPacketData(int, int, NetBitStream&)
; decoder-mode: arm
0081e4d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081e4d4  00 40 a0 e1                                      mov r4, r0
0081e4d8  03 80 a0 e1                                      mov r8, r3
0081e4dc  18 30 94 e4                                      ldr r3, [r4], #0x18
0081e4e0  0c d0 4d e2                                      sub sp, sp, #0xc
0081e4e4  01 a0 a0 e1                                      mov sl, r1
0081e4e8  02 60 a0 e1                                      mov r6, r2
0081e4ec  00 50 a0 e1                                      mov r5, r0
0081e4f0  0f e0 a0 e1                                      mov lr, pc
0081e4f4  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0081e4f8  0a 10 a0 e1                                      mov r1, sl
0081e4fc  08 20 a0 e1                                      mov r2, r8
0081e500  b9 e6 ff eb                                      bl #0x817fec
0081e504  04 00 a0 e1                                      mov r0, r4
0081e508  06 30 a0 e1                                      mov r3, r6
0081e50c  08 10 a0 e1                                      mov r1, r8
0081e510  0a 20 a0 e1                                      mov r2, sl
0081e514  12 81 ff eb                                      bl #0x7fe964
0081e518  00 40 a0 e3                                      mov r4, #0
0081e51c  3a 6c 85 e2                                      add r6, r5, #0x3a00
0081e520  5a 9f a0 e3                                      mov sb, #0x168
0081e524  02 00 00 ea                                      b #0x81e534
0081e528  20 00 54 e3                                      cmp r4, #0x20
0081e52c  5a 6f 86 e2                                      add r6, r6, #0x168
0081e530  18 00 00 0a                                      beq #0x81e598
0081e534  00 30 96 e5                                      ldr r3, [r6]
0081e538  d9 2d a0 e3                                      mov r2, #0x3640
0081e53c  02 10 95 e7                                      ldr r1, [r5, r2]
0081e540  05 00 a0 e1                                      mov r0, r5
0081e544  18 70 93 e5                                      ldr r7, [r3, #0x18]
0081e548  13 80 ff eb                                      bl #0x7fe59c
0081e54c  99 04 0b e0                                      mul fp, sb, r4
0081e550  00 30 a0 e3                                      mov r3, #0
0081e554  3a bc 8b e2                                      add fp, fp, #0x3a00
0081e558  0b b0 85 e0                                      add fp, r5, fp
0081e55c  04 10 50 e0                                      subs r1, r0, r4
0081e560  01 10 a0 13                                      movne r1, #1
0081e564  00 30 8d e5                                      str r3, [sp]
0081e568  0b 00 a0 e1                                      mov r0, fp
0081e56c  08 20 a0 e1                                      mov r2, r8
0081e570  0a 30 a0 e1                                      mov r3, sl
0081e574  37 ff 2f e1                                      blx r7
0081e578  00 00 50 e3                                      cmp r0, #0
0081e57c  01 40 84 e2                                      add r4, r4, #1
0081e580  e8 ff ff 0a                                      beq #0x81e528
0081e584  05 00 a0 e1                                      mov r0, r5
0081e588  33 ff ff eb                                      bl #0x81e25c
0081e58c  20 00 54 e3                                      cmp r4, #0x20
0081e590  5a 6f 86 e2                                      add r6, r6, #0x168
0081e594  e6 ff ff 1a                                      bne #0x81e534
0081e598  0c d0 8d e2                                      add sp, sp, #0xc
0081e59c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0081e7f0, declared_size=492, range_size=492, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLiveC2Eb
; demangled: CMatchingGLLive::CMatchingGLLive(bool)
; decoder-mode: arm
0081e7f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081e7f4  d8 51 9f e5                                      ldr r5, [pc, #0x1d8]
0081e7f8  00 40 a0 e1                                      mov r4, r0
0081e7fc  01 70 a0 e1                                      mov r7, r1
0081e800  0d 86 ff eb                                      bl #0x80003c
0081e804  cc 31 9f e5                                      ldr r3, [pc, #0x1cc]
0081e808  05 50 8f e0                                      add r5, pc, r5
0081e80c  d9 2d a0 e3                                      mov r2, #0x3640
0081e810  03 30 95 e7                                      ldr r3, [r5, r3]
0081e814  00 10 e0 e3                                      mvn r1, #0
0081e818  d9 0d 84 e2                                      add r0, r4, #0x3640
0081e81c  08 30 83 e2                                      add r3, r3, #8
0081e820  02 10 84 e7                                      str r1, [r4, r2]
0081e824  10 00 80 e2                                      add r0, r0, #0x10
0081e828  00 30 84 e5                                      str r3, [r4]
0081e82c  54 ea ff eb                                      bl #0x819184
0081e830  e7 3d 84 e2                                      add r3, r4, #0x39c0
0081e834  28 30 83 e2                                      add r3, r3, #0x28
0081e838  f4 29 03 e3                                      movw r2, #0x39f4
0081e83c  02 30 84 e7                                      str r3, [r4, r2]
0081e840  00 50 a0 e3                                      mov r5, #0
0081e844  ec 29 03 e3                                      movw r2, #0x39ec
0081e848  02 50 84 e7                                      str r5, [r4, r2]
0081e84c  e8 29 03 e3                                      movw r2, #0x39e8
0081e850  02 50 c4 e7                                      strb r5, [r4, r2]
0081e854  f0 29 03 e3                                      movw r2, #0x39f0
0081e858  02 30 84 e7                                      str r3, [r4, r2]
0081e85c  f8 39 03 e3                                      movw r3, #0x39f8
0081e860  03 50 84 e7                                      str r5, [r4, r3]
0081e864  3a 6c 84 e2                                      add r6, r4, #0x3a00
0081e868  05 00 86 e0                                      add r0, r6, r5
0081e86c  5a 5f 85 e2                                      add r5, r5, #0x168
0081e870  82 ff ff eb                                      bl #0x81e680
0081e874  2d 0c 55 e3                                      cmp r5, #0x2d00
0081e878  fa ff ff 1a                                      bne #0x81e868
0081e87c  67 6c 84 e2                                      add r6, r4, #0x6700
0081e880  20 30 86 e2                                      add r3, r6, #0x20
0081e884  2c 27 06 e3                                      movw r2, #0x672c
0081e888  00 50 a0 e3                                      mov r5, #0
0081e88c  02 30 84 e7                                      str r3, [r4, r2]
0081e890  67 2c a0 e3                                      mov r2, #0x6700
0081e894  02 50 84 e7                                      str r5, [r4, r2]
0081e898  04 27 06 e3                                      movw r2, #0x6704
0081e89c  02 50 84 e7                                      str r5, [r4, r2]
0081e8a0  08 27 06 e3                                      movw r2, #0x6708
0081e8a4  02 50 84 e7                                      str r5, [r4, r2]
0081e8a8  0c 27 06 e3                                      movw r2, #0x670c
0081e8ac  02 50 84 e7                                      str r5, [r4, r2]
0081e8b0  24 27 06 e3                                      movw r2, #0x6724
0081e8b4  02 50 84 e7                                      str r5, [r4, r2]
0081e8b8  20 27 06 e3                                      movw r2, #0x6720
0081e8bc  02 50 c4 e7                                      strb r5, [r4, r2]
0081e8c0  28 27 06 e3                                      movw r2, #0x6728
0081e8c4  02 30 84 e7                                      str r3, [r4, r2]
0081e8c8  30 37 06 e3                                      movw r3, #0x6730
0081e8cc  03 50 84 e7                                      str r5, [r4, r3]
0081e8d0  38 00 86 e2                                      add r0, r6, #0x38
0081e8d4  58 ea ff eb                                      bl #0x81923c
0081e8d8  5c 00 86 e2                                      add r0, r6, #0x5c
0081e8dc  ad be ff eb                                      bl #0x80e398
0081e8e0  60 00 86 e2                                      add r0, r6, #0x60
0081e8e4  ab be ff eb                                      bl #0x80e398
0081e8e8  e8 27 06 e3                                      movw r2, #0x67e8
0081e8ec  02 70 c4 e7                                      strb r7, [r4, r2]
0081e8f0  64 27 06 e3                                      movw r2, #0x6764
0081e8f4  02 50 84 e7                                      str r5, [r4, r2]
0081e8f8  e9 27 06 e3                                      movw r2, #0x67e9
0081e8fc  02 50 c4 e7                                      strb r5, [r4, r2]
0081e900  ea 27 06 e3                                      movw r2, #0x67ea
0081e904  02 50 c4 e7                                      strb r5, [r4, r2]
0081e908  eb 27 06 e3                                      movw r2, #0x67eb
0081e90c  02 50 c4 e7                                      strb r5, [r4, r2]
0081e910  ed 27 06 e3                                      movw r2, #0x67ed
0081e914  f0 30 86 e2                                      add r3, r6, #0xf0
0081e918  02 50 c4 e7                                      strb r5, [r4, r2]
0081e91c  1a 6b a0 e3                                      mov r6, #0x6800
0081e920  04 28 06 e3                                      movw r2, #0x6804
0081e924  02 30 84 e7                                      str r3, [r4, r2]
0081e928  10 10 a0 e3                                      mov r1, #0x10
0081e92c  06 30 84 e7                                      str r3, [r4, r6]
0081e930  03 00 a0 e1                                      mov r0, r3
0081e934  50 cb eb eb                                      bl #0x31167c
0081e938  06 30 94 e7                                      ldr r3, [r4, r6]
0081e93c  06 60 84 e0                                      add r6, r4, r6
0081e940  14 00 86 e2                                      add r0, r6, #0x14
0081e944  00 50 c3 e5                                      strb r5, [r3]
0081e948  08 38 06 e3                                      movw r3, #0x6808
0081e94c  03 50 84 e7                                      str r5, [r4, r3]
0081e950  10 38 06 e3                                      movw r3, #0x6810
0081e954  03 50 c4 e7                                      strb r5, [r4, r3]
0081e958  11 38 06 e3                                      movw r3, #0x6811
0081e95c  03 50 c4 e7                                      strb r5, [r4, r3]
0081e960  6f ff ff eb                                      bl #0x81e724
0081e964  20 38 06 e3                                      movw r3, #0x6820
0081e968  03 50 84 e7                                      str r5, [r4, r3]
0081e96c  24 00 86 e2                                      add r0, r6, #0x24
0081e970  83 f8 ff eb                                      bl #0x81cb84
0081e974  30 38 06 e3                                      movw r3, #0x6830
0081e978  03 50 84 e7                                      str r5, [r4, r3]
0081e97c  34 38 06 e3                                      movw r3, #0x6834
0081e980  03 50 84 e7                                      str r5, [r4, r3]
0081e984  38 38 06 e3                                      movw r3, #0x6838
0081e988  03 50 84 e7                                      str r5, [r4, r3]
0081e98c  40 00 86 e2                                      add r0, r6, #0x40
0081e990  fb e9 ff eb                                      bl #0x819184
0081e994  6b 3c 84 e2                                      add r3, r4, #0x6b00
0081e998  d8 30 83 e2                                      add r3, r3, #0xd8
0081e99c  dc 2b 06 e3                                      movw r2, #0x6bdc
0081e9a0  02 30 84 e7                                      str r3, [r4, r2]
0081e9a4  02 2c 06 e3                                      movw r2, #0x6c02
0081e9a8  02 50 c4 e7                                      strb r5, [r4, r2]
0081e9ac  d8 2b 06 e3                                      movw r2, #0x6bd8
0081e9b0  02 30 84 e7                                      str r3, [r4, r2]
0081e9b4  e0 3b 06 e3                                      movw r3, #0x6be0
0081e9b8  03 50 c4 e7                                      strb r5, [r4, r3]
0081e9bc  04 00 a0 e1                                      mov r0, r4
0081e9c0  19 f5 ff eb                                      bl #0x81be2c
0081e9c4  03 30 a0 e3                                      mov r3, #3
0081e9c8  0f 30 c4 e5                                      strb r3, [r4, #0xf]
0081e9cc  04 00 a0 e1                                      mov r0, r4
0081e9d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0081e9d4  88 62 17 00 cc 2e 00 00                          .byte 0x88, 0x62, 0x17, 0x00, 0xcc, 0x2e, 0x00, 0x00

; FUNCTION 0x0081e9dc, declared_size=492, range_size=492, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLiveC1Eb
; demangled: CMatchingGLLive::CMatchingGLLive(bool)
; decoder-mode: arm
0081e9dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081e9e0  d8 51 9f e5                                      ldr r5, [pc, #0x1d8]
0081e9e4  00 40 a0 e1                                      mov r4, r0
0081e9e8  01 70 a0 e1                                      mov r7, r1
0081e9ec  92 85 ff eb                                      bl #0x80003c
0081e9f0  cc 31 9f e5                                      ldr r3, [pc, #0x1cc]
0081e9f4  05 50 8f e0                                      add r5, pc, r5
0081e9f8  d9 2d a0 e3                                      mov r2, #0x3640
0081e9fc  03 30 95 e7                                      ldr r3, [r5, r3]
0081ea00  00 10 e0 e3                                      mvn r1, #0
0081ea04  d9 0d 84 e2                                      add r0, r4, #0x3640
0081ea08  08 30 83 e2                                      add r3, r3, #8
0081ea0c  02 10 84 e7                                      str r1, [r4, r2]
0081ea10  10 00 80 e2                                      add r0, r0, #0x10
0081ea14  00 30 84 e5                                      str r3, [r4]
0081ea18  d9 e9 ff eb                                      bl #0x819184
0081ea1c  e7 3d 84 e2                                      add r3, r4, #0x39c0
0081ea20  28 30 83 e2                                      add r3, r3, #0x28
0081ea24  f4 29 03 e3                                      movw r2, #0x39f4
0081ea28  02 30 84 e7                                      str r3, [r4, r2]
0081ea2c  00 50 a0 e3                                      mov r5, #0
0081ea30  ec 29 03 e3                                      movw r2, #0x39ec
0081ea34  02 50 84 e7                                      str r5, [r4, r2]
0081ea38  e8 29 03 e3                                      movw r2, #0x39e8
0081ea3c  02 50 c4 e7                                      strb r5, [r4, r2]
0081ea40  f0 29 03 e3                                      movw r2, #0x39f0
0081ea44  02 30 84 e7                                      str r3, [r4, r2]
0081ea48  f8 39 03 e3                                      movw r3, #0x39f8
0081ea4c  03 50 84 e7                                      str r5, [r4, r3]
0081ea50  3a 6c 84 e2                                      add r6, r4, #0x3a00
0081ea54  05 00 86 e0                                      add r0, r6, r5
0081ea58  5a 5f 85 e2                                      add r5, r5, #0x168
0081ea5c  07 ff ff eb                                      bl #0x81e680
0081ea60  2d 0c 55 e3                                      cmp r5, #0x2d00
0081ea64  fa ff ff 1a                                      bne #0x81ea54
0081ea68  67 6c 84 e2                                      add r6, r4, #0x6700
0081ea6c  20 30 86 e2                                      add r3, r6, #0x20
0081ea70  2c 27 06 e3                                      movw r2, #0x672c
0081ea74  00 50 a0 e3                                      mov r5, #0
0081ea78  02 30 84 e7                                      str r3, [r4, r2]
0081ea7c  67 2c a0 e3                                      mov r2, #0x6700
0081ea80  02 50 84 e7                                      str r5, [r4, r2]
0081ea84  04 27 06 e3                                      movw r2, #0x6704
0081ea88  02 50 84 e7                                      str r5, [r4, r2]
0081ea8c  08 27 06 e3                                      movw r2, #0x6708
0081ea90  02 50 84 e7                                      str r5, [r4, r2]
0081ea94  0c 27 06 e3                                      movw r2, #0x670c
0081ea98  02 50 84 e7                                      str r5, [r4, r2]
0081ea9c  24 27 06 e3                                      movw r2, #0x6724
0081eaa0  02 50 84 e7                                      str r5, [r4, r2]
0081eaa4  20 27 06 e3                                      movw r2, #0x6720
0081eaa8  02 50 c4 e7                                      strb r5, [r4, r2]
0081eaac  28 27 06 e3                                      movw r2, #0x6728
0081eab0  02 30 84 e7                                      str r3, [r4, r2]
0081eab4  30 37 06 e3                                      movw r3, #0x6730
0081eab8  03 50 84 e7                                      str r5, [r4, r3]
0081eabc  38 00 86 e2                                      add r0, r6, #0x38
0081eac0  dd e9 ff eb                                      bl #0x81923c
0081eac4  5c 00 86 e2                                      add r0, r6, #0x5c
0081eac8  32 be ff eb                                      bl #0x80e398
0081eacc  60 00 86 e2                                      add r0, r6, #0x60
0081ead0  30 be ff eb                                      bl #0x80e398
0081ead4  e8 27 06 e3                                      movw r2, #0x67e8
0081ead8  02 70 c4 e7                                      strb r7, [r4, r2]
0081eadc  64 27 06 e3                                      movw r2, #0x6764
0081eae0  02 50 84 e7                                      str r5, [r4, r2]
0081eae4  e9 27 06 e3                                      movw r2, #0x67e9
0081eae8  02 50 c4 e7                                      strb r5, [r4, r2]
0081eaec  ea 27 06 e3                                      movw r2, #0x67ea
0081eaf0  02 50 c4 e7                                      strb r5, [r4, r2]
0081eaf4  eb 27 06 e3                                      movw r2, #0x67eb
0081eaf8  02 50 c4 e7                                      strb r5, [r4, r2]
0081eafc  ed 27 06 e3                                      movw r2, #0x67ed
0081eb00  f0 30 86 e2                                      add r3, r6, #0xf0
0081eb04  02 50 c4 e7                                      strb r5, [r4, r2]
0081eb08  1a 6b a0 e3                                      mov r6, #0x6800
0081eb0c  04 28 06 e3                                      movw r2, #0x6804
0081eb10  02 30 84 e7                                      str r3, [r4, r2]
0081eb14  10 10 a0 e3                                      mov r1, #0x10
0081eb18  06 30 84 e7                                      str r3, [r4, r6]
0081eb1c  03 00 a0 e1                                      mov r0, r3
0081eb20  d5 ca eb eb                                      bl #0x31167c
0081eb24  06 30 94 e7                                      ldr r3, [r4, r6]
0081eb28  06 60 84 e0                                      add r6, r4, r6
0081eb2c  14 00 86 e2                                      add r0, r6, #0x14
0081eb30  00 50 c3 e5                                      strb r5, [r3]
0081eb34  08 38 06 e3                                      movw r3, #0x6808
0081eb38  03 50 84 e7                                      str r5, [r4, r3]
0081eb3c  10 38 06 e3                                      movw r3, #0x6810
0081eb40  03 50 c4 e7                                      strb r5, [r4, r3]
0081eb44  11 38 06 e3                                      movw r3, #0x6811
0081eb48  03 50 c4 e7                                      strb r5, [r4, r3]
0081eb4c  f4 fe ff eb                                      bl #0x81e724
0081eb50  20 38 06 e3                                      movw r3, #0x6820
0081eb54  03 50 84 e7                                      str r5, [r4, r3]
0081eb58  24 00 86 e2                                      add r0, r6, #0x24
0081eb5c  08 f8 ff eb                                      bl #0x81cb84
0081eb60  30 38 06 e3                                      movw r3, #0x6830
0081eb64  03 50 84 e7                                      str r5, [r4, r3]
0081eb68  34 38 06 e3                                      movw r3, #0x6834
0081eb6c  03 50 84 e7                                      str r5, [r4, r3]
0081eb70  38 38 06 e3                                      movw r3, #0x6838
0081eb74  03 50 84 e7                                      str r5, [r4, r3]
0081eb78  40 00 86 e2                                      add r0, r6, #0x40
0081eb7c  80 e9 ff eb                                      bl #0x819184
0081eb80  6b 3c 84 e2                                      add r3, r4, #0x6b00
0081eb84  d8 30 83 e2                                      add r3, r3, #0xd8
0081eb88  dc 2b 06 e3                                      movw r2, #0x6bdc
0081eb8c  02 30 84 e7                                      str r3, [r4, r2]
0081eb90  02 2c 06 e3                                      movw r2, #0x6c02
0081eb94  02 50 c4 e7                                      strb r5, [r4, r2]
0081eb98  d8 2b 06 e3                                      movw r2, #0x6bd8
0081eb9c  02 30 84 e7                                      str r3, [r4, r2]
0081eba0  e0 3b 06 e3                                      movw r3, #0x6be0
0081eba4  03 50 c4 e7                                      strb r5, [r4, r3]
0081eba8  04 00 a0 e1                                      mov r0, r4
0081ebac  9e f4 ff eb                                      bl #0x81be2c
0081ebb0  03 30 a0 e3                                      mov r3, #3
0081ebb4  0f 30 c4 e5                                      strb r3, [r4, #0xf]
0081ebb8  04 00 a0 e1                                      mov r0, r4
0081ebbc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0081ebc0  9c 60 17 00 cc 2e 00 00                          .byte 0x9c, 0x60, 0x17, 0x00, 0xcc, 0x2e, 0x00, 0x00

; FUNCTION 0x0081ec5c, declared_size=336, range_size=336, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive14GetFriendsListEb
; demangled: CMatchingGLLive::GetFriendsList(bool)
; decoder-mode: arm
0081ec5c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081ec60  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
0081ec64  3c c1 9f e5                                      ldr ip, [pc, #0x13c]
0081ec68  9c d0 4d e2                                      sub sp, sp, #0x9c
0081ec6c  03 30 8f e0                                      add r3, pc, r3
0081ec70  08 30 8d e5                                      str r3, [sp, #8]
0081ec74  0c 30 93 e7                                      ldr r3, [r3, ip]
0081ec78  00 40 a0 e3                                      mov r4, #0
0081ec7c  0c c0 8d e5                                      str ip, [sp, #0xc]
0081ec80  01 50 a0 e1                                      mov r5, r1
0081ec84  00 10 93 e5                                      ldr r1, [r3]
0081ec88  00 40 80 e5                                      str r4, [r0]
0081ec8c  04 40 80 e5                                      str r4, [r0, #4]
0081ec90  08 40 80 e5                                      str r4, [r0, #8]
0081ec94  04 37 06 e3                                      movw r3, #0x6704
0081ec98  03 30 95 e7                                      ldr r3, [r5, r3]
0081ec9c  94 10 8d e5                                      str r1, [sp, #0x94]
0081eca0  00 a0 a0 e1                                      mov sl, r0
0081eca4  04 30 d3 e5                                      ldrb r3, [r3, #4]
0081eca8  02 90 a0 e1                                      mov sb, r2
0081ecac  04 00 53 e1                                      cmp r3, r4
0081ecb0  30 00 00 0a                                      beq #0x81ed78
0081ecb4  14 70 8d e2                                      add r7, sp, #0x14
0081ecb8  04 00 87 e2                                      add r0, r7, #4
0081ecbc  67 6c a0 e3                                      mov r6, #0x6700
0081ecc0  7c 80 8d e2                                      add r8, sp, #0x7c
0081ecc4  10 b0 8d e2                                      add fp, sp, #0x10
0081ecc8  04 00 8d e5                                      str r0, [sp, #4]
0081eccc  25 00 00 ea                                      b #0x81ed68
0081ecd0  07 00 a0 e1                                      mov r0, r7
0081ecd4  bb ff ff eb                                      bl #0x81ebc8
0081ecd8  68 20 a0 e3                                      mov r2, #0x68
0081ecdc  00 10 a0 e3                                      mov r1, #0
0081ece0  07 00 a0 e1                                      mov r0, r7
0081ece4  dd bd eb eb                                      bl #0x30e460
0081ece8  04 10 a0 e1                                      mov r1, r4
0081ecec  06 00 95 e7                                      ldr r0, [r5, r6]
0081ecf0  41 33 00 eb                                      bl #0x82b9fc
0081ecf4  e6 bc eb eb                                      bl #0x30e094
0081ecf8  14 00 8d e5                                      str r0, [sp, #0x14]
0081ecfc  04 10 a0 e1                                      mov r1, r4
0081ed00  06 00 95 e7                                      ldr r0, [r5, r6]
0081ed04  48 33 00 eb                                      bl #0x82ba2c
0081ed08  0b 20 a0 e1                                      mov r2, fp
0081ed0c  00 10 a0 e1                                      mov r1, r0
0081ed10  08 00 a0 e1                                      mov r0, r8
0081ed14  f4 d4 eb eb                                      bl #0x3140ec
0081ed18  90 10 9d e5                                      ldr r1, [sp, #0x90]
0081ed1c  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
0081ed20  04 00 9d e5                                      ldr r0, [sp, #4]
0081ed24  2d c7 eb eb                                      bl #0x3109e0
0081ed28  08 00 a0 e1                                      mov r0, r8
0081ed2c  48 e5 eb eb                                      bl #0x318254
0081ed30  06 00 95 e7                                      ldr r0, [r5, r6]
0081ed34  04 10 a0 e1                                      mov r1, r4
0081ed38  7a 33 00 eb                                      bl #0x82bb28
0081ed3c  00 00 59 e3                                      cmp sb, #0
0081ed40  30 00 8d e5                                      str r0, [sp, #0x30]
0081ed44  01 00 00 0a                                      beq #0x81ed50
0081ed48  03 00 50 e3                                      cmp r0, #3
0081ed4c  02 00 00 0a                                      beq #0x81ed5c
0081ed50  0a 00 a0 e1                                      mov r0, sl
0081ed54  07 10 a0 e1                                      mov r1, r7
0081ed58  c4 fc ff eb                                      bl #0x81e070
0081ed5c  07 00 a0 e1                                      mov r0, r7
0081ed60  2c f8 ff eb                                      bl #0x81ce18
0081ed64  01 40 84 e2                                      add r4, r4, #1
0081ed68  06 00 95 e7                                      ldr r0, [r5, r6]
0081ed6c  20 33 00 eb                                      bl #0x82b9f4
0081ed70  00 00 54 e1                                      cmp r4, r0
0081ed74  d5 ff ff ba                                      blt #0x81ecd0
0081ed78  08 20 9d e5                                      ldr r2, [sp, #8]
0081ed7c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0081ed80  0a 00 a0 e1                                      mov r0, sl
0081ed84  01 30 92 e7                                      ldr r3, [r2, r1]
0081ed88  94 20 9d e5                                      ldr r2, [sp, #0x94]
0081ed8c  00 30 93 e5                                      ldr r3, [r3]
0081ed90  03 00 52 e1                                      cmp r2, r3
0081ed94  01 00 00 1a                                      bne #0x81eda0
0081ed98  9c d0 8d e2                                      add sp, sp, #0x9c
0081ed9c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081eda0  5a bd eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081eda4  24 5e 17 00 ac 40 00 00                          .byte 0x24, 0x5e, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0081ee10, declared_size=92, range_size=92, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive19AddFriendInGameListE12GLFriendInfo
; demangled: CMatchingGLLive::AddFriendInGameList(GLFriendInfo)
; decoder-mode: arm
0081ee10  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081ee14  10 d0 4d e2                                      sub sp, sp, #0x10
0081ee18  04 c0 8d e2                                      add ip, sp, #4
0081ee1c  0e 00 8c e8                                      stm ip, {r1, r2, r3}
0081ee20  6b 4c 80 e2                                      add r4, r0, #0x6b00
0081ee24  d8 40 84 e2                                      add r4, r4, #0xd8
0081ee28  00 50 a0 e1                                      mov r5, r0
0081ee2c  04 00 a0 e1                                      mov r0, r4
0081ee30  01 60 a0 e1                                      mov r6, r1
0081ee34  08 70 9d e5                                      ldr r7, [sp, #8]
0081ee38  0c 80 9d e5                                      ldr r8, [sp, #0xc]
0081ee3c  eb ff ff eb                                      bl #0x81edf0
0081ee40  dc 3b 06 e3                                      movw r3, #0x6bdc
0081ee44  10 80 80 e5                                      str r8, [r0, #0x10]
0081ee48  0c 70 80 e5                                      str r7, [r0, #0xc]
0081ee4c  08 60 80 e5                                      str r6, [r0, #8]
0081ee50  03 20 95 e7                                      ldr r2, [r5, r3]
0081ee54  00 40 80 e5                                      str r4, [r0]
0081ee58  04 20 80 e5                                      str r2, [r0, #4]
0081ee5c  00 00 82 e5                                      str r0, [r2]
0081ee60  03 00 85 e7                                      str r0, [r5, r3]
0081ee64  10 d0 8d e2                                      add sp, sp, #0x10
0081ee68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0081ee6c, declared_size=112, range_size=112, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive16GetGLFriendsListEv
; demangled: CMatchingGLLive::GetGLFriendsList()
; decoder-mode: arm
0081ee6c  70 40 2d e9                                      push {r4, r5, r6, lr}
0081ee70  00 40 a0 e1                                      mov r4, r0
0081ee74  00 00 84 e5                                      str r0, [r4]
0081ee78  04 00 84 e5                                      str r0, [r4, #4]
0081ee7c  d8 3b 06 e3                                      movw r3, #0x6bd8
0081ee80  03 50 91 e7                                      ldr r5, [r1, r3]
0081ee84  6b 6c 81 e2                                      add r6, r1, #0x6b00
0081ee88  d8 60 86 e2                                      add r6, r6, #0xd8
0081ee8c  06 00 55 e1                                      cmp r5, r6
0081ee90  0f 00 00 0a                                      beq #0x81eed4
0081ee94  04 00 a0 e1                                      mov r0, r4
0081ee98  d4 ff ff eb                                      bl #0x81edf0
0081ee9c  08 30 95 e5                                      ldr r3, [r5, #8]
0081eea0  08 30 80 e5                                      str r3, [r0, #8]
0081eea4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0081eea8  0c 30 80 e5                                      str r3, [r0, #0xc]
0081eeac  10 30 95 e5                                      ldr r3, [r5, #0x10]
0081eeb0  10 30 80 e5                                      str r3, [r0, #0x10]
0081eeb4  04 30 94 e5                                      ldr r3, [r4, #4]
0081eeb8  00 40 80 e5                                      str r4, [r0]
0081eebc  04 30 80 e5                                      str r3, [r0, #4]
0081eec0  00 00 83 e5                                      str r0, [r3]
0081eec4  04 00 84 e5                                      str r0, [r4, #4]
0081eec8  00 50 95 e5                                      ldr r5, [r5]
0081eecc  05 00 56 e1                                      cmp r6, r5
0081eed0  ef ff ff 1a                                      bne #0x81ee94
0081eed4  04 00 a0 e1                                      mov r0, r4
0081eed8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081ef7c, declared_size=208, range_size=208, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive19GetGLXPlayerMPLobbyEv
; demangled: CMatchingGLLive::GetGLXPlayerMPLobby()
; decoder-mode: arm
0081ef7c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0081ef80  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
0081ef84  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0081ef88  b0 50 9f e5                                      ldr r5, [pc, #0xb0]
0081ef8c  04 40 8f e0                                      add r4, pc, r4
0081ef90  03 60 94 e7                                      ldr r6, [r4, r3]
0081ef94  05 30 94 e7                                      ldr r3, [r4, r5]
0081ef98  95 df 4d e2                                      sub sp, sp, #0x254
0081ef9c  00 00 96 e5                                      ldr r0, [r6]
0081efa0  00 30 93 e5                                      ldr r3, [r3]
0081efa4  00 00 50 e3                                      cmp r0, #0
0081efa8  4c 32 8d e5                                      str r3, [sp, #0x24c]
0081efac  06 00 00 0a                                      beq #0x81efcc
0081efb0  05 30 94 e7                                      ldr r3, [r4, r5]
0081efb4  4c 22 9d e5                                      ldr r2, [sp, #0x24c]
0081efb8  00 30 93 e5                                      ldr r3, [r3]
0081efbc  03 00 52 e1                                      cmp r2, r3
0081efc0  1b 00 00 1a                                      bne #0x81f034
0081efc4  95 df 8d e2                                      add sp, sp, #0x254
0081efc8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0081efcc  71 f5 ff eb                                      bl #0x81c598
0081efd0  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0081efd4  4c 80 8d e2                                      add r8, sp, #0x4c
0081efd8  06 20 80 e2                                      add r2, r0, #6
0081efdc  01 10 8f e0                                      add r1, pc, r1
0081efe0  08 00 a0 e1                                      mov r0, r8
0081efe4  be be eb eb                                      bl #0x30eae4
0081efe8  08 f5 ff eb                                      bl #0x81c410
0081efec  00 10 a0 e1                                      mov r1, r0
0081eff0  0d 00 a0 e1                                      mov r0, sp
0081eff4  b8 ff ff eb                                      bl #0x81eedc
0081eff8  02 10 a0 e3                                      mov r1, #2
0081effc  94 00 a0 e3                                      mov r0, #0x94
0081f000  5a c5 eb eb                                      bl #0x310570
0081f004  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0081f008  00 a0 a0 e1                                      mov sl, r0
0081f00c  08 20 a0 e1                                      mov r2, r8
0081f010  03 30 94 e7                                      ldr r3, [r4, r3]
0081f014  0d 70 a0 e1                                      mov r7, sp
0081f018  00 10 93 e5                                      ldr r1, [r3]
0081f01c  8a 6d 00 eb                                      bl #0x83a64c
0081f020  0d 00 a0 e1                                      mov r0, sp
0081f024  00 a0 86 e5                                      str sl, [r6]
0081f028  aa 0b 00 eb                                      bl #0x821ed8
0081f02c  00 00 96 e5                                      ldr r0, [r6]
0081f030  de ff ff ea                                      b #0x81efb0
0081f034  b5 bc eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081f038  04 5b 17 00 dc 35 00 00 ac 40 00 00 5c d3 0e 00  .byte 0x04, 0x5b, 0x17, 0x00, 0xdc, 0x35, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x5c, 0xd3, 0x0e, 0x00
0081f048  cc 10 00 00                                      .byte 0xcc, 0x10, 0x00, 0x00

; FUNCTION 0x0081f04c, declared_size=220, range_size=220, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive14SetPlayerParamESsb
; demangled: CMatchingGLLive::SetPlayerParam(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, bool)
; decoder-mode: arm
0081f04c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081f050  c8 40 9f e5                                      ldr r4, [pc, #0xc8]
0081f054  c8 60 9f e5                                      ldr r6, [pc, #0xc8]
0081f058  10 30 91 e5                                      ldr r3, [r1, #0x10]
0081f05c  04 40 8f e0                                      add r4, pc, r4
0081f060  06 c0 94 e7                                      ldr ip, [r4, r6]
0081f064  01 50 a0 e1                                      mov r5, r1
0081f068  14 10 91 e5                                      ldr r1, [r1, #0x14]
0081f06c  00 c0 9c e5                                      ldr ip, [ip]
0081f070  a0 d0 4d e2                                      sub sp, sp, #0xa0
0081f074  03 70 61 e0                                      rsb r7, r1, r3
0081f078  80 00 57 e3                                      cmp r7, #0x80
0081f07c  9c c0 8d e5                                      str ip, [sp, #0x9c]
0081f080  02 70 a0 e1                                      mov r7, r2
0081f084  06 00 00 9a                                      bls #0x81f0a4
0081f088  06 30 94 e7                                      ldr r3, [r4, r6]
0081f08c  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
0081f090  00 30 93 e5                                      ldr r3, [r3]
0081f094  03 00 52 e1                                      cmp r2, r3
0081f098  1f 00 00 1a                                      bne #0x81f11c
0081f09c  a0 d0 8d e2                                      add sp, sp, #0xa0
0081f0a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081f0a4  67 0c 80 e2                                      add r0, r0, #0x6700
0081f0a8  f0 00 80 e2                                      add r0, r0, #0xf0
0081f0ac  00 00 55 e1                                      cmp r5, r0
0081f0b0  01 00 00 0a                                      beq #0x81f0bc
0081f0b4  03 20 a0 e1                                      mov r2, r3
0081f0b8  48 c6 eb eb                                      bl #0x3109e0
0081f0bc  00 00 57 e3                                      cmp r7, #0
0081f0c0  f0 ff ff 0a                                      beq #0x81f088
0081f0c4  04 70 8d e2                                      add r7, sp, #4
0081f0c8  14 10 95 e5                                      ldr r1, [r5, #0x14]
0081f0cc  07 00 a0 e1                                      mov r0, r7
0081f0d0  12 bd eb eb                                      bl #0x30e520
0081f0d4  a8 ff ff eb                                      bl #0x81ef7c
0081f0d8  14 30 95 e5                                      ldr r3, [r5, #0x14]
0081f0dc  10 20 95 e5                                      ldr r2, [r5, #0x10]
0081f0e0  07 10 a0 e1                                      mov r1, r7
0081f0e4  84 70 8d e2                                      add r7, sp, #0x84
0081f0e8  02 20 63 e0                                      rsb r2, r3, r2
0081f0ec  07 64 00 eb                                      bl #0x838110
0081f0f0  c6 f4 ff eb                                      bl #0x81c410
0081f0f4  05 10 a0 e1                                      mov r1, r5
0081f0f8  00 80 a0 e1                                      mov r8, r0
0081f0fc  07 00 a0 e1                                      mov r0, r7
0081f100  04 32 ec eb                                      bl #0x32b918
0081f104  08 00 a0 e1                                      mov r0, r8
0081f108  07 10 a0 e1                                      mov r1, r7
0081f10c  49 0d 00 eb                                      bl #0x822638
0081f110  07 00 a0 e1                                      mov r0, r7
0081f114  4e e4 eb eb                                      bl #0x318254
0081f118  da ff ff ea                                      b #0x81f088
0081f11c  7b bc eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081f120  34 5a 17 00 ac 40 00 00                          .byte 0x34, 0x5a, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0081f128, declared_size=80, range_size=80, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive9StartGameEv
; demangled: CMatchingGLLive::StartGame()
; decoder-mode: arm
0081f128  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0081f12c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0081f130  10 40 2d e9                                      push {r4, lr}
0081f134  03 30 8f e0                                      add r3, pc, r3
0081f138  02 20 93 e7                                      ldr r2, [r3, r2]
0081f13c  00 20 d2 e5                                      ldrb r2, [r2]
0081f140  00 00 52 e3                                      cmp r2, #0
0081f144  00 00 00 0a                                      beq #0x81f14c
0081f148  10 80 bd e8                                      pop {r4, pc}
0081f14c  20 00 9f e5                                      ldr r0, [pc, #0x20]
0081f150  0b 10 a0 e3                                      mov r1, #0xb
0081f154  00 00 93 e7                                      ldr r0, [r3, r0]
0081f158  02 30 a0 e1                                      mov r3, r2
0081f15c  28 7c ff eb                                      bl #0x7fe204
0081f160  85 ff ff eb                                      bl #0x81ef7c
0081f164  10 40 bd e8                                      pop {r4, lr}
0081f168  7a 64 00 ea                                      b #0x838358
; mapping-symbol data/literal pool
0081f16c  5c 59 17 00 74 06 00 00 ac 35 00 00              .byte 0x5c, 0x59, 0x17, 0x00, 0x74, 0x06, 0x00, 0x00, 0xac, 0x35, 0x00, 0x00

; FUNCTION 0x0081f178, declared_size=236, range_size=236, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive10SetGCStateEi
; demangled: CMatchingGLLive::SetGCState(int)
; decoder-mode: arm
0081f178  30 40 2d e9                                      push {r4, r5, lr}
0081f17c  e8 37 06 e3                                      movw r3, #0x67e8
0081f180  03 20 d0 e7                                      ldrb r2, [r0, r3]
0081f184  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
0081f188  e7 df 4d e2                                      sub sp, sp, #0x39c
0081f18c  00 00 52 e3                                      cmp r2, #0
0081f190  00 50 a0 e1                                      mov r5, r0
0081f194  03 30 8f e0                                      add r3, pc, r3
0081f198  11 00 00 0a                                      beq #0x81f1e4
0081f19c  38 28 06 e3                                      movw r2, #0x6838
0081f1a0  02 00 90 e7                                      ldr r0, [r0, r2]
0081f1a4  01 00 50 e1                                      cmp r0, r1
0081f1a8  0d 00 00 0a                                      beq #0x81f1e4
0081f1ac  01 00 41 e2                                      sub r0, r1, #1
0081f1b0  02 10 85 e7                                      str r1, [r5, r2]
0081f1b4  06 00 50 e3                                      cmp r0, #6
0081f1b8  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
0081f1bc  08 00 00 ea                                      b #0x81f1e4
0081f1c0  1e 00 00 ea                                      b #0x81f240
0081f1c4  14 00 00 ea                                      b #0x81f21c
0081f1c8  07 00 00 ea                                      b #0x81f1ec
0081f1cc  04 00 00 ea                                      b #0x81f1e4
0081f1d0  03 00 00 ea                                      b #0x81f1e4
0081f1d4  02 00 00 ea                                      b #0x81f1e4
0081f1d8  ff ff ff ea                                      b #0x81f1dc
0081f1dc  05 00 a0 e1                                      mov r0, r5
0081f1e0  d0 ff ff eb                                      bl #0x81f128
0081f1e4  e7 df 8d e2                                      add sp, sp, #0x39c
0081f1e8  30 80 bd e8                                      pop {r4, r5, pc}
0081f1ec  1a 1b 85 e2                                      add r1, r5, #0x6800
0081f1f0  40 10 81 e2                                      add r1, r1, #0x40
0081f1f4  0d 00 a0 e1                                      mov r0, sp
0081f1f8  94 e7 ff eb                                      bl #0x819050
0081f1fc  05 00 a0 e1                                      mov r0, r5
0081f200  01 10 a0 e3                                      mov r1, #1
0081f204  0d 20 a0 e1                                      mov r2, sp
0081f208  50 80 ff eb                                      bl #0x7ff350
0081f20c  0d 00 a0 e1                                      mov r0, sp
0081f210  0d 40 a0 e1                                      mov r4, sp
0081f214  7e e6 ff eb                                      bl #0x818c14
0081f218  f1 ff ff ea                                      b #0x81f1e4
0081f21c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0081f220  05 00 a0 e1                                      mov r0, r5
0081f224  02 30 93 e7                                      ldr r3, [r3, r2]
0081f228  00 30 d3 e5                                      ldrb r3, [r3]
0081f22c  00 00 53 e3                                      cmp r3, #0
0081f230  03 10 a0 13                                      movne r1, #3
0081f234  04 10 a0 03                                      moveq r1, #4
0081f238  ce ff ff eb                                      bl #0x81f178
0081f23c  e8 ff ff ea                                      b #0x81f1e4
0081f240  19 ed ff eb                                      bl #0x81a6ac
0081f244  00 20 a0 e3                                      mov r2, #0
0081f248  2c 00 80 e2                                      add r0, r0, #0x2c
0081f24c  01 10 a0 e3                                      mov r1, #1
0081f250  02 30 a0 e1                                      mov r3, r2
0081f254  ea 7b ff eb                                      bl #0x7fe204
0081f258  e1 ff ff ea                                      b #0x81f1e4
; mapping-symbol data/literal pool
0081f25c  fc 58 17 00 94 0d 00 00                          .byte 0xfc, 0x58, 0x17, 0x00, 0x94, 0x0d, 0x00, 0x00

; FUNCTION 0x0081f264, declared_size=488, range_size=488, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive10InitializeEi
; demangled: CMatchingGLLive::Initialize(int)
; decoder-mode: arm
0081f264  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0081f268  bc 41 9f e5                                      ldr r4, [pc, #0x1bc]
0081f26c  bc 61 9f e5                                      ldr r6, [pc, #0x1bc]
0081f270  00 50 a0 e1                                      mov r5, r0
0081f274  04 40 8f e0                                      add r4, pc, r4
0081f278  06 30 94 e7                                      ldr r3, [r4, r6]
0081f27c  9c d0 4d e2                                      sub sp, sp, #0x9c
0081f280  00 30 93 e5                                      ldr r3, [r3]
0081f284  94 30 8d e5                                      str r3, [sp, #0x94]
0081f288  73 81 ff eb                                      bl #0x7ff85c
0081f28c  0c 30 d5 e5                                      ldrb r3, [r5, #0xc]
0081f290  00 00 53 e3                                      cmp r3, #0
0081f294  00 50 a0 13                                      movne r5, #0
0081f298  07 00 00 0a                                      beq #0x81f2bc
0081f29c  06 30 94 e7                                      ldr r3, [r4, r6]
0081f2a0  94 20 9d e5                                      ldr r2, [sp, #0x94]
0081f2a4  05 00 a0 e1                                      mov r0, r5
0081f2a8  00 30 93 e5                                      ldr r3, [r3]
0081f2ac  03 00 52 e1                                      cmp r2, r3
0081f2b0  5c 00 00 1a                                      bne #0x81f428
0081f2b4  9c d0 8d e2                                      add sp, sp, #0x9c
0081f2b8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0081f2bc  70 21 9f e5                                      ldr r2, [pc, #0x170]
0081f2c0  02 10 a0 e3                                      mov r1, #2
0081f2c4  44 00 a0 e3                                      mov r0, #0x44
0081f2c8  02 20 94 e7                                      ldr r2, [r4, r2]
0081f2cc  04 30 8d e5                                      str r3, [sp, #4]
0081f2d0  10 87 06 e3                                      movw r8, #0x6710
0081f2d4  14 a0 92 e5                                      ldr sl, [r2, #0x14]
0081f2d8  a4 c4 eb eb                                      bl #0x310570
0081f2dc  0a 10 a0 e1                                      mov r1, sl
0081f2e0  00 70 a0 e1                                      mov r7, r0
0081f2e4  6b 3d 00 eb                                      bl #0x82e898
0081f2e8  08 70 85 e7                                      str r7, [r5, r8]
0081f2ec  a9 f4 ff eb                                      bl #0x81c598
0081f2f0  40 31 9f e5                                      ldr r3, [pc, #0x140]
0081f2f4  00 70 a0 e1                                      mov r7, r0
0081f2f8  06 10 80 e2                                      add r1, r0, #6
0081f2fc  03 30 94 e7                                      ldr r3, [r4, r3]
0081f300  80 20 a0 e3                                      mov r2, #0x80
0081f304  0e 00 8d e2                                      add r0, sp, #0xe
0081f308  08 30 83 e2                                      add r3, r3, #8
0081f30c  08 30 8d e5                                      str r3, [sp, #8]
0081f310  04 30 d7 e5                                      ldrb r3, [r7, #4]
0081f314  0c 30 cd e5                                      strb r3, [sp, #0xc]
0081f318  05 30 d7 e5                                      ldrb r3, [r7, #5]
0081f31c  0d 30 cd e5                                      strb r3, [sp, #0xd]
0081f320  50 bd eb eb                                      bl #0x30e868
0081f324  10 31 9f e5                                      ldr r3, [pc, #0x110]
0081f328  88 20 97 e5                                      ldr r2, [r7, #0x88]
0081f32c  08 00 95 e7                                      ldr r0, [r5, r8]
0081f330  03 30 94 e7                                      ldr r3, [r4, r3]
0081f334  90 20 8d e5                                      str r2, [sp, #0x90]
0081f338  00 10 93 e5                                      ldr r1, [r3]
0081f33c  6d 36 00 eb                                      bl #0x82ccf8
0081f340  02 10 a0 e3                                      mov r1, #2
0081f344  13 0e a0 e3                                      mov r0, #0x130
0081f348  88 c4 eb eb                                      bl #0x310570
0081f34c  00 70 a0 e1                                      mov r7, r0
0081f350  ff 80 00 eb                                      bl #0x83f754
0081f354  18 37 06 e3                                      movw r3, #0x6718
0081f358  03 70 85 e7                                      str r7, [r5, r3]
0081f35c  02 10 a0 e3                                      mov r1, #2
0081f360  40 00 a0 e3                                      mov r0, #0x40
0081f364  81 c4 eb eb                                      bl #0x310570
0081f368  00 70 a0 e1                                      mov r7, r0
0081f36c  b2 5e 00 eb                                      bl #0x836e3c
0081f370  08 38 06 e3                                      movw r3, #0x6808
0081f374  03 70 85 e7                                      str r7, [r5, r3]
0081f378  08 00 95 e7                                      ldr r0, [r5, r8]
0081f37c  04 10 8d e2                                      add r1, sp, #4
0081f380  c9 3d 00 eb                                      bl #0x82eaac
0081f384  04 70 9d e5                                      ldr r7, [sp, #4]
0081f388  01 00 57 e3                                      cmp r7, #1
0081f38c  1b 00 00 0a                                      beq #0x81f400
0081f390  01 00 77 e3                                      cmn r7, #1
0081f394  1f 00 00 0a                                      beq #0x81f418
0081f398  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
0081f39c  02 00 a0 e3                                      mov r0, #2
0081f3a0  00 10 a0 e1                                      mov r1, r0
0081f3a4  03 70 94 e7                                      ldr r7, [r4, r3]
0081f3a8  07 20 a0 e1                                      mov r2, r7
0081f3ac  f9 72 ff eb                                      bl #0x7fbf98
0081f3b0  07 20 a0 e1                                      mov r2, r7
0081f3b4  01 10 a0 e3                                      mov r1, #1
0081f3b8  03 00 a0 e3                                      mov r0, #3
0081f3bc  f5 72 ff eb                                      bl #0x7fbf98
0081f3c0  07 20 a0 e1                                      mov r2, r7
0081f3c4  00 10 a0 e3                                      mov r1, #0
0081f3c8  09 00 a0 e3                                      mov r0, #9
0081f3cc  f1 72 ff eb                                      bl #0x7fbf98
0081f3d0  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0081f3d4  01 10 a0 e3                                      mov r1, #1
0081f3d8  04 00 a0 e3                                      mov r0, #4
0081f3dc  03 20 94 e7                                      ldr r2, [r4, r3]
0081f3e0  dd 72 ff eb                                      bl #0x7fbf5c
0081f3e4  01 20 a0 e3                                      mov r2, #1
0081f3e8  44 36 03 e3                                      movw r3, #0x3644
0081f3ec  03 20 85 e7                                      str r2, [r5, r3]
0081f3f0  08 00 8d e2                                      add r0, sp, #8
0081f3f4  04 50 9d e5                                      ldr r5, [sp, #4]
0081f3f8  6d 15 00 eb                                      bl #0x8249b4
0081f3fc  a6 ff ff ea                                      b #0x81f29c
0081f400  64 f4 ff eb                                      bl #0x81c598
0081f404  07 10 a0 e1                                      mov r1, r7
0081f408  04 70 c0 e5                                      strb r7, [r0, #4]
0081f40c  05 00 a0 e1                                      mov r0, r5
0081f410  58 ff ff eb                                      bl #0x81f178
0081f414  df ff ff ea                                      b #0x81f398
0081f418  28 00 9f e5                                      ldr r0, [pc, #0x28]
0081f41c  00 00 8f e0                                      add r0, pc, r0
0081f420  d7 30 00 eb                                      bl #0x82b784
0081f424  db ff ff ea                                      b #0x81f398
0081f428  b8 bb eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081f42c  1c 58 17 00 ac 40 00 00 5c 20 00 00 20 13 00 00  .byte 0x1c, 0x58, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x5c, 0x20, 0x00, 0x00, 0x20, 0x13, 0x00, 0x00
0081f43c  04 07 00 00 9c 12 00 00 5c 41 00 00 2c cf 0e 00  .byte 0x04, 0x07, 0x00, 0x00, 0x9c, 0x12, 0x00, 0x00, 0x5c, 0x41, 0x00, 0x00, 0x2c, 0xcf, 0x0e, 0x00

; FUNCTION 0x0081f44c, declared_size=24, range_size=24, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive19SendSetPlayerStatusEc
; demangled: CMatchingGLLive::SendSetPlayerStatus(char)
; decoder-mode: arm
0081f44c  10 40 2d e9                                      push {r4, lr}
0081f450  01 40 a0 e1                                      mov r4, r1
0081f454  c8 fe ff eb                                      bl #0x81ef7c
0081f458  74 10 ef e6                                      uxtb r1, r4
0081f45c  10 40 bd e8                                      pop {r4, lr}
0081f460  98 63 00 ea                                      b #0x8382c8

; FUNCTION 0x0081f464, declared_size=36, range_size=36, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive9LeaveRoomEv
; demangled: CMatchingGLLive::LeaveRoom()
; decoder-mode: arm
0081f464  10 40 2d e9                                      push {r4, lr}
0081f468  00 40 a0 e1                                      mov r4, r0
0081f46c  c2 fe ff eb                                      bl #0x81ef7c
0081f470  da 63 00 eb                                      bl #0x8383e0
0081f474  05 20 a0 e3                                      mov r2, #5
0081f478  34 38 06 e3                                      movw r3, #0x6834
0081f47c  03 20 84 e7                                      str r2, [r4, r3]
0081f480  00 00 a0 e3                                      mov r0, #0
0081f484  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081f488, declared_size=156, range_size=156, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive16JoinRoomInternalEy
; demangled: CMatchingGLLive::JoinRoomInternal(unsigned long long)
; decoder-mode: arm
0081f488  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0081f48c  00 30 90 e5                                      ldr r3, [r0]
0081f490  0c d0 4d e2                                      sub sp, sp, #0xc
0081f494  00 40 a0 e1                                      mov r4, r0
0081f498  02 60 a0 e1                                      mov r6, r2
0081f49c  0f e0 a0 e1                                      mov lr, pc
0081f4a0  60 f0 93 e5                                      ldr pc, [r3, #0x60]
0081f4a4  08 30 94 e5                                      ldr r3, [r4, #8]
0081f4a8  03 00 50 e1                                      cmp r0, r3
0081f4ac  00 00 e0 c3                                      mvngt r0, #0
0081f4b0  19 00 00 ca                                      bgt #0x81f51c
0081f4b4  67 5c 84 e2                                      add r5, r4, #0x6700
0081f4b8  5c 50 85 e2                                      add r5, r5, #0x5c
0081f4bc  05 00 a0 e1                                      mov r0, r5
0081f4c0  a9 bb ff eb                                      bl #0x80e36c
0081f4c4  ac fe ff eb                                      bl #0x81ef7c
0081f4c8  04 38 06 e3                                      movw r3, #0x6804
0081f4cc  03 10 94 e7                                      ldr r1, [r4, r3]
0081f4d0  1a 3b a0 e3                                      mov r3, #0x6800
0081f4d4  03 c0 94 e7                                      ldr ip, [r4, r3]
0081f4d8  0f 20 d4 e5                                      ldrb r2, [r4, #0xf]
0081f4dc  01 30 a0 e1                                      mov r3, r1
0081f4e0  0c c0 61 e0                                      rsb ip, r1, ip
0081f4e4  06 10 a0 e1                                      mov r1, r6
0081f4e8  00 c0 8d e5                                      str ip, [sp]
0081f4ec  7f 64 00 eb                                      bl #0x8386f0
0081f4f0  09 20 a0 e3                                      mov r2, #9
0081f4f4  34 38 06 e3                                      movw r3, #0x6834
0081f4f8  03 20 84 e7                                      str r2, [r4, r3]
0081f4fc  0c 38 06 e3                                      movw r3, #0x680c
0081f500  03 60 84 e7                                      str r6, [r4, r3]
0081f504  00 70 a0 e3                                      mov r7, #0
0081f508  30 36 03 e3                                      movw r3, #0x3630
0081f50c  05 00 a0 e1                                      mov r0, r5
0081f510  03 70 c4 e7                                      strb r7, [r4, r3]
0081f514  93 bb ff eb                                      bl #0x80e368
0081f518  07 00 a0 e1                                      mov r0, r7
0081f51c  0c d0 8d e2                                      add sp, sp, #0xc
0081f520  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0081f524, declared_size=24, range_size=24, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive6IsHostEv
; demangled: CMatchingGLLive::IsHost()
; decoder-mode: arm
0081f524  10 40 2d e9                                      push {r4, lr}
0081f528  93 fe ff eb                                      bl #0x81ef7c
0081f52c  00 30 90 e5                                      ldr r3, [r0]
0081f530  0f e0 a0 e1                                      mov lr, pc
0081f534  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0081f538  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081f53c, declared_size=268, range_size=268, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive15WritePacketDataEiiR12NetBitStream
; demangled: CMatchingGLLive::WritePacketData(int, int, NetBitStream&)
; decoder-mode: arm
0081f53c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081f540  0c d0 4d e2                                      sub sp, sp, #0xc
0081f544  00 c0 90 e5                                      ldr ip, [r0]
0081f548  04 20 8d e5                                      str r2, [sp, #4]
0081f54c  00 50 a0 e1                                      mov r5, r0
0081f550  03 80 a0 e1                                      mov r8, r3
0081f554  01 a0 a0 e1                                      mov sl, r1
0081f558  0f e0 a0 e1                                      mov lr, pc
0081f55c  a4 f0 9c e5                                      ldr pc, [ip, #0xa4]
0081f560  00 40 a0 e1                                      mov r4, r0
0081f564  05 00 a0 e1                                      mov r0, r5
0081f568  ed ff ff eb                                      bl #0x81f524
0081f56c  00 10 a0 e1                                      mov r1, r0
0081f570  08 00 84 e2                                      add r0, r4, #8
0081f574  3c d0 ff eb                                      bl #0x81366c
0081f578  00 30 95 e5                                      ldr r3, [r5]
0081f57c  05 00 a0 e1                                      mov r0, r5
0081f580  0f e0 a0 e1                                      mov lr, pc
0081f584  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0081f588  0a 10 a0 e1                                      mov r1, sl
0081f58c  04 20 9d e5                                      ldr r2, [sp, #4]
0081f590  08 30 a0 e1                                      mov r3, r8
0081f594  48 e2 ff eb                                      bl #0x817ebc
0081f598  08 10 a0 e1                                      mov r1, r8
0081f59c  00 60 a0 e1                                      mov r6, r0
0081f5a0  0a 20 a0 e1                                      mov r2, sl
0081f5a4  18 00 85 e2                                      add r0, r5, #0x18
0081f5a8  04 30 9d e5                                      ldr r3, [sp, #4]
0081f5ac  b8 7c ff eb                                      bl #0x7fe894
0081f5b0  06 60 80 e1                                      orr r6, r0, r6
0081f5b4  76 60 ef e6                                      uxtb r6, r6
0081f5b8  3a 7c 85 e2                                      add r7, r5, #0x3a00
0081f5bc  00 40 a0 e3                                      mov r4, #0
0081f5c0  5a 3f a0 e3                                      mov r3, #0x168
0081f5c4  05 00 a0 e1                                      mov r0, r5
0081f5c8  93 04 09 e0                                      mul sb, r3, r4
0081f5cc  c3 7b ff eb                                      bl #0x7fe4e0
0081f5d0  3a 9c 89 e2                                      add sb, sb, #0x3a00
0081f5d4  00 b0 50 e2                                      subs fp, r0, #0
0081f5d8  09 90 85 e0                                      add sb, r5, sb
0081f5dc  11 00 00 0a                                      beq #0x81f628
0081f5e0  01 10 a0 e3                                      mov r1, #1
0081f5e4  09 00 a0 e1                                      mov r0, sb
0081f5e8  1f d0 ff eb                                      bl #0x81366c
0081f5ec  09 00 a0 e1                                      mov r0, sb
0081f5f0  68 c1 97 e4                                      ldr ip, [r7], #0x168
0081f5f4  08 10 a0 e1                                      mov r1, r8
0081f5f8  0a 20 a0 e1                                      mov r2, sl
0081f5fc  04 30 9d e5                                      ldr r3, [sp, #4]
0081f600  0f e0 a0 e1                                      mov lr, pc
0081f604  08 f0 9c e5                                      ldr pc, [ip, #8]
0081f608  01 40 84 e2                                      add r4, r4, #1
0081f60c  00 00 50 e3                                      cmp r0, #0
0081f610  01 60 a0 13                                      movne r6, #1
0081f614  20 00 54 e3                                      cmp r4, #0x20
0081f618  e8 ff ff 1a                                      bne #0x81f5c0
0081f61c  06 00 a0 e1                                      mov r0, r6
0081f620  0c d0 8d e2                                      add sp, sp, #0xc
0081f624  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081f628  d9 3d a0 e3                                      mov r3, #0x3640
0081f62c  03 10 95 e7                                      ldr r1, [r5, r3]
0081f630  05 00 a0 e1                                      mov r0, r5
0081f634  d8 7b ff eb                                      bl #0x7fe59c
0081f638  04 00 50 e1                                      cmp r0, r4
0081f63c  0b 10 a0 11                                      movne r1, fp
0081f640  e7 ff ff 1a                                      bne #0x81f5e4
0081f644  e5 ff ff ea                                      b #0x81f5e0

; FUNCTION 0x0081f648, declared_size=176, range_size=176, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive18SendGameParametersEv
; demangled: CMatchingGLLive::SendGameParameters()
; decoder-mode: arm
0081f648  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081f64c  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
0081f650  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
0081f654  88 d0 4d e2                                      sub sp, sp, #0x88
0081f658  04 40 8f e0                                      add r4, pc, r4
0081f65c  05 30 94 e7                                      ldr r3, [r4, r5]
0081f660  00 60 a0 e1                                      mov r6, r0
0081f664  00 30 93 e5                                      ldr r3, [r3]
0081f668  84 30 8d e5                                      str r3, [sp, #0x84]
0081f66c  ac ff ff eb                                      bl #0x81f524
0081f670  00 00 50 e3                                      cmp r0, #0
0081f674  15 00 00 0a                                      beq #0x81f6d0
0081f678  04 70 8d e2                                      add r7, sp, #4
0081f67c  00 30 96 e5                                      ldr r3, [r6]
0081f680  06 00 a0 e1                                      mov r0, r6
0081f684  0f e0 a0 e1                                      mov lr, pc
0081f688  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0081f68c  08 88 06 e3                                      movw r8, #0x6808
0081f690  0f 30 a0 e3                                      mov r3, #0xf
0081f694  07 10 a0 e1                                      mov r1, r7
0081f698  80 20 a0 e3                                      mov r2, #0x80
0081f69c  a2 e6 ff eb                                      bl #0x81912c
0081f6a0  08 30 96 e7                                      ldr r3, [r6, r8]
0081f6a4  07 20 a0 e1                                      mov r2, r7
0081f6a8  00 10 a0 e3                                      mov r1, #0
0081f6ac  03 00 a0 e1                                      mov r0, r3
0081f6b0  00 30 93 e5                                      ldr r3, [r3]
0081f6b4  0f e0 a0 e1                                      mov lr, pc
0081f6b8  08 f0 93 e5                                      ldr pc, [r3, #8]
0081f6bc  2e fe ff eb                                      bl #0x81ef7c
0081f6c0  07 10 a0 e1                                      mov r1, r7
0081f6c4  08 30 96 e7                                      ldr r3, [r6, r8]
0081f6c8  80 20 a0 e3                                      mov r2, #0x80
0081f6cc  b5 62 00 eb                                      bl #0x8381a8
0081f6d0  05 30 94 e7                                      ldr r3, [r4, r5]
0081f6d4  84 20 9d e5                                      ldr r2, [sp, #0x84]
0081f6d8  00 30 93 e5                                      ldr r3, [r3]
0081f6dc  03 00 52 e1                                      cmp r2, r3
0081f6e0  01 00 00 1a                                      bne #0x81f6ec
0081f6e4  88 d0 8d e2                                      add sp, sp, #0x88
0081f6e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081f6ec  07 bb eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081f6f0  38 54 17 00 ac 40 00 00                          .byte 0x38, 0x54, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0081f6f8, declared_size=352, range_size=352, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive10KickMemberEi
; demangled: CMatchingGLLive::KickMember(int)
; decoder-mode: arm
0081f6f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081f6fc  48 41 9f e5                                      ldr r4, [pc, #0x148]
0081f700  48 51 9f e5                                      ldr r5, [pc, #0x148]
0081f704  58 d0 4d e2                                      sub sp, sp, #0x58
0081f708  04 40 8f e0                                      add r4, pc, r4
0081f70c  05 30 94 e7                                      ldr r3, [r4, r5]
0081f710  01 60 a0 e1                                      mov r6, r1
0081f714  00 30 93 e5                                      ldr r3, [r3]
0081f718  54 30 8d e5                                      str r3, [sp, #0x54]
0081f71c  80 ff ff eb                                      bl #0x81f524
0081f720  00 00 50 e3                                      cmp r0, #0
0081f724  07 00 00 1a                                      bne #0x81f748
0081f728  01 00 a0 e3                                      mov r0, #1
0081f72c  05 30 94 e7                                      ldr r3, [r4, r5]
0081f730  54 20 9d e5                                      ldr r2, [sp, #0x54]
0081f734  00 30 93 e5                                      ldr r3, [r3]
0081f738  03 00 52 e1                                      cmp r2, r3
0081f73c  41 00 00 1a                                      bne #0x81f848
0081f740  58 d0 8d e2                                      add sp, sp, #0x58
0081f744  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081f748  0b fe ff eb                                      bl #0x81ef7c
0081f74c  00 30 90 e5                                      ldr r3, [r0]
0081f750  0f e0 a0 e1                                      mov lr, pc
0081f754  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0081f758  00 00 50 e3                                      cmp r0, #0
0081f75c  f1 ff ff 0a                                      beq #0x81f728
0081f760  2a f3 ff eb                                      bl #0x81c410
0081f764  06 10 a0 e1                                      mov r1, r6
0081f768  ed 0a 00 eb                                      bl #0x822324
0081f76c  00 30 90 e5                                      ldr r3, [r0]
0081f770  00 60 a0 e1                                      mov r6, r0
0081f774  0c 70 8d e2                                      add r7, sp, #0xc
0081f778  00 30 8d e5                                      str r3, [sp]
0081f77c  04 30 90 e5                                      ldr r3, [r0, #4]
0081f780  0c 10 80 e2                                      add r1, r0, #0xc
0081f784  07 00 a0 e1                                      mov r0, r7
0081f788  04 30 8d e5                                      str r3, [sp, #4]
0081f78c  08 30 96 e5                                      ldr r3, [r6, #8]
0081f790  0d 80 a0 e1                                      mov r8, sp
0081f794  08 30 8d e5                                      str r3, [sp, #8]
0081f798  5e 30 ec eb                                      bl #0x32b918
0081f79c  24 30 96 e5                                      ldr r3, [r6, #0x24]
0081f7a0  28 c0 8d e2                                      add ip, sp, #0x28
0081f7a4  28 e0 86 e2                                      add lr, r6, #0x28
0081f7a8  24 30 8d e5                                      str r3, [sp, #0x24]
0081f7ac  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0081f7b0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0081f7b4  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0081f7b8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0081f7bc  00 20 9e e5                                      ldr r2, [lr]
0081f7c0  00 30 9d e5                                      ldr r3, [sp]
0081f7c4  00 20 cc e5                                      strb r2, [ip]
0081f7c8  4c 20 96 e5                                      ldr r2, [r6, #0x4c]
0081f7cc  01 00 73 e3                                      cmn r3, #1
0081f7d0  4c 20 8d e5                                      str r2, [sp, #0x4c]
0081f7d4  50 20 d6 e5                                      ldrb r2, [r6, #0x50]
0081f7d8  50 20 cd e5                                      strb r2, [sp, #0x50]
0081f7dc  12 00 00 0a                                      beq #0x81f82c
0081f7e0  e5 fd ff eb                                      bl #0x81ef7c
0081f7e4  28 10 8d e2                                      add r1, sp, #0x28
0081f7e8  8a 61 00 eb                                      bl #0x837e18
0081f7ec  60 30 9f e5                                      ldr r3, [pc, #0x60]
0081f7f0  00 60 a0 e3                                      mov r6, #0
0081f7f4  01 15 a0 e3                                      mov r1, #0x400000
0081f7f8  03 00 94 e7                                      ldr r0, [r4, r3]
0081f7fc  0e 10 81 e2                                      add r1, r1, #0xe
0081f800  06 20 a0 e1                                      mov r2, r6
0081f804  06 30 a0 e1                                      mov r3, r6
0081f808  50 60 cd e5                                      strb r6, [sp, #0x50]
0081f80c  7c 7a ff eb                                      bl #0x7fe204
0081f810  00 30 e0 e3                                      mvn r3, #0
0081f814  07 00 a0 e1                                      mov r0, r7
0081f818  00 30 8d e5                                      str r3, [sp]
0081f81c  24 60 8d e5                                      str r6, [sp, #0x24]
0081f820  8b e2 eb eb                                      bl #0x318254
0081f824  06 00 a0 e1                                      mov r0, r6
0081f828  bf ff ff ea                                      b #0x81f72c
0081f82c  00 20 a0 e3                                      mov r2, #0
0081f830  07 00 a0 e1                                      mov r0, r7
0081f834  24 20 8d e5                                      str r2, [sp, #0x24]
0081f838  00 30 8d e5                                      str r3, [sp]
0081f83c  84 e2 eb eb                                      bl #0x318254
0081f840  01 00 a0 e3                                      mov r0, #1
0081f844  b8 ff ff ea                                      b #0x81f72c
0081f848  b0 ba eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081f84c  88 53 17 00 ac 40 00 00 88 15 00 00              .byte 0x88, 0x53, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0x15, 0x00, 0x00

; FUNCTION 0x0081f858, declared_size=240, range_size=240, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive9TerminateEv
; demangled: CMatchingGLLive::Terminate()
; decoder-mode: arm
0081f858  70 40 2d e9                                      push {r4, r5, r6, lr}
0081f85c  00 30 90 e5                                      ldr r3, [r0]
0081f860  00 50 a0 e1                                      mov r5, r0
0081f864  0f e0 a0 e1                                      mov lr, pc
0081f868  64 f0 93 e5                                      ldr pc, [r3, #0x64]
0081f86c  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
0081f870  00 00 50 e3                                      cmp r0, #0
0081f874  04 40 8f e0                                      add r4, pc, r4
0081f878  28 00 00 1a                                      bne #0x81f920
0081f87c  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
0081f880  03 00 94 e7                                      ldr r0, [r4, r3]
0081f884  eb 7a ff eb                                      bl #0x7fe438
0081f888  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0081f88c  03 00 94 e7                                      ldr r0, [r4, r3]
0081f890  e8 7a ff eb                                      bl #0x7fe438
0081f894  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0081f898  03 00 94 e7                                      ldr r0, [r4, r3]
0081f89c  e5 7a ff eb                                      bl #0x7fe438
0081f8a0  81 eb ff eb                                      bl #0x81a6ac
0081f8a4  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
0081f8a8  00 00 53 e3                                      cmp r3, #0
0081f8ac  05 00 00 0a                                      beq #0x81f8c8
0081f8b0  b1 fd ff eb                                      bl #0x81ef7c
0081f8b4  00 30 90 e5                                      ldr r3, [r0]
0081f8b8  0f e0 a0 e1                                      mov lr, pc
0081f8bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0081f8c0  d2 f2 ff eb                                      bl #0x81c410
0081f8c4  df 06 00 eb                                      bl #0x821448
0081f8c8  32 f3 ff eb                                      bl #0x81c598
0081f8cc  31 14 00 eb                                      bl #0x824998
0081f8d0  02 00 a0 e3                                      mov r0, #2
0081f8d4  98 72 ff eb                                      bl #0x7fc33c
0081f8d8  03 00 a0 e3                                      mov r0, #3
0081f8dc  96 72 ff eb                                      bl #0x7fc33c
0081f8e0  09 00 a0 e3                                      mov r0, #9
0081f8e4  94 72 ff eb                                      bl #0x7fc33c
0081f8e8  04 00 a0 e3                                      mov r0, #4
0081f8ec  92 72 ff eb                                      bl #0x7fc33c
0081f8f0  05 00 a0 e1                                      mov r0, r5
0081f8f4  29 7f ff eb                                      bl #0x7ff5a0
0081f8f8  44 30 9f e5                                      ldr r3, [pc, #0x44]
0081f8fc  00 00 a0 e3                                      mov r0, #0
0081f900  e8 27 06 e3                                      movw r2, #0x67e8
0081f904  03 30 94 e7                                      ldr r3, [r4, r3]
0081f908  02 00 c5 e7                                      strb r0, [r5, r2]
0081f90c  0c 00 c5 e5                                      strb r0, [r5, #0xc]
0081f910  00 00 c3 e5                                      strb r0, [r3]
0081f914  ed 37 06 e3                                      movw r3, #0x67ed
0081f918  03 00 c5 e7                                      strb r0, [r5, r3]
0081f91c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0081f920  00 30 95 e5                                      ldr r3, [r5]
0081f924  05 00 a0 e1                                      mov r0, r5
0081f928  0f e0 a0 e1                                      mov lr, pc
0081f92c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0081f930  d1 ff ff ea                                      b #0x81f87c
; mapping-symbol data/literal pool
0081f934  1c 52 17 00 88 15 00 00 3c 34 00 00 ac 35 00 00  .byte 0x1c, 0x52, 0x17, 0x00, 0x88, 0x15, 0x00, 0x00, 0x3c, 0x34, 0x00, 0x00, 0xac, 0x35, 0x00, 0x00
0081f944  74 06 00 00                                      .byte 0x74, 0x06, 0x00, 0x00

; FUNCTION 0x0081f948, declared_size=404, range_size=404, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive22CreateJoinRoomInternalEbR15CRoomAttributes
; demangled: CMatchingGLLive::CreateJoinRoomInternal(bool, CRoomAttributes&)
; decoder-mode: arm
0081f948  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0081f94c  7c 41 9f e5                                      ldr r4, [pc, #0x17c]
0081f950  7c 61 9f e5                                      ldr r6, [pc, #0x17c]
0081f954  ac d0 4d e2                                      sub sp, sp, #0xac
0081f958  04 40 8f e0                                      add r4, pc, r4
0081f95c  06 30 94 e7                                      ldr r3, [r4, r6]
0081f960  01 80 a0 e1                                      mov r8, r1
0081f964  02 70 a0 e1                                      mov r7, r2
0081f968  00 30 93 e5                                      ldr r3, [r3]
0081f96c  00 50 a0 e1                                      mov r5, r0
0081f970  a4 30 8d e5                                      str r3, [sp, #0xa4]
0081f974  83 f1 ff eb                                      bl #0x81bf88
0081f978  00 00 50 e3                                      cmp r0, #0
0081f97c  00 00 e0 03                                      mvneq r0, #0
0081f980  06 00 00 1a                                      bne #0x81f9a0
0081f984  06 30 94 e7                                      ldr r3, [r4, r6]
0081f988  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
0081f98c  00 30 93 e5                                      ldr r3, [r3]
0081f990  03 00 52 e1                                      cmp r2, r3
0081f994  4c 00 00 1a                                      bne #0x81facc
0081f998  ac d0 8d e2                                      add sp, sp, #0xac
0081f99c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0081f9a0  01 20 28 e2                                      eor r2, r8, #1
0081f9a4  ec 37 06 e3                                      movw r3, #0x67ec
0081f9a8  03 20 c5 e7                                      strb r2, [r5, r3]
0081f9ac  0d f3 ff eb                                      bl #0x81c5e8
0081f9b0  74 90 90 e5                                      ldr sb, [r0, #0x74]
0081f9b4  d9 0d 85 e2                                      add r0, r5, #0x3640
0081f9b8  07 10 a0 e1                                      mov r1, r7
0081f9bc  24 a0 8d e2                                      add sl, sp, #0x24
0081f9c0  10 00 80 e2                                      add r0, r0, #0x10
0081f9c4  d8 e3 ff eb                                      bl #0x81892c
0081f9c8  07 00 a0 e1                                      mov r0, r7
0081f9cc  0a 10 a0 e1                                      mov r1, sl
0081f9d0  80 20 a0 e3                                      mov r2, #0x80
0081f9d4  0f 30 a0 e3                                      mov r3, #0xf
0081f9d8  08 78 06 e3                                      movw r7, #0x6808
0081f9dc  d2 e5 ff eb                                      bl #0x81912c
0081f9e0  07 30 95 e7                                      ldr r3, [r5, r7]
0081f9e4  00 10 a0 e3                                      mov r1, #0
0081f9e8  0a 20 a0 e1                                      mov r2, sl
0081f9ec  03 00 a0 e1                                      mov r0, r3
0081f9f0  00 30 93 e5                                      ldr r3, [r3]
0081f9f4  0f e0 a0 e1                                      mov lr, pc
0081f9f8  08 f0 93 e5                                      ldr pc, [r3, #8]
0081f9fc  e8 37 06 e3                                      movw r3, #0x67e8
0081fa00  03 30 d5 e7                                      ldrb r3, [r5, r3]
0081fa04  00 00 53 e3                                      cmp r3, #0
0081fa08  17 00 00 1a                                      bne #0x81fa6c
0081fa0c  5a fd ff eb                                      bl #0x81ef7c
0081fa10  04 38 06 e3                                      movw r3, #0x6804
0081fa14  03 c0 95 e7                                      ldr ip, [r5, r3]
0081fa18  1a 3b a0 e3                                      mov r3, #0x6800
0081fa1c  03 e0 95 e7                                      ldr lr, [r5, r3]
0081fa20  07 b0 95 e7                                      ldr fp, [r5, r7]
0081fa24  08 70 95 e5                                      ldr r7, [r5, #8]
0081fa28  0e 30 d5 e5                                      ldrb r3, [r5, #0xe]
0081fa2c  0e e0 6c e0                                      rsb lr, ip, lr
0081fa30  00 70 8d e5                                      str r7, [sp]
0081fa34  09 10 a0 e1                                      mov r1, sb
0081fa38  80 70 a0 e3                                      mov r7, #0x80
0081fa3c  08 20 a0 e1                                      mov r2, r8
0081fa40  04 a0 8d e5                                      str sl, [sp, #4]
0081fa44  08 70 8d e5                                      str r7, [sp, #8]
0081fa48  10 e0 8d e5                                      str lr, [sp, #0x10]
0081fa4c  14 b0 8d e5                                      str fp, [sp, #0x14]
0081fa50  0c c0 8d e5                                      str ip, [sp, #0xc]
0081fa54  52 63 00 eb                                      bl #0x8387a4
0081fa58  03 20 a0 e3                                      mov r2, #3
0081fa5c  34 38 06 e3                                      movw r3, #0x6834
0081fa60  03 20 85 e7                                      str r2, [r5, r3]
0081fa64  00 00 a0 e3                                      mov r0, #0
0081fa68  c5 ff ff ea                                      b #0x81f984
0081fa6c  42 fd ff eb                                      bl #0x81ef7c
0081fa70  60 30 9f e5                                      ldr r3, [pc, #0x60]
0081fa74  07 90 95 e7                                      ldr sb, [r5, r7]
0081fa78  00 20 a0 e3                                      mov r2, #0
0081fa7c  03 80 94 e7                                      ldr r8, [r4, r3]
0081fa80  04 38 06 e3                                      movw r3, #0x6804
0081fa84  03 c0 95 e7                                      ldr ip, [r5, r3]
0081fa88  1a 3b a0 e3                                      mov r3, #0x6800
0081fa8c  03 e0 95 e7                                      ldr lr, [r5, r3]
0081fa90  0c 70 98 e5                                      ldr r7, [r8, #0xc]
0081fa94  08 10 98 e5                                      ldr r1, [r8, #8]
0081fa98  0e 30 d5 e5                                      ldrb r3, [r5, #0xe]
0081fa9c  0e e0 6c e0                                      rsb lr, ip, lr
0081faa0  10 80 88 e2                                      add r8, r8, #0x10
0081faa4  00 70 8d e5                                      str r7, [sp]
0081faa8  80 70 a0 e3                                      mov r7, #0x80
0081faac  04 a0 8d e5                                      str sl, [sp, #4]
0081fab0  08 70 8d e5                                      str r7, [sp, #8]
0081fab4  10 e0 8d e5                                      str lr, [sp, #0x10]
0081fab8  14 90 8d e5                                      str sb, [sp, #0x14]
0081fabc  18 80 8d e5                                      str r8, [sp, #0x18]
0081fac0  0c c0 8d e5                                      str ip, [sp, #0xc]
0081fac4  1e 6b 00 eb                                      bl #0x83a744
0081fac8  e2 ff ff ea                                      b #0x81fa58
0081facc  0f ba eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081fad0  38 51 17 00 ac 40 00 00 94 0d 00 00              .byte 0x38, 0x51, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0x0d, 0x00, 0x00

; FUNCTION 0x0081fadc, declared_size=104, range_size=104, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive18SearchRoomInternalER17CRoomSearchFilterbh
; demangled: CMatchingGLLive::SearchRoomInternal(CRoomSearchFilter&, bool, unsigned char)
; decoder-mode: arm
0081fadc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0081fae0  00 50 a0 e1                                      mov r5, r0
0081fae4  67 0c 80 e2                                      add r0, r0, #0x6700
0081fae8  0c d0 4d e2                                      sub sp, sp, #0xc
0081faec  38 00 80 e2                                      add r0, r0, #0x38
0081faf0  03 60 a0 e1                                      mov r6, r3
0081faf4  44 ea ff eb                                      bl #0x81a40c
0081faf8  ba f2 ff eb                                      bl #0x81c5e8
0081fafc  78 40 90 e5                                      ldr r4, [r0, #0x78]
0081fb00  1d fd ff eb                                      bl #0x81ef7c
0081fb04  00 70 a0 e1                                      mov r7, r0
0081fb08  04 00 a0 e1                                      mov r0, r4
0081fb0c  60 b9 eb eb                                      bl #0x30e094
0081fb10  00 40 a0 e3                                      mov r4, #0
0081fb14  00 10 a0 e1                                      mov r1, r0
0081fb18  04 20 a0 e1                                      mov r2, r4
0081fb1c  07 00 a0 e1                                      mov r0, r7
0081fb20  0f 30 a0 e3                                      mov r3, #0xf
0081fb24  50 00 8d e8                                      stm sp, {r4, r6}
0081fb28  8a 60 00 eb                                      bl #0x837d58
0081fb2c  07 20 a0 e3                                      mov r2, #7
0081fb30  34 38 06 e3                                      movw r3, #0x6834
0081fb34  03 20 85 e7                                      str r2, [r5, r3]
0081fb38  04 00 a0 e1                                      mov r0, r4
0081fb3c  0c d0 8d e2                                      add sp, sp, #0xc
0081fb40  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00820318, declared_size=212, range_size=212, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive23GetSearchRoomAttributesEy
; demangled: CMatchingGLLive::GetSearchRoomAttributes(unsigned long long)
; decoder-mode: arm
00820318  30 40 2d e9                                      push {r4, r5, lr}
0082031c  0c d0 4d e2                                      sub sp, sp, #0xc
00820320  01 40 a0 e1                                      mov r4, r1
00820324  f0 20 cd e1                                      strd r2, r3, [sp]
00820328  00 50 a0 e1                                      mov r5, r0
0082032c  94 e3 ff eb                                      bl #0x819184
00820330  24 37 06 e3                                      movw r3, #0x6724
00820334  03 30 94 e7                                      ldr r3, [r4, r3]
00820338  67 0c 84 e2                                      add r0, r4, #0x6700
0082033c  20 00 80 e2                                      add r0, r0, #0x20
00820340  00 00 53 e3                                      cmp r3, #0
00820344  18 00 00 0a                                      beq #0x8203ac
00820348  10 10 9d e8                                      ldm sp, {r4, ip}
0082034c  00 10 a0 e1                                      mov r1, r0
00820350  14 20 93 e5                                      ldr r2, [r3, #0x14]
00820354  0c 00 52 e1                                      cmp r2, ip
00820358  09 00 00 3a                                      blo #0x820384
0082035c  05 00 00 0a                                      beq #0x820378
00820360  08 20 93 e5                                      ldr r2, [r3, #8]
00820364  03 10 a0 e1                                      mov r1, r3
00820368  00 00 52 e3                                      cmp r2, #0
0082036c  09 00 00 0a                                      beq #0x820398
00820370  02 30 a0 e1                                      mov r3, r2
00820374  f5 ff ff ea                                      b #0x820350
00820378  10 20 93 e5                                      ldr r2, [r3, #0x10]
0082037c  04 00 52 e1                                      cmp r2, r4
00820380  f6 ff ff 2a                                      bhs #0x820360
00820384  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00820388  01 30 a0 e1                                      mov r3, r1
0082038c  03 10 a0 e1                                      mov r1, r3
00820390  00 00 52 e3                                      cmp r2, #0
00820394  f5 ff ff 1a                                      bne #0x820370
00820398  03 00 50 e1                                      cmp r0, r3
0082039c  0a 00 00 0a                                      beq #0x8203cc
008203a0  14 20 93 e5                                      ldr r2, [r3, #0x14]
008203a4  0c 00 52 e1                                      cmp r2, ip
008203a8  0a 00 00 9a                                      bls #0x8203d8
008203ac  00 30 a0 e1                                      mov r3, r0
008203b0  03 00 50 e1                                      cmp r0, r3
008203b4  04 00 00 0a                                      beq #0x8203cc
008203b8  0d 10 a0 e1                                      mov r1, sp
008203bc  8e ff ff eb                                      bl #0x8201fc
008203c0  00 10 a0 e1                                      mov r1, r0
008203c4  05 00 a0 e1                                      mov r0, r5
008203c8  57 e1 ff eb                                      bl #0x81892c
008203cc  05 00 a0 e1                                      mov r0, r5
008203d0  0c d0 8d e2                                      add sp, sp, #0xc
008203d4  30 80 bd e8                                      pop {r4, r5, pc}
008203d8  f4 ff ff 1a                                      bne #0x8203b0
008203dc  10 20 93 e5                                      ldr r2, [r3, #0x10]
008203e0  04 00 52 e1                                      cmp r2, r4
008203e4  f1 ff ff 9a                                      bls #0x8203b0
008203e8  ef ff ff ea                                      b #0x8203ac

; FUNCTION 0x00820508, declared_size=20, range_size=20, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive17GetRoomAttributesEv
; demangled: CMatchingGLLive::GetRoomAttributes()
; decoder-mode: arm
00820508  1a 1b 80 e2                                      add r1, r0, #0x6800
0082050c  67 0c 80 e2                                      add r0, r0, #0x6700
00820510  20 00 80 e2                                      add r0, r0, #0x20
00820514  0c 10 81 e2                                      add r1, r1, #0xc
00820518  b3 ff ff ea                                      b #0x8203ec

; FUNCTION 0x0082051c, declared_size=624, range_size=624, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive11GetRoomListEv
; demangled: CMatchingGLLive::GetRoomList()
; decoder-mode: arm
0082051c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00820520  5c 22 9f e5                                      ldr r2, [pc, #0x25c]
00820524  5c 32 9f e5                                      ldr r3, [pc, #0x25c]
00820528  b5 de 4d e2                                      sub sp, sp, #0xb50
0082052c  04 d0 4d e2                                      sub sp, sp, #4
00820530  02 20 8f e0                                      add r2, pc, r2
00820534  2c 30 8d e5                                      str r3, [sp, #0x2c]
00820538  03 30 92 e7                                      ldr r3, [r2, r3]
0082053c  00 b0 a0 e1                                      mov fp, r0
00820540  01 50 a0 e1                                      mov r5, r1
00820544  00 30 93 e5                                      ldr r3, [r3]
00820548  67 7c 81 e2                                      add r7, r1, #0x6700
0082054c  28 20 8d e5                                      str r2, [sp, #0x28]
00820550  4c 3b 8d e5                                      str r3, [sp, #0xb4c]
00820554  ad ef ff eb                                      bl #0x81c410
00820558  18 10 80 e2                                      add r1, r0, #0x18
0082055c  76 0e 8d e2                                      add r0, sp, #0x760
00820560  00 40 a0 e3                                      mov r4, #0
00820564  08 00 80 e2                                      add r0, r0, #8
00820568  d5 f1 ff eb                                      bl #0x81ccc4
0082056c  30 67 06 e3                                      movw r6, #0x6730
00820570  00 40 8b e5                                      str r4, [fp]
00820574  04 40 8b e5                                      str r4, [fp, #4]
00820578  08 40 8b e5                                      str r4, [fp, #8]
0082057c  06 30 95 e7                                      ldr r3, [r5, r6]
00820580  20 70 87 e2                                      add r7, r7, #0x20
00820584  04 00 53 e1                                      cmp r3, r4
00820588  6f 00 00 1a                                      bne #0x82074c
0082058c  68 47 9d e5                                      ldr r4, [sp, #0x768]
00820590  6c 07 9d e5                                      ldr r0, [sp, #0x76c]
00820594  00 00 54 e1                                      cmp r4, r0
00820598  58 00 00 0a                                      beq #0x820700
0082059c  30 a0 8d e2                                      add sl, sp, #0x30
008205a0  18 a0 8d e5                                      str sl, [sp, #0x18]
008205a4  18 30 9d e5                                      ldr r3, [sp, #0x18]
008205a8  1e 8d 8d e2                                      add r8, sp, #0x780
008205ac  86 c4 a0 e3                                      mov ip, #0x86000000
008205b0  a7 e4 a0 e3                                      mov lr, #0xa7000000
008205b4  77 0e 8d e2                                      add r0, sp, #0x770
008205b8  77 1e 8d e2                                      add r1, sp, #0x770
008205bc  77 2e 8d e2                                      add r2, sp, #0x770
008205c0  cc ca a0 e1                                      asr ip, ip, #0x15
008205c4  ce e9 a0 e1                                      asr lr, lr, #0x13
008205c8  0c 00 80 e2                                      add r0, r0, #0xc
008205cc  08 10 81 e2                                      add r1, r1, #8
008205d0  04 20 82 e2                                      add r2, r2, #4
008205d4  08 a0 88 e2                                      add sl, r8, #8
008205d8  04 40 84 e2                                      add r4, r4, #4
008205dc  10 c0 8d e5                                      str ip, [sp, #0x10]
008205e0  14 e0 8d e5                                      str lr, [sp, #0x14]
008205e4  20 00 8d e5                                      str r0, [sp, #0x20]
008205e8  3d 5e 8d e2                                      add r5, sp, #0x3d0
008205ec  1c 10 8d e5                                      str r1, [sp, #0x1c]
008205f0  24 20 8d e5                                      str r2, [sp, #0x24]
008205f4  28 60 88 e2                                      add r6, r8, #0x28
008205f8  08 90 83 e2                                      add sb, r3, #8
008205fc  00 0c 8d e8                                      stm sp, {sl, fp}
00820600  00 10 a0 e3                                      mov r1, #0
00820604  f1 2f a0 e3                                      mov r2, #0x3c4
00820608  08 00 a0 e1                                      mov r0, r8
0082060c  93 b7 eb eb                                      bl #0x30e460
00820610  04 30 14 e5                                      ldr r3, [r4, #-4]
00820614  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00820618  b5 ee 8d e2                                      add lr, sp, #0xb50
0082061c  00 30 93 e5                                      ldr r3, [r3]
00820620  20 20 9d e5                                      ldr r2, [sp, #0x20]
00820624  00 00 9d e5                                      ldr r0, [sp]
00820628  03 a0 a0 e1                                      mov sl, r3
0082062c  ca bf a0 e1                                      asr fp, sl, #0x1f
00820630  fc a0 8e e1                                      strd sl, fp, [lr, ip]
00820634  04 30 14 e5                                      ldr r3, [r4, #-4]
00820638  b5 be 8d e2                                      add fp, sp, #0xb50
0082063c  04 10 93 e5                                      ldr r1, [r3, #4]
00820640  a9 ce eb eb                                      bl #0x3140ec
00820644  04 30 14 e5                                      ldr r3, [r4, #-4]
00820648  06 00 a0 e1                                      mov r0, r6
0082064c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00820650  a0 37 8d e5                                      str r3, [sp, #0x7a0]
00820654  ca e2 ff eb                                      bl #0x819184
00820658  05 00 a0 e1                                      mov r0, r5
0082065c  c8 e2 ff eb                                      bl #0x819184
00820660  04 30 14 e5                                      ldr r3, [r4, #-4]
00820664  80 20 a0 e3                                      mov r2, #0x80
00820668  05 00 a0 e1                                      mov r0, r5
0082066c  20 10 93 e5                                      ldr r1, [r3, #0x20]
00820670  fd dd ff eb                                      bl #0x817e6c
00820674  04 30 14 e5                                      ldr r3, [r4, #-4]
00820678  14 a0 9d e5                                      ldr sl, [sp, #0x14]
0082067c  05 10 a0 e1                                      mov r1, r5
00820680  00 20 93 e5                                      ldr r2, [r3]
00820684  09 00 a0 e1                                      mov r0, sb
00820688  c2 3f a0 e1                                      asr r3, r2, #0x1f
0082068c  fa 20 8b e1                                      strd r2, r3, [fp, sl]
00820690  6e e2 ff eb                                      bl #0x819050
00820694  24 20 9d e5                                      ldr r2, [sp, #0x24]
00820698  18 30 9d e5                                      ldr r3, [sp, #0x18]
0082069c  07 10 a0 e1                                      mov r1, r7
008206a0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
008206a4  74 77 8d e5                                      str r7, [sp, #0x774]
008206a8  df fd ff eb                                      bl #0x81fe2c
008206ac  09 00 a0 e1                                      mov r0, sb
008206b0  57 e1 ff eb                                      bl #0x818c14
008206b4  05 10 a0 e1                                      mov r1, r5
008206b8  06 00 a0 e1                                      mov r0, r6
008206bc  9a e0 ff eb                                      bl #0x81892c
008206c0  08 10 a0 e1                                      mov r1, r8
008206c4  04 00 9d e5                                      ldr r0, [sp, #4]
008206c8  ea 9e ff eb                                      bl #0x808278
008206cc  05 00 a0 e1                                      mov r0, r5
008206d0  4f e1 ff eb                                      bl #0x818c14
008206d4  06 00 a0 e1                                      mov r0, r6
008206d8  4d e1 ff eb                                      bl #0x818c14
008206dc  00 00 9d e5                                      ldr r0, [sp]
008206e0  db de eb eb                                      bl #0x318254
008206e4  6c 27 9d e5                                      ldr r2, [sp, #0x76c]
008206e8  04 30 a0 e1                                      mov r3, r4
008206ec  04 40 84 e2                                      add r4, r4, #4
008206f0  03 00 52 e1                                      cmp r2, r3
008206f4  c1 ff ff 1a                                      bne #0x820600
008206f8  04 b0 9d e5                                      ldr fp, [sp, #4]
008206fc  68 07 9d e5                                      ldr r0, [sp, #0x768]
00820700  00 00 50 e3                                      cmp r0, #0
00820704  05 00 00 0a                                      beq #0x820720
00820708  70 17 9d e5                                      ldr r1, [sp, #0x770]
0082070c  01 10 60 e0                                      rsb r1, r0, r1
00820710  03 10 c1 e3                                      bic r1, r1, #3
00820714  80 00 51 e3                                      cmp r1, #0x80
00820718  16 00 00 8a                                      bhi #0x820778
0082071c  05 77 02 eb                                      bl #0x8be338
00820720  28 00 9d e5                                      ldr r0, [sp, #0x28]
00820724  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00820728  4c 2b 9d e5                                      ldr r2, [sp, #0xb4c]
0082072c  0c 30 90 e7                                      ldr r3, [r0, ip]
00820730  0b 00 a0 e1                                      mov r0, fp
00820734  00 30 93 e5                                      ldr r3, [r3]
00820738  03 00 52 e1                                      cmp r2, r3
0082073c  0f 00 00 1a                                      bne #0x820780
00820740  d5 df 8d e2                                      add sp, sp, #0x354
00820744  02 db 8d e2                                      add sp, sp, #0x800
00820748  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0082074c  24 87 06 e3                                      movw r8, #0x6724
00820750  07 00 a0 e1                                      mov r0, r7
00820754  08 10 95 e7                                      ldr r1, [r5, r8]
00820758  99 f1 ff eb                                      bl #0x81cdc4
0082075c  28 37 06 e3                                      movw r3, #0x6728
00820760  06 40 85 e7                                      str r4, [r5, r6]
00820764  03 70 85 e7                                      str r7, [r5, r3]
00820768  2c 37 06 e3                                      movw r3, #0x672c
0082076c  08 40 85 e7                                      str r4, [r5, r8]
00820770  03 70 85 e7                                      str r7, [r5, r3]
00820774  84 ff ff ea                                      b #0x82058c
00820778  30 bf eb eb                                      bl #0x310440
0082077c  e7 ff ff ea                                      b #0x820720
00820780  e2 b6 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00820784  60 45 17 00 ac 40 00 00                          .byte 0x60, 0x45, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0082078c, declared_size=736, range_size=736, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive10UpdateRoomEv
; demangled: CMatchingGLLive::UpdateRoom()
; decoder-mode: arm
0082078c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00820790  f1 df 4d e2                                      sub sp, sp, #0x3c4
00820794  00 50 a0 e1                                      mov r5, r0
00820798  fa ed ff eb                                      bl #0x81bf88
0082079c  b8 42 9f e5                                      ldr r4, [pc, #0x2b8]
008207a0  00 00 50 e3                                      cmp r0, #0
008207a4  04 40 8f e0                                      add r4, pc, r4
008207a8  02 00 00 1a                                      bne #0x8207b8
008207ac  00 00 e0 e3                                      mvn r0, #0
008207b0  f1 df 8d e2                                      add sp, sp, #0x3c4
008207b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008207b8  a0 62 9f e5                                      ldr r6, [pc, #0x2a0]
008207bc  04 10 a0 e3                                      mov r1, #4
008207c0  00 20 a0 e3                                      mov r2, #0
008207c4  06 70 94 e7                                      ldr r7, [r4, r6]
008207c8  07 00 a0 e1                                      mov r0, r7
008207cc  09 77 ff eb                                      bl #0x7fe3f8
008207d0  00 00 50 e3                                      cmp r0, #0
008207d4  5a 00 00 1a                                      bne #0x820944
008207d8  06 70 94 e7                                      ldr r7, [r4, r6]
008207dc  05 10 a0 e3                                      mov r1, #5
008207e0  00 20 a0 e3                                      mov r2, #0
008207e4  07 00 a0 e1                                      mov r0, r7
008207e8  02 77 ff eb                                      bl #0x7fe3f8
008207ec  00 00 50 e3                                      cmp r0, #0
008207f0  43 00 00 1a                                      bne #0x820904
008207f4  06 00 94 e7                                      ldr r0, [r4, r6]
008207f8  06 10 a0 e3                                      mov r1, #6
008207fc  01 20 a0 e3                                      mov r2, #1
00820800  fc 76 ff eb                                      bl #0x7fe3f8
00820804  00 00 50 e3                                      cmp r0, #0
00820808  3b 00 00 1a                                      bne #0x8208fc
0082080c  06 60 94 e7                                      ldr r6, [r4, r6]
00820810  07 10 a0 e3                                      mov r1, #7
00820814  01 20 a0 e3                                      mov r2, #1
00820818  06 00 a0 e1                                      mov r0, r6
0082081c  f5 76 ff eb                                      bl #0x7fe3f8
00820820  06 00 a0 e1                                      mov r0, r6
00820824  08 10 a0 e3                                      mov r1, #8
00820828  01 20 a0 e3                                      mov r2, #1
0082082c  f1 76 ff eb                                      bl #0x7fe3f8
00820830  00 00 50 e3                                      cmp r0, #0
00820834  1c 00 00 1a                                      bne #0x8208ac
00820838  34 88 06 e3                                      movw r8, #0x6834
0082083c  08 30 95 e7                                      ldr r3, [r5, r8]
00820840  07 00 53 e3                                      cmp r3, #7
00820844  69 00 00 0a                                      beq #0x8209f0
00820848  09 00 53 e3                                      cmp r3, #9
0082084c  07 00 00 0a                                      beq #0x820870
00820850  03 00 53 e3                                      cmp r3, #3
00820854  d4 ff ff 1a                                      bne #0x8207ac
00820858  ec ee ff eb                                      bl #0x81c410
0082085c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00820860  04 00 53 e3                                      cmp r3, #4
00820864  05 00 00 0a                                      beq #0x820880
00820868  00 00 a0 e3                                      mov r0, #0
0082086c  cf ff ff ea                                      b #0x8207b0
00820870  e6 ee ff eb                                      bl #0x81c410
00820874  14 30 90 e5                                      ldr r3, [r0, #0x14]
00820878  05 00 53 e3                                      cmp r3, #5
0082087c  f9 ff ff 1a                                      bne #0x820868
00820880  dc 31 9f e5                                      ldr r3, [pc, #0x1dc]
00820884  00 60 a0 e3                                      mov r6, #0
00820888  01 15 a0 e3                                      mov r1, #0x400000
0082088c  03 00 94 e7                                      ldr r0, [r4, r3]
00820890  08 60 85 e7                                      str r6, [r5, r8]
00820894  08 10 81 e2                                      add r1, r1, #8
00820898  06 20 a0 e1                                      mov r2, r6
0082089c  06 30 a0 e1                                      mov r3, r6
008208a0  57 76 ff eb                                      bl #0x7fe204
008208a4  06 00 a0 e1                                      mov r0, r6
008208a8  c0 ff ff ea                                      b #0x8207b0
008208ac  d7 ee ff eb                                      bl #0x81c410
008208b0  14 30 90 e5                                      ldr r3, [r0, #0x14]
008208b4  07 00 53 e3                                      cmp r3, #7
008208b8  de ff ff 1a                                      bne #0x820838
008208bc  eb 6f 8d e2                                      add r6, sp, #0x3ac
008208c0  00 30 95 e5                                      ldr r3, [r5]
008208c4  06 00 a0 e1                                      mov r0, r6
008208c8  05 10 a0 e1                                      mov r1, r5
008208cc  0f e0 a0 e1                                      mov lr, pc
008208d0  90 f0 93 e5                                      ldr pc, [r3, #0x90]
008208d4  00 00 a0 e3                                      mov r0, #0
008208d8  28 b7 eb eb                                      bl #0x30e580
008208dc  20 38 06 e3                                      movw r3, #0x6820
008208e0  03 00 85 e7                                      str r0, [r5, r3]
008208e4  00 20 a0 e3                                      mov r2, #0
008208e8  14 30 83 e2                                      add r3, r3, #0x14
008208ec  03 20 85 e7                                      str r2, [r5, r3]
008208f0  06 00 a0 e1                                      mov r0, r6
008208f4  16 7c f0 eb                                      bl #0x43f954
008208f8  ce ff ff ea                                      b #0x820838
008208fc  c3 ee ff eb                                      bl #0x81c410
00820900  c1 ff ff ea                                      b #0x82080c
00820904  c1 ee ff eb                                      bl #0x81c410
00820908  08 30 90 e5                                      ldr r3, [r0, #8]
0082090c  00 00 53 e3                                      cmp r3, #0
00820910  b7 ff ff da                                      ble #0x8207f4
00820914  05 10 a0 e3                                      mov r1, #5
00820918  07 00 a0 e1                                      mov r0, r7
0082091c  b3 76 ff eb                                      bl #0x7fe3f0
00820920  ba ee ff eb                                      bl #0x81c410
00820924  06 20 d0 e5                                      ldrb r2, [r0, #6]
00820928  10 38 06 e3                                      movw r3, #0x6810
0082092c  03 20 c5 e7                                      strb r2, [r5, r3]
00820930  b6 ee ff eb                                      bl #0x81c410
00820934  08 20 90 e5                                      ldr r2, [r0, #8]
00820938  0c 38 06 e3                                      movw r3, #0x680c
0082093c  03 20 85 e7                                      str r2, [r5, r3]
00820940  ab ff ff ea                                      b #0x8207f4
00820944  b1 ee ff eb                                      bl #0x81c410
00820948  08 30 90 e5                                      ldr r3, [r0, #8]
0082094c  00 00 53 e3                                      cmp r3, #0
00820950  24 00 00 ba                                      blt #0x8209e8
00820954  04 10 a0 e3                                      mov r1, #4
00820958  07 00 a0 e1                                      mov r0, r7
0082095c  a3 76 ff eb                                      bl #0x7fe3f0
00820960  aa ee ff eb                                      bl #0x81c410
00820964  06 20 d0 e5                                      ldrb r2, [r0, #6]
00820968  10 38 06 e3                                      movw r3, #0x6810
0082096c  0c 78 06 e3                                      movw r7, #0x680c
00820970  03 20 c5 e7                                      strb r2, [r5, r3]
00820974  a5 ee ff eb                                      bl #0x81c410
00820978  08 30 90 e5                                      ldr r3, [r0, #8]
0082097c  08 a0 8d e2                                      add sl, sp, #8
00820980  08 b0 8a e2                                      add fp, sl, #8
00820984  07 30 85 e7                                      str r3, [r5, r7]
00820988  7b f9 ff eb                                      bl #0x81ef7c
0082098c  03 10 a0 e3                                      mov r1, #3
00820990  4c 5e 00 eb                                      bl #0x8382c8
00820994  07 20 95 e7                                      ldr r2, [r5, r7]
00820998  89 34 a0 e3                                      mov r3, #0x89000000
0082099c  c3 3a a0 e1                                      asr r3, r3, #0x15
008209a0  02 80 a0 e1                                      mov r8, r2
008209a4  c8 9f a0 e1                                      asr sb, r8, #0x1f
008209a8  67 7c 85 e2                                      add r7, r5, #0x6700
008209ac  0f 2d 8d e2                                      add r2, sp, #0x3c0
008209b0  d9 1d 85 e2                                      add r1, r5, #0x3640
008209b4  f3 80 82 e1                                      strd r8, sb, [r2, r3]
008209b8  20 70 87 e2                                      add r7, r7, #0x20
008209bc  10 10 81 e2                                      add r1, r1, #0x10
008209c0  0b 00 a0 e1                                      mov r0, fp
008209c4  a1 e1 ff eb                                      bl #0x819050
008209c8  ef 0f 8d e2                                      add r0, sp, #0x3bc
008209cc  07 10 a0 e1                                      mov r1, r7
008209d0  0a 30 a0 e1                                      mov r3, sl
008209d4  ee 2f 8d e2                                      add r2, sp, #0x3b8
008209d8  b8 73 8d e5                                      str r7, [sp, #0x3b8]
008209dc  12 fd ff eb                                      bl #0x81fe2c
008209e0  0b 00 a0 e1                                      mov r0, fp
008209e4  8a e0 ff eb                                      bl #0x818c14
008209e8  88 ee ff eb                                      bl #0x81c410
008209ec  79 ff ff ea                                      b #0x8207d8
008209f0  86 ee ff eb                                      bl #0x81c410
008209f4  14 30 90 e5                                      ldr r3, [r0, #0x14]
008209f8  07 00 53 e3                                      cmp r3, #7
008209fc  99 ff ff 1a                                      bne #0x820868
00820a00  eb 7f 8d e2                                      add r7, sp, #0x3ac
00820a04  05 10 a0 e1                                      mov r1, r5
00820a08  00 30 95 e5                                      ldr r3, [r5]
00820a0c  07 00 a0 e1                                      mov r0, r7
00820a10  0f e0 a0 e1                                      mov lr, pc
00820a14  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00820a18  00 00 a0 e3                                      mov r0, #0
00820a1c  d7 b6 eb eb                                      bl #0x30e580
00820a20  20 38 06 e3                                      movw r3, #0x6820
00820a24  03 00 85 e7                                      str r0, [r5, r3]
00820a28  38 30 9f e5                                      ldr r3, [pc, #0x38]
00820a2c  00 60 a0 e3                                      mov r6, #0
00820a30  02 15 a0 e3                                      mov r1, #0x800000
00820a34  03 00 94 e7                                      ldr r0, [r4, r3]
00820a38  0e 10 81 e2                                      add r1, r1, #0xe
00820a3c  06 20 a0 e1                                      mov r2, r6
00820a40  06 30 a0 e1                                      mov r3, r6
00820a44  08 60 85 e7                                      str r6, [r5, r8]
00820a48  ed 75 ff eb                                      bl #0x7fe204
00820a4c  07 00 a0 e1                                      mov r0, r7
00820a50  bf 7b f0 eb                                      bl #0x43f954
00820a54  06 00 a0 e1                                      mov r0, r6
00820a58  54 ff ff ea                                      b #0x8207b0
; mapping-symbol data/literal pool
00820a5c  ec 42 17 00 ac 35 00 00 88 15 00 00 3c 34 00 00  .byte 0xec, 0x42, 0x17, 0x00, 0xac, 0x35, 0x00, 0x00, 0x88, 0x15, 0x00, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x00820a6c, declared_size=1040, range_size=1040, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive6UpdateEv
; demangled: CMatchingGLLive::Update()
; decoder-mode: arm
00820a6c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00820a70  ec 53 9f e5                                      ldr r5, [pc, #0x3ec]
00820a74  ec 63 9f e5                                      ldr r6, [pc, #0x3ec]
00820a78  64 d0 4d e2                                      sub sp, sp, #0x64
00820a7c  05 50 8f e0                                      add r5, pc, r5
00820a80  06 30 95 e7                                      ldr r3, [r5, r6]
00820a84  00 40 a0 e1                                      mov r4, r0
00820a88  00 30 93 e5                                      ldr r3, [r3]
00820a8c  5c 30 8d e5                                      str r3, [sp, #0x5c]
00820a90  99 83 ff eb                                      bl #0x8018fc
00820a94  d0 33 9f e5                                      ldr r3, [pc, #0x3d0]
00820a98  03 30 95 e7                                      ldr r3, [r5, r3]
00820a9c  00 30 d3 e5                                      ldrb r3, [r3]
00820aa0  00 00 53 e3                                      cmp r3, #0
00820aa4  03 00 00 0a                                      beq #0x820ab8
00820aa8  eb 77 06 e3                                      movw r7, #0x67eb
00820aac  07 80 d4 e7                                      ldrb r8, [r4, r7]
00820ab0  00 00 58 e3                                      cmp r8, #0
00820ab4  5c 00 00 0a                                      beq #0x820c2c
00820ab8  fb e6 ff eb                                      bl #0x81a6ac
00820abc  00 30 90 e5                                      ldr r3, [r0]
00820ac0  0f e0 a0 e1                                      mov lr, pc
00820ac4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00820ac8  f7 e6 ff eb                                      bl #0x81a6ac
00820acc  11 30 d0 e5                                      ldrb r3, [r0, #0x11]
00820ad0  00 00 53 e3                                      cmp r3, #0
00820ad4  28 00 00 0a                                      beq #0x820b7c
00820ad8  e8 37 06 e3                                      movw r3, #0x67e8
00820adc  03 30 d4 e7                                      ldrb r3, [r4, r3]
00820ae0  00 00 53 e3                                      cmp r3, #0
00820ae4  2b 00 00 0a                                      beq #0x820b98
00820ae8  23 f9 ff eb                                      bl #0x81ef7c
00820aec  00 30 90 e5                                      ldr r3, [r0]
00820af0  0f e0 a0 e1                                      mov lr, pc
00820af4  08 f0 93 e5                                      ldr pc, [r3, #8]
00820af8  0c 70 d4 e5                                      ldrb r7, [r4, #0xc]
00820afc  00 00 57 e3                                      cmp r7, #0
00820b00  07 00 a0 01                                      moveq r0, r7
00820b04  06 00 00 1a                                      bne #0x820b24
00820b08  06 30 95 e7                                      ldr r3, [r5, r6]
00820b0c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00820b10  00 30 93 e5                                      ldr r3, [r3]
00820b14  03 00 52 e1                                      cmp r2, r3
00820b18  d0 00 00 1a                                      bne #0x820e60
00820b1c  64 d0 8d e2                                      add sp, sp, #0x64
00820b20  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00820b24  92 6c ff eb                                      bl #0x7fbd74
00820b28  06 16 a0 e3                                      mov r1, #0x600000
00820b2c  08 00 80 e2                                      add r0, r0, #8
00820b30  01 10 81 e2                                      add r1, r1, #1
00820b34  00 20 a0 e3                                      mov r2, #0
00820b38  2e 76 ff eb                                      bl #0x7fe3f8
00820b3c  00 00 50 e3                                      cmp r0, #0
00820b40  73 00 00 1a                                      bne #0x820d14
00820b44  e8 37 06 e3                                      movw r3, #0x67e8
00820b48  03 30 d4 e7                                      ldrb r3, [r4, r3]
00820b4c  00 00 53 e3                                      cmp r3, #0
00820b50  7f 00 00 1a                                      bne #0x820d54
00820b54  04 00 a0 e1                                      mov r0, r4
00820b58  0b ff ff eb                                      bl #0x82078c
00820b5c  00 70 a0 e1                                      mov r7, r0
00820b60  04 00 a0 e1                                      mov r0, r4
00820b64  ae ef ff eb                                      bl #0x81ca24
00820b68  07 70 80 e1                                      orr r7, r0, r7
00820b6c  04 00 a0 e1                                      mov r0, r4
00820b70  35 ec ff eb                                      bl #0x81bc4c
00820b74  00 00 87 e1                                      orr r0, r7, r0
00820b78  e2 ff ff ea                                      b #0x820b08
00820b7c  10 37 06 e3                                      movw r3, #0x6710
00820b80  03 30 94 e7                                      ldr r3, [r4, r3]
00820b84  03 00 a0 e1                                      mov r0, r3
00820b88  00 30 93 e5                                      ldr r3, [r3]
00820b8c  0f e0 a0 e1                                      mov lr, pc
00820b90  08 f0 93 e5                                      ldr pc, [r3, #8]
00820b94  d7 ff ff ea                                      b #0x820af8
00820b98  08 37 06 e3                                      movw r3, #0x6708
00820b9c  03 70 94 e7                                      ldr r7, [r4, r3]
00820ba0  90 ee ff eb                                      bl #0x81c5e8
00820ba4  59 30 00 eb                                      bl #0x82cd10
00820ba8  00 10 a0 e1                                      mov r1, r0
00820bac  07 00 a0 e1                                      mov r0, r7
00820bb0  85 30 00 eb                                      bl #0x82cdcc
00820bb4  1c 37 06 e3                                      movw r3, #0x671c
00820bb8  03 70 94 e7                                      ldr r7, [r4, r3]
00820bbc  89 ee ff eb                                      bl #0x81c5e8
00820bc0  52 30 00 eb                                      bl #0x82cd10
00820bc4  00 10 a0 e1                                      mov r1, r0
00820bc8  07 00 a0 e1                                      mov r0, r7
00820bcc  7e 30 00 eb                                      bl #0x82cdcc
00820bd0  e9 37 06 e3                                      movw r3, #0x67e9
00820bd4  03 30 d4 e7                                      ldrb r3, [r4, r3]
00820bd8  00 00 53 e3                                      cmp r3, #0
00820bdc  70 00 00 0a                                      beq #0x820da4
00820be0  08 37 06 e3                                      movw r3, #0x6708
00820be4  03 30 94 e7                                      ldr r3, [r4, r3]
00820be8  03 00 a0 e1                                      mov r0, r3
00820bec  00 30 93 e5                                      ldr r3, [r3]
00820bf0  0f e0 a0 e1                                      mov lr, pc
00820bf4  08 f0 93 e5                                      ldr pc, [r3, #8]
00820bf8  67 3c a0 e3                                      mov r3, #0x6700
00820bfc  03 30 94 e7                                      ldr r3, [r4, r3]
00820c00  03 00 a0 e1                                      mov r0, r3
00820c04  00 30 93 e5                                      ldr r3, [r3]
00820c08  0f e0 a0 e1                                      mov lr, pc
00820c0c  08 f0 93 e5                                      ldr pc, [r3, #8]
00820c10  1c 37 06 e3                                      movw r3, #0x671c
00820c14  03 30 94 e7                                      ldr r3, [r4, r3]
00820c18  03 00 a0 e1                                      mov r0, r3
00820c1c  00 30 93 e5                                      ldr r3, [r3]
00820c20  0f e0 a0 e1                                      mov lr, pc
00820c24  08 f0 93 e5                                      ldr pc, [r3, #8]
00820c28  ae ff ff ea                                      b #0x820ae8
00820c2c  02 10 a0 e3                                      mov r1, #2
00820c30  b8 00 a0 e3                                      mov r0, #0xb8
00820c34  4d be eb eb                                      bl #0x310570
00820c38  08 b7 06 e3                                      movw fp, #0x6708
00820c3c  00 a0 a0 e1                                      mov sl, r0
00820c40  26 57 00 eb                                      bl #0x8368e0
00820c44  0b a0 84 e7                                      str sl, [r4, fp]
00820c48  02 10 a0 e3                                      mov r1, #2
00820c4c  04 00 a0 e3                                      mov r0, #4
00820c50  46 be eb eb                                      bl #0x310570
00820c54  14 22 9f e5                                      ldr r2, [pc, #0x214]
00820c58  00 30 a0 e1                                      mov r3, r0
00820c5c  0c a7 06 e3                                      movw sl, #0x670c
00820c60  02 20 95 e7                                      ldr r2, [r5, r2]
00820c64  00 10 a0 e1                                      mov r1, r0
00820c68  67 9c a0 e3                                      mov sb, #0x6700
00820c6c  08 20 82 e2                                      add r2, r2, #8
00820c70  00 20 80 e5                                      str r2, [r0]
00820c74  0b 00 94 e7                                      ldr r0, [r4, fp]
00820c78  0a 30 84 e7                                      str r3, [r4, sl]
00820c7c  1d 30 00 eb                                      bl #0x82ccf8
00820c80  02 10 a0 e3                                      mov r1, #2
00820c84  74 00 a0 e3                                      mov r0, #0x74
00820c88  38 be eb eb                                      bl #0x310570
00820c8c  00 b0 a0 e1                                      mov fp, r0
00820c90  b2 2f 00 eb                                      bl #0x82cb60
00820c94  09 b0 84 e7                                      str fp, [r4, sb]
00820c98  02 10 a0 e3                                      mov r1, #2
00820c9c  08 00 a0 e3                                      mov r0, #8
00820ca0  32 be eb eb                                      bl #0x310570
00820ca4  00 b0 a0 e1                                      mov fp, r0
00820ca8  74 01 00 eb                                      bl #0x821280
00820cac  04 37 06 e3                                      movw r3, #0x6704
00820cb0  03 b0 84 e7                                      str fp, [r4, r3]
00820cb4  09 00 94 e7                                      ldr r0, [r4, sb]
00820cb8  0b 10 a0 e1                                      mov r1, fp
00820cbc  0d 30 00 eb                                      bl #0x82ccf8
00820cc0  02 10 a0 e3                                      mov r1, #2
00820cc4  6c 00 a0 e3                                      mov r0, #0x6c
00820cc8  28 be eb eb                                      bl #0x310570
00820ccc  00 90 a0 e1                                      mov sb, r0
00820cd0  5b 49 00 eb                                      bl #0x833244
00820cd4  1c 37 06 e3                                      movw r3, #0x671c
00820cd8  03 90 84 e7                                      str sb, [r4, r3]
00820cdc  09 00 a0 e1                                      mov r0, sb
00820ce0  0a 10 94 e7                                      ldr r1, [r4, sl]
00820ce4  03 30 00 eb                                      bl #0x82ccf8
00820ce8  01 30 a0 e3                                      mov r3, #1
00820cec  07 30 c4 e7                                      strb r3, [r4, r7]
00820cf0  0c 30 c4 e5                                      strb r3, [r4, #0xc]
00820cf4  78 31 9f e5                                      ldr r3, [pc, #0x178]
00820cf8  02 15 a0 e3                                      mov r1, #0x800000
00820cfc  08 20 a0 e1                                      mov r2, r8
00820d00  03 00 95 e7                                      ldr r0, [r5, r3]
00820d04  01 10 81 e2                                      add r1, r1, #1
00820d08  08 30 a0 e1                                      mov r3, r8
00820d0c  3c 75 ff eb                                      bl #0x7fe204
00820d10  68 ff ff ea                                      b #0x820ab8
00820d14  58 31 9f e5                                      ldr r3, [pc, #0x158]
00820d18  00 20 a0 e3                                      mov r2, #0
00820d1c  02 15 a0 e3                                      mov r1, #0x800000
00820d20  03 10 81 e2                                      add r1, r1, #3
00820d24  03 00 95 e7                                      ldr r0, [r5, r3]
00820d28  02 30 a0 e1                                      mov r3, r2
00820d2c  34 75 ff eb                                      bl #0x7fe204
00820d30  0f 6c ff eb                                      bl #0x7fbd74
00820d34  06 16 a0 e3                                      mov r1, #0x600000
00820d38  08 00 80 e2                                      add r0, r0, #8
00820d3c  01 10 81 e2                                      add r1, r1, #1
00820d40  aa 75 ff eb                                      bl #0x7fe3f0
00820d44  e8 37 06 e3                                      movw r3, #0x67e8
00820d48  03 30 d4 e7                                      ldrb r3, [r4, r3]
00820d4c  00 00 53 e3                                      cmp r3, #0
00820d50  23 00 00 0a                                      beq #0x820de4
00820d54  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
00820d58  03 70 95 e7                                      ldr r7, [r5, r3]
00820d5c  00 30 d7 e5                                      ldrb r3, [r7]
00820d60  00 00 53 e3                                      cmp r3, #0
00820d64  11 00 00 0a                                      beq #0x820db0
00820d68  38 38 06 e3                                      movw r3, #0x6838
00820d6c  03 30 94 e7                                      ldr r3, [r4, r3]
00820d70  06 00 53 e3                                      cmp r3, #6
00820d74  76 ff ff 1a                                      bne #0x820b54
00820d78  00 30 94 e5                                      ldr r3, [r4]
00820d7c  04 00 a0 e1                                      mov r0, r4
00820d80  0f e0 a0 e1                                      mov lr, pc
00820d84  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00820d88  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00820d8c  03 00 50 e1                                      cmp r0, r3
00820d90  6f ff ff 1a                                      bne #0x820b54
00820d94  04 00 a0 e1                                      mov r0, r4
00820d98  07 10 a0 e3                                      mov r1, #7
00820d9c  f5 f8 ff eb                                      bl #0x81f178
00820da0  6b ff ff ea                                      b #0x820b54
00820da4  04 00 a0 e1                                      mov r0, r4
00820da8  66 ee ff eb                                      bl #0x81c748
00820dac  8b ff ff ea                                      b #0x820be0
00820db0  38 38 06 e3                                      movw r3, #0x6838
00820db4  03 30 94 e7                                      ldr r3, [r4, r3]
00820db8  04 00 53 e3                                      cmp r3, #4
00820dbc  64 ff ff 1a                                      bne #0x820b54
00820dc0  73 72 ff eb                                      bl #0x7fd794
00820dc4  fa 1f a0 e3                                      mov r1, #0x3e8
00820dc8  24 10 00 eb                                      bl #0x824e60
00820dcc  00 00 50 e3                                      cmp r0, #0
00820dd0  5f ff ff 0a                                      beq #0x820b54
00820dd4  68 f8 ff eb                                      bl #0x81ef7c
00820dd8  08 10 97 e5                                      ldr r1, [r7, #8]
00820ddc  83 5c 00 eb                                      bl #0x837ff0
00820de0  5b ff ff ea                                      b #0x820b54
00820de4  d9 3d a0 e3                                      mov r3, #0x3640
00820de8  03 10 94 e7                                      ldr r1, [r4, r3]
00820dec  04 00 a0 e1                                      mov r0, r4
00820df0  e9 75 ff eb                                      bl #0x7fe59c
00820df4  00 a0 a0 e1                                      mov sl, r0
00820df8  2b e6 ff eb                                      bl #0x81a6ac
00820dfc  44 70 8d e2                                      add r7, sp, #0x44
00820e00  04 20 8d e2                                      add r2, sp, #4
00820e04  08 80 8d e2                                      add r8, sp, #8
00820e08  04 10 90 e5                                      ldr r1, [r0, #4]
00820e0c  07 00 a0 e1                                      mov r0, r7
00820e10  b5 cc eb eb                                      bl #0x3140ec
00820e14  07 10 a0 e1                                      mov r1, r7
00820e18  08 00 a0 e1                                      mov r0, r8
00820e1c  df f5 ff eb                                      bl #0x81e5a0
00820e20  5a 3f a0 e3                                      mov r3, #0x168
00820e24  93 0a 0a e0                                      mul sl, r3, sl
00820e28  30 3b 03 e3                                      movw r3, #0x3b30
00820e2c  3b 0c 8a e2                                      add r0, sl, #0x3b00
00820e30  30 00 80 e2                                      add r0, r0, #0x30
00820e34  0a a0 84 e0                                      add sl, r4, sl
00820e38  03 30 9a e7                                      ldr r3, [sl, r3]
00820e3c  00 00 84 e0                                      add r0, r4, r0
00820e40  20 10 88 e2                                      add r1, r8, #0x20
00820e44  0f e0 a0 e1                                      mov lr, pc
00820e48  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00820e4c  08 00 a0 e1                                      mov r0, r8
00820e50  88 f0 ff eb                                      bl #0x81d078
00820e54  07 00 a0 e1                                      mov r0, r7
00820e58  fd dc eb eb                                      bl #0x318254
00820e5c  38 ff ff ea                                      b #0x820b44
00820e60  2a b5 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00820e64  14 40 17 00 ac 40 00 00 94 21 00 00 fc 25 00 00  .byte 0x14, 0x40, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0x21, 0x00, 0x00, 0xfc, 0x25, 0x00, 0x00
00820e74  3c 34 00 00 94 0d 00 00                          .byte 0x3c, 0x34, 0x00, 0x00, 0x94, 0x0d, 0x00, 0x00

; FUNCTION 0x00820e7c, declared_size=660, range_size=660, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive9AddServerEiR10CNetworkIdiR15CRoomAttributes
; demangled: CMatchingGLLive::AddServer(int, CNetworkId&, int, CRoomAttributes&)
; decoder-mode: arm
00820e7c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00820e80  7c 82 9f e5                                      ldr r8, [pc, #0x27c]
00820e84  7c 92 9f e5                                      ldr sb, [pc, #0x27c]
00820e88  00 70 a0 e1                                      mov r7, r0
00820e8c  08 80 8f e0                                      add r8, pc, r8
00820e90  09 00 98 e7                                      ldr r0, [r8, sb]
00820e94  41 de 4d e2                                      sub sp, sp, #0x410
00820e98  04 d0 4d e2                                      sub sp, sp, #4
00820e9c  00 c0 90 e5                                      ldr ip, [r0]
00820ea0  67 ac 87 e2                                      add sl, r7, #0x6700
00820ea4  03 b0 a0 e1                                      mov fp, r3
00820ea8  38 34 9d e5                                      ldr r3, [sp, #0x438]
00820eac  5c a0 8a e2                                      add sl, sl, #0x5c
00820eb0  0a 00 a0 e1                                      mov r0, sl
00820eb4  0a 00 8d e8                                      stm sp, {r1, r3}
00820eb8  0c c4 8d e5                                      str ip, [sp, #0x40c]
00820ebc  02 50 a0 e1                                      mov r5, r2
00820ec0  29 b5 ff eb                                      bl #0x80e36c
00820ec4  f0 39 03 e3                                      movw r3, #0x39f0
00820ec8  03 60 97 e7                                      ldr r6, [r7, r3]
00820ecc  e7 4d 87 e2                                      add r4, r7, #0x39c0
00820ed0  28 40 84 e2                                      add r4, r4, #0x28
00820ed4  06 00 54 e1                                      cmp r4, r6
00820ed8  0f 00 00 0a                                      beq #0x820f1c
00820edc  1c 00 86 e2                                      add r0, r6, #0x1c
00820ee0  05 10 a0 e1                                      mov r1, r5
00820ee4  94 6a ff eb                                      bl #0x7fb93c
00820ee8  00 00 50 e3                                      cmp r0, #0
00820eec  72 00 00 1a                                      bne #0x8210bc
00820ef0  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00820ef4  00 00 52 e3                                      cmp r2, #0
00820ef8  01 00 00 1a                                      bne #0x820f04
00820efc  61 00 00 ea                                      b #0x821088
00820f00  03 20 a0 e1                                      mov r2, r3
00820f04  08 30 92 e5                                      ldr r3, [r2, #8]
00820f08  00 00 53 e3                                      cmp r3, #0
00820f0c  fb ff ff 1a                                      bne #0x820f00
00820f10  02 60 a0 e1                                      mov r6, r2
00820f14  06 00 54 e1                                      cmp r4, r6
00820f18  ef ff ff 1a                                      bne #0x820edc
00820f1c  10 60 8d e2                                      add r6, sp, #0x10
00820f20  06 00 a0 e1                                      mov r0, r6
00820f24  a0 f7 ff eb                                      bl #0x81edac
00820f28  00 30 9d e5                                      ldr r3, [sp]
00820f2c  04 c0 86 e2                                      add ip, r6, #4
00820f30  0c 00 55 e1                                      cmp r5, ip
00820f34  10 30 8d e5                                      str r3, [sp, #0x10]
00820f38  04 00 00 0a                                      beq #0x820f50
00820f3c  05 e0 a0 e1                                      mov lr, r5
00820f40  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00820f44  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00820f48  07 00 9e e8                                      ldm lr, {r0, r1, r2}
00820f4c  07 00 8c e8                                      stm ip, {r0, r1, r2}
00820f50  0f 72 ff eb                                      bl #0x7fd794
00820f54  00 30 90 e5                                      ldr r3, [r0]
00820f58  0f e0 a0 e1                                      mov lr, pc
00820f5c  00 f0 93 e5                                      ldr pc, [r3]
00820f60  fd 3f 8d e2                                      add r3, sp, #0x3f4
00820f64  00 30 8d e5                                      str r3, [sp]
00820f68  30 00 8d e5                                      str r0, [sp, #0x30]
00820f6c  a3 e6 ff eb                                      bl #0x81aa00
00820f70  00 30 a0 e1                                      mov r3, r0
00820f74  00 30 93 e5                                      ldr r3, [r3]
00820f78  00 10 a0 e1                                      mov r1, r0
00820f7c  05 20 a0 e1                                      mov r2, r5
00820f80  00 00 9d e5                                      ldr r0, [sp]
00820f84  0f e0 a0 e1                                      mov lr, pc
00820f88  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00820f8c  04 24 9d e5                                      ldr r2, [sp, #0x404]
00820f90  08 14 9d e5                                      ldr r1, [sp, #0x408]
00820f94  24 00 86 e2                                      add r0, r6, #0x24
00820f98  90 be eb eb                                      bl #0x3109e0
00820f9c  00 00 9d e5                                      ldr r0, [sp]
00820fa0  ab dc eb eb                                      bl #0x318254
00820fa4  04 10 9d e5                                      ldr r1, [sp, #4]
00820fa8  48 00 86 e2                                      add r0, r6, #0x48
00820fac  4c b0 8d e5                                      str fp, [sp, #0x4c]
00820fb0  5d de ff eb                                      bl #0x81892c
00820fb4  3c 26 03 e3                                      movw r2, #0x363c
00820fb8  02 30 97 e7                                      ldr r3, [r7, r2]
00820fbc  04 10 46 e2                                      sub r1, r6, #4
00820fc0  04 00 a0 e1                                      mov r0, r4
00820fc4  01 c0 83 e2                                      add ip, r3, #1
00820fc8  02 c0 87 e7                                      str ip, [r7, r2]
00820fcc  0c 30 8d e5                                      str r3, [sp, #0xc]
00820fd0  f0 87 ff eb                                      bl #0x802f98
00820fd4  10 30 9d e5                                      ldr r3, [sp, #0x10]
00820fd8  00 c0 a0 e1                                      mov ip, r0
00820fdc  04 e0 86 e2                                      add lr, r6, #4
00820fe0  04 30 8c e4                                      str r3, [ip], #4
00820fe4  0e 00 5c e1                                      cmp ip, lr
00820fe8  00 40 a0 e1                                      mov r4, r0
00820fec  0f 00 be 18                                      ldmne lr!, {r0, r1, r2, r3}
00820ff0  0f 00 ac 18                                      stmne ip!, {r0, r1, r2, r3}
00820ff4  0c 30 a0 11                                      movne r3, ip
00820ff8  07 00 9e 18                                      ldmne lr, {r0, r1, r2}
00820ffc  07 00 83 18                                      stmne r3, {r0, r1, r2}
00821000  24 30 86 e2                                      add r3, r6, #0x24
00821004  24 00 84 e2                                      add r0, r4, #0x24
00821008  03 00 50 e1                                      cmp r0, r3
0082100c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00821010  20 30 84 e5                                      str r3, [r4, #0x20]
00821014  02 00 00 0a                                      beq #0x821024
00821018  48 10 9d e5                                      ldr r1, [sp, #0x48]
0082101c  44 20 9d e5                                      ldr r2, [sp, #0x44]
00821020  6e be eb eb                                      bl #0x3109e0
00821024  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00821028  48 00 84 e2                                      add r0, r4, #0x48
0082102c  48 10 86 e2                                      add r1, r6, #0x48
00821030  3c 30 84 e5                                      str r3, [r4, #0x3c]
00821034  50 30 9d e5                                      ldr r3, [sp, #0x50]
00821038  40 30 84 e5                                      str r3, [r4, #0x40]
0082103c  3a de ff eb                                      bl #0x81892c
00821040  30 36 03 e3                                      movw r3, #0x3630
00821044  03 30 d7 e7                                      ldrb r3, [r7, r3]
00821048  00 00 53 e3                                      cmp r3, #0
0082104c  23 00 00 1a                                      bne #0x8210e0
00821050  48 00 86 e2                                      add r0, r6, #0x48
00821054  ee de ff eb                                      bl #0x818c14
00821058  24 00 86 e2                                      add r0, r6, #0x24
0082105c  7c dc eb eb                                      bl #0x318254
00821060  0a 00 a0 e1                                      mov r0, sl
00821064  bf b4 ff eb                                      bl #0x80e368
00821068  09 30 98 e7                                      ldr r3, [r8, sb]
0082106c  0c 24 9d e5                                      ldr r2, [sp, #0x40c]
00821070  00 30 93 e5                                      ldr r3, [r3]
00821074  03 00 52 e1                                      cmp r2, r3
00821078  20 00 00 1a                                      bne #0x821100
0082107c  14 d0 8d e2                                      add sp, sp, #0x14
00821080  01 db 8d e2                                      add sp, sp, #0x400
00821084  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00821088  04 30 96 e5                                      ldr r3, [r6, #4]
0082108c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00821090  01 00 56 e1                                      cmp r6, r1
00821094  05 00 00 1a                                      bne #0x8210b0
00821098  03 60 a0 e1                                      mov r6, r3
0082109c  04 30 93 e5                                      ldr r3, [r3, #4]
008210a0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008210a4  06 00 52 e1                                      cmp r2, r6
008210a8  fa ff ff 0a                                      beq #0x821098
008210ac  0c 20 96 e5                                      ldr r2, [r6, #0xc]
008210b0  03 00 52 e1                                      cmp r2, r3
008210b4  03 60 a0 11                                      movne r6, r3
008210b8  85 ff ff ea                                      b #0x820ed4
008210bc  b4 71 ff eb                                      bl #0x7fd794
008210c0  00 30 90 e5                                      ldr r3, [r0]
008210c4  0f e0 a0 e1                                      mov lr, pc
008210c8  00 f0 93 e5                                      ldr pc, [r3]
008210cc  54 b0 86 e5                                      str fp, [r6, #0x54]
008210d0  38 00 86 e5                                      str r0, [r6, #0x38]
008210d4  0a 00 a0 e1                                      mov r0, sl
008210d8  a2 b4 ff eb                                      bl #0x80e368
008210dc  e1 ff ff ea                                      b #0x821068
008210e0  24 30 9f e5                                      ldr r3, [pc, #0x24]
008210e4  00 20 a0 e3                                      mov r2, #0
008210e8  02 15 a0 e3                                      mov r1, #0x800000
008210ec  03 00 98 e7                                      ldr r0, [r8, r3]
008210f0  0e 10 81 e2                                      add r1, r1, #0xe
008210f4  02 30 a0 e1                                      mov r3, r2
008210f8  41 74 ff eb                                      bl #0x7fe204
008210fc  d3 ff ff ea                                      b #0x821050
00821100  82 b4 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00821104  04 3c 17 00 ac 40 00 00 3c 34 00 00              .byte 0x04, 0x3c, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x3c, 0x34, 0x00, 0x00

; FUNCTION 0x00821110, declared_size=120, range_size=120, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive20ProcessServerMessageER10CNetworkIdR12NetBitStream
; demangled: CMatchingGLLive::ProcessServerMessage(CNetworkId&, NetBitStream&)
; decoder-mode: arm
00821110  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00821114  f3 df 4d e2                                      sub sp, sp, #0x3cc
00821118  02 50 a0 e1                                      mov r5, r2
0082111c  00 70 a0 e1                                      mov r7, r0
00821120  ee 74 ff eb                                      bl #0x7fe4e0
00821124  00 00 50 e3                                      cmp r0, #0
00821128  14 00 00 1a                                      bne #0x821180
0082112c  3a 6e 8d e2                                      add r6, sp, #0x3a0
00821130  08 40 8d e2                                      add r4, sp, #8
00821134  06 00 a0 e1                                      mov r0, r6
00821138  91 6c ff eb                                      bl #0x7fc384
0082113c  04 00 a0 e1                                      mov r0, r4
00821140  0f e0 ff eb                                      bl #0x819184
00821144  28 20 a0 e3                                      mov r2, #0x28
00821148  05 00 a0 e1                                      mov r0, r5
0082114c  06 10 a0 e1                                      mov r1, r6
00821150  b4 b6 ff eb                                      bl #0x80ec28
00821154  04 00 a0 e1                                      mov r0, r4
00821158  05 10 a0 e1                                      mov r1, r5
0082115c  3e db ff eb                                      bl #0x817e5c
00821160  07 00 a0 e1                                      mov r0, r7
00821164  bc 13 9d e5                                      ldr r1, [sp, #0x3bc]
00821168  06 20 a0 e1                                      mov r2, r6
0082116c  c0 33 9d e5                                      ldr r3, [sp, #0x3c0]
00821170  00 40 8d e5                                      str r4, [sp]
00821174  40 ff ff eb                                      bl #0x820e7c
00821178  04 00 a0 e1                                      mov r0, r4
0082117c  a4 de ff eb                                      bl #0x818c14
00821180  f3 df 8d e2                                      add sp, sp, #0x3cc
00821184  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00821188, declared_size=144, range_size=144, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive31BroadcastPacketReceiverCallbackER10CNetworkIdPci
; demangled: CMatchingGLLive::BroadcastPacketReceiverCallback(CNetworkId&, char*, int)
; decoder-mode: arm
00821188  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0082118c  28 d0 4d e2                                      sub sp, sp, #0x28
00821190  04 40 8d e2                                      add r4, sp, #4
00821194  03 50 a0 e1                                      mov r5, r3
00821198  02 80 a0 e1                                      mov r8, r2
0082119c  00 70 a0 e1                                      mov r7, r0
008211a0  01 60 a0 e1                                      mov r6, r1
008211a4  04 00 a0 e1                                      mov r0, r4
008211a8  03 10 a0 e1                                      mov r1, r3
008211ac  d5 b5 ff eb                                      bl #0x80e908
008211b0  04 00 a0 e1                                      mov r0, r4
008211b4  08 10 a0 e1                                      mov r1, r8
008211b8  05 20 a0 e1                                      mov r2, r5
008211bc  1e b7 ff eb                                      bl #0x80ee3c
008211c0  04 00 a0 e1                                      mov r0, r4
008211c4  24 10 8d e2                                      add r1, sp, #0x24
008211c8  01 20 a0 e3                                      mov r2, #1
008211cc  95 b6 ff eb                                      bl #0x80ec28
008211d0  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
008211d4  01 00 53 e3                                      cmp r3, #1
008211d8  09 00 00 0a                                      beq #0x821204
008211dc  02 00 53 e3                                      cmp r3, #2
008211e0  03 00 00 1a                                      bne #0x8211f4
008211e4  07 00 a0 e1                                      mov r0, r7
008211e8  06 10 a0 e1                                      mov r1, r6
008211ec  04 20 a0 e1                                      mov r2, r4
008211f0  a7 ea ff eb                                      bl #0x81bc94
008211f4  04 00 a0 e1                                      mov r0, r4
008211f8  64 b5 ff eb                                      bl #0x80e790
008211fc  28 d0 8d e2                                      add sp, sp, #0x28
00821200  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00821204  07 00 a0 e1                                      mov r0, r7
00821208  06 10 a0 e1                                      mov r1, r6
0082120c  04 20 a0 e1                                      mov r2, r4
00821210  be ff ff eb                                      bl #0x821110
00821214  f6 ff ff ea                                      b #0x8211f4

; FUNCTION 0x00821218, declared_size=60, range_size=60, mode=arm
; class-group: CMatchingGLLive
; alias: _ZN15CMatchingGLLive32sBroadcastPacketReceiverCallbackER10CNetworkIdPci
; demangled: CMatchingGLLive::sBroadcastPacketReceiverCallback(CNetworkId&, char*, int)
; decoder-mode: arm
00821218  2c c0 9f e5                                      ldr ip, [pc, #0x2c]
0082121c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00821220  30 00 2d e9                                      push {r4, r5}
00821224  0c c0 8f e0                                      add ip, pc, ip
00821228  00 50 a0 e1                                      mov r5, r0
0082122c  03 00 9c e7                                      ldr r0, [ip, r3]
00821230  01 40 a0 e1                                      mov r4, r1
00821234  02 30 a0 e1                                      mov r3, r2
00821238  00 00 90 e5                                      ldr r0, [r0]
0082123c  05 10 a0 e1                                      mov r1, r5
00821240  04 20 a0 e1                                      mov r2, r4
00821244  30 00 bd e8                                      pop {r4, r5}
00821248  ce ff ff ea                                      b #0x821188
; mapping-symbol data/literal pool
0082124c  6c 38 17 00 38 43 00 00                          .byte 0x6c, 0x38, 0x17, 0x00, 0x38, 0x43, 0x00, 0x00
