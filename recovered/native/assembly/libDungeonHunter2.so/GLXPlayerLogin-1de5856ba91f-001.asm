; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00833374, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin9getAPNSIPEv
; demangled: GLXPlayerLogin::getAPNSIP()
; decoder-mode: arm
00833374  48 00 90 e5                                      ldr r0, [r0, #0x48]
00833378  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083337c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin11getAPNSPortEv
; demangled: GLXPlayerLogin::getAPNSPort()
; decoder-mode: arm
0083337c  4c 00 90 e5                                      ldr r0, [r0, #0x4c]
00833380  1e ff 2f e1                                      bx lr

; FUNCTION 0x00833384, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin17getAPNSFeedBackIPEv
; demangled: GLXPlayerLogin::getAPNSFeedBackIP()
; decoder-mode: arm
00833384  50 00 90 e5                                      ldr r0, [r0, #0x50]
00833388  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083338c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin19getAPNSFeedBackPortEv
; demangled: GLXPlayerLogin::getAPNSFeedBackPort()
; decoder-mode: arm
0083338c  54 00 90 e5                                      ldr r0, [r0, #0x54]
00833390  1e ff 2f e1                                      bx lr

; FUNCTION 0x00833394, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin20getAPNSPublicPemPathEv
; demangled: GLXPlayerLogin::getAPNSPublicPemPath()
; decoder-mode: arm
00833394  58 00 90 e5                                      ldr r0, [r0, #0x58]
00833398  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083339c, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin24getAPNSPrivateKeyPemPathEv
; demangled: GLXPlayerLogin::getAPNSPrivateKeyPemPath()
; decoder-mode: arm
0083339c  5c 00 90 e5                                      ldr r0, [r0, #0x5c]
008333a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008333a4, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin25getAPNSPrivateKeyPasswordEv
; demangled: GLXPlayerLogin::getAPNSPrivateKeyPassword()
; decoder-mode: arm
008333a4  60 00 90 e5                                      ldr r0, [r0, #0x60]
008333a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008333ac, declared_size=8, range_size=8, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin19getProductListCountEv
; demangled: GLXPlayerLogin::getProductListCount()
; decoder-mode: arm
008333ac  64 00 90 e5                                      ldr r0, [r0, #0x64]
008333b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x008333b4, declared_size=36, range_size=36, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin13getProductGGIEi
; demangled: GLXPlayerLogin::getProductGGI(int)
; decoder-mode: arm
008333b4  68 30 90 e5                                      ldr r3, [r0, #0x68]
008333b8  01 20 e0 e1                                      mvn r2, r1
008333bc  a2 2f a0 e1                                      lsr r2, r2, #0x1f
008333c0  00 00 53 e3                                      cmp r3, #0
008333c4  00 20 a0 03                                      moveq r2, #0
008333c8  00 00 52 e3                                      cmp r2, #0
008333cc  00 00 e0 03                                      mvneq r0, #0
008333d0  01 01 93 17                                      ldrne r0, [r3, r1, lsl #2]
008333d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008333d8, declared_size=36, range_size=36, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin12getProductIDEi
; demangled: GLXPlayerLogin::getProductID(int)
; decoder-mode: arm
008333d8  6c 30 90 e5                                      ldr r3, [r0, #0x6c]
008333dc  01 20 e0 e1                                      mvn r2, r1
008333e0  a2 2f a0 e1                                      lsr r2, r2, #0x1f
008333e4  00 00 53 e3                                      cmp r3, #0
008333e8  00 20 a0 03                                      moveq r2, #0
008333ec  00 00 52 e3                                      cmp r2, #0
008333f0  00 00 e0 03                                      mvneq r0, #0
008333f4  01 01 93 17                                      ldrne r0, [r3, r1, lsl #2]
008333f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008333fc, declared_size=32, range_size=32, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin14getProductNameEi
; demangled: GLXPlayerLogin::getProductName(int)
; decoder-mode: arm
008333fc  70 30 90 e5                                      ldr r3, [r0, #0x70]
00833400  01 00 e0 e1                                      mvn r0, r1
00833404  a0 0f a0 e1                                      lsr r0, r0, #0x1f
00833408  00 00 53 e3                                      cmp r3, #0
0083340c  00 00 a0 03                                      moveq r0, #0
00833410  00 00 50 e3                                      cmp r0, #0
00833414  01 01 93 17                                      ldrne r0, [r3, r1, lsl #2]
00833418  1e ff 2f e1                                      bx lr

; FUNCTION 0x0083341c, declared_size=64, range_size=64, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin19ShouldSendKeepAliveEv
; demangled: GLXPlayerLogin::ShouldSendKeepAlive()
; decoder-mode: arm
0083341c  10 40 2d e9                                      push {r4, lr}
00833420  40 30 d0 e5                                      ldrb r3, [r0, #0x40]
00833424  00 40 a0 e1                                      mov r4, r0
00833428  00 00 53 e3                                      cmp r3, #0
0083342c  01 00 00 1a                                      bne #0x833438
00833430  03 00 a0 e1                                      mov r0, r3
00833434  10 80 bd e8                                      pop {r4, pc}
00833438  3e df ff eb                                      bl #0x82b138
0083343c  44 20 94 e5                                      ldr r2, [r4, #0x44]
00833440  57 3b a0 e3                                      mov r3, #0x15c00
00833444  39 3e 83 e2                                      add r3, r3, #0x390
00833448  00 00 62 e0                                      rsb r0, r2, r0
0083344c  03 00 50 e1                                      cmp r0, r3
00833450  00 00 a0 d3                                      movle r0, #0
00833454  01 00 a0 c3                                      movgt r0, #1
00833458  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0083345c, declared_size=204, range_size=204, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin32SendGameInvitationGetLobbyServerEPc
; demangled: GLXPlayerLogin::SendGameInvitationGetLobbyServer(char*)
; decoder-mode: arm
0083345c  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00833460  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00833464  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
00833468  03 30 8f e0                                      add r3, pc, r3
0083346c  01 da 4d e2                                      sub sp, sp, #0x1000
00833470  02 60 93 e7                                      ldr r6, [r3, r2]
00833474  14 d0 4d e2                                      sub sp, sp, #0x14
00833478  01 2a a0 e3                                      mov r2, #0x1000
0083347c  00 c0 96 e5                                      ldr ip, [r6]
00833480  10 40 8d e2                                      add r4, sp, #0x10
00833484  02 e0 8d e0                                      add lr, sp, r2
00833488  04 40 44 e2                                      sub r4, r4, #4
0083348c  00 50 a0 e1                                      mov r5, r0
00833490  0c c0 8e e5                                      str ip, [lr, #0xc]
00833494  01 70 a0 e1                                      mov r7, r1
00833498  04 00 a0 e1                                      mov r0, r4
0083349c  00 10 a0 e3                                      mov r1, #0
008334a0  ee 6b eb eb                                      bl #0x30e460
008334a4  74 10 9f e5                                      ldr r1, [pc, #0x74]
008334a8  0c c0 95 e5                                      ldr ip, [r5, #0xc]
008334ac  08 30 95 e5                                      ldr r3, [r5, #8]
008334b0  6c 20 a0 e3                                      mov r2, #0x6c
008334b4  01 10 8f e0                                      add r1, pc, r1
008334b8  04 00 a0 e1                                      mov r0, r4
008334bc  00 c0 8d e5                                      str ip, [sp]
008334c0  04 70 8d e5                                      str r7, [sp, #4]
008334c4  86 6d eb eb                                      bl #0x30eae4
008334c8  1a df ff eb                                      bl #0x82b138
008334cc  44 00 85 e5                                      str r0, [r5, #0x44]
008334d0  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
008334d4  04 10 a0 e1                                      mov r1, r4
008334d8  00 00 8f e0                                      add r0, pc, r0
008334dc  a8 e0 ff eb                                      bl #0x82b784
008334e0  00 30 95 e5                                      ldr r3, [r5]
008334e4  05 00 a0 e1                                      mov r0, r5
008334e8  04 10 a0 e1                                      mov r1, r4
008334ec  0f e0 a0 e1                                      mov lr, pc
008334f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008334f4  01 3a 8d e2                                      add r3, sp, #0x1000
008334f8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008334fc  00 30 96 e5                                      ldr r3, [r6]
00833500  03 00 52 e1                                      cmp r2, r3
00833504  02 00 00 1a                                      bne #0x833514
00833508  14 d0 8d e2                                      add sp, sp, #0x14
0083350c  01 da 8d e2                                      add sp, sp, #0x1000
00833510  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00833514  7d 6b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00833518  28 16 16 00 ac 40 00 00 2c 9d 0d 00 20 9d 0d 00  .byte 0x28, 0x16, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x2c, 0x9d, 0x0d, 0x00, 0x20, 0x9d, 0x0d, 0x00

; FUNCTION 0x00833528, declared_size=196, range_size=196, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin18SendGetLobbyServerEv
; demangled: GLXPlayerLogin::SendGetLobbyServer()
; decoder-mode: arm
00833528  ac 30 9f e5                                      ldr r3, [pc, #0xac]
0083352c  70 40 2d e9                                      push {r4, r5, r6, lr}
00833530  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00833534  03 30 8f e0                                      add r3, pc, r3
00833538  01 da 4d e2                                      sub sp, sp, #0x1000
0083353c  02 60 93 e7                                      ldr r6, [r3, r2]
00833540  10 d0 4d e2                                      sub sp, sp, #0x10
00833544  01 2a a0 e3                                      mov r2, #0x1000
00833548  00 c0 96 e5                                      ldr ip, [r6]
0083354c  10 40 8d e2                                      add r4, sp, #0x10
00833550  02 e0 8d e0                                      add lr, sp, r2
00833554  04 40 44 e2                                      sub r4, r4, #4
00833558  00 50 a0 e1                                      mov r5, r0
0083355c  0c c0 8e e5                                      str ip, [lr, #0xc]
00833560  00 10 a0 e3                                      mov r1, #0
00833564  04 00 a0 e1                                      mov r0, r4
00833568  bc 6b eb eb                                      bl #0x30e460
0083356c  70 10 9f e5                                      ldr r1, [pc, #0x70]
00833570  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00833574  08 30 95 e5                                      ldr r3, [r5, #8]
00833578  6b 20 a0 e3                                      mov r2, #0x6b
0083357c  01 10 8f e0                                      add r1, pc, r1
00833580  04 00 a0 e1                                      mov r0, r4
00833584  00 c0 8d e5                                      str ip, [sp]
00833588  55 6d eb eb                                      bl #0x30eae4
0083358c  e9 de ff eb                                      bl #0x82b138
00833590  44 00 85 e5                                      str r0, [r5, #0x44]
00833594  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00833598  04 10 a0 e1                                      mov r1, r4
0083359c  00 00 8f e0                                      add r0, pc, r0
008335a0  77 e0 ff eb                                      bl #0x82b784
008335a4  00 30 95 e5                                      ldr r3, [r5]
008335a8  05 00 a0 e1                                      mov r0, r5
008335ac  04 10 a0 e1                                      mov r1, r4
008335b0  0f e0 a0 e1                                      mov lr, pc
008335b4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008335b8  01 3a 8d e2                                      add r3, sp, #0x1000
008335bc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008335c0  00 30 96 e5                                      ldr r3, [r6]
008335c4  03 00 52 e1                                      cmp r2, r3
008335c8  02 00 00 1a                                      bne #0x8335d8
008335cc  10 d0 8d e2                                      add sp, sp, #0x10
008335d0  01 da 8d e2                                      add sp, sp, #0x1000
008335d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
008335d8  4c 6b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008335dc  5c 15 16 00 ac 40 00 00 f4 8e 0d 00 94 9c 0d 00  .byte 0x5c, 0x15, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x8e, 0x0d, 0x00, 0x94, 0x9c, 0x0d, 0x00

; FUNCTION 0x008335ec, declared_size=288, range_size=288, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin32SendGetLobbyServerWithGameCenterEPcS0_S0_
; demangled: GLXPlayerLogin::SendGetLobbyServerWithGameCenter(char*, char*, char*)
; decoder-mode: arm
008335ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
008335f0  fc 50 9f e5                                      ldr r5, [pc, #0xfc]
008335f4  fc 70 9f e5                                      ldr r7, [pc, #0xfc]
008335f8  01 da 4d e2                                      sub sp, sp, #0x1000
008335fc  05 50 8f e0                                      add r5, pc, r5
00833600  07 c0 95 e7                                      ldr ip, [r5, r7]
00833604  10 d0 4d e2                                      sub sp, sp, #0x10
00833608  10 40 8d e2                                      add r4, sp, #0x10
0083360c  00 c0 9c e5                                      ldr ip, [ip]
00833610  02 80 a0 e1                                      mov r8, r2
00833614  01 2a a0 e3                                      mov r2, #0x1000
00833618  02 e0 8d e0                                      add lr, sp, r2
0083361c  04 40 44 e2                                      sub r4, r4, #4
00833620  00 60 a0 e1                                      mov r6, r0
00833624  01 90 a0 e1                                      mov sb, r1
00833628  0c c0 8e e5                                      str ip, [lr, #0xc]
0083362c  00 10 a0 e3                                      mov r1, #0
00833630  04 00 a0 e1                                      mov r0, r4
00833634  03 a0 a0 e1                                      mov sl, r3
00833638  88 6b eb eb                                      bl #0x30e460
0083363c  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
00833640  08 30 96 e5                                      ldr r3, [r6, #8]
00833644  04 00 a0 e1                                      mov r0, r4
00833648  01 10 8f e0                                      add r1, pc, r1
0083364c  6b 20 a0 e3                                      mov r2, #0x6b
00833650  00 90 8d e5                                      str sb, [sp]
00833654  22 6d eb eb                                      bl #0x30eae4
00833658  00 00 5a e3                                      cmp sl, #0
0083365c  06 00 00 0a                                      beq #0x83367c
00833660  04 00 a0 e1                                      mov r0, r4
00833664  50 de ff eb                                      bl #0x82afac
00833668  90 10 9f e5                                      ldr r1, [pc, #0x90]
0083366c  00 00 84 e0                                      add r0, r4, r0
00833670  0a 20 a0 e1                                      mov r2, sl
00833674  01 10 8f e0                                      add r1, pc, r1
00833678  19 6d eb eb                                      bl #0x30eae4
0083367c  00 00 58 e3                                      cmp r8, #0
00833680  06 00 00 0a                                      beq #0x8336a0
00833684  04 00 a0 e1                                      mov r0, r4
00833688  47 de ff eb                                      bl #0x82afac
0083368c  70 10 9f e5                                      ldr r1, [pc, #0x70]
00833690  00 00 84 e0                                      add r0, r4, r0
00833694  08 20 a0 e1                                      mov r2, r8
00833698  01 10 8f e0                                      add r1, pc, r1
0083369c  10 6d eb eb                                      bl #0x30eae4
008336a0  a4 de ff eb                                      bl #0x82b138
008336a4  44 00 86 e5                                      str r0, [r6, #0x44]
008336a8  58 00 9f e5                                      ldr r0, [pc, #0x58]
008336ac  04 10 a0 e1                                      mov r1, r4
008336b0  00 00 8f e0                                      add r0, pc, r0
008336b4  32 e0 ff eb                                      bl #0x82b784
008336b8  04 10 a0 e1                                      mov r1, r4
008336bc  00 30 96 e5                                      ldr r3, [r6]
008336c0  06 00 a0 e1                                      mov r0, r6
008336c4  0f e0 a0 e1                                      mov lr, pc
008336c8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008336cc  07 30 95 e7                                      ldr r3, [r5, r7]
008336d0  01 1a 8d e2                                      add r1, sp, #0x1000
008336d4  0c 20 91 e5                                      ldr r2, [r1, #0xc]
008336d8  00 30 93 e5                                      ldr r3, [r3]
008336dc  03 00 52 e1                                      cmp r2, r3
008336e0  02 00 00 1a                                      bne #0x8336f0
008336e4  10 d0 8d e2                                      add sp, sp, #0x10
008336e8  01 da 8d e2                                      add sp, sp, #0x1000
008336ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008336f0  06 6b eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008336f4  94 14 16 00 ac 40 00 00 28 8e 0d 00 e4 9b 0d 00  .byte 0x94, 0x14, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x28, 0x8e, 0x0d, 0x00, 0xe4, 0x9b, 0x0d, 0x00
00833704  c8 9b 0d 00 80 9b 0d 00                          .byte 0xc8, 0x9b, 0x0d, 0x00, 0x80, 0x9b, 0x0d, 0x00

; FUNCTION 0x0083370c, declared_size=264, range_size=264, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin18SendGetProductInfoEPc
; demangled: GLXPlayerLogin::SendGetProductInfo(char*)
; decoder-mode: arm
0083370c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00833710  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
00833714  e8 70 9f e5                                      ldr r7, [pc, #0xe8]
00833718  01 da 4d e2                                      sub sp, sp, #0x1000
0083371c  04 40 8f e0                                      add r4, pc, r4
00833720  07 30 94 e7                                      ldr r3, [r4, r7]
00833724  10 d0 4d e2                                      sub sp, sp, #0x10
00833728  01 2a a0 e3                                      mov r2, #0x1000
0083372c  00 30 93 e5                                      ldr r3, [r3]
00833730  10 50 8d e2                                      add r5, sp, #0x10
00833734  02 c0 8d e0                                      add ip, sp, r2
00833738  04 50 45 e2                                      sub r5, r5, #4
0083373c  01 80 a0 e1                                      mov r8, r1
00833740  00 60 a0 e1                                      mov r6, r0
00833744  00 10 a0 e3                                      mov r1, #0
00833748  05 00 a0 e1                                      mov r0, r5
0083374c  0c 30 8c e5                                      str r3, [ip, #0xc]
00833750  03 df ff eb                                      bl #0x82b364
00833754  00 00 58 e3                                      cmp r8, #0
00833758  1a 00 00 0a                                      beq #0x8337c8
0083375c  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
00833760  0c c0 96 e5                                      ldr ip, [r6, #0xc]
00833764  08 30 96 e5                                      ldr r3, [r6, #8]
00833768  01 10 8f e0                                      add r1, pc, r1
0083376c  05 00 a0 e1                                      mov r0, r5
00833770  5f 20 a0 e3                                      mov r2, #0x5f
00833774  00 c0 8d e5                                      str ip, [sp]
00833778  04 80 8d e5                                      str r8, [sp, #4]
0083377c  d8 6c eb eb                                      bl #0x30eae4
00833780  84 00 9f e5                                      ldr r0, [pc, #0x84]
00833784  05 10 a0 e1                                      mov r1, r5
00833788  00 00 8f e0                                      add r0, pc, r0
0083378c  fc df ff eb                                      bl #0x82b784
00833790  05 10 a0 e1                                      mov r1, r5
00833794  00 30 96 e5                                      ldr r3, [r6]
00833798  06 00 a0 e1                                      mov r0, r6
0083379c  0f e0 a0 e1                                      mov lr, pc
008337a0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008337a4  07 30 94 e7                                      ldr r3, [r4, r7]
008337a8  01 1a 8d e2                                      add r1, sp, #0x1000
008337ac  0c 20 91 e5                                      ldr r2, [r1, #0xc]
008337b0  00 30 93 e5                                      ldr r3, [r3]
008337b4  03 00 52 e1                                      cmp r2, r3
008337b8  0f 00 00 1a                                      bne #0x8337fc
008337bc  10 d0 8d e2                                      add sp, sp, #0x10
008337c0  01 da 8d e2                                      add sp, sp, #0x1000
008337c4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
008337c8  08 00 a0 e1                                      mov r0, r8
008337cc  f6 dd ff eb                                      bl #0x82afac
008337d0  00 00 50 e3                                      cmp r0, #0
008337d4  e0 ff ff da                                      ble #0x83375c
008337d8  30 10 9f e5                                      ldr r1, [pc, #0x30]
008337dc  0c c0 96 e5                                      ldr ip, [r6, #0xc]
008337e0  08 30 96 e5                                      ldr r3, [r6, #8]
008337e4  01 10 8f e0                                      add r1, pc, r1
008337e8  05 00 a0 e1                                      mov r0, r5
008337ec  5f 20 a0 e3                                      mov r2, #0x5f
008337f0  00 c0 8d e5                                      str ip, [sp]
008337f4  ba 6c eb eb                                      bl #0x30eae4
008337f8  e0 ff ff ea                                      b #0x833780
008337fc  c3 6a eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00833800  74 13 16 00 ac 40 00 00 00 9b 0d 00 f8 9a 0d 00  .byte 0x74, 0x13, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x00, 0x9b, 0x0d, 0x00, 0xf8, 0x9a, 0x0d, 0x00
00833810  8c 8c 0d 00                                      .byte 0x8c, 0x8c, 0x0d, 0x00

; FUNCTION 0x00833814, declared_size=196, range_size=196, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin15SendGetAPNSInfoEi
; demangled: GLXPlayerLogin::SendGetAPNSInfo(int)
; decoder-mode: arm
00833814  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00833818  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0083381c  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00833820  03 30 8f e0                                      add r3, pc, r3
00833824  01 da 4d e2                                      sub sp, sp, #0x1000
00833828  02 60 93 e7                                      ldr r6, [r3, r2]
0083382c  14 d0 4d e2                                      sub sp, sp, #0x14
00833830  01 2a a0 e3                                      mov r2, #0x1000
00833834  00 c0 96 e5                                      ldr ip, [r6]
00833838  10 50 8d e2                                      add r5, sp, #0x10
0083383c  02 e0 8d e0                                      add lr, sp, r2
00833840  04 50 45 e2                                      sub r5, r5, #4
00833844  00 40 a0 e1                                      mov r4, r0
00833848  0c c0 8e e5                                      str ip, [lr, #0xc]
0083384c  01 70 a0 e1                                      mov r7, r1
00833850  05 00 a0 e1                                      mov r0, r5
00833854  00 10 a0 e3                                      mov r1, #0
00833858  c1 de ff eb                                      bl #0x82b364
0083385c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00833860  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00833864  08 30 94 e5                                      ldr r3, [r4, #8]
00833868  53 20 a0 e3                                      mov r2, #0x53
0083386c  01 10 8f e0                                      add r1, pc, r1
00833870  05 00 a0 e1                                      mov r0, r5
00833874  00 c0 8d e5                                      str ip, [sp]
00833878  04 70 8d e5                                      str r7, [sp, #4]
0083387c  98 6c eb eb                                      bl #0x30eae4
00833880  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00833884  05 10 a0 e1                                      mov r1, r5
00833888  00 00 8f e0                                      add r0, pc, r0
0083388c  bc df ff eb                                      bl #0x82b784
00833890  00 30 94 e5                                      ldr r3, [r4]
00833894  04 00 a0 e1                                      mov r0, r4
00833898  05 10 a0 e1                                      mov r1, r5
0083389c  0f e0 a0 e1                                      mov lr, pc
008338a0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008338a4  01 3a 8d e2                                      add r3, sp, #0x1000
008338a8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
008338ac  00 30 96 e5                                      ldr r3, [r6]
008338b0  03 00 52 e1                                      cmp r2, r3
008338b4  02 00 00 1a                                      bne #0x8338c4
008338b8  14 d0 8d e2                                      add sp, sp, #0x14
008338bc  01 da 8d e2                                      add sp, sp, #0x1000
008338c0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
008338c4  91 6a eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008338c8  70 12 16 00 ac 40 00 00 4c 9a 0d 00 48 9a 0d 00  .byte 0x70, 0x12, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x4c, 0x9a, 0x0d, 0x00, 0x48, 0x9a, 0x0d, 0x00

; FUNCTION 0x008338d8, declared_size=196, range_size=196, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin13SendKeepAliveEv
; demangled: GLXPlayerLogin::SendKeepAlive()
; decoder-mode: arm
008338d8  ac 30 9f e5                                      ldr r3, [pc, #0xac]
008338dc  70 40 2d e9                                      push {r4, r5, r6, lr}
008338e0  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
008338e4  03 30 8f e0                                      add r3, pc, r3
008338e8  01 da 4d e2                                      sub sp, sp, #0x1000
008338ec  02 60 93 e7                                      ldr r6, [r3, r2]
008338f0  10 d0 4d e2                                      sub sp, sp, #0x10
008338f4  01 2a a0 e3                                      mov r2, #0x1000
008338f8  00 c0 96 e5                                      ldr ip, [r6]
008338fc  10 50 8d e2                                      add r5, sp, #0x10
00833900  02 e0 8d e0                                      add lr, sp, r2
00833904  04 50 45 e2                                      sub r5, r5, #4
00833908  00 40 a0 e1                                      mov r4, r0
0083390c  0c c0 8e e5                                      str ip, [lr, #0xc]
00833910  05 00 a0 e1                                      mov r0, r5
00833914  00 10 a0 e3                                      mov r1, #0
00833918  91 de ff eb                                      bl #0x82b364
0083391c  70 10 9f e5                                      ldr r1, [pc, #0x70]
00833920  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00833924  08 30 94 e5                                      ldr r3, [r4, #8]
00833928  10 20 a0 e3                                      mov r2, #0x10
0083392c  01 10 8f e0                                      add r1, pc, r1
00833930  05 00 a0 e1                                      mov r0, r5
00833934  00 c0 8d e5                                      str ip, [sp]
00833938  69 6c eb eb                                      bl #0x30eae4
0083393c  fd dd ff eb                                      bl #0x82b138
00833940  44 00 84 e5                                      str r0, [r4, #0x44]
00833944  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00833948  05 10 a0 e1                                      mov r1, r5
0083394c  00 00 8f e0                                      add r0, pc, r0
00833950  8b df ff eb                                      bl #0x82b784
00833954  00 30 94 e5                                      ldr r3, [r4]
00833958  04 00 a0 e1                                      mov r0, r4
0083395c  05 10 a0 e1                                      mov r1, r5
00833960  0f e0 a0 e1                                      mov lr, pc
00833964  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00833968  01 3a 8d e2                                      add r3, sp, #0x1000
0083396c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00833970  00 30 96 e5                                      ldr r3, [r6]
00833974  03 00 52 e1                                      cmp r2, r3
00833978  02 00 00 1a                                      bne #0x833988
0083397c  10 d0 8d e2                                      add sp, sp, #0x10
00833980  01 da 8d e2                                      add sp, sp, #0x1000
00833984  70 80 bd e8                                      pop {r4, r5, r6, pc}
00833988  60 6a eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083398c  ac 11 16 00 ac 40 00 00 44 8b 0d 00 b4 99 0d 00  .byte 0xac, 0x11, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x8b, 0x0d, 0x00, 0xb4, 0x99, 0x0d, 0x00

; FUNCTION 0x0083399c, declared_size=36, range_size=36, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin9KeepAliveEv
; demangled: GLXPlayerLogin::KeepAlive()
; decoder-mode: arm
0083399c  10 40 2d e9                                      push {r4, lr}
008339a0  00 40 a0 e1                                      mov r4, r0
008339a4  9c fe ff eb                                      bl #0x83341c
008339a8  00 00 50 e3                                      cmp r0, #0
008339ac  00 00 00 1a                                      bne #0x8339b4
008339b0  10 80 bd e8                                      pop {r4, pc}
008339b4  04 00 a0 e1                                      mov r0, r4
008339b8  10 40 bd e8                                      pop {r4, lr}
008339bc  c5 ff ff ea                                      b #0x8338d8

; FUNCTION 0x008339c0, declared_size=196, range_size=196, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin10SendLogoutEv
; demangled: GLXPlayerLogin::SendLogout()
; decoder-mode: arm
008339c0  ac 30 9f e5                                      ldr r3, [pc, #0xac]
008339c4  70 40 2d e9                                      push {r4, r5, r6, lr}
008339c8  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
008339cc  03 30 8f e0                                      add r3, pc, r3
008339d0  01 da 4d e2                                      sub sp, sp, #0x1000
008339d4  02 60 93 e7                                      ldr r6, [r3, r2]
008339d8  10 d0 4d e2                                      sub sp, sp, #0x10
008339dc  00 20 a0 e3                                      mov r2, #0
008339e0  00 c0 96 e5                                      ldr ip, [r6]
008339e4  02 10 a0 e1                                      mov r1, r2
008339e8  40 20 c0 e5                                      strb r2, [r0, #0x40]
008339ec  10 50 8d e2                                      add r5, sp, #0x10
008339f0  01 2a a0 e3                                      mov r2, #0x1000
008339f4  02 e0 8d e0                                      add lr, sp, r2
008339f8  04 50 45 e2                                      sub r5, r5, #4
008339fc  00 40 a0 e1                                      mov r4, r0
00833a00  0c c0 8e e5                                      str ip, [lr, #0xc]
00833a04  05 00 a0 e1                                      mov r0, r5
00833a08  55 de ff eb                                      bl #0x82b364
00833a0c  68 10 9f e5                                      ldr r1, [pc, #0x68]
00833a10  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00833a14  08 30 94 e5                                      ldr r3, [r4, #8]
00833a18  11 20 a0 e3                                      mov r2, #0x11
00833a1c  01 10 8f e0                                      add r1, pc, r1
00833a20  05 00 a0 e1                                      mov r0, r5
00833a24  00 c0 8d e5                                      str ip, [sp]
00833a28  2d 6c eb eb                                      bl #0x30eae4
00833a2c  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
00833a30  05 10 a0 e1                                      mov r1, r5
00833a34  00 00 8f e0                                      add r0, pc, r0
00833a38  51 df ff eb                                      bl #0x82b784
00833a3c  00 30 94 e5                                      ldr r3, [r4]
00833a40  04 00 a0 e1                                      mov r0, r4
00833a44  05 10 a0 e1                                      mov r1, r5
00833a48  0f e0 a0 e1                                      mov lr, pc
00833a4c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00833a50  01 3a 8d e2                                      add r3, sp, #0x1000
00833a54  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00833a58  00 30 96 e5                                      ldr r3, [r6]
00833a5c  03 00 52 e1                                      cmp r2, r3
00833a60  02 00 00 1a                                      bne #0x833a70
00833a64  10 d0 8d e2                                      add sp, sp, #0x10
00833a68  01 da 8d e2                                      add sp, sp, #0x1000
00833a6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00833a70  26 6a eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00833a74  c4 10 16 00 ac 40 00 00 54 8a 0d 00 ec 98 0d 00  .byte 0xc4, 0x10, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x8a, 0x0d, 0x00, 0xec, 0x98, 0x0d, 0x00

; FUNCTION 0x00833a84, declared_size=568, range_size=568, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin22processApplePushServerEPc
; demangled: GLXPlayerLogin::processApplePushServer(char*)
; decoder-mode: arm
00833a84  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00833a88  24 52 9f e5                                      ldr r5, [pc, #0x224]
00833a8c  24 a2 9f e5                                      ldr sl, [pc, #0x224]
00833a90  1c d0 4d e2                                      sub sp, sp, #0x1c
00833a94  05 50 8f e0                                      add r5, pc, r5
00833a98  0a 30 95 e7                                      ldr r3, [r5, sl]
00833a9c  00 60 51 e2                                      subs r6, r1, #0
00833aa0  00 40 a0 e1                                      mov r4, r0
00833aa4  00 30 93 e5                                      ldr r3, [r3]
00833aa8  14 30 8d e5                                      str r3, [sp, #0x14]
00833aac  78 00 00 0a                                      beq #0x833c94
00833ab0  06 00 a0 e1                                      mov r0, r6
00833ab4  3c dd ff eb                                      bl #0x82afac
00833ab8  00 00 50 e3                                      cmp r0, #0
00833abc  74 00 00 da                                      ble #0x833c94
00833ac0  48 00 94 e5                                      ldr r0, [r4, #0x48]
00833ac4  00 00 50 e3                                      cmp r0, #0
00833ac8  02 00 00 0a                                      beq #0x833ad8
00833acc  f7 69 eb eb                                      bl #0x30e2b0
00833ad0  00 30 a0 e3                                      mov r3, #0
00833ad4  48 30 84 e5                                      str r3, [r4, #0x48]
00833ad8  50 00 94 e5                                      ldr r0, [r4, #0x50]
00833adc  00 00 50 e3                                      cmp r0, #0
00833ae0  02 00 00 0a                                      beq #0x833af0
00833ae4  f1 69 eb eb                                      bl #0x30e2b0
00833ae8  00 30 a0 e3                                      mov r3, #0
00833aec  50 30 84 e5                                      str r3, [r4, #0x50]
00833af0  58 00 94 e5                                      ldr r0, [r4, #0x58]
00833af4  00 00 50 e3                                      cmp r0, #0
00833af8  02 00 00 0a                                      beq #0x833b08
00833afc  eb 69 eb eb                                      bl #0x30e2b0
00833b00  00 30 a0 e3                                      mov r3, #0
00833b04  58 30 84 e5                                      str r3, [r4, #0x58]
00833b08  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
00833b0c  00 00 50 e3                                      cmp r0, #0
00833b10  02 00 00 0a                                      beq #0x833b20
00833b14  e5 69 eb eb                                      bl #0x30e2b0
00833b18  00 30 a0 e3                                      mov r3, #0
00833b1c  5c 30 84 e5                                      str r3, [r4, #0x5c]
00833b20  60 00 94 e5                                      ldr r0, [r4, #0x60]
00833b24  00 00 50 e3                                      cmp r0, #0
00833b28  02 00 00 0a                                      beq #0x833b38
00833b2c  df 69 eb eb                                      bl #0x30e2b0
00833b30  00 30 a0 e3                                      mov r3, #0
00833b34  60 30 84 e5                                      str r3, [r4, #0x60]
00833b38  20 00 a0 e3                                      mov r0, #0x20
00833b3c  63 69 eb eb                                      bl #0x30e0d0
00833b40  48 00 84 e5                                      str r0, [r4, #0x48]
00833b44  20 00 a0 e3                                      mov r0, #0x20
00833b48  60 69 eb eb                                      bl #0x30e0d0
00833b4c  50 00 84 e5                                      str r0, [r4, #0x50]
00833b50  01 0c a0 e3                                      mov r0, #0x100
00833b54  5d 69 eb eb                                      bl #0x30e0d0
00833b58  58 00 84 e5                                      str r0, [r4, #0x58]
00833b5c  01 0c a0 e3                                      mov r0, #0x100
00833b60  5a 69 eb eb                                      bl #0x30e0d0
00833b64  5c 00 84 e5                                      str r0, [r4, #0x5c]
00833b68  01 0c a0 e3                                      mov r0, #0x100
00833b6c  57 69 eb eb                                      bl #0x30e0d0
00833b70  00 10 a0 e3                                      mov r1, #0
00833b74  60 00 84 e5                                      str r0, [r4, #0x60]
00833b78  20 20 a0 e3                                      mov r2, #0x20
00833b7c  48 00 94 e5                                      ldr r0, [r4, #0x48]
00833b80  f7 dd ff eb                                      bl #0x82b364
00833b84  58 00 94 e5                                      ldr r0, [r4, #0x58]
00833b88  00 10 a0 e3                                      mov r1, #0
00833b8c  01 2c a0 e3                                      mov r2, #0x100
00833b90  f3 dd ff eb                                      bl #0x82b364
00833b94  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
00833b98  00 10 a0 e3                                      mov r1, #0
00833b9c  01 2c a0 e3                                      mov r2, #0x100
00833ba0  ef dd ff eb                                      bl #0x82b364
00833ba4  60 00 94 e5                                      ldr r0, [r4, #0x60]
00833ba8  00 10 a0 e3                                      mov r1, #0
00833bac  01 2c a0 e3                                      mov r2, #0x100
00833bb0  eb dd ff eb                                      bl #0x82b364
00833bb4  00 80 a0 e3                                      mov r8, #0
00833bb8  08 30 8d e2                                      add r3, sp, #8
00833bbc  18 70 8d e2                                      add r7, sp, #0x18
00833bc0  04 80 83 e4                                      str r8, [r3], #4
00833bc4  14 80 27 e5                                      str r8, [r7, #-0x14]!
00833bc8  04 80 83 e4                                      str r8, [r3], #4
00833bcc  08 10 a0 e1                                      mov r1, r8
00833bd0  07 00 a0 e1                                      mov r0, r7
00833bd4  10 20 a0 e3                                      mov r2, #0x10
00833bd8  00 80 83 e5                                      str r8, [r3]
00833bdc  e0 dd ff eb                                      bl #0x82b364
00833be0  08 20 a0 e1                                      mov r2, r8
00833be4  48 10 94 e5                                      ldr r1, [r4, #0x48]
00833be8  7c 30 a0 e3                                      mov r3, #0x7c
00833bec  06 00 a0 e1                                      mov r0, r6
00833bf0  3a dc ff eb                                      bl #0x82ace0
00833bf4  07 10 a0 e1                                      mov r1, r7
00833bf8  01 20 a0 e3                                      mov r2, #1
00833bfc  7c 30 a0 e3                                      mov r3, #0x7c
00833c00  06 00 a0 e1                                      mov r0, r6
00833c04  35 dc ff eb                                      bl #0x82ace0
00833c08  07 00 a0 e1                                      mov r0, r7
00833c0c  c3 dd ff eb                                      bl #0x82b320
00833c10  7c 30 a0 e3                                      mov r3, #0x7c
00833c14  4c 00 84 e5                                      str r0, [r4, #0x4c]
00833c18  50 10 94 e5                                      ldr r1, [r4, #0x50]
00833c1c  02 20 a0 e3                                      mov r2, #2
00833c20  06 00 a0 e1                                      mov r0, r6
00833c24  2d dc ff eb                                      bl #0x82ace0
00833c28  07 00 a0 e1                                      mov r0, r7
00833c2c  08 10 a0 e1                                      mov r1, r8
00833c30  10 20 a0 e3                                      mov r2, #0x10
00833c34  ca dd ff eb                                      bl #0x82b364
00833c38  07 10 a0 e1                                      mov r1, r7
00833c3c  03 20 a0 e3                                      mov r2, #3
00833c40  7c 30 a0 e3                                      mov r3, #0x7c
00833c44  06 00 a0 e1                                      mov r0, r6
00833c48  24 dc ff eb                                      bl #0x82ace0
00833c4c  07 00 a0 e1                                      mov r0, r7
00833c50  b2 dd ff eb                                      bl #0x82b320
00833c54  58 10 94 e5                                      ldr r1, [r4, #0x58]
00833c58  54 00 84 e5                                      str r0, [r4, #0x54]
00833c5c  04 20 a0 e3                                      mov r2, #4
00833c60  7c 30 a0 e3                                      mov r3, #0x7c
00833c64  06 00 a0 e1                                      mov r0, r6
00833c68  1c dc ff eb                                      bl #0x82ace0
00833c6c  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00833c70  05 20 a0 e3                                      mov r2, #5
00833c74  7c 30 a0 e3                                      mov r3, #0x7c
00833c78  06 00 a0 e1                                      mov r0, r6
00833c7c  17 dc ff eb                                      bl #0x82ace0
00833c80  06 00 a0 e1                                      mov r0, r6
00833c84  60 10 94 e5                                      ldr r1, [r4, #0x60]
00833c88  06 20 a0 e3                                      mov r2, #6
00833c8c  7c 30 a0 e3                                      mov r3, #0x7c
00833c90  12 dc ff eb                                      bl #0x82ace0
00833c94  0a 30 95 e7                                      ldr r3, [r5, sl]
00833c98  14 20 9d e5                                      ldr r2, [sp, #0x14]
00833c9c  00 30 93 e5                                      ldr r3, [r3]
00833ca0  03 00 52 e1                                      cmp r2, r3
00833ca4  01 00 00 1a                                      bne #0x833cb0
00833ca8  1c d0 8d e2                                      add sp, sp, #0x1c
00833cac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00833cb0  96 69 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00833cb4  fc 0f 16 00 ac 40 00 00                          .byte 0xfc, 0x0f, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00833cbc, declared_size=944, range_size=944, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin9SendLoginEPcS0_S0_iS0_S0_b
; demangled: GLXPlayerLogin::SendLogin(char*, char*, char*, int, char*, char*, bool)
; decoder-mode: arm
00833cbc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00833cc0  68 63 9f e5                                      ldr r6, [pc, #0x368]
00833cc4  68 83 9f e5                                      ldr r8, [pc, #0x368]
00833cc8  02 90 a0 e1                                      mov sb, r2
00833ccc  06 60 8f e0                                      add r6, pc, r6
00833cd0  08 20 96 e7                                      ldr r2, [r6, r8]
00833cd4  11 dc 4d e2                                      sub sp, sp, #0x1100
00833cd8  24 d0 4d e2                                      sub sp, sp, #0x24
00833cdc  00 20 92 e5                                      ldr r2, [r2]
00833ce0  0c 30 8d e5                                      str r3, [sp, #0xc]
00833ce4  00 00 51 e3                                      cmp r1, #0
00833ce8  00 00 59 13                                      cmpne sb, #0
00833cec  01 a0 a0 e1                                      mov sl, r1
00833cf0  01 1a 8d e2                                      add r1, sp, #0x1000
00833cf4  1c 21 81 e5                                      str r2, [r1, #0x11c]
00833cf8  4c 21 91 e5                                      ldr r2, [r1, #0x14c]
00833cfc  11 3c 8d e2                                      add r3, sp, #0x1100
00833d00  00 c0 a0 13                                      movne ip, #0
00833d04  01 c0 a0 03                                      moveq ip, #1
00833d08  10 20 8d e5                                      str r2, [sp, #0x10]
00833d0c  54 30 d3 e5                                      ldrb r3, [r3, #0x54]
00833d10  00 70 a0 e1                                      mov r7, r0
00833d14  50 b1 91 e5                                      ldr fp, [r1, #0x150]
00833d18  14 30 8d e5                                      str r3, [sp, #0x14]
00833d1c  a9 00 00 0a                                      beq #0x833fc8
00833d20  20 50 8d e2                                      add r5, sp, #0x20
00833d24  04 50 45 e2                                      sub r5, r5, #4
00833d28  0c 10 a0 e1                                      mov r1, ip
00833d2c  05 00 a0 e1                                      mov r0, r5
00833d30  01 2a a0 e3                                      mov r2, #0x1000
00833d34  08 c0 8d e5                                      str ip, [sp, #8]
00833d38  89 dd ff eb                                      bl #0x82b364
00833d3c  f4 12 9f e5                                      ldr r1, [pc, #0x2f4]
00833d40  08 30 97 e5                                      ldr r3, [r7, #8]
00833d44  0f 20 a0 e3                                      mov r2, #0xf
00833d48  01 10 8f e0                                      add r1, pc, r1
00833d4c  05 00 a0 e1                                      mov r0, r5
00833d50  00 a0 8d e5                                      str sl, [sp]
00833d54  04 90 8d e5                                      str sb, [sp, #4]
00833d58  61 6b eb eb                                      bl #0x30eae4
00833d5c  08 c0 9d e5                                      ldr ip, [sp, #8]
00833d60  42 4d 8d e2                                      add r4, sp, #0x1080
00833d64  1c 40 84 e2                                      add r4, r4, #0x1c
00833d68  0c 10 a0 e1                                      mov r1, ip
00833d6c  04 00 a0 e1                                      mov r0, r4
00833d70  80 20 a0 e3                                      mov r2, #0x80
00833d74  b9 69 eb eb                                      bl #0x30e460
00833d78  01 1a 8d e2                                      add r1, sp, #0x1000
00833d7c  48 11 91 e5                                      ldr r1, [r1, #0x148]
00833d80  00 00 51 e3                                      cmp r1, #0
00833d84  07 00 00 da                                      ble #0x833da8
00833d88  01 20 a0 e1                                      mov r2, r1
00833d8c  a8 12 9f e5                                      ldr r1, [pc, #0x2a8]
00833d90  04 00 a0 e1                                      mov r0, r4
00833d94  01 10 8f e0                                      add r1, pc, r1
00833d98  51 6b eb eb                                      bl #0x30eae4
00833d9c  05 00 a0 e1                                      mov r0, r5
00833da0  04 10 a0 e1                                      mov r1, r4
00833da4  63 dd ff eb                                      bl #0x82b338
00833da8  10 10 9d e5                                      ldr r1, [sp, #0x10]
00833dac  00 00 51 e3                                      cmp r1, #0
00833db0  0b 00 00 0a                                      beq #0x833de4
00833db4  04 00 a0 e1                                      mov r0, r4
00833db8  00 10 a0 e3                                      mov r1, #0
00833dbc  80 20 a0 e3                                      mov r2, #0x80
00833dc0  67 dd ff eb                                      bl #0x82b364
00833dc4  74 12 9f e5                                      ldr r1, [pc, #0x274]
00833dc8  10 20 9d e5                                      ldr r2, [sp, #0x10]
00833dcc  04 00 a0 e1                                      mov r0, r4
00833dd0  01 10 8f e0                                      add r1, pc, r1
00833dd4  42 6b eb eb                                      bl #0x30eae4
00833dd8  05 00 a0 e1                                      mov r0, r5
00833ddc  04 10 a0 e1                                      mov r1, r4
00833de0  54 dd ff eb                                      bl #0x82b338
00833de4  04 00 a0 e1                                      mov r0, r4
00833de8  00 10 a0 e3                                      mov r1, #0
00833dec  80 20 a0 e3                                      mov r2, #0x80
00833df0  5b dd ff eb                                      bl #0x82b364
00833df4  48 12 9f e5                                      ldr r1, [pc, #0x248]
00833df8  01 20 a0 e3                                      mov r2, #1
00833dfc  04 00 a0 e1                                      mov r0, r4
00833e00  01 10 8f e0                                      add r1, pc, r1
00833e04  36 6b eb eb                                      bl #0x30eae4
00833e08  04 10 a0 e1                                      mov r1, r4
00833e0c  05 00 a0 e1                                      mov r0, r5
00833e10  48 dd ff eb                                      bl #0x82b338
00833e14  04 00 a0 e1                                      mov r0, r4
00833e18  00 10 a0 e3                                      mov r1, #0
00833e1c  80 20 a0 e3                                      mov r2, #0x80
00833e20  4f dd ff eb                                      bl #0x82b364
00833e24  1c 12 9f e5                                      ldr r1, [pc, #0x21c]
00833e28  01 20 a0 e3                                      mov r2, #1
00833e2c  04 00 a0 e1                                      mov r0, r4
00833e30  01 10 8f e0                                      add r1, pc, r1
00833e34  2a 6b eb eb                                      bl #0x30eae4
00833e38  05 00 a0 e1                                      mov r0, r5
00833e3c  04 10 a0 e1                                      mov r1, r4
00833e40  3c dd ff eb                                      bl #0x82b338
00833e44  00 00 5b e3                                      cmp fp, #0
00833e48  0e 00 00 0a                                      beq #0x833e88
00833e4c  04 00 a0 e1                                      mov r0, r4
00833e50  00 10 a0 e3                                      mov r1, #0
00833e54  80 20 a0 e3                                      mov r2, #0x80
00833e58  41 dd ff eb                                      bl #0x82b364
00833e5c  e8 11 9f e5                                      ldr r1, [pc, #0x1e8]
00833e60  0b 20 a0 e1                                      mov r2, fp
00833e64  04 00 a0 e1                                      mov r0, r4
00833e68  01 10 8f e0                                      add r1, pc, r1
00833e6c  1c 6b eb eb                                      bl #0x30eae4
00833e70  04 10 a0 e1                                      mov r1, r4
00833e74  05 00 a0 e1                                      mov r0, r5
00833e78  2e dd ff eb                                      bl #0x82b338
00833e7c  0b 00 a0 e1                                      mov r0, fp
00833e80  c6 de ff eb                                      bl #0x82b9a0
00833e84  7c 00 87 e5                                      str r0, [r7, #0x7c]
00833e88  3c 30 97 e5                                      ldr r3, [r7, #0x3c]
00833e8c  00 00 53 e3                                      cmp r3, #0
00833e90  0b 00 00 da                                      ble #0x833ec4
00833e94  04 00 a0 e1                                      mov r0, r4
00833e98  00 10 a0 e3                                      mov r1, #0
00833e9c  80 20 a0 e3                                      mov r2, #0x80
00833ea0  2f dd ff eb                                      bl #0x82b364
00833ea4  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
00833ea8  04 00 a0 e1                                      mov r0, r4
00833eac  3c 20 97 e5                                      ldr r2, [r7, #0x3c]
00833eb0  01 10 8f e0                                      add r1, pc, r1
00833eb4  0a 6b eb eb                                      bl #0x30eae4
00833eb8  05 00 a0 e1                                      mov r0, r5
00833ebc  04 10 a0 e1                                      mov r1, r4
00833ec0  1c dd ff eb                                      bl #0x82b338
00833ec4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00833ec8  00 00 52 e3                                      cmp r2, #0
00833ecc  0b 00 00 0a                                      beq #0x833f00
00833ed0  04 00 a0 e1                                      mov r0, r4
00833ed4  00 10 a0 e3                                      mov r1, #0
00833ed8  80 20 a0 e3                                      mov r2, #0x80
00833edc  20 dd ff eb                                      bl #0x82b364
00833ee0  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
00833ee4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00833ee8  04 00 a0 e1                                      mov r0, r4
00833eec  01 10 8f e0                                      add r1, pc, r1
00833ef0  fb 6a eb eb                                      bl #0x30eae4
00833ef4  05 00 a0 e1                                      mov r0, r5
00833ef8  04 10 a0 e1                                      mov r1, r4
00833efc  0d dd ff eb                                      bl #0x82b338
00833f00  04 00 a0 e1                                      mov r0, r4
00833f04  00 10 a0 e3                                      mov r1, #0
00833f08  80 20 a0 e3                                      mov r2, #0x80
00833f0c  14 dd ff eb                                      bl #0x82b364
00833f10  40 11 9f e5                                      ldr r1, [pc, #0x140]
00833f14  14 20 9d e5                                      ldr r2, [sp, #0x14]
00833f18  04 00 a0 e1                                      mov r0, r4
00833f1c  01 10 8f e0                                      add r1, pc, r1
00833f20  ef 6a eb eb                                      bl #0x30eae4
00833f24  04 10 a0 e1                                      mov r1, r4
00833f28  05 00 a0 e1                                      mov r0, r5
00833f2c  01 dd ff eb                                      bl #0x82b338
00833f30  39 e8 ff eb                                      bl #0x82e01c
00833f34  1c dc ff eb                                      bl #0x82afac
00833f38  00 00 50 e3                                      cmp r0, #0
00833f3c  2a 00 00 1a                                      bne #0x833fec
00833f40  14 01 9f e5                                      ldr r0, [pc, #0x114]
00833f44  00 00 8f e0                                      add r0, pc, r0
00833f48  94 de ff eb                                      bl #0x82b9a0
00833f4c  00 a0 a0 e1                                      mov sl, r0
00833f50  08 01 9f e5                                      ldr r0, [pc, #0x108]
00833f54  00 00 8f e0                                      add r0, pc, r0
00833f58  90 de ff eb                                      bl #0x82b9a0
00833f5c  00 00 5a e3                                      cmp sl, #0
00833f60  00 40 a0 e1                                      mov r4, r0
00833f64  01 00 00 0a                                      beq #0x833f70
00833f68  0a 00 a0 e1                                      mov r0, sl
00833f6c  cf 68 eb eb                                      bl #0x30e2b0
00833f70  00 00 54 e3                                      cmp r4, #0
00833f74  01 00 00 0a                                      beq #0x833f80
00833f78  04 00 a0 e1                                      mov r0, r4
00833f7c  cb 68 eb eb                                      bl #0x30e2b0
00833f80  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
00833f84  05 10 a0 e1                                      mov r1, r5
00833f88  00 00 8f e0                                      add r0, pc, r0
00833f8c  fc dd ff eb                                      bl #0x82b784
00833f90  07 00 a0 e1                                      mov r0, r7
00833f94  05 10 a0 e1                                      mov r1, r5
00833f98  00 30 97 e5                                      ldr r3, [r7]
00833f9c  0f e0 a0 e1                                      mov lr, pc
00833fa0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00833fa4  08 30 96 e7                                      ldr r3, [r6, r8]
00833fa8  01 1a 8d e2                                      add r1, sp, #0x1000
00833fac  1c 21 91 e5                                      ldr r2, [r1, #0x11c]
00833fb0  00 30 93 e5                                      ldr r3, [r3]
00833fb4  03 00 52 e1                                      cmp r2, r3
00833fb8  1b 00 00 1a                                      bne #0x83402c
00833fbc  49 df 8d e2                                      add sp, sp, #0x124
00833fc0  01 da 8d e2                                      add sp, sp, #0x1000
00833fc4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00833fc8  04 30 90 e5                                      ldr r3, [r0, #4]
00833fcc  0f 10 a0 e3                                      mov r1, #0xf
00833fd0  63 20 e0 e3                                      mvn r2, #0x63
00833fd4  03 00 a0 e1                                      mov r0, r3
00833fd8  00 30 93 e5                                      ldr r3, [r3]
00833fdc  0f e0 a0 e1                                      mov lr, pc
00833fe0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00833fe4  00 00 a0 e3                                      mov r0, #0
00833fe8  ed ff ff ea                                      b #0x833fa4
00833fec  01 4a 8d e2                                      add r4, sp, #0x1000
00833ff0  1c 40 84 e2                                      add r4, r4, #0x1c
00833ff4  00 10 a0 e3                                      mov r1, #0
00833ff8  80 20 a0 e3                                      mov r2, #0x80
00833ffc  04 00 a0 e1                                      mov r0, r4
00834000  16 69 eb eb                                      bl #0x30e460
00834004  04 e8 ff eb                                      bl #0x82e01c
00834008  58 10 9f e5                                      ldr r1, [pc, #0x58]
0083400c  00 20 a0 e1                                      mov r2, r0
00834010  04 00 a0 e1                                      mov r0, r4
00834014  01 10 8f e0                                      add r1, pc, r1
00834018  b1 6a eb eb                                      bl #0x30eae4
0083401c  05 00 a0 e1                                      mov r0, r5
00834020  04 10 a0 e1                                      mov r1, r4
00834024  c3 dc ff eb                                      bl #0x82b338
00834028  c4 ff ff ea                                      b #0x833f40
0083402c  b7 68 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00834030  c4 0d 16 00 ac 40 00 00 08 96 0d 00 d4 95 0d 00  .byte 0xc4, 0x0d, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x08, 0x96, 0x0d, 0x00, 0xd4, 0x95, 0x0d, 0x00
00834040  a0 95 0d 00 78 95 0d 00 50 95 0d 00 20 95 0d 00  .byte 0xa0, 0x95, 0x0d, 0x00, 0x78, 0x95, 0x0d, 0x00, 0x50, 0x95, 0x0d, 0x00, 0x20, 0x95, 0x0d, 0x00
00834050  e0 94 0d 00 ac 94 0d 00 8c 94 0d 00 74 94 0d 00  .byte 0xe0, 0x94, 0x0d, 0x00, 0xac, 0x94, 0x0d, 0x00, 0x8c, 0x94, 0x0d, 0x00, 0x74, 0x94, 0x0d, 0x00
00834060  4c 82 09 00 38 94 0d 00 44 92 0d 00              .byte 0x4c, 0x82, 0x09, 0x00, 0x38, 0x94, 0x0d, 0x00, 0x44, 0x92, 0x0d, 0x00

; FUNCTION 0x0083406c, declared_size=644, range_size=644, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin12sendRegisterEPcS0_S0_S0_bS0_bS0_b
; demangled: GLXPlayerLogin::sendRegister(char*, char*, char*, char*, bool, char*, bool, char*, bool)
; decoder-mode: arm
0083406c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00834070  58 42 9f e5                                      ldr r4, [pc, #0x258]
00834074  58 52 9f e5                                      ldr r5, [pc, #0x258]
00834078  02 a0 a0 e1                                      mov sl, r2
0083407c  04 40 8f e0                                      add r4, pc, r4
00834080  11 dc 4d e2                                      sub sp, sp, #0x1100
00834084  05 20 94 e7                                      ldr r2, [r4, r5]
00834088  3c d0 4d e2                                      sub sp, sp, #0x3c
0083408c  01 80 a0 e1                                      mov r8, r1
00834090  00 00 51 e3                                      cmp r1, #0
00834094  00 00 5a 13                                      cmpne sl, #0
00834098  01 1a 8d e2                                      add r1, sp, #0x1000
0083409c  00 20 92 e5                                      ldr r2, [r2]
008340a0  03 90 a0 e1                                      mov sb, r3
008340a4  68 31 91 e5                                      ldr r3, [r1, #0x168]
008340a8  34 21 81 e5                                      str r2, [r1, #0x134]
008340ac  11 ec 8d e2                                      add lr, sp, #0x1100
008340b0  1c 30 8d e5                                      str r3, [sp, #0x1c]
008340b4  64 e0 de e5                                      ldrb lr, [lr, #0x64]
008340b8  60 b1 91 e5                                      ldr fp, [r1, #0x160]
008340bc  70 c1 91 e5                                      ldr ip, [r1, #0x170]
008340c0  24 e0 8d e5                                      str lr, [sp, #0x24]
008340c4  11 1c 8d e2                                      add r1, sp, #0x1100
008340c8  6c 10 d1 e5                                      ldrb r1, [r1, #0x6c]
008340cc  11 3c 8d e2                                      add r3, sp, #0x1100
008340d0  00 60 a0 e1                                      mov r6, r0
008340d4  28 10 8d e5                                      str r1, [sp, #0x28]
008340d8  74 30 d3 e5                                      ldrb r3, [r3, #0x74]
008340dc  2c 30 8d e5                                      str r3, [sp, #0x2c]
008340e0  05 00 00 0a                                      beq #0x8340fc
008340e4  00 00 59 e3                                      cmp sb, #0
008340e8  00 00 5b 13                                      cmpne fp, #0
008340ec  00 e0 a0 13                                      movne lr, #0
008340f0  01 e0 a0 03                                      moveq lr, #1
008340f4  20 e0 8d e5                                      str lr, [sp, #0x20]
008340f8  10 00 00 1a                                      bne #0x834140
008340fc  04 30 96 e5                                      ldr r3, [r6, #4]
00834100  0b 10 a0 e3                                      mov r1, #0xb
00834104  63 20 e0 e3                                      mvn r2, #0x63
00834108  03 00 a0 e1                                      mov r0, r3
0083410c  00 30 93 e5                                      ldr r3, [r3]
00834110  0f e0 a0 e1                                      mov lr, pc
00834114  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00834118  00 00 a0 e3                                      mov r0, #0
0083411c  05 30 94 e7                                      ldr r3, [r4, r5]
00834120  01 1a 8d e2                                      add r1, sp, #0x1000
00834124  34 21 91 e5                                      ldr r2, [r1, #0x134]
00834128  00 30 93 e5                                      ldr r3, [r3]
0083412c  03 00 52 e1                                      cmp r2, r3
00834130  65 00 00 1a                                      bne #0x8342cc
00834134  4f df 8d e2                                      add sp, sp, #0x13c
00834138  01 da 8d e2                                      add sp, sp, #0x1000
0083413c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00834140  38 70 8d e2                                      add r7, sp, #0x38
00834144  04 70 47 e2                                      sub r7, r7, #4
00834148  07 00 a0 e1                                      mov r0, r7
0083414c  20 10 9d e5                                      ldr r1, [sp, #0x20]
00834150  01 2a a0 e3                                      mov r2, #0x1000
00834154  18 c0 8d e5                                      str ip, [sp, #0x18]
00834158  81 dc ff eb                                      bl #0x82b364
0083415c  24 e0 9d e5                                      ldr lr, [sp, #0x24]
00834160  70 11 9f e5                                      ldr r1, [pc, #0x170]
00834164  08 30 96 e5                                      ldr r3, [r6, #8]
00834168  10 e0 8d e5                                      str lr, [sp, #0x10]
0083416c  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00834170  07 00 a0 e1                                      mov r0, r7
00834174  01 10 8f e0                                      add r1, pc, r1
00834178  0b 20 a0 e3                                      mov r2, #0xb
0083417c  00 05 8d e8                                      stm sp, {r8, sl}
00834180  08 90 8d e5                                      str sb, [sp, #8]
00834184  0c b0 8d e5                                      str fp, [sp, #0xc]
00834188  14 e0 8d e5                                      str lr, [sp, #0x14]
0083418c  54 6a eb eb                                      bl #0x30eae4
00834190  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00834194  00 00 5c e3                                      cmp ip, #0
00834198  0e 00 00 0a                                      beq #0x8341d8
0083419c  42 8d 8d e2                                      add r8, sp, #0x1080
008341a0  34 80 88 e2                                      add r8, r8, #0x34
008341a4  20 10 9d e5                                      ldr r1, [sp, #0x20]
008341a8  80 20 a0 e3                                      mov r2, #0x80
008341ac  08 00 a0 e1                                      mov r0, r8
008341b0  aa 68 eb eb                                      bl #0x30e460
008341b4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
008341b8  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
008341bc  08 00 a0 e1                                      mov r0, r8
008341c0  0c 20 a0 e1                                      mov r2, ip
008341c4  01 10 8f e0                                      add r1, pc, r1
008341c8  45 6a eb eb                                      bl #0x30eae4
008341cc  07 00 a0 e1                                      mov r0, r7
008341d0  08 10 a0 e1                                      mov r1, r8
008341d4  57 dc ff eb                                      bl #0x82b338
008341d8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
008341dc  00 00 51 e3                                      cmp r1, #0
008341e0  0d 00 00 0a                                      beq #0x83421c
008341e4  42 8d 8d e2                                      add r8, sp, #0x1080
008341e8  34 80 88 e2                                      add r8, r8, #0x34
008341ec  00 10 a0 e3                                      mov r1, #0
008341f0  80 20 a0 e3                                      mov r2, #0x80
008341f4  08 00 a0 e1                                      mov r0, r8
008341f8  98 68 eb eb                                      bl #0x30e460
008341fc  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
00834200  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00834204  08 00 a0 e1                                      mov r0, r8
00834208  01 10 8f e0                                      add r1, pc, r1
0083420c  34 6a eb eb                                      bl #0x30eae4
00834210  07 00 a0 e1                                      mov r0, r7
00834214  08 10 a0 e1                                      mov r1, r8
00834218  46 dc ff eb                                      bl #0x82b338
0083421c  7e e7 ff eb                                      bl #0x82e01c
00834220  61 db ff eb                                      bl #0x82afac
00834224  00 00 50 e3                                      cmp r0, #0
00834228  17 00 00 1a                                      bne #0x83428c
0083422c  01 8a 8d e2                                      add r8, sp, #0x1000
00834230  34 80 88 e2                                      add r8, r8, #0x34
00834234  00 10 a0 e3                                      mov r1, #0
00834238  80 20 a0 e3                                      mov r2, #0x80
0083423c  08 00 a0 e1                                      mov r0, r8
00834240  86 68 eb eb                                      bl #0x30e460
00834244  98 10 9f e5                                      ldr r1, [pc, #0x98]
00834248  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0083424c  08 00 a0 e1                                      mov r0, r8
00834250  01 10 8f e0                                      add r1, pc, r1
00834254  22 6a eb eb                                      bl #0x30eae4
00834258  08 10 a0 e1                                      mov r1, r8
0083425c  07 00 a0 e1                                      mov r0, r7
00834260  34 dc ff eb                                      bl #0x82b338
00834264  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
00834268  07 10 a0 e1                                      mov r1, r7
0083426c  00 00 8f e0                                      add r0, pc, r0
00834270  43 dd ff eb                                      bl #0x82b784
00834274  06 00 a0 e1                                      mov r0, r6
00834278  07 10 a0 e1                                      mov r1, r7
0083427c  00 30 96 e5                                      ldr r3, [r6]
00834280  0f e0 a0 e1                                      mov lr, pc
00834284  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00834288  a3 ff ff ea                                      b #0x83411c
0083428c  42 8d 8d e2                                      add r8, sp, #0x1080
00834290  34 80 88 e2                                      add r8, r8, #0x34
00834294  00 10 a0 e3                                      mov r1, #0
00834298  80 20 a0 e3                                      mov r2, #0x80
0083429c  08 00 a0 e1                                      mov r0, r8
008342a0  6e 68 eb eb                                      bl #0x30e460
008342a4  5c e7 ff eb                                      bl #0x82e01c
008342a8  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
008342ac  00 20 a0 e1                                      mov r2, r0
008342b0  08 00 a0 e1                                      mov r0, r8
008342b4  01 10 8f e0                                      add r1, pc, r1
008342b8  09 6a eb eb                                      bl #0x30eae4
008342bc  07 00 a0 e1                                      mov r0, r7
008342c0  08 10 a0 e1                                      mov r1, r8
008342c4  1b dc ff eb                                      bl #0x82b338
008342c8  d7 ff ff ea                                      b #0x83422c
008342cc  0f 68 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008342d0  14 0a 16 00 ac 40 00 00 5c 92 0d 00 ac 91 0d 00  .byte 0x14, 0x0a, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x5c, 0x92, 0x0d, 0x00, 0xac, 0x91, 0x0d, 0x00
008342e0  90 91 0d 00 58 91 0d 00 94 91 0d 00 a4 8f 0d 00  .byte 0x90, 0x91, 0x0d, 0x00, 0x58, 0x91, 0x0d, 0x00, 0x94, 0x91, 0x0d, 0x00, 0xa4, 0x8f, 0x0d, 0x00

; FUNCTION 0x008342f0, declared_size=240, range_size=240, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin15OnUpdateFailureEi
; demangled: GLXPlayerLogin::OnUpdateFailure(int)
; decoder-mode: arm
008342f0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
008342f4  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
008342f8  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
008342fc  01 da 4d e2                                      sub sp, sp, #0x1000
00834300  04 40 8f e0                                      add r4, pc, r4
00834304  05 30 94 e7                                      ldr r3, [r4, r5]
00834308  0c d0 4d e2                                      sub sp, sp, #0xc
0083430c  01 60 a0 e1                                      mov r6, r1
00834310  00 30 93 e5                                      ldr r3, [r3]
00834314  01 1a 8d e2                                      add r1, sp, #0x1000
00834318  00 80 a0 e1                                      mov r8, r0
0083431c  04 30 81 e5                                      str r3, [r1, #4]
00834320  75 f5 ff eb                                      bl #0x8318fc
00834324  0b 00 56 e3                                      cmp r6, #0xb
00834328  00 70 a0 e1                                      mov r7, r0
0083432c  10 00 00 0a                                      beq #0x834374
00834330  04 30 98 e5                                      ldr r3, [r8, #4]
00834334  06 10 a0 e1                                      mov r1, r6
00834338  07 20 a0 e1                                      mov r2, r7
0083433c  03 00 a0 e1                                      mov r0, r3
00834340  00 30 93 e5                                      ldr r3, [r3]
00834344  0f e0 a0 e1                                      mov lr, pc
00834348  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0083434c  05 30 94 e7                                      ldr r3, [r4, r5]
00834350  01 1a 8d e2                                      add r1, sp, #0x1000
00834354  04 20 91 e5                                      ldr r2, [r1, #4]
00834358  00 30 93 e5                                      ldr r3, [r3]
0083435c  01 00 a0 e3                                      mov r0, #1
00834360  03 00 52 e1                                      cmp r2, r3
00834364  19 00 00 1a                                      bne #0x8343d0
00834368  0c d0 8d e2                                      add sp, sp, #0xc
0083436c  01 da 8d e2                                      add sp, sp, #0x1000
00834370  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00834374  30 00 50 e3                                      cmp r0, #0x30
00834378  ec ff ff 1a                                      bne #0x834330
0083437c  58 10 9f e5                                      ldr r1, [pc, #0x58]
00834380  08 00 a0 e1                                      mov r0, r8
00834384  01 10 8f e0                                      add r1, pc, r1
00834388  37 f5 ff eb                                      bl #0x83186c
0083438c  00 00 50 e3                                      cmp r0, #0
00834390  e6 ff ff 0a                                      beq #0x834330
00834394  10 00 a0 e3                                      mov r0, #0x10
00834398  4c 67 eb eb                                      bl #0x30e0d0
0083439c  10 20 a0 e3                                      mov r2, #0x10
008343a0  84 00 88 e5                                      str r0, [r8, #0x84]
008343a4  00 10 a0 e3                                      mov r1, #0
008343a8  ed db ff eb                                      bl #0x82b364
008343ac  08 10 8d e2                                      add r1, sp, #8
008343b0  04 10 41 e2                                      sub r1, r1, #4
008343b4  08 00 a0 e1                                      mov r0, r8
008343b8  84 a0 98 e5                                      ldr sl, [r8, #0x84]
008343bc  e0 f4 ff eb                                      bl #0x831744
008343c0  00 10 a0 e1                                      mov r1, r0
008343c4  0a 00 a0 e1                                      mov r0, sl
008343c8  dc db ff eb                                      bl #0x82b340
008343cc  d7 ff ff ea                                      b #0x834330
008343d0  ce 67 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008343d4  90 07 16 00 ac 40 00 00 44 32 0b 00              .byte 0x90, 0x07, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0x44, 0x32, 0x0b, 0x00

; FUNCTION 0x008343e0, declared_size=24, range_size=24, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin6UpdateEv
; demangled: GLXPlayerLogin::Update()
; decoder-mode: arm
008343e0  10 40 2d e9                                      push {r4, lr}
008343e4  00 40 a0 e1                                      mov r4, r0
008343e8  6b fd ff eb                                      bl #0x83399c
008343ec  04 00 a0 e1                                      mov r0, r4
008343f0  10 40 bd e8                                      pop {r4, lr}
008343f4  80 f6 ff ea                                      b #0x831dfc

; FUNCTION 0x008343f8, declared_size=168, range_size=168, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin16clearProductInfoEv
; demangled: GLXPlayerLogin::clearProductInfo()
; decoder-mode: arm
008343f8  70 40 2d e9                                      push {r4, r5, r6, lr}
008343fc  00 50 a0 e1                                      mov r5, r0
00834400  68 00 90 e5                                      ldr r0, [r0, #0x68]
00834404  00 00 50 e3                                      cmp r0, #0
00834408  02 00 00 0a                                      beq #0x834418
0083440c  a7 67 eb eb                                      bl #0x30e2b0
00834410  00 30 a0 e3                                      mov r3, #0
00834414  68 30 85 e5                                      str r3, [r5, #0x68]
00834418  6c 00 95 e5                                      ldr r0, [r5, #0x6c]
0083441c  00 00 50 e3                                      cmp r0, #0
00834420  02 00 00 0a                                      beq #0x834430
00834424  a1 67 eb eb                                      bl #0x30e2b0
00834428  00 30 a0 e3                                      mov r3, #0
0083442c  6c 30 85 e5                                      str r3, [r5, #0x6c]
00834430  70 30 95 e5                                      ldr r3, [r5, #0x70]
00834434  00 00 53 e3                                      cmp r3, #0
00834438  15 00 00 0a                                      beq #0x834494
0083443c  64 20 95 e5                                      ldr r2, [r5, #0x64]
00834440  00 00 52 e3                                      cmp r2, #0
00834444  0e 00 00 da                                      ble #0x834484
00834448  00 40 a0 e3                                      mov r4, #0
0083444c  04 60 a0 e1                                      mov r6, r4
00834450  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00834454  00 00 50 e3                                      cmp r0, #0
00834458  04 00 00 0a                                      beq #0x834470
0083445c  15 67 eb eb                                      bl #0x30e0b8
00834460  70 30 95 e5                                      ldr r3, [r5, #0x70]
00834464  04 61 83 e7                                      str r6, [r3, r4, lsl #2]
00834468  64 20 95 e5                                      ldr r2, [r5, #0x64]
0083446c  70 30 95 e5                                      ldr r3, [r5, #0x70]
00834470  01 40 84 e2                                      add r4, r4, #1
00834474  04 00 52 e1                                      cmp r2, r4
00834478  f4 ff ff ca                                      bgt #0x834450
0083447c  00 00 53 e3                                      cmp r3, #0
00834480  01 00 00 0a                                      beq #0x83448c
00834484  03 00 a0 e1                                      mov r0, r3
00834488  0a 67 eb eb                                      bl #0x30e0b8
0083448c  00 30 a0 e3                                      mov r3, #0
00834490  70 30 85 e5                                      str r3, [r5, #0x70]
00834494  00 30 a0 e3                                      mov r3, #0
00834498  64 30 85 e5                                      str r3, [r5, #0x64]
0083449c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008344a0, declared_size=440, range_size=440, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin21processGetProductInfoEPc
; demangled: GLXPlayerLogin::processGetProductInfo(char*)
; decoder-mode: arm
008344a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008344a4  a4 a1 9f e5                                      ldr sl, [pc, #0x1a4]
008344a8  a4 91 9f e5                                      ldr sb, [pc, #0x1a4]
008344ac  87 df 4d e2                                      sub sp, sp, #0x21c
008344b0  0a a0 8f e0                                      add sl, pc, sl
008344b4  09 30 9a e7                                      ldr r3, [sl, sb]
008344b8  00 80 51 e2                                      subs r8, r1, #0
008344bc  00 50 a0 e1                                      mov r5, r0
008344c0  00 30 93 e5                                      ldr r3, [r3]
008344c4  14 32 8d e5                                      str r3, [sp, #0x214]
008344c8  58 00 00 0a                                      beq #0x834630
008344cc  08 00 a0 e1                                      mov r0, r8
008344d0  b5 da ff eb                                      bl #0x82afac
008344d4  00 00 50 e3                                      cmp r0, #0
008344d8  54 00 00 da                                      ble #0x834630
008344dc  05 00 a0 e1                                      mov r0, r5
008344e0  c4 ff ff eb                                      bl #0x8343f8
008344e4  64 30 95 e5                                      ldr r3, [r5, #0x64]
008344e8  00 40 a0 e3                                      mov r4, #0
008344ec  01 30 83 e2                                      add r3, r3, #1
008344f0  64 30 85 e5                                      str r3, [r5, #0x64]
008344f4  05 00 00 ea                                      b #0x834510
008344f8  d4 30 98 e1                                      ldrsb r3, [r8, r4]
008344fc  01 40 84 e2                                      add r4, r4, #1
00834500  7c 00 53 e3                                      cmp r3, #0x7c
00834504  64 30 95 05                                      ldreq r3, [r5, #0x64]
00834508  01 30 83 02                                      addeq r3, r3, #1
0083450c  64 30 85 05                                      streq r3, [r5, #0x64]
00834510  08 00 a0 e1                                      mov r0, r8
00834514  a4 da ff eb                                      bl #0x82afac
00834518  00 00 54 e1                                      cmp r4, r0
0083451c  f5 ff ff ba                                      blt #0x8344f8
00834520  64 00 95 e5                                      ldr r0, [r5, #0x64]
00834524  00 01 a0 e1                                      lsl r0, r0, #2
00834528  e8 66 eb eb                                      bl #0x30e0d0
0083452c  64 30 95 e5                                      ldr r3, [r5, #0x64]
00834530  6c 00 85 e5                                      str r0, [r5, #0x6c]
00834534  03 01 a0 e1                                      lsl r0, r3, #2
00834538  e4 66 eb eb                                      bl #0x30e0d0
0083453c  64 30 95 e5                                      ldr r3, [r5, #0x64]
00834540  70 00 85 e5                                      str r0, [r5, #0x70]
00834544  00 00 53 e3                                      cmp r3, #0
00834548  38 00 00 da                                      ble #0x834630
0083454c  00 40 a0 e3                                      mov r4, #0
00834550  04 70 8d e2                                      add r7, sp, #4
00834554  81 6f 8d e2                                      add r6, sp, #0x204
00834558  07 00 a0 e1                                      mov r0, r7
0083455c  00 10 a0 e3                                      mov r1, #0
00834560  02 2c a0 e3                                      mov r2, #0x200
00834564  7e db ff eb                                      bl #0x82b364
00834568  04 20 a0 e1                                      mov r2, r4
0083456c  7c 30 a0 e3                                      mov r3, #0x7c
00834570  07 10 a0 e1                                      mov r1, r7
00834574  08 00 a0 e1                                      mov r0, r8
00834578  d8 d9 ff eb                                      bl #0x82ace0
0083457c  06 00 a0 e1                                      mov r0, r6
00834580  10 20 a0 e3                                      mov r2, #0x10
00834584  00 10 a0 e3                                      mov r1, #0
00834588  75 db ff eb                                      bl #0x82b364
0083458c  5e 30 a0 e3                                      mov r3, #0x5e
00834590  06 10 a0 e1                                      mov r1, r6
00834594  00 20 a0 e3                                      mov r2, #0
00834598  07 00 a0 e1                                      mov r0, r7
0083459c  cf d9 ff eb                                      bl #0x82ace0
008345a0  06 00 a0 e1                                      mov r0, r6
008345a4  68 b0 95 e5                                      ldr fp, [r5, #0x68]
008345a8  5c db ff eb                                      bl #0x82b320
008345ac  10 20 a0 e3                                      mov r2, #0x10
008345b0  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
008345b4  00 10 a0 e3                                      mov r1, #0
008345b8  06 00 a0 e1                                      mov r0, r6
008345bc  68 db ff eb                                      bl #0x82b364
008345c0  06 10 a0 e1                                      mov r1, r6
008345c4  5e 30 a0 e3                                      mov r3, #0x5e
008345c8  01 20 a0 e3                                      mov r2, #1
008345cc  07 00 a0 e1                                      mov r0, r7
008345d0  c2 d9 ff eb                                      bl #0x82ace0
008345d4  06 00 a0 e1                                      mov r0, r6
008345d8  6c b0 95 e5                                      ldr fp, [r5, #0x6c]
008345dc  4f db ff eb                                      bl #0x82b320
008345e0  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
008345e4  01 0c a0 e3                                      mov r0, #0x100
008345e8  70 b0 95 e5                                      ldr fp, [r5, #0x70]
008345ec  b7 66 eb eb                                      bl #0x30e0d0
008345f0  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
008345f4  70 30 95 e5                                      ldr r3, [r5, #0x70]
008345f8  00 10 a0 e3                                      mov r1, #0
008345fc  01 2c a0 e3                                      mov r2, #0x100
00834600  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00834604  56 db ff eb                                      bl #0x82b364
00834608  70 30 95 e5                                      ldr r3, [r5, #0x70]
0083460c  07 00 a0 e1                                      mov r0, r7
00834610  02 20 a0 e3                                      mov r2, #2
00834614  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
00834618  5e 30 a0 e3                                      mov r3, #0x5e
0083461c  af d9 ff eb                                      bl #0x82ace0
00834620  64 30 95 e5                                      ldr r3, [r5, #0x64]
00834624  01 40 84 e2                                      add r4, r4, #1
00834628  04 00 53 e1                                      cmp r3, r4
0083462c  c9 ff ff ca                                      bgt #0x834558
00834630  09 30 9a e7                                      ldr r3, [sl, sb]
00834634  14 22 9d e5                                      ldr r2, [sp, #0x214]
00834638  00 30 93 e5                                      ldr r3, [r3]
0083463c  03 00 52 e1                                      cmp r2, r3
00834640  01 00 00 1a                                      bne #0x83464c
00834644  87 df 8d e2                                      add sp, sp, #0x21c
00834648  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0083464c  2f 67 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00834650  e0 05 16 00 ac 40 00 00                          .byte 0xe0, 0x05, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00834658, declared_size=720, range_size=720, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLogin15OnUpdateSuccessEi
; demangled: GLXPlayerLogin::OnUpdateSuccess(int)
; decoder-mode: arm
00834658  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0083465c  a8 42 9f e5                                      ldr r4, [pc, #0x2a8]
00834660  a8 52 9f e5                                      ldr r5, [pc, #0x2a8]
00834664  01 da 4d e2                                      sub sp, sp, #0x1000
00834668  04 40 8f e0                                      add r4, pc, r4
0083466c  05 30 94 e7                                      ldr r3, [r4, r5]
00834670  0c d0 4d e2                                      sub sp, sp, #0xc
00834674  01 2a 8d e2                                      add r2, sp, #0x1000
00834678  00 30 93 e5                                      ldr r3, [r3]
0083467c  0f 00 51 e3                                      cmp r1, #0xf
00834680  01 80 a0 e1                                      mov r8, r1
00834684  00 70 a0 e1                                      mov r7, r0
00834688  04 30 82 e5                                      str r3, [r2, #4]
0083468c  11 00 00 0a                                      beq #0x8346d8
00834690  11 00 51 e3                                      cmp r1, #0x11
00834694  5b 00 00 0a                                      beq #0x834808
00834698  10 00 51 e3                                      cmp r1, #0x10
0083469c  68 00 00 0a                                      beq #0x834844
008346a0  53 00 51 e3                                      cmp r1, #0x53
008346a4  73 00 00 0a                                      beq #0x834878
008346a8  5f 00 51 e3                                      cmp r1, #0x5f
008346ac  4f 00 00 0a                                      beq #0x8347f0
008346b0  b4 f3 ff eb                                      bl #0x831588
008346b4  05 30 94 e7                                      ldr r3, [r4, r5]
008346b8  01 1a 8d e2                                      add r1, sp, #0x1000
008346bc  04 20 91 e5                                      ldr r2, [r1, #4]
008346c0  00 30 93 e5                                      ldr r3, [r3]
008346c4  03 00 52 e1                                      cmp r2, r3
008346c8  8e 00 00 1a                                      bne #0x834908
008346cc  0c d0 8d e2                                      add sp, sp, #0xc
008346d0  01 da 8d e2                                      add sp, sp, #0x1000
008346d4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
008346d8  34 12 9f e5                                      ldr r1, [pc, #0x234]
008346dc  01 10 8f e0                                      add r1, pc, r1
008346e0  61 f4 ff eb                                      bl #0x83186c
008346e4  00 00 50 e3                                      cmp r0, #0
008346e8  68 00 00 0a                                      beq #0x834890
008346ec  08 60 8d e2                                      add r6, sp, #8
008346f0  04 60 46 e2                                      sub r6, r6, #4
008346f4  06 00 a0 e1                                      mov r0, r6
008346f8  00 10 a0 e3                                      mov r1, #0
008346fc  01 2c a0 e3                                      mov r2, #0x100
00834700  17 db ff eb                                      bl #0x82b364
00834704  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00834708  00 00 50 e3                                      cmp r0, #0
0083470c  02 00 00 0a                                      beq #0x83471c
00834710  e6 66 eb eb                                      bl #0x30e2b0
00834714  00 30 a0 e3                                      mov r3, #0
00834718  0c 30 87 e5                                      str r3, [r7, #0xc]
0083471c  06 10 a0 e1                                      mov r1, r6
00834720  07 00 a0 e1                                      mov r0, r7
00834724  06 f4 ff eb                                      bl #0x831744
00834728  9c dc ff eb                                      bl #0x82b9a0
0083472c  e4 11 9f e5                                      ldr r1, [pc, #0x1e4]
00834730  0c 00 87 e5                                      str r0, [r7, #0xc]
00834734  07 00 a0 e1                                      mov r0, r7
00834738  01 10 8f e0                                      add r1, pc, r1
0083473c  4a f4 ff eb                                      bl #0x83186c
00834740  00 00 50 e3                                      cmp r0, #0
00834744  6c 00 00 0a                                      beq #0x8348fc
00834748  01 2c a0 e3                                      mov r2, #0x100
0083474c  06 00 a0 e1                                      mov r0, r6
00834750  00 10 a0 e3                                      mov r1, #0
00834754  02 db ff eb                                      bl #0x82b364
00834758  06 10 a0 e1                                      mov r1, r6
0083475c  07 00 a0 e1                                      mov r0, r7
00834760  f7 f3 ff eb                                      bl #0x831744
00834764  ed da ff eb                                      bl #0x82b320
00834768  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
0083476c  3c 00 87 e5                                      str r0, [r7, #0x3c]
00834770  07 00 a0 e1                                      mov r0, r7
00834774  01 10 8f e0                                      add r1, pc, r1
00834778  3b f4 ff eb                                      bl #0x83186c
0083477c  00 00 50 e3                                      cmp r0, #0
00834780  57 00 00 1a                                      bne #0x8348e4
00834784  94 11 9f e5                                      ldr r1, [pc, #0x194]
00834788  07 00 a0 e1                                      mov r0, r7
0083478c  01 10 8f e0                                      add r1, pc, r1
00834790  35 f4 ff eb                                      bl #0x83186c
00834794  00 00 50 e3                                      cmp r0, #0
00834798  4b 00 00 1a                                      bne #0x8348cc
0083479c  80 11 9f e5                                      ldr r1, [pc, #0x180]
008347a0  07 00 a0 e1                                      mov r0, r7
008347a4  01 10 8f e0                                      add r1, pc, r1
008347a8  2f f4 ff eb                                      bl #0x83186c
008347ac  00 00 50 e3                                      cmp r0, #0
008347b0  3f 00 00 1a                                      bne #0x8348b4
008347b4  04 a0 97 e5                                      ldr sl, [r7, #4]
008347b8  01 60 a0 e3                                      mov r6, #1
008347bc  24 80 97 e5                                      ldr r8, [r7, #0x24]
008347c0  40 60 c7 e5                                      strb r6, [r7, #0x40]
008347c4  00 30 9a e5                                      ldr r3, [sl]
008347c8  08 00 a0 e1                                      mov r0, r8
008347cc  08 70 93 e5                                      ldr r7, [r3, #8]
008347d0  f5 d9 ff eb                                      bl #0x82afac
008347d4  08 20 a0 e1                                      mov r2, r8
008347d8  00 30 a0 e1                                      mov r3, r0
008347dc  0f 10 a0 e3                                      mov r1, #0xf
008347e0  0a 00 a0 e1                                      mov r0, sl
008347e4  37 ff 2f e1                                      blx r7
008347e8  06 00 a0 e1                                      mov r0, r6
008347ec  b0 ff ff ea                                      b #0x8346b4
008347f0  24 10 90 e5                                      ldr r1, [r0, #0x24]
008347f4  29 ff ff eb                                      bl #0x8344a0
008347f8  07 00 a0 e1                                      mov r0, r7
008347fc  08 10 a0 e1                                      mov r1, r8
00834800  60 f3 ff eb                                      bl #0x831588
00834804  aa ff ff ea                                      b #0x8346b4
00834808  04 a0 90 e5                                      ldr sl, [r0, #4]
0083480c  00 30 a0 e3                                      mov r3, #0
00834810  40 30 c0 e5                                      strb r3, [r0, #0x40]
00834814  24 70 90 e5                                      ldr r7, [r0, #0x24]
00834818  00 30 9a e5                                      ldr r3, [sl]
0083481c  07 00 a0 e1                                      mov r0, r7
00834820  08 60 93 e5                                      ldr r6, [r3, #8]
00834824  e0 d9 ff eb                                      bl #0x82afac
00834828  08 10 a0 e1                                      mov r1, r8
0083482c  00 30 a0 e1                                      mov r3, r0
00834830  07 20 a0 e1                                      mov r2, r7
00834834  0a 00 a0 e1                                      mov r0, sl
00834838  36 ff 2f e1                                      blx r6
0083483c  01 00 a0 e3                                      mov r0, #1
00834840  9b ff ff ea                                      b #0x8346b4
00834844  08 60 8d e2                                      add r6, sp, #8
00834848  04 60 46 e2                                      sub r6, r6, #4
0083484c  06 10 a0 e1                                      mov r1, r6
00834850  bb f3 ff eb                                      bl #0x831744
00834854  06 10 a0 e1                                      mov r1, r6
00834858  07 00 a0 e1                                      mov r0, r7
0083485c  b8 f3 ff eb                                      bl #0x831744
00834860  ae da ff eb                                      bl #0x82b320
00834864  08 10 a0 e1                                      mov r1, r8
00834868  3c 00 87 e5                                      str r0, [r7, #0x3c]
0083486c  07 00 a0 e1                                      mov r0, r7
00834870  44 f3 ff eb                                      bl #0x831588
00834874  8e ff ff ea                                      b #0x8346b4
00834878  24 10 90 e5                                      ldr r1, [r0, #0x24]
0083487c  80 fc ff eb                                      bl #0x833a84
00834880  07 00 a0 e1                                      mov r0, r7
00834884  08 10 a0 e1                                      mov r1, r8
00834888  3e f3 ff eb                                      bl #0x831588
0083488c  88 ff ff ea                                      b #0x8346b4
00834890  04 30 97 e5                                      ldr r3, [r7, #4]
00834894  08 10 a0 e1                                      mov r1, r8
00834898  03 00 a0 e1                                      mov r0, r3
0083489c  28 20 a0 e3                                      mov r2, #0x28
008348a0  00 30 93 e5                                      ldr r3, [r3]
008348a4  0f e0 a0 e1                                      mov lr, pc
008348a8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
008348ac  01 00 a0 e3                                      mov r0, #1
008348b0  7f ff ff ea                                      b #0x8346b4
008348b4  06 10 a0 e1                                      mov r1, r6
008348b8  07 00 a0 e1                                      mov r0, r7
008348bc  a0 f3 ff eb                                      bl #0x831744
008348c0  36 dc ff eb                                      bl #0x82b9a0
008348c4  80 00 87 e5                                      str r0, [r7, #0x80]
008348c8  b9 ff ff ea                                      b #0x8347b4
008348cc  06 10 a0 e1                                      mov r1, r6
008348d0  07 00 a0 e1                                      mov r0, r7
008348d4  9a f3 ff eb                                      bl #0x831744
008348d8  30 dc ff eb                                      bl #0x82b9a0
008348dc  74 00 87 e5                                      str r0, [r7, #0x74]
008348e0  ad ff ff ea                                      b #0x83479c
008348e4  06 10 a0 e1                                      mov r1, r6
008348e8  07 00 a0 e1                                      mov r0, r7
008348ec  94 f3 ff eb                                      bl #0x831744
008348f0  2a dc ff eb                                      bl #0x82b9a0
008348f4  78 00 87 e5                                      str r0, [r7, #0x78]
008348f8  a1 ff ff ea                                      b #0x834784
008348fc  04 30 97 e5                                      ldr r3, [r7, #4]
00834900  0f 10 a0 e3                                      mov r1, #0xf
00834904  e3 ff ff ea                                      b #0x834898
00834908  80 66 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0083490c  28 04 16 00 ac 40 00 00 ec 2e 0b 00 f8 1b 0b 00  .byte 0x28, 0x04, 0x16, 0x00, 0xac, 0x40, 0x00, 0x00, 0xec, 0x2e, 0x0b, 0x00, 0xf8, 0x1b, 0x0b, 0x00
0083491c  cc 8c 0d 00 c4 e3 08 00 a4 8c 0d 00              .byte 0xcc, 0x8c, 0x0d, 0x00, 0xc4, 0xe3, 0x08, 0x00, 0xa4, 0x8c, 0x0d, 0x00

; FUNCTION 0x00834928, declared_size=328, range_size=328, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLoginD1Ev
; demangled: GLXPlayerLogin::~GLXPlayerLogin()
; decoder-mode: arm
00834928  70 40 2d e9                                      push {r4, r5, r6, lr}
0083492c  34 31 9f e5                                      ldr r3, [pc, #0x134]
00834930  34 21 9f e5                                      ldr r2, [pc, #0x134]
00834934  00 40 a0 e1                                      mov r4, r0
00834938  03 30 8f e0                                      add r3, pc, r3
0083493c  48 00 90 e5                                      ldr r0, [r0, #0x48]
00834940  02 20 93 e7                                      ldr r2, [r3, r2]
00834944  00 50 a0 e3                                      mov r5, #0
00834948  05 00 50 e1                                      cmp r0, r5
0083494c  08 20 82 e2                                      add r2, r2, #8
00834950  00 20 84 e5                                      str r2, [r4]
00834954  40 50 c4 e5                                      strb r5, [r4, #0x40]
00834958  3c 50 84 e5                                      str r5, [r4, #0x3c]
0083495c  44 50 84 e5                                      str r5, [r4, #0x44]
00834960  01 00 00 0a                                      beq #0x83496c
00834964  51 66 eb eb                                      bl #0x30e2b0
00834968  48 50 84 e5                                      str r5, [r4, #0x48]
0083496c  50 00 94 e5                                      ldr r0, [r4, #0x50]
00834970  00 00 50 e3                                      cmp r0, #0
00834974  02 00 00 0a                                      beq #0x834984
00834978  4c 66 eb eb                                      bl #0x30e2b0
0083497c  00 30 a0 e3                                      mov r3, #0
00834980  50 30 84 e5                                      str r3, [r4, #0x50]
00834984  58 00 94 e5                                      ldr r0, [r4, #0x58]
00834988  00 00 50 e3                                      cmp r0, #0
0083498c  02 00 00 0a                                      beq #0x83499c
00834990  46 66 eb eb                                      bl #0x30e2b0
00834994  00 30 a0 e3                                      mov r3, #0
00834998  58 30 84 e5                                      str r3, [r4, #0x58]
0083499c  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
008349a0  00 00 50 e3                                      cmp r0, #0
008349a4  02 00 00 0a                                      beq #0x8349b4
008349a8  40 66 eb eb                                      bl #0x30e2b0
008349ac  00 30 a0 e3                                      mov r3, #0
008349b0  5c 30 84 e5                                      str r3, [r4, #0x5c]
008349b4  60 00 94 e5                                      ldr r0, [r4, #0x60]
008349b8  00 00 50 e3                                      cmp r0, #0
008349bc  02 00 00 0a                                      beq #0x8349cc
008349c0  3a 66 eb eb                                      bl #0x30e2b0
008349c4  00 30 a0 e3                                      mov r3, #0
008349c8  60 30 84 e5                                      str r3, [r4, #0x60]
008349cc  78 00 94 e5                                      ldr r0, [r4, #0x78]
008349d0  00 00 50 e3                                      cmp r0, #0
008349d4  02 00 00 0a                                      beq #0x8349e4
008349d8  34 66 eb eb                                      bl #0x30e2b0
008349dc  00 30 a0 e3                                      mov r3, #0
008349e0  78 30 84 e5                                      str r3, [r4, #0x78]
008349e4  74 00 94 e5                                      ldr r0, [r4, #0x74]
008349e8  00 00 50 e3                                      cmp r0, #0
008349ec  02 00 00 0a                                      beq #0x8349fc
008349f0  2e 66 eb eb                                      bl #0x30e2b0
008349f4  00 30 a0 e3                                      mov r3, #0
008349f8  74 30 84 e5                                      str r3, [r4, #0x74]
008349fc  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
00834a00  00 00 50 e3                                      cmp r0, #0
00834a04  02 00 00 0a                                      beq #0x834a14
00834a08  28 66 eb eb                                      bl #0x30e2b0
00834a0c  00 30 a0 e3                                      mov r3, #0
00834a10  7c 30 84 e5                                      str r3, [r4, #0x7c]
00834a14  80 00 94 e5                                      ldr r0, [r4, #0x80]
00834a18  00 00 50 e3                                      cmp r0, #0
00834a1c  02 00 00 0a                                      beq #0x834a2c
00834a20  22 66 eb eb                                      bl #0x30e2b0
00834a24  00 30 a0 e3                                      mov r3, #0
00834a28  80 30 84 e5                                      str r3, [r4, #0x80]
00834a2c  84 00 94 e5                                      ldr r0, [r4, #0x84]
00834a30  00 00 50 e3                                      cmp r0, #0
00834a34  02 00 00 0a                                      beq #0x834a44
00834a38  9e 65 eb eb                                      bl #0x30e0b8
00834a3c  00 30 a0 e3                                      mov r3, #0
00834a40  84 30 84 e5                                      str r3, [r4, #0x84]
00834a44  00 30 a0 e3                                      mov r3, #0
00834a48  54 30 84 e5                                      str r3, [r4, #0x54]
00834a4c  4c 30 84 e5                                      str r3, [r4, #0x4c]
00834a50  04 00 a0 e1                                      mov r0, r4
00834a54  67 fe ff eb                                      bl #0x8343f8
00834a58  04 00 a0 e1                                      mov r0, r4
00834a5c  67 f5 ff eb                                      bl #0x832000
00834a60  04 00 a0 e1                                      mov r0, r4
00834a64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00834a68  58 01 16 00 9c 36 00 00                          .byte 0x58, 0x01, 0x16, 0x00, 0x9c, 0x36, 0x00, 0x00

; FUNCTION 0x00834a70, declared_size=28, range_size=28, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLoginD0Ev
; demangled: GLXPlayerLogin::~GLXPlayerLogin()
; decoder-mode: arm
00834a70  10 40 2d e9                                      push {r4, lr}
00834a74  00 40 a0 e1                                      mov r4, r0
00834a78  aa ff ff eb                                      bl #0x834928
00834a7c  04 00 a0 e1                                      mov r0, r4
00834a80  0a 66 eb eb                                      bl #0x30e2b0
00834a84  04 00 a0 e1                                      mov r0, r4
00834a88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00834a8c, declared_size=328, range_size=328, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLoginD2Ev
; demangled: GLXPlayerLogin::~GLXPlayerLogin()
; decoder-mode: arm
00834a8c  70 40 2d e9                                      push {r4, r5, r6, lr}
00834a90  34 31 9f e5                                      ldr r3, [pc, #0x134]
00834a94  34 21 9f e5                                      ldr r2, [pc, #0x134]
00834a98  00 40 a0 e1                                      mov r4, r0
00834a9c  03 30 8f e0                                      add r3, pc, r3
00834aa0  48 00 90 e5                                      ldr r0, [r0, #0x48]
00834aa4  02 20 93 e7                                      ldr r2, [r3, r2]
00834aa8  00 50 a0 e3                                      mov r5, #0
00834aac  05 00 50 e1                                      cmp r0, r5
00834ab0  08 20 82 e2                                      add r2, r2, #8
00834ab4  00 20 84 e5                                      str r2, [r4]
00834ab8  40 50 c4 e5                                      strb r5, [r4, #0x40]
00834abc  3c 50 84 e5                                      str r5, [r4, #0x3c]
00834ac0  44 50 84 e5                                      str r5, [r4, #0x44]
00834ac4  01 00 00 0a                                      beq #0x834ad0
00834ac8  f8 65 eb eb                                      bl #0x30e2b0
00834acc  48 50 84 e5                                      str r5, [r4, #0x48]
00834ad0  50 00 94 e5                                      ldr r0, [r4, #0x50]
00834ad4  00 00 50 e3                                      cmp r0, #0
00834ad8  02 00 00 0a                                      beq #0x834ae8
00834adc  f3 65 eb eb                                      bl #0x30e2b0
00834ae0  00 30 a0 e3                                      mov r3, #0
00834ae4  50 30 84 e5                                      str r3, [r4, #0x50]
00834ae8  58 00 94 e5                                      ldr r0, [r4, #0x58]
00834aec  00 00 50 e3                                      cmp r0, #0
00834af0  02 00 00 0a                                      beq #0x834b00
00834af4  ed 65 eb eb                                      bl #0x30e2b0
00834af8  00 30 a0 e3                                      mov r3, #0
00834afc  58 30 84 e5                                      str r3, [r4, #0x58]
00834b00  5c 00 94 e5                                      ldr r0, [r4, #0x5c]
00834b04  00 00 50 e3                                      cmp r0, #0
00834b08  02 00 00 0a                                      beq #0x834b18
00834b0c  e7 65 eb eb                                      bl #0x30e2b0
00834b10  00 30 a0 e3                                      mov r3, #0
00834b14  5c 30 84 e5                                      str r3, [r4, #0x5c]
00834b18  60 00 94 e5                                      ldr r0, [r4, #0x60]
00834b1c  00 00 50 e3                                      cmp r0, #0
00834b20  02 00 00 0a                                      beq #0x834b30
00834b24  e1 65 eb eb                                      bl #0x30e2b0
00834b28  00 30 a0 e3                                      mov r3, #0
00834b2c  60 30 84 e5                                      str r3, [r4, #0x60]
00834b30  78 00 94 e5                                      ldr r0, [r4, #0x78]
00834b34  00 00 50 e3                                      cmp r0, #0
00834b38  02 00 00 0a                                      beq #0x834b48
00834b3c  db 65 eb eb                                      bl #0x30e2b0
00834b40  00 30 a0 e3                                      mov r3, #0
00834b44  78 30 84 e5                                      str r3, [r4, #0x78]
00834b48  74 00 94 e5                                      ldr r0, [r4, #0x74]
00834b4c  00 00 50 e3                                      cmp r0, #0
00834b50  02 00 00 0a                                      beq #0x834b60
00834b54  d5 65 eb eb                                      bl #0x30e2b0
00834b58  00 30 a0 e3                                      mov r3, #0
00834b5c  74 30 84 e5                                      str r3, [r4, #0x74]
00834b60  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
00834b64  00 00 50 e3                                      cmp r0, #0
00834b68  02 00 00 0a                                      beq #0x834b78
00834b6c  cf 65 eb eb                                      bl #0x30e2b0
00834b70  00 30 a0 e3                                      mov r3, #0
00834b74  7c 30 84 e5                                      str r3, [r4, #0x7c]
00834b78  80 00 94 e5                                      ldr r0, [r4, #0x80]
00834b7c  00 00 50 e3                                      cmp r0, #0
00834b80  02 00 00 0a                                      beq #0x834b90
00834b84  c9 65 eb eb                                      bl #0x30e2b0
00834b88  00 30 a0 e3                                      mov r3, #0
00834b8c  80 30 84 e5                                      str r3, [r4, #0x80]
00834b90  84 00 94 e5                                      ldr r0, [r4, #0x84]
00834b94  00 00 50 e3                                      cmp r0, #0
00834b98  02 00 00 0a                                      beq #0x834ba8
00834b9c  45 65 eb eb                                      bl #0x30e0b8
00834ba0  00 30 a0 e3                                      mov r3, #0
00834ba4  84 30 84 e5                                      str r3, [r4, #0x84]
00834ba8  00 30 a0 e3                                      mov r3, #0
00834bac  54 30 84 e5                                      str r3, [r4, #0x54]
00834bb0  4c 30 84 e5                                      str r3, [r4, #0x4c]
00834bb4  04 00 a0 e1                                      mov r0, r4
00834bb8  0e fe ff eb                                      bl #0x8343f8
00834bbc  04 00 a0 e1                                      mov r0, r4
00834bc0  0e f5 ff eb                                      bl #0x832000
00834bc4  04 00 a0 e1                                      mov r0, r4
00834bc8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00834bcc  f4 ff 15 00 9c 36 00 00                          .byte 0xf4, 0xff, 0x15, 0x00, 0x9c, 0x36, 0x00, 0x00

; FUNCTION 0x00834bd4, declared_size=172, range_size=172, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLoginC1Ev
; demangled: GLXPlayerLogin::GLXPlayerLogin()
; decoder-mode: arm
00834bd4  70 40 2d e9                                      push {r4, r5, r6, lr}
00834bd8  98 50 9f e5                                      ldr r5, [pc, #0x98]
00834bdc  00 40 a0 e1                                      mov r4, r0
00834be0  53 f5 ff eb                                      bl #0x832134
00834be4  90 30 9f e5                                      ldr r3, [pc, #0x90]
00834be8  05 50 8f e0                                      add r5, pc, r5
00834bec  04 00 a0 e1                                      mov r0, r4
00834bf0  03 30 95 e7                                      ldr r3, [r5, r3]
00834bf4  08 30 83 e2                                      add r3, r3, #8
00834bf8  00 30 84 e5                                      str r3, [r4]
00834bfc  70 f2 ff eb                                      bl #0x8315c4
00834c00  28 04 00 e3                                      movw r0, #0x428
00834c04  20 67 eb eb                                      bl #0x30e88c
00834c08  14 30 94 e5                                      ldr r3, [r4, #0x14]
00834c0c  10 10 94 e5                                      ldr r1, [r4, #0x10]
00834c10  18 20 94 e5                                      ldr r2, [r4, #0x18]
00834c14  00 50 a0 e1                                      mov r5, r0
00834c18  a3 e4 ff eb                                      bl #0x82deac
00834c1c  00 30 a0 e3                                      mov r3, #0
00834c20  20 50 84 e5                                      str r5, [r4, #0x20]
00834c24  84 30 84 e5                                      str r3, [r4, #0x84]
00834c28  40 30 c4 e5                                      strb r3, [r4, #0x40]
00834c2c  3c 30 84 e5                                      str r3, [r4, #0x3c]
00834c30  44 30 84 e5                                      str r3, [r4, #0x44]
00834c34  48 30 84 e5                                      str r3, [r4, #0x48]
00834c38  4c 30 84 e5                                      str r3, [r4, #0x4c]
00834c3c  50 30 84 e5                                      str r3, [r4, #0x50]
00834c40  54 30 84 e5                                      str r3, [r4, #0x54]
00834c44  58 30 84 e5                                      str r3, [r4, #0x58]
00834c48  5c 30 84 e5                                      str r3, [r4, #0x5c]
00834c4c  60 30 84 e5                                      str r3, [r4, #0x60]
00834c50  68 30 84 e5                                      str r3, [r4, #0x68]
00834c54  6c 30 84 e5                                      str r3, [r4, #0x6c]
00834c58  70 30 84 e5                                      str r3, [r4, #0x70]
00834c5c  64 30 84 e5                                      str r3, [r4, #0x64]
00834c60  78 30 84 e5                                      str r3, [r4, #0x78]
00834c64  74 30 84 e5                                      str r3, [r4, #0x74]
00834c68  7c 30 84 e5                                      str r3, [r4, #0x7c]
00834c6c  80 30 84 e5                                      str r3, [r4, #0x80]
00834c70  04 00 a0 e1                                      mov r0, r4
00834c74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00834c78  a8 fe 15 00 9c 36 00 00                          .byte 0xa8, 0xfe, 0x15, 0x00, 0x9c, 0x36, 0x00, 0x00

; FUNCTION 0x00834c80, declared_size=172, range_size=172, mode=arm
; class-group: GLXPlayerLogin
; alias: _ZN14GLXPlayerLoginC2Ev
; demangled: GLXPlayerLogin::GLXPlayerLogin()
; decoder-mode: arm
00834c80  70 40 2d e9                                      push {r4, r5, r6, lr}
00834c84  98 50 9f e5                                      ldr r5, [pc, #0x98]
00834c88  00 40 a0 e1                                      mov r4, r0
00834c8c  28 f5 ff eb                                      bl #0x832134
00834c90  90 30 9f e5                                      ldr r3, [pc, #0x90]
00834c94  05 50 8f e0                                      add r5, pc, r5
00834c98  04 00 a0 e1                                      mov r0, r4
00834c9c  03 30 95 e7                                      ldr r3, [r5, r3]
00834ca0  08 30 83 e2                                      add r3, r3, #8
00834ca4  00 30 84 e5                                      str r3, [r4]
00834ca8  45 f2 ff eb                                      bl #0x8315c4
00834cac  28 04 00 e3                                      movw r0, #0x428
00834cb0  f5 66 eb eb                                      bl #0x30e88c
00834cb4  14 30 94 e5                                      ldr r3, [r4, #0x14]
00834cb8  10 10 94 e5                                      ldr r1, [r4, #0x10]
00834cbc  18 20 94 e5                                      ldr r2, [r4, #0x18]
00834cc0  00 50 a0 e1                                      mov r5, r0
00834cc4  78 e4 ff eb                                      bl #0x82deac
00834cc8  00 30 a0 e3                                      mov r3, #0
00834ccc  20 50 84 e5                                      str r5, [r4, #0x20]
00834cd0  84 30 84 e5                                      str r3, [r4, #0x84]
00834cd4  40 30 c4 e5                                      strb r3, [r4, #0x40]
00834cd8  3c 30 84 e5                                      str r3, [r4, #0x3c]
00834cdc  44 30 84 e5                                      str r3, [r4, #0x44]
00834ce0  48 30 84 e5                                      str r3, [r4, #0x48]
00834ce4  4c 30 84 e5                                      str r3, [r4, #0x4c]
00834ce8  50 30 84 e5                                      str r3, [r4, #0x50]
00834cec  54 30 84 e5                                      str r3, [r4, #0x54]
00834cf0  58 30 84 e5                                      str r3, [r4, #0x58]
00834cf4  5c 30 84 e5                                      str r3, [r4, #0x5c]
00834cf8  60 30 84 e5                                      str r3, [r4, #0x60]
00834cfc  68 30 84 e5                                      str r3, [r4, #0x68]
00834d00  6c 30 84 e5                                      str r3, [r4, #0x6c]
00834d04  70 30 84 e5                                      str r3, [r4, #0x70]
00834d08  64 30 84 e5                                      str r3, [r4, #0x64]
00834d0c  78 30 84 e5                                      str r3, [r4, #0x78]
00834d10  74 30 84 e5                                      str r3, [r4, #0x74]
00834d14  7c 30 84 e5                                      str r3, [r4, #0x7c]
00834d18  80 30 84 e5                                      str r3, [r4, #0x80]
00834d1c  04 00 a0 e1                                      mov r0, r4
00834d20  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00834d24  fc fd 15 00 9c 36 00 00                          .byte 0xfc, 0xfd, 0x15, 0x00, 0x9c, 0x36, 0x00, 0x00
