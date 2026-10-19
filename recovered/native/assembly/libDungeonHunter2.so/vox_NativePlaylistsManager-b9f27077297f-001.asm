; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00882448, declared_size=28, range_size=28, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManagerC2Ev
; demangled: vox::NativePlaylistsManager::NativePlaylistsManager()
; decoder-mode: arm
00882448  00 20 a0 e3                                      mov r2, #0
0088244c  01 10 a0 e3                                      mov r1, #1
00882450  0c 20 80 e5                                      str r2, [r0, #0xc]
00882454  00 10 c0 e5                                      strb r1, [r0]
00882458  04 20 80 e5                                      str r2, [r0, #4]
0088245c  08 20 80 e5                                      str r2, [r0, #8]
00882460  1e ff 2f e1                                      bx lr

; FUNCTION 0x00882464, declared_size=28, range_size=28, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManagerC1Ev
; demangled: vox::NativePlaylistsManager::NativePlaylistsManager()
; decoder-mode: arm
00882464  00 20 a0 e3                                      mov r2, #0
00882468  01 10 a0 e3                                      mov r1, #1
0088246c  0c 20 80 e5                                      str r2, [r0, #0xc]
00882470  00 10 c0 e5                                      strb r1, [r0]
00882474  04 20 80 e5                                      str r2, [r0, #4]
00882478  08 20 80 e5                                      str r2, [r0, #8]
0088247c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00882480, declared_size=8, range_size=8, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManager14GetNbPlaylistsEv
; demangled: vox::NativePlaylistsManager::GetNbPlaylists()
; decoder-mode: arm
00882480  08 00 90 e5                                      ldr r0, [r0, #8]
00882484  1e ff 2f e1                                      bx lr

; FUNCTION 0x00882488, declared_size=56, range_size=56, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManager18GetPlaylistElementEiii
; demangled: vox::NativePlaylistsManager::GetPlaylistElement(int, int, int)
; decoder-mode: arm
00882488  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0088248c  00 00 52 e3                                      cmp r2, #0
00882490  01 01 90 e7                                      ldr r0, [r0, r1, lsl #2]
00882494  06 00 00 0a                                      beq #0x8824b4
00882498  01 00 52 e3                                      cmp r2, #1
0088249c  00 00 00 1a                                      bne #0x8824a4
008824a0  91 fe ff ea                                      b #0x881eec
008824a4  02 00 52 e3                                      cmp r2, #2
008824a8  02 00 00 0a                                      beq #0x8824b8
008824ac  00 00 a0 e3                                      mov r0, #0
008824b0  1e ff 2f e1                                      bx lr
008824b4  af fe ff ea                                      b #0x881f78
008824b8  03 10 a0 e1                                      mov r1, r3
008824bc  9f fe ff ea                                      b #0x881f40

; FUNCTION 0x008824c0, declared_size=8, range_size=8, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManager7IsValidEv
; demangled: vox::NativePlaylistsManager::IsValid()
; decoder-mode: arm
008824c0  00 00 d0 e5                                      ldrb r0, [r0]
008824c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008824c8, declared_size=12, range_size=12, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManager25PeekAtNextPlaylistElementEi
; demangled: vox::NativePlaylistsManager::PeekAtNextPlaylistElement(int)
; decoder-mode: arm
008824c8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
008824cc  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
008824d0  33 ff ff ea                                      b #0x8821a4

; FUNCTION 0x008824d4, declared_size=20, range_size=20, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManager13ResetPlaylistEi
; demangled: vox::NativePlaylistsManager::ResetPlaylist(int)
; decoder-mode: arm
008824d4  00 00 51 e3                                      cmp r1, #0
008824d8  1e ff 2f b1                                      bxlt lr
008824dc  0c 30 90 e5                                      ldr r3, [r0, #0xc]
008824e0  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
008824e4  7f ff ff ea                                      b #0x8822e8

; FUNCTION 0x008824e8, declared_size=12, range_size=12, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManager26SetPlaylistToPreviousStateEi
; demangled: vox::NativePlaylistsManager::SetPlaylistToPreviousState(int)
; decoder-mode: arm
008824e8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
008824ec  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
008824f0  c5 ff ff ea                                      b #0x88240c

; FUNCTION 0x008824f4, declared_size=84, range_size=84, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManager8SetStateERS0_
; demangled: vox::NativePlaylistsManager::SetState(vox::NativePlaylistsManager&)
; decoder-mode: arm
008824f4  70 40 2d e9                                      push {r4, r5, r6, lr}
008824f8  00 30 d1 e5                                      ldrb r3, [r1]
008824fc  08 20 90 e5                                      ldr r2, [r0, #8]
00882500  01 60 a0 e1                                      mov r6, r1
00882504  00 30 c0 e5                                      strb r3, [r0]
00882508  04 30 91 e5                                      ldr r3, [r1, #4]
0088250c  00 00 52 e3                                      cmp r2, #0
00882510  00 50 a0 e1                                      mov r5, r0
00882514  04 30 80 e5                                      str r3, [r0, #4]
00882518  09 00 00 da                                      ble #0x882544
0088251c  00 40 a0 e3                                      mov r4, #0
00882520  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00882524  0c 20 95 e5                                      ldr r2, [r5, #0xc]
00882528  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
0088252c  04 01 92 e7                                      ldr r0, [r2, r4, lsl #2]
00882530  8a ff ff eb                                      bl #0x882360
00882534  08 30 95 e5                                      ldr r3, [r5, #8]
00882538  01 40 84 e2                                      add r4, r4, #1
0088253c  04 00 53 e1                                      cmp r3, r4
00882540  f6 ff ff ca                                      bgt #0x882520
00882544  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00882548, declared_size=32, range_size=32, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManager4InitEi
; demangled: vox::NativePlaylistsManager::Init(int)
; decoder-mode: arm
00882548  10 40 2d e9                                      push {r4, lr}
0088254c  00 40 a0 e1                                      mov r4, r0
00882550  01 01 a0 e1                                      lsl r0, r1, #2
00882554  e7 37 ea eb                                      bl #0x3104f8
00882558  00 00 50 e3                                      cmp r0, #0
0088255c  0c 00 84 e5                                      str r0, [r4, #0xc]
00882560  00 00 c4 05                                      strbeq r0, [r4]
00882564  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00882568, declared_size=80, range_size=80, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManager11AddPlaylistEiPNS_13PlaylistInfosE
; demangled: vox::NativePlaylistsManager::AddPlaylist(int, vox::PlaylistInfos*)
; decoder-mode: arm
00882568  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088256c  00 40 a0 e1                                      mov r4, r0
00882570  01 50 a0 e1                                      mov r5, r1
00882574  3c 00 a0 e3                                      mov r0, #0x3c
00882578  00 10 a0 e3                                      mov r1, #0
0088257c  02 70 a0 e1                                      mov r7, r2
00882580  30 38 ea eb                                      bl #0x310648
00882584  07 10 a0 e1                                      mov r1, r7
00882588  00 60 a0 e1                                      mov r6, r0
0088258c  42 fe ff eb                                      bl #0x881e9c
00882590  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00882594  05 61 83 e7                                      str r6, [r3, r5, lsl #2]
00882598  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088259c  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
008825a0  00 00 53 e3                                      cmp r3, #0
008825a4  08 30 94 15                                      ldrne r3, [r4, #8]
008825a8  00 30 c4 05                                      strbeq r3, [r4]
008825ac  01 30 83 12                                      addne r3, r3, #1
008825b0  08 30 84 15                                      strne r3, [r4, #8]
008825b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x008826b4, declared_size=108, range_size=108, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManagerD1Ev
; demangled: vox::NativePlaylistsManager::~NativePlaylistsManager()
; decoder-mode: arm
008826b4  70 40 2d e9                                      push {r4, r5, r6, lr}
008826b8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
008826bc  00 50 a0 e1                                      mov r5, r0
008826c0  00 00 53 e3                                      cmp r3, #0
008826c4  13 00 00 0a                                      beq #0x882718
008826c8  08 20 90 e5                                      ldr r2, [r0, #8]
008826cc  00 00 52 e3                                      cmp r2, #0
008826d0  0c 00 00 da                                      ble #0x882708
008826d4  00 40 a0 e3                                      mov r4, #0
008826d8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
008826dc  00 00 50 e3                                      cmp r0, #0
008826e0  05 00 00 0a                                      beq #0x8826fc
008826e4  b3 ff ff eb                                      bl #0x8825b8
008826e8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
008826ec  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
008826f0  53 37 ea eb                                      bl #0x310444
008826f4  08 20 95 e5                                      ldr r2, [r5, #8]
008826f8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
008826fc  01 40 84 e2                                      add r4, r4, #1
00882700  04 00 52 e1                                      cmp r2, r4
00882704  f3 ff ff ca                                      bgt #0x8826d8
00882708  03 00 a0 e1                                      mov r0, r3
0088270c  4c 37 ea eb                                      bl #0x310444
00882710  00 30 a0 e3                                      mov r3, #0
00882714  0c 30 85 e5                                      str r3, [r5, #0xc]
00882718  05 00 a0 e1                                      mov r0, r5
0088271c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00882720, declared_size=108, range_size=108, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManagerD2Ev
; demangled: vox::NativePlaylistsManager::~NativePlaylistsManager()
; decoder-mode: arm
00882720  70 40 2d e9                                      push {r4, r5, r6, lr}
00882724  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00882728  00 50 a0 e1                                      mov r5, r0
0088272c  00 00 53 e3                                      cmp r3, #0
00882730  13 00 00 0a                                      beq #0x882784
00882734  08 20 90 e5                                      ldr r2, [r0, #8]
00882738  00 00 52 e3                                      cmp r2, #0
0088273c  0c 00 00 da                                      ble #0x882774
00882740  00 40 a0 e3                                      mov r4, #0
00882744  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00882748  00 00 50 e3                                      cmp r0, #0
0088274c  05 00 00 0a                                      beq #0x882768
00882750  98 ff ff eb                                      bl #0x8825b8
00882754  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00882758  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
0088275c  38 37 ea eb                                      bl #0x310444
00882760  08 20 95 e5                                      ldr r2, [r5, #8]
00882764  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00882768  01 40 84 e2                                      add r4, r4, #1
0088276c  04 00 52 e1                                      cmp r2, r4
00882770  f3 ff ff ca                                      bgt #0x882744
00882774  03 00 a0 e1                                      mov r0, r3
00882778  31 37 ea eb                                      bl #0x310444
0088277c  00 30 a0 e3                                      mov r3, #0
00882780  0c 30 85 e5                                      str r3, [r5, #0xc]
00882784  05 00 a0 e1                                      mov r0, r5
00882788  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00882c0c, declared_size=64, range_size=64, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManager27TransposePlaylistParametersEii
; demangled: vox::NativePlaylistsManager::TransposePlaylistParameters(int, int)
; decoder-mode: arm
00882c0c  30 40 2d e9                                      push {r4, r5, lr}
00882c10  02 00 51 e1                                      cmp r1, r2
00882c14  24 d0 4d e2                                      sub sp, sp, #0x24
00882c18  01 30 a0 e1                                      mov r3, r1
00882c1c  08 00 00 0a                                      beq #0x882c44
00882c20  0c c0 90 e5                                      ldr ip, [r0, #0xc]
00882c24  04 40 8d e2                                      add r4, sp, #4
00882c28  04 10 a0 e1                                      mov r1, r4
00882c2c  02 51 9c e7                                      ldr r5, [ip, r2, lsl #2]
00882c30  03 01 9c e7                                      ldr r0, [ip, r3, lsl #2]
00882c34  b2 fc ff eb                                      bl #0x881f04
00882c38  05 00 a0 e1                                      mov r0, r5
00882c3c  04 10 a0 e1                                      mov r1, r4
00882c40  a6 ff ff eb                                      bl #0x882ae0
00882c44  24 d0 8d e2                                      add sp, sp, #0x24
00882c48  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x008839c8, declared_size=52, range_size=52, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManager18AddPlaylistElementEPNS_20PlaylistElementInfosE
; demangled: vox::NativePlaylistsManager::AddPlaylistElement(vox::PlaylistElementInfos*)
; decoder-mode: arm
008839c8  70 40 2d e9                                      push {r4, r5, r6, lr}
008839cc  00 20 91 e5                                      ldr r2, [r1]
008839d0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
008839d4  00 40 a0 e1                                      mov r4, r0
008839d8  01 50 a0 e1                                      mov r5, r1
008839dc  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
008839e0  b7 ff ff eb                                      bl #0x8838c4
008839e4  00 20 95 e5                                      ldr r2, [r5]
008839e8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
008839ec  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
008839f0  e9 f9 ff eb                                      bl #0x88219c
008839f4  00 00 c4 e5                                      strb r0, [r4]
008839f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00883ca4, declared_size=52, range_size=52, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManager8AddGroupEPNS_10GroupInfosE
; demangled: vox::NativePlaylistsManager::AddGroup(vox::GroupInfos*)
; decoder-mode: arm
00883ca4  70 40 2d e9                                      push {r4, r5, r6, lr}
00883ca8  00 20 91 e5                                      ldr r2, [r1]
00883cac  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00883cb0  00 40 a0 e1                                      mov r4, r0
00883cb4  01 50 a0 e1                                      mov r5, r1
00883cb8  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00883cbc  d0 ff ff eb                                      bl #0x883c04
00883cc0  00 20 95 e5                                      ldr r2, [r5]
00883cc4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00883cc8  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00883ccc  32 f9 ff eb                                      bl #0x88219c
00883cd0  00 00 c4 e5                                      strb r0, [r4]
00883cd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00883eac, declared_size=188, range_size=188, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManagerC1ERS0_
; demangled: vox::NativePlaylistsManager::NativePlaylistsManager(vox::NativePlaylistsManager&)
; decoder-mode: arm
00883eac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00883eb0  01 30 a0 e3                                      mov r3, #1
00883eb4  00 30 c0 e5                                      strb r3, [r0]
00883eb8  04 30 91 e5                                      ldr r3, [r1, #4]
00883ebc  00 40 a0 e3                                      mov r4, #0
00883ec0  18 00 80 e9                                      stmib r0, {r3, r4}
00883ec4  00 50 a0 e1                                      mov r5, r0
00883ec8  08 00 91 e5                                      ldr r0, [r1, #8]
00883ecc  01 60 a0 e1                                      mov r6, r1
00883ed0  00 01 a0 e1                                      lsl r0, r0, #2
00883ed4  87 31 ea eb                                      bl #0x3104f8
00883ed8  04 00 50 e1                                      cmp r0, r4
00883edc  0c 00 85 e5                                      str r0, [r5, #0xc]
00883ee0  15 00 00 1a                                      bne #0x883f3c
00883ee4  19 00 00 ea                                      b #0x883f50
00883ee8  00 10 a0 e3                                      mov r1, #0
00883eec  3c 00 a0 e3                                      mov r0, #0x3c
00883ef0  d4 31 ea eb                                      bl #0x310648
00883ef4  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00883ef8  00 70 a0 e1                                      mov r7, r0
00883efc  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
00883f00  74 ff ff eb                                      bl #0x883cd8
00883f04  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00883f08  04 71 83 e7                                      str r7, [r3, r4, lsl #2]
00883f0c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00883f10  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
00883f14  00 00 52 e3                                      cmp r2, #0
00883f18  0f 00 00 0a                                      beq #0x883f5c
00883f1c  08 20 95 e5                                      ldr r2, [r5, #8]
00883f20  01 20 82 e2                                      add r2, r2, #1
00883f24  08 20 85 e5                                      str r2, [r5, #8]
00883f28  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00883f2c  9a f8 ff eb                                      bl #0x88219c
00883f30  00 00 50 e3                                      cmp r0, #0
00883f34  01 40 84 e2                                      add r4, r4, #1
00883f38  04 00 00 0a                                      beq #0x883f50
00883f3c  08 30 96 e5                                      ldr r3, [r6, #8]
00883f40  04 00 53 e1                                      cmp r3, r4
00883f44  e7 ff ff ca                                      bgt #0x883ee8
00883f48  05 00 a0 e1                                      mov r0, r5
00883f4c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00883f50  00 00 c5 e5                                      strb r0, [r5]
00883f54  05 00 a0 e1                                      mov r0, r5
00883f58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00883f5c  00 20 c5 e5                                      strb r2, [r5]
00883f60  05 00 a0 e1                                      mov r0, r5
00883f64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00883f68, declared_size=188, range_size=188, mode=arm
; class-group: vox::NativePlaylistsManager
; alias: _ZN3vox22NativePlaylistsManagerC2ERS0_
; demangled: vox::NativePlaylistsManager::NativePlaylistsManager(vox::NativePlaylistsManager&)
; decoder-mode: arm
00883f68  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00883f6c  01 30 a0 e3                                      mov r3, #1
00883f70  00 30 c0 e5                                      strb r3, [r0]
00883f74  04 30 91 e5                                      ldr r3, [r1, #4]
00883f78  00 40 a0 e3                                      mov r4, #0
00883f7c  18 00 80 e9                                      stmib r0, {r3, r4}
00883f80  00 50 a0 e1                                      mov r5, r0
00883f84  08 00 91 e5                                      ldr r0, [r1, #8]
00883f88  01 60 a0 e1                                      mov r6, r1
00883f8c  00 01 a0 e1                                      lsl r0, r0, #2
00883f90  58 31 ea eb                                      bl #0x3104f8
00883f94  04 00 50 e1                                      cmp r0, r4
00883f98  0c 00 85 e5                                      str r0, [r5, #0xc]
00883f9c  15 00 00 1a                                      bne #0x883ff8
00883fa0  19 00 00 ea                                      b #0x88400c
00883fa4  00 10 a0 e3                                      mov r1, #0
00883fa8  3c 00 a0 e3                                      mov r0, #0x3c
00883fac  a5 31 ea eb                                      bl #0x310648
00883fb0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00883fb4  00 70 a0 e1                                      mov r7, r0
00883fb8  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
00883fbc  45 ff ff eb                                      bl #0x883cd8
00883fc0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00883fc4  04 71 83 e7                                      str r7, [r3, r4, lsl #2]
00883fc8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00883fcc  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
00883fd0  00 00 52 e3                                      cmp r2, #0
00883fd4  0f 00 00 0a                                      beq #0x884018
00883fd8  08 20 95 e5                                      ldr r2, [r5, #8]
00883fdc  01 20 82 e2                                      add r2, r2, #1
00883fe0  08 20 85 e5                                      str r2, [r5, #8]
00883fe4  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00883fe8  6b f8 ff eb                                      bl #0x88219c
00883fec  00 00 50 e3                                      cmp r0, #0
00883ff0  01 40 84 e2                                      add r4, r4, #1
00883ff4  04 00 00 0a                                      beq #0x88400c
00883ff8  08 30 96 e5                                      ldr r3, [r6, #8]
00883ffc  04 00 53 e1                                      cmp r3, r4
00884000  e7 ff ff ca                                      bgt #0x883fa4
00884004  05 00 a0 e1                                      mov r0, r5
00884008  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0088400c  00 00 c5 e5                                      strb r0, [r5]
00884010  05 00 a0 e1                                      mov r0, r5
00884014  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00884018  00 20 c5 e5                                      strb r2, [r5]
0088401c  05 00 a0 e1                                      mov r0, r5
00884020  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
