; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00435a5c, declared_size=140, range_size=140, mode=arm
; class-group: MenuWorldMap::InputHandler
; alias: _ZN12MenuWorldMap12InputHandler4dragEbii
; demangled: MenuWorldMap::InputHandler::drag(bool, int, int)
; decoder-mode: arm
00435a5c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00435a60  74 40 9f e5                                      ldr r4, [pc, #0x74]
00435a64  01 80 a0 e1                                      mov r8, r1
00435a68  00 60 a0 e1                                      mov r6, r0
00435a6c  04 40 8f e0                                      add r4, pc, r4
00435a70  00 10 94 e5                                      ldr r1, [r4]
00435a74  02 50 a0 e1                                      mov r5, r2
00435a78  03 70 a0 e1                                      mov r7, r3
00435a7c  01 a0 11 e2                                      ands sl, r1, #1
00435a80  0c 00 00 0a                                      beq #0x435ab8
00435a84  00 00 58 e3                                      cmp r8, #0
00435a88  06 00 00 1a                                      bne #0x435aa8
00435a8c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00435a90  20 00 96 e5                                      ldr r0, [r6, #0x20]
00435a94  03 30 8f e0                                      add r3, pc, r3
00435a98  06 00 93 e9                                      ldmib r3, {r1, r2}
00435a9c  07 20 62 e0                                      rsb r2, r2, r7
00435aa0  05 10 61 e0                                      rsb r1, r1, r5
00435aa4  98 ff ff eb                                      bl #0x43590c
00435aa8  34 30 9f e5                                      ldr r3, [pc, #0x34]
00435aac  03 30 8f e0                                      add r3, pc, r3
00435ab0  a0 00 83 e9                                      stmib r3, {r5, r7}
00435ab4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00435ab8  04 00 a0 e1                                      mov r0, r4
00435abc  2a 63 fb eb                                      bl #0x30e76c
00435ac0  00 00 50 e3                                      cmp r0, #0
00435ac4  ee ff ff 0a                                      beq #0x435a84
00435ac8  08 a0 84 e5                                      str sl, [r4, #8]
00435acc  04 a0 84 e5                                      str sl, [r4, #4]
00435ad0  04 00 a0 e1                                      mov r0, r4
00435ad4  d8 63 fb eb                                      bl #0x30ea3c
00435ad8  e9 ff ff ea                                      b #0x435a84
; mapping-symbol data/literal pool
00435adc  78 ff 56 00 50 ff 56 00 38 ff 56 00              .byte 0x78, 0xff, 0x56, 0x00, 0x50, 0xff, 0x56, 0x00, 0x38, 0xff, 0x56, 0x00

; FUNCTION 0x00435d74, declared_size=8, range_size=8, mode=arm
; class-group: MenuWorldMap::InputHandler
; alias: _ZN12MenuWorldMap12InputHandler4zoomEf
; demangled: MenuWorldMap::InputHandler::zoom(float)
; decoder-mode: arm
00435d74  20 00 90 e5                                      ldr r0, [r0, #0x20]
00435d78  5a ff ff ea                                      b #0x435ae8

; FUNCTION 0x00435d7c, declared_size=212, range_size=212, mode=arm
; class-group: MenuWorldMap::InputHandler
; alias: _ZN12MenuWorldMap12InputHandler7onEventERKN6glitch6SEventE
; demangled: MenuWorldMap::InputHandler::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00435d7c  10 40 2d e9                                      push {r4, lr}
00435d80  00 30 91 e5                                      ldr r3, [r1]
00435d84  01 20 a0 e1                                      mov r2, r1
00435d88  00 00 53 e3                                      cmp r3, #0
00435d8c  01 00 00 1a                                      bne #0x435d98
00435d90  00 00 a0 e3                                      mov r0, #0
00435d94  10 80 bd e8                                      pop {r4, pc}
00435d98  14 30 91 e5                                      ldr r3, [r1, #0x14]
00435d9c  07 00 53 e3                                      cmp r3, #7
00435da0  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00435da4  f9 ff ff ea                                      b #0x435d90
00435da8  0a 00 00 ea                                      b #0x435dd8
00435dac  f7 ff ff ea                                      b #0x435d90
00435db0  f6 ff ff ea                                      b #0x435d90
00435db4  11 00 00 ea                                      b #0x435e00
00435db8  f4 ff ff ea                                      b #0x435d90
00435dbc  f3 ff ff ea                                      b #0x435d90
00435dc0  14 00 00 ea                                      b #0x435e18
00435dc4  ff ff ff ea                                      b #0x435dc8
00435dc8  10 10 92 e5                                      ldr r1, [r2, #0x10]
00435dcc  e8 ff ff eb                                      bl #0x435d74
00435dd0  01 00 a0 e3                                      mov r0, #1
00435dd4  10 80 bd e8                                      pop {r4, pc}
00435dd8  64 30 9f e5                                      ldr r3, [pc, #0x64]
00435ddc  01 40 a0 e3                                      mov r4, #1
00435de0  04 10 a0 e1                                      mov r1, r4
00435de4  03 30 8f e0                                      add r3, pc, r3
00435de8  0c 40 c3 e5                                      strb r4, [r3, #0xc]
00435dec  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00435df0  08 20 92 e5                                      ldr r2, [r2, #8]
00435df4  18 ff ff eb                                      bl #0x435a5c
00435df8  04 00 a0 e1                                      mov r0, r4
00435dfc  10 80 bd e8                                      pop {r4, pc}
00435e00  40 30 9f e5                                      ldr r3, [pc, #0x40]
00435e04  00 20 a0 e3                                      mov r2, #0
00435e08  01 00 a0 e3                                      mov r0, #1
00435e0c  03 30 8f e0                                      add r3, pc, r3
00435e10  0c 20 c3 e5                                      strb r2, [r3, #0xc]
00435e14  10 80 bd e8                                      pop {r4, pc}
00435e18  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00435e1c  03 30 8f e0                                      add r3, pc, r3
00435e20  0c 30 d3 e5                                      ldrb r3, [r3, #0xc]
00435e24  00 00 53 e3                                      cmp r3, #0
00435e28  e8 ff ff 0a                                      beq #0x435dd0
00435e2c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00435e30  00 10 a0 e3                                      mov r1, #0
00435e34  08 20 92 e5                                      ldr r2, [r2, #8]
00435e38  07 ff ff eb                                      bl #0x435a5c
00435e3c  01 00 a0 e3                                      mov r0, #1
00435e40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00435e44  00 fc 56 00 d8 fb 56 00 c8 fb 56 00              .byte 0x00, 0xfc, 0x56, 0x00, 0xd8, 0xfb, 0x56, 0x00, 0xc8, 0xfb, 0x56, 0x00

; FUNCTION 0x00436d94, declared_size=8, range_size=8, mode=arm
; class-group: MenuWorldMap::InputHandler
; alias: _ZThn4_N12MenuWorldMap12InputHandlerD1Ev
; demangled: non-virtual thunk to MenuWorldMap::InputHandler::~InputHandler()
; decoder-mode: arm
00436d94  04 00 40 e2                                      sub r0, r0, #4
00436d98  ff ff ff ea                                      b #0x436d9c

; FUNCTION 0x00436d9c, declared_size=104, range_size=104, mode=arm
; class-group: MenuWorldMap::InputHandler
; alias: _ZN12MenuWorldMap12InputHandlerD1Ev
; demangled: MenuWorldMap::InputHandler::~InputHandler()
; decoder-mode: arm
00436d9c  70 40 2d e9                                      push {r4, r5, r6, lr}
00436da0  54 20 9f e5                                      ldr r2, [pc, #0x54]
00436da4  54 30 9f e5                                      ldr r3, [pc, #0x54]
00436da8  18 10 90 e5                                      ldr r1, [r0, #0x18]
00436dac  02 20 8f e0                                      add r2, pc, r2
00436db0  03 30 92 e7                                      ldr r3, [r2, r3]
00436db4  00 00 51 e3                                      cmp r1, #0
00436db8  00 40 a0 e1                                      mov r4, r0
00436dbc  20 20 83 e2                                      add r2, r3, #0x20
00436dc0  08 30 83 e2                                      add r3, r3, #8
00436dc4  00 30 80 e5                                      str r3, [r0]
00436dc8  04 20 80 e5                                      str r2, [r0, #4]
00436dcc  08 00 00 0a                                      beq #0x436df4
00436dd0  08 50 80 e2                                      add r5, r0, #8
00436dd4  05 00 a0 e1                                      mov r0, r5
00436dd8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00436ddc  de ff ff eb                                      bl #0x436d5c
00436de0  00 30 a0 e3                                      mov r3, #0
00436de4  14 50 84 e5                                      str r5, [r4, #0x14]
00436de8  18 30 84 e5                                      str r3, [r4, #0x18]
00436dec  10 50 84 e5                                      str r5, [r4, #0x10]
00436df0  0c 30 84 e5                                      str r3, [r4, #0xc]
00436df4  04 00 a0 e1                                      mov r0, r4
00436df8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00436dfc  e4 dc 55 00 80 17 00 00                          .byte 0xe4, 0xdc, 0x55, 0x00, 0x80, 0x17, 0x00, 0x00

; FUNCTION 0x00436e40, declared_size=8, range_size=8, mode=arm
; class-group: MenuWorldMap::InputHandler
; alias: _ZThn4_N12MenuWorldMap12InputHandlerD0Ev
; demangled: non-virtual thunk to MenuWorldMap::InputHandler::~InputHandler()
; decoder-mode: arm
00436e40  04 00 40 e2                                      sub r0, r0, #4
00436e44  ff ff ff ea                                      b #0x436e48

; FUNCTION 0x00436e48, declared_size=152, range_size=152, mode=arm
; class-group: MenuWorldMap::InputHandler
; alias: _ZN12MenuWorldMap12InputHandlerD0Ev
; demangled: MenuWorldMap::InputHandler::~InputHandler()
; decoder-mode: arm
00436e48  70 40 2d e9                                      push {r4, r5, r6, lr}
00436e4c  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
00436e50  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
00436e54  18 10 90 e5                                      ldr r1, [r0, #0x18]
00436e58  05 50 8f e0                                      add r5, pc, r5
00436e5c  03 30 95 e7                                      ldr r3, [r5, r3]
00436e60  00 00 51 e3                                      cmp r1, #0
00436e64  00 40 a0 e1                                      mov r4, r0
00436e68  20 20 83 e2                                      add r2, r3, #0x20
00436e6c  08 30 83 e2                                      add r3, r3, #8
00436e70  00 30 80 e5                                      str r3, [r0]
00436e74  04 20 80 e5                                      str r2, [r0, #4]
00436e78  08 00 00 0a                                      beq #0x436ea0
00436e7c  08 60 80 e2                                      add r6, r0, #8
00436e80  06 00 a0 e1                                      mov r0, r6
00436e84  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00436e88  b3 ff ff eb                                      bl #0x436d5c
00436e8c  00 30 a0 e3                                      mov r3, #0
00436e90  14 60 84 e5                                      str r6, [r4, #0x14]
00436e94  18 30 84 e5                                      str r3, [r4, #0x18]
00436e98  10 60 84 e5                                      str r6, [r4, #0x10]
00436e9c  0c 30 84 e5                                      str r3, [r4, #0xc]
00436ea0  30 20 9f e5                                      ldr r2, [pc, #0x30]
00436ea4  30 30 9f e5                                      ldr r3, [pc, #0x30]
00436ea8  04 00 a0 e1                                      mov r0, r4
00436eac  02 20 95 e7                                      ldr r2, [r5, r2]
00436eb0  03 30 95 e7                                      ldr r3, [r5, r3]
00436eb4  08 20 82 e2                                      add r2, r2, #8
00436eb8  08 30 83 e2                                      add r3, r3, #8
00436ebc  04 20 84 e5                                      str r2, [r4, #4]
00436ec0  00 30 84 e5                                      str r3, [r4]
00436ec4  5d 65 fb eb                                      bl #0x310440
00436ec8  04 00 a0 e1                                      mov r0, r4
00436ecc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00436ed0  38 dc 55 00 80 17 00 00 40 0b 00 00 4c 27 00 00  .byte 0x38, 0xdc, 0x55, 0x00, 0x80, 0x17, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x004372b4, declared_size=8, range_size=8, mode=arm
; class-group: MenuWorldMap::InputHandler
; alias: _ZThn4_N12MenuWorldMap12InputHandler7onEventEPK6IEventPK12EventManager
; demangled: non-virtual thunk to MenuWorldMap::InputHandler::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
004372b4  04 00 40 e2                                      sub r0, r0, #4
004372b8  ff ff ff ea                                      b #0x4372bc

; FUNCTION 0x004372bc, declared_size=1640, range_size=1640, mode=arm
; class-group: MenuWorldMap::InputHandler
; alias: _ZN12MenuWorldMap12InputHandler7onEventEPK6IEventPK12EventManager
; demangled: MenuWorldMap::InputHandler::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
004372bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004372c0  00 70 a0 e1                                      mov r7, r0
004372c4  74 d0 4d e2                                      sub sp, sp, #0x74
004372c8  00 30 91 e5                                      ldr r3, [r1]
004372cc  01 00 a0 e1                                      mov r0, r1
004372d0  01 50 a0 e1                                      mov r5, r1
004372d4  0f e0 a0 e1                                      mov lr, pc
004372d8  08 f0 93 e5                                      ldr pc, [r3, #8]
004372dc  04 00 50 e3                                      cmp r0, #4
004372e0  05 00 00 0a                                      beq #0x4372fc
004372e4  05 00 50 e3                                      cmp r0, #5
004372e8  00 80 a0 13                                      movne r8, #0
004372ec  1f 00 00 0a                                      beq #0x437370
004372f0  08 00 a0 e1                                      mov r0, r8
004372f4  74 d0 8d e2                                      add sp, sp, #0x74
004372f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004372fc  10 30 d5 e5                                      ldrb r3, [r5, #0x10]
00437300  00 00 53 e3                                      cmp r3, #0
00437304  36 01 00 1a                                      bne #0x4377e4
00437308  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0043730c  00 00 53 e3                                      cmp r3, #0
00437310  11 00 00 0a                                      beq #0x43735c
00437314  08 60 87 e2                                      add r6, r7, #8
00437318  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0043731c  06 10 a0 e1                                      mov r1, r6
00437320  00 00 00 ea                                      b #0x437328
00437324  02 30 a0 e1                                      mov r3, r2
00437328  10 20 93 e5                                      ldr r2, [r3, #0x10]
0043732c  00 00 52 e1                                      cmp r2, r0
00437330  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00437334  08 20 93 a5                                      ldrge r2, [r3, #8]
00437338  01 30 a0 b1                                      movlt r3, r1
0043733c  03 10 a0 e1                                      mov r1, r3
00437340  00 00 52 e3                                      cmp r2, #0
00437344  f6 ff ff 1a                                      bne #0x437324
00437348  03 00 56 e1                                      cmp r6, r3
0043734c  02 00 00 0a                                      beq #0x43735c
00437350  10 20 93 e5                                      ldr r2, [r3, #0x10]
00437354  00 00 52 e1                                      cmp r2, r0
00437358  18 01 00 da                                      ble #0x4377c0
0043735c  18 80 97 e5                                      ldr r8, [r7, #0x18]
00437360  01 00 58 e3                                      cmp r8, #1
00437364  00 80 a0 93                                      movls r8, #0
00437368  01 80 a0 83                                      movhi r8, #1
0043736c  df ff ff ea                                      b #0x4372f0
00437370  0c e0 97 e5                                      ldr lr, [r7, #0xc]
00437374  0c 40 85 e2                                      add r4, r5, #0xc
00437378  08 60 87 e2                                      add r6, r7, #8
0043737c  00 00 5e e3                                      cmp lr, #0
00437380  64 01 00 0a                                      beq #0x437918
00437384  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00437388  06 20 a0 e1                                      mov r2, r6
0043738c  00 00 00 ea                                      b #0x437394
00437390  03 e0 a0 e1                                      mov lr, r3
00437394  10 30 9e e5                                      ldr r3, [lr, #0x10]
00437398  0c 00 53 e1                                      cmp r3, ip
0043739c  0c 30 9e b5                                      ldrlt r3, [lr, #0xc]
004373a0  08 30 9e a5                                      ldrge r3, [lr, #8]
004373a4  02 e0 a0 b1                                      movlt lr, r2
004373a8  0e 20 a0 e1                                      mov r2, lr
004373ac  00 00 53 e3                                      cmp r3, #0
004373b0  f6 ff ff 1a                                      bne #0x437390
004373b4  0e 00 56 e1                                      cmp r6, lr
004373b8  f2 00 00 0a                                      beq #0x437788
004373bc  10 20 9e e5                                      ldr r2, [lr, #0x10]
004373c0  0e 30 a0 e1                                      mov r3, lr
004373c4  02 00 5c e1                                      cmp ip, r2
004373c8  ee 00 00 ba                                      blt #0x437788
004373cc  f4 31 d3 e1                                      ldrsh r3, [r3, #0x14]
004373d0  00 00 53 e3                                      cmp r3, #0
004373d4  1e 01 00 0a                                      beq #0x437854
004373d8  0c e0 97 e5                                      ldr lr, [r7, #0xc]
004373dc  00 00 5e e3                                      cmp lr, #0
004373e0  46 01 00 0a                                      beq #0x437900
004373e4  0c c0 95 e5                                      ldr ip, [r5, #0xc]
004373e8  06 20 a0 e1                                      mov r2, r6
004373ec  00 00 00 ea                                      b #0x4373f4
004373f0  03 e0 a0 e1                                      mov lr, r3
004373f4  10 30 9e e5                                      ldr r3, [lr, #0x10]
004373f8  0c 00 53 e1                                      cmp r3, ip
004373fc  0c 30 9e b5                                      ldrlt r3, [lr, #0xc]
00437400  08 30 9e a5                                      ldrge r3, [lr, #8]
00437404  02 e0 a0 b1                                      movlt lr, r2
00437408  0e 20 a0 e1                                      mov r2, lr
0043740c  00 00 53 e3                                      cmp r3, #0
00437410  f6 ff ff 1a                                      bne #0x4373f0
00437414  0e 00 56 e1                                      cmp r6, lr
00437418  cc 00 00 0a                                      beq #0x437750
0043741c  10 20 9e e5                                      ldr r2, [lr, #0x10]
00437420  0e 30 a0 e1                                      mov r3, lr
00437424  02 00 5c e1                                      cmp ip, r2
00437428  c8 00 00 ba                                      blt #0x437750
0043742c  b8 20 d5 e1                                      ldrh r2, [r5, #8]
00437430  b8 21 c3 e1                                      strh r2, [r3, #0x18]
00437434  0c e0 97 e5                                      ldr lr, [r7, #0xc]
00437438  00 00 5e e3                                      cmp lr, #0
0043743c  32 01 00 0a                                      beq #0x43790c
00437440  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00437444  06 20 a0 e1                                      mov r2, r6
00437448  00 00 00 ea                                      b #0x437450
0043744c  03 e0 a0 e1                                      mov lr, r3
00437450  10 30 9e e5                                      ldr r3, [lr, #0x10]
00437454  0c 00 53 e1                                      cmp r3, ip
00437458  0c 30 9e b5                                      ldrlt r3, [lr, #0xc]
0043745c  08 30 9e a5                                      ldrge r3, [lr, #8]
00437460  02 e0 a0 b1                                      movlt lr, r2
00437464  0e 20 a0 e1                                      mov r2, lr
00437468  00 00 53 e3                                      cmp r3, #0
0043746c  f6 ff ff 1a                                      bne #0x43744c
00437470  0e 00 56 e1                                      cmp r6, lr
00437474  a7 00 00 0a                                      beq #0x437718
00437478  10 20 9e e5                                      ldr r2, [lr, #0x10]
0043747c  0e 30 a0 e1                                      mov r3, lr
00437480  02 00 5c e1                                      cmp ip, r2
00437484  a3 00 00 ba                                      blt #0x437718
00437488  ba 20 d5 e1                                      ldrh r2, [r5, #0xa]
0043748c  ba 21 c3 e1                                      strh r2, [r3, #0x1a]
00437490  18 30 97 e5                                      ldr r3, [r7, #0x18]
00437494  01 00 53 e3                                      cmp r3, #1
00437498  fe 00 00 9a                                      bls #0x437898
0043749c  10 40 97 e5                                      ldr r4, [r7, #0x10]
004374a0  f4 01 d4 e1                                      ldrsh r0, [r4, #0x14]
004374a4  2e 5d fb eb                                      bl #0x30e964
004374a8  04 00 8d e5                                      str r0, [sp, #4]
004374ac  f6 01 d4 e1                                      ldrsh r0, [r4, #0x16]
004374b0  2b 5d fb eb                                      bl #0x30e964
004374b4  00 b0 a0 e1                                      mov fp, r0
004374b8  f8 01 d4 e1                                      ldrsh r0, [r4, #0x18]
004374bc  28 5d fb eb                                      bl #0x30e964
004374c0  00 80 a0 e1                                      mov r8, r0
004374c4  fa 01 d4 e1                                      ldrsh r0, [r4, #0x1a]
004374c8  25 5d fb eb                                      bl #0x30e964
004374cc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004374d0  00 30 a0 e1                                      mov r3, r0
004374d4  00 00 51 e3                                      cmp r1, #0
004374d8  01 00 00 1a                                      bne #0x4374e4
004374dc  f4 00 00 ea                                      b #0x4378b4
004374e0  02 10 a0 e1                                      mov r1, r2
004374e4  08 20 91 e5                                      ldr r2, [r1, #8]
004374e8  00 00 52 e3                                      cmp r2, #0
004374ec  fb ff ff 1a                                      bne #0x4374e0
004374f0  01 40 a0 e1                                      mov r4, r1
004374f4  f4 01 d4 e1                                      ldrsh r0, [r4, #0x14]
004374f8  00 30 8d e5                                      str r3, [sp]
004374fc  18 5d fb eb                                      bl #0x30e964
00437500  00 a0 a0 e1                                      mov sl, r0
00437504  f6 01 d4 e1                                      ldrsh r0, [r4, #0x16]
00437508  15 5d fb eb                                      bl #0x30e964
0043750c  0a 10 a0 e1                                      mov r1, sl
00437510  00 90 a0 e1                                      mov sb, r0
00437514  04 00 9d e5                                      ldr r0, [sp, #4]
00437518  a3 5b fb eb                                      bl #0x30e3ac
0043751c  09 10 a0 e1                                      mov r1, sb
00437520  00 a0 a0 e1                                      mov sl, r0
00437524  0b 00 a0 e1                                      mov r0, fp
00437528  9f 5b fb eb                                      bl #0x30e3ac
0043752c  0a 10 a0 e1                                      mov r1, sl
00437530  00 90 a0 e1                                      mov sb, r0
00437534  0a 00 a0 e1                                      mov r0, sl
00437538  0b 5e fb eb                                      bl #0x30ed6c
0043753c  09 10 a0 e1                                      mov r1, sb
00437540  00 a0 a0 e1                                      mov sl, r0
00437544  09 00 a0 e1                                      mov r0, sb
00437548  07 5e fb eb                                      bl #0x30ed6c
0043754c  00 10 a0 e1                                      mov r1, r0
00437550  0a 00 a0 e1                                      mov r0, sl
00437554  92 5d fb eb                                      bl #0x30eba4
00437558  d1 5c fb eb                                      bl #0x30e8a4
0043755c  17 5b fb eb                                      bl #0x30e1c0
00437560  4e 5c fb eb                                      bl #0x30e6a0
00437564  00 a0 a0 e1                                      mov sl, r0
00437568  f8 01 d4 e1                                      ldrsh r0, [r4, #0x18]
0043756c  fc 5c fb eb                                      bl #0x30e964
00437570  00 b0 a0 e1                                      mov fp, r0
00437574  fa 01 d4 e1                                      ldrsh r0, [r4, #0x1a]
00437578  f9 5c fb eb                                      bl #0x30e964
0043757c  0b 10 a0 e1                                      mov r1, fp
00437580  00 90 a0 e1                                      mov sb, r0
00437584  08 00 a0 e1                                      mov r0, r8
00437588  87 5b fb eb                                      bl #0x30e3ac
0043758c  00 30 9d e5                                      ldr r3, [sp]
00437590  00 40 a0 e1                                      mov r4, r0
00437594  09 10 a0 e1                                      mov r1, sb
00437598  03 00 a0 e1                                      mov r0, r3
0043759c  82 5b fb eb                                      bl #0x30e3ac
004375a0  04 10 a0 e1                                      mov r1, r4
004375a4  00 80 a0 e1                                      mov r8, r0
004375a8  04 00 a0 e1                                      mov r0, r4
004375ac  ee 5d fb eb                                      bl #0x30ed6c
004375b0  08 10 a0 e1                                      mov r1, r8
004375b4  00 40 a0 e1                                      mov r4, r0
004375b8  08 00 a0 e1                                      mov r0, r8
004375bc  ea 5d fb eb                                      bl #0x30ed6c
004375c0  00 10 a0 e1                                      mov r1, r0
004375c4  04 00 a0 e1                                      mov r0, r4
004375c8  75 5d fb eb                                      bl #0x30eba4
004375cc  b4 5c fb eb                                      bl #0x30e8a4
004375d0  fa 5a fb eb                                      bl #0x30e1c0
004375d4  31 5c fb eb                                      bl #0x30e6a0
004375d8  0a 10 a0 e1                                      mov r1, sl
004375dc  72 5b fb eb                                      bl #0x30e3ac
004375e0  00 10 a0 e1                                      mov r1, r0
004375e4  07 00 a0 e1                                      mov r0, r7
004375e8  e1 f9 ff eb                                      bl #0x435d74
004375ec  01 80 a0 e3                                      mov r8, #1
004375f0  0c 40 97 e5                                      ldr r4, [r7, #0xc]
004375f4  00 00 54 e3                                      cmp r4, #0
004375f8  ba 00 00 0a                                      beq #0x4378e8
004375fc  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00437600  06 20 a0 e1                                      mov r2, r6
00437604  00 00 00 ea                                      b #0x43760c
00437608  03 40 a0 e1                                      mov r4, r3
0043760c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00437610  0c 00 53 e1                                      cmp r3, ip
00437614  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
00437618  08 30 94 a5                                      ldrge r3, [r4, #8]
0043761c  02 40 a0 b1                                      movlt r4, r2
00437620  04 20 a0 e1                                      mov r2, r4
00437624  00 00 53 e3                                      cmp r3, #0
00437628  f6 ff ff 1a                                      bne #0x437608
0043762c  04 00 56 e1                                      cmp r6, r4
00437630  2a 00 00 0a                                      beq #0x4376e0
00437634  10 20 94 e5                                      ldr r2, [r4, #0x10]
00437638  04 30 a0 e1                                      mov r3, r4
0043763c  02 00 5c e1                                      cmp ip, r2
00437640  26 00 00 ba                                      blt #0x4376e0
00437644  b8 20 d5 e1                                      ldrh r2, [r5, #8]
00437648  b4 21 c3 e1                                      strh r2, [r3, #0x14]
0043764c  0c 40 97 e5                                      ldr r4, [r7, #0xc]
00437650  00 00 54 e3                                      cmp r4, #0
00437654  a6 00 00 0a                                      beq #0x4378f4
00437658  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0043765c  06 20 a0 e1                                      mov r2, r6
00437660  00 00 00 ea                                      b #0x437668
00437664  03 40 a0 e1                                      mov r4, r3
00437668  10 30 94 e5                                      ldr r3, [r4, #0x10]
0043766c  0c 00 53 e1                                      cmp r3, ip
00437670  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
00437674  08 30 94 a5                                      ldrge r3, [r4, #8]
00437678  02 40 a0 b1                                      movlt r4, r2
0043767c  04 20 a0 e1                                      mov r2, r4
00437680  00 00 53 e3                                      cmp r3, #0
00437684  f6 ff ff 1a                                      bne #0x437664
00437688  04 00 56 e1                                      cmp r6, r4
0043768c  03 00 00 0a                                      beq #0x4376a0
00437690  10 20 94 e5                                      ldr r2, [r4, #0x10]
00437694  04 30 a0 e1                                      mov r3, r4
00437698  02 00 5c e1                                      cmp ip, r2
0043769c  0c 00 00 aa                                      bge #0x4376d4
004376a0  08 30 8d e2                                      add r3, sp, #8
004376a4  08 c0 8d e5                                      str ip, [sp, #8]
004376a8  06 10 a0 e1                                      mov r1, r6
004376ac  00 c0 a0 e3                                      mov ip, #0
004376b0  48 00 8d e2                                      add r0, sp, #0x48
004376b4  44 20 8d e2                                      add r2, sp, #0x44
004376b8  44 40 8d e5                                      str r4, [sp, #0x44]
004376bc  b2 c1 cd e1                                      strh ip, [sp, #0x12]
004376c0  b0 c1 cd e1                                      strh ip, [sp, #0x10]
004376c4  be c0 cd e1                                      strh ip, [sp, #0xe]
004376c8  bc c0 cd e1                                      strh ip, [sp, #0xc]
004376cc  9b fc ff eb                                      bl #0x436940
004376d0  48 30 9d e5                                      ldr r3, [sp, #0x48]
004376d4  ba 50 d5 e1                                      ldrh r5, [r5, #0xa]
004376d8  b6 51 c3 e1                                      strh r5, [r3, #0x16]
004376dc  03 ff ff ea                                      b #0x4372f0
004376e0  14 30 8d e2                                      add r3, sp, #0x14
004376e4  14 c0 8d e5                                      str ip, [sp, #0x14]
004376e8  50 00 8d e2                                      add r0, sp, #0x50
004376ec  00 c0 a0 e3                                      mov ip, #0
004376f0  06 10 a0 e1                                      mov r1, r6
004376f4  4c 20 8d e2                                      add r2, sp, #0x4c
004376f8  4c 40 8d e5                                      str r4, [sp, #0x4c]
004376fc  be c1 cd e1                                      strh ip, [sp, #0x1e]
00437700  bc c1 cd e1                                      strh ip, [sp, #0x1c]
00437704  ba c1 cd e1                                      strh ip, [sp, #0x1a]
00437708  b8 c1 cd e1                                      strh ip, [sp, #0x18]
0043770c  8b fc ff eb                                      bl #0x436940
00437710  50 30 9d e5                                      ldr r3, [sp, #0x50]
00437714  ca ff ff ea                                      b #0x437644
00437718  20 30 8d e2                                      add r3, sp, #0x20
0043771c  20 c0 8d e5                                      str ip, [sp, #0x20]
00437720  58 00 8d e2                                      add r0, sp, #0x58
00437724  00 c0 a0 e3                                      mov ip, #0
00437728  06 10 a0 e1                                      mov r1, r6
0043772c  54 20 8d e2                                      add r2, sp, #0x54
00437730  54 e0 8d e5                                      str lr, [sp, #0x54]
00437734  ba c2 cd e1                                      strh ip, [sp, #0x2a]
00437738  b8 c2 cd e1                                      strh ip, [sp, #0x28]
0043773c  b6 c2 cd e1                                      strh ip, [sp, #0x26]
00437740  b4 c2 cd e1                                      strh ip, [sp, #0x24]
00437744  7d fc ff eb                                      bl #0x436940
00437748  58 30 9d e5                                      ldr r3, [sp, #0x58]
0043774c  4d ff ff ea                                      b #0x437488
00437750  2c 30 8d e2                                      add r3, sp, #0x2c
00437754  2c c0 8d e5                                      str ip, [sp, #0x2c]
00437758  60 00 8d e2                                      add r0, sp, #0x60
0043775c  00 c0 a0 e3                                      mov ip, #0
00437760  06 10 a0 e1                                      mov r1, r6
00437764  5c 20 8d e2                                      add r2, sp, #0x5c
00437768  5c e0 8d e5                                      str lr, [sp, #0x5c]
0043776c  b6 c3 cd e1                                      strh ip, [sp, #0x36]
00437770  b4 c3 cd e1                                      strh ip, [sp, #0x34]
00437774  b2 c3 cd e1                                      strh ip, [sp, #0x32]
00437778  b0 c3 cd e1                                      strh ip, [sp, #0x30]
0043777c  6f fc ff eb                                      bl #0x436940
00437780  60 30 9d e5                                      ldr r3, [sp, #0x60]
00437784  28 ff ff ea                                      b #0x43742c
00437788  38 30 8d e2                                      add r3, sp, #0x38
0043778c  38 c0 8d e5                                      str ip, [sp, #0x38]
00437790  68 00 8d e2                                      add r0, sp, #0x68
00437794  00 c0 a0 e3                                      mov ip, #0
00437798  06 10 a0 e1                                      mov r1, r6
0043779c  64 20 8d e2                                      add r2, sp, #0x64
004377a0  64 e0 8d e5                                      str lr, [sp, #0x64]
004377a4  b2 c4 cd e1                                      strh ip, [sp, #0x42]
004377a8  b0 c4 cd e1                                      strh ip, [sp, #0x40]
004377ac  be c3 cd e1                                      strh ip, [sp, #0x3e]
004377b0  bc c3 cd e1                                      strh ip, [sp, #0x3c]
004377b4  61 fc ff eb                                      bl #0x436940
004377b8  68 30 9d e5                                      ldr r3, [sp, #0x68]
004377bc  02 ff ff ea                                      b #0x4373cc
004377c0  70 10 8d e2                                      add r1, sp, #0x70
004377c4  04 30 21 e5                                      str r3, [r1, #-4]!
004377c8  06 00 a0 e1                                      mov r0, r6
004377cc  8c fd ff eb                                      bl #0x436e04
004377d0  18 80 97 e5                                      ldr r8, [r7, #0x18]
004377d4  01 00 58 e3                                      cmp r8, #1
004377d8  00 80 a0 93                                      movls r8, #0
004377dc  01 80 a0 83                                      movhi r8, #1
004377e0  c2 fe ff ea                                      b #0x4372f0
004377e4  08 40 87 e2                                      add r4, r7, #8
004377e8  0c 60 85 e2                                      add r6, r5, #0xc
004377ec  06 10 a0 e1                                      mov r1, r6
004377f0  04 00 a0 e1                                      mov r0, r4
004377f4  2e fd ff eb                                      bl #0x436cb4
004377f8  b8 20 d5 e1                                      ldrh r2, [r5, #8]
004377fc  06 10 a0 e1                                      mov r1, r6
00437800  b0 20 c0 e1                                      strh r2, [r0]
00437804  04 00 a0 e1                                      mov r0, r4
00437808  29 fd ff eb                                      bl #0x436cb4
0043780c  ba 30 d5 e1                                      ldrh r3, [r5, #0xa]
00437810  06 10 a0 e1                                      mov r1, r6
00437814  b2 30 c0 e1                                      strh r3, [r0, #2]
00437818  04 00 a0 e1                                      mov r0, r4
0043781c  24 fd ff eb                                      bl #0x436cb4
00437820  b8 c0 d5 e1                                      ldrh ip, [r5, #8]
00437824  06 10 a0 e1                                      mov r1, r6
00437828  b4 c0 c0 e1                                      strh ip, [r0, #4]
0043782c  04 00 a0 e1                                      mov r0, r4
00437830  1f fd ff eb                                      bl #0x436cb4
00437834  ba 20 d5 e1                                      ldrh r2, [r5, #0xa]
00437838  01 10 a0 e3                                      mov r1, #1
0043783c  b6 20 c0 e1                                      strh r2, [r0, #6]
00437840  fa 30 d5 e1                                      ldrsh r3, [r5, #0xa]
00437844  07 00 a0 e1                                      mov r0, r7
00437848  f8 20 d5 e1                                      ldrsh r2, [r5, #8]
0043784c  82 f8 ff eb                                      bl #0x435a5c
00437850  c1 fe ff ea                                      b #0x43735c
00437854  06 00 a0 e1                                      mov r0, r6
00437858  04 10 a0 e1                                      mov r1, r4
0043785c  14 fd ff eb                                      bl #0x436cb4
00437860  f2 30 d0 e1                                      ldrsh r3, [r0, #2]
00437864  00 00 53 e3                                      cmp r3, #0
00437868  da fe ff 1a                                      bne #0x4373d8
0043786c  04 10 a0 e1                                      mov r1, r4
00437870  06 00 a0 e1                                      mov r0, r6
00437874  0e fd ff eb                                      bl #0x436cb4
00437878  b8 20 d5 e1                                      ldrh r2, [r5, #8]
0043787c  04 10 a0 e1                                      mov r1, r4
00437880  b0 20 c0 e1                                      strh r2, [r0]
00437884  06 00 a0 e1                                      mov r0, r6
00437888  09 fd ff eb                                      bl #0x436cb4
0043788c  ba 30 d5 e1                                      ldrh r3, [r5, #0xa]
00437890  b2 30 c0 e1                                      strh r3, [r0, #2]
00437894  cf fe ff ea                                      b #0x4373d8
00437898  07 00 a0 e1                                      mov r0, r7
0043789c  00 10 a0 e3                                      mov r1, #0
004378a0  f8 20 d5 e1                                      ldrsh r2, [r5, #8]
004378a4  fa 30 d5 e1                                      ldrsh r3, [r5, #0xa]
004378a8  6b f8 ff eb                                      bl #0x435a5c
004378ac  00 80 a0 e3                                      mov r8, #0
004378b0  4e ff ff ea                                      b #0x4375f0
004378b4  04 20 94 e5                                      ldr r2, [r4, #4]
004378b8  0c 00 92 e5                                      ldr r0, [r2, #0xc]
004378bc  00 00 54 e1                                      cmp r4, r0
004378c0  05 00 00 1a                                      bne #0x4378dc
004378c4  02 40 a0 e1                                      mov r4, r2
004378c8  04 20 92 e5                                      ldr r2, [r2, #4]
004378cc  0c 10 92 e5                                      ldr r1, [r2, #0xc]
004378d0  04 00 51 e1                                      cmp r1, r4
004378d4  fa ff ff 0a                                      beq #0x4378c4
004378d8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004378dc  01 00 52 e1                                      cmp r2, r1
004378e0  02 40 a0 11                                      movne r4, r2
004378e4  02 ff ff ea                                      b #0x4374f4
004378e8  0c c0 95 e5                                      ldr ip, [r5, #0xc]
004378ec  06 40 a0 e1                                      mov r4, r6
004378f0  4d ff ff ea                                      b #0x43762c
004378f4  0c c0 95 e5                                      ldr ip, [r5, #0xc]
004378f8  06 40 a0 e1                                      mov r4, r6
004378fc  61 ff ff ea                                      b #0x437688
00437900  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00437904  06 e0 a0 e1                                      mov lr, r6
00437908  c1 fe ff ea                                      b #0x437414
0043790c  0c c0 95 e5                                      ldr ip, [r5, #0xc]
00437910  06 e0 a0 e1                                      mov lr, r6
00437914  d5 fe ff ea                                      b #0x437470
00437918  0c c0 95 e5                                      ldr ip, [r5, #0xc]
0043791c  06 e0 a0 e1                                      mov lr, r6
00437920  a3 fe ff ea                                      b #0x4373b4
