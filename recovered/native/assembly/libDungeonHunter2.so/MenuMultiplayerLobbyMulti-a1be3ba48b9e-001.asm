; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00435714, declared_size=72, range_size=72, mode=arm
; class-group: MenuMultiplayerLobbyMulti
; alias: _ZN25MenuMultiplayerLobbyMulti6UpdateEv
; demangled: MenuMultiplayerLobbyMulti::Update()
; decoder-mode: arm
00435714  30 40 2d e9                                      push {r4, r5, lr}
00435718  00 40 a0 e1                                      mov r4, r0
0043571c  0c d0 4d e2                                      sub sp, sp, #0xc
00435720  2e b2 ff eb                                      bl #0x421fe0
00435724  48 00 84 e2                                      add r0, r4, #0x48
00435728  04 50 94 e5                                      ldr r5, [r4, #4]
0043572c  84 42 fd eb                                      bl #0x386144
00435730  20 20 9f e5                                      ldr r2, [pc, #0x20]
00435734  00 c0 a0 e3                                      mov ip, #0
00435738  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
0043573c  05 00 a0 e1                                      mov r0, r5
00435740  02 20 8f e0                                      add r2, pc, r2
00435744  0c 30 a0 e1                                      mov r3, ip
00435748  00 c0 8d e5                                      str ip, [sp]
0043574c  ae d9 0d eb                                      bl #0x7abe0c
00435750  0c d0 8d e2                                      add sp, sp, #0xc
00435754  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00435758  c8 5f 49 00                                      .byte 0xc8, 0x5f, 0x49, 0x00

; FUNCTION 0x0043575c, declared_size=4, range_size=4, mode=arm
; class-group: MenuMultiplayerLobbyMulti
; alias: _ZN25MenuMultiplayerLobbyMulti4HideEv
; demangled: MenuMultiplayerLobbyMulti::Hide()
; decoder-mode: arm
0043575c  e4 bc ff ea                                      b #0x424af4

; FUNCTION 0x00435760, declared_size=4, range_size=4, mode=arm
; class-group: MenuMultiplayerLobbyMulti
; alias: _ZN25MenuMultiplayerLobbyMulti4ShowEv
; demangled: MenuMultiplayerLobbyMulti::Show()
; decoder-mode: arm
00435760  3a bf ff ea                                      b #0x425450

; FUNCTION 0x00435764, declared_size=52, range_size=52, mode=arm
; class-group: MenuMultiplayerLobbyMulti
; alias: _ZN25MenuMultiplayerLobbyMultiD1Ev
; demangled: MenuMultiplayerLobbyMulti::~MenuMultiplayerLobbyMulti()
; decoder-mode: arm
00435764  24 30 9f e5                                      ldr r3, [pc, #0x24]
00435768  24 20 9f e5                                      ldr r2, [pc, #0x24]
0043576c  10 40 2d e9                                      push {r4, lr}
00435770  03 30 8f e0                                      add r3, pc, r3
00435774  02 20 93 e7                                      ldr r2, [r3, r2]
00435778  00 40 a0 e1                                      mov r4, r0
0043577c  08 20 82 e2                                      add r2, r2, #8
00435780  00 20 80 e5                                      str r2, [r0]
00435784  7a b4 ff eb                                      bl #0x422974
00435788  04 00 a0 e1                                      mov r0, r4
0043578c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00435790  20 f3 55 00 fc 27 00 00                          .byte 0x20, 0xf3, 0x55, 0x00, 0xfc, 0x27, 0x00, 0x00

; FUNCTION 0x00435798, declared_size=28, range_size=28, mode=arm
; class-group: MenuMultiplayerLobbyMulti
; alias: _ZN25MenuMultiplayerLobbyMultiD0Ev
; demangled: MenuMultiplayerLobbyMulti::~MenuMultiplayerLobbyMulti()
; decoder-mode: arm
00435798  10 40 2d e9                                      push {r4, lr}
0043579c  00 40 a0 e1                                      mov r4, r0
004357a0  ef ff ff eb                                      bl #0x435764
004357a4  04 00 a0 e1                                      mov r0, r4
004357a8  24 6b fb eb                                      bl #0x310440
004357ac  04 00 a0 e1                                      mov r0, r4
004357b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004357b4, declared_size=52, range_size=52, mode=arm
; class-group: MenuMultiplayerLobbyMulti
; alias: _ZN25MenuMultiplayerLobbyMultiD2Ev
; demangled: MenuMultiplayerLobbyMulti::~MenuMultiplayerLobbyMulti()
; decoder-mode: arm
004357b4  24 30 9f e5                                      ldr r3, [pc, #0x24]
004357b8  24 20 9f e5                                      ldr r2, [pc, #0x24]
004357bc  10 40 2d e9                                      push {r4, lr}
004357c0  03 30 8f e0                                      add r3, pc, r3
004357c4  02 20 93 e7                                      ldr r2, [r3, r2]
004357c8  00 40 a0 e1                                      mov r4, r0
004357cc  08 20 82 e2                                      add r2, r2, #8
004357d0  00 20 80 e5                                      str r2, [r0]
004357d4  66 b4 ff eb                                      bl #0x422974
004357d8  04 00 a0 e1                                      mov r0, r4
004357dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004357e0  d0 f2 55 00 fc 27 00 00                          .byte 0xd0, 0xf2, 0x55, 0x00, 0xfc, 0x27, 0x00, 0x00

; FUNCTION 0x004357e8, declared_size=76, range_size=76, mode=arm
; class-group: MenuMultiplayerLobbyMulti
; alias: _ZN25MenuMultiplayerLobbyMultiC1Ev
; demangled: MenuMultiplayerLobbyMulti::MenuMultiplayerLobbyMulti()
; decoder-mode: arm
004357e8  38 10 9f e5                                      ldr r1, [pc, #0x38]
004357ec  70 40 2d e9                                      push {r4, r5, r6, lr}
004357f0  01 10 8f e0                                      add r1, pc, r1
004357f4  30 40 9f e5                                      ldr r4, [pc, #0x30]
004357f8  00 50 a0 e1                                      mov r5, r0
004357fc  7f c6 ff eb                                      bl #0x427200
00435800  28 30 9f e5                                      ldr r3, [pc, #0x28]
00435804  04 40 8f e0                                      add r4, pc, r4
00435808  03 30 94 e7                                      ldr r3, [r4, r3]
0043580c  08 30 83 e2                                      add r3, r3, #8
00435810  00 30 85 e5                                      str r3, [r5]
00435814  9c dc ff eb                                      bl #0x42ca8c
00435818  05 10 a0 e1                                      mov r1, r5
0043581c  9c e5 ff eb                                      bl #0x42ee94
00435820  05 00 a0 e1                                      mov r0, r5
00435824  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00435828  30 5f 49 00 8c f2 55 00 fc 27 00 00              .byte 0x30, 0x5f, 0x49, 0x00, 0x8c, 0xf2, 0x55, 0x00, 0xfc, 0x27, 0x00, 0x00

; FUNCTION 0x00435834, declared_size=76, range_size=76, mode=arm
; class-group: MenuMultiplayerLobbyMulti
; alias: _ZN25MenuMultiplayerLobbyMultiC2Ev
; demangled: MenuMultiplayerLobbyMulti::MenuMultiplayerLobbyMulti()
; decoder-mode: arm
00435834  38 10 9f e5                                      ldr r1, [pc, #0x38]
00435838  70 40 2d e9                                      push {r4, r5, r6, lr}
0043583c  01 10 8f e0                                      add r1, pc, r1
00435840  30 40 9f e5                                      ldr r4, [pc, #0x30]
00435844  00 50 a0 e1                                      mov r5, r0
00435848  6c c6 ff eb                                      bl #0x427200
0043584c  28 30 9f e5                                      ldr r3, [pc, #0x28]
00435850  04 40 8f e0                                      add r4, pc, r4
00435854  03 30 94 e7                                      ldr r3, [r4, r3]
00435858  08 30 83 e2                                      add r3, r3, #8
0043585c  00 30 85 e5                                      str r3, [r5]
00435860  89 dc ff eb                                      bl #0x42ca8c
00435864  05 10 a0 e1                                      mov r1, r5
00435868  89 e5 ff eb                                      bl #0x42ee94
0043586c  05 00 a0 e1                                      mov r0, r5
00435870  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00435874  e4 5e 49 00 40 f2 55 00 fc 27 00 00              .byte 0xe4, 0x5e, 0x49, 0x00, 0x40, 0xf2, 0x55, 0x00, 0xfc, 0x27, 0x00, 0x00

; FUNCTION 0x00435880, declared_size=136, range_size=136, mode=arm
; class-group: MenuMultiplayerLobbyMulti
; alias: _ZN25MenuMultiplayerLobbyMulti11GetInstanceEv
; demangled: MenuMultiplayerLobbyMulti::GetInstance()
; decoder-mode: arm
00435880  70 40 2d e9                                      push {r4, r5, r6, lr}
00435884  68 50 9f e5                                      ldr r5, [pc, #0x68]
00435888  68 40 9f e5                                      ldr r4, [pc, #0x68]
0043588c  05 50 8f e0                                      add r5, pc, r5
00435890  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00435894  04 40 8f e0                                      add r4, pc, r4
00435898  01 00 13 e3                                      tst r3, #1
0043589c  03 00 00 0a                                      beq #0x4358b0
004358a0  54 00 9f e5                                      ldr r0, [pc, #0x54]
004358a4  00 00 8f e0                                      add r0, pc, r0
004358a8  10 00 80 e2                                      add r0, r0, #0x10
004358ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
004358b0  0c 60 85 e2                                      add r6, r5, #0xc
004358b4  06 00 a0 e1                                      mov r0, r6
004358b8  ab 63 fb eb                                      bl #0x30e76c
004358bc  00 00 50 e3                                      cmp r0, #0
004358c0  f6 ff ff 0a                                      beq #0x4358a0
004358c4  10 50 85 e2                                      add r5, r5, #0x10
004358c8  05 00 a0 e1                                      mov r0, r5
004358cc  c5 ff ff eb                                      bl #0x4357e8
004358d0  06 00 a0 e1                                      mov r0, r6
004358d4  58 64 fb eb                                      bl #0x30ea3c
004358d8  20 30 9f e5                                      ldr r3, [pc, #0x20]
004358dc  05 00 a0 e1                                      mov r0, r5
004358e0  03 10 94 e7                                      ldr r1, [r4, r3]
004358e4  18 30 9f e5                                      ldr r3, [pc, #0x18]
004358e8  03 20 94 e7                                      ldr r2, [r4, r3]
004358ec  84 62 fb eb                                      bl #0x30e304
004358f0  ea ff ff ea                                      b #0x4358a0
; mapping-symbol data/literal pool
004358f4  84 00 57 00 fc f1 55 00 6c 00 57 00 6c 3c 00 00  .byte 0x84, 0x00, 0x57, 0x00, 0xfc, 0xf1, 0x55, 0x00, 0x6c, 0x00, 0x57, 0x00, 0x6c, 0x3c, 0x00, 0x00
00435904  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00
