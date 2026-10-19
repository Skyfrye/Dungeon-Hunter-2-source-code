; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a02a4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice11closeDeviceEv
; demangled: glitch::CAndroidOSDevice::closeDevice()
; decoder-mode: arm
006a02a4  00 30 a0 e3                                      mov r3, #0
006a02a8  09 31 c0 e5                                      strb r3, [r0, #0x109]
006a02ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a02b0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice12createWindowEv
; demangled: glitch::CAndroidOSDevice::createWindow()
; decoder-mode: arm
006a02b0  01 00 a0 e3                                      mov r0, #1
006a02b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a02b8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice9setResizeEii
; demangled: glitch::CAndroidOSDevice::setResize(int, int)
; decoder-mode: arm
006a02b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a02bc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice5flushEv
; demangled: glitch::CAndroidOSDevice::flush()
; decoder-mode: arm
006a02bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a02c0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice5yieldEv
; demangled: glitch::CAndroidOSDevice::yield()
; decoder-mode: arm
006a02c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a02c4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice16setWindowCaptionEPKw
; demangled: glitch::CAndroidOSDevice::setWindowCaption(wchar_t const*)
; decoder-mode: arm
006a02c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a02c8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZNK6glitch16CAndroidOSDevice14isWindowActiveEv
; demangled: glitch::CAndroidOSDevice::isWindowActive() const
; decoder-mode: arm
006a02c8  01 00 a0 e3                                      mov r0, #1
006a02cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a02d0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZNK6glitch16CAndroidOSDevice15isWindowFocusedEv
; demangled: glitch::CAndroidOSDevice::isWindowFocused() const
; decoder-mode: arm
006a02d0  01 00 a0 e3                                      mov r0, #1
006a02d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a02d8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZNK6glitch16CAndroidOSDevice17isWindowMinimizedEv
; demangled: glitch::CAndroidOSDevice::isWindowMinimized() const
; decoder-mode: arm
006a02d8  00 00 a0 e3                                      mov r0, #0
006a02dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a02e0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice12postKeyEventEPvRNS_6SEventEb
; demangled: glitch::CAndroidOSDevice::postKeyEvent(void*, glitch::SEvent&, bool)
; decoder-mode: arm
006a02e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a02e4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice14postMouseEventEPvRNS_6SEventE
; demangled: glitch::CAndroidOSDevice::postMouseEvent(void*, glitch::SEvent&)
; decoder-mode: arm
006a02e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a02e8, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice18storeMouseLocationEv
; demangled: glitch::CAndroidOSDevice::storeMouseLocation()
; decoder-mode: arm
006a02e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a02ec, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice16setMouseLocationEii
; demangled: glitch::CAndroidOSDevice::setMouseLocation(int, int)
; decoder-mode: arm
006a02ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0330, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice16setCursorVisibleEb
; demangled: glitch::CAndroidOSDevice::setCursorVisible(bool)
; decoder-mode: arm
006a0330  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0340, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice12initKeycodesEv
; demangled: glitch::CAndroidOSDevice::initKeycodes()
; decoder-mode: arm
006a0340  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0344, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice13setResizeAbleEb
; demangled: glitch::CAndroidOSDevice::setResizeAble(bool)
; decoder-mode: arm
006a0344  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0348, declared_size=8, range_size=8, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice16getVideoModeListEv
; demangled: glitch::CAndroidOSDevice::getVideoModeList()
; decoder-mode: arm
006a0348  00 00 a0 e3                                      mov r0, #0
006a034c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0374, declared_size=204, range_size=204, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice5sleepEjb
; demangled: glitch::CAndroidOSDevice::sleep(unsigned int, bool)
; decoder-mode: arm
006a0374  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006a0378  20 30 90 e5                                      ldr r3, [r0, #0x20]
006a037c  0c d0 4d e2                                      sub sp, sp, #0xc
006a0380  00 40 a0 e1                                      mov r4, r0
006a0384  00 00 53 e3                                      cmp r3, #0
006a0388  01 50 a0 e1                                      mov r5, r1
006a038c  02 60 a0 e1                                      mov r6, r2
006a0390  01 70 a0 03                                      moveq r7, #1
006a0394  04 00 00 0a                                      beq #0x6a03ac
006a0398  03 00 a0 e1                                      mov r0, r3
006a039c  00 30 93 e5                                      ldr r3, [r3]
006a03a0  0f e0 a0 e1                                      mov lr, pc
006a03a4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
006a03a8  00 70 a0 e1                                      mov r7, r0
006a03ac  d3 3d 04 e3                                      movw r3, #0x4dd3
006a03b0  62 30 41 e3                                      movt r3, #0x1062
006a03b4  93 25 83 e0                                      umull r2, r3, r3, r5
006a03b8  00 00 56 e3                                      cmp r6, #0
006a03bc  23 23 a0 e1                                      lsr r2, r3, #6
006a03c0  fa 3f a0 e3                                      mov r3, #0x3e8
006a03c4  93 52 65 e0                                      mls r5, r3, r2, r5
006a03c8  3d 39 a0 e3                                      mov r3, #0xf4000
006a03cc  09 3d 83 e2                                      add r3, r3, #0x240
006a03d0  93 05 03 e0                                      mul r3, r3, r5
006a03d4  0c 00 8d e8                                      stm sp, {r2, r3}
006a03d8  05 00 00 0a                                      beq #0x6a03f4
006a03dc  00 00 57 e3                                      cmp r7, #0
006a03e0  08 00 00 0a                                      beq #0x6a0408
006a03e4  0d 00 a0 e1                                      mov r0, sp
006a03e8  00 10 a0 e3                                      mov r1, #0
006a03ec  d5 b8 f1 eb                                      bl #0x30e748
006a03f0  02 00 00 ea                                      b #0x6a0400
006a03f4  06 10 a0 e1                                      mov r1, r6
006a03f8  0d 00 a0 e1                                      mov r0, sp
006a03fc  d1 b8 f1 eb                                      bl #0x30e748
006a0400  0c d0 8d e2                                      add sp, sp, #0xc
006a0404  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006a0408  20 30 94 e5                                      ldr r3, [r4, #0x20]
006a040c  03 00 a0 e1                                      mov r0, r3
006a0410  00 30 93 e5                                      ldr r3, [r3]
006a0414  0f e0 a0 e1                                      mov lr, pc
006a0418  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006a041c  07 10 a0 e1                                      mov r1, r7
006a0420  0d 00 a0 e1                                      mov r0, sp
006a0424  c7 b8 f1 eb                                      bl #0x30e748
006a0428  20 30 94 e5                                      ldr r3, [r4, #0x20]
006a042c  03 00 a0 e1                                      mov r0, r3
006a0430  00 30 93 e5                                      ldr r3, [r3]
006a0434  0f e0 a0 e1                                      mov lr, pc
006a0438  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006a043c  ef ff ff ea                                      b #0x6a0400

; FUNCTION 0x006a0440, declared_size=20, range_size=20, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice7runImplEv
; demangled: glitch::CAndroidOSDevice::runImpl()
; decoder-mode: arm
006a0440  10 40 2d e9                                      push {r4, lr}
006a0444  00 40 a0 e1                                      mov r4, r0
006a0448  77 ab fd eb                                      bl #0x60b22c
006a044c  09 01 d4 e5                                      ldrb r0, [r4, #0x109]
006a0450  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006a0454, declared_size=152, range_size=152, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDevice12createDriverEv
; demangled: glitch::CAndroidOSDevice::createDriver()
; decoder-mode: arm
006a0454  10 40 2d e9                                      push {r4, lr}
006a0458  5c 30 90 e5                                      ldr r3, [r0, #0x5c]
006a045c  00 40 a0 e1                                      mov r4, r0
006a0460  01 00 53 e3                                      cmp r3, #1
006a0464  0e 00 00 0a                                      beq #0x6a04a4
006a0468  12 00 00 da                                      ble #0x6a04b8
006a046c  80 00 53 e3                                      cmp r3, #0x80
006a0470  06 00 00 0a                                      beq #0x6a0490
006a0474  01 0c 53 e3                                      cmp r3, #0x100
006a0478  04 00 00 0a                                      beq #0x6a0490
006a047c  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
006a0480  03 10 a0 e3                                      mov r1, #3
006a0484  00 00 8f e0                                      add r0, pc, r0
006a0488  10 40 bd e8                                      pop {r4, lr}
006a048c  03 aa fd ea                                      b #0x60aca0
006a0490  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
006a0494  03 10 a0 e3                                      mov r1, #3
006a0498  00 00 8f e0                                      add r0, pc, r0
006a049c  10 40 bd e8                                      pop {r4, lr}
006a04a0  fe a9 fd ea                                      b #0x60aca0
006a04a4  40 56 fc eb                                      bl #0x5b5dac
006a04a8  00 00 50 e3                                      cmp r0, #0
006a04ac  10 00 84 e5                                      str r0, [r4, #0x10]
006a04b0  05 00 00 0a                                      beq #0x6a04cc
006a04b4  10 80 bd e8                                      pop {r4, pc}
006a04b8  00 00 53 e3                                      cmp r3, #0
006a04bc  ee ff ff 1a                                      bne #0x6a047c
006a04c0  9c 65 fc eb                                      bl #0x5b9b38
006a04c4  10 00 84 e5                                      str r0, [r4, #0x10]
006a04c8  10 80 bd e8                                      pop {r4, pc}
006a04cc  14 00 9f e5                                      ldr r0, [pc, #0x14]
006a04d0  03 10 a0 e3                                      mov r1, #3
006a04d4  00 00 8f e0                                      add r0, pc, r0
006a04d8  10 40 bd e8                                      pop {r4, lr}
006a04dc  ef a9 fd ea                                      b #0x60aca0
; mapping-symbol data/literal pool
006a04e0  fc aa 24 00 a0 aa 24 00 44 aa 24 00              .byte 0xfc, 0xaa, 0x24, 0x00, 0xa0, 0xaa, 0x24, 0x00, 0x44, 0xaa, 0x24, 0x00

; FUNCTION 0x006a0548, declared_size=104, range_size=104, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDeviceD1Ev
; demangled: glitch::CAndroidOSDevice::~CAndroidOSDevice()
; decoder-mode: arm
006a0548  70 40 2d e9                                      push {r4, r5, r6, lr}
006a054c  54 30 9f e5                                      ldr r3, [pc, #0x54]
006a0550  54 20 9f e5                                      ldr r2, [pc, #0x54]
006a0554  f8 10 90 e5                                      ldr r1, [r0, #0xf8]
006a0558  03 30 8f e0                                      add r3, pc, r3
006a055c  02 20 93 e7                                      ldr r2, [r3, r2]
006a0560  00 00 51 e3                                      cmp r1, #0
006a0564  00 40 a0 e1                                      mov r4, r0
006a0568  08 20 82 e2                                      add r2, r2, #8
006a056c  00 20 80 e5                                      str r2, [r0]
006a0570  08 00 00 0a                                      beq #0x6a0598
006a0574  e8 50 80 e2                                      add r5, r0, #0xe8
006a0578  05 00 a0 e1                                      mov r0, r5
006a057c  ec 10 94 e5                                      ldr r1, [r4, #0xec]
006a0580  e3 ff ff eb                                      bl #0x6a0514
006a0584  00 30 a0 e3                                      mov r3, #0
006a0588  f4 50 84 e5                                      str r5, [r4, #0xf4]
006a058c  f8 30 84 e5                                      str r3, [r4, #0xf8]
006a0590  f0 50 84 e5                                      str r5, [r4, #0xf0]
006a0594  ec 30 84 e5                                      str r3, [r4, #0xec]
006a0598  04 00 a0 e1                                      mov r0, r4
006a059c  3e 44 ff eb                                      bl #0x67169c
006a05a0  04 00 a0 e1                                      mov r0, r4
006a05a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006a05a8  38 45 2f 00 9c 34 00 00                          .byte 0x38, 0x45, 0x2f, 0x00, 0x9c, 0x34, 0x00, 0x00

; FUNCTION 0x006a05b0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDeviceD0Ev
; demangled: glitch::CAndroidOSDevice::~CAndroidOSDevice()
; decoder-mode: arm
006a05b0  10 40 2d e9                                      push {r4, lr}
006a05b4  00 40 a0 e1                                      mov r4, r0
006a05b8  e2 ff ff eb                                      bl #0x6a0548
006a05bc  04 00 a0 e1                                      mov r0, r4
006a05c0  3a b7 f1 eb                                      bl #0x30e2b0
006a05c4  04 00 a0 e1                                      mov r0, r4
006a05c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006a05cc, declared_size=104, range_size=104, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDeviceD2Ev
; demangled: glitch::CAndroidOSDevice::~CAndroidOSDevice()
; decoder-mode: arm
006a05cc  70 40 2d e9                                      push {r4, r5, r6, lr}
006a05d0  54 30 9f e5                                      ldr r3, [pc, #0x54]
006a05d4  54 20 9f e5                                      ldr r2, [pc, #0x54]
006a05d8  f8 10 90 e5                                      ldr r1, [r0, #0xf8]
006a05dc  03 30 8f e0                                      add r3, pc, r3
006a05e0  02 20 93 e7                                      ldr r2, [r3, r2]
006a05e4  00 00 51 e3                                      cmp r1, #0
006a05e8  00 40 a0 e1                                      mov r4, r0
006a05ec  08 20 82 e2                                      add r2, r2, #8
006a05f0  00 20 80 e5                                      str r2, [r0]
006a05f4  08 00 00 0a                                      beq #0x6a061c
006a05f8  e8 50 80 e2                                      add r5, r0, #0xe8
006a05fc  05 00 a0 e1                                      mov r0, r5
006a0600  ec 10 94 e5                                      ldr r1, [r4, #0xec]
006a0604  c2 ff ff eb                                      bl #0x6a0514
006a0608  00 30 a0 e3                                      mov r3, #0
006a060c  f4 50 84 e5                                      str r5, [r4, #0xf4]
006a0610  f8 30 84 e5                                      str r3, [r4, #0xf8]
006a0614  f0 50 84 e5                                      str r5, [r4, #0xf0]
006a0618  ec 30 84 e5                                      str r3, [r4, #0xec]
006a061c  04 00 a0 e1                                      mov r0, r4
006a0620  1d 44 ff eb                                      bl #0x67169c
006a0624  04 00 a0 e1                                      mov r0, r4
006a0628  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006a062c  b4 44 2f 00 9c 34 00 00                          .byte 0xb4, 0x44, 0x2f, 0x00, 0x9c, 0x34, 0x00, 0x00

; FUNCTION 0x006a0634, declared_size=276, range_size=276, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDeviceC1ERKNS_19SCreationParametersE
; demangled: glitch::CAndroidOSDevice::CAndroidOSDevice(glitch::SCreationParameters const&)
; decoder-mode: arm
006a0634  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006a0638  fc 50 9f e5                                      ldr r5, [pc, #0xfc]
006a063c  fc 60 9f e5                                      ldr r6, [pc, #0xfc]
006a0640  65 df 4d e2                                      sub sp, sp, #0x194
006a0644  05 50 8f e0                                      add r5, pc, r5
006a0648  06 30 95 e7                                      ldr r3, [r5, r6]
006a064c  00 40 a0 e1                                      mov r4, r0
006a0650  01 70 a0 e3                                      mov r7, #1
006a0654  00 30 93 e5                                      ldr r3, [r3]
006a0658  04 a0 8d e2                                      add sl, sp, #4
006a065c  c3 80 8a e2                                      add r8, sl, #0xc3
006a0660  8c 31 8d e5                                      str r3, [sp, #0x18c]
006a0664  08 47 ff eb                                      bl #0x67228c
006a0668  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
006a066c  00 20 a0 e3                                      mov r2, #0
006a0670  04 30 a0 e1                                      mov r3, r4
006a0674  01 10 95 e7                                      ldr r1, [r5, r1]
006a0678  dc 20 84 e5                                      str r2, [r4, #0xdc]
006a067c  ec 20 84 e5                                      str r2, [r4, #0xec]
006a0680  08 10 81 e2                                      add r1, r1, #8
006a0684  00 10 84 e5                                      str r1, [r4]
006a0688  e8 20 e3 e5                                      strb r2, [r3, #0xe8]!
006a068c  f4 30 84 e5                                      str r3, [r4, #0xf4]
006a0690  f0 30 84 e5                                      str r3, [r4, #0xf0]
006a0694  f8 20 84 e5                                      str r2, [r4, #0xf8]
006a0698  0a 00 a0 e1                                      mov r0, sl
006a069c  08 71 c4 e5                                      strb r7, [r4, #0x108]
006a06a0  09 71 c4 e5                                      strb r7, [r4, #0x109]
006a06a4  3e b6 f1 eb                                      bl #0x30dfa4
006a06a8  50 00 a0 e3                                      mov r0, #0x50
006a06ac  76 b8 f1 eb                                      bl #0x30e88c
006a06b0  08 10 a0 e1                                      mov r1, r8
006a06b4  00 a0 a0 e1                                      mov sl, r0
006a06b8  ae 01 00 eb                                      bl #0x6a0d78
006a06bc  07 10 a0 e1                                      mov r1, r7
006a06c0  08 00 a0 e1                                      mov r0, r8
006a06c4  30 a0 84 e5                                      str sl, [r4, #0x30]
006a06c8  74 a9 fd eb                                      bl #0x60aca0
006a06cc  04 00 a0 e1                                      mov r0, r4
006a06d0  1a ff ff eb                                      bl #0x6a0340
006a06d4  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006a06d8  00 00 53 e3                                      cmp r3, #0
006a06dc  12 00 00 1a                                      bne #0x6a072c
006a06e0  38 00 a0 e3                                      mov r0, #0x38
006a06e4  68 b8 f1 eb                                      bl #0x30e88c
006a06e8  04 20 a0 e1                                      mov r2, r4
006a06ec  60 10 84 e2                                      add r1, r4, #0x60
006a06f0  00 70 a0 e1                                      mov r7, r0
006a06f4  3b fe ff eb                                      bl #0x69ffe8
006a06f8  04 00 a0 e1                                      mov r0, r4
006a06fc  24 70 84 e5                                      str r7, [r4, #0x24]
006a0700  53 ff ff eb                                      bl #0x6a0454
006a0704  04 00 a0 e1                                      mov r0, r4
006a0708  91 43 ff eb                                      bl #0x671554
006a070c  06 30 95 e7                                      ldr r3, [r5, r6]
006a0710  8c 21 9d e5                                      ldr r2, [sp, #0x18c]
006a0714  04 00 a0 e1                                      mov r0, r4
006a0718  00 30 93 e5                                      ldr r3, [r3]
006a071c  03 00 52 e1                                      cmp r2, r3
006a0720  04 00 00 1a                                      bne #0x6a0738
006a0724  65 df 8d e2                                      add sp, sp, #0x194
006a0728  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006a072c  04 00 a0 e1                                      mov r0, r4
006a0730  de fe ff eb                                      bl #0x6a02b0
006a0734  e9 ff ff ea                                      b #0x6a06e0
006a0738  f4 b6 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006a073c  4c 44 2f 00 ac 40 00 00 9c 34 00 00              .byte 0x4c, 0x44, 0x2f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x9c, 0x34, 0x00, 0x00

; FUNCTION 0x006a079c, declared_size=276, range_size=276, mode=arm
; class-group: glitch::CAndroidOSDevice
; alias: _ZN6glitch16CAndroidOSDeviceC2ERKNS_19SCreationParametersE
; demangled: glitch::CAndroidOSDevice::CAndroidOSDevice(glitch::SCreationParameters const&)
; decoder-mode: arm
006a079c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006a07a0  fc 50 9f e5                                      ldr r5, [pc, #0xfc]
006a07a4  fc 60 9f e5                                      ldr r6, [pc, #0xfc]
006a07a8  65 df 4d e2                                      sub sp, sp, #0x194
006a07ac  05 50 8f e0                                      add r5, pc, r5
006a07b0  06 30 95 e7                                      ldr r3, [r5, r6]
006a07b4  00 40 a0 e1                                      mov r4, r0
006a07b8  01 70 a0 e3                                      mov r7, #1
006a07bc  00 30 93 e5                                      ldr r3, [r3]
006a07c0  04 a0 8d e2                                      add sl, sp, #4
006a07c4  c3 80 8a e2                                      add r8, sl, #0xc3
006a07c8  8c 31 8d e5                                      str r3, [sp, #0x18c]
006a07cc  ae 46 ff eb                                      bl #0x67228c
006a07d0  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
006a07d4  00 20 a0 e3                                      mov r2, #0
006a07d8  04 30 a0 e1                                      mov r3, r4
006a07dc  01 10 95 e7                                      ldr r1, [r5, r1]
006a07e0  dc 20 84 e5                                      str r2, [r4, #0xdc]
006a07e4  ec 20 84 e5                                      str r2, [r4, #0xec]
006a07e8  08 10 81 e2                                      add r1, r1, #8
006a07ec  00 10 84 e5                                      str r1, [r4]
006a07f0  e8 20 e3 e5                                      strb r2, [r3, #0xe8]!
006a07f4  f4 30 84 e5                                      str r3, [r4, #0xf4]
006a07f8  f0 30 84 e5                                      str r3, [r4, #0xf0]
006a07fc  f8 20 84 e5                                      str r2, [r4, #0xf8]
006a0800  0a 00 a0 e1                                      mov r0, sl
006a0804  08 71 c4 e5                                      strb r7, [r4, #0x108]
006a0808  09 71 c4 e5                                      strb r7, [r4, #0x109]
006a080c  e4 b5 f1 eb                                      bl #0x30dfa4
006a0810  50 00 a0 e3                                      mov r0, #0x50
006a0814  1c b8 f1 eb                                      bl #0x30e88c
006a0818  08 10 a0 e1                                      mov r1, r8
006a081c  00 a0 a0 e1                                      mov sl, r0
006a0820  54 01 00 eb                                      bl #0x6a0d78
006a0824  07 10 a0 e1                                      mov r1, r7
006a0828  08 00 a0 e1                                      mov r0, r8
006a082c  30 a0 84 e5                                      str sl, [r4, #0x30]
006a0830  1a a9 fd eb                                      bl #0x60aca0
006a0834  04 00 a0 e1                                      mov r0, r4
006a0838  c0 fe ff eb                                      bl #0x6a0340
006a083c  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006a0840  00 00 53 e3                                      cmp r3, #0
006a0844  12 00 00 1a                                      bne #0x6a0894
006a0848  38 00 a0 e3                                      mov r0, #0x38
006a084c  0e b8 f1 eb                                      bl #0x30e88c
006a0850  04 20 a0 e1                                      mov r2, r4
006a0854  60 10 84 e2                                      add r1, r4, #0x60
006a0858  00 70 a0 e1                                      mov r7, r0
006a085c  e1 fd ff eb                                      bl #0x69ffe8
006a0860  04 00 a0 e1                                      mov r0, r4
006a0864  24 70 84 e5                                      str r7, [r4, #0x24]
006a0868  f9 fe ff eb                                      bl #0x6a0454
006a086c  04 00 a0 e1                                      mov r0, r4
006a0870  37 43 ff eb                                      bl #0x671554
006a0874  06 30 95 e7                                      ldr r3, [r5, r6]
006a0878  8c 21 9d e5                                      ldr r2, [sp, #0x18c]
006a087c  04 00 a0 e1                                      mov r0, r4
006a0880  00 30 93 e5                                      ldr r3, [r3]
006a0884  03 00 52 e1                                      cmp r2, r3
006a0888  04 00 00 1a                                      bne #0x6a08a0
006a088c  65 df 8d e2                                      add sp, sp, #0x194
006a0890  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006a0894  04 00 a0 e1                                      mov r0, r4
006a0898  84 fe ff eb                                      bl #0x6a02b0
006a089c  e9 ff ff ea                                      b #0x6a0848
006a08a0  9a b6 f1 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
006a08a4  e4 42 2f 00 ac 40 00 00 9c 34 00 00              .byte 0xe4, 0x42, 0x2f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x9c, 0x34, 0x00, 0x00
