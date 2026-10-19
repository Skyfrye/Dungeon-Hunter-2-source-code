; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0069ffe8, declared_size=184, range_size=184, mode=arm
; class-group: glitch::CAndroidOSDevice::CCursorControl
; alias: _ZN6glitch16CAndroidOSDevice14CCursorControlC1ERKNS_4core11dimension2dIiEEPS0_
; demangled: glitch::CAndroidOSDevice::CCursorControl::CCursorControl(glitch::core::dimension2d<int> const&, glitch::CAndroidOSDevice*)
; decoder-mode: arm
0069ffe8  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0069ffec  a8 c0 9f e5                                      ldr ip, [pc, #0xa8]
0069fff0  70 40 2d e9                                      push {r4, r5, r6, lr}
0069fff4  03 30 8f e0                                      add r3, pc, r3
0069fff8  0c c0 93 e7                                      ldr ip, [r3, ip]
0069fffc  00 50 a0 e3                                      mov r5, #0
006a0000  01 60 a0 e3                                      mov r6, #1
006a0004  08 c0 8c e2                                      add ip, ip, #8
006a0008  00 c0 80 e5                                      str ip, [r0]
006a000c  04 60 80 e5                                      str r6, [r0, #4]
006a0010  08 50 80 e5                                      str r5, [r0, #8]
006a0014  0c 50 80 e5                                      str r5, [r0, #0xc]
006a0018  00 40 a0 e1                                      mov r4, r0
006a001c  00 00 91 e5                                      ldr r0, [r1]
006a0020  00 c0 a0 e3                                      mov ip, #0
006a0024  10 00 84 e5                                      str r0, [r4, #0x10]
006a0028  04 30 91 e5                                      ldr r3, [r1, #4]
006a002c  05 00 50 e1                                      cmp r0, r5
006a0030  1c c0 84 e5                                      str ip, [r4, #0x1c]
006a0034  14 30 84 e5                                      str r3, [r4, #0x14]
006a0038  30 20 84 e5                                      str r2, [r4, #0x30]
006a003c  34 60 c4 e5                                      strb r6, [r4, #0x34]
006a0040  35 50 c4 e5                                      strb r5, [r4, #0x35]
006a0044  18 c0 84 e5                                      str ip, [r4, #0x18]
006a0048  20 50 84 e5                                      str r5, [r4, #0x20]
006a004c  24 50 84 e5                                      str r5, [r4, #0x24]
006a0050  28 50 84 e5                                      str r5, [r4, #0x28]
006a0054  2c 50 84 e5                                      str r5, [r4, #0x2c]
006a0058  04 00 00 0a                                      beq #0x6a0070
006a005c  40 ba f1 eb                                      bl #0x30e964
006a0060  00 10 a0 e1                                      mov r1, r0
006a0064  fe 05 a0 e3                                      mov r0, #0x3f800000
006a0068  09 bb f1 eb                                      bl #0x30ec94
006a006c  18 00 84 e5                                      str r0, [r4, #0x18]
006a0070  14 00 94 e5                                      ldr r0, [r4, #0x14]
006a0074  00 00 50 e3                                      cmp r0, #0
006a0078  04 00 00 0a                                      beq #0x6a0090
006a007c  38 ba f1 eb                                      bl #0x30e964
006a0080  00 10 a0 e1                                      mov r1, r0
006a0084  fe 05 a0 e3                                      mov r0, #0x3f800000
006a0088  01 bb f1 eb                                      bl #0x30ec94
006a008c  1c 00 84 e5                                      str r0, [r4, #0x1c]
006a0090  04 00 a0 e1                                      mov r0, r4
006a0094  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006a0098  9c 4a 2f 00 78 16 00 00                          .byte 0x9c, 0x4a, 0x2f, 0x00, 0x78, 0x16, 0x00, 0x00

; FUNCTION 0x006a00a0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::CAndroidOSDevice::CCursorControl
; alias: _ZNK6glitch16CAndroidOSDevice14CCursorControl9isVisibleEv
; demangled: glitch::CAndroidOSDevice::CCursorControl::isVisible() const
; decoder-mode: arm
006a00a0  34 00 d0 e5                                      ldrb r0, [r0, #0x34]
006a00a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a00a8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::CAndroidOSDevice::CCursorControl
; alias: _ZN6glitch16CAndroidOSDevice14CCursorControl11setPositionERKNS_4core10position2dIfEE
; demangled: glitch::CAndroidOSDevice::CCursorControl::setPosition(glitch::core::position2d<float> const&)
; decoder-mode: arm
006a00a8  10 40 2d e9                                      push {r4, lr}
006a00ac  00 30 90 e5                                      ldr r3, [r0]
006a00b0  04 20 91 e5                                      ldr r2, [r1, #4]
006a00b4  00 10 91 e5                                      ldr r1, [r1]
006a00b8  0f e0 a0 e1                                      mov lr, pc
006a00bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006a00c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006a00c4, declared_size=88, range_size=88, mode=arm
; class-group: glitch::CAndroidOSDevice::CCursorControl
; alias: _ZN6glitch16CAndroidOSDevice14CCursorControl11setPositionEff
; demangled: glitch::CAndroidOSDevice::CCursorControl::setPosition(float, float)
; decoder-mode: arm
006a00c4  70 40 2d e9                                      push {r4, r5, r6, lr}
006a00c8  00 40 a0 e1                                      mov r4, r0
006a00cc  01 60 a0 e1                                      mov r6, r1
006a00d0  10 00 90 e5                                      ldr r0, [r0, #0x10]
006a00d4  02 50 a0 e1                                      mov r5, r2
006a00d8  21 ba f1 eb                                      bl #0x30e964
006a00dc  06 10 a0 e1                                      mov r1, r6
006a00e0  21 bb f1 eb                                      bl #0x30ed6c
006a00e4  f8 b8 f1 eb                                      bl #0x30e4cc
006a00e8  00 60 a0 e1                                      mov r6, r0
006a00ec  14 00 94 e5                                      ldr r0, [r4, #0x14]
006a00f0  1b ba f1 eb                                      bl #0x30e964
006a00f4  05 10 a0 e1                                      mov r1, r5
006a00f8  1b bb f1 eb                                      bl #0x30ed6c
006a00fc  f2 b8 f1 eb                                      bl #0x30e4cc
006a0100  00 50 94 e5                                      ldr r5, [r4]
006a0104  00 20 a0 e1                                      mov r2, r0
006a0108  06 10 a0 e1                                      mov r1, r6
006a010c  04 00 a0 e1                                      mov r0, r4
006a0110  0f e0 a0 e1                                      mov lr, pc
006a0114  20 f0 95 e5                                      ldr pc, [r5, #0x20]
006a0118  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a011c, declared_size=72, range_size=72, mode=arm
; class-group: glitch::CAndroidOSDevice::CCursorControl
; alias: _ZN6glitch16CAndroidOSDevice14CCursorControl11setPositionERKNS_4core10position2dIiEE
; demangled: glitch::CAndroidOSDevice::CCursorControl::setPosition(glitch::core::position2d<int> const&)
; decoder-mode: arm
006a011c  10 40 2d e9                                      push {r4, lr}
006a0120  08 20 90 e5                                      ldr r2, [r0, #8]
006a0124  00 c0 91 e5                                      ldr ip, [r1]
006a0128  00 30 a0 e1                                      mov r3, r0
006a012c  0c 00 52 e1                                      cmp r2, ip
006a0130  04 20 91 15                                      ldrne r2, [r1, #4]
006a0134  05 00 00 0a                                      beq #0x6a0150
006a0138  03 00 a0 e1                                      mov r0, r3
006a013c  0c 10 a0 e1                                      mov r1, ip
006a0140  00 30 93 e5                                      ldr r3, [r3]
006a0144  0f e0 a0 e1                                      mov lr, pc
006a0148  20 f0 93 e5                                      ldr pc, [r3, #0x20]
006a014c  10 80 bd e8                                      pop {r4, pc}
006a0150  04 20 91 e5                                      ldr r2, [r1, #4]
006a0154  0c 10 90 e5                                      ldr r1, [r0, #0xc]
006a0158  02 00 51 e1                                      cmp r1, r2
006a015c  f5 ff ff 1a                                      bne #0x6a0138
006a0160  f9 ff ff ea                                      b #0x6a014c

; FUNCTION 0x006a0164, declared_size=20, range_size=20, mode=arm
; class-group: glitch::CAndroidOSDevice::CCursorControl
; alias: _ZN6glitch16CAndroidOSDevice14CCursorControl11getPositionEv
; demangled: glitch::CAndroidOSDevice::CCursorControl::getPosition()
; decoder-mode: arm
006a0164  08 20 91 e5                                      ldr r2, [r1, #8]
006a0168  00 20 80 e5                                      str r2, [r0]
006a016c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
006a0170  04 20 80 e5                                      str r2, [r0, #4]
006a0174  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a0178, declared_size=176, range_size=176, mode=arm
; class-group: glitch::CAndroidOSDevice::CCursorControl
; alias: _ZN6glitch16CAndroidOSDevice14CCursorControl19getRelativePositionEv
; demangled: glitch::CAndroidOSDevice::CCursorControl::getRelativePosition()
; decoder-mode: arm
006a0178  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a017c  35 30 d1 e5                                      ldrb r3, [r1, #0x35]
006a0180  01 40 a0 e1                                      mov r4, r1
006a0184  00 50 a0 e1                                      mov r5, r0
006a0188  00 00 53 e3                                      cmp r3, #0
006a018c  18 00 00 0a                                      beq #0x6a01f4
006a0190  0c 00 91 e5                                      ldr r0, [r1, #0xc]
006a0194  f2 b9 f1 eb                                      bl #0x30e964
006a0198  24 30 94 e5                                      ldr r3, [r4, #0x24]
006a019c  00 60 a0 e1                                      mov r6, r0
006a01a0  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
006a01a4  00 00 63 e0                                      rsb r0, r3, r0
006a01a8  ed b9 f1 eb                                      bl #0x30e964
006a01ac  00 10 a0 e1                                      mov r1, r0
006a01b0  06 00 a0 e1                                      mov r0, r6
006a01b4  b6 ba f1 eb                                      bl #0x30ec94
006a01b8  00 60 a0 e1                                      mov r6, r0
006a01bc  08 00 94 e5                                      ldr r0, [r4, #8]
006a01c0  e7 b9 f1 eb                                      bl #0x30e964
006a01c4  20 30 94 e5                                      ldr r3, [r4, #0x20]
006a01c8  00 70 a0 e1                                      mov r7, r0
006a01cc  28 00 94 e5                                      ldr r0, [r4, #0x28]
006a01d0  00 00 63 e0                                      rsb r0, r3, r0
006a01d4  e2 b9 f1 eb                                      bl #0x30e964
006a01d8  00 10 a0 e1                                      mov r1, r0
006a01dc  07 00 a0 e1                                      mov r0, r7
006a01e0  ab ba f1 eb                                      bl #0x30ec94
006a01e4  04 60 85 e5                                      str r6, [r5, #4]
006a01e8  00 00 85 e5                                      str r0, [r5]
006a01ec  05 00 a0 e1                                      mov r0, r5
006a01f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a01f4  0c 00 91 e5                                      ldr r0, [r1, #0xc]
006a01f8  d9 b9 f1 eb                                      bl #0x30e964
006a01fc  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006a0200  d9 ba f1 eb                                      bl #0x30ed6c
006a0204  00 60 a0 e1                                      mov r6, r0
006a0208  08 00 94 e5                                      ldr r0, [r4, #8]
006a020c  d4 b9 f1 eb                                      bl #0x30e964
006a0210  18 10 94 e5                                      ldr r1, [r4, #0x18]
006a0214  d4 ba f1 eb                                      bl #0x30ed6c
006a0218  04 60 85 e5                                      str r6, [r5, #4]
006a021c  00 00 85 e5                                      str r0, [r5]
006a0220  05 00 a0 e1                                      mov r0, r5
006a0224  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006a0228, declared_size=124, range_size=124, mode=arm
; class-group: glitch::CAndroidOSDevice::CCursorControl
; alias: _ZN6glitch16CAndroidOSDevice14CCursorControl16setReferenceRectEPNS_4core4rectIiEE
; demangled: glitch::CAndroidOSDevice::CCursorControl::setReferenceRect(glitch::core::rect<int>*)
; decoder-mode: arm
006a0228  00 00 51 e3                                      cmp r1, #0
006a022c  04 40 2d e5                                      str r4, [sp, #-4]!
006a0230  35 10 c0 05                                      strbeq r1, [r0, #0x35]
006a0234  15 00 00 0a                                      beq #0x6a0290
006a0238  00 c0 91 e5                                      ldr ip, [r1]
006a023c  20 c0 80 e5                                      str ip, [r0, #0x20]
006a0240  04 40 91 e5                                      ldr r4, [r1, #4]
006a0244  24 40 80 e5                                      str r4, [r0, #0x24]
006a0248  08 30 91 e5                                      ldr r3, [r1, #8]
006a024c  28 30 80 e5                                      str r3, [r0, #0x28]
006a0250  0c 20 91 e5                                      ldr r2, [r1, #0xc]
006a0254  01 10 a0 e3                                      mov r1, #1
006a0258  35 10 c0 e5                                      strb r1, [r0, #0x35]
006a025c  02 00 54 e1                                      cmp r4, r2
006a0260  2c 20 80 e5                                      str r2, [r0, #0x2c]
006a0264  0b 00 00 0a                                      beq #0x6a0298
006a0268  02 40 64 e0                                      rsb r4, r4, r2
006a026c  01 00 14 e3                                      tst r4, #1
006a0270  08 00 00 1a                                      bne #0x6a0298
006a0274  03 00 5c e1                                      cmp ip, r3
006a0278  02 00 00 0a                                      beq #0x6a0288
006a027c  03 c0 6c e0                                      rsb ip, ip, r3
006a0280  01 00 1c e3                                      tst ip, #1
006a0284  01 00 00 0a                                      beq #0x6a0290
006a0288  01 30 83 e2                                      add r3, r3, #1
006a028c  28 30 80 e5                                      str r3, [r0, #0x28]
006a0290  10 00 bd e8                                      ldm sp!, {r4}
006a0294  1e ff 2f e1                                      bx lr
006a0298  01 20 82 e2                                      add r2, r2, #1
006a029c  2c 20 80 e5                                      str r2, [r0, #0x2c]
006a02a0  f3 ff ff ea                                      b #0x6a0274

; FUNCTION 0x006a02f0, declared_size=64, range_size=64, mode=arm
; class-group: glitch::CAndroidOSDevice::CCursorControl
; alias: _ZN6glitch16CAndroidOSDevice14CCursorControl11setPositionEii
; demangled: glitch::CAndroidOSDevice::CCursorControl::setPosition(int, int)
; decoder-mode: arm
006a02f0  70 40 2d e9                                      push {r4, r5, r6, lr}
006a02f4  35 30 d0 e5                                      ldrb r3, [r0, #0x35]
006a02f8  01 50 a0 e1                                      mov r5, r1
006a02fc  02 60 a0 e1                                      mov r6, r2
006a0300  00 00 53 e3                                      cmp r3, #0
006a0304  20 10 90 15                                      ldrne r1, [r0, #0x20]
006a0308  24 20 90 15                                      ldrne r2, [r0, #0x24]
006a030c  00 40 a0 e1                                      mov r4, r0
006a0310  01 10 85 10                                      addne r1, r5, r1
006a0314  30 00 90 15                                      ldrne r0, [r0, #0x30]
006a0318  02 20 86 10                                      addne r2, r6, r2
006a031c  30 00 94 05                                      ldreq r0, [r4, #0x30]
006a0320  f1 ff ff eb                                      bl #0x6a02ec
006a0324  0c 60 84 e5                                      str r6, [r4, #0xc]
006a0328  08 50 84 e5                                      str r5, [r4, #8]
006a032c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a0334, declared_size=12, range_size=12, mode=arm
; class-group: glitch::CAndroidOSDevice::CCursorControl
; alias: _ZN6glitch16CAndroidOSDevice14CCursorControl10setVisibleEb
; demangled: glitch::CAndroidOSDevice::CCursorControl::setVisible(bool)
; decoder-mode: arm
006a0334  34 10 c0 e5                                      strb r1, [r0, #0x34]
006a0338  30 00 90 e5                                      ldr r0, [r0, #0x30]
006a033c  fb ff ff ea                                      b #0x6a0330

; FUNCTION 0x006a0350, declared_size=4, range_size=4, mode=arm
; class-group: glitch::CAndroidOSDevice::CCursorControl
; alias: _ZN6glitch16CAndroidOSDevice14CCursorControlD1Ev
; demangled: glitch::CAndroidOSDevice::CCursorControl::~CCursorControl()
; decoder-mode: arm
006a0350  1e ff 2f e1                                      bx lr

; FUNCTION 0x006a04ec, declared_size=20, range_size=20, mode=arm
; class-group: glitch::CAndroidOSDevice::CCursorControl
; alias: _ZN6glitch16CAndroidOSDevice14CCursorControlD0Ev
; demangled: glitch::CAndroidOSDevice::CCursorControl::~CCursorControl()
; decoder-mode: arm
006a04ec  10 40 2d e9                                      push {r4, lr}
006a04f0  00 40 a0 e1                                      mov r4, r0
006a04f4  6d b7 f1 eb                                      bl #0x30e2b0
006a04f8  04 00 a0 e1                                      mov r0, r4
006a04fc  10 80 bd e8                                      pop {r4, pc}
