; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036921c, declared_size=124, range_size=124, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager11UnloadSoundEi
; demangled: VoxSoundManager::UnloadSound(int)
; decoder-mode: arm
0036921c  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00369220  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00369224  30 40 2d e9                                      push {r4, r5, lr}
00369228  03 30 8f e0                                      add r3, pc, r3
0036922c  02 20 93 e7                                      ldr r2, [r3, r2]
00369230  0c d0 4d e2                                      sub sp, sp, #0xc
00369234  00 40 a0 e1                                      mov r4, r0
00369238  00 50 d2 e5                                      ldrb r5, [r2]
0036923c  00 00 55 e3                                      cmp r5, #0
00369240  10 00 00 1a                                      bne #0x369288
00369244  00 00 51 e3                                      cmp r1, #0
00369248  0e 00 00 ba                                      blt #0x369288
0036924c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00369250  03 00 51 e1                                      cmp r1, r3
00369254  0b 00 00 aa                                      bge #0x369288
00369258  08 30 90 e5                                      ldr r3, [r0, #8]
0036925c  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00369260  00 00 53 e3                                      cmp r3, #0
00369264  07 00 00 0a                                      beq #0x369288
00369268  03 00 a0 e1                                      mov r0, r3
0036926c  00 30 93 e5                                      ldr r3, [r3]
00369270  04 10 8d e5                                      str r1, [sp, #4]
00369274  0f e0 a0 e1                                      mov lr, pc
00369278  04 f0 93 e5                                      ldr pc, [r3, #4]
0036927c  08 30 94 e5                                      ldr r3, [r4, #8]
00369280  04 10 9d e5                                      ldr r1, [sp, #4]
00369284  01 51 83 e7                                      str r5, [r3, r1, lsl #2]
00369288  0c d0 8d e2                                      add sp, sp, #0xc
0036928c  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00369290  68 b8 62 00 30 3b 00 00                          .byte 0x68, 0xb8, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00

; FUNCTION 0x00369298, declared_size=88, range_size=88, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager15UnloadAllSoundsEv
; demangled: VoxSoundManager::UnloadAllSounds()
; decoder-mode: arm
00369298  48 30 9f e5                                      ldr r3, [pc, #0x48]
0036929c  48 20 9f e5                                      ldr r2, [pc, #0x48]
003692a0  70 40 2d e9                                      push {r4, r5, r6, lr}
003692a4  03 30 8f e0                                      add r3, pc, r3
003692a8  02 20 93 e7                                      ldr r2, [r3, r2]
003692ac  00 50 a0 e1                                      mov r5, r0
003692b0  00 40 d2 e5                                      ldrb r4, [r2]
003692b4  00 00 54 e3                                      cmp r4, #0
003692b8  09 00 00 1a                                      bne #0x3692e4
003692bc  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003692c0  00 00 53 e3                                      cmp r3, #0
003692c4  06 00 00 da                                      ble #0x3692e4
003692c8  04 10 a0 e1                                      mov r1, r4
003692cc  05 00 a0 e1                                      mov r0, r5
003692d0  d1 ff ff eb                                      bl #0x36921c
003692d4  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
003692d8  01 40 84 e2                                      add r4, r4, #1
003692dc  04 00 53 e1                                      cmp r3, r4
003692e0  f8 ff ff ca                                      bgt #0x3692c8
003692e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003692e8  ec b7 62 00 30 3b 00 00                          .byte 0xec, 0xb7, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00

; FUNCTION 0x003692f0, declared_size=88, range_size=88, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager24ConvertVisual3DToSound3DERKN6glitch4core8vector3dIfEE
; demangled: VoxSoundManager::ConvertVisual3DToSound3D(glitch::core::vector3d<float> const&)
; decoder-mode: arm
003692f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003692f4  01 50 a0 e1                                      mov r5, r1
003692f8  0a 17 0d e3                                      movw r1, #0xd70a
003692fc  00 40 a0 e1                                      mov r4, r0
00369300  23 1c 43 e3                                      movt r1, #0x3c23
00369304  04 00 95 e5                                      ldr r0, [r5, #4]
00369308  97 96 fe eb                                      bl #0x30ed6c
0036930c  0a 17 0d e3                                      movw r1, #0xd70a
00369310  00 70 a0 e1                                      mov r7, r0
00369314  23 1c 43 e3                                      movt r1, #0x3c23
00369318  08 00 95 e5                                      ldr r0, [r5, #8]
0036931c  92 96 fe eb                                      bl #0x30ed6c
00369320  0a 17 0d e3                                      movw r1, #0xd70a
00369324  00 60 a0 e1                                      mov r6, r0
00369328  23 1c 43 e3                                      movt r1, #0x3c23
0036932c  00 00 95 e5                                      ldr r0, [r5]
00369330  8d 96 fe eb                                      bl #0x30ed6c
00369334  04 70 84 e5                                      str r7, [r4, #4]
00369338  00 00 84 e5                                      str r0, [r4]
0036933c  08 60 84 e5                                      str r6, [r4, #8]
00369340  04 00 a0 e1                                      mov r0, r4
00369344  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00369348, declared_size=4, range_size=4, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager14SetIPodShuffleEv
; demangled: VoxSoundManager::SetIPodShuffle()
; decoder-mode: arm
00369348  1e ff 2f e1                                      bx lr

; FUNCTION 0x0036934c, declared_size=4, range_size=4, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager15UpdateIPodAsyncEv
; demangled: VoxSoundManager::UpdateIPodAsync()
; decoder-mode: arm
0036934c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00369480, declared_size=4, range_size=4, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager20GetIPodPlaylistCountEv
; demangled: VoxSoundManager::GetIPodPlaylistCount()
; decoder-mode: arm
00369480  62 29 07 ea                                      b #0x533a10

; FUNCTION 0x00369484, declared_size=28, range_size=28, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager15SetIPodPlaylistEi
; demangled: VoxSoundManager::SetIPodPlaylist(int)
; decoder-mode: arm
00369484  01 30 a0 e3                                      mov r3, #1
00369488  10 40 2d e9                                      push {r4, lr}
0036948c  33 30 c0 e5                                      strb r3, [r0, #0x33]
00369490  01 00 a0 e1                                      mov r0, r1
00369494  ed 28 07 eb                                      bl #0x533850
00369498  10 40 bd e8                                      pop {r4, lr}
0036949c  49 29 07 ea                                      b #0x5339c8

; FUNCTION 0x003694d4, declared_size=64, range_size=64, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager14BackToMainMenuEv
; demangled: VoxSoundManager::BackToMainMenu()
; decoder-mode: arm
003694d4  04 e0 2d e5                                      str lr, [sp, #-4]!
003694d8  0c d0 4d e2                                      sub sp, sp, #0xc
003694dc  6a 0d 03 eb                                      bl #0x42ca8c
003694e0  a9 0d 03 eb                                      bl #0x42cb8c
003694e4  20 10 9f e5                                      ldr r1, [pc, #0x20]
003694e8  20 20 9f e5                                      ldr r2, [pc, #0x20]
003694ec  00 c0 a0 e3                                      mov ip, #0
003694f0  01 10 8f e0                                      add r1, pc, r1
003694f4  02 20 8f e0                                      add r2, pc, r2
003694f8  0c 30 a0 e1                                      mov r3, ip
003694fc  00 c0 8d e5                                      str ip, [sp]
00369500  b8 10 11 eb                                      bl #0x7ad7e8
00369504  0c d0 8d e2                                      add sp, sp, #0xc
00369508  00 80 bd e8                                      ldm sp!, {pc}
; mapping-symbol data/literal pool
0036950c  30 7a 55 00 44 7a 55 00                          .byte 0x30, 0x7a, 0x55, 0x00, 0x44, 0x7a, 0x55, 0x00

; FUNCTION 0x00369514, declared_size=224, range_size=224, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager13SetMusicStateEPKc
; demangled: VoxSoundManager::SetMusicState(char const*)
; decoder-mode: arm
00369514  70 43 2d e9                                      push {r4, r5, r6, r8, sb, lr}
00369518  24 20 90 e5                                      ldr r2, [r0, #0x24]
0036951c  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00369520  28 d0 4d e2                                      sub sp, sp, #0x28
00369524  00 00 52 e3                                      cmp r2, #0
00369528  00 40 a0 e1                                      mov r4, r0
0036952c  01 60 a0 e1                                      mov r6, r1
00369530  03 30 8f e0                                      add r3, pc, r3
00369534  28 00 00 ba                                      blt #0x3695dc
00369538  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0036953c  01 10 93 e7                                      ldr r1, [r3, r1]
00369540  00 10 d1 e5                                      ldrb r1, [r1]
00369544  00 00 51 e3                                      cmp r1, #0
00369548  23 00 00 1a                                      bne #0x3695dc
0036954c  98 c0 9f e5                                      ldr ip, [pc, #0x98]
00369550  0c 50 a0 e3                                      mov r5, #0xc
00369554  08 00 90 e5                                      ldr r0, [r0, #8]
00369558  0c c0 93 e7                                      ldr ip, [r3, ip]
0036955c  00 c0 9c e5                                      ldr ip, [ip]
00369560  95 c2 22 e0                                      mla r2, r5, r2, ip
00369564  04 20 92 e5                                      ldr r2, [r2, #4]
00369568  02 c1 90 e7                                      ldr ip, [r0, r2, lsl #2]
0036956c  00 00 5c e3                                      cmp ip, #0
00369570  19 00 00 0a                                      beq #0x3695dc
00369574  74 c0 9f e5                                      ldr ip, [pc, #0x74]
00369578  00 80 e0 e3                                      mvn r8, #0
0036957c  00 90 e0 e3                                      mvn sb, #0
00369580  0c c0 93 e7                                      ldr ip, [r3, ip]
00369584  f8 80 cd e1                                      strd r8, sb, [sp, #8]
00369588  08 c0 8c e2                                      add ip, ip, #8
0036958c  28 50 8d e2                                      add r5, sp, #0x28
00369590  20 10 8d e5                                      str r1, [sp, #0x20]
00369594  28 c0 25 e5                                      str ip, [r5, #-0x28]!
00369598  10 10 8d e5                                      str r1, [sp, #0x10]
0036959c  14 10 8d e5                                      str r1, [sp, #0x14]
003695a0  18 10 8d e5                                      str r1, [sp, #0x18]
003695a4  1c 10 8d e5                                      str r1, [sp, #0x1c]
003695a8  02 11 90 e7                                      ldr r1, [r0, r2, lsl #2]
003695ac  01 30 a0 e3                                      mov r3, #1
003695b0  00 00 94 e5                                      ldr r0, [r4]
003695b4  0d 20 a0 e1                                      mov r2, sp
003695b8  e2 e3 13 eb                                      bl #0x862548
003695bc  00 00 50 e3                                      cmp r0, #0
003695c0  03 00 00 da                                      ble #0x3695d4
003695c4  00 00 94 e5                                      ldr r0, [r4]
003695c8  06 20 a0 e1                                      mov r2, r6
003695cc  0d 10 a0 e1                                      mov r1, sp
003695d0  d4 e0 13 eb                                      bl #0x861928
003695d4  0d 00 a0 e1                                      mov r0, sp
003695d8  73 fb 13 eb                                      bl #0x8683ac
003695dc  28 d0 8d e2                                      add sp, sp, #0x28
003695e0  70 83 bd e8                                      pop {r4, r5, r6, r8, sb, pc}
; mapping-symbol data/literal pool
003695e4  60 b5 62 00 30 3b 00 00 3c 3e 00 00 28 2e 00 00  .byte 0x60, 0xb5, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x3c, 0x3e, 0x00, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x003695f4, declared_size=232, range_size=232, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager15SetLevelRoutingEi
; demangled: VoxSoundManager::SetLevelRouting(int)
; decoder-mode: arm
003695f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003695f8  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
003695fc  c4 50 9f e5                                      ldr r5, [pc, #0xc4]
00369600  82 df 4d e2                                      sub sp, sp, #0x208
00369604  04 40 8f e0                                      add r4, pc, r4
00369608  05 20 94 e7                                      ldr r2, [r4, r5]
0036960c  01 00 71 e3                                      cmn r1, #1
00369610  01 30 a0 e1                                      mov r3, r1
00369614  00 20 92 e5                                      ldr r2, [r2]
00369618  00 70 a0 e1                                      mov r7, r0
0036961c  04 22 8d e5                                      str r2, [sp, #0x204]
00369620  04 00 00 0a                                      beq #0x369638
00369624  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00369628  02 20 94 e7                                      ldr r2, [r4, r2]
0036962c  00 20 d2 e5                                      ldrb r2, [r2]
00369630  00 00 52 e3                                      cmp r2, #0
00369634  07 00 00 0a                                      beq #0x369658
00369638  00 00 a0 e3                                      mov r0, #0
0036963c  05 30 94 e7                                      ldr r3, [r4, r5]
00369640  04 22 9d e5                                      ldr r2, [sp, #0x204]
00369644  00 30 93 e5                                      ldr r3, [r3]
00369648  03 00 52 e1                                      cmp r2, r3
0036964c  1b 00 00 1a                                      bne #0x3696c0
00369650  82 df 8d e2                                      add sp, sp, #0x208
00369654  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00369658  70 20 9f e5                                      ldr r2, [pc, #0x70]
0036965c  70 10 9f e5                                      ldr r1, [pc, #0x70]
00369660  04 60 8d e2                                      add r6, sp, #4
00369664  02 20 94 e7                                      ldr r2, [r4, r2]
00369668  01 10 94 e7                                      ldr r1, [r4, r1]
0036966c  06 00 a0 e1                                      mov r0, r6
00369670  00 20 92 e5                                      ldr r2, [r2]
00369674  00 10 91 e5                                      ldr r1, [r1]
00369678  48 80 a0 e3                                      mov r8, #0x48
0036967c  98 23 28 e0                                      mla r8, r8, r3, r2
00369680  a6 93 fe eb                                      bl #0x30e520
00369684  06 00 a0 e1                                      mov r0, r6
00369688  f1 91 fe eb                                      bl #0x30de54
0036968c  44 10 9f e5                                      ldr r1, [pc, #0x44]
00369690  0e 20 a0 e3                                      mov r2, #0xe
00369694  00 00 86 e0                                      add r0, r6, r0
00369698  01 10 8f e0                                      add r1, pc, r1
0036969c  71 94 fe eb                                      bl #0x30e868
003696a0  0c 10 98 e5                                      ldr r1, [r8, #0xc]
003696a4  06 00 a0 e1                                      mov r0, r6
003696a8  b8 95 fe eb                                      bl #0x30ed90
003696ac  00 00 97 e5                                      ldr r0, [r7]
003696b0  06 10 a0 e1                                      mov r1, r6
003696b4  c9 e0 13 eb                                      bl #0x8619e0
003696b8  01 00 a0 e3                                      mov r0, #1
003696bc  de ff ff ea                                      b #0x36963c
003696c0  12 93 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003696c4  8c b4 62 00 ac 40 00 00 30 3b 00 00 74 08 00 00  .byte 0x8c, 0xb4, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x74, 0x08, 0x00, 0x00
003696d4  00 06 00 00 c0 78 55 00                          .byte 0x00, 0x06, 0x00, 0x00, 0xc0, 0x78, 0x55, 0x00

; FUNCTION 0x003696dc, declared_size=296, range_size=296, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager14IsSoundPlayingEi
; demangled: VoxSoundManager::IsSoundPlaying(int)
; decoder-mode: arm
003696dc  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
003696e0  10 31 9f e5                                      ldr r3, [pc, #0x110]
003696e4  00 00 51 e3                                      cmp r1, #0
003696e8  65 df 4d e2                                      sub sp, sp, #0x194
003696ec  00 60 a0 e1                                      mov r6, r0
003696f0  03 30 8f e0                                      add r3, pc, r3
003696f4  36 00 00 ba                                      blt #0x3697d4
003696f8  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
003696fc  02 20 93 e7                                      ldr r2, [r3, r2]
00369700  00 40 d2 e5                                      ldrb r4, [r2]
00369704  00 00 54 e3                                      cmp r4, #0
00369708  35 00 00 1a                                      bne #0x3697e4
0036970c  08 20 90 e5                                      ldr r2, [r0, #8]
00369710  01 01 92 e7                                      ldr r0, [r2, r1, lsl #2]
00369714  00 00 50 e3                                      cmp r0, #0
00369718  2d 00 00 0a                                      beq #0x3697d4
0036971c  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
00369720  0d 50 a0 e1                                      mov r5, sp
00369724  6e cf 8d e2                                      add ip, sp, #0x1b8
00369728  00 00 93 e7                                      ldr r0, [r3, r0]
0036972c  00 80 e0 e3                                      mvn r8, #0
00369730  28 30 8d e2                                      add r3, sp, #0x28
00369734  08 00 80 e2                                      add r0, r0, #8
00369738  00 90 e0 e3                                      mvn sb, #0
0036973c  f0 82 43 e1                                      strd r8, sb, [r3, #-0x20]
00369740  18 40 03 e5                                      str r4, [r3, #-0x18]
00369744  14 40 03 e5                                      str r4, [r3, #-0x14]
00369748  10 40 03 e5                                      str r4, [r3, #-0x10]
0036974c  0c 40 03 e5                                      str r4, [r3, #-0xc]
00369750  08 40 03 e5                                      str r4, [r3, #-8]
00369754  28 00 03 e5                                      str r0, [r3, #-0x28]
00369758  28 30 83 e2                                      add r3, r3, #0x28
0036975c  0c 00 53 e1                                      cmp r3, ip
00369760  f5 ff ff 1a                                      bne #0x36973c
00369764  01 11 92 e7                                      ldr r1, [r2, r1, lsl #2]
00369768  00 00 96 e5                                      ldr r0, [r6]
0036976c  0d 20 a0 e1                                      mov r2, sp
00369770  0a 30 a0 e3                                      mov r3, #0xa
00369774  73 e3 13 eb                                      bl #0x862548
00369778  00 80 50 e2                                      subs r8, r0, #0
0036977c  16 00 00 da                                      ble #0x3697dc
00369780  28 70 a0 e3                                      mov r7, #0x28
00369784  01 00 00 ea                                      b #0x369790
00369788  08 00 54 e1                                      cmp r4, r8
0036978c  12 00 00 0a                                      beq #0x3697dc
00369790  97 54 21 e0                                      mla r1, r7, r4, r5
00369794  00 00 96 e5                                      ldr r0, [r6]
00369798  e6 e1 13 eb                                      bl #0x861f38
0036979c  00 00 50 e3                                      cmp r0, #0
003697a0  01 40 84 e2                                      add r4, r4, #1
003697a4  f7 ff ff 0a                                      beq #0x369788
003697a8  01 60 a0 e3                                      mov r6, #1
003697ac  19 4e 8d e2                                      add r4, sp, #0x190
003697b0  28 30 34 e5                                      ldr r3, [r4, #-0x28]!
003697b4  04 00 a0 e1                                      mov r0, r4
003697b8  0f e0 a0 e1                                      mov lr, pc
003697bc  00 f0 93 e5                                      ldr pc, [r3]
003697c0  05 00 54 e1                                      cmp r4, r5
003697c4  f9 ff ff 1a                                      bne #0x3697b0
003697c8  06 00 a0 e1                                      mov r0, r6
003697cc  65 df 8d e2                                      add sp, sp, #0x194
003697d0  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
003697d4  00 60 a0 e3                                      mov r6, #0
003697d8  fa ff ff ea                                      b #0x3697c8
003697dc  00 60 a0 e3                                      mov r6, #0
003697e0  f1 ff ff ea                                      b #0x3697ac
003697e4  01 00 a0 e1                                      mov r0, r1
003697e8  9d 20 07 eb                                      bl #0x531a64
003697ec  00 60 50 e2                                      subs r6, r0, #0
003697f0  01 60 a0 13                                      movne r6, #1
003697f4  f3 ff ff ea                                      b #0x3697c8
; mapping-symbol data/literal pool
003697f8  a0 b3 62 00 30 3b 00 00 28 2e 00 00              .byte 0xa0, 0xb3, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x00369804, declared_size=236, range_size=236, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager14IsMusicPlayingEv
; demangled: VoxSoundManager::IsMusicPlaying()
; decoder-mode: arm
00369804  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00369808  24 10 90 e5                                      ldr r1, [r0, #0x24]
0036980c  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
00369810  2c d0 4d e2                                      sub sp, sp, #0x2c
00369814  01 00 71 e3                                      cmn r1, #1
00369818  00 40 a0 e1                                      mov r4, r0
0036981c  02 20 8f e0                                      add r2, pc, r2
00369820  2b 00 00 0a                                      beq #0x3698d4
00369824  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
00369828  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
0036982c  0c c0 a0 e3                                      mov ip, #0xc
00369830  00 00 92 e7                                      ldr r0, [r2, r0]
00369834  03 30 92 e7                                      ldr r3, [r2, r3]
00369838  00 60 e0 e3                                      mvn r6, #0
0036983c  00 20 90 e5                                      ldr r2, [r0]
00369840  00 70 e0 e3                                      mvn r7, #0
00369844  08 00 94 e5                                      ldr r0, [r4, #8]
00369848  9c 21 21 e0                                      mla r1, ip, r1, r2
0036984c  08 30 83 e2                                      add r3, r3, #8
00369850  04 10 91 e5                                      ldr r1, [r1, #4]
00369854  f8 60 cd e1                                      strd r6, r7, [sp, #8]
00369858  00 20 a0 e3                                      mov r2, #0
0036985c  20 20 8d e5                                      str r2, [sp, #0x20]
00369860  10 20 8d e5                                      str r2, [sp, #0x10]
00369864  14 20 8d e5                                      str r2, [sp, #0x14]
00369868  18 20 8d e5                                      str r2, [sp, #0x18]
0036986c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00369870  00 30 8d e5                                      str r3, [sp]
00369874  01 11 90 e7                                      ldr r1, [r0, r1, lsl #2]
00369878  02 00 51 e1                                      cmp r1, r2
0036987c  10 00 00 0a                                      beq #0x3698c4
00369880  01 30 a0 e3                                      mov r3, #1
00369884  00 00 94 e5                                      ldr r0, [r4]
00369888  0d 20 a0 e1                                      mov r2, sp
0036988c  2d e3 13 eb                                      bl #0x862548
00369890  00 00 50 e3                                      cmp r0, #0
00369894  0d 50 a0 e1                                      mov r5, sp
00369898  00 30 9d d5                                      ldrle r3, [sp]
0036989c  09 00 00 da                                      ble #0x3698c8
003698a0  00 00 94 e5                                      ldr r0, [r4]
003698a4  0d 10 a0 e1                                      mov r1, sp
003698a8  a2 e1 13 eb                                      bl #0x861f38
003698ac  00 30 9d e5                                      ldr r3, [sp]
003698b0  00 40 a0 e1                                      mov r4, r0
003698b4  0d 00 a0 e1                                      mov r0, sp
003698b8  0f e0 a0 e1                                      mov lr, pc
003698bc  00 f0 93 e5                                      ldr pc, [r3]
003698c0  04 00 00 ea                                      b #0x3698d8
003698c4  0d 50 a0 e1                                      mov r5, sp
003698c8  0d 00 a0 e1                                      mov r0, sp
003698cc  0f e0 a0 e1                                      mov lr, pc
003698d0  00 f0 93 e5                                      ldr pc, [r3]
003698d4  00 40 a0 e3                                      mov r4, #0
003698d8  04 00 a0 e1                                      mov r0, r4
003698dc  2c d0 8d e2                                      add sp, sp, #0x2c
003698e0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003698e4  74 b2 62 00 3c 3e 00 00 28 2e 00 00              .byte 0x74, 0xb2, 0x62, 0x00, 0x3c, 0x3e, 0x00, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x003698f0, declared_size=160, range_size=160, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager12StopAllMusicEi
; demangled: VoxSoundManager::StopAllMusic(int)
; decoder-mode: arm
003698f0  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003698f4  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
003698f8  30 40 2d e9                                      push {r4, r5, lr}
003698fc  03 30 8f e0                                      add r3, pc, r3
00369900  02 20 93 e7                                      ldr r2, [r3, r2]
00369904  0c d0 4d e2                                      sub sp, sp, #0xc
00369908  00 40 a0 e1                                      mov r4, r0
0036990c  00 30 d2 e5                                      ldrb r3, [r2]
00369910  01 50 a0 e1                                      mov r5, r1
00369914  00 00 53 e3                                      cmp r3, #0
00369918  12 00 00 1a                                      bne #0x369968
0036991c  68 10 9f e5                                      ldr r1, [pc, #0x68]
00369920  08 20 8d e2                                      add r2, sp, #8
00369924  04 30 22 e5                                      str r3, [r2, #-4]!
00369928  01 10 8f e0                                      add r1, pc, r1
0036992c  64 00 80 e2                                      add r0, r0, #0x64
00369930  b7 8c 14 eb                                      bl #0x88cc14
00369934  05 00 a0 e1                                      mov r0, r5
00369938  09 94 fe eb                                      bl #0x30e964
0036993c  00 50 94 e5                                      ldr r5, [r4]
00369940  00 20 a0 e1                                      mov r2, r0
00369944  04 10 9d e5                                      ldr r1, [sp, #4]
00369948  05 00 a0 e1                                      mov r0, r5
0036994c  df e1 13 eb                                      bl #0x8620d0
00369950  24 30 94 e5                                      ldr r3, [r4, #0x24]
00369954  00 20 e0 e3                                      mvn r2, #0
00369958  24 20 84 e5                                      str r2, [r4, #0x24]
0036995c  28 30 84 e5                                      str r3, [r4, #0x28]
00369960  0c d0 8d e2                                      add sp, sp, #0xc
00369964  30 80 bd e8                                      pop {r4, r5, pc}
00369968  00 00 e0 e3                                      mvn r0, #0
0036996c  f3 1f 07 eb                                      bl #0x531940
00369970  24 30 94 e5                                      ldr r3, [r4, #0x24]
00369974  00 20 e0 e3                                      mvn r2, #0
00369978  24 20 84 e5                                      str r2, [r4, #0x24]
0036997c  28 30 84 e5                                      str r3, [r4, #0x28]
00369980  f6 ff ff ea                                      b #0x369960
; mapping-symbol data/literal pool
00369984  94 b1 62 00 30 3b 00 00 40 76 55 00              .byte 0x94, 0xb1, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x40, 0x76, 0x55, 0x00

; FUNCTION 0x00369990, declared_size=108, range_size=108, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager13StopAllSoundsEi
; demangled: VoxSoundManager::StopAllSounds(int)
; decoder-mode: arm
00369990  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00369994  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00369998  10 40 2d e9                                      push {r4, lr}
0036999c  03 30 8f e0                                      add r3, pc, r3
003699a0  02 20 93 e7                                      ldr r2, [r3, r2]
003699a4  00 30 d2 e5                                      ldrb r3, [r2]
003699a8  00 00 53 e3                                      cmp r3, #0
003699ac  0c 00 00 1a                                      bne #0x3699e4
003699b0  00 40 90 e5                                      ldr r4, [r0]
003699b4  00 00 54 e3                                      cmp r4, #0
003699b8  0c 00 00 0a                                      beq #0x3699f0
003699bc  01 00 a0 e1                                      mov r0, r1
003699c0  e7 93 fe eb                                      bl #0x30e964
003699c4  11 13 a0 e3                                      mov r1, #0x44000000
003699c8  7a 18 81 e2                                      add r1, r1, #0x7a0000
003699cc  b0 94 fe eb                                      bl #0x30ec94
003699d0  00 10 e0 e3                                      mvn r1, #0
003699d4  00 20 a0 e1                                      mov r2, r0
003699d8  04 00 a0 e1                                      mov r0, r4
003699dc  10 40 bd e8                                      pop {r4, lr}
003699e0  ba e1 13 ea                                      b #0x8620d0
003699e4  00 00 e0 e3                                      mvn r0, #0
003699e8  10 40 bd e8                                      pop {r4, lr}
003699ec  d3 1f 07 ea                                      b #0x531940
003699f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003699f4  f4 b0 62 00 30 3b 00 00                          .byte 0xf4, 0xb0, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00

; FUNCTION 0x003699fc, declared_size=316, range_size=316, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager9LoadSoundEi
; demangled: VoxSoundManager::LoadSound(int)
; decoder-mode: arm
003699fc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00369a00  1c 41 9f e5                                      ldr r4, [pc, #0x11c]
00369a04  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
00369a08  1c 51 9f e5                                      ldr r5, [pc, #0x11c]
00369a0c  04 40 8f e0                                      add r4, pc, r4
00369a10  03 20 94 e7                                      ldr r2, [r4, r3]
00369a14  05 30 94 e7                                      ldr r3, [r4, r5]
00369a18  8b df 4d e2                                      sub sp, sp, #0x22c
00369a1c  00 20 d2 e5                                      ldrb r2, [r2]
00369a20  00 30 93 e5                                      ldr r3, [r3]
00369a24  00 70 a0 e1                                      mov r7, r0
00369a28  00 00 52 e3                                      cmp r2, #0
00369a2c  01 60 a0 e1                                      mov r6, r1
00369a30  24 32 8d e5                                      str r3, [sp, #0x224]
00369a34  04 00 00 1a                                      bne #0x369a4c
00369a38  00 00 51 e3                                      cmp r1, #0
00369a3c  02 00 00 ba                                      blt #0x369a4c
00369a40  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00369a44  03 00 51 e1                                      cmp r1, r3
00369a48  06 00 00 da                                      ble #0x369a68
00369a4c  05 30 94 e7                                      ldr r3, [r4, r5]
00369a50  24 22 9d e5                                      ldr r2, [sp, #0x224]
00369a54  00 30 93 e5                                      ldr r3, [r3]
00369a58  03 00 52 e1                                      cmp r2, r3
00369a5c  2f 00 00 1a                                      bne #0x369b20
00369a60  8b df 8d e2                                      add sp, sp, #0x22c
00369a64  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00369a68  20 c0 8d e2                                      add ip, sp, #0x20
00369a6c  00 c0 8d e5                                      str ip, [sp]
00369a70  1c c0 8d e2                                      add ip, sp, #0x1c
00369a74  18 30 8d e2                                      add r3, sp, #0x18
00369a78  04 c0 8d e5                                      str ip, [sp, #4]
00369a7c  64 00 80 e2                                      add r0, r0, #0x64
00369a80  14 c0 8d e2                                      add ip, sp, #0x14
00369a84  10 20 8d e2                                      add r2, sp, #0x10
00369a88  08 c0 8d e5                                      str ip, [sp, #8]
00369a8c  18 7f 14 eb                                      bl #0x8896f4
00369a90  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
00369a94  03 00 56 e1                                      cmp r6, r3
00369a98  eb ff ff ca                                      bgt #0x369a4c
00369a9c  08 30 97 e5                                      ldr r3, [r7, #8]
00369aa0  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
00369aa4  00 00 53 e3                                      cmp r3, #0
00369aa8  e7 ff ff 1a                                      bne #0x369a4c
00369aac  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00369ab0  24 a0 8d e2                                      add sl, sp, #0x24
00369ab4  0a 00 a0 e1                                      mov r0, sl
00369ab8  03 30 94 e7                                      ldr r3, [r4, r3]
00369abc  00 10 93 e5                                      ldr r1, [r3]
00369ac0  96 92 fe eb                                      bl #0x30e520
00369ac4  0a 00 a0 e1                                      mov r0, sl
00369ac8  e1 90 fe eb                                      bl #0x30de54
00369acc  60 10 9f e5                                      ldr r1, [pc, #0x60]
00369ad0  0d 20 a0 e3                                      mov r2, #0xd
00369ad4  00 00 8a e0                                      add r0, sl, r0
00369ad8  01 10 8f e0                                      add r1, pc, r1
00369adc  61 93 fe eb                                      bl #0x30e868
00369ae0  10 10 9d e5                                      ldr r1, [sp, #0x10]
00369ae4  0a 00 a0 e1                                      mov r0, sl
00369ae8  a8 94 fe eb                                      bl #0x30ed90
00369aec  04 10 a0 e3                                      mov r1, #4
00369af0  28 00 a0 e3                                      mov r0, #0x28
00369af4  9d 9a fe eb                                      bl #0x310570
00369af8  20 c0 9d e5                                      ldr ip, [sp, #0x20]
00369afc  14 30 9d e5                                      ldr r3, [sp, #0x14]
00369b00  0a 10 a0 e1                                      mov r1, sl
00369b04  18 20 9d e5                                      ldr r2, [sp, #0x18]
00369b08  00 80 a0 e1                                      mov r8, r0
00369b0c  00 c0 8d e5                                      str ip, [sp]
00369b10  b9 16 14 eb                                      bl #0x86f5fc
00369b14  08 30 97 e5                                      ldr r3, [r7, #8]
00369b18  06 81 83 e7                                      str r8, [r3, r6, lsl #2]
00369b1c  ca ff ff ea                                      b #0x369a4c
00369b20  fa 91 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00369b24  84 b0 62 00 30 3b 00 00 ac 40 00 00 00 06 00 00  .byte 0x84, 0xb0, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00
00369b34  98 74 55 00                                      .byte 0x98, 0x74, 0x55, 0x00

; FUNCTION 0x00369b38, declared_size=244, range_size=244, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager14GetSoundVolumeEi
; demangled: VoxSoundManager::GetSoundVolume(int)
; decoder-mode: arm
00369b38  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00369b3c  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
00369b40  10 40 2d e9                                      push {r4, lr}
00369b44  03 30 8f e0                                      add r3, pc, r3
00369b48  02 20 93 e7                                      ldr r2, [r3, r2]
00369b4c  00 40 a0 e1                                      mov r4, r0
00369b50  08 d0 4d e2                                      sub sp, sp, #8
00369b54  00 30 d2 e5                                      ldrb r3, [r2]
00369b58  00 00 53 e3                                      cmp r3, #0
00369b5c  fe 05 a0 13                                      movne r0, #0x3f800000
00369b60  12 00 00 1a                                      bne #0x369bb0
00369b64  02 00 51 e3                                      cmp r1, #2
00369b68  04 30 8d e5                                      str r3, [sp, #4]
00369b6c  11 00 00 0a                                      beq #0x369bb8
00369b70  03 00 51 e3                                      cmp r1, #3
00369b74  1b 00 00 0a                                      beq #0x369be8
00369b78  01 00 51 e3                                      cmp r1, #1
00369b7c  03 10 a0 11                                      movne r1, r3
00369b80  05 00 00 1a                                      bne #0x369b9c
00369b84  94 10 9f e5                                      ldr r1, [pc, #0x94]
00369b88  64 00 84 e2                                      add r0, r4, #0x64
00369b8c  04 20 8d e2                                      add r2, sp, #4
00369b90  01 10 8f e0                                      add r1, pc, r1
00369b94  1e 8c 14 eb                                      bl #0x88cc14
00369b98  04 10 9d e5                                      ldr r1, [sp, #4]
00369b9c  00 00 94 e5                                      ldr r0, [r4]
00369ba0  b6 e0 13 eb                                      bl #0x861e80
00369ba4  42 14 a0 e3                                      mov r1, #0x42000000
00369ba8  32 17 81 e2                                      add r1, r1, #0xc80000
00369bac  6e 94 fe eb                                      bl #0x30ed6c
00369bb0  08 d0 8d e2                                      add sp, sp, #8
00369bb4  10 80 bd e8                                      pop {r4, pc}
00369bb8  64 10 9f e5                                      ldr r1, [pc, #0x64]
00369bbc  04 20 8d e2                                      add r2, sp, #4
00369bc0  64 00 84 e2                                      add r0, r4, #0x64
00369bc4  01 10 8f e0                                      add r1, pc, r1
00369bc8  11 8c 14 eb                                      bl #0x88cc14
00369bcc  04 10 9d e5                                      ldr r1, [sp, #4]
00369bd0  00 00 94 e5                                      ldr r0, [r4]
00369bd4  a9 e0 13 eb                                      bl #0x861e80
00369bd8  42 14 a0 e3                                      mov r1, #0x42000000
00369bdc  32 17 81 e2                                      add r1, r1, #0xc80000
00369be0  61 94 fe eb                                      bl #0x30ed6c
00369be4  f1 ff ff ea                                      b #0x369bb0
00369be8  38 10 9f e5                                      ldr r1, [pc, #0x38]
00369bec  04 20 8d e2                                      add r2, sp, #4
00369bf0  64 00 84 e2                                      add r0, r4, #0x64
00369bf4  01 10 8f e0                                      add r1, pc, r1
00369bf8  05 8c 14 eb                                      bl #0x88cc14
00369bfc  04 10 9d e5                                      ldr r1, [sp, #4]
00369c00  00 00 94 e5                                      ldr r0, [r4]
00369c04  9d e0 13 eb                                      bl #0x861e80
00369c08  42 14 a0 e3                                      mov r1, #0x42000000
00369c0c  32 17 81 e2                                      add r1, r1, #0xc80000
00369c10  55 94 fe eb                                      bl #0x30ed6c
00369c14  e5 ff ff ea                                      b #0x369bb0
; mapping-symbol data/literal pool
00369c18  4c af 62 00 30 3b 00 00 f0 73 55 00 a4 73 55 00  .byte 0x4c, 0xaf, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0xf0, 0x73, 0x55, 0x00, 0xa4, 0x73, 0x55, 0x00
00369c28  04 5c 55 00                                      .byte 0x04, 0x5c, 0x55, 0x00

; FUNCTION 0x00369c2c, declared_size=372, range_size=372, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager16SetInitialVolumeEfff
; demangled: VoxSoundManager::SetInitialVolume(float, float, float)
; decoder-mode: arm
00369c2c  50 c1 9f e5                                      ldr ip, [pc, #0x150]
00369c30  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00369c34  00 40 a0 e1                                      mov r4, r0
00369c38  48 01 9f e5                                      ldr r0, [pc, #0x148]
00369c3c  0c c0 8f e0                                      add ip, pc, ip
00369c40  03 a0 a0 e1                                      mov sl, r3
00369c44  00 00 9c e7                                      ldr r0, [ip, r0]
00369c48  0c d0 4d e2                                      sub sp, sp, #0xc
00369c4c  02 60 a0 e1                                      mov r6, r2
00369c50  00 30 d0 e5                                      ldrb r3, [r0]
00369c54  01 80 a0 e1                                      mov r8, r1
00369c58  00 00 53 e3                                      cmp r3, #0
00369c5c  3a 00 00 1a                                      bne #0x369d4c
00369c60  20 30 d4 e5                                      ldrb r3, [r4, #0x20]
00369c64  00 00 53 e3                                      cmp r3, #0
00369c68  01 00 00 0a                                      beq #0x369c74
00369c6c  0c d0 8d e2                                      add sp, sp, #0xc
00369c70  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00369c74  10 11 9f e5                                      ldr r1, [pc, #0x110]
00369c78  08 50 8d e2                                      add r5, sp, #8
00369c7c  04 30 25 e5                                      str r3, [r5, #-4]!
00369c80  64 70 84 e2                                      add r7, r4, #0x64
00369c84  05 20 a0 e1                                      mov r2, r5
00369c88  01 10 8f e0                                      add r1, pc, r1
00369c8c  07 00 a0 e1                                      mov r0, r7
00369c90  df 8b 14 eb                                      bl #0x88cc14
00369c94  42 14 a0 e3                                      mov r1, #0x42000000
00369c98  08 00 a0 e1                                      mov r0, r8
00369c9c  32 17 81 e2                                      add r1, r1, #0xc80000
00369ca0  fb 93 fe eb                                      bl #0x30ec94
00369ca4  00 80 94 e5                                      ldr r8, [r4]
00369ca8  cd 3c 0c e3                                      movw r3, #0xcccd
00369cac  4c 3d 43 e3                                      movt r3, #0x3d4c
00369cb0  00 20 a0 e1                                      mov r2, r0
00369cb4  04 10 9d e5                                      ldr r1, [sp, #4]
00369cb8  08 00 a0 e1                                      mov r0, r8
00369cbc  ce de 13 eb                                      bl #0x8617fc
00369cc0  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
00369cc4  05 20 a0 e1                                      mov r2, r5
00369cc8  07 00 a0 e1                                      mov r0, r7
00369ccc  01 10 8f e0                                      add r1, pc, r1
00369cd0  cf 8b 14 eb                                      bl #0x88cc14
00369cd4  42 14 a0 e3                                      mov r1, #0x42000000
00369cd8  06 00 a0 e1                                      mov r0, r6
00369cdc  32 17 81 e2                                      add r1, r1, #0xc80000
00369ce0  eb 93 fe eb                                      bl #0x30ec94
00369ce4  00 60 94 e5                                      ldr r6, [r4]
00369ce8  cd 3c 0c e3                                      movw r3, #0xcccd
00369cec  4c 3d 43 e3                                      movt r3, #0x3d4c
00369cf0  00 20 a0 e1                                      mov r2, r0
00369cf4  04 10 9d e5                                      ldr r1, [sp, #4]
00369cf8  06 00 a0 e1                                      mov r0, r6
00369cfc  be de 13 eb                                      bl #0x8617fc
00369d00  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
00369d04  05 20 a0 e1                                      mov r2, r5
00369d08  07 00 a0 e1                                      mov r0, r7
00369d0c  01 10 8f e0                                      add r1, pc, r1
00369d10  bf 8b 14 eb                                      bl #0x88cc14
00369d14  42 14 a0 e3                                      mov r1, #0x42000000
00369d18  32 17 81 e2                                      add r1, r1, #0xc80000
00369d1c  0a 00 a0 e1                                      mov r0, sl
00369d20  db 93 fe eb                                      bl #0x30ec94
00369d24  00 50 94 e5                                      ldr r5, [r4]
00369d28  cd 3c 0c e3                                      movw r3, #0xcccd
00369d2c  00 20 a0 e1                                      mov r2, r0
00369d30  4c 3d 43 e3                                      movt r3, #0x3d4c
00369d34  05 00 a0 e1                                      mov r0, r5
00369d38  04 10 9d e5                                      ldr r1, [sp, #4]
00369d3c  ae de 13 eb                                      bl #0x8617fc
00369d40  01 30 a0 e3                                      mov r3, #1
00369d44  20 30 c4 e5                                      strb r3, [r4, #0x20]
00369d48  c7 ff ff ea                                      b #0x369c6c
00369d4c  44 30 9f e5                                      ldr r3, [pc, #0x44]
00369d50  01 20 a0 e3                                      mov r2, #1
00369d54  03 50 9c e7                                      ldr r5, [ip, r3]
00369d58  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00369d5c  00 60 85 e5                                      str r6, [r5]
00369d60  03 30 9c e7                                      ldr r3, [ip, r3]
00369d64  00 10 83 e5                                      str r1, [r3]
00369d68  24 00 94 e5                                      ldr r0, [r4, #0x24]
00369d6c  82 1e 07 eb                                      bl #0x53177c
00369d70  24 00 94 e5                                      ldr r0, [r4, #0x24]
00369d74  00 10 95 e5                                      ldr r1, [r5]
00369d78  02 20 a0 e3                                      mov r2, #2
00369d7c  7e 1e 07 eb                                      bl #0x53177c
00369d80  b9 ff ff ea                                      b #0x369c6c
; mapping-symbol data/literal pool
00369d84  54 ae 62 00 30 3b 00 00 e0 72 55 00 b4 72 55 00  .byte 0x54, 0xae, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0xe0, 0x72, 0x55, 0x00, 0xb4, 0x72, 0x55, 0x00
00369d94  ec 5a 55 00 80 06 00 00 08 0c 00 00              .byte 0xec, 0x5a, 0x55, 0x00, 0x80, 0x06, 0x00, 0x00, 0x08, 0x0c, 0x00, 0x00

; FUNCTION 0x00369da0, declared_size=328, range_size=328, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager14SetSoundVolumeEif
; demangled: VoxSoundManager::SetSoundVolume(int, float)
; decoder-mode: arm
00369da0  24 31 9f e5                                      ldr r3, [pc, #0x124]
00369da4  70 40 2d e9                                      push {r4, r5, r6, lr}
00369da8  00 40 a0 e1                                      mov r4, r0
00369dac  1c 01 9f e5                                      ldr r0, [pc, #0x11c]
00369db0  03 30 8f e0                                      add r3, pc, r3
00369db4  08 d0 4d e2                                      sub sp, sp, #8
00369db8  00 00 93 e7                                      ldr r0, [r3, r0]
00369dbc  02 50 a0 e1                                      mov r5, r2
00369dc0  00 60 d0 e5                                      ldrb r6, [r0]
00369dc4  00 00 56 e3                                      cmp r6, #0
00369dc8  07 00 00 0a                                      beq #0x369dec
00369dcc  02 00 51 e3                                      cmp r1, #2
00369dd0  18 00 00 0a                                      beq #0x369e38
00369dd4  03 00 51 e3                                      cmp r1, #3
00369dd8  25 00 00 0a                                      beq #0x369e74
00369ddc  01 00 51 e3                                      cmp r1, #1
00369de0  23 00 00 0a                                      beq #0x369e74
00369de4  08 d0 8d e2                                      add sp, sp, #8
00369de8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00369dec  02 00 51 e3                                      cmp r1, #2
00369df0  04 60 8d e5                                      str r6, [sp, #4]
00369df4  17 00 00 0a                                      beq #0x369e58
00369df8  03 00 51 e3                                      cmp r1, #3
00369dfc  2b 00 00 0a                                      beq #0x369eb0
00369e00  01 00 51 e3                                      cmp r1, #1
00369e04  22 00 00 0a                                      beq #0x369e94
00369e08  42 14 a0 e3                                      mov r1, #0x42000000
00369e0c  05 00 a0 e1                                      mov r0, r5
00369e10  32 17 81 e2                                      add r1, r1, #0xc80000
00369e14  9e 93 fe eb                                      bl #0x30ec94
00369e18  00 40 94 e5                                      ldr r4, [r4]
00369e1c  cd 3c 0c e3                                      movw r3, #0xcccd
00369e20  00 20 a0 e1                                      mov r2, r0
00369e24  06 10 a0 e1                                      mov r1, r6
00369e28  04 00 a0 e1                                      mov r0, r4
00369e2c  4c 3d 43 e3                                      movt r3, #0x3d4c
00369e30  71 de 13 eb                                      bl #0x8617fc
00369e34  ea ff ff ea                                      b #0x369de4
00369e38  94 00 9f e5                                      ldr r0, [pc, #0x94]
00369e3c  02 10 a0 e1                                      mov r1, r2
00369e40  01 20 a0 e3                                      mov r2, #1
00369e44  00 30 93 e7                                      ldr r3, [r3, r0]
00369e48  00 50 83 e5                                      str r5, [r3]
00369e4c  24 00 94 e5                                      ldr r0, [r4, #0x24]
00369e50  49 1e 07 eb                                      bl #0x53177c
00369e54  e2 ff ff ea                                      b #0x369de4
00369e58  78 10 9f e5                                      ldr r1, [pc, #0x78]
00369e5c  64 00 84 e2                                      add r0, r4, #0x64
00369e60  04 20 8d e2                                      add r2, sp, #4
00369e64  01 10 8f e0                                      add r1, pc, r1
00369e68  69 8b 14 eb                                      bl #0x88cc14
00369e6c  04 60 9d e5                                      ldr r6, [sp, #4]
00369e70  e4 ff ff ea                                      b #0x369e08
00369e74  60 00 9f e5                                      ldr r0, [pc, #0x60]
00369e78  05 10 a0 e1                                      mov r1, r5
00369e7c  02 20 a0 e3                                      mov r2, #2
00369e80  00 30 93 e7                                      ldr r3, [r3, r0]
00369e84  00 50 83 e5                                      str r5, [r3]
00369e88  24 00 94 e5                                      ldr r0, [r4, #0x24]
00369e8c  3a 1e 07 eb                                      bl #0x53177c
00369e90  d3 ff ff ea                                      b #0x369de4
00369e94  44 10 9f e5                                      ldr r1, [pc, #0x44]
00369e98  64 00 84 e2                                      add r0, r4, #0x64
00369e9c  04 20 8d e2                                      add r2, sp, #4
00369ea0  01 10 8f e0                                      add r1, pc, r1
00369ea4  5a 8b 14 eb                                      bl #0x88cc14
00369ea8  04 60 9d e5                                      ldr r6, [sp, #4]
00369eac  d5 ff ff ea                                      b #0x369e08
00369eb0  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00369eb4  64 00 84 e2                                      add r0, r4, #0x64
00369eb8  04 20 8d e2                                      add r2, sp, #4
00369ebc  01 10 8f e0                                      add r1, pc, r1
00369ec0  53 8b 14 eb                                      bl #0x88cc14
00369ec4  04 60 9d e5                                      ldr r6, [sp, #4]
00369ec8  ce ff ff ea                                      b #0x369e08
; mapping-symbol data/literal pool
00369ecc  e0 ac 62 00 30 3b 00 00 08 0c 00 00 04 71 55 00  .byte 0xe0, 0xac, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x08, 0x0c, 0x00, 0x00, 0x04, 0x71, 0x55, 0x00
00369edc  80 06 00 00 e0 70 55 00 3c 59 55 00              .byte 0x80, 0x06, 0x00, 0x00, 0xe0, 0x70, 0x55, 0x00, 0x3c, 0x59, 0x55, 0x00

; FUNCTION 0x00369ee8, declared_size=52, range_size=52, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager15GetMasterVolumeEv
; demangled: VoxSoundManager::GetMasterVolume()
; decoder-mode: arm
00369ee8  24 30 9f e5                                      ldr r3, [pc, #0x24]
00369eec  24 20 9f e5                                      ldr r2, [pc, #0x24]
00369ef0  03 30 8f e0                                      add r3, pc, r3
00369ef4  02 20 93 e7                                      ldr r2, [r3, r2]
00369ef8  00 30 d2 e5                                      ldrb r3, [r2]
00369efc  00 00 53 e3                                      cmp r3, #0
00369f00  01 00 00 0a                                      beq #0x369f0c
00369f04  fe 05 a0 e3                                      mov r0, #0x3f800000
00369f08  1e ff 2f e1                                      bx lr
00369f0c  00 00 90 e5                                      ldr r0, [r0]
00369f10  e6 df 13 ea                                      b #0x861eb0
; mapping-symbol data/literal pool
00369f14  a0 ab 62 00 30 3b 00 00                          .byte 0xa0, 0xab, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00

; FUNCTION 0x00369f1c, declared_size=52, range_size=52, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager15SetMasterVolumeEf
; demangled: VoxSoundManager::SetMasterVolume(float)
; decoder-mode: arm
00369f1c  24 30 9f e5                                      ldr r3, [pc, #0x24]
00369f20  24 20 9f e5                                      ldr r2, [pc, #0x24]
00369f24  03 30 8f e0                                      add r3, pc, r3
00369f28  02 20 93 e7                                      ldr r2, [r3, r2]
00369f2c  00 30 d2 e5                                      ldrb r3, [r2]
00369f30  00 00 53 e3                                      cmp r3, #0
00369f34  1e ff 2f 11                                      bxne lr
00369f38  00 00 90 e5                                      ldr r0, [r0]
00369f3c  cd 2c 0c e3                                      movw r2, #0xcccd
00369f40  4c 2d 43 e3                                      movt r2, #0x3d4c
00369f44  1d de 13 ea                                      b #0x8617c0
; mapping-symbol data/literal pool
00369f48  6c ab 62 00 30 3b 00 00                          .byte 0x6c, 0xab, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00

; FUNCTION 0x00369f50, declared_size=156, range_size=156, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager14SetListenerPosERKN6glitch4core8vector3dIfEES5_S5_iif
; demangled: VoxSoundManager::SetListenerPos(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, int, int, float)
; decoder-mode: arm
00369f50  8c c0 9f e5                                      ldr ip, [pc, #0x8c]
00369f54  70 40 2d e9                                      push {r4, r5, r6, lr}
00369f58  00 40 a0 e1                                      mov r4, r0
00369f5c  84 00 9f e5                                      ldr r0, [pc, #0x84]
00369f60  0c c0 8f e0                                      add ip, pc, ip
00369f64  02 60 a0 e1                                      mov r6, r2
00369f68  00 00 9c e7                                      ldr r0, [ip, r0]
00369f6c  10 d0 4d e2                                      sub sp, sp, #0x10
00369f70  01 c0 a0 e1                                      mov ip, r1
00369f74  00 20 d0 e5                                      ldrb r2, [r0]
00369f78  03 50 a0 e1                                      mov r5, r3
00369f7c  00 00 52 e3                                      cmp r2, #0
00369f80  15 00 00 1a                                      bne #0x369fdc
00369f84  08 30 91 e5                                      ldr r3, [r1, #8]
00369f88  04 20 9c e5                                      ldr r2, [ip, #4]
00369f8c  00 00 94 e5                                      ldr r0, [r4]
00369f90  00 10 91 e5                                      ldr r1, [r1]
00369f94  1f df 13 eb                                      bl #0x861c18
00369f98  08 30 96 e5                                      ldr r3, [r6, #8]
00369f9c  00 10 96 e5                                      ldr r1, [r6]
00369fa0  04 20 96 e5                                      ldr r2, [r6, #4]
00369fa4  08 c0 95 e5                                      ldr ip, [r5, #8]
00369fa8  00 60 95 e5                                      ldr r6, [r5]
00369fac  04 e0 95 e5                                      ldr lr, [r5, #4]
00369fb0  00 00 94 e5                                      ldr r0, [r4]
00369fb4  00 60 8d e5                                      str r6, [sp]
00369fb8  04 e0 8d e5                                      str lr, [sp, #4]
00369fbc  08 c0 8d e5                                      str ip, [sp, #8]
00369fc0  fa de 13 eb                                      bl #0x861bb0
00369fc4  28 30 9d e5                                      ldr r3, [sp, #0x28]
00369fc8  5c 30 84 e5                                      str r3, [r4, #0x5c]
00369fcc  20 30 9d e5                                      ldr r3, [sp, #0x20]
00369fd0  54 30 84 e5                                      str r3, [r4, #0x54]
00369fd4  24 30 9d e5                                      ldr r3, [sp, #0x24]
00369fd8  58 30 84 e5                                      str r3, [r4, #0x58]
00369fdc  10 d0 8d e2                                      add sp, sp, #0x10
00369fe0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00369fe4  30 ab 62 00 30 3b 00 00                          .byte 0x30, 0xab, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00

; FUNCTION 0x00369fec, declared_size=332, range_size=332, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager4StopEii
; demangled: VoxSoundManager::Stop(int, int)
; decoder-mode: arm
00369fec  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00369ff0  30 81 9f e5                                      ldr r8, [pc, #0x130]
00369ff4  00 00 51 e3                                      cmp r1, #0
00369ff8  65 df 4d e2                                      sub sp, sp, #0x194
00369ffc  00 60 a0 e1                                      mov r6, r0
0036a000  08 80 8f e0                                      add r8, pc, r8
0036a004  02 50 a0 e1                                      mov r5, r2
0036a008  41 00 00 ba                                      blt #0x36a114
0036a00c  18 31 9f e5                                      ldr r3, [pc, #0x118]
0036a010  03 30 98 e7                                      ldr r3, [r8, r3]
0036a014  00 40 d3 e5                                      ldrb r4, [r3]
0036a018  00 00 54 e3                                      cmp r4, #0
0036a01c  3e 00 00 1a                                      bne #0x36a11c
0036a020  08 21 9f e5                                      ldr r2, [pc, #0x108]
0036a024  08 30 90 e5                                      ldr r3, [r0, #8]
0036a028  0c 00 a0 e3                                      mov r0, #0xc
0036a02c  02 20 98 e7                                      ldr r2, [r8, r2]
0036a030  00 20 92 e5                                      ldr r2, [r2]
0036a034  90 21 21 e0                                      mla r1, r0, r1, r2
0036a038  04 a0 91 e5                                      ldr sl, [r1, #4]
0036a03c  0a 11 93 e7                                      ldr r1, [r3, sl, lsl #2]
0036a040  00 00 51 e3                                      cmp r1, #0
0036a044  32 00 00 0a                                      beq #0x36a114
0036a048  00 00 96 e5                                      ldr r0, [r6]
0036a04c  29 e1 13 eb                                      bl #0x8624f8
0036a050  00 00 50 e3                                      cmp r0, #0
0036a054  2e 00 00 0a                                      beq #0x36a114
0036a058  05 00 a0 e1                                      mov r0, r5
0036a05c  40 92 fe eb                                      bl #0x30e964
0036a060  11 13 a0 e3                                      mov r1, #0x44000000
0036a064  7a 18 81 e2                                      add r1, r1, #0x7a0000
0036a068  09 93 fe eb                                      bl #0x30ec94
0036a06c  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
0036a070  00 70 a0 e1                                      mov r7, r0
0036a074  0d 50 a0 e1                                      mov r5, sp
0036a078  03 20 98 e7                                      ldr r2, [r8, r3]
0036a07c  6e cf 8d e2                                      add ip, sp, #0x1b8
0036a080  28 30 8d e2                                      add r3, sp, #0x28
0036a084  08 20 82 e2                                      add r2, r2, #8
0036a088  00 00 e0 e3                                      mvn r0, #0
0036a08c  00 10 e0 e3                                      mvn r1, #0
0036a090  f0 02 43 e1                                      strd r0, r1, [r3, #-0x20]
0036a094  18 40 03 e5                                      str r4, [r3, #-0x18]
0036a098  14 40 03 e5                                      str r4, [r3, #-0x14]
0036a09c  10 40 03 e5                                      str r4, [r3, #-0x10]
0036a0a0  0c 40 03 e5                                      str r4, [r3, #-0xc]
0036a0a4  08 40 03 e5                                      str r4, [r3, #-8]
0036a0a8  28 20 03 e5                                      str r2, [r3, #-0x28]
0036a0ac  28 30 83 e2                                      add r3, r3, #0x28
0036a0b0  0c 00 53 e1                                      cmp r3, ip
0036a0b4  f5 ff ff 1a                                      bne #0x36a090
0036a0b8  08 30 96 e5                                      ldr r3, [r6, #8]
0036a0bc  00 00 96 e5                                      ldr r0, [r6]
0036a0c0  0d 20 a0 e1                                      mov r2, sp
0036a0c4  0a 11 93 e7                                      ldr r1, [r3, sl, lsl #2]
0036a0c8  0a 30 a0 e3                                      mov r3, #0xa
0036a0cc  1d e1 13 eb                                      bl #0x862548
0036a0d0  00 80 50 e2                                      subs r8, r0, #0
0036a0d4  07 00 00 da                                      ble #0x36a0f8
0036a0d8  28 a0 a0 e3                                      mov sl, #0x28
0036a0dc  9a 54 21 e0                                      mla r1, sl, r4, r5
0036a0e0  00 00 96 e5                                      ldr r0, [r6]
0036a0e4  01 40 84 e2                                      add r4, r4, #1
0036a0e8  07 20 a0 e1                                      mov r2, r7
0036a0ec  29 e0 13 eb                                      bl #0x862198
0036a0f0  08 00 54 e1                                      cmp r4, r8
0036a0f4  f8 ff ff 1a                                      bne #0x36a0dc
0036a0f8  19 4e 8d e2                                      add r4, sp, #0x190
0036a0fc  28 30 34 e5                                      ldr r3, [r4, #-0x28]!
0036a100  04 00 a0 e1                                      mov r0, r4
0036a104  0f e0 a0 e1                                      mov lr, pc
0036a108  00 f0 93 e5                                      ldr pc, [r3]
0036a10c  05 00 54 e1                                      cmp r4, r5
0036a110  f9 ff ff 1a                                      bne #0x36a0fc
0036a114  65 df 8d e2                                      add sp, sp, #0x194
0036a118  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0036a11c  01 00 a0 e1                                      mov r0, r1
0036a120  12 1d 07 eb                                      bl #0x531570
0036a124  fa ff ff ea                                      b #0x36a114
; mapping-symbol data/literal pool
0036a128  90 aa 62 00 30 3b 00 00 3c 3e 00 00 28 2e 00 00  .byte 0x90, 0xaa, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x3c, 0x3e, 0x00, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x0036a138, declared_size=104, range_size=104, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager8StopBeatEv
; demangled: VoxSoundManager::StopBeat()
; decoder-mode: arm
0036a138  70 40 2d e9                                      push {r4, r5, r6, lr}
0036a13c  2c 50 90 e5                                      ldr r5, [r0, #0x2c]
0036a140  48 30 9f e5                                      ldr r3, [pc, #0x48]
0036a144  00 40 a0 e1                                      mov r4, r0
0036a148  01 00 75 e3                                      cmn r5, #1
0036a14c  03 30 8f e0                                      add r3, pc, r3
0036a150  0d 00 00 0a                                      beq #0x36a18c
0036a154  38 20 9f e5                                      ldr r2, [pc, #0x38]
0036a158  38 10 9f e5                                      ldr r1, [pc, #0x38]
0036a15c  02 30 93 e7                                      ldr r3, [r3, r2]
0036a160  34 20 9f e5                                      ldr r2, [pc, #0x34]
0036a164  01 10 8f e0                                      add r1, pc, r1
0036a168  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0036a16c  02 20 8f e0                                      add r2, pc, r2
0036a170  99 6a 05 eb                                      bl #0x4c4bdc
0036a174  05 10 a0 e1                                      mov r1, r5
0036a178  00 20 a0 e1                                      mov r2, r0
0036a17c  04 00 a0 e1                                      mov r0, r4
0036a180  99 ff ff eb                                      bl #0x369fec
0036a184  00 30 e0 e3                                      mvn r3, #0
0036a188  2c 30 84 e5                                      str r3, [r4, #0x2c]
0036a18c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0036a190  44 a9 62 00 f4 37 00 00 24 6e 55 00 2c 6e 55 00  .byte 0x44, 0xa9, 0x62, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x24, 0x6e, 0x55, 0x00, 0x2c, 0x6e, 0x55, 0x00

; FUNCTION 0x0036a1a0, declared_size=120, range_size=120, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager9StopMusicEi
; demangled: VoxSoundManager::StopMusic(int)
; decoder-mode: arm
0036a1a0  10 40 2d e9                                      push {r4, lr}
0036a1a4  24 c0 90 e5                                      ldr ip, [r0, #0x24]
0036a1a8  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0036a1ac  00 40 a0 e1                                      mov r4, r0
0036a1b0  01 00 7c e3                                      cmn ip, #1
0036a1b4  01 20 a0 e1                                      mov r2, r1
0036a1b8  03 30 8f e0                                      add r3, pc, r3
0036a1bc  0a 00 00 0a                                      beq #0x36a1ec
0036a1c0  48 10 9f e5                                      ldr r1, [pc, #0x48]
0036a1c4  01 10 93 e7                                      ldr r1, [r3, r1]
0036a1c8  00 10 d1 e5                                      ldrb r1, [r1]
0036a1cc  00 00 51 e3                                      cmp r1, #0
0036a1d0  06 00 00 1a                                      bne #0x36a1f0
0036a1d4  0c 10 a0 e1                                      mov r1, ip
0036a1d8  83 ff ff eb                                      bl #0x369fec
0036a1dc  24 30 94 e5                                      ldr r3, [r4, #0x24]
0036a1e0  00 20 e0 e3                                      mvn r2, #0
0036a1e4  24 20 84 e5                                      str r2, [r4, #0x24]
0036a1e8  28 30 84 e5                                      str r3, [r4, #0x28]
0036a1ec  10 80 bd e8                                      pop {r4, pc}
0036a1f0  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0036a1f4  02 30 93 e7                                      ldr r3, [r3, r2]
0036a1f8  00 20 e0 e3                                      mvn r2, #0
0036a1fc  00 20 83 e5                                      str r2, [r3]
0036a200  24 00 90 e5                                      ldr r0, [r0, #0x24]
0036a204  d9 1c 07 eb                                      bl #0x531570
0036a208  f3 ff ff ea                                      b #0x36a1dc
; mapping-symbol data/literal pool
0036a20c  d8 a8 62 00 30 3b 00 00 98 08 00 00              .byte 0xd8, 0xa8, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x98, 0x08, 0x00, 0x00

; FUNCTION 0x0036a218, declared_size=600, range_size=600, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager6Stop3DEiiP7Point3DIfEf
; demangled: VoxSoundManager::Stop3D(int, int, Point3D<float>*, float)
; decoder-mode: arm
0036a218  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036a21c  3c 72 9f e5                                      ldr r7, [pc, #0x23c]
0036a220  00 00 51 e3                                      cmp r1, #0
0036a224  71 df 4d e2                                      sub sp, sp, #0x1c4
0036a228  07 70 8f e0                                      add r7, pc, r7
0036a22c  00 80 a0 e1                                      mov r8, r0
0036a230  02 60 a0 e1                                      mov r6, r2
0036a234  03 50 a0 e1                                      mov r5, r3
0036a238  7d 00 00 ba                                      blt #0x36a434
0036a23c  20 32 9f e5                                      ldr r3, [pc, #0x220]
0036a240  03 30 97 e7                                      ldr r3, [r7, r3]
0036a244  00 40 d3 e5                                      ldrb r4, [r3]
0036a248  00 00 54 e3                                      cmp r4, #0
0036a24c  80 00 00 1a                                      bne #0x36a454
0036a250  10 22 9f e5                                      ldr r2, [pc, #0x210]
0036a254  08 30 90 e5                                      ldr r3, [r0, #8]
0036a258  0c 00 a0 e3                                      mov r0, #0xc
0036a25c  02 20 97 e7                                      ldr r2, [r7, r2]
0036a260  00 20 92 e5                                      ldr r2, [r2]
0036a264  90 21 21 e0                                      mla r1, r0, r1, r2
0036a268  04 a0 91 e5                                      ldr sl, [r1, #4]
0036a26c  0a 11 93 e7                                      ldr r1, [r3, sl, lsl #2]
0036a270  00 00 51 e3                                      cmp r1, #0
0036a274  6e 00 00 0a                                      beq #0x36a434
0036a278  00 00 98 e5                                      ldr r0, [r8]
0036a27c  9d e0 13 eb                                      bl #0x8624f8
0036a280  00 00 50 e3                                      cmp r0, #0
0036a284  6a 00 00 0a                                      beq #0x36a434
0036a288  06 00 a0 e1                                      mov r0, r6
0036a28c  b4 91 fe eb                                      bl #0x30e964
0036a290  11 13 a0 e3                                      mov r1, #0x44000000
0036a294  7a 18 81 e2                                      add r1, r1, #0x7a0000
0036a298  7d 92 fe eb                                      bl #0x30ec94
0036a29c  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
0036a2a0  20 60 8d e2                                      add r6, sp, #0x20
0036a2a4  1c 00 8d e5                                      str r0, [sp, #0x1c]
0036a2a8  03 20 97 e7                                      ldr r2, [r7, r3]
0036a2ac  6e cf 86 e2                                      add ip, r6, #0x1b8
0036a2b0  28 30 86 e2                                      add r3, r6, #0x28
0036a2b4  08 20 82 e2                                      add r2, r2, #8
0036a2b8  00 00 e0 e3                                      mvn r0, #0
0036a2bc  00 10 e0 e3                                      mvn r1, #0
0036a2c0  f0 02 43 e1                                      strd r0, r1, [r3, #-0x20]
0036a2c4  18 40 03 e5                                      str r4, [r3, #-0x18]
0036a2c8  14 40 03 e5                                      str r4, [r3, #-0x14]
0036a2cc  10 40 03 e5                                      str r4, [r3, #-0x10]
0036a2d0  0c 40 03 e5                                      str r4, [r3, #-0xc]
0036a2d4  08 40 03 e5                                      str r4, [r3, #-8]
0036a2d8  28 20 03 e5                                      str r2, [r3, #-0x28]
0036a2dc  28 30 83 e2                                      add r3, r3, #0x28
0036a2e0  0c 00 53 e1                                      cmp r3, ip
0036a2e4  f5 ff ff 1a                                      bne #0x36a2c0
0036a2e8  08 30 98 e5                                      ldr r3, [r8, #8]
0036a2ec  00 00 98 e5                                      ldr r0, [r8]
0036a2f0  06 20 a0 e1                                      mov r2, r6
0036a2f4  0a 11 93 e7                                      ldr r1, [r3, sl, lsl #2]
0036a2f8  0a 30 a0 e3                                      mov r3, #0xa
0036a2fc  91 e0 13 eb                                      bl #0x862548
0036a300  00 00 50 e3                                      cmp r0, #0
0036a304  0c 00 8d e5                                      str r0, [sp, #0xc]
0036a308  42 00 00 da                                      ble #0x36a418
0036a30c  6f 3f 8d e2                                      add r3, sp, #0x1bc
0036a310  10 30 8d e5                                      str r3, [sp, #0x10]
0036a314  6e cf 8d e2                                      add ip, sp, #0x1b8
0036a318  6d 3f 8d e2                                      add r3, sp, #0x1b4
0036a31c  14 c0 8d e5                                      str ip, [sp, #0x14]
0036a320  18 30 8d e5                                      str r3, [sp, #0x18]
0036a324  03 00 00 ea                                      b #0x36a338
0036a328  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0036a32c  01 40 84 e2                                      add r4, r4, #1
0036a330  0c 00 54 e1                                      cmp r4, ip
0036a334  37 00 00 0a                                      beq #0x36a418
0036a338  28 c0 a0 e3                                      mov ip, #0x28
0036a33c  9c 64 27 e0                                      mla r7, ip, r4, r6
0036a340  00 00 55 e3                                      cmp r5, #0
0036a344  10 20 9d e5                                      ldr r2, [sp, #0x10]
0036a348  14 30 9d e5                                      ldr r3, [sp, #0x14]
0036a34c  07 10 a0 e1                                      mov r1, r7
0036a350  39 00 00 0a                                      beq #0x36a43c
0036a354  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0036a358  00 00 98 e5                                      ldr r0, [r8]
0036a35c  00 c0 8d e5                                      str ip, [sp]
0036a360  70 de 13 eb                                      bl #0x861d28
0036a364  00 10 95 e5                                      ldr r1, [r5]
0036a368  bc 01 9d e5                                      ldr r0, [sp, #0x1bc]
0036a36c  0e 90 fe eb                                      bl #0x30e3ac
0036a370  04 10 95 e5                                      ldr r1, [r5, #4]
0036a374  00 90 a0 e1                                      mov sb, r0
0036a378  b8 01 9d e5                                      ldr r0, [sp, #0x1b8]
0036a37c  0a 90 fe eb                                      bl #0x30e3ac
0036a380  08 10 95 e5                                      ldr r1, [r5, #8]
0036a384  00 b0 a0 e1                                      mov fp, r0
0036a388  b4 01 9d e5                                      ldr r0, [sp, #0x1b4]
0036a38c  06 90 fe eb                                      bl #0x30e3ac
0036a390  09 10 a0 e1                                      mov r1, sb
0036a394  00 a0 a0 e1                                      mov sl, r0
0036a398  09 00 a0 e1                                      mov r0, sb
0036a39c  72 92 fe eb                                      bl #0x30ed6c
0036a3a0  0b 10 a0 e1                                      mov r1, fp
0036a3a4  00 90 a0 e1                                      mov sb, r0
0036a3a8  0b 00 a0 e1                                      mov r0, fp
0036a3ac  6e 92 fe eb                                      bl #0x30ed6c
0036a3b0  00 10 a0 e1                                      mov r1, r0
0036a3b4  09 00 a0 e1                                      mov r0, sb
0036a3b8  f9 91 fe eb                                      bl #0x30eba4
0036a3bc  0a 10 a0 e1                                      mov r1, sl
0036a3c0  00 90 a0 e1                                      mov sb, r0
0036a3c4  0a 00 a0 e1                                      mov r0, sl
0036a3c8  67 92 fe eb                                      bl #0x30ed6c
0036a3cc  00 10 a0 e1                                      mov r1, r0
0036a3d0  09 00 a0 e1                                      mov r0, sb
0036a3d4  f2 91 fe eb                                      bl #0x30eba4
0036a3d8  31 91 fe eb                                      bl #0x30e8a4
0036a3dc  77 8f fe eb                                      bl #0x30e1c0
0036a3e0  ae 90 fe eb                                      bl #0x30e6a0
0036a3e4  00 10 a0 e1                                      mov r1, r0
0036a3e8  e8 01 9d e5                                      ldr r0, [sp, #0x1e8]
0036a3ec  c6 90 fe eb                                      bl #0x30e70c
0036a3f0  00 00 50 e3                                      cmp r0, #0
0036a3f4  cb ff ff 0a                                      beq #0x36a328
0036a3f8  07 10 a0 e1                                      mov r1, r7
0036a3fc  00 00 98 e5                                      ldr r0, [r8]
0036a400  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0036a404  63 df 13 eb                                      bl #0x862198
0036a408  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0036a40c  01 40 84 e2                                      add r4, r4, #1
0036a410  0c 00 54 e1                                      cmp r4, ip
0036a414  c7 ff ff 1a                                      bne #0x36a338
0036a418  19 4e 86 e2                                      add r4, r6, #0x190
0036a41c  28 30 34 e5                                      ldr r3, [r4, #-0x28]!
0036a420  04 00 a0 e1                                      mov r0, r4
0036a424  0f e0 a0 e1                                      mov lr, pc
0036a428  00 f0 93 e5                                      ldr pc, [r3]
0036a42c  06 00 54 e1                                      cmp r4, r6
0036a430  f9 ff ff 1a                                      bne #0x36a41c
0036a434  71 df 8d e2                                      add sp, sp, #0x1c4
0036a438  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0036a43c  28 30 a0 e3                                      mov r3, #0x28
0036a440  93 64 21 e0                                      mla r1, r3, r4, r6
0036a444  00 00 98 e5                                      ldr r0, [r8]
0036a448  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0036a44c  51 df 13 eb                                      bl #0x862198
0036a450  b4 ff ff ea                                      b #0x36a328
0036a454  01 00 a0 e1                                      mov r0, r1
0036a458  44 1c 07 eb                                      bl #0x531570
0036a45c  f4 ff ff ea                                      b #0x36a434
; mapping-symbol data/literal pool
0036a460  68 a8 62 00 30 3b 00 00 3c 3e 00 00 28 2e 00 00  .byte 0x68, 0xa8, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x3c, 0x3e, 0x00, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x0036a470, declared_size=288, range_size=288, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager6ResumeEi
; demangled: VoxSoundManager::Resume(int)
; decoder-mode: arm
0036a470  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
0036a474  04 31 9f e5                                      ldr r3, [pc, #0x104]
0036a478  00 00 51 e3                                      cmp r1, #0
0036a47c  65 df 4d e2                                      sub sp, sp, #0x194
0036a480  00 60 a0 e1                                      mov r6, r0
0036a484  03 30 8f e0                                      add r3, pc, r3
0036a488  37 00 00 ba                                      blt #0x36a56c
0036a48c  f0 20 9f e5                                      ldr r2, [pc, #0xf0]
0036a490  02 20 93 e7                                      ldr r2, [r3, r2]
0036a494  00 40 d2 e5                                      ldrb r4, [r2]
0036a498  00 00 54 e3                                      cmp r4, #0
0036a49c  34 00 00 1a                                      bne #0x36a574
0036a4a0  08 20 90 e5                                      ldr r2, [r0, #8]
0036a4a4  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
0036a4a8  0c c0 a0 e3                                      mov ip, #0xc
0036a4ac  00 00 93 e7                                      ldr r0, [r3, r0]
0036a4b0  00 00 90 e5                                      ldr r0, [r0]
0036a4b4  9c 01 21 e0                                      mla r1, ip, r1, r0
0036a4b8  04 10 91 e5                                      ldr r1, [r1, #4]
0036a4bc  01 01 92 e7                                      ldr r0, [r2, r1, lsl #2]
0036a4c0  00 00 50 e3                                      cmp r0, #0
0036a4c4  28 00 00 0a                                      beq #0x36a56c
0036a4c8  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
0036a4cc  0d 50 a0 e1                                      mov r5, sp
0036a4d0  6e cf 8d e2                                      add ip, sp, #0x1b8
0036a4d4  00 00 93 e7                                      ldr r0, [r3, r0]
0036a4d8  00 80 e0 e3                                      mvn r8, #0
0036a4dc  28 30 8d e2                                      add r3, sp, #0x28
0036a4e0  08 00 80 e2                                      add r0, r0, #8
0036a4e4  00 90 e0 e3                                      mvn sb, #0
0036a4e8  f0 82 43 e1                                      strd r8, sb, [r3, #-0x20]
0036a4ec  18 40 03 e5                                      str r4, [r3, #-0x18]
0036a4f0  14 40 03 e5                                      str r4, [r3, #-0x14]
0036a4f4  10 40 03 e5                                      str r4, [r3, #-0x10]
0036a4f8  0c 40 03 e5                                      str r4, [r3, #-0xc]
0036a4fc  08 40 03 e5                                      str r4, [r3, #-8]
0036a500  28 00 03 e5                                      str r0, [r3, #-0x28]
0036a504  28 30 83 e2                                      add r3, r3, #0x28
0036a508  0c 00 53 e1                                      cmp r3, ip
0036a50c  f5 ff ff 1a                                      bne #0x36a4e8
0036a510  01 11 92 e7                                      ldr r1, [r2, r1, lsl #2]
0036a514  00 00 96 e5                                      ldr r0, [r6]
0036a518  0d 20 a0 e1                                      mov r2, sp
0036a51c  0a 30 a0 e3                                      mov r3, #0xa
0036a520  08 e0 13 eb                                      bl #0x862548
0036a524  00 70 50 e2                                      subs r7, r0, #0
0036a528  08 00 00 da                                      ble #0x36a550
0036a52c  28 80 a0 e3                                      mov r8, #0x28
0036a530  cd 2c 0c e3                                      movw r2, #0xcccd
0036a534  98 54 21 e0                                      mla r1, r8, r4, r5
0036a538  00 00 96 e5                                      ldr r0, [r6]
0036a53c  01 40 84 e2                                      add r4, r4, #1
0036a540  4c 2d 43 e3                                      movt r2, #0x3d4c
0036a544  ff de 13 eb                                      bl #0x862148
0036a548  07 00 54 e1                                      cmp r4, r7
0036a54c  f7 ff ff 1a                                      bne #0x36a530
0036a550  19 4e 8d e2                                      add r4, sp, #0x190
0036a554  28 30 34 e5                                      ldr r3, [r4, #-0x28]!
0036a558  04 00 a0 e1                                      mov r0, r4
0036a55c  0f e0 a0 e1                                      mov lr, pc
0036a560  00 f0 93 e5                                      ldr pc, [r3]
0036a564  05 00 54 e1                                      cmp r4, r5
0036a568  f9 ff ff 1a                                      bne #0x36a554
0036a56c  65 df 8d e2                                      add sp, sp, #0x194
0036a570  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
0036a574  01 00 a0 e1                                      mov r0, r1
0036a578  d2 1b 07 eb                                      bl #0x5314c8
0036a57c  fa ff ff ea                                      b #0x36a56c
; mapping-symbol data/literal pool
0036a580  0c a6 62 00 30 3b 00 00 3c 3e 00 00 28 2e 00 00  .byte 0x0c, 0xa6, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x3c, 0x3e, 0x00, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x0036a590, declared_size=148, range_size=148, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager15ResumeAllSoundsEv
; demangled: VoxSoundManager::ResumeAllSounds()
; decoder-mode: arm
0036a590  10 40 2d e9                                      push {r4, lr}
0036a594  78 40 9f e5                                      ldr r4, [pc, #0x78]
0036a598  78 30 9f e5                                      ldr r3, [pc, #0x78]
0036a59c  04 40 8f e0                                      add r4, pc, r4
0036a5a0  03 30 94 e7                                      ldr r3, [r4, r3]
0036a5a4  00 30 d3 e5                                      ldrb r3, [r3]
0036a5a8  00 00 53 e3                                      cmp r3, #0
0036a5ac  07 00 00 1a                                      bne #0x36a5d0
0036a5b0  00 00 90 e5                                      ldr r0, [r0]
0036a5b4  00 00 50 e3                                      cmp r0, #0
0036a5b8  0b 00 00 0a                                      beq #0x36a5ec
0036a5bc  cd 2c 0c e3                                      movw r2, #0xcccd
0036a5c0  00 10 e0 e3                                      mvn r1, #0
0036a5c4  4c 2e 43 e3                                      movt r2, #0x3e4c
0036a5c8  10 40 bd e8                                      pop {r4, lr}
0036a5cc  ab de 13 ea                                      b #0x862080
0036a5d0  0f 07 02 e3                                      movw r0, #0x270f
0036a5d4  bb 1b 07 eb                                      bl #0x5314c8
0036a5d8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0036a5dc  03 30 94 e7                                      ldr r3, [r4, r3]
0036a5e0  00 20 d3 e5                                      ldrb r2, [r3]
0036a5e4  00 00 52 e3                                      cmp r2, #0
0036a5e8  00 00 00 1a                                      bne #0x36a5f0
0036a5ec  10 80 bd e8                                      pop {r4, pc}
0036a5f0  00 20 a0 e3                                      mov r2, #0
0036a5f4  00 20 c3 e5                                      strb r2, [r3]
0036a5f8  20 30 9f e5                                      ldr r3, [pc, #0x20]
0036a5fc  03 30 94 e7                                      ldr r3, [r4, r3]
0036a600  00 00 93 e5                                      ldr r0, [r3]
0036a604  01 00 70 e3                                      cmn r0, #1
0036a608  f7 ff ff 0a                                      beq #0x36a5ec
0036a60c  10 40 bd e8                                      pop {r4, lr}
0036a610  ac 1b 07 ea                                      b #0x5314c8
; mapping-symbol data/literal pool
0036a614  f4 a4 62 00 30 3b 00 00 34 42 00 00 98 08 00 00  .byte 0xf4, 0xa4, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x34, 0x42, 0x00, 0x00, 0x98, 0x08, 0x00, 0x00

; FUNCTION 0x0036a624, declared_size=64, range_size=64, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager14PauseAllSoundsEv
; demangled: VoxSoundManager::PauseAllSounds()
; decoder-mode: arm
0036a624  30 30 9f e5                                      ldr r3, [pc, #0x30]
0036a628  30 20 9f e5                                      ldr r2, [pc, #0x30]
0036a62c  03 30 8f e0                                      add r3, pc, r3
0036a630  02 20 93 e7                                      ldr r2, [r3, r2]
0036a634  00 30 d2 e5                                      ldrb r3, [r2]
0036a638  00 00 53 e3                                      cmp r3, #0
0036a63c  1e ff 2f 11                                      bxne lr
0036a640  00 00 90 e5                                      ldr r0, [r0]
0036a644  00 00 50 e3                                      cmp r0, #0
0036a648  1e ff 2f 01                                      bxeq lr
0036a64c  cd 2c 0c e3                                      movw r2, #0xcccd
0036a650  00 10 e0 e3                                      mvn r1, #0
0036a654  4c 2e 43 e3                                      movt r2, #0x3e4c
0036a658  92 de 13 ea                                      b #0x8620a8
; mapping-symbol data/literal pool
0036a65c  64 a4 62 00 30 3b 00 00                          .byte 0x64, 0xa4, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00

; FUNCTION 0x0036a664, declared_size=288, range_size=288, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager5PauseEi
; demangled: VoxSoundManager::Pause(int)
; decoder-mode: arm
0036a664  f0 43 2d e9                                      push {r4, r5, r6, r7, r8, sb, lr}
0036a668  04 31 9f e5                                      ldr r3, [pc, #0x104]
0036a66c  00 00 51 e3                                      cmp r1, #0
0036a670  65 df 4d e2                                      sub sp, sp, #0x194
0036a674  00 60 a0 e1                                      mov r6, r0
0036a678  03 30 8f e0                                      add r3, pc, r3
0036a67c  37 00 00 ba                                      blt #0x36a760
0036a680  f0 20 9f e5                                      ldr r2, [pc, #0xf0]
0036a684  02 20 93 e7                                      ldr r2, [r3, r2]
0036a688  00 40 d2 e5                                      ldrb r4, [r2]
0036a68c  00 00 54 e3                                      cmp r4, #0
0036a690  34 00 00 1a                                      bne #0x36a768
0036a694  08 20 90 e5                                      ldr r2, [r0, #8]
0036a698  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
0036a69c  0c c0 a0 e3                                      mov ip, #0xc
0036a6a0  00 00 93 e7                                      ldr r0, [r3, r0]
0036a6a4  00 00 90 e5                                      ldr r0, [r0]
0036a6a8  9c 01 21 e0                                      mla r1, ip, r1, r0
0036a6ac  04 10 91 e5                                      ldr r1, [r1, #4]
0036a6b0  01 01 92 e7                                      ldr r0, [r2, r1, lsl #2]
0036a6b4  00 00 50 e3                                      cmp r0, #0
0036a6b8  28 00 00 0a                                      beq #0x36a760
0036a6bc  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
0036a6c0  0d 50 a0 e1                                      mov r5, sp
0036a6c4  6e cf 8d e2                                      add ip, sp, #0x1b8
0036a6c8  00 00 93 e7                                      ldr r0, [r3, r0]
0036a6cc  00 80 e0 e3                                      mvn r8, #0
0036a6d0  28 30 8d e2                                      add r3, sp, #0x28
0036a6d4  08 00 80 e2                                      add r0, r0, #8
0036a6d8  00 90 e0 e3                                      mvn sb, #0
0036a6dc  f0 82 43 e1                                      strd r8, sb, [r3, #-0x20]
0036a6e0  18 40 03 e5                                      str r4, [r3, #-0x18]
0036a6e4  14 40 03 e5                                      str r4, [r3, #-0x14]
0036a6e8  10 40 03 e5                                      str r4, [r3, #-0x10]
0036a6ec  0c 40 03 e5                                      str r4, [r3, #-0xc]
0036a6f0  08 40 03 e5                                      str r4, [r3, #-8]
0036a6f4  28 00 03 e5                                      str r0, [r3, #-0x28]
0036a6f8  28 30 83 e2                                      add r3, r3, #0x28
0036a6fc  0c 00 53 e1                                      cmp r3, ip
0036a700  f5 ff ff 1a                                      bne #0x36a6dc
0036a704  01 11 92 e7                                      ldr r1, [r2, r1, lsl #2]
0036a708  00 00 96 e5                                      ldr r0, [r6]
0036a70c  0d 20 a0 e1                                      mov r2, sp
0036a710  0a 30 a0 e3                                      mov r3, #0xa
0036a714  8b df 13 eb                                      bl #0x862548
0036a718  00 70 50 e2                                      subs r7, r0, #0
0036a71c  08 00 00 da                                      ble #0x36a744
0036a720  28 80 a0 e3                                      mov r8, #0x28
0036a724  cd 2c 0c e3                                      movw r2, #0xcccd
0036a728  98 54 21 e0                                      mla r1, r8, r4, r5
0036a72c  00 00 96 e5                                      ldr r0, [r6]
0036a730  01 40 84 e2                                      add r4, r4, #1
0036a734  4c 2d 43 e3                                      movt r2, #0x3d4c
0036a738  8c de 13 eb                                      bl #0x862170
0036a73c  07 00 54 e1                                      cmp r4, r7
0036a740  f7 ff ff 1a                                      bne #0x36a724
0036a744  19 4e 8d e2                                      add r4, sp, #0x190
0036a748  28 30 34 e5                                      ldr r3, [r4, #-0x28]!
0036a74c  04 00 a0 e1                                      mov r0, r4
0036a750  0f e0 a0 e1                                      mov lr, pc
0036a754  00 f0 93 e5                                      ldr pc, [r3]
0036a758  05 00 54 e1                                      cmp r4, r5
0036a75c  f9 ff ff 1a                                      bne #0x36a748
0036a760  65 df 8d e2                                      add sp, sp, #0x194
0036a764  f0 83 bd e8                                      pop {r4, r5, r6, r7, r8, sb, pc}
0036a768  01 00 a0 e1                                      mov r0, r1
0036a76c  2b 1b 07 eb                                      bl #0x531420
0036a770  fa ff ff ea                                      b #0x36a760
; mapping-symbol data/literal pool
0036a774  18 a4 62 00 30 3b 00 00 3c 3e 00 00 28 2e 00 00  .byte 0x18, 0xa4, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x3c, 0x3e, 0x00, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x0036a784, declared_size=60, range_size=60, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager10PauseMusicEv
; demangled: VoxSoundManager::PauseMusic()
; decoder-mode: arm
0036a784  24 10 90 e5                                      ldr r1, [r0, #0x24]
0036a788  28 30 9f e5                                      ldr r3, [pc, #0x28]
0036a78c  01 00 71 e3                                      cmn r1, #1
0036a790  03 30 8f e0                                      add r3, pc, r3
0036a794  1e ff 2f 01                                      bxeq lr
0036a798  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
0036a79c  02 30 93 e7                                      ldr r3, [r3, r2]
0036a7a0  00 30 d3 e5                                      ldrb r3, [r3]
0036a7a4  00 00 53 e3                                      cmp r3, #0
0036a7a8  00 00 00 1a                                      bne #0x36a7b0
0036a7ac  ac ff ff ea                                      b #0x36a664
0036a7b0  01 00 a0 e1                                      mov r0, r1
0036a7b4  19 1b 07 ea                                      b #0x531420
; mapping-symbol data/literal pool
0036a7b8  00 a3 62 00 30 3b 00 00                          .byte 0x00, 0xa3, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00

; FUNCTION 0x0036a7c0, declared_size=1812, range_size=1812, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager18PlaySoundPackSoundEiPKcN3vox11FormatTypesEiiNS2_21VoxSourceLoadingFlagsERKN6glitch4core8vector3dIfEEff
; demangled: VoxSoundManager::PlaySoundPackSound(int, char const*, vox::FormatTypes, int, int, vox::VoxSourceLoadingFlags, glitch::core::vector3d<float> const&, float, float)
; decoder-mode: arm
0036a7c0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036a7c4  e4 56 9f e5                                      ldr r5, [pc, #0x6e4]
0036a7c8  e4 36 9f e5                                      ldr r3, [pc, #0x6e4]
0036a7cc  cc d0 4d e2                                      sub sp, sp, #0xcc
0036a7d0  05 50 8f e0                                      add r5, pc, r5
0036a7d4  03 30 95 e7                                      ldr r3, [r5, r3]
0036a7d8  00 40 a0 e1                                      mov r4, r0
0036a7dc  01 60 a0 e1                                      mov r6, r1
0036a7e0  00 30 d3 e5                                      ldrb r3, [r3]
0036a7e4  fc 70 9d e5                                      ldr r7, [sp, #0xfc]
0036a7e8  00 a1 9d e5                                      ldr sl, [sp, #0x100]
0036a7ec  00 00 53 e3                                      cmp r3, #0
0036a7f0  04 91 9d e5                                      ldr sb, [sp, #0x104]
0036a7f4  71 00 00 1a                                      bne #0x36a9c0
0036a7f8  08 30 90 e5                                      ldr r3, [r0, #8]
0036a7fc  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
0036a800  00 00 53 e3                                      cmp r3, #0
0036a804  b9 00 00 0a                                      beq #0x36aaf0
0036a808  03 10 a0 e1                                      mov r1, r3
0036a80c  00 00 94 e5                                      ldr r0, [r4]
0036a810  38 df 13 eb                                      bl #0x8624f8
0036a814  00 00 50 e3                                      cmp r0, #0
0036a818  68 00 00 0a                                      beq #0x36a9c0
0036a81c  08 30 94 e5                                      ldr r3, [r4, #8]
0036a820  f4 20 9d e5                                      ldr r2, [sp, #0xf4]
0036a824  00 00 94 e5                                      ldr r0, [r4]
0036a828  06 11 93 e7                                      ldr r1, [r3, r6, lsl #2]
0036a82c  79 df 13 eb                                      bl #0x862618
0036a830  c7 c0 8d e2                                      add ip, sp, #0xc7
0036a834  00 c0 8d e5                                      str ip, [sp]
0036a838  64 80 84 e2                                      add r8, r4, #0x64
0036a83c  b8 c0 8d e2                                      add ip, sp, #0xb8
0036a840  06 10 a0 e1                                      mov r1, r6
0036a844  c0 20 8d e2                                      add r2, sp, #0xc0
0036a848  bc 30 8d e2                                      add r3, sp, #0xbc
0036a84c  04 c0 8d e5                                      str ip, [sp, #4]
0036a850  08 00 a0 e1                                      mov r0, r8
0036a854  b4 c0 8d e2                                      add ip, sp, #0xb4
0036a858  08 c0 8d e5                                      str ip, [sp, #8]
0036a85c  0c 7c 14 eb                                      bl #0x889894
0036a860  08 30 94 e5                                      ldr r3, [r4, #8]
0036a864  00 10 94 e5                                      ldr r1, [r4]
0036a868  00 c0 a0 e3                                      mov ip, #0
0036a86c  06 21 93 e7                                      ldr r2, [r3, r6, lsl #2]
0036a870  38 60 8d e2                                      add r6, sp, #0x38
0036a874  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
0036a878  06 00 a0 e1                                      mov r0, r6
0036a87c  00 c0 8d e5                                      str ip, [sp]
0036a880  ec de 13 eb                                      bl #0x862438
0036a884  b8 20 9d e5                                      ldr r2, [sp, #0xb8]
0036a888  00 00 52 e3                                      cmp r2, #0
0036a88c  4e 00 00 0a                                      beq #0x36a9cc
0036a890  0a 00 a0 e1                                      mov r0, sl
0036a894  00 10 a0 e3                                      mov r1, #0
0036a898  05 8f fe eb                                      bl #0x30e4b4
0036a89c  00 00 50 e3                                      cmp r0, #0
0036a8a0  04 00 00 0a                                      beq #0x36a8b8
0036a8a4  09 00 a0 e1                                      mov r0, sb
0036a8a8  00 10 a0 e3                                      mov r1, #0
0036a8ac  00 8f fe eb                                      bl #0x30e4b4
0036a8b0  00 00 50 e3                                      cmp r0, #0
0036a8b4  93 00 00 1a                                      bne #0x36ab08
0036a8b8  08 c0 97 e5                                      ldr ip, [r7, #8]
0036a8bc  00 20 97 e5                                      ldr r2, [r7]
0036a8c0  04 30 97 e5                                      ldr r3, [r7, #4]
0036a8c4  00 00 94 e5                                      ldr r0, [r4]
0036a8c8  06 10 a0 e1                                      mov r1, r6
0036a8cc  00 c0 8d e5                                      str ip, [sp]
0036a8d0  5c dd 13 eb                                      bl #0x861e48
0036a8d4  54 00 94 e5                                      ldr r0, [r4, #0x54]
0036a8d8  21 90 fe eb                                      bl #0x30e964
0036a8dc  00 70 94 e5                                      ldr r7, [r4]
0036a8e0  00 30 a0 e1                                      mov r3, r0
0036a8e4  06 10 a0 e1                                      mov r1, r6
0036a8e8  07 00 a0 e1                                      mov r0, r7
0036a8ec  02 20 a0 e3                                      mov r2, #2
0036a8f0  24 dd 13 eb                                      bl #0x861d88
0036a8f4  58 00 94 e5                                      ldr r0, [r4, #0x58]
0036a8f8  19 90 fe eb                                      bl #0x30e964
0036a8fc  00 70 94 e5                                      ldr r7, [r4]
0036a900  00 30 a0 e1                                      mov r3, r0
0036a904  06 10 a0 e1                                      mov r1, r6
0036a908  07 00 a0 e1                                      mov r0, r7
0036a90c  01 20 a0 e3                                      mov r2, #1
0036a910  1c dd 13 eb                                      bl #0x861d88
0036a914  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0036a918  00 00 94 e5                                      ldr r0, [r4]
0036a91c  06 10 a0 e1                                      mov r1, r6
0036a920  03 20 a0 e3                                      mov r2, #3
0036a924  17 dd 13 eb                                      bl #0x861d88
0036a928  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
0036a92c  02 00 53 e3                                      cmp r3, #2
0036a930  86 00 00 0a                                      beq #0x36ab50
0036a934  7c 75 9f e5                                      ldr r7, [pc, #0x57c]
0036a938  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
0036a93c  00 00 94 e5                                      ldr r0, [r4]
0036a940  06 10 a0 e1                                      mov r1, r6
0036a944  07 70 8f e0                                      add r7, pc, r7
0036a948  00 20 a0 e3                                      mov r2, #0
0036a94c  ff db 13 eb                                      bl #0x861950
0036a950  00 30 97 e5                                      ldr r3, [r7]
0036a954  01 00 13 e3                                      tst r3, #1
0036a958  58 00 00 0a                                      beq #0x36aac0
0036a95c  58 75 9f e5                                      ldr r7, [pc, #0x558]
0036a960  07 70 8f e0                                      add r7, pc, r7
0036a964  08 30 97 e5                                      ldr r3, [r7, #8]
0036a968  01 00 13 e3                                      tst r3, #1
0036a96c  46 00 00 0a                                      beq #0x36aa8c
0036a970  48 35 9f e5                                      ldr r3, [pc, #0x548]
0036a974  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
0036a978  03 30 8f e0                                      add r3, pc, r3
0036a97c  04 10 93 e5                                      ldr r1, [r3, #4]
0036a980  01 00 52 e1                                      cmp r2, r1
0036a984  15 00 00 0a                                      beq #0x36a9e0
0036a988  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0036a98c  03 00 52 e1                                      cmp r2, r3
0036a990  12 00 00 0a                                      beq #0x36a9e0
0036a994  00 00 94 e5                                      ldr r0, [r4]
0036a998  06 10 a0 e1                                      mov r1, r6
0036a99c  ad dd 13 eb                                      bl #0x862058
0036a9a0  cd 3c 0c e3                                      movw r3, #0xcccd
0036a9a4  00 00 94 e5                                      ldr r0, [r4]
0036a9a8  06 10 a0 e1                                      mov r1, r6
0036a9ac  c7 20 dd e5                                      ldrb r2, [sp, #0xc7]
0036a9b0  4c 3d 43 e3                                      movt r3, #0x3d4c
0036a9b4  01 de 13 eb                                      bl #0x8621c0
0036a9b8  06 00 a0 e1                                      mov r0, r6
0036a9bc  7a f6 13 eb                                      bl #0x8683ac
0036a9c0  00 00 a0 e3                                      mov r0, #0
0036a9c4  cc d0 8d e2                                      add sp, sp, #0xcc
0036a9c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0036a9cc  00 00 94 e5                                      ldr r0, [r4]
0036a9d0  06 10 a0 e1                                      mov r1, r6
0036a9d4  01 30 a0 e3                                      mov r3, #1
0036a9d8  e0 dc 13 eb                                      bl #0x861d60
0036a9dc  cc ff ff ea                                      b #0x36a914
0036a9e0  dc 34 9f e5                                      ldr r3, [pc, #0x4dc]
0036a9e4  dc 14 9f e5                                      ldr r1, [pc, #0x4dc]
0036a9e8  03 00 95 e7                                      ldr r0, [r5, r3]
0036a9ec  01 10 8f e0                                      add r1, pc, r1
0036a9f0  13 d9 fe eb                                      bl #0x320e44
0036a9f4  00 70 a0 e1                                      mov r7, r0
0036a9f8  ea 90 fe eb                                      bl #0x30eda8
0036a9fc  00 50 a0 e1                                      mov r5, r0
0036aa00  07 00 a0 e1                                      mov r0, r7
0036aa04  d6 8f fe eb                                      bl #0x30e964
0036aa08  a5 8f fe eb                                      bl #0x30e8a4
0036aa0c  15 32 00 e3                                      movw r3, #0x215
0036aa10  4d 31 42 e3                                      movt r3, #0x214d
0036aa14  93 25 c3 e0                                      smull r2, r3, r3, r5
0036aa18  c5 2f a0 e1                                      asr r2, r5, #0x1f
0036aa1c  43 32 62 e0                                      rsb r3, r2, r3, asr #4
0036aa20  00 80 a0 e1                                      mov r8, r0
0036aa24  7b 00 a0 e3                                      mov r0, #0x7b
0036aa28  90 53 60 e0                                      mls r0, r0, r3, r5
0036aa2c  01 90 a0 e1                                      mov sb, r1
0036aa30  be 90 fe eb                                      bl #0x30ed30
0036aa34  fc 29 0a e3                                      movw r2, #0xa9fc
0036aa38  4d 32 06 e3                                      movw r3, #0x624d
0036aa3c  f1 22 4d e3                                      movt r2, #0xd2f1
0036aa40  50 3f 43 e3                                      movt r3, #0x3f50
0036aa44  1a 90 fe eb                                      bl #0x30eab4
0036aa48  b8 2e 01 e3                                      movw r2, #0x1eb8
0036aa4c  51 38 0b e3                                      movw r3, #0xb851
0036aa50  85 2b 4e e3                                      movt r2, #0xeb85
0036aa54  ee 3f 43 e3                                      movt r3, #0x3fee
0036aa58  39 90 fe eb                                      bl #0x30eb44
0036aa5c  00 20 a0 e1                                      mov r2, r0
0036aa60  01 30 a0 e1                                      mov r3, r1
0036aa64  08 00 a0 e1                                      mov r0, r8
0036aa68  09 10 a0 e1                                      mov r1, sb
0036aa6c  10 90 fe eb                                      bl #0x30eab4
0036aa70  0a 8f fe eb                                      bl #0x30e6a0
0036aa74  bc 10 9d e5                                      ldr r1, [sp, #0xbc]
0036aa78  00 20 a0 e1                                      mov r2, r0
0036aa7c  04 00 a0 e1                                      mov r0, r4
0036aa80  c6 fc ff eb                                      bl #0x369da0
0036aa84  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
0036aa88  c1 ff ff ea                                      b #0x36a994
0036aa8c  08 a0 87 e2                                      add sl, r7, #8
0036aa90  0a 00 a0 e1                                      mov r0, sl
0036aa94  34 8f fe eb                                      bl #0x30e76c
0036aa98  00 00 50 e3                                      cmp r0, #0
0036aa9c  b3 ff ff 0a                                      beq #0x36a970
0036aaa0  24 14 9f e5                                      ldr r1, [pc, #0x424]
0036aaa4  08 00 a0 e1                                      mov r0, r8
0036aaa8  01 10 8f e0                                      add r1, pc, r1
0036aaac  81 83 14 eb                                      bl #0x88b8b8
0036aab0  0c 00 87 e5                                      str r0, [r7, #0xc]
0036aab4  0a 00 a0 e1                                      mov r0, sl
0036aab8  df 8f fe eb                                      bl #0x30ea3c
0036aabc  ab ff ff ea                                      b #0x36a970
0036aac0  07 00 a0 e1                                      mov r0, r7
0036aac4  28 8f fe eb                                      bl #0x30e76c
0036aac8  00 00 50 e3                                      cmp r0, #0
0036aacc  a2 ff ff 0a                                      beq #0x36a95c
0036aad0  f8 13 9f e5                                      ldr r1, [pc, #0x3f8]
0036aad4  08 00 a0 e1                                      mov r0, r8
0036aad8  01 10 8f e0                                      add r1, pc, r1
0036aadc  75 83 14 eb                                      bl #0x88b8b8
0036aae0  04 00 87 e5                                      str r0, [r7, #4]
0036aae4  07 00 a0 e1                                      mov r0, r7
0036aae8  d3 8f fe eb                                      bl #0x30ea3c
0036aaec  9a ff ff ea                                      b #0x36a95c
0036aaf0  c1 fb ff eb                                      bl #0x3699fc
0036aaf4  08 30 94 e5                                      ldr r3, [r4, #8]
0036aaf8  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
0036aafc  00 00 53 e3                                      cmp r3, #0
0036ab00  ae ff ff 0a                                      beq #0x36a9c0
0036ab04  3f ff ff ea                                      b #0x36a808
0036ab08  08 c0 97 e5                                      ldr ip, [r7, #8]
0036ab0c  00 00 94 e5                                      ldr r0, [r4]
0036ab10  00 20 97 e5                                      ldr r2, [r7]
0036ab14  04 30 97 e5                                      ldr r3, [r7, #4]
0036ab18  06 10 a0 e1                                      mov r1, r6
0036ab1c  00 c0 8d e5                                      str ip, [sp]
0036ab20  c8 dc 13 eb                                      bl #0x861e48
0036ab24  0a 30 a0 e1                                      mov r3, sl
0036ab28  00 00 94 e5                                      ldr r0, [r4]
0036ab2c  06 10 a0 e1                                      mov r1, r6
0036ab30  02 20 a0 e3                                      mov r2, #2
0036ab34  93 dc 13 eb                                      bl #0x861d88
0036ab38  09 30 a0 e1                                      mov r3, sb
0036ab3c  00 00 94 e5                                      ldr r0, [r4]
0036ab40  06 10 a0 e1                                      mov r1, r6
0036ab44  01 20 a0 e3                                      mov r2, #1
0036ab48  8e dc 13 eb                                      bl #0x861d88
0036ab4c  70 ff ff ea                                      b #0x36a914
0036ab50  00 00 94 e5                                      ldr r0, [r4]
0036ab54  06 10 a0 e1                                      mov r1, r6
0036ab58  00 20 a0 e3                                      mov r2, #0
0036ab5c  01 30 a0 e3                                      mov r3, #1
0036ab60  7e dc 13 eb                                      bl #0x861d60
0036ab64  a4 c0 8d e2                                      add ip, sp, #0xa4
0036ab68  00 00 94 e5                                      ldr r0, [r4]
0036ab6c  00 c0 8d e5                                      str ip, [sp]
0036ab70  a0 c0 8d e2                                      add ip, sp, #0xa0
0036ab74  b0 10 8d e2                                      add r1, sp, #0xb0
0036ab78  ac 20 8d e2                                      add r2, sp, #0xac
0036ab7c  a8 30 8d e2                                      add r3, sp, #0xa8
0036ab80  04 c0 8d e5                                      str ip, [sp, #4]
0036ab84  9c c0 8d e2                                      add ip, sp, #0x9c
0036ab88  08 c0 8d e5                                      str ip, [sp, #8]
0036ab8c  c5 db 13 eb                                      bl #0x861aa8
0036ab90  ac 30 9d e5                                      ldr r3, [sp, #0xac]
0036ab94  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
0036ab98  78 00 8d e2                                      add r0, sp, #0x78
0036ab9c  7c 30 8d e5                                      str r3, [sp, #0x7c]
0036aba0  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0036aba4  1c 20 8d e5                                      str r2, [sp, #0x1c]
0036aba8  9c b0 9d e5                                      ldr fp, [sp, #0x9c]
0036abac  78 30 8d e5                                      str r3, [sp, #0x78]
0036abb0  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
0036abb4  80 30 8d e5                                      str r3, [sp, #0x80]
0036abb8  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
0036abbc  18 30 8d e5                                      str r3, [sp, #0x18]
0036abc0  46 cf ff eb                                      bl #0x35e8e0
0036abc4  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0036abc8  08 90 90 e5                                      ldr sb, [r0, #8]
0036abcc  04 a0 90 e5                                      ldr sl, [r0, #4]
0036abd0  02 11 8e e2                                      add r1, lr, #0x80000000
0036abd4  00 30 a0 e1                                      mov r3, r0
0036abd8  09 00 a0 e1                                      mov r0, sb
0036abdc  00 70 93 e5                                      ldr r7, [r3]
0036abe0  61 90 fe eb                                      bl #0x30ed6c
0036abe4  0a 10 a0 e1                                      mov r1, sl
0036abe8  00 30 a0 e1                                      mov r3, r0
0036abec  0b 00 a0 e1                                      mov r0, fp
0036abf0  14 30 8d e5                                      str r3, [sp, #0x14]
0036abf4  5c 90 fe eb                                      bl #0x30ed6c
0036abf8  14 30 9d e5                                      ldr r3, [sp, #0x14]
0036abfc  00 10 a0 e1                                      mov r1, r0
0036ac00  03 00 a0 e1                                      mov r0, r3
0036ac04  e6 8f fe eb                                      bl #0x30eba4
0036ac08  02 11 8b e2                                      add r1, fp, #0x80000000
0036ac0c  6c 00 8d e5                                      str r0, [sp, #0x6c]
0036ac10  07 00 a0 e1                                      mov r0, r7
0036ac14  54 90 fe eb                                      bl #0x30ed6c
0036ac18  09 10 a0 e1                                      mov r1, sb
0036ac1c  00 b0 a0 e1                                      mov fp, r0
0036ac20  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0036ac24  50 90 fe eb                                      bl #0x30ed6c
0036ac28  00 10 a0 e1                                      mov r1, r0
0036ac2c  0b 00 a0 e1                                      mov r0, fp
0036ac30  db 8f fe eb                                      bl #0x30eba4
0036ac34  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0036ac38  70 00 8d e5                                      str r0, [sp, #0x70]
0036ac3c  0a 00 a0 e1                                      mov r0, sl
0036ac40  02 11 82 e2                                      add r1, r2, #0x80000000
0036ac44  48 90 fe eb                                      bl #0x30ed6c
0036ac48  07 10 a0 e1                                      mov r1, r7
0036ac4c  00 b0 a0 e1                                      mov fp, r0
0036ac50  18 00 9d e5                                      ldr r0, [sp, #0x18]
0036ac54  44 90 fe eb                                      bl #0x30ed6c
0036ac58  00 10 a0 e1                                      mov r1, r0
0036ac5c  0b 00 a0 e1                                      mov r0, fp
0036ac60  cf 8f fe eb                                      bl #0x30eba4
0036ac64  74 00 8d e5                                      str r0, [sp, #0x74]
0036ac68  6c 00 8d e2                                      add r0, sp, #0x6c
0036ac6c  1b cf ff eb                                      bl #0x35e8e0
0036ac70  08 e0 90 e5                                      ldr lr, [r0, #8]
0036ac74  00 30 a0 e1                                      mov r3, r0
0036ac78  02 11 8a e2                                      add r1, sl, #0x80000000
0036ac7c  20 e0 8d e5                                      str lr, [sp, #0x20]
0036ac80  04 20 90 e5                                      ldr r2, [r0, #4]
0036ac84  0e 00 a0 e1                                      mov r0, lr
0036ac88  1c 20 8d e5                                      str r2, [sp, #0x1c]
0036ac8c  00 30 93 e5                                      ldr r3, [r3]
0036ac90  18 30 8d e5                                      str r3, [sp, #0x18]
0036ac94  34 90 fe eb                                      bl #0x30ed6c
0036ac98  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0036ac9c  00 b0 a0 e1                                      mov fp, r0
0036aca0  09 00 a0 e1                                      mov r0, sb
0036aca4  30 90 fe eb                                      bl #0x30ed6c
0036aca8  00 10 a0 e1                                      mov r1, r0
0036acac  0b 00 a0 e1                                      mov r0, fp
0036acb0  bb 8f fe eb                                      bl #0x30eba4
0036acb4  02 11 89 e2                                      add r1, sb, #0x80000000
0036acb8  60 00 8d e5                                      str r0, [sp, #0x60]
0036acbc  18 00 9d e5                                      ldr r0, [sp, #0x18]
0036acc0  29 90 fe eb                                      bl #0x30ed6c
0036acc4  20 10 9d e5                                      ldr r1, [sp, #0x20]
0036acc8  00 b0 a0 e1                                      mov fp, r0
0036accc  07 00 a0 e1                                      mov r0, r7
0036acd0  25 90 fe eb                                      bl #0x30ed6c
0036acd4  00 10 a0 e1                                      mov r1, r0
0036acd8  0b 00 a0 e1                                      mov r0, fp
0036acdc  b0 8f fe eb                                      bl #0x30eba4
0036ace0  02 11 87 e2                                      add r1, r7, #0x80000000
0036ace4  64 00 8d e5                                      str r0, [sp, #0x64]
0036ace8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0036acec  1e 90 fe eb                                      bl #0x30ed6c
0036acf0  18 10 9d e5                                      ldr r1, [sp, #0x18]
0036acf4  00 b0 a0 e1                                      mov fp, r0
0036acf8  0a 00 a0 e1                                      mov r0, sl
0036acfc  1a 90 fe eb                                      bl #0x30ed6c
0036ad00  00 10 a0 e1                                      mov r1, r0
0036ad04  0b 00 a0 e1                                      mov r0, fp
0036ad08  a5 8f fe eb                                      bl #0x30eba4
0036ad0c  68 00 8d e5                                      str r0, [sp, #0x68]
0036ad10  60 00 8d e2                                      add r0, sp, #0x60
0036ad14  f1 ce ff eb                                      bl #0x35e8e0
0036ad18  00 c0 a0 e1                                      mov ip, r0
0036ad1c  08 e0 9c e5                                      ldr lr, [ip, #8]
0036ad20  00 00 94 e5                                      ldr r0, [r4]
0036ad24  06 10 a0 e1                                      mov r1, r6
0036ad28  34 e0 8d e5                                      str lr, [sp, #0x34]
0036ad2c  00 e0 9c e5                                      ldr lr, [ip]
0036ad30  98 20 8d e2                                      add r2, sp, #0x98
0036ad34  94 30 8d e2                                      add r3, sp, #0x94
0036ad38  2c e0 8d e5                                      str lr, [sp, #0x2c]
0036ad3c  04 c0 9c e5                                      ldr ip, [ip, #4]
0036ad40  30 c0 8d e5                                      str ip, [sp, #0x30]
0036ad44  90 c0 8d e2                                      add ip, sp, #0x90
0036ad48  00 c0 8d e5                                      str ip, [sp]
0036ad4c  f5 db 13 eb                                      bl #0x861d28
0036ad50  88 20 8d e2                                      add r2, sp, #0x88
0036ad54  84 30 8d e2                                      add r3, sp, #0x84
0036ad58  00 00 94 e5                                      ldr r0, [r4]
0036ad5c  8c 10 8d e2                                      add r1, sp, #0x8c
0036ad60  6a db 13 eb                                      bl #0x861b10
0036ad64  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
0036ad68  98 00 9d e5                                      ldr r0, [sp, #0x98]
0036ad6c  8e 8d fe eb                                      bl #0x30e3ac
0036ad70  88 10 9d e5                                      ldr r1, [sp, #0x88]
0036ad74  00 b0 a0 e1                                      mov fp, r0
0036ad78  94 00 9d e5                                      ldr r0, [sp, #0x94]
0036ad7c  8a 8d fe eb                                      bl #0x30e3ac
0036ad80  84 10 9d e5                                      ldr r1, [sp, #0x84]
0036ad84  24 00 8d e5                                      str r0, [sp, #0x24]
0036ad88  90 00 9d e5                                      ldr r0, [sp, #0x90]
0036ad8c  86 8d fe eb                                      bl #0x30e3ac
0036ad90  0b 10 a0 e1                                      mov r1, fp
0036ad94  28 00 8d e5                                      str r0, [sp, #0x28]
0036ad98  18 00 9d e5                                      ldr r0, [sp, #0x18]
0036ad9c  f2 8f fe eb                                      bl #0x30ed6c
0036ada0  24 10 9d e5                                      ldr r1, [sp, #0x24]
0036ada4  00 30 a0 e1                                      mov r3, r0
0036ada8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0036adac  14 30 8d e5                                      str r3, [sp, #0x14]
0036adb0  ed 8f fe eb                                      bl #0x30ed6c
0036adb4  14 30 9d e5                                      ldr r3, [sp, #0x14]
0036adb8  00 10 a0 e1                                      mov r1, r0
0036adbc  03 00 a0 e1                                      mov r0, r3
0036adc0  77 8f fe eb                                      bl #0x30eba4
0036adc4  28 10 9d e5                                      ldr r1, [sp, #0x28]
0036adc8  00 30 a0 e1                                      mov r3, r0
0036adcc  20 00 9d e5                                      ldr r0, [sp, #0x20]
0036add0  14 30 8d e5                                      str r3, [sp, #0x14]
0036add4  e4 8f fe eb                                      bl #0x30ed6c
0036add8  14 30 9d e5                                      ldr r3, [sp, #0x14]
0036addc  00 10 a0 e1                                      mov r1, r0
0036ade0  03 00 a0 e1                                      mov r0, r3
0036ade4  6e 8f fe eb                                      bl #0x30eba4
0036ade8  0b 10 a0 e1                                      mov r1, fp
0036adec  00 20 a0 e1                                      mov r2, r0
0036adf0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0036adf4  10 20 8d e5                                      str r2, [sp, #0x10]
0036adf8  db 8f fe eb                                      bl #0x30ed6c
0036adfc  24 10 9d e5                                      ldr r1, [sp, #0x24]
0036ae00  00 30 a0 e1                                      mov r3, r0
0036ae04  30 00 9d e5                                      ldr r0, [sp, #0x30]
0036ae08  14 30 8d e5                                      str r3, [sp, #0x14]
0036ae0c  d6 8f fe eb                                      bl #0x30ed6c
0036ae10  14 30 9d e5                                      ldr r3, [sp, #0x14]
0036ae14  00 10 a0 e1                                      mov r1, r0
0036ae18  03 00 a0 e1                                      mov r0, r3
0036ae1c  60 8f fe eb                                      bl #0x30eba4
0036ae20  28 10 9d e5                                      ldr r1, [sp, #0x28]
0036ae24  00 30 a0 e1                                      mov r3, r0
0036ae28  34 00 9d e5                                      ldr r0, [sp, #0x34]
0036ae2c  14 30 8d e5                                      str r3, [sp, #0x14]
0036ae30  cd 8f fe eb                                      bl #0x30ed6c
0036ae34  14 30 9d e5                                      ldr r3, [sp, #0x14]
0036ae38  00 10 a0 e1                                      mov r1, r0
0036ae3c  03 00 a0 e1                                      mov r0, r3
0036ae40  57 8f fe eb                                      bl #0x30eba4
0036ae44  0b 10 a0 e1                                      mov r1, fp
0036ae48  00 30 a0 e1                                      mov r3, r0
0036ae4c  07 00 a0 e1                                      mov r0, r7
0036ae50  14 30 8d e5                                      str r3, [sp, #0x14]
0036ae54  c4 8f fe eb                                      bl #0x30ed6c
0036ae58  24 10 9d e5                                      ldr r1, [sp, #0x24]
0036ae5c  00 70 a0 e1                                      mov r7, r0
0036ae60  0a 00 a0 e1                                      mov r0, sl
0036ae64  c0 8f fe eb                                      bl #0x30ed6c
0036ae68  00 10 a0 e1                                      mov r1, r0
0036ae6c  07 00 a0 e1                                      mov r0, r7
0036ae70  4b 8f fe eb                                      bl #0x30eba4
0036ae74  28 10 9d e5                                      ldr r1, [sp, #0x28]
0036ae78  00 70 a0 e1                                      mov r7, r0
0036ae7c  09 00 a0 e1                                      mov r0, sb
0036ae80  b9 8f fe eb                                      bl #0x30ed6c
0036ae84  00 10 a0 e1                                      mov r1, r0
0036ae88  07 00 a0 e1                                      mov r0, r7
0036ae8c  44 8f fe eb                                      bl #0x30eba4
0036ae90  00 10 94 e5                                      ldr r1, [r4]
0036ae94  10 20 9d e5                                      ldr r2, [sp, #0x10]
0036ae98  00 00 8d e5                                      str r0, [sp]
0036ae9c  14 30 9d e5                                      ldr r3, [sp, #0x14]
0036aea0  01 00 a0 e1                                      mov r0, r1
0036aea4  06 10 a0 e1                                      mov r1, r6
0036aea8  e6 db 13 eb                                      bl #0x861e48
0036aeac  a0 fe ff ea                                      b #0x36a934
; mapping-symbol data/literal pool
0036aeb0  c0 a2 62 00 30 3b 00 00 18 7a 63 00 fc 79 63 00  .byte 0xc0, 0xa2, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x18, 0x7a, 0x63, 0x00, 0xfc, 0x79, 0x63, 0x00
0036aec0  e4 79 63 00 f4 37 00 00 e4 65 55 00 10 65 55 00  .byte 0xe4, 0x79, 0x63, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe4, 0x65, 0x55, 0x00, 0x10, 0x65, 0x55, 0x00
0036aed0  d0 64 55 00                                      .byte 0xd0, 0x64, 0x55, 0x00

; FUNCTION 0x0036afb0, declared_size=152, range_size=152, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManagerD1Ev
; demangled: VoxSoundManager::~VoxSoundManager()
; decoder-mode: arm
0036afb0  88 30 9f e5                                      ldr r3, [pc, #0x88]
0036afb4  88 20 9f e5                                      ldr r2, [pc, #0x88]
0036afb8  10 40 2d e9                                      push {r4, lr}
0036afbc  03 30 8f e0                                      add r3, pc, r3
0036afc0  02 20 93 e7                                      ldr r2, [r3, r2]
0036afc4  00 40 a0 e1                                      mov r4, r0
0036afc8  00 30 d2 e5                                      ldrb r3, [r2]
0036afcc  00 00 53 e3                                      cmp r3, #0
0036afd0  0f 00 00 0a                                      beq #0x36b014
0036afd4  64 00 84 e2                                      add r0, r4, #0x64
0036afd8  bb 84 14 eb                                      bl #0x88c2cc
0036afdc  38 00 84 e2                                      add r0, r4, #0x38
0036afe0  71 a2 fe eb                                      bl #0x3139ac
0036afe4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0036afe8  0c 30 84 e2                                      add r3, r4, #0xc
0036afec  00 00 50 e3                                      cmp r0, #0
0036aff0  05 00 00 0a                                      beq #0x36b00c
0036aff4  08 10 93 e5                                      ldr r1, [r3, #8]
0036aff8  01 10 60 e0                                      rsb r1, r0, r1
0036affc  03 10 c1 e3                                      bic r1, r1, #3
0036b000  80 00 51 e3                                      cmp r1, #0x80
0036b004  0a 00 00 8a                                      bhi #0x36b034
0036b008  bc 77 0e eb                                      bl #0x708f00
0036b00c  04 00 a0 e1                                      mov r0, r4
0036b010  10 80 bd e8                                      pop {r4, pc}
0036b014  04 00 90 e5                                      ldr r0, [r0, #4]
0036b018  08 95 fe eb                                      bl #0x310440
0036b01c  04 00 a0 e1                                      mov r0, r4
0036b020  9c f8 ff eb                                      bl #0x369298
0036b024  08 00 94 e5                                      ldr r0, [r4, #8]
0036b028  04 95 fe eb                                      bl #0x310440
0036b02c  31 de 13 eb                                      bl #0x8628f8
0036b030  e7 ff ff ea                                      b #0x36afd4
0036b034  01 95 fe eb                                      bl #0x310440
0036b038  04 00 a0 e1                                      mov r0, r4
0036b03c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036b040  d4 9a 62 00 30 3b 00 00                          .byte 0xd4, 0x9a, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00

; FUNCTION 0x0036b048, declared_size=64, range_size=64, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager14DeleteInstanceEv
; demangled: VoxSoundManager::DeleteInstance()
; decoder-mode: arm
0036b048  30 30 9f e5                                      ldr r3, [pc, #0x30]
0036b04c  30 20 9f e5                                      ldr r2, [pc, #0x30]
0036b050  10 40 2d e9                                      push {r4, lr}
0036b054  03 30 8f e0                                      add r3, pc, r3
0036b058  02 20 93 e7                                      ldr r2, [r3, r2]
0036b05c  00 40 92 e5                                      ldr r4, [r2]
0036b060  00 00 54 e3                                      cmp r4, #0
0036b064  04 00 00 0a                                      beq #0x36b07c
0036b068  04 00 a0 e1                                      mov r0, r4
0036b06c  cf ff ff eb                                      bl #0x36afb0
0036b070  04 00 a0 e1                                      mov r0, r4
0036b074  10 40 bd e8                                      pop {r4, lr}
0036b078  f0 94 fe ea                                      b #0x310440
0036b07c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036b080  3c 9a 62 00 a4 0d 00 00                          .byte 0x3c, 0x9a, 0x62, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x0036b088, declared_size=152, range_size=152, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManagerD2Ev
; demangled: VoxSoundManager::~VoxSoundManager()
; decoder-mode: arm
0036b088  88 30 9f e5                                      ldr r3, [pc, #0x88]
0036b08c  88 20 9f e5                                      ldr r2, [pc, #0x88]
0036b090  10 40 2d e9                                      push {r4, lr}
0036b094  03 30 8f e0                                      add r3, pc, r3
0036b098  02 20 93 e7                                      ldr r2, [r3, r2]
0036b09c  00 40 a0 e1                                      mov r4, r0
0036b0a0  00 30 d2 e5                                      ldrb r3, [r2]
0036b0a4  00 00 53 e3                                      cmp r3, #0
0036b0a8  0f 00 00 0a                                      beq #0x36b0ec
0036b0ac  64 00 84 e2                                      add r0, r4, #0x64
0036b0b0  85 84 14 eb                                      bl #0x88c2cc
0036b0b4  38 00 84 e2                                      add r0, r4, #0x38
0036b0b8  3b a2 fe eb                                      bl #0x3139ac
0036b0bc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0036b0c0  0c 30 84 e2                                      add r3, r4, #0xc
0036b0c4  00 00 50 e3                                      cmp r0, #0
0036b0c8  05 00 00 0a                                      beq #0x36b0e4
0036b0cc  08 10 93 e5                                      ldr r1, [r3, #8]
0036b0d0  01 10 60 e0                                      rsb r1, r0, r1
0036b0d4  03 10 c1 e3                                      bic r1, r1, #3
0036b0d8  80 00 51 e3                                      cmp r1, #0x80
0036b0dc  0a 00 00 8a                                      bhi #0x36b10c
0036b0e0  86 77 0e eb                                      bl #0x708f00
0036b0e4  04 00 a0 e1                                      mov r0, r4
0036b0e8  10 80 bd e8                                      pop {r4, pc}
0036b0ec  04 00 90 e5                                      ldr r0, [r0, #4]
0036b0f0  d2 94 fe eb                                      bl #0x310440
0036b0f4  04 00 a0 e1                                      mov r0, r4
0036b0f8  66 f8 ff eb                                      bl #0x369298
0036b0fc  08 00 94 e5                                      ldr r0, [r4, #8]
0036b100  ce 94 fe eb                                      bl #0x310440
0036b104  fb dd 13 eb                                      bl #0x8628f8
0036b108  e7 ff ff ea                                      b #0x36b0ac
0036b10c  cb 94 fe eb                                      bl #0x310440
0036b110  04 00 a0 e1                                      mov r0, r4
0036b114  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0036b118  fc 99 62 00 30 3b 00 00                          .byte 0xfc, 0x99, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00

; FUNCTION 0x0036b120, declared_size=428, range_size=428, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager21ShowPlayingMusicTitleEPc
; demangled: VoxSoundManager::ShowPlayingMusicTitle(char*)
; decoder-mode: arm
0036b120  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0036b124  7c 41 9f e5                                      ldr r4, [pc, #0x17c]
0036b128  7c 51 9f e5                                      ldr r5, [pc, #0x17c]
0036b12c  00 70 a0 e1                                      mov r7, r0
0036b130  04 40 8f e0                                      add r4, pc, r4
0036b134  05 30 94 e7                                      ldr r3, [r4, r5]
0036b138  70 01 9f e5                                      ldr r0, [pc, #0x170]
0036b13c  48 d0 4d e2                                      sub sp, sp, #0x48
0036b140  00 30 93 e5                                      ldr r3, [r3]
0036b144  00 00 8f e0                                      add r0, pc, r0
0036b148  01 a0 a0 e1                                      mov sl, r1
0036b14c  44 30 8d e5                                      str r3, [sp, #0x44]
0036b150  ef e3 fe eb                                      bl #0x324114
0036b154  4c 06 03 eb                                      bl #0x42ca8c
0036b158  8b 06 03 eb                                      bl #0x42cb8c
0036b15c  00 80 50 e2                                      subs r8, r0, #0
0036b160  38 00 00 0a                                      beq #0x36b248
0036b164  48 31 9f e5                                      ldr r3, [pc, #0x148]
0036b168  03 00 94 e7                                      ldr r0, [r4, r3]
0036b16c  e4 d0 fe eb                                      bl #0x31f504
0036b170  00 00 50 e3                                      cmp r0, #0
0036b174  33 00 00 0a                                      beq #0x36b248
0036b178  38 11 9f e5                                      ldr r1, [pc, #0x138]
0036b17c  30 60 8d e2                                      add r6, sp, #0x30
0036b180  02 20 a0 e3                                      mov r2, #2
0036b184  01 10 8f e0                                      add r1, pc, r1
0036b188  06 00 a0 e1                                      mov r0, r6
0036b18c  54 8e fe eb                                      bl #0x30eae4
0036b190  06 10 a0 e1                                      mov r1, r6
0036b194  08 00 a0 e1                                      mov r0, r8
0036b198  f0 f7 10 eb                                      bl #0x7a9160
0036b19c  00 10 a0 e1                                      mov r1, r0
0036b1a0  00 90 a0 e1                                      mov sb, r0
0036b1a4  10 01 9f e5                                      ldr r0, [pc, #0x110]
0036b1a8  18 60 8d e2                                      add r6, sp, #0x18
0036b1ac  00 00 8f e0                                      add r0, pc, r0
0036b1b0  d7 e3 fe eb                                      bl #0x324114
0036b1b4  0a 10 a0 e1                                      mov r1, sl
0036b1b8  14 20 8d e2                                      add r2, sp, #0x14
0036b1bc  06 00 a0 e1                                      mov r0, r6
0036b1c0  c9 a3 fe eb                                      bl #0x3140ec
0036b1c4  28 30 9d e5                                      ldr r3, [sp, #0x28]
0036b1c8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0036b1cc  03 20 61 e0                                      rsb r2, r1, r3
0036b1d0  0f 00 52 e3                                      cmp r2, #0xf
0036b1d4  22 00 00 8a                                      bhi #0x36b264
0036b1d8  38 00 87 e2                                      add r0, r7, #0x38
0036b1dc  06 00 50 e1                                      cmp r0, r6
0036b1e0  02 00 00 0a                                      beq #0x36b1f0
0036b1e4  28 20 9d e5                                      ldr r2, [sp, #0x28]
0036b1e8  fc 95 fe eb                                      bl #0x3109e0
0036b1ec  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0036b1f0  c8 00 9f e5                                      ldr r0, [pc, #0xc8]
0036b1f4  08 70 8d e2                                      add r7, sp, #8
0036b1f8  00 00 8f e0                                      add r0, pc, r0
0036b1fc  c4 e3 fe eb                                      bl #0x324114
0036b200  00 30 a0 e3                                      mov r3, #0
0036b204  07 00 a0 e1                                      mov r0, r7
0036b208  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0036b20c  09 30 cd e5                                      strb r3, [sp, #9]
0036b210  08 30 cd e5                                      strb r3, [sp, #8]
0036b214  4d b0 10 eb                                      bl #0x797350
0036b218  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0036b21c  01 c0 a0 e3                                      mov ip, #1
0036b220  09 10 a0 e1                                      mov r1, sb
0036b224  02 20 8f e0                                      add r2, pc, r2
0036b228  07 30 a0 e1                                      mov r3, r7
0036b22c  08 00 a0 e1                                      mov r0, r8
0036b230  00 c0 8d e5                                      str ip, [sp]
0036b234  f4 02 11 eb                                      bl #0x7abe0c
0036b238  07 00 a0 e1                                      mov r0, r7
0036b23c  b8 af 10 eb                                      bl #0x797124
0036b240  06 00 a0 e1                                      mov r0, r6
0036b244  d8 a1 fe eb                                      bl #0x3139ac
0036b248  05 30 94 e7                                      ldr r3, [r4, r5]
0036b24c  44 20 9d e5                                      ldr r2, [sp, #0x44]
0036b250  00 30 93 e5                                      ldr r3, [r3]
0036b254  03 00 52 e1                                      cmp r2, r3
0036b258  11 00 00 1a                                      bne #0x36b2a4
0036b25c  48 d0 8d e2                                      add sp, sp, #0x48
0036b260  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0036b264  0c 20 81 e2                                      add r2, r1, #0xc
0036b268  02 00 53 e1                                      cmp r3, r2
0036b26c  05 00 00 0a                                      beq #0x36b288
0036b270  00 00 d3 e5                                      ldrb r0, [r3]
0036b274  02 30 63 e0                                      rsb r3, r3, r2
0036b278  0c 00 c1 e5                                      strb r0, [r1, #0xc]
0036b27c  28 20 9d e5                                      ldr r2, [sp, #0x28]
0036b280  03 30 82 e0                                      add r3, r2, r3
0036b284  28 30 8d e5                                      str r3, [sp, #0x28]
0036b288  38 10 9f e5                                      ldr r1, [pc, #0x38]
0036b28c  06 00 a0 e1                                      mov r0, r6
0036b290  01 10 8f e0                                      add r1, pc, r1
0036b294  03 20 81 e2                                      add r2, r1, #3
0036b298  59 95 fe eb                                      bl #0x310804
0036b29c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0036b2a0  cc ff ff ea                                      b #0x36b1d8
0036b2a4  19 8c fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036b2a8  60 99 62 00 ac 40 00 00 9c 5e 55 00 f4 37 00 00  .byte 0x60, 0x99, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x9c, 0x5e, 0x55, 0x00, 0xf4, 0x37, 0x00, 0x00
0036b2b8  cc 5e 55 00 bc 5e 55 00 70 5e 55 00 94 5e 55 00  .byte 0xcc, 0x5e, 0x55, 0x00, 0xbc, 0x5e, 0x55, 0x00, 0x70, 0x5e, 0x55, 0x00, 0x94, 0x5e, 0x55, 0x00
0036b2c8  20 5e 55 00                                      .byte 0x20, 0x5e, 0x55, 0x00

; FUNCTION 0x0036b2cc, declared_size=340, range_size=340, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager16ReleaseLvlSoundsEv
; demangled: VoxSoundManager::ReleaseLvlSounds()
; decoder-mode: arm
0036b2cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036b2d0  34 51 9f e5                                      ldr r5, [pc, #0x134]
0036b2d4  34 31 9f e5                                      ldr r3, [pc, #0x134]
0036b2d8  34 81 9f e5                                      ldr r8, [pc, #0x134]
0036b2dc  05 50 8f e0                                      add r5, pc, r5
0036b2e0  03 30 95 e7                                      ldr r3, [r5, r3]
0036b2e4  08 20 95 e7                                      ldr r2, [r5, r8]
0036b2e8  34 d0 4d e2                                      sub sp, sp, #0x34
0036b2ec  00 30 d3 e5                                      ldrb r3, [r3]
0036b2f0  00 20 92 e5                                      ldr r2, [r2]
0036b2f4  00 40 a0 e1                                      mov r4, r0
0036b2f8  00 00 53 e3                                      cmp r3, #0
0036b2fc  2c 20 8d e5                                      str r2, [sp, #0x2c]
0036b300  1e 00 00 1a                                      bne #0x36b380
0036b304  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
0036b308  08 30 8d e5                                      str r3, [sp, #8]
0036b30c  00 00 51 e3                                      cmp r1, #0
0036b310  1a 00 00 da                                      ble #0x36b380
0036b314  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
0036b318  fc b0 9f e5                                      ldr fp, [pc, #0xfc]
0036b31c  08 70 8d e2                                      add r7, sp, #8
0036b320  02 20 8f e0                                      add r2, pc, r2
0036b324  00 20 8d e5                                      str r2, [sp]
0036b328  10 20 8d e2                                      add r2, sp, #0x10
0036b32c  0c 60 8d e2                                      add r6, sp, #0xc
0036b330  14 a0 8d e2                                      add sl, sp, #0x14
0036b334  04 20 8d e5                                      str r2, [sp, #4]
0036b338  08 20 94 e5                                      ldr r2, [r4, #8]
0036b33c  03 31 92 e7                                      ldr r3, [r2, r3, lsl #2]
0036b340  00 00 53 e3                                      cmp r3, #0
0036b344  08 00 00 0a                                      beq #0x36b36c
0036b348  06 30 a0 e1                                      mov r3, r6
0036b34c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0036b350  10 10 94 e5                                      ldr r1, [r4, #0x10]
0036b354  07 20 a0 e1                                      mov r2, r7
0036b358  fc f7 ff eb                                      bl #0x369350
0036b35c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0036b360  00 00 53 e1                                      cmp r3, r0
0036b364  0c 00 00 0a                                      beq #0x36b39c
0036b368  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0036b36c  08 30 9d e5                                      ldr r3, [sp, #8]
0036b370  01 30 83 e2                                      add r3, r3, #1
0036b374  03 00 51 e1                                      cmp r1, r3
0036b378  08 30 8d e5                                      str r3, [sp, #8]
0036b37c  ed ff ff ca                                      bgt #0x36b338
0036b380  08 30 95 e7                                      ldr r3, [r5, r8]
0036b384  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0036b388  00 30 93 e5                                      ldr r3, [r3]
0036b38c  03 00 52 e1                                      cmp r2, r3
0036b390  1c 00 00 1a                                      bne #0x36b408
0036b394  34 d0 8d e2                                      add sp, sp, #0x34
0036b398  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0036b39c  0b 90 95 e7                                      ldr sb, [r5, fp]
0036b3a0  09 00 a0 e1                                      mov r0, sb
0036b3a4  37 31 ff eb                                      bl #0x337888
0036b3a8  06 00 9d e8                                      ldm sp, {r1, r2}
0036b3ac  0a 00 a0 e1                                      mov r0, sl
0036b3b0  4d a3 fe eb                                      bl #0x3140ec
0036b3b4  0a 10 a0 e1                                      mov r1, sl
0036b3b8  09 00 a0 e1                                      mov r0, sb
0036b3bc  b1 31 ff eb                                      bl #0x337a88
0036b3c0  0a 00 a0 e1                                      mov r0, sl
0036b3c4  78 a1 fe eb                                      bl #0x3139ac
0036b3c8  08 10 9d e5                                      ldr r1, [sp, #8]
0036b3cc  08 20 94 e5                                      ldr r2, [r4, #8]
0036b3d0  01 31 92 e7                                      ldr r3, [r2, r1, lsl #2]
0036b3d4  01 21 82 e0                                      add r2, r2, r1, lsl #2
0036b3d8  00 00 53 e3                                      cmp r3, #0
0036b3dc  06 00 00 0a                                      beq #0x36b3fc
0036b3e0  03 00 a0 e1                                      mov r0, r3
0036b3e4  00 30 93 e5                                      ldr r3, [r3]
0036b3e8  0f e0 a0 e1                                      mov lr, pc
0036b3ec  04 f0 93 e5                                      ldr pc, [r3, #4]
0036b3f0  08 30 94 e5                                      ldr r3, [r4, #8]
0036b3f4  08 20 9d e5                                      ldr r2, [sp, #8]
0036b3f8  02 21 83 e0                                      add r2, r3, r2, lsl #2
0036b3fc  00 30 a0 e3                                      mov r3, #0
0036b400  00 30 82 e5                                      str r3, [r2]
0036b404  d7 ff ff ea                                      b #0x36b368
0036b408  c0 8b fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036b40c  b4 97 62 00 30 3b 00 00 ac 40 00 00 b0 5d 55 00  .byte 0xb4, 0x97, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb0, 0x5d, 0x55, 0x00
0036b41c  84 08 00 00                                      .byte 0x84, 0x08, 0x00, 0x00

; FUNCTION 0x0036b420, declared_size=440, range_size=440, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager9PlayEventEiRKN6glitch4core8vector3dIfEEff
; demangled: VoxSoundManager::PlayEvent(int, glitch::core::vector3d<float> const&, float, float)
; decoder-mode: arm
0036b420  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036b424  90 41 9f e5                                      ldr r4, [pc, #0x190]
0036b428  90 61 9f e5                                      ldr r6, [pc, #0x190]
0036b42c  90 e1 9f e5                                      ldr lr, [pc, #0x190]
0036b430  04 40 8f e0                                      add r4, pc, r4
0036b434  06 c0 94 e7                                      ldr ip, [r4, r6]
0036b438  0e 50 94 e7                                      ldr r5, [r4, lr]
0036b43c  7c d0 4d e2                                      sub sp, sp, #0x7c
0036b440  00 c0 9c e5                                      ldr ip, [ip]
0036b444  00 70 a0 e1                                      mov r7, r0
0036b448  05 00 a0 e1                                      mov r0, r5
0036b44c  03 b0 a0 e1                                      mov fp, r3
0036b450  74 c0 8d e5                                      str ip, [sp, #0x74]
0036b454  01 a0 a0 e1                                      mov sl, r1
0036b458  02 90 a0 e1                                      mov sb, r2
0036b45c  09 31 ff eb                                      bl #0x337888
0036b460  60 11 9f e5                                      ldr r1, [pc, #0x160]
0036b464  5c 80 8d e2                                      add r8, sp, #0x5c
0036b468  40 20 8d e2                                      add r2, sp, #0x40
0036b46c  01 10 8f e0                                      add r1, pc, r1
0036b470  08 00 a0 e1                                      mov r0, r8
0036b474  1c a3 fe eb                                      bl #0x3140ec
0036b478  08 10 a0 e1                                      mov r1, r8
0036b47c  05 00 a0 e1                                      mov r0, r5
0036b480  80 31 ff eb                                      bl #0x337a88
0036b484  00 20 a0 e1                                      mov r2, r0
0036b488  08 00 a0 e1                                      mov r0, r8
0036b48c  18 20 8d e5                                      str r2, [sp, #0x18]
0036b490  45 a1 fe eb                                      bl #0x3139ac
0036b494  18 20 9d e5                                      ldr r2, [sp, #0x18]
0036b498  00 00 52 e3                                      cmp r2, #0
0036b49c  36 00 00 1a                                      bne #0x36b57c
0036b4a0  00 00 5a e3                                      cmp sl, #0
0036b4a4  34 00 00 ba                                      blt #0x36b57c
0036b4a8  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
0036b4ac  03 30 94 e7                                      ldr r3, [r4, r3]
0036b4b0  00 30 d3 e5                                      ldrb r3, [r3]
0036b4b4  00 00 53 e3                                      cmp r3, #0
0036b4b8  37 00 00 1a                                      bne #0x36b59c
0036b4bc  64 30 87 e2                                      add r3, r7, #0x64
0036b4c0  03 00 a0 e1                                      mov r0, r3
0036b4c4  0a 10 a0 e1                                      mov r1, sl
0036b4c8  38 20 8d e2                                      add r2, sp, #0x38
0036b4cc  1c 30 8d e5                                      str r3, [sp, #0x1c]
0036b4d0  a5 81 14 eb                                      bl #0x88bb6c
0036b4d4  38 30 9d e5                                      ldr r3, [sp, #0x38]
0036b4d8  00 00 53 e3                                      cmp r3, #0
0036b4dc  26 00 00 ba                                      blt #0x36b57c
0036b4e0  05 00 a0 e1                                      mov r0, r5
0036b4e4  e7 30 ff eb                                      bl #0x337888
0036b4e8  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
0036b4ec  44 80 8d e2                                      add r8, sp, #0x44
0036b4f0  3c 20 8d e2                                      add r2, sp, #0x3c
0036b4f4  01 10 8f e0                                      add r1, pc, r1
0036b4f8  08 00 a0 e1                                      mov r0, r8
0036b4fc  fa a2 fe eb                                      bl #0x3140ec
0036b500  08 10 a0 e1                                      mov r1, r8
0036b504  05 00 a0 e1                                      mov r0, r5
0036b508  5e 31 ff eb                                      bl #0x337a88
0036b50c  08 00 a0 e1                                      mov r0, r8
0036b510  25 a1 fe eb                                      bl #0x3139ac
0036b514  34 c0 8d e2                                      add ip, sp, #0x34
0036b518  00 c0 8d e5                                      str ip, [sp]
0036b51c  30 c0 8d e2                                      add ip, sp, #0x30
0036b520  24 20 8d e2                                      add r2, sp, #0x24
0036b524  38 10 9d e5                                      ldr r1, [sp, #0x38]
0036b528  2c 30 8d e2                                      add r3, sp, #0x2c
0036b52c  04 c0 8d e5                                      str ip, [sp, #4]
0036b530  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0036b534  28 c0 8d e2                                      add ip, sp, #0x28
0036b538  08 c0 8d e5                                      str ip, [sp, #8]
0036b53c  6c 78 14 eb                                      bl #0x8896f4
0036b540  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0036b544  07 00 a0 e1                                      mov r0, r7
0036b548  38 10 9d e5                                      ldr r1, [sp, #0x38]
0036b54c  00 c0 8d e5                                      str ip, [sp]
0036b550  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0036b554  24 20 9d e5                                      ldr r2, [sp, #0x24]
0036b558  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0036b55c  04 c0 8d e5                                      str ip, [sp, #4]
0036b560  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0036b564  0c 90 8d e5                                      str sb, [sp, #0xc]
0036b568  10 b0 8d e5                                      str fp, [sp, #0x10]
0036b56c  08 c0 8d e5                                      str ip, [sp, #8]
0036b570  a0 c0 9d e5                                      ldr ip, [sp, #0xa0]
0036b574  14 c0 8d e5                                      str ip, [sp, #0x14]
0036b578  90 fc ff eb                                      bl #0x36a7c0
0036b57c  06 30 94 e7                                      ldr r3, [r4, r6]
0036b580  74 20 9d e5                                      ldr r2, [sp, #0x74]
0036b584  00 00 a0 e3                                      mov r0, #0
0036b588  00 30 93 e5                                      ldr r3, [r3]
0036b58c  03 00 52 e1                                      cmp r2, r3
0036b590  08 00 00 1a                                      bne #0x36b5b8
0036b594  7c d0 8d e2                                      add sp, sp, #0x7c
0036b598  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0036b59c  30 30 9f e5                                      ldr r3, [pc, #0x30]
0036b5a0  0a 00 a0 e1                                      mov r0, sl
0036b5a4  03 10 94 e7                                      ldr r1, [r4, r3]
0036b5a8  02 30 a0 e3                                      mov r3, #2
0036b5ac  00 10 91 e5                                      ldr r1, [r1]
0036b5b0  64 17 07 eb                                      bl #0x531348
0036b5b4  f0 ff ff ea                                      b #0x36b57c
0036b5b8  54 8b fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036b5bc  60 96 62 00 ac 40 00 00 84 08 00 00 7c 5c 55 00  .byte 0x60, 0x96, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x7c, 0x5c, 0x55, 0x00
0036b5cc  30 3b 00 00 0c 5c 55 00 80 06 00 00              .byte 0x30, 0x3b, 0x00, 0x00, 0x0c, 0x5c, 0x55, 0x00, 0x80, 0x06, 0x00, 0x00

; FUNCTION 0x0036b5d8, declared_size=564, range_size=564, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager6Play3DEiRKN6glitch4core8vector3dIfEEbiff
; demangled: VoxSoundManager::Play3D(int, glitch::core::vector3d<float> const&, bool, int, float, float)
; decoder-mode: arm
0036b5d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036b5dc  00 42 9f e5                                      ldr r4, [pc, #0x200]
0036b5e0  00 52 9f e5                                      ldr r5, [pc, #0x200]
0036b5e4  00 72 9f e5                                      ldr r7, [pc, #0x200]
0036b5e8  04 40 8f e0                                      add r4, pc, r4
0036b5ec  05 c0 94 e7                                      ldr ip, [r4, r5]
0036b5f0  07 60 94 e7                                      ldr r6, [r4, r7]
0036b5f4  74 d0 4d e2                                      sub sp, sp, #0x74
0036b5f8  00 c0 9c e5                                      ldr ip, [ip]
0036b5fc  00 90 a0 e1                                      mov sb, r0
0036b600  06 00 a0 e1                                      mov r0, r6
0036b604  1c 30 8d e5                                      str r3, [sp, #0x1c]
0036b608  6c c0 8d e5                                      str ip, [sp, #0x6c]
0036b60c  01 a0 a0 e1                                      mov sl, r1
0036b610  02 b0 a0 e1                                      mov fp, r2
0036b614  9b 30 ff eb                                      bl #0x337888
0036b618  d0 11 9f e5                                      ldr r1, [pc, #0x1d0]
0036b61c  54 80 8d e2                                      add r8, sp, #0x54
0036b620  38 20 8d e2                                      add r2, sp, #0x38
0036b624  01 10 8f e0                                      add r1, pc, r1
0036b628  08 00 a0 e1                                      mov r0, r8
0036b62c  ae a2 fe eb                                      bl #0x3140ec
0036b630  06 00 a0 e1                                      mov r0, r6
0036b634  08 10 a0 e1                                      mov r1, r8
0036b638  12 31 ff eb                                      bl #0x337a88
0036b63c  00 60 a0 e1                                      mov r6, r0
0036b640  08 00 a0 e1                                      mov r0, r8
0036b644  d8 a0 fe eb                                      bl #0x3139ac
0036b648  00 00 56 e3                                      cmp r6, #0
0036b64c  07 00 00 0a                                      beq #0x36b670
0036b650  05 30 94 e7                                      ldr r3, [r4, r5]
0036b654  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0036b658  00 00 a0 e3                                      mov r0, #0
0036b65c  00 30 93 e5                                      ldr r3, [r3]
0036b660  03 00 52 e1                                      cmp r2, r3
0036b664  5d 00 00 1a                                      bne #0x36b7e0
0036b668  74 d0 8d e2                                      add sp, sp, #0x74
0036b66c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0036b670  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
0036b674  03 00 94 e7                                      ldr r0, [r4, r3]
0036b678  c5 cf fe eb                                      bl #0x31f594
0036b67c  00 00 50 e3                                      cmp r0, #0
0036b680  f2 ff ff 0a                                      beq #0x36b650
0036b684  30 31 90 e5                                      ldr r3, [r0, #0x130]
0036b688  26 00 53 e3                                      cmp r3, #0x26
0036b68c  ef ff ff 1a                                      bne #0x36b650
0036b690  3f 48 12 eb                                      bl #0x7fd794
0036b694  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036b698  00 00 53 e3                                      cmp r3, #0
0036b69c  04 00 00 0a                                      beq #0x36b6b4
0036b6a0  50 31 9f e5                                      ldr r3, [pc, #0x150]
0036b6a4  03 30 94 e7                                      ldr r3, [r4, r3]
0036b6a8  00 30 d3 e5                                      ldrb r3, [r3]
0036b6ac  00 00 53 e3                                      cmp r3, #0
0036b6b0  e6 ff ff 1a                                      bne #0x36b650
0036b6b4  00 00 5a e3                                      cmp sl, #0
0036b6b8  e4 ff ff ba                                      blt #0x36b650
0036b6bc  38 31 9f e5                                      ldr r3, [pc, #0x138]
0036b6c0  03 30 94 e7                                      ldr r3, [r4, r3]
0036b6c4  00 30 d3 e5                                      ldrb r3, [r3]
0036b6c8  00 00 53 e3                                      cmp r3, #0
0036b6cc  32 00 00 1a                                      bne #0x36b79c
0036b6d0  28 31 9f e5                                      ldr r3, [pc, #0x128]
0036b6d4  0c 20 a0 e3                                      mov r2, #0xc
0036b6d8  03 30 94 e7                                      ldr r3, [r4, r3]
0036b6dc  00 30 93 e5                                      ldr r3, [r3]
0036b6e0  92 3a 2a e0                                      mla sl, r2, sl, r3
0036b6e4  08 30 9a e5                                      ldr r3, [sl, #8]
0036b6e8  04 80 9a e5                                      ldr r8, [sl, #4]
0036b6ec  01 00 53 e3                                      cmp r3, #1
0036b6f0  31 00 00 0a                                      beq #0x36b7bc
0036b6f4  30 c0 8d e2                                      add ip, sp, #0x30
0036b6f8  00 c0 8d e5                                      str ip, [sp]
0036b6fc  2c c0 8d e2                                      add ip, sp, #0x2c
0036b700  28 30 8d e2                                      add r3, sp, #0x28
0036b704  08 10 a0 e1                                      mov r1, r8
0036b708  20 20 8d e2                                      add r2, sp, #0x20
0036b70c  04 c0 8d e5                                      str ip, [sp, #4]
0036b710  64 00 89 e2                                      add r0, sb, #0x64
0036b714  24 c0 8d e2                                      add ip, sp, #0x24
0036b718  08 c0 8d e5                                      str ip, [sp, #8]
0036b71c  f4 77 14 eb                                      bl #0x8896f4
0036b720  07 70 94 e7                                      ldr r7, [r4, r7]
0036b724  3c 60 8d e2                                      add r6, sp, #0x3c
0036b728  07 00 a0 e1                                      mov r0, r7
0036b72c  55 30 ff eb                                      bl #0x337888
0036b730  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
0036b734  34 20 8d e2                                      add r2, sp, #0x34
0036b738  06 00 a0 e1                                      mov r0, r6
0036b73c  01 10 8f e0                                      add r1, pc, r1
0036b740  69 a2 fe eb                                      bl #0x3140ec
0036b744  06 10 a0 e1                                      mov r1, r6
0036b748  07 00 a0 e1                                      mov r0, r7
0036b74c  cd 30 ff eb                                      bl #0x337a88
0036b750  06 00 a0 e1                                      mov r0, r6
0036b754  94 a0 fe eb                                      bl #0x3139ac
0036b758  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0036b75c  09 00 a0 e1                                      mov r0, sb
0036b760  08 10 a0 e1                                      mov r1, r8
0036b764  00 c0 8d e5                                      str ip, [sp]
0036b768  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0036b76c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0036b770  28 30 9d e5                                      ldr r3, [sp, #0x28]
0036b774  04 c0 8d e5                                      str ip, [sp, #4]
0036b778  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0036b77c  0c b0 8d e5                                      str fp, [sp, #0xc]
0036b780  08 c0 8d e5                                      str ip, [sp, #8]
0036b784  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
0036b788  10 c0 8d e5                                      str ip, [sp, #0x10]
0036b78c  a0 c0 9d e5                                      ldr ip, [sp, #0xa0]
0036b790  14 c0 8d e5                                      str ip, [sp, #0x14]
0036b794  09 fc ff eb                                      bl #0x36a7c0
0036b798  ac ff ff ea                                      b #0x36b650
0036b79c  64 30 9f e5                                      ldr r3, [pc, #0x64]
0036b7a0  0a 00 a0 e1                                      mov r0, sl
0036b7a4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0036b7a8  03 10 94 e7                                      ldr r1, [r4, r3]
0036b7ac  02 30 a0 e3                                      mov r3, #2
0036b7b0  00 10 91 e5                                      ldr r1, [r1]
0036b7b4  e3 16 07 eb                                      bl #0x531348
0036b7b8  a4 ff ff ea                                      b #0x36b650
0036b7bc  bf c4 a0 e3                                      mov ip, #0xbf000000
0036b7c0  02 c5 8c e2                                      add ip, ip, #0x800000
0036b7c4  09 00 a0 e1                                      mov r0, sb
0036b7c8  08 10 a0 e1                                      mov r1, r8
0036b7cc  0b 20 a0 e1                                      mov r2, fp
0036b7d0  0c 30 a0 e1                                      mov r3, ip
0036b7d4  00 c0 8d e5                                      str ip, [sp]
0036b7d8  10 ff ff eb                                      bl #0x36b420
0036b7dc  9b ff ff ea                                      b #0x36b650
0036b7e0  ca 8a fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036b7e4  a8 94 62 00 ac 40 00 00 84 08 00 00 c4 5a 55 00  .byte 0xa8, 0x94, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0x5a, 0x55, 0x00
0036b7f4  f4 37 00 00 a0 2f 00 00 30 3b 00 00 3c 3e 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xa0, 0x2f, 0x00, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x3c, 0x3e, 0x00, 0x00
0036b804  c4 59 55 00 80 06 00 00                          .byte 0xc4, 0x59, 0x55, 0x00, 0x80, 0x06, 0x00, 0x00

; FUNCTION 0x0036b80c, declared_size=660, range_size=660, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager4PlayEibiib
; demangled: VoxSoundManager::Play(int, bool, int, int, bool)
; decoder-mode: arm
0036b80c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036b810  68 42 9f e5                                      ldr r4, [pc, #0x268]
0036b814  68 52 9f e5                                      ldr r5, [pc, #0x268]
0036b818  68 e2 9f e5                                      ldr lr, [pc, #0x268]
0036b81c  04 40 8f e0                                      add r4, pc, r4
0036b820  05 c0 94 e7                                      ldr ip, [r4, r5]
0036b824  0e 60 94 e7                                      ldr r6, [r4, lr]
0036b828  8c d0 4d e2                                      sub sp, sp, #0x8c
0036b82c  00 c0 9c e5                                      ldr ip, [ip]
0036b830  00 70 a0 e1                                      mov r7, r0
0036b834  06 00 a0 e1                                      mov r0, r6
0036b838  14 30 8d e5                                      str r3, [sp, #0x14]
0036b83c  84 c0 8d e5                                      str ip, [sp, #0x84]
0036b840  01 a0 a0 e1                                      mov sl, r1
0036b844  02 b0 a0 e1                                      mov fp, r2
0036b848  b4 90 dd e5                                      ldrb sb, [sp, #0xb4]
0036b84c  0d 30 ff eb                                      bl #0x337888
0036b850  34 12 9f e5                                      ldr r1, [pc, #0x234]
0036b854  6c 80 8d e2                                      add r8, sp, #0x6c
0036b858  68 20 8d e2                                      add r2, sp, #0x68
0036b85c  01 10 8f e0                                      add r1, pc, r1
0036b860  08 00 a0 e1                                      mov r0, r8
0036b864  20 a2 fe eb                                      bl #0x3140ec
0036b868  06 00 a0 e1                                      mov r0, r6
0036b86c  08 10 a0 e1                                      mov r1, r8
0036b870  84 30 ff eb                                      bl #0x337a88
0036b874  00 60 a0 e1                                      mov r6, r0
0036b878  08 00 a0 e1                                      mov r0, r8
0036b87c  4a a0 fe eb                                      bl #0x3139ac
0036b880  00 00 56 e3                                      cmp r6, #0
0036b884  55 00 00 1a                                      bne #0x36b9e0
0036b888  00 00 5a e3                                      cmp sl, #0
0036b88c  53 00 00 ba                                      blt #0x36b9e0
0036b890  00 00 59 e3                                      cmp sb, #0
0036b894  61 00 00 0a                                      beq #0x36ba20
0036b898  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
0036b89c  03 30 94 e7                                      ldr r3, [r4, r3]
0036b8a0  00 30 d3 e5                                      ldrb r3, [r3]
0036b8a4  00 00 53 e3                                      cmp r3, #0
0036b8a8  54 00 00 1a                                      bne #0x36ba00
0036b8ac  e0 31 9f e5                                      ldr r3, [pc, #0x1e0]
0036b8b0  0c 20 a0 e3                                      mov r2, #0xc
0036b8b4  60 10 8d e2                                      add r1, sp, #0x60
0036b8b8  03 30 94 e7                                      ldr r3, [r4, r3]
0036b8bc  5c c0 8d e2                                      add ip, sp, #0x5c
0036b8c0  64 80 87 e2                                      add r8, r7, #0x64
0036b8c4  00 30 93 e5                                      ldr r3, [r3]
0036b8c8  08 00 a0 e1                                      mov r0, r8
0036b8cc  92 3a 2a e0                                      mla sl, r2, sl, r3
0036b8d0  58 30 8d e2                                      add r3, sp, #0x58
0036b8d4  04 60 9a e5                                      ldr r6, [sl, #4]
0036b8d8  50 20 8d e2                                      add r2, sp, #0x50
0036b8dc  02 10 8d e8                                      stm sp, {r1, ip}
0036b8e0  06 10 a0 e1                                      mov r1, r6
0036b8e4  54 c0 8d e2                                      add ip, sp, #0x54
0036b8e8  08 c0 8d e5                                      str ip, [sp, #8]
0036b8ec  80 77 14 eb                                      bl #0x8896f4
0036b8f0  08 30 97 e5                                      ldr r3, [r7, #8]
0036b8f4  06 11 93 e7                                      ldr r1, [r3, r6, lsl #2]
0036b8f8  00 00 51 e3                                      cmp r1, #0
0036b8fc  56 00 00 0a                                      beq #0x36ba5c
0036b900  00 00 97 e5                                      ldr r0, [r7]
0036b904  fb da 13 eb                                      bl #0x8624f8
0036b908  00 00 50 e3                                      cmp r0, #0
0036b90c  33 00 00 0a                                      beq #0x36b9e0
0036b910  14 00 9d e5                                      ldr r0, [sp, #0x14]
0036b914  12 8c fe eb                                      bl #0x30e964
0036b918  11 13 a0 e3                                      mov r1, #0x44000000
0036b91c  7a 18 81 e2                                      add r1, r1, #0x7a0000
0036b920  db 8c fe eb                                      bl #0x30ec94
0036b924  08 30 97 e5                                      ldr r3, [r7, #8]
0036b928  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0036b92c  00 a0 a0 e1                                      mov sl, r0
0036b930  06 11 93 e7                                      ldr r1, [r3, r6, lsl #2]
0036b934  00 00 97 e5                                      ldr r0, [r7]
0036b938  36 db 13 eb                                      bl #0x862618
0036b93c  67 c0 8d e2                                      add ip, sp, #0x67
0036b940  00 c0 8d e5                                      str ip, [sp]
0036b944  44 c0 8d e2                                      add ip, sp, #0x44
0036b948  06 10 a0 e1                                      mov r1, r6
0036b94c  08 00 a0 e1                                      mov r0, r8
0036b950  4c 20 8d e2                                      add r2, sp, #0x4c
0036b954  48 30 8d e2                                      add r3, sp, #0x48
0036b958  04 c0 8d e5                                      str ip, [sp, #4]
0036b95c  40 c0 8d e2                                      add ip, sp, #0x40
0036b960  08 c0 8d e5                                      str ip, [sp, #8]
0036b964  ca 77 14 eb                                      bl #0x889894
0036b968  08 30 97 e5                                      ldr r3, [r7, #8]
0036b96c  00 10 97 e5                                      ldr r1, [r7]
0036b970  00 80 a0 e3                                      mov r8, #0
0036b974  06 21 93 e7                                      ldr r2, [r3, r6, lsl #2]
0036b978  18 60 8d e2                                      add r6, sp, #0x18
0036b97c  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0036b980  06 00 a0 e1                                      mov r0, r6
0036b984  00 80 8d e5                                      str r8, [sp]
0036b988  aa da 13 eb                                      bl #0x862438
0036b98c  00 00 97 e5                                      ldr r0, [r7]
0036b990  06 10 a0 e1                                      mov r1, r6
0036b994  08 20 a0 e1                                      mov r2, r8
0036b998  01 30 a0 e3                                      mov r3, #1
0036b99c  ef d8 13 eb                                      bl #0x861d60
0036b9a0  40 30 9d e5                                      ldr r3, [sp, #0x40]
0036b9a4  08 20 a0 e1                                      mov r2, r8
0036b9a8  00 00 97 e5                                      ldr r0, [r7]
0036b9ac  06 10 a0 e1                                      mov r1, r6
0036b9b0  e6 d7 13 eb                                      bl #0x861950
0036b9b4  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0036b9b8  01 30 43 e2                                      sub r3, r3, #1
0036b9bc  1d 00 53 e3                                      cmp r3, #0x1d
0036b9c0  20 00 00 9a                                      bls #0x36ba48
0036b9c4  00 00 97 e5                                      ldr r0, [r7]
0036b9c8  0a 30 a0 e1                                      mov r3, sl
0036b9cc  06 10 a0 e1                                      mov r1, r6
0036b9d0  67 20 dd e5                                      ldrb r2, [sp, #0x67]
0036b9d4  f9 d9 13 eb                                      bl #0x8621c0
0036b9d8  06 00 a0 e1                                      mov r0, r6
0036b9dc  72 f2 13 eb                                      bl #0x8683ac
0036b9e0  05 30 94 e7                                      ldr r3, [r4, r5]
0036b9e4  84 20 9d e5                                      ldr r2, [sp, #0x84]
0036b9e8  00 00 a0 e3                                      mov r0, #0
0036b9ec  00 30 93 e5                                      ldr r3, [r3]
0036b9f0  03 00 52 e1                                      cmp r2, r3
0036b9f4  20 00 00 1a                                      bne #0x36ba7c
0036b9f8  8c d0 8d e2                                      add sp, sp, #0x8c
0036b9fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0036ba00  90 30 9f e5                                      ldr r3, [pc, #0x90]
0036ba04  0a 00 a0 e1                                      mov r0, sl
0036ba08  0b 20 a0 e1                                      mov r2, fp
0036ba0c  03 10 94 e7                                      ldr r1, [r4, r3]
0036ba10  02 30 a0 e3                                      mov r3, #2
0036ba14  00 10 91 e5                                      ldr r1, [r1]
0036ba18  4a 16 07 eb                                      bl #0x531348
0036ba1c  ef ff ff ea                                      b #0x36b9e0
0036ba20  5b 47 12 eb                                      bl #0x7fd794
0036ba24  05 30 d0 e5                                      ldrb r3, [r0, #5]
0036ba28  00 00 53 e3                                      cmp r3, #0
0036ba2c  99 ff ff 0a                                      beq #0x36b898
0036ba30  64 30 9f e5                                      ldr r3, [pc, #0x64]
0036ba34  03 30 94 e7                                      ldr r3, [r4, r3]
0036ba38  00 30 d3 e5                                      ldrb r3, [r3]
0036ba3c  00 00 53 e3                                      cmp r3, #0
0036ba40  e6 ff ff 1a                                      bne #0x36b9e0
0036ba44  93 ff ff ea                                      b #0x36b898
0036ba48  00 00 97 e5                                      ldr r0, [r7]
0036ba4c  06 10 a0 e1                                      mov r1, r6
0036ba50  48 20 9d e5                                      ldr r2, [sp, #0x48]
0036ba54  7f d9 13 eb                                      bl #0x862058
0036ba58  d9 ff ff ea                                      b #0x36b9c4
0036ba5c  06 10 a0 e1                                      mov r1, r6
0036ba60  07 00 a0 e1                                      mov r0, r7
0036ba64  e4 f7 ff eb                                      bl #0x3699fc
0036ba68  08 30 97 e5                                      ldr r3, [r7, #8]
0036ba6c  06 11 93 e7                                      ldr r1, [r3, r6, lsl #2]
0036ba70  00 00 51 e3                                      cmp r1, #0
0036ba74  d9 ff ff 0a                                      beq #0x36b9e0
0036ba78  a0 ff ff ea                                      b #0x36b900
0036ba7c  23 8a fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036ba80  74 92 62 00 ac 40 00 00 84 08 00 00 8c 58 55 00  .byte 0x74, 0x92, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x8c, 0x58, 0x55, 0x00
0036ba90  30 3b 00 00 3c 3e 00 00 80 06 00 00 a0 2f 00 00  .byte 0x30, 0x3b, 0x00, 0x00, 0x3c, 0x3e, 0x00, 0x00, 0x80, 0x06, 0x00, 0x00, 0xa0, 0x2f, 0x00, 0x00

; FUNCTION 0x0036baa0, declared_size=404, range_size=404, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager14CrossfadeMusicEii
; demangled: VoxSoundManager::CrossfadeMusic(int, int)
; decoder-mode: arm
0036baa0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0036baa4  78 51 9f e5                                      ldr r5, [pc, #0x178]
0036baa8  78 31 9f e5                                      ldr r3, [pc, #0x178]
0036baac  30 d0 4d e2                                      sub sp, sp, #0x30
0036bab0  05 50 8f e0                                      add r5, pc, r5
0036bab4  03 30 95 e7                                      ldr r3, [r5, r3]
0036bab8  00 40 a0 e1                                      mov r4, r0
0036babc  00 30 d3 e5                                      ldrb r3, [r3]
0036bac0  00 00 53 e3                                      cmp r3, #0
0036bac4  4b 00 00 1a                                      bne #0x36bbf8
0036bac8  01 00 72 e3                                      cmn r2, #1
0036bacc  49 00 00 0a                                      beq #0x36bbf8
0036bad0  31 30 d0 e5                                      ldrb r3, [r0, #0x31]
0036bad4  00 00 53 e3                                      cmp r3, #0
0036bad8  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
0036badc  01 a0 a0 01                                      moveq sl, r1
0036bae0  01 80 a0 11                                      movne r8, r1
0036bae4  03 30 95 e7                                      ldr r3, [r5, r3]
0036bae8  02 a0 a0 11                                      movne sl, r2
0036baec  0c 10 a0 e3                                      mov r1, #0xc
0036baf0  00 30 93 e5                                      ldr r3, [r3]
0036baf4  02 80 a0 01                                      moveq r8, r2
0036baf8  91 3a 22 e0                                      mla r2, r1, sl, r3
0036bafc  91 38 23 e0                                      mla r3, r1, r8, r3
0036bb00  04 70 92 e5                                      ldr r7, [r2, #4]
0036bb04  04 90 93 e5                                      ldr sb, [r3, #4]
0036bb08  04 70 83 e5                                      str r7, [r3, #4]
0036bb0c  08 20 92 e5                                      ldr r2, [r2, #8]
0036bb10  08 20 83 e5                                      str r2, [r3, #8]
0036bb14  08 30 90 e5                                      ldr r3, [r0, #8]
0036bb18  09 21 93 e7                                      ldr r2, [r3, sb, lsl #2]
0036bb1c  00 00 52 e3                                      cmp r2, #0
0036bb20  36 00 00 0a                                      beq #0x36bc00
0036bb24  07 21 93 e7                                      ldr r2, [r3, r7, lsl #2]
0036bb28  00 00 52 e3                                      cmp r2, #0
0036bb2c  37 00 00 0a                                      beq #0x36bc10
0036bb30  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
0036bb34  00 00 e0 e3                                      mvn r0, #0
0036bb38  00 10 e0 e3                                      mvn r1, #0
0036bb3c  02 20 95 e7                                      ldr r2, [r5, r2]
0036bb40  f0 01 cd e1                                      strd r0, r1, [sp, #0x10]
0036bb44  00 60 a0 e3                                      mov r6, #0
0036bb48  30 50 8d e2                                      add r5, sp, #0x30
0036bb4c  08 20 82 e2                                      add r2, r2, #8
0036bb50  28 20 25 e5                                      str r2, [r5, #-0x28]!
0036bb54  18 60 8d e5                                      str r6, [sp, #0x18]
0036bb58  1c 60 8d e5                                      str r6, [sp, #0x1c]
0036bb5c  20 60 8d e5                                      str r6, [sp, #0x20]
0036bb60  24 60 8d e5                                      str r6, [sp, #0x24]
0036bb64  28 60 8d e5                                      str r6, [sp, #0x28]
0036bb68  09 11 93 e7                                      ldr r1, [r3, sb, lsl #2]
0036bb6c  05 20 a0 e1                                      mov r2, r5
0036bb70  01 30 a0 e3                                      mov r3, #1
0036bb74  00 00 94 e5                                      ldr r0, [r4]
0036bb78  72 da 13 eb                                      bl #0x862548
0036bb7c  05 10 a0 e1                                      mov r1, r5
0036bb80  00 00 94 e5                                      ldr r0, [r4]
0036bb84  1d d9 13 eb                                      bl #0x862000
0036bb88  08 10 a0 e1                                      mov r1, r8
0036bb8c  00 90 a0 e1                                      mov sb, r0
0036bb90  7d 2e a0 e3                                      mov r2, #0x7d0
0036bb94  04 00 a0 e1                                      mov r0, r4
0036bb98  13 f9 ff eb                                      bl #0x369fec
0036bb9c  02 c0 a0 e3                                      mov ip, #2
0036bba0  0a 10 a0 e1                                      mov r1, sl
0036bba4  01 20 a0 e3                                      mov r2, #1
0036bba8  7d 3e a0 e3                                      mov r3, #0x7d0
0036bbac  04 00 a0 e1                                      mov r0, r4
0036bbb0  00 c0 8d e5                                      str ip, [sp]
0036bbb4  04 60 8d e5                                      str r6, [sp, #4]
0036bbb8  13 ff ff eb                                      bl #0x36b80c
0036bbbc  08 10 94 e5                                      ldr r1, [r4, #8]
0036bbc0  01 30 a0 e3                                      mov r3, #1
0036bbc4  05 20 a0 e1                                      mov r2, r5
0036bbc8  07 11 91 e7                                      ldr r1, [r1, r7, lsl #2]
0036bbcc  00 00 94 e5                                      ldr r0, [r4]
0036bbd0  5c da 13 eb                                      bl #0x862548
0036bbd4  00 00 94 e5                                      ldr r0, [r4]
0036bbd8  09 20 a0 e1                                      mov r2, sb
0036bbdc  05 10 a0 e1                                      mov r1, r5
0036bbe0  fc d8 13 eb                                      bl #0x861fd8
0036bbe4  31 30 d4 e5                                      ldrb r3, [r4, #0x31]
0036bbe8  05 00 a0 e1                                      mov r0, r5
0036bbec  01 30 23 e2                                      eor r3, r3, #1
0036bbf0  31 30 c4 e5                                      strb r3, [r4, #0x31]
0036bbf4  ec f1 13 eb                                      bl #0x8683ac
0036bbf8  30 d0 8d e2                                      add sp, sp, #0x30
0036bbfc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0036bc00  09 10 a0 e1                                      mov r1, sb
0036bc04  7c f7 ff eb                                      bl #0x3699fc
0036bc08  08 30 94 e5                                      ldr r3, [r4, #8]
0036bc0c  c4 ff ff ea                                      b #0x36bb24
0036bc10  04 00 a0 e1                                      mov r0, r4
0036bc14  07 10 a0 e1                                      mov r1, r7
0036bc18  77 f7 ff eb                                      bl #0x3699fc
0036bc1c  08 30 94 e5                                      ldr r3, [r4, #8]
0036bc20  c2 ff ff ea                                      b #0x36bb30
; mapping-symbol data/literal pool
0036bc24  e0 8f 62 00 30 3b 00 00 3c 3e 00 00 28 2e 00 00  .byte 0xe0, 0x8f, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x3c, 0x3e, 0x00, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x0036bc34, declared_size=36, range_size=36, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager8PlayMenuEibii
; demangled: VoxSoundManager::PlayMenu(int, bool, int, int)
; decoder-mode: arm
0036bc34  04 e0 2d e5                                      str lr, [sp, #-4]!
0036bc38  01 c0 a0 e3                                      mov ip, #1
0036bc3c  0c d0 4d e2                                      sub sp, sp, #0xc
0036bc40  04 c0 8d e5                                      str ip, [sp, #4]
0036bc44  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0036bc48  00 c0 8d e5                                      str ip, [sp]
0036bc4c  ee fe ff eb                                      bl #0x36b80c
0036bc50  0c d0 8d e2                                      add sp, sp, #0xc
0036bc54  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0036bc58, declared_size=288, range_size=288, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager8PlayBeatEibb
; demangled: VoxSoundManager::PlayBeat(int, bool, bool)
; decoder-mode: arm
0036bc58  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036bc5c  00 41 9f e5                                      ldr r4, [pc, #0x100]
0036bc60  00 51 9f e5                                      ldr r5, [pc, #0x100]
0036bc64  00 e1 9f e5                                      ldr lr, [pc, #0x100]
0036bc68  04 40 8f e0                                      add r4, pc, r4
0036bc6c  05 c0 94 e7                                      ldr ip, [r4, r5]
0036bc70  0e 60 94 e7                                      ldr r6, [r4, lr]
0036bc74  2c d0 4d e2                                      sub sp, sp, #0x2c
0036bc78  00 c0 9c e5                                      ldr ip, [ip]
0036bc7c  00 70 a0 e1                                      mov r7, r0
0036bc80  06 00 a0 e1                                      mov r0, r6
0036bc84  03 b0 a0 e1                                      mov fp, r3
0036bc88  24 c0 8d e5                                      str ip, [sp, #0x24]
0036bc8c  01 a0 a0 e1                                      mov sl, r1
0036bc90  02 90 a0 e1                                      mov sb, r2
0036bc94  fb 2e ff eb                                      bl #0x337888
0036bc98  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
0036bc9c  0c 80 8d e2                                      add r8, sp, #0xc
0036bca0  08 20 8d e2                                      add r2, sp, #8
0036bca4  01 10 8f e0                                      add r1, pc, r1
0036bca8  08 00 a0 e1                                      mov r0, r8
0036bcac  0e a1 fe eb                                      bl #0x3140ec
0036bcb0  06 00 a0 e1                                      mov r0, r6
0036bcb4  08 10 a0 e1                                      mov r1, r8
0036bcb8  72 2f ff eb                                      bl #0x337a88
0036bcbc  00 60 a0 e1                                      mov r6, r0
0036bcc0  08 00 a0 e1                                      mov r0, r8
0036bcc4  38 9f fe eb                                      bl #0x3139ac
0036bcc8  00 00 56 e3                                      cmp r6, #0
0036bccc  17 00 00 1a                                      bne #0x36bd30
0036bcd0  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0036bcd4  03 30 94 e7                                      ldr r3, [r4, r3]
0036bcd8  b4 30 d3 e5                                      ldrb r3, [r3, #0xb4]
0036bcdc  00 00 53 e3                                      cmp r3, #0
0036bce0  12 00 00 0a                                      beq #0x36bd30
0036bce4  01 00 7a e3                                      cmn sl, #1
0036bce8  17 00 00 0a                                      beq #0x36bd4c
0036bcec  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
0036bcf0  0a 00 53 e1                                      cmp r3, sl
0036bcf4  0d 00 00 0a                                      beq #0x36bd30
0036bcf8  07 00 a0 e1                                      mov r0, r7
0036bcfc  0d f9 ff eb                                      bl #0x36a138
0036bd00  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
0036bd04  0a 00 53 e1                                      cmp r3, sl
0036bd08  08 00 00 0a                                      beq #0x36bd30
0036bd0c  2c a0 87 e5                                      str sl, [r7, #0x2c]
0036bd10  02 c0 a0 e3                                      mov ip, #2
0036bd14  07 00 a0 e1                                      mov r0, r7
0036bd18  0a 10 a0 e1                                      mov r1, sl
0036bd1c  09 20 a0 e1                                      mov r2, sb
0036bd20  06 30 a0 e1                                      mov r3, r6
0036bd24  00 c0 8d e5                                      str ip, [sp]
0036bd28  04 60 8d e5                                      str r6, [sp, #4]
0036bd2c  b6 fe ff eb                                      bl #0x36b80c
0036bd30  05 30 94 e7                                      ldr r3, [r4, r5]
0036bd34  24 20 9d e5                                      ldr r2, [sp, #0x24]
0036bd38  00 30 93 e5                                      ldr r3, [r3]
0036bd3c  03 00 52 e1                                      cmp r2, r3
0036bd40  06 00 00 1a                                      bne #0x36bd60
0036bd44  2c d0 8d e2                                      add sp, sp, #0x2c
0036bd48  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0036bd4c  00 00 5b e3                                      cmp fp, #0
0036bd50  f6 ff ff 0a                                      beq #0x36bd30
0036bd54  07 00 a0 e1                                      mov r0, r7
0036bd58  f6 f8 ff eb                                      bl #0x36a138
0036bd5c  f3 ff ff ea                                      b #0x36bd30
0036bd60  6a 89 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036bd64  28 8e 62 00 ac 40 00 00 84 08 00 00 44 54 55 00  .byte 0x28, 0x8e, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x44, 0x54, 0x55, 0x00
0036bd74  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0036bd78, declared_size=668, range_size=668, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager9PlayMusicEibbi
; demangled: VoxSoundManager::PlayMusic(int, bool, bool, int)
; decoder-mode: arm
0036bd78  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036bd7c  68 42 9f e5                                      ldr r4, [pc, #0x268]
0036bd80  68 52 9f e5                                      ldr r5, [pc, #0x268]
0036bd84  02 90 a0 e1                                      mov sb, r2
0036bd88  04 40 8f e0                                      add r4, pc, r4
0036bd8c  05 c0 94 e7                                      ldr ip, [r4, r5]
0036bd90  54 d0 4d e2                                      sub sp, sp, #0x54
0036bd94  01 60 a0 e1                                      mov r6, r1
0036bd98  00 20 9c e5                                      ldr r2, [ip]
0036bd9c  02 10 a0 e3                                      mov r1, #2
0036bda0  03 b0 a0 e1                                      mov fp, r3
0036bda4  4c 20 8d e5                                      str r2, [sp, #0x4c]
0036bda8  00 70 a0 e1                                      mov r7, r0
0036bdac  61 f7 ff eb                                      bl #0x369b38
0036bdb0  3f 14 a0 e3                                      mov r1, #0x3f000000
0036bdb4  54 8a fe eb                                      bl #0x30e70c
0036bdb8  00 00 50 e3                                      cmp r0, #0
0036bdbc  06 00 00 0a                                      beq #0x36bddc
0036bdc0  05 30 94 e7                                      ldr r3, [r4, r5]
0036bdc4  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0036bdc8  00 30 93 e5                                      ldr r3, [r3]
0036bdcc  03 00 52 e1                                      cmp r2, r3
0036bdd0  84 00 00 1a                                      bne #0x36bfe8
0036bdd4  54 d0 8d e2                                      add sp, sp, #0x54
0036bdd8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0036bddc  10 32 9f e5                                      ldr r3, [pc, #0x210]
0036bde0  34 80 8d e2                                      add r8, sp, #0x34
0036bde4  03 a0 94 e7                                      ldr sl, [r4, r3]
0036bde8  0a 00 a0 e1                                      mov r0, sl
0036bdec  a5 2e ff eb                                      bl #0x337888
0036bdf0  00 12 9f e5                                      ldr r1, [pc, #0x200]
0036bdf4  30 20 8d e2                                      add r2, sp, #0x30
0036bdf8  08 00 a0 e1                                      mov r0, r8
0036bdfc  01 10 8f e0                                      add r1, pc, r1
0036be00  b9 a0 fe eb                                      bl #0x3140ec
0036be04  0a 00 a0 e1                                      mov r0, sl
0036be08  08 10 a0 e1                                      mov r1, r8
0036be0c  1d 2f ff eb                                      bl #0x337a88
0036be10  00 a0 a0 e1                                      mov sl, r0
0036be14  08 00 a0 e1                                      mov r0, r8
0036be18  e3 9e fe eb                                      bl #0x3139ac
0036be1c  00 00 5a e3                                      cmp sl, #0
0036be20  e6 ff ff 1a                                      bne #0x36bdc0
0036be24  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
0036be28  03 30 94 e7                                      ldr r3, [r4, r3]
0036be2c  b4 30 d3 e5                                      ldrb r3, [r3, #0xb4]
0036be30  00 00 53 e3                                      cmp r3, #0
0036be34  e1 ff ff 0a                                      beq #0x36bdc0
0036be38  01 00 76 e3                                      cmn r6, #1
0036be3c  24 00 00 0a                                      beq #0x36bed4
0036be40  24 c0 97 e5                                      ldr ip, [r7, #0x24]
0036be44  06 00 5c e1                                      cmp ip, r6
0036be48  28 00 00 0a                                      beq #0x36bef0
0036be4c  ac 81 9f e5                                      ldr r8, [pc, #0x1ac]
0036be50  06 00 5c e1                                      cmp ip, r6
0036be54  28 c0 87 e5                                      str ip, [r7, #0x28]
0036be58  02 00 00 0a                                      beq #0x36be68
0036be5c  07 00 a0 e1                                      mov r0, r7
0036be60  78 10 9d e5                                      ldr r1, [sp, #0x78]
0036be64  cd f8 ff eb                                      bl #0x36a1a0
0036be68  08 30 94 e7                                      ldr r3, [r4, r8]
0036be6c  24 60 87 e5                                      str r6, [r7, #0x24]
0036be70  30 90 c7 e5                                      strb sb, [r7, #0x30]
0036be74  00 30 d3 e5                                      ldrb r3, [r3]
0036be78  00 00 53 e3                                      cmp r3, #0
0036be7c  0a 00 00 0a                                      beq #0x36beac
0036be80  7c 21 9f e5                                      ldr r2, [pc, #0x17c]
0036be84  7c 31 9f e5                                      ldr r3, [pc, #0x17c]
0036be88  06 00 a0 e1                                      mov r0, r6
0036be8c  02 c0 94 e7                                      ldr ip, [r4, r2]
0036be90  03 30 94 e7                                      ldr r3, [r4, r3]
0036be94  09 20 a0 e1                                      mov r2, sb
0036be98  00 60 8c e5                                      str r6, [ip]
0036be9c  00 10 93 e5                                      ldr r1, [r3]
0036bea0  01 30 a0 e3                                      mov r3, #1
0036bea4  27 15 07 eb                                      bl #0x531348
0036bea8  c4 ff ff ea                                      b #0x36bdc0
0036beac  02 c0 a0 e3                                      mov ip, #2
0036beb0  00 c0 8d e5                                      str ip, [sp]
0036beb4  07 00 a0 e1                                      mov r0, r7
0036beb8  01 c0 a0 e3                                      mov ip, #1
0036bebc  06 10 a0 e1                                      mov r1, r6
0036bec0  09 20 a0 e1                                      mov r2, sb
0036bec4  78 30 9d e5                                      ldr r3, [sp, #0x78]
0036bec8  04 c0 8d e5                                      str ip, [sp, #4]
0036becc  4e fe ff eb                                      bl #0x36b80c
0036bed0  ba ff ff ea                                      b #0x36bdc0
0036bed4  00 00 5b e3                                      cmp fp, #0
0036bed8  b8 ff ff 0a                                      beq #0x36bdc0
0036bedc  24 60 87 e5                                      str r6, [r7, #0x24]
0036bee0  07 00 a0 e1                                      mov r0, r7
0036bee4  78 10 9d e5                                      ldr r1, [sp, #0x78]
0036bee8  ac f8 ff eb                                      bl #0x36a1a0
0036beec  b3 ff ff ea                                      b #0x36bdc0
0036bef0  08 81 9f e5                                      ldr r8, [pc, #0x108]
0036bef4  08 30 94 e7                                      ldr r3, [r4, r8]
0036bef8  00 20 d3 e5                                      ldrb r2, [r3]
0036befc  00 00 52 e3                                      cmp r2, #0
0036bf00  2d 00 00 1a                                      bne #0x36bfbc
0036bf04  00 11 9f e5                                      ldr r1, [pc, #0x100]
0036bf08  00 31 9f e5                                      ldr r3, [pc, #0x100]
0036bf0c  0c c0 a0 e3                                      mov ip, #0xc
0036bf10  01 10 94 e7                                      ldr r1, [r4, r1]
0036bf14  03 30 94 e7                                      ldr r3, [r4, r3]
0036bf18  00 a0 e0 e3                                      mvn sl, #0
0036bf1c  00 00 91 e5                                      ldr r0, [r1]
0036bf20  00 b0 e0 e3                                      mvn fp, #0
0036bf24  08 10 97 e5                                      ldr r1, [r7, #8]
0036bf28  9c 06 20 e0                                      mla r0, ip, r6, r0
0036bf2c  08 30 83 e2                                      add r3, r3, #8
0036bf30  04 00 90 e5                                      ldr r0, [r0, #4]
0036bf34  f0 a1 cd e1                                      strd sl, fp, [sp, #0x10]
0036bf38  28 20 8d e5                                      str r2, [sp, #0x28]
0036bf3c  18 20 8d e5                                      str r2, [sp, #0x18]
0036bf40  1c 20 8d e5                                      str r2, [sp, #0x1c]
0036bf44  20 20 8d e5                                      str r2, [sp, #0x20]
0036bf48  24 20 8d e5                                      str r2, [sp, #0x24]
0036bf4c  08 30 8d e5                                      str r3, [sp, #8]
0036bf50  00 11 91 e7                                      ldr r1, [r1, r0, lsl #2]
0036bf54  00 00 51 e3                                      cmp r1, #0
0036bf58  11 00 00 0a                                      beq #0x36bfa4
0036bf5c  08 a0 8d e2                                      add sl, sp, #8
0036bf60  01 30 a0 e3                                      mov r3, #1
0036bf64  00 00 97 e5                                      ldr r0, [r7]
0036bf68  0a 20 a0 e1                                      mov r2, sl
0036bf6c  75 d9 13 eb                                      bl #0x862548
0036bf70  00 00 50 e3                                      cmp r0, #0
0036bf74  08 30 9d d5                                      ldrle r3, [sp, #8]
0036bf78  0a 00 00 da                                      ble #0x36bfa8
0036bf7c  cd 2c 0c e3                                      movw r2, #0xcccd
0036bf80  00 00 97 e5                                      ldr r0, [r7]
0036bf84  0a 10 a0 e1                                      mov r1, sl
0036bf88  4c 2d 43 e3                                      movt r2, #0x3d4c
0036bf8c  6d d8 13 eb                                      bl #0x862148
0036bf90  0a 00 a0 e1                                      mov r0, sl
0036bf94  08 30 9d e5                                      ldr r3, [sp, #8]
0036bf98  0f e0 a0 e1                                      mov lr, pc
0036bf9c  00 f0 93 e5                                      ldr pc, [r3]
0036bfa0  86 ff ff ea                                      b #0x36bdc0
0036bfa4  08 a0 8d e2                                      add sl, sp, #8
0036bfa8  0a 00 a0 e1                                      mov r0, sl
0036bfac  0f e0 a0 e1                                      mov lr, pc
0036bfb0  00 f0 93 e5                                      ldr pc, [r3]
0036bfb4  24 c0 97 e5                                      ldr ip, [r7, #0x24]
0036bfb8  a4 ff ff ea                                      b #0x36be50
0036bfbc  40 20 9f e5                                      ldr r2, [pc, #0x40]
0036bfc0  40 30 9f e5                                      ldr r3, [pc, #0x40]
0036bfc4  0c 00 a0 e1                                      mov r0, ip
0036bfc8  02 e0 94 e7                                      ldr lr, [r4, r2]
0036bfcc  03 30 94 e7                                      ldr r3, [r4, r3]
0036bfd0  09 20 a0 e1                                      mov r2, sb
0036bfd4  00 c0 8e e5                                      str ip, [lr]
0036bfd8  00 10 93 e5                                      ldr r1, [r3]
0036bfdc  01 30 a0 e3                                      mov r3, #1
0036bfe0  d8 14 07 eb                                      bl #0x531348
0036bfe4  75 ff ff ea                                      b #0x36bdc0
0036bfe8  c8 88 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036bfec  08 8d 62 00 ac 40 00 00 84 08 00 00 ec 52 55 00  .byte 0x08, 0x8d, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xec, 0x52, 0x55, 0x00
0036bffc  f4 37 00 00 30 3b 00 00 98 08 00 00 08 0c 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x30, 0x3b, 0x00, 0x00, 0x98, 0x08, 0x00, 0x00, 0x08, 0x0c, 0x00, 0x00
0036c00c  3c 3e 00 00 28 2e 00 00                          .byte 0x3c, 0x3e, 0x00, 0x00, 0x28, 0x2e, 0x00, 0x00

; FUNCTION 0x0036c014, declared_size=336, range_size=336, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager18SetInSafeZoneMusicEb
; demangled: VoxSoundManager::SetInSafeZoneMusic(bool)
; decoder-mode: arm
0036c014  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0036c018  24 61 9f e5                                      ldr r6, [pc, #0x124]
0036c01c  24 31 9f e5                                      ldr r3, [pc, #0x124]
0036c020  0c d0 4d e2                                      sub sp, sp, #0xc
0036c024  06 60 8f e0                                      add r6, pc, r6
0036c028  03 30 96 e7                                      ldr r3, [r6, r3]
0036c02c  00 40 a0 e1                                      mov r4, r0
0036c030  01 70 a0 e1                                      mov r7, r1
0036c034  00 50 d3 e5                                      ldrb r5, [r3]
0036c038  00 00 55 e3                                      cmp r5, #0
0036c03c  1f 00 00 1a                                      bne #0x36c0c0
0036c040  00 00 51 e3                                      cmp r1, #0
0036c044  10 00 00 0a                                      beq #0x36c08c
0036c048  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
0036c04c  03 00 96 e7                                      ldr r0, [r6, r3]
0036c050  4f cd fe eb                                      bl #0x31f594
0036c054  20 11 90 e5                                      ldr r1, [r0, #0x120]
0036c058  00 00 51 e3                                      cmp r1, #0
0036c05c  23 00 00 ba                                      blt #0x36c0f0
0036c060  31 30 d4 e5                                      ldrb r3, [r4, #0x31]
0036c064  01 20 a0 e3                                      mov r2, #1
0036c068  32 20 c4 e5                                      strb r2, [r4, #0x32]
0036c06c  00 00 53 e3                                      cmp r3, #0
0036c070  10 00 00 0a                                      beq #0x36c0b8
0036c074  7d ce a0 e3                                      mov ip, #0x7d0
0036c078  04 00 a0 e1                                      mov r0, r4
0036c07c  05 30 a0 e1                                      mov r3, r5
0036c080  00 c0 8d e5                                      str ip, [sp]
0036c084  3b ff ff eb                                      bl #0x36bd78
0036c088  0a 00 00 ea                                      b #0x36c0b8
0036c08c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0036c090  32 10 c4 e5                                      strb r1, [r4, #0x32]
0036c094  03 00 96 e7                                      ldr r0, [r6, r3]
0036c098  3d cd fe eb                                      bl #0x31f594
0036c09c  7d ce a0 e3                                      mov ip, #0x7d0
0036c0a0  1c 11 90 e5                                      ldr r1, [r0, #0x11c]
0036c0a4  07 30 a0 e1                                      mov r3, r7
0036c0a8  04 00 a0 e1                                      mov r0, r4
0036c0ac  01 20 a0 e3                                      mov r2, #1
0036c0b0  00 c0 8d e5                                      str ip, [sp]
0036c0b4  2f ff ff eb                                      bl #0x36bd78
0036c0b8  0c d0 8d e2                                      add sp, sp, #0xc
0036c0bc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0036c0c0  84 30 9f e5                                      ldr r3, [pc, #0x84]
0036c0c4  32 10 c4 e5                                      strb r1, [r4, #0x32]
0036c0c8  03 00 96 e7                                      ldr r0, [r6, r3]
0036c0cc  30 cd fe eb                                      bl #0x31f594
0036c0d0  7d ce a0 e3                                      mov ip, #0x7d0
0036c0d4  1c 11 90 e5                                      ldr r1, [r0, #0x11c]
0036c0d8  01 20 a0 e3                                      mov r2, #1
0036c0dc  04 00 a0 e1                                      mov r0, r4
0036c0e0  00 30 a0 e3                                      mov r3, #0
0036c0e4  00 c0 8d e5                                      str ip, [sp]
0036c0e8  22 ff ff eb                                      bl #0x36bd78
0036c0ec  f1 ff ff ea                                      b #0x36c0b8
0036c0f0  58 30 9f e5                                      ldr r3, [pc, #0x58]
0036c0f4  03 30 96 e7                                      ldr r3, [r6, r3]
0036c0f8  00 30 93 e5                                      ldr r3, [r3]
0036c0fc  02 00 53 e3                                      cmp r3, #2
0036c100  00 50 85 05                                      streq r5, [r5]
0036c104  eb ff ff 0a                                      beq #0x36c0b8
0036c108  01 00 53 e3                                      cmp r3, #1
0036c10c  e9 ff ff 1a                                      bne #0x36c0b8
0036c110  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0036c114  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0036c118  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0036c11c  00 00 96 e7                                      ldr r0, [r6, r0]
0036c120  38 30 9f e5                                      ldr r3, [pc, #0x38]
0036c124  5a ce a0 e3                                      mov ip, #0x5a0
0036c128  01 10 8f e0                                      add r1, pc, r1
0036c12c  02 20 8f e0                                      add r2, pc, r2
0036c130  03 30 8f e0                                      add r3, pc, r3
0036c134  a8 00 80 e2                                      add r0, r0, #0xa8
0036c138  00 c0 8d e5                                      str ip, [sp]
0036c13c  b0 87 fe eb                                      bl #0x30e004
0036c140  dc ff ff ea                                      b #0x36c0b8
; mapping-symbol data/literal pool
0036c144  6c 8a 62 00 30 3b 00 00 f4 37 00 00 c0 39 00 00  .byte 0x6c, 0x8a, 0x62, 0x00, 0x30, 0x3b, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0036c154  c0 19 00 00 b0 22 55 00 3c 24 55 00 e0 4f 55 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xb0, 0x22, 0x55, 0x00, 0x3c, 0x24, 0x55, 0x00, 0xe0, 0x4f, 0x55, 0x00

; FUNCTION 0x0036c164, declared_size=192, range_size=192, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager11ResumeMusicEi
; demangled: VoxSoundManager::ResumeMusic(int)
; decoder-mode: arm
0036c164  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0036c168  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
0036c16c  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
0036c170  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0036c174  04 40 8f e0                                      add r4, pc, r4
0036c178  05 30 94 e7                                      ldr r3, [r4, r5]
0036c17c  02 80 94 e7                                      ldr r8, [r4, r2]
0036c180  2c d0 4d e2                                      sub sp, sp, #0x2c
0036c184  00 30 93 e5                                      ldr r3, [r3]
0036c188  00 a0 a0 e1                                      mov sl, r0
0036c18c  08 00 a0 e1                                      mov r0, r8
0036c190  24 30 8d e5                                      str r3, [sp, #0x24]
0036c194  01 60 a0 e1                                      mov r6, r1
0036c198  ba 2d ff eb                                      bl #0x337888
0036c19c  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0036c1a0  0c 70 8d e2                                      add r7, sp, #0xc
0036c1a4  08 20 8d e2                                      add r2, sp, #8
0036c1a8  01 10 8f e0                                      add r1, pc, r1
0036c1ac  07 00 a0 e1                                      mov r0, r7
0036c1b0  cd 9f fe eb                                      bl #0x3140ec
0036c1b4  08 00 a0 e1                                      mov r0, r8
0036c1b8  07 10 a0 e1                                      mov r1, r7
0036c1bc  31 2e ff eb                                      bl #0x337a88
0036c1c0  00 80 a0 e1                                      mov r8, r0
0036c1c4  07 00 a0 e1                                      mov r0, r7
0036c1c8  f7 9d fe eb                                      bl #0x3139ac
0036c1cc  00 00 58 e3                                      cmp r8, #0
0036c1d0  07 00 00 1a                                      bne #0x36c1f4
0036c1d4  24 10 9a e5                                      ldr r1, [sl, #0x24]
0036c1d8  01 00 71 e3                                      cmn r1, #1
0036c1dc  04 00 00 0a                                      beq #0x36c1f4
0036c1e0  30 20 da e5                                      ldrb r2, [sl, #0x30]
0036c1e4  0a 00 a0 e1                                      mov r0, sl
0036c1e8  01 30 a0 e3                                      mov r3, #1
0036c1ec  00 60 8d e5                                      str r6, [sp]
0036c1f0  e0 fe ff eb                                      bl #0x36bd78
0036c1f4  05 30 94 e7                                      ldr r3, [r4, r5]
0036c1f8  24 20 9d e5                                      ldr r2, [sp, #0x24]
0036c1fc  00 30 93 e5                                      ldr r3, [r3]
0036c200  03 00 52 e1                                      cmp r2, r3
0036c204  01 00 00 1a                                      bne #0x36c210
0036c208  2c d0 8d e2                                      add sp, sp, #0x2c
0036c20c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0036c210  3e 88 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036c214  1c 89 62 00 ac 40 00 00 84 08 00 00 40 4f 55 00  .byte 0x1c, 0x89, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x40, 0x4f, 0x55, 0x00

; FUNCTION 0x0036c224, declared_size=192, range_size=192, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager12RestartMusicEi
; demangled: VoxSoundManager::RestartMusic(int)
; decoder-mode: arm
0036c224  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0036c228  a4 40 9f e5                                      ldr r4, [pc, #0xa4]
0036c22c  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
0036c230  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
0036c234  04 40 8f e0                                      add r4, pc, r4
0036c238  05 30 94 e7                                      ldr r3, [r4, r5]
0036c23c  02 80 94 e7                                      ldr r8, [r4, r2]
0036c240  2c d0 4d e2                                      sub sp, sp, #0x2c
0036c244  00 30 93 e5                                      ldr r3, [r3]
0036c248  00 a0 a0 e1                                      mov sl, r0
0036c24c  08 00 a0 e1                                      mov r0, r8
0036c250  24 30 8d e5                                      str r3, [sp, #0x24]
0036c254  01 60 a0 e1                                      mov r6, r1
0036c258  8a 2d ff eb                                      bl #0x337888
0036c25c  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0036c260  0c 70 8d e2                                      add r7, sp, #0xc
0036c264  08 20 8d e2                                      add r2, sp, #8
0036c268  01 10 8f e0                                      add r1, pc, r1
0036c26c  07 00 a0 e1                                      mov r0, r7
0036c270  9d 9f fe eb                                      bl #0x3140ec
0036c274  08 00 a0 e1                                      mov r0, r8
0036c278  07 10 a0 e1                                      mov r1, r7
0036c27c  01 2e ff eb                                      bl #0x337a88
0036c280  00 80 a0 e1                                      mov r8, r0
0036c284  07 00 a0 e1                                      mov r0, r7
0036c288  c7 9d fe eb                                      bl #0x3139ac
0036c28c  00 00 58 e3                                      cmp r8, #0
0036c290  07 00 00 1a                                      bne #0x36c2b4
0036c294  28 10 9a e5                                      ldr r1, [sl, #0x28]
0036c298  01 00 71 e3                                      cmn r1, #1
0036c29c  04 00 00 0a                                      beq #0x36c2b4
0036c2a0  30 20 da e5                                      ldrb r2, [sl, #0x30]
0036c2a4  0a 00 a0 e1                                      mov r0, sl
0036c2a8  01 30 a0 e3                                      mov r3, #1
0036c2ac  00 60 8d e5                                      str r6, [sp]
0036c2b0  b0 fe ff eb                                      bl #0x36bd78
0036c2b4  05 30 94 e7                                      ldr r3, [r4, r5]
0036c2b8  24 20 9d e5                                      ldr r2, [sp, #0x24]
0036c2bc  00 30 93 e5                                      ldr r3, [r3]
0036c2c0  03 00 52 e1                                      cmp r2, r3
0036c2c4  01 00 00 1a                                      bne #0x36c2d0
0036c2c8  2c d0 8d e2                                      add sp, sp, #0x2c
0036c2cc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0036c2d0  0e 88 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036c2d4  5c 88 62 00 ac 40 00 00 84 08 00 00 80 4e 55 00  .byte 0x5c, 0x88, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x80, 0x4e, 0x55, 0x00

; FUNCTION 0x0036c2e4, declared_size=1104, range_size=1104, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager10InitializeEv
; demangled: VoxSoundManager::Initialize()
; decoder-mode: arm
0036c2e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0036c2e8  fc 93 9f e5                                      ldr sb, [pc, #0x3fc]
0036c2ec  fc b3 9f e5                                      ldr fp, [pc, #0x3fc]
0036c2f0  00 50 a0 e1                                      mov r5, r0
0036c2f4  09 90 8f e0                                      add sb, pc, sb
0036c2f8  0b 30 99 e7                                      ldr r3, [sb, fp]
0036c2fc  f0 03 9f e5                                      ldr r0, [pc, #0x3f0]
0036c300  7c d0 4d e2                                      sub sp, sp, #0x7c
0036c304  00 30 93 e5                                      ldr r3, [r3]
0036c308  00 00 8f e0                                      add r0, pc, r0
0036c30c  5c 40 8d e2                                      add r4, sp, #0x5c
0036c310  74 30 8d e5                                      str r3, [sp, #0x74]
0036c314  7e df fe eb                                      bl #0x324114
0036c318  d8 13 9f e5                                      ldr r1, [pc, #0x3d8]
0036c31c  00 30 a0 e3                                      mov r3, #0
0036c320  38 60 85 e2                                      add r6, r5, #0x38
0036c324  33 30 c5 e5                                      strb r3, [r5, #0x33]
0036c328  01 10 8f e0                                      add r1, pc, r1
0036c32c  04 00 a0 e1                                      mov r0, r4
0036c330  40 20 8d e2                                      add r2, sp, #0x40
0036c334  6c 9f fe eb                                      bl #0x3140ec
0036c338  04 00 56 e1                                      cmp r6, r4
0036c33c  03 00 00 0a                                      beq #0x36c350
0036c340  06 00 a0 e1                                      mov r0, r6
0036c344  70 10 9d e5                                      ldr r1, [sp, #0x70]
0036c348  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0036c34c  a3 91 fe eb                                      bl #0x3109e0
0036c350  04 00 a0 e1                                      mov r0, r4
0036c354  94 9d fe eb                                      bl #0x3139ac
0036c358  9c 03 9f e5                                      ldr r0, [pc, #0x39c]
0036c35c  00 00 8f e0                                      add r0, pc, r0
0036c360  f7 54 00 eb                                      bl #0x381744
0036c364  94 33 9f e5                                      ldr r3, [pc, #0x394]
0036c368  94 13 9f e5                                      ldr r1, [pc, #0x394]
0036c36c  00 00 50 e3                                      cmp r0, #0
0036c370  03 40 99 e7                                      ldr r4, [sb, r3]
0036c374  33 00 c5 05                                      strbeq r0, [r5, #0x33]
0036c378  01 10 8f e0                                      add r1, pc, r1
0036c37c  04 00 a0 e1                                      mov r0, r4
0036c380  af d2 fe eb                                      bl #0x320e44
0036c384  76 89 fe eb                                      bl #0x30e964
0036c388  01 10 a0 e3                                      mov r1, #1
0036c38c  00 20 a0 e1                                      mov r2, r0
0036c390  05 00 a0 e1                                      mov r0, r5
0036c394  81 f6 ff eb                                      bl #0x369da0
0036c398  68 13 9f e5                                      ldr r1, [pc, #0x368]
0036c39c  04 00 a0 e1                                      mov r0, r4
0036c3a0  01 10 8f e0                                      add r1, pc, r1
0036c3a4  a6 d2 fe eb                                      bl #0x320e44
0036c3a8  6d 89 fe eb                                      bl #0x30e964
0036c3ac  02 10 a0 e3                                      mov r1, #2
0036c3b0  00 20 a0 e1                                      mov r2, r0
0036c3b4  05 00 a0 e1                                      mov r0, r5
0036c3b8  78 f6 ff eb                                      bl #0x369da0
0036c3bc  48 13 9f e5                                      ldr r1, [pc, #0x348]
0036c3c0  00 00 95 e5                                      ldr r0, [r5]
0036c3c4  01 10 8f e0                                      add r1, pc, r1
0036c3c8  8e d5 13 eb                                      bl #0x861a08
0036c3cc  02 10 a0 e3                                      mov r1, #2
0036c3d0  04 20 a0 e3                                      mov r2, #4
0036c3d4  00 00 95 e5                                      ldr r0, [r5]
0036c3d8  d6 d5 13 eb                                      bl #0x861b38
0036c3dc  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
0036c3e0  80 20 95 e5                                      ldr r2, [r5, #0x80]
0036c3e4  02 20 63 e0                                      rsb r2, r3, r2
0036c3e8  c2 31 a0 e1                                      asr r3, r2, #3
0036c3ec  83 10 83 e0                                      add r1, r3, r3, lsl #1
0036c3f0  01 12 81 e0                                      add r1, r1, r1, lsl #4
0036c3f4  01 14 81 e0                                      add r1, r1, r1, lsl #8
0036c3f8  01 18 81 e0                                      add r1, r1, r1, lsl #16
0036c3fc  01 11 83 e0                                      add r1, r3, r1, lsl #2
0036c400  08 00 51 e3                                      cmp r1, #8
0036c404  6c 00 00 ca                                      bgt #0x36c5bc
0036c408  4f 00 52 e3                                      cmp r2, #0x4f
0036c40c  1d 00 00 da                                      ble #0x36c488
0036c410  64 70 85 e2                                      add r7, r5, #0x64
0036c414  01 40 a0 e3                                      mov r4, #1
0036c418  38 60 8d e2                                      add r6, sp, #0x38
0036c41c  34 80 8d e2                                      add r8, sp, #0x34
0036c420  30 a0 8d e2                                      add sl, sp, #0x30
0036c424  04 10 a0 e1                                      mov r1, r4
0036c428  06 20 a0 e1                                      mov r2, r6
0036c42c  08 30 a0 e1                                      mov r3, r8
0036c430  07 00 a0 e1                                      mov r0, r7
0036c434  00 a0 8d e5                                      str sl, [sp]
0036c438  16 74 14 eb                                      bl #0x889498
0036c43c  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0036c440  00 00 95 e5                                      ldr r0, [r5]
0036c444  38 20 9d e5                                      ldr r2, [sp, #0x38]
0036c448  34 30 9d e5                                      ldr r3, [sp, #0x34]
0036c44c  04 10 a0 e1                                      mov r1, r4
0036c450  00 c0 8d e5                                      str ip, [sp]
0036c454  ff d8 13 eb                                      bl #0x862858
0036c458  80 20 95 e5                                      ldr r2, [r5, #0x80]
0036c45c  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
0036c460  01 40 84 e2                                      add r4, r4, #1
0036c464  02 30 63 e0                                      rsb r3, r3, r2
0036c468  c3 31 a0 e1                                      asr r3, r3, #3
0036c46c  83 20 83 e0                                      add r2, r3, r3, lsl #1
0036c470  02 22 82 e0                                      add r2, r2, r2, lsl #4
0036c474  02 24 82 e0                                      add r2, r2, r2, lsl #8
0036c478  02 28 82 e0                                      add r2, r2, r2, lsl #16
0036c47c  02 31 83 e0                                      add r3, r3, r2, lsl #2
0036c480  03 00 54 e1                                      cmp r4, r3
0036c484  e6 ff ff ba                                      blt #0x36c424
0036c488  80 32 9f e5                                      ldr r3, [pc, #0x280]
0036c48c  03 30 99 e7                                      ldr r3, [sb, r3]
0036c490  00 30 d3 e5                                      ldrb r3, [r3]
0036c494  00 00 53 e3                                      cmp r3, #0
0036c498  09 00 00 0a                                      beq #0x36c4c4
0036c49c  70 02 9f e5                                      ldr r0, [pc, #0x270]
0036c4a0  00 00 8f e0                                      add r0, pc, r0
0036c4a4  1a df fe eb                                      bl #0x324114
0036c4a8  0b 30 99 e7                                      ldr r3, [sb, fp]
0036c4ac  74 20 9d e5                                      ldr r2, [sp, #0x74]
0036c4b0  00 30 93 e5                                      ldr r3, [r3]
0036c4b4  03 00 52 e1                                      cmp r2, r3
0036c4b8  8a 00 00 1a                                      bne #0x36c6e8
0036c4bc  7c d0 8d e2                                      add sp, sp, #0x7c
0036c4c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0036c4c4  a0 54 00 eb                                      bl #0x38174c
0036c4c8  00 00 50 e3                                      cmp r0, #0
0036c4cc  42 00 00 0a                                      beq #0x36c5dc
0036c4d0  40 42 9f e5                                      ldr r4, [pc, #0x240]
0036c4d4  64 80 85 e2                                      add r8, r5, #0x64
0036c4d8  08 00 a0 e1                                      mov r0, r8
0036c4dc  04 40 8f e0                                      add r4, pc, r4
0036c4e0  04 10 a0 e1                                      mov r1, r4
0036c4e4  e9 77 14 eb                                      bl #0x88a490
0036c4e8  00 a0 50 e2                                      subs sl, r0, #0
0036c4ec  ea ff ff da                                      ble #0x36c49c
0036c4f0  24 22 9f e5                                      ldr r2, [pc, #0x224]
0036c4f4  24 32 9f e5                                      ldr r3, [pc, #0x224]
0036c4f8  1c b0 8d e5                                      str fp, [sp, #0x1c]
0036c4fc  0c 20 8d e5                                      str r2, [sp, #0xc]
0036c500  14 20 85 e2                                      add r2, r5, #0x14
0036c504  20 20 8d e5                                      str r2, [sp, #0x20]
0036c508  2c 20 8d e2                                      add r2, sp, #0x2c
0036c50c  10 20 8d e5                                      str r2, [sp, #0x10]
0036c510  3c 20 8d e2                                      add r2, sp, #0x3c
0036c514  03 30 8f e0                                      add r3, pc, r3
0036c518  14 20 8d e5                                      str r2, [sp, #0x14]
0036c51c  28 20 8d e2                                      add r2, sp, #0x28
0036c520  18 40 8d e5                                      str r4, [sp, #0x18]
0036c524  00 70 a0 e3                                      mov r7, #0
0036c528  44 60 8d e2                                      add r6, sp, #0x44
0036c52c  24 20 8d e5                                      str r2, [sp, #0x24]
0036c530  03 b0 a0 e1                                      mov fp, r3
0036c534  18 10 9d e5                                      ldr r1, [sp, #0x18]
0036c538  10 20 9d e5                                      ldr r2, [sp, #0x10]
0036c53c  08 00 a0 e1                                      mov r0, r8
0036c540  19 7e 14 eb                                      bl #0x88bdac
0036c544  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0036c548  03 40 99 e7                                      ldr r4, [sb, r3]
0036c54c  04 00 a0 e1                                      mov r0, r4
0036c550  cc 2c ff eb                                      bl #0x337888
0036c554  14 20 9d e5                                      ldr r2, [sp, #0x14]
0036c558  0b 10 a0 e1                                      mov r1, fp
0036c55c  06 00 a0 e1                                      mov r0, r6
0036c560  e1 9e fe eb                                      bl #0x3140ec
0036c564  04 00 a0 e1                                      mov r0, r4
0036c568  06 10 a0 e1                                      mov r1, r6
0036c56c  45 2d ff eb                                      bl #0x337a88
0036c570  06 00 a0 e1                                      mov r0, r6
0036c574  0c 9d fe eb                                      bl #0x3139ac
0036c578  10 40 95 e5                                      ldr r4, [r5, #0x10]
0036c57c  14 30 95 e5                                      ldr r3, [r5, #0x14]
0036c580  03 00 54 e1                                      cmp r4, r3
0036c584  24 00 00 0a                                      beq #0x36c61c
0036c588  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0036c58c  00 30 84 e5                                      str r3, [r4]
0036c590  10 30 95 e5                                      ldr r3, [r5, #0x10]
0036c594  04 30 83 e2                                      add r3, r3, #4
0036c598  10 30 85 e5                                      str r3, [r5, #0x10]
0036c59c  01 70 87 e2                                      add r7, r7, #1
0036c5a0  05 00 a0 e1                                      mov r0, r5
0036c5a4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0036c5a8  13 f5 ff eb                                      bl #0x3699fc
0036c5ac  0a 00 57 e1                                      cmp r7, sl
0036c5b0  df ff ff 1a                                      bne #0x36c534
0036c5b4  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
0036c5b8  b7 ff ff ea                                      b #0x36c49c
0036c5bc  60 01 9f e5                                      ldr r0, [pc, #0x160]
0036c5c0  08 20 a0 e3                                      mov r2, #8
0036c5c4  00 00 8f e0                                      add r0, pc, r0
0036c5c8  2d 86 fe eb                                      bl #0x30de84
0036c5cc  80 20 95 e5                                      ldr r2, [r5, #0x80]
0036c5d0  7c 30 95 e5                                      ldr r3, [r5, #0x7c]
0036c5d4  02 20 63 e0                                      rsb r2, r3, r2
0036c5d8  8a ff ff ea                                      b #0x36c408
0036c5dc  44 31 9f e5                                      ldr r3, [pc, #0x144]
0036c5e0  03 30 99 e7                                      ldr r3, [sb, r3]
0036c5e4  00 30 d3 e5                                      ldrb r3, [r3]
0036c5e8  00 00 53 e3                                      cmp r3, #0
0036c5ec  b7 ff ff 1a                                      bne #0x36c4d0
0036c5f0  34 31 9f e5                                      ldr r3, [pc, #0x134]
0036c5f4  03 30 99 e7                                      ldr r3, [sb, r3]
0036c5f8  00 30 d3 e5                                      ldrb r3, [r3]
0036c5fc  00 00 53 e3                                      cmp r3, #0
0036c600  b2 ff ff 1a                                      bne #0x36c4d0
0036c604  24 31 9f e5                                      ldr r3, [pc, #0x124]
0036c608  03 30 99 e7                                      ldr r3, [sb, r3]
0036c60c  00 30 d3 e5                                      ldrb r3, [r3]
0036c610  00 00 53 e3                                      cmp r3, #0
0036c614  a0 ff ff 0a                                      beq #0x36c49c
0036c618  ac ff ff ea                                      b #0x36c4d0
0036c61c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0036c620  04 20 62 e0                                      rsb r2, r2, r4
0036c624  42 21 a0 e1                                      asr r2, r2, #2
0036c628  01 00 52 e3                                      cmp r2, #1
0036c62c  02 30 82 20                                      addhs r3, r2, r2
0036c630  01 30 82 32                                      addlo r3, r2, #1
0036c634  07 01 73 e3                                      cmn r3, #0xc0000001
0036c638  1e 00 00 8a                                      bhi #0x36c6b8
0036c63c  03 00 52 e1                                      cmp r2, r3
0036c640  1c 00 00 8a                                      bhi #0x36c6b8
0036c644  03 10 a0 e1                                      mov r1, r3
0036c648  20 00 9d e5                                      ldr r0, [sp, #0x20]
0036c64c  24 20 9d e5                                      ldr r2, [sp, #0x24]
0036c650  28 30 8d e5                                      str r3, [sp, #0x28]
0036c654  c0 cd ff eb                                      bl #0x35fd5c
0036c658  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0036c65c  00 c0 a0 e1                                      mov ip, r0
0036c660  01 40 54 e0                                      subs r4, r4, r1
0036c664  00 40 a0 01                                      moveq r4, r0
0036c668  18 00 00 1a                                      bne #0x36c6d0
0036c66c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0036c670  04 30 84 e4                                      str r3, [r4], #4
0036c674  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0036c678  14 30 95 e5                                      ldr r3, [r5, #0x14]
0036c67c  00 00 50 e3                                      cmp r0, #0
0036c680  06 00 00 0a                                      beq #0x36c6a0
0036c684  03 30 60 e0                                      rsb r3, r0, r3
0036c688  03 10 c3 e3                                      bic r1, r3, #3
0036c68c  80 00 51 e3                                      cmp r1, #0x80
0036c690  0a 00 00 8a                                      bhi #0x36c6c0
0036c694  08 c0 8d e5                                      str ip, [sp, #8]
0036c698  18 72 0e eb                                      bl #0x708f00
0036c69c  08 c0 9d e5                                      ldr ip, [sp, #8]
0036c6a0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0036c6a4  0c c0 85 e5                                      str ip, [r5, #0xc]
0036c6a8  10 40 85 e5                                      str r4, [r5, #0x10]
0036c6ac  03 31 8c e0                                      add r3, ip, r3, lsl #2
0036c6b0  14 30 85 e5                                      str r3, [r5, #0x14]
0036c6b4  b8 ff ff ea                                      b #0x36c59c
0036c6b8  03 31 e0 e3                                      mvn r3, #0xc0000000
0036c6bc  e0 ff ff ea                                      b #0x36c644
0036c6c0  08 c0 8d e5                                      str ip, [sp, #8]
0036c6c4  5d 8f fe eb                                      bl #0x310440
0036c6c8  08 c0 9d e5                                      ldr ip, [sp, #8]
0036c6cc  f3 ff ff ea                                      b #0x36c6a0
0036c6d0  04 20 a0 e1                                      mov r2, r4
0036c6d4  08 00 8d e5                                      str r0, [sp, #8]
0036c6d8  16 86 fe eb                                      bl #0x30df38
0036c6dc  08 c0 9d e5                                      ldr ip, [sp, #8]
0036c6e0  04 40 80 e0                                      add r4, r0, r4
0036c6e4  e0 ff ff ea                                      b #0x36c66c
0036c6e8  08 87 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036c6ec  9c 87 62 00 ac 40 00 00 60 4e 55 00 e0 f4 55 00  .byte 0x9c, 0x87, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x60, 0x4e, 0x55, 0x00, 0xe0, 0xf4, 0x55, 0x00
0036c6fc  4c 4e 55 00 f4 37 00 00 58 4c 55 00 10 4e 55 00  .byte 0x4c, 0x4e, 0x55, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x58, 0x4c, 0x55, 0x00, 0x10, 0x4e, 0x55, 0x00
0036c70c  fc 4d 55 00 30 3b 00 00 e0 4d 55 00 94 4d 55 00  .byte 0xfc, 0x4d, 0x55, 0x00, 0x30, 0x3b, 0x00, 0x00, 0xe0, 0x4d, 0x55, 0x00, 0x94, 0x4d, 0x55, 0x00
0036c71c  84 08 00 00 bc 4b 55 00 2c 4c 55 00 68 27 00 00  .byte 0x84, 0x08, 0x00, 0x00, 0xbc, 0x4b, 0x55, 0x00, 0x2c, 0x4c, 0x55, 0x00, 0x68, 0x27, 0x00, 0x00
0036c72c  58 44 00 00 d4 29 00 00                          .byte 0x58, 0x44, 0x00, 0x00, 0xd4, 0x29, 0x00, 0x00

; FUNCTION 0x0036c734, declared_size=124, range_size=124, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager19GetIPodPlaylistNameEi
; demangled: VoxSoundManager::GetIPodPlaylistName(int)
; decoder-mode: arm
0036c734  70 40 2d e9                                      push {r4, r5, r6, lr}
0036c738  00 40 a0 e1                                      mov r4, r0
0036c73c  10 00 84 e5                                      str r0, [r4, #0x10]
0036c740  14 00 84 e5                                      str r0, [r4, #0x14]
0036c744  10 10 a0 e3                                      mov r1, #0x10
0036c748  02 50 a0 e1                                      mov r5, r2
0036c74c  ca 93 fe eb                                      bl #0x31167c
0036c750  10 30 94 e5                                      ldr r3, [r4, #0x10]
0036c754  00 20 a0 e3                                      mov r2, #0
0036c758  00 20 c3 e5                                      strb r2, [r3]
0036c75c  ab 1c 07 eb                                      bl #0x533a10
0036c760  05 00 50 e1                                      cmp r0, r5
0036c764  06 00 00 ca                                      bgt #0x36c784
0036c768  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0036c76c  04 00 a0 e1                                      mov r0, r4
0036c770  01 10 8f e0                                      add r1, pc, r1
0036c774  01 20 a0 e1                                      mov r2, r1
0036c778  98 90 fe eb                                      bl #0x3109e0
0036c77c  04 00 a0 e1                                      mov r0, r4
0036c780  70 80 bd e8                                      pop {r4, r5, r6, pc}
0036c784  05 00 a0 e1                                      mov r0, r5
0036c788  b2 1c 07 eb                                      bl #0x533a58
0036c78c  00 50 a0 e1                                      mov r5, r0
0036c790  af 85 fe eb                                      bl #0x30de54
0036c794  05 10 a0 e1                                      mov r1, r5
0036c798  00 20 85 e0                                      add r2, r5, r0
0036c79c  04 00 a0 e1                                      mov r0, r4
0036c7a0  8e 90 fe eb                                      bl #0x3109e0
0036c7a4  04 00 a0 e1                                      mov r0, r4
0036c7a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0036c7ac  98 f0 55 00                                      .byte 0x98, 0xf0, 0x55, 0x00

; FUNCTION 0x0036c7b0, declared_size=728, range_size=728, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManagerC1Ev
; demangled: VoxSoundManager::VoxSoundManager()
; decoder-mode: arm
0036c7b0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0036c7b4  94 52 9f e5                                      ldr r5, [pc, #0x294]
0036c7b8  94 62 9f e5                                      ldr r6, [pc, #0x294]
0036c7bc  00 40 a0 e1                                      mov r4, r0
0036c7c0  05 50 8f e0                                      add r5, pc, r5
0036c7c4  06 30 95 e7                                      ldr r3, [r5, r6]
0036c7c8  00 70 a0 e3                                      mov r7, #0
0036c7cc  38 20 80 e2                                      add r2, r0, #0x38
0036c7d0  00 30 93 e5                                      ldr r3, [r3]
0036c7d4  00 10 e0 e3                                      mvn r1, #0
0036c7d8  01 80 a0 e3                                      mov r8, #1
0036c7dc  2c 10 80 e5                                      str r1, [r0, #0x2c]
0036c7e0  85 df 4d e2                                      sub sp, sp, #0x214
0036c7e4  02 00 a0 e1                                      mov r0, r2
0036c7e8  24 10 84 e5                                      str r1, [r4, #0x24]
0036c7ec  28 10 84 e5                                      str r1, [r4, #0x28]
0036c7f0  48 20 84 e5                                      str r2, [r4, #0x48]
0036c7f4  4c 20 84 e5                                      str r2, [r4, #0x4c]
0036c7f8  00 70 84 e5                                      str r7, [r4]
0036c7fc  0c 70 84 e5                                      str r7, [r4, #0xc]
0036c800  10 70 84 e5                                      str r7, [r4, #0x10]
0036c804  14 70 84 e5                                      str r7, [r4, #0x14]
0036c808  18 80 c4 e5                                      strb r8, [r4, #0x18]
0036c80c  1c 70 84 e5                                      str r7, [r4, #0x1c]
0036c810  20 70 c4 e5                                      strb r7, [r4, #0x20]
0036c814  30 80 c4 e5                                      strb r8, [r4, #0x30]
0036c818  31 80 c4 e5                                      strb r8, [r4, #0x31]
0036c81c  32 70 c4 e5                                      strb r7, [r4, #0x32]
0036c820  33 70 c4 e5                                      strb r7, [r4, #0x33]
0036c824  10 10 a0 e3                                      mov r1, #0x10
0036c828  0c 32 8d e5                                      str r3, [sp, #0x20c]
0036c82c  92 93 fe eb                                      bl #0x31167c
0036c830  48 10 94 e5                                      ldr r1, [r4, #0x48]
0036c834  04 20 a0 e1                                      mov r2, r4
0036c838  fa 3f a0 e3                                      mov r3, #0x3e8
0036c83c  00 70 c1 e5                                      strb r7, [r1]
0036c840  10 02 9f e5                                      ldr r0, [pc, #0x210]
0036c844  fe 15 a0 e3                                      mov r1, #0x3f800000
0036c848  58 30 84 e5                                      str r3, [r4, #0x58]
0036c84c  54 30 84 e5                                      str r3, [r4, #0x54]
0036c850  5c 10 84 e5                                      str r1, [r4, #0x5c]
0036c854  04 30 a0 e1                                      mov r3, r4
0036c858  60 70 c4 e5                                      strb r7, [r4, #0x60]
0036c85c  64 70 84 e5                                      str r7, [r4, #0x64]
0036c860  68 70 84 e5                                      str r7, [r4, #0x68]
0036c864  6c 70 84 e5                                      str r7, [r4, #0x6c]
0036c868  70 70 84 e5                                      str r7, [r4, #0x70]
0036c86c  74 70 84 e5                                      str r7, [r4, #0x74]
0036c870  78 70 84 e5                                      str r7, [r4, #0x78]
0036c874  7c 70 84 e5                                      str r7, [r4, #0x7c]
0036c878  80 70 84 e5                                      str r7, [r4, #0x80]
0036c87c  84 70 84 e5                                      str r7, [r4, #0x84]
0036c880  88 70 84 e5                                      str r7, [r4, #0x88]
0036c884  8c 70 84 e5                                      str r7, [r4, #0x8c]
0036c888  90 70 84 e5                                      str r7, [r4, #0x90]
0036c88c  98 70 84 e5                                      str r7, [r4, #0x98]
0036c890  94 70 e2 e5                                      strb r7, [r2, #0x94]!
0036c894  a0 20 84 e5                                      str r2, [r4, #0xa0]
0036c898  9c 20 84 e5                                      str r2, [r4, #0x9c]
0036c89c  a4 70 84 e5                                      str r7, [r4, #0xa4]
0036c8a0  b0 70 84 e5                                      str r7, [r4, #0xb0]
0036c8a4  ac 70 e3 e5                                      strb r7, [r3, #0xac]!
0036c8a8  b8 30 84 e5                                      str r3, [r4, #0xb8]
0036c8ac  b4 30 84 e5                                      str r3, [r4, #0xb4]
0036c8b0  bc 70 84 e5                                      str r7, [r4, #0xbc]
0036c8b4  00 00 8f e0                                      add r0, pc, r0
0036c8b8  15 de fe eb                                      bl #0x324114
0036c8bc  98 31 9f e5                                      ldr r3, [pc, #0x198]
0036c8c0  03 30 95 e7                                      ldr r3, [r5, r3]
0036c8c4  a8 30 d3 e5                                      ldrb r3, [r3, #0xa8]
0036c8c8  07 00 53 e1                                      cmp r3, r7
0036c8cc  50 00 00 1a                                      bne #0x36ca14
0036c8d0  88 31 9f e5                                      ldr r3, [pc, #0x188]
0036c8d4  0c 70 8d e2                                      add r7, sp, #0xc
0036c8d8  07 00 a0 e1                                      mov r0, r7
0036c8dc  03 30 95 e7                                      ldr r3, [r5, r3]
0036c8e0  00 10 93 e5                                      ldr r1, [r3]
0036c8e4  0d 87 fe eb                                      bl #0x30e520
0036c8e8  07 00 a0 e1                                      mov r0, r7
0036c8ec  58 85 fe eb                                      bl #0x30de54
0036c8f0  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
0036c8f4  0d 20 a0 e3                                      mov r2, #0xd
0036c8f8  00 00 87 e0                                      add r0, r7, r0
0036c8fc  01 10 8f e0                                      add r1, pc, r1
0036c900  d8 87 fe eb                                      bl #0x30e868
0036c904  07 00 a0 e1                                      mov r0, r7
0036c908  51 85 fe eb                                      bl #0x30de54
0036c90c  54 11 9f e5                                      ldr r1, [pc, #0x154]
0036c910  0b 20 a0 e3                                      mov r2, #0xb
0036c914  00 00 87 e0                                      add r0, r7, r0
0036c918  01 10 8f e0                                      add r1, pc, r1
0036c91c  d1 87 fe eb                                      bl #0x30e868
0036c920  07 10 a0 e1                                      mov r1, r7
0036c924  64 00 84 e2                                      add r0, r4, #0x64
0036c928  85 82 14 eb                                      bl #0x88d344
0036c92c  38 01 9f e5                                      ldr r0, [pc, #0x138]
0036c930  00 00 8f e0                                      add r0, pc, r0
0036c934  f6 dd fe eb                                      bl #0x324114
0036c938  68 20 94 e5                                      ldr r2, [r4, #0x68]
0036c93c  64 30 94 e5                                      ldr r3, [r4, #0x64]
0036c940  04 10 a0 e3                                      mov r1, #4
0036c944  02 30 63 e0                                      rsb r3, r3, r2
0036c948  43 31 a0 e1                                      asr r3, r3, #2
0036c94c  13 21 a0 e1                                      lsl r2, r3, r1
0036c950  02 20 63 e0                                      rsb r2, r3, r2
0036c954  02 24 82 e0                                      add r2, r2, r2, lsl #8
0036c958  02 28 82 e0                                      add r2, r2, r2, lsl #16
0036c95c  02 32 83 e0                                      add r3, r3, r2, lsl #4
0036c960  1c 30 84 e5                                      str r3, [r4, #0x1c]
0036c964  03 01 a0 e1                                      lsl r0, r3, #2
0036c968  ff 8e fe eb                                      bl #0x31056c
0036c96c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0036c970  00 10 a0 e3                                      mov r1, #0
0036c974  04 00 84 e5                                      str r0, [r4, #4]
0036c978  02 21 a0 e1                                      lsl r2, r2, #2
0036c97c  b7 86 fe eb                                      bl #0x30e460
0036c980  e8 00 9f e5                                      ldr r0, [pc, #0xe8]
0036c984  00 00 8f e0                                      add r0, pc, r0
0036c988  e1 dd fe eb                                      bl #0x324114
0036c98c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0036c990  04 10 a0 e3                                      mov r1, #4
0036c994  00 01 a0 e1                                      lsl r0, r0, #2
0036c998  f3 8e fe eb                                      bl #0x31056c
0036c99c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0036c9a0  00 10 a0 e3                                      mov r1, #0
0036c9a4  08 00 84 e5                                      str r0, [r4, #8]
0036c9a8  02 21 a0 e1                                      lsl r2, r2, #2
0036c9ac  ab 86 fe eb                                      bl #0x30e460
0036c9b0  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
0036c9b4  00 00 8f e0                                      add r0, pc, r0
0036c9b8  d5 dd fe eb                                      bl #0x324114
0036c9bc  b4 00 9f e5                                      ldr r0, [pc, #0xb4]
0036c9c0  00 00 8f e0                                      add r0, pc, r0
0036c9c4  d2 dd fe eb                                      bl #0x324114
0036c9c8  58 d8 13 eb                                      bl #0x862b30
0036c9cc  00 00 84 e5                                      str r0, [r4]
0036c9d0  00 30 90 e5                                      ldr r3, [r0]
0036c9d4  0f e0 a0 e1                                      mov lr, pc
0036c9d8  08 f0 93 e5                                      ldr pc, [r3, #8]
0036c9dc  98 00 9f e5                                      ldr r0, [pc, #0x98]
0036c9e0  00 00 8f e0                                      add r0, pc, r0
0036c9e4  ca dd fe eb                                      bl #0x324114
0036c9e8  90 00 9f e5                                      ldr r0, [pc, #0x90]
0036c9ec  00 00 8f e0                                      add r0, pc, r0
0036c9f0  c7 dd fe eb                                      bl #0x324114
0036c9f4  06 30 95 e7                                      ldr r3, [r5, r6]
0036c9f8  0c 22 9d e5                                      ldr r2, [sp, #0x20c]
0036c9fc  04 00 a0 e1                                      mov r0, r4
0036ca00  00 30 93 e5                                      ldr r3, [r3]
0036ca04  03 00 52 e1                                      cmp r2, r3
0036ca08  0f 00 00 1a                                      bne #0x36ca4c
0036ca0c  85 df 8d e2                                      add sp, sp, #0x214
0036ca10  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0036ca14  e2 9e 14 eb                                      bl #0x8945a4
0036ca18  00 30 90 e5                                      ldr r3, [r0]
0036ca1c  00 a0 a0 e1                                      mov sl, r0
0036ca20  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
0036ca24  10 70 93 e5                                      ldr r7, [r3, #0x10]
0036ca28  00 00 8f e0                                      add r0, pc, r0
0036ca2c  8c 05 08 eb                                      bl #0x56e064
0036ca30  08 20 a0 e1                                      mov r2, r8
0036ca34  00 10 a0 e1                                      mov r1, r0
0036ca38  00 80 8d e5                                      str r8, [sp]
0036ca3c  0a 00 a0 e1                                      mov r0, sl
0036ca40  08 30 a0 e1                                      mov r3, r8
0036ca44  37 ff 2f e1                                      blx r7
0036ca48  a0 ff ff ea                                      b #0x36c8d0
0036ca4c  2f 86 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036ca50  d0 82 62 00 ac 40 00 00 1c 4a 55 00 f4 37 00 00  .byte 0xd0, 0x82, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x1c, 0x4a, 0x55, 0x00, 0xf4, 0x37, 0x00, 0x00
0036ca60  00 06 00 00 74 46 55 00 30 4a 55 00 28 4a 55 00  .byte 0x00, 0x06, 0x00, 0x00, 0x74, 0x46, 0x55, 0x00, 0x30, 0x4a, 0x55, 0x00, 0x28, 0x4a, 0x55, 0x00
0036ca70  44 4a 55 00 84 4a 55 00 e8 4a 55 00 38 4b 55 00  .byte 0x44, 0x4a, 0x55, 0x00, 0x84, 0x4a, 0x55, 0x00, 0xe8, 0x4a, 0x55, 0x00, 0x38, 0x4b, 0x55, 0x00
0036ca80  94 4b 55 00 08 49 55 00                          .byte 0x94, 0x4b, 0x55, 0x00, 0x08, 0x49, 0x55, 0x00

; FUNCTION 0x0036ca88, declared_size=72, range_size=72, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager14CreateInstanceEv
; demangled: VoxSoundManager::CreateInstance()
; decoder-mode: arm
0036ca88  38 30 9f e5                                      ldr r3, [pc, #0x38]
0036ca8c  38 20 9f e5                                      ldr r2, [pc, #0x38]
0036ca90  70 40 2d e9                                      push {r4, r5, r6, lr}
0036ca94  03 30 8f e0                                      add r3, pc, r3
0036ca98  02 40 93 e7                                      ldr r4, [r3, r2]
0036ca9c  00 30 94 e5                                      ldr r3, [r4]
0036caa0  00 00 53 e3                                      cmp r3, #0
0036caa4  00 00 00 0a                                      beq #0x36caac
0036caa8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0036caac  04 10 a0 e3                                      mov r1, #4
0036cab0  c4 00 a0 e3                                      mov r0, #0xc4
0036cab4  ad 8e fe eb                                      bl #0x310570
0036cab8  00 50 a0 e1                                      mov r5, r0
0036cabc  3b ff ff eb                                      bl #0x36c7b0
0036cac0  00 50 84 e5                                      str r5, [r4]
0036cac4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0036cac8  fc 7f 62 00 a4 0d 00 00                          .byte 0xfc, 0x7f, 0x62, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x0036cad0, declared_size=728, range_size=728, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManagerC2Ev
; demangled: VoxSoundManager::VoxSoundManager()
; decoder-mode: arm
0036cad0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0036cad4  94 52 9f e5                                      ldr r5, [pc, #0x294]
0036cad8  94 62 9f e5                                      ldr r6, [pc, #0x294]
0036cadc  00 40 a0 e1                                      mov r4, r0
0036cae0  05 50 8f e0                                      add r5, pc, r5
0036cae4  06 30 95 e7                                      ldr r3, [r5, r6]
0036cae8  00 70 a0 e3                                      mov r7, #0
0036caec  38 20 80 e2                                      add r2, r0, #0x38
0036caf0  00 30 93 e5                                      ldr r3, [r3]
0036caf4  00 10 e0 e3                                      mvn r1, #0
0036caf8  01 80 a0 e3                                      mov r8, #1
0036cafc  2c 10 80 e5                                      str r1, [r0, #0x2c]
0036cb00  85 df 4d e2                                      sub sp, sp, #0x214
0036cb04  02 00 a0 e1                                      mov r0, r2
0036cb08  24 10 84 e5                                      str r1, [r4, #0x24]
0036cb0c  28 10 84 e5                                      str r1, [r4, #0x28]
0036cb10  48 20 84 e5                                      str r2, [r4, #0x48]
0036cb14  4c 20 84 e5                                      str r2, [r4, #0x4c]
0036cb18  00 70 84 e5                                      str r7, [r4]
0036cb1c  0c 70 84 e5                                      str r7, [r4, #0xc]
0036cb20  10 70 84 e5                                      str r7, [r4, #0x10]
0036cb24  14 70 84 e5                                      str r7, [r4, #0x14]
0036cb28  18 80 c4 e5                                      strb r8, [r4, #0x18]
0036cb2c  1c 70 84 e5                                      str r7, [r4, #0x1c]
0036cb30  20 70 c4 e5                                      strb r7, [r4, #0x20]
0036cb34  30 80 c4 e5                                      strb r8, [r4, #0x30]
0036cb38  31 80 c4 e5                                      strb r8, [r4, #0x31]
0036cb3c  32 70 c4 e5                                      strb r7, [r4, #0x32]
0036cb40  33 70 c4 e5                                      strb r7, [r4, #0x33]
0036cb44  10 10 a0 e3                                      mov r1, #0x10
0036cb48  0c 32 8d e5                                      str r3, [sp, #0x20c]
0036cb4c  ca 92 fe eb                                      bl #0x31167c
0036cb50  48 10 94 e5                                      ldr r1, [r4, #0x48]
0036cb54  04 20 a0 e1                                      mov r2, r4
0036cb58  fa 3f a0 e3                                      mov r3, #0x3e8
0036cb5c  00 70 c1 e5                                      strb r7, [r1]
0036cb60  10 02 9f e5                                      ldr r0, [pc, #0x210]
0036cb64  fe 15 a0 e3                                      mov r1, #0x3f800000
0036cb68  58 30 84 e5                                      str r3, [r4, #0x58]
0036cb6c  54 30 84 e5                                      str r3, [r4, #0x54]
0036cb70  5c 10 84 e5                                      str r1, [r4, #0x5c]
0036cb74  04 30 a0 e1                                      mov r3, r4
0036cb78  60 70 c4 e5                                      strb r7, [r4, #0x60]
0036cb7c  64 70 84 e5                                      str r7, [r4, #0x64]
0036cb80  68 70 84 e5                                      str r7, [r4, #0x68]
0036cb84  6c 70 84 e5                                      str r7, [r4, #0x6c]
0036cb88  70 70 84 e5                                      str r7, [r4, #0x70]
0036cb8c  74 70 84 e5                                      str r7, [r4, #0x74]
0036cb90  78 70 84 e5                                      str r7, [r4, #0x78]
0036cb94  7c 70 84 e5                                      str r7, [r4, #0x7c]
0036cb98  80 70 84 e5                                      str r7, [r4, #0x80]
0036cb9c  84 70 84 e5                                      str r7, [r4, #0x84]
0036cba0  88 70 84 e5                                      str r7, [r4, #0x88]
0036cba4  8c 70 84 e5                                      str r7, [r4, #0x8c]
0036cba8  90 70 84 e5                                      str r7, [r4, #0x90]
0036cbac  98 70 84 e5                                      str r7, [r4, #0x98]
0036cbb0  94 70 e2 e5                                      strb r7, [r2, #0x94]!
0036cbb4  a0 20 84 e5                                      str r2, [r4, #0xa0]
0036cbb8  9c 20 84 e5                                      str r2, [r4, #0x9c]
0036cbbc  a4 70 84 e5                                      str r7, [r4, #0xa4]
0036cbc0  b0 70 84 e5                                      str r7, [r4, #0xb0]
0036cbc4  ac 70 e3 e5                                      strb r7, [r3, #0xac]!
0036cbc8  b8 30 84 e5                                      str r3, [r4, #0xb8]
0036cbcc  b4 30 84 e5                                      str r3, [r4, #0xb4]
0036cbd0  bc 70 84 e5                                      str r7, [r4, #0xbc]
0036cbd4  00 00 8f e0                                      add r0, pc, r0
0036cbd8  4d dd fe eb                                      bl #0x324114
0036cbdc  98 31 9f e5                                      ldr r3, [pc, #0x198]
0036cbe0  03 30 95 e7                                      ldr r3, [r5, r3]
0036cbe4  a8 30 d3 e5                                      ldrb r3, [r3, #0xa8]
0036cbe8  07 00 53 e1                                      cmp r3, r7
0036cbec  50 00 00 1a                                      bne #0x36cd34
0036cbf0  88 31 9f e5                                      ldr r3, [pc, #0x188]
0036cbf4  0c 70 8d e2                                      add r7, sp, #0xc
0036cbf8  07 00 a0 e1                                      mov r0, r7
0036cbfc  03 30 95 e7                                      ldr r3, [r5, r3]
0036cc00  00 10 93 e5                                      ldr r1, [r3]
0036cc04  45 86 fe eb                                      bl #0x30e520
0036cc08  07 00 a0 e1                                      mov r0, r7
0036cc0c  90 84 fe eb                                      bl #0x30de54
0036cc10  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
0036cc14  0d 20 a0 e3                                      mov r2, #0xd
0036cc18  00 00 87 e0                                      add r0, r7, r0
0036cc1c  01 10 8f e0                                      add r1, pc, r1
0036cc20  10 87 fe eb                                      bl #0x30e868
0036cc24  07 00 a0 e1                                      mov r0, r7
0036cc28  89 84 fe eb                                      bl #0x30de54
0036cc2c  54 11 9f e5                                      ldr r1, [pc, #0x154]
0036cc30  0b 20 a0 e3                                      mov r2, #0xb
0036cc34  00 00 87 e0                                      add r0, r7, r0
0036cc38  01 10 8f e0                                      add r1, pc, r1
0036cc3c  09 87 fe eb                                      bl #0x30e868
0036cc40  07 10 a0 e1                                      mov r1, r7
0036cc44  64 00 84 e2                                      add r0, r4, #0x64
0036cc48  bd 81 14 eb                                      bl #0x88d344
0036cc4c  38 01 9f e5                                      ldr r0, [pc, #0x138]
0036cc50  00 00 8f e0                                      add r0, pc, r0
0036cc54  2e dd fe eb                                      bl #0x324114
0036cc58  68 20 94 e5                                      ldr r2, [r4, #0x68]
0036cc5c  64 30 94 e5                                      ldr r3, [r4, #0x64]
0036cc60  04 10 a0 e3                                      mov r1, #4
0036cc64  02 30 63 e0                                      rsb r3, r3, r2
0036cc68  43 31 a0 e1                                      asr r3, r3, #2
0036cc6c  13 21 a0 e1                                      lsl r2, r3, r1
0036cc70  02 20 63 e0                                      rsb r2, r3, r2
0036cc74  02 24 82 e0                                      add r2, r2, r2, lsl #8
0036cc78  02 28 82 e0                                      add r2, r2, r2, lsl #16
0036cc7c  02 32 83 e0                                      add r3, r3, r2, lsl #4
0036cc80  1c 30 84 e5                                      str r3, [r4, #0x1c]
0036cc84  03 01 a0 e1                                      lsl r0, r3, #2
0036cc88  37 8e fe eb                                      bl #0x31056c
0036cc8c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0036cc90  00 10 a0 e3                                      mov r1, #0
0036cc94  04 00 84 e5                                      str r0, [r4, #4]
0036cc98  02 21 a0 e1                                      lsl r2, r2, #2
0036cc9c  ef 85 fe eb                                      bl #0x30e460
0036cca0  e8 00 9f e5                                      ldr r0, [pc, #0xe8]
0036cca4  00 00 8f e0                                      add r0, pc, r0
0036cca8  19 dd fe eb                                      bl #0x324114
0036ccac  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
0036ccb0  04 10 a0 e3                                      mov r1, #4
0036ccb4  00 01 a0 e1                                      lsl r0, r0, #2
0036ccb8  2b 8e fe eb                                      bl #0x31056c
0036ccbc  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0036ccc0  00 10 a0 e3                                      mov r1, #0
0036ccc4  08 00 84 e5                                      str r0, [r4, #8]
0036ccc8  02 21 a0 e1                                      lsl r2, r2, #2
0036cccc  e3 85 fe eb                                      bl #0x30e460
0036ccd0  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
0036ccd4  00 00 8f e0                                      add r0, pc, r0
0036ccd8  0d dd fe eb                                      bl #0x324114
0036ccdc  b4 00 9f e5                                      ldr r0, [pc, #0xb4]
0036cce0  00 00 8f e0                                      add r0, pc, r0
0036cce4  0a dd fe eb                                      bl #0x324114
0036cce8  90 d7 13 eb                                      bl #0x862b30
0036ccec  00 00 84 e5                                      str r0, [r4]
0036ccf0  00 30 90 e5                                      ldr r3, [r0]
0036ccf4  0f e0 a0 e1                                      mov lr, pc
0036ccf8  08 f0 93 e5                                      ldr pc, [r3, #8]
0036ccfc  98 00 9f e5                                      ldr r0, [pc, #0x98]
0036cd00  00 00 8f e0                                      add r0, pc, r0
0036cd04  02 dd fe eb                                      bl #0x324114
0036cd08  90 00 9f e5                                      ldr r0, [pc, #0x90]
0036cd0c  00 00 8f e0                                      add r0, pc, r0
0036cd10  ff dc fe eb                                      bl #0x324114
0036cd14  06 30 95 e7                                      ldr r3, [r5, r6]
0036cd18  0c 22 9d e5                                      ldr r2, [sp, #0x20c]
0036cd1c  04 00 a0 e1                                      mov r0, r4
0036cd20  00 30 93 e5                                      ldr r3, [r3]
0036cd24  03 00 52 e1                                      cmp r2, r3
0036cd28  0f 00 00 1a                                      bne #0x36cd6c
0036cd2c  85 df 8d e2                                      add sp, sp, #0x214
0036cd30  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0036cd34  1a 9e 14 eb                                      bl #0x8945a4
0036cd38  00 30 90 e5                                      ldr r3, [r0]
0036cd3c  00 a0 a0 e1                                      mov sl, r0
0036cd40  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
0036cd44  10 70 93 e5                                      ldr r7, [r3, #0x10]
0036cd48  00 00 8f e0                                      add r0, pc, r0
0036cd4c  c4 04 08 eb                                      bl #0x56e064
0036cd50  08 20 a0 e1                                      mov r2, r8
0036cd54  00 10 a0 e1                                      mov r1, r0
0036cd58  00 80 8d e5                                      str r8, [sp]
0036cd5c  0a 00 a0 e1                                      mov r0, sl
0036cd60  08 30 a0 e1                                      mov r3, r8
0036cd64  37 ff 2f e1                                      blx r7
0036cd68  a0 ff ff ea                                      b #0x36cbf0
0036cd6c  67 85 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036cd70  b0 7f 62 00 ac 40 00 00 fc 46 55 00 f4 37 00 00  .byte 0xb0, 0x7f, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0xfc, 0x46, 0x55, 0x00, 0xf4, 0x37, 0x00, 0x00
0036cd80  00 06 00 00 54 43 55 00 10 47 55 00 08 47 55 00  .byte 0x00, 0x06, 0x00, 0x00, 0x54, 0x43, 0x55, 0x00, 0x10, 0x47, 0x55, 0x00, 0x08, 0x47, 0x55, 0x00
0036cd90  24 47 55 00 64 47 55 00 c8 47 55 00 18 48 55 00  .byte 0x24, 0x47, 0x55, 0x00, 0x64, 0x47, 0x55, 0x00, 0xc8, 0x47, 0x55, 0x00, 0x18, 0x48, 0x55, 0x00
0036cda0  74 48 55 00 e8 45 55 00                          .byte 0x74, 0x48, 0x55, 0x00, 0xe8, 0x45, 0x55, 0x00

; FUNCTION 0x0036cda8, declared_size=1104, range_size=1104, mode=arm
; class-group: VoxSoundManager
; alias: _ZN15VoxSoundManager11IPodControlEPKc
; demangled: VoxSoundManager::IPodControl(char const*)
; decoder-mode: arm
0036cda8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0036cdac  f4 43 9f e5                                      ldr r4, [pc, #0x3f4]
0036cdb0  f4 53 9f e5                                      ldr r5, [pc, #0x3f4]
0036cdb4  01 80 a0 e1                                      mov r8, r1
0036cdb8  04 40 8f e0                                      add r4, pc, r4
0036cdbc  05 30 94 e7                                      ldr r3, [r4, r5]
0036cdc0  e8 13 9f e5                                      ldr r1, [pc, #0x3e8]
0036cdc4  68 d0 4d e2                                      sub sp, sp, #0x68
0036cdc8  00 30 93 e5                                      ldr r3, [r3]
0036cdcc  00 60 a0 e1                                      mov r6, r0
0036cdd0  01 10 8f e0                                      add r1, pc, r1
0036cdd4  08 00 a0 e1                                      mov r0, r8
0036cdd8  64 30 8d e5                                      str r3, [sp, #0x64]
0036cddc  4e 85 fe eb                                      bl #0x30e31c
0036cde0  00 00 50 e3                                      cmp r0, #0
0036cde4  12 00 00 1a                                      bne #0x36ce34
0036cde8  33 30 d6 e5                                      ldrb r3, [r6, #0x33]
0036cdec  00 00 53 e3                                      cmp r3, #0
0036cdf0  6b 00 00 0a                                      beq #0x36cfa4
0036cdf4  50 30 96 e5                                      ldr r3, [r6, #0x50]
0036cdf8  00 00 53 e3                                      cmp r3, #0
0036cdfc  72 00 00 0a                                      beq #0x36cfcc
0036ce00  01 00 53 e3                                      cmp r3, #1
0036ce04  cd 00 00 0a                                      beq #0x36d140
0036ce08  da 1a 07 eb                                      bl #0x533978
0036ce0c  01 00 50 e3                                      cmp r0, #1
0036ce10  00 70 a0 e1                                      mov r7, r0
0036ce14  9e 00 00 0a                                      beq #0x36d094
0036ce18  05 30 94 e7                                      ldr r3, [r4, r5]
0036ce1c  64 20 9d e5                                      ldr r2, [sp, #0x64]
0036ce20  00 30 93 e5                                      ldr r3, [r3]
0036ce24  03 00 52 e1                                      cmp r2, r3
0036ce28  dd 00 00 1a                                      bne #0x36d1a4
0036ce2c  68 d0 8d e2                                      add sp, sp, #0x68
0036ce30  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0036ce34  78 13 9f e5                                      ldr r1, [pc, #0x378]
0036ce38  08 00 a0 e1                                      mov r0, r8
0036ce3c  01 10 8f e0                                      add r1, pc, r1
0036ce40  35 85 fe eb                                      bl #0x30e31c
0036ce44  00 70 50 e2                                      subs r7, r0, #0
0036ce48  61 00 00 0a                                      beq #0x36cfd4
0036ce4c  64 13 9f e5                                      ldr r1, [pc, #0x364]
0036ce50  08 00 a0 e1                                      mov r0, r8
0036ce54  01 10 8f e0                                      add r1, pc, r1
0036ce58  2f 85 fe eb                                      bl #0x30e31c
0036ce5c  00 00 50 e3                                      cmp r0, #0
0036ce60  89 00 00 0a                                      beq #0x36d08c
0036ce64  50 13 9f e5                                      ldr r1, [pc, #0x350]
0036ce68  08 00 a0 e1                                      mov r0, r8
0036ce6c  01 10 8f e0                                      add r1, pc, r1
0036ce70  29 85 fe eb                                      bl #0x30e31c
0036ce74  00 00 50 e3                                      cmp r0, #0
0036ce78  ad 00 00 0a                                      beq #0x36d134
0036ce7c  3c 13 9f e5                                      ldr r1, [pc, #0x33c]
0036ce80  08 00 a0 e1                                      mov r0, r8
0036ce84  01 10 8f e0                                      add r1, pc, r1
0036ce88  23 85 fe eb                                      bl #0x30e31c
0036ce8c  00 00 50 e3                                      cmp r0, #0
0036ce90  7a 00 00 0a                                      beq #0x36d080
0036ce94  28 13 9f e5                                      ldr r1, [pc, #0x328]
0036ce98  08 00 a0 e1                                      mov r0, r8
0036ce9c  01 10 8f e0                                      add r1, pc, r1
0036cea0  1d 85 fe eb                                      bl #0x30e31c
0036cea4  00 80 50 e2                                      subs r8, r0, #0
0036cea8  da ff ff 1a                                      bne #0x36ce18
0036ceac  f6 fe 02 eb                                      bl #0x42ca8c
0036ceb0  35 ff 02 eb                                      bl #0x42cb8c
0036ceb4  0c 33 9f e5                                      ldr r3, [pc, #0x30c]
0036ceb8  0c 13 9f e5                                      ldr r1, [pc, #0x30c]
0036cebc  00 70 a0 e1                                      mov r7, r0
0036cec0  03 00 94 e7                                      ldr r0, [r4, r3]
0036cec4  01 10 8f e0                                      add r1, pc, r1
0036cec8  dd cf fe eb                                      bl #0x320e44
0036cecc  fc 12 9f e5                                      ldr r1, [pc, #0x2fc]
0036ced0  50 a0 8d e2                                      add sl, sp, #0x50
0036ced4  00 20 a0 e1                                      mov r2, r0
0036ced8  01 10 8f e0                                      add r1, pc, r1
0036cedc  0a 00 a0 e1                                      mov r0, sl
0036cee0  ff 86 fe eb                                      bl #0x30eae4
0036cee4  0a 10 a0 e1                                      mov r1, sl
0036cee8  07 00 a0 e1                                      mov r0, r7
0036ceec  9b f0 10 eb                                      bl #0x7a9160
0036cef0  00 90 a0 e1                                      mov sb, r0
0036cef4  9f 1a 07 eb                                      bl #0x533978
0036cef8  01 00 50 e3                                      cmp r0, #1
0036cefc  00 c0 a0 e1                                      mov ip, r0
0036cf00  92 00 00 0a                                      beq #0x36d150
0036cf04  ff 35 a0 e3                                      mov r3, #0x3fc00000
0036cf08  00 20 a0 e3                                      mov r2, #0
0036cf0c  03 36 83 e2                                      add r3, r3, #0x300000
0036cf10  02 c0 a0 e3                                      mov ip, #2
0036cf14  f8 24 cd e1                                      strd r2, r3, [sp, #0x48]
0036cf18  25 c0 cd e5                                      strb ip, [sp, #0x25]
0036cf1c  00 c0 a0 e3                                      mov ip, #0
0036cf20  28 c0 8d e5                                      str ip, [sp, #0x28]
0036cf24  a8 22 9f e5                                      ldr r2, [pc, #0x2a8]
0036cf28  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0036cf2c  24 a0 8d e2                                      add sl, sp, #0x24
0036cf30  02 20 8f e0                                      add r2, pc, r2
0036cf34  08 c0 8a e5                                      str ip, [sl, #8]
0036cf38  07 00 a0 e1                                      mov r0, r7
0036cf3c  01 c0 a0 e3                                      mov ip, #1
0036cf40  09 10 a0 e1                                      mov r1, sb
0036cf44  0a 30 a0 e1                                      mov r3, sl
0036cf48  24 80 cd e5                                      strb r8, [sp, #0x24]
0036cf4c  00 c0 8d e5                                      str ip, [sp]
0036cf50  ad fb 10 eb                                      bl #0x7abe0c
0036cf54  0a 00 a0 e1                                      mov r0, sl
0036cf58  71 a8 10 eb                                      bl #0x797124
0036cf5c  4c 10 96 e5                                      ldr r1, [r6, #0x4c]
0036cf60  0c 60 8d e2                                      add r6, sp, #0xc
0036cf64  00 30 a0 e3                                      mov r3, #0
0036cf68  06 00 a0 e1                                      mov r0, r6
0036cf6c  0d 30 cd e5                                      strb r3, [sp, #0xd]
0036cf70  0c 30 cd e5                                      strb r3, [sp, #0xc]
0036cf74  f5 a8 10 eb                                      bl #0x797350
0036cf78  58 22 9f e5                                      ldr r2, [pc, #0x258]
0036cf7c  01 c0 a0 e3                                      mov ip, #1
0036cf80  07 00 a0 e1                                      mov r0, r7
0036cf84  09 10 a0 e1                                      mov r1, sb
0036cf88  02 20 8f e0                                      add r2, pc, r2
0036cf8c  06 30 a0 e1                                      mov r3, r6
0036cf90  00 c0 8d e5                                      str ip, [sp]
0036cf94  9c fb 10 eb                                      bl #0x7abe0c
0036cf98  06 00 a0 e1                                      mov r0, r6
0036cf9c  60 a8 10 eb                                      bl #0x797124
0036cfa0  9c ff ff ea                                      b #0x36ce18
0036cfa4  99 1a 07 eb                                      bl #0x533a10
0036cfa8  00 00 50 e3                                      cmp r0, #0
0036cfac  00 00 e0 d3                                      mvnle r0, #0
0036cfb0  00 00 a0 c3                                      movgt r0, #0
0036cfb4  25 1a 07 eb                                      bl #0x533850
0036cfb8  01 30 a0 e3                                      mov r3, #1
0036cfbc  33 30 c6 e5                                      strb r3, [r6, #0x33]
0036cfc0  50 30 96 e5                                      ldr r3, [r6, #0x50]
0036cfc4  00 00 53 e3                                      cmp r3, #0
0036cfc8  8c ff ff 1a                                      bne #0x36ce00
0036cfcc  7d 1a 07 eb                                      bl #0x5339c8
0036cfd0  8c ff ff ea                                      b #0x36ce08
0036cfd4  01 80 a0 e3                                      mov r8, #1
0036cfd8  68 1a 07 eb                                      bl #0x533980
0036cfdc  50 80 86 e5                                      str r8, [r6, #0x50]
0036cfe0  34 70 86 e5                                      str r7, [r6, #0x34]
0036cfe4  a8 fe 02 eb                                      bl #0x42ca8c
0036cfe8  e7 fe 02 eb                                      bl #0x42cb8c
0036cfec  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
0036cff0  e4 11 9f e5                                      ldr r1, [pc, #0x1e4]
0036cff4  00 a0 a0 e1                                      mov sl, r0
0036cff8  03 00 94 e7                                      ldr r0, [r4, r3]
0036cffc  01 10 8f e0                                      add r1, pc, r1
0036d000  8f cf fe eb                                      bl #0x320e44
0036d004  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
0036d008  50 60 8d e2                                      add r6, sp, #0x50
0036d00c  00 20 a0 e1                                      mov r2, r0
0036d010  01 10 8f e0                                      add r1, pc, r1
0036d014  06 00 a0 e1                                      mov r0, r6
0036d018  b1 86 fe eb                                      bl #0x30eae4
0036d01c  06 10 a0 e1                                      mov r1, r6
0036d020  0a 00 a0 e1                                      mov r0, sl
0036d024  4d f0 10 eb                                      bl #0x7a9160
0036d028  ff 35 a0 e3                                      mov r3, #0x3fc00000
0036d02c  00 20 a0 e3                                      mov r2, #0
0036d030  03 36 83 e2                                      add r3, r3, #0x300000
0036d034  02 c0 a0 e3                                      mov ip, #2
0036d038  f8 24 cd e1                                      strd r2, r3, [sp, #0x48]
0036d03c  31 c0 cd e5                                      strb ip, [sp, #0x31]
0036d040  00 c0 a0 e3                                      mov ip, #0
0036d044  34 c0 8d e5                                      str ip, [sp, #0x34]
0036d048  94 21 9f e5                                      ldr r2, [pc, #0x194]
0036d04c  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0036d050  30 60 8d e2                                      add r6, sp, #0x30
0036d054  00 10 a0 e1                                      mov r1, r0
0036d058  08 c0 86 e5                                      str ip, [r6, #8]
0036d05c  0a 00 a0 e1                                      mov r0, sl
0036d060  02 20 8f e0                                      add r2, pc, r2
0036d064  06 30 a0 e1                                      mov r3, r6
0036d068  30 70 cd e5                                      strb r7, [sp, #0x30]
0036d06c  00 80 8d e5                                      str r8, [sp]
0036d070  65 fb 10 eb                                      bl #0x7abe0c
0036d074  06 00 a0 e1                                      mov r0, r6
0036d078  29 a8 10 eb                                      bl #0x797124
0036d07c  65 ff ff ea                                      b #0x36ce18
0036d080  00 00 e0 e3                                      mvn r0, #0
0036d084  04 1a 07 eb                                      bl #0x53389c
0036d088  62 ff ff ea                                      b #0x36ce18
0036d08c  27 1a 07 eb                                      bl #0x533930
0036d090  60 ff ff ea                                      b #0x36ce18
0036d094  7c fe 02 eb                                      bl #0x42ca8c
0036d098  bb fe 02 eb                                      bl #0x42cb8c
0036d09c  24 31 9f e5                                      ldr r3, [pc, #0x124]
0036d0a0  40 11 9f e5                                      ldr r1, [pc, #0x140]
0036d0a4  00 a0 a0 e1                                      mov sl, r0
0036d0a8  03 00 94 e7                                      ldr r0, [r4, r3]
0036d0ac  01 10 8f e0                                      add r1, pc, r1
0036d0b0  63 cf fe eb                                      bl #0x320e44
0036d0b4  30 11 9f e5                                      ldr r1, [pc, #0x130]
0036d0b8  50 80 8d e2                                      add r8, sp, #0x50
0036d0bc  00 20 a0 e1                                      mov r2, r0
0036d0c0  01 10 8f e0                                      add r1, pc, r1
0036d0c4  08 00 a0 e1                                      mov r0, r8
0036d0c8  85 86 fe eb                                      bl #0x30eae4
0036d0cc  08 10 a0 e1                                      mov r1, r8
0036d0d0  0a 00 a0 e1                                      mov r0, sl
0036d0d4  21 f0 10 eb                                      bl #0x7a9160
0036d0d8  00 c0 a0 e3                                      mov ip, #0
0036d0dc  3c c0 cd e5                                      strb ip, [sp, #0x3c]
0036d0e0  00 20 a0 e3                                      mov r2, #0
0036d0e4  00 30 a0 e3                                      mov r3, #0
0036d0e8  02 c0 a0 e3                                      mov ip, #2
0036d0ec  f8 24 cd e1                                      strd r2, r3, [sp, #0x48]
0036d0f0  3d c0 cd e5                                      strb ip, [sp, #0x3d]
0036d0f4  00 c0 a0 e3                                      mov ip, #0
0036d0f8  40 c0 8d e5                                      str ip, [sp, #0x40]
0036d0fc  ec 20 9f e5                                      ldr r2, [pc, #0xec]
0036d100  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
0036d104  3c 80 8d e2                                      add r8, sp, #0x3c
0036d108  00 10 a0 e1                                      mov r1, r0
0036d10c  08 c0 88 e5                                      str ip, [r8, #8]
0036d110  0a 00 a0 e1                                      mov r0, sl
0036d114  02 20 8f e0                                      add r2, pc, r2
0036d118  08 30 a0 e1                                      mov r3, r8
0036d11c  00 70 8d e5                                      str r7, [sp]
0036d120  39 fb 10 eb                                      bl #0x7abe0c
0036d124  34 70 86 e5                                      str r7, [r6, #0x34]
0036d128  08 00 a0 e1                                      mov r0, r8
0036d12c  fc a7 10 eb                                      bl #0x797124
0036d130  38 ff ff ea                                      b #0x36ce18
0036d134  01 00 a0 e3                                      mov r0, #1
0036d138  d7 19 07 eb                                      bl #0x53389c
0036d13c  35 ff ff ea                                      b #0x36ce18
0036d140  00 30 a0 e3                                      mov r3, #0
0036d144  50 30 86 e5                                      str r3, [r6, #0x50]
0036d148  e6 19 07 eb                                      bl #0x5338e8
0036d14c  2d ff ff ea                                      b #0x36ce08
0036d150  00 20 a0 e3                                      mov r2, #0
0036d154  00 30 a0 e3                                      mov r3, #0
0036d158  02 e0 a0 e3                                      mov lr, #2
0036d15c  f8 24 cd e1                                      strd r2, r3, [sp, #0x48]
0036d160  19 e0 cd e5                                      strb lr, [sp, #0x19]
0036d164  00 e0 a0 e3                                      mov lr, #0
0036d168  1c e0 8d e5                                      str lr, [sp, #0x1c]
0036d16c  80 20 9f e5                                      ldr r2, [pc, #0x80]
0036d170  4c e0 9d e5                                      ldr lr, [sp, #0x4c]
0036d174  18 a0 8d e2                                      add sl, sp, #0x18
0036d178  02 20 8f e0                                      add r2, pc, r2
0036d17c  08 e0 8a e5                                      str lr, [sl, #8]
0036d180  07 00 a0 e1                                      mov r0, r7
0036d184  09 10 a0 e1                                      mov r1, sb
0036d188  0a 30 a0 e1                                      mov r3, sl
0036d18c  18 80 cd e5                                      strb r8, [sp, #0x18]
0036d190  00 c0 8d e5                                      str ip, [sp]
0036d194  1c fb 10 eb                                      bl #0x7abe0c
0036d198  0a 00 a0 e1                                      mov r0, sl
0036d19c  e0 a7 10 eb                                      bl #0x797124
0036d1a0  6d ff ff ea                                      b #0x36cf5c
0036d1a4  59 84 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0036d1a8  d8 7c 62 00 ac 40 00 00 20 48 55 00 e4 47 55 00  .byte 0xd8, 0x7c, 0x62, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x48, 0x55, 0x00, 0xe4, 0x47, 0x55, 0x00
0036d1b8  d4 47 55 00 c4 47 55 00 b4 47 55 00 ac 47 55 00  .byte 0xd4, 0x47, 0x55, 0x00, 0xc4, 0x47, 0x55, 0x00, 0xb4, 0x47, 0x55, 0x00, 0xac, 0x47, 0x55, 0x00
0036d1c8  f4 37 00 00 34 47 55 00 78 41 55 00 d8 46 55 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x34, 0x47, 0x55, 0x00, 0x78, 0x41, 0x55, 0x00, 0xd8, 0x46, 0x55, 0x00
0036d1d8  30 41 55 00 fc 45 55 00 40 40 55 00 a8 45 55 00  .byte 0x30, 0x41, 0x55, 0x00, 0xfc, 0x45, 0x55, 0x00, 0x40, 0x40, 0x55, 0x00, 0xa8, 0x45, 0x55, 0x00
0036d1e8  4c 45 55 00 90 3f 55 00 f4 44 55 00 90 44 55 00  .byte 0x4c, 0x45, 0x55, 0x00, 0x90, 0x3f, 0x55, 0x00, 0xf4, 0x44, 0x55, 0x00, 0x90, 0x44, 0x55, 0x00
