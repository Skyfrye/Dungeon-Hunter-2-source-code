; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033d1f4, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenPS3
; alias: _ZNK14TouchScreenPS312getLeftBoundEv
; demangled: TouchScreenPS3::getLeftBound() const
; decoder-mode: arm
0033d1f4  00 00 a0 e3                                      mov r0, #0
0033d1f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033d1fc, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenPS3
; alias: _ZNK14TouchScreenPS313getRightBoundEv
; demangled: TouchScreenPS3::getRightBound() const
; decoder-mode: arm
0033d1fc  00 00 a0 e3                                      mov r0, #0
0033d200  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033d204, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenPS3
; alias: _ZNK14TouchScreenPS311getTopBoundEv
; demangled: TouchScreenPS3::getTopBound() const
; decoder-mode: arm
0033d204  00 00 a0 e3                                      mov r0, #0
0033d208  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033d20c, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenPS3
; alias: _ZNK14TouchScreenPS314getBottomBoundEv
; demangled: TouchScreenPS3::getBottomBound() const
; decoder-mode: arm
0033d20c  00 00 a0 e3                                      mov r0, #0
0033d210  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033d214, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenPS3
; alias: _ZThn436_N14TouchScreenPS37onEventERKN6glitch6SEventE
; demangled: non-virtual thunk to TouchScreenPS3::onEvent(glitch::SEvent const&)
; decoder-mode: arm
0033d214  6d 0f 40 e2                                      sub r0, r0, #0x1b4
0033d218  ff ff ff ea                                      b #0x33d21c

; FUNCTION 0x0033d21c, declared_size=252, range_size=252, mode=arm
; class-group: TouchScreenPS3
; alias: _ZN14TouchScreenPS37onEventERKN6glitch6SEventE
; demangled: TouchScreenPS3::onEvent(glitch::SEvent const&)
; decoder-mode: arm
0033d21c  10 40 2d e9                                      push {r4, lr}
0033d220  00 40 91 e5                                      ldr r4, [r1]
0033d224  10 d0 4d e2                                      sub sp, sp, #0x10
0033d228  01 30 a0 e1                                      mov r3, r1
0033d22c  01 00 54 e3                                      cmp r4, #1
0033d230  02 00 00 0a                                      beq #0x33d240
0033d234  00 00 a0 e3                                      mov r0, #0
0033d238  10 d0 8d e2                                      add sp, sp, #0x10
0033d23c  10 80 bd e8                                      pop {r4, pc}
0033d240  14 20 91 e5                                      ldr r2, [r1, #0x14]
0033d244  03 00 52 e3                                      cmp r2, #3
0033d248  20 00 00 0a                                      beq #0x33d2d0
0033d24c  06 00 52 e3                                      cmp r2, #6
0033d250  0e 00 00 0a                                      beq #0x33d290
0033d254  00 00 52 e3                                      cmp r2, #0
0033d258  f5 ff ff 1a                                      bne #0x33d234
0033d25c  a8 e0 9f e5                                      ldr lr, [pc, #0xa8]
0033d260  0c 10 8d e2                                      add r1, sp, #0xc
0033d264  0e e0 8f e0                                      add lr, pc, lr
0033d268  00 40 ce e5                                      strb r4, [lr]
0033d26c  00 c0 90 e5                                      ldr ip, [r0]
0033d270  bc e0 d3 e1                                      ldrh lr, [r3, #0xc]
0033d274  b8 30 d3 e1                                      ldrh r3, [r3, #8]
0033d278  20 c0 9c e5                                      ldr ip, [ip, #0x20]
0033d27c  be e0 cd e1                                      strh lr, [sp, #0xe]
0033d280  bc 30 cd e1                                      strh r3, [sp, #0xc]
0033d284  3c ff 2f e1                                      blx ip
0033d288  04 00 a0 e1                                      mov r0, r4
0033d28c  e9 ff ff ea                                      b #0x33d238
0033d290  78 20 9f e5                                      ldr r2, [pc, #0x78]
0033d294  02 20 8f e0                                      add r2, pc, r2
0033d298  00 20 d2 e5                                      ldrb r2, [r2]
0033d29c  00 00 52 e3                                      cmp r2, #0
0033d2a0  e3 ff ff 0a                                      beq #0x33d234
0033d2a4  00 c0 90 e5                                      ldr ip, [r0]
0033d2a8  bc 20 d1 e1                                      ldrh r2, [r1, #0xc]
0033d2ac  b8 30 d3 e1                                      ldrh r3, [r3, #8]
0033d2b0  24 c0 9c e5                                      ldr ip, [ip, #0x24]
0033d2b4  04 10 8d e2                                      add r1, sp, #4
0033d2b8  b6 20 cd e1                                      strh r2, [sp, #6]
0033d2bc  b4 30 cd e1                                      strh r3, [sp, #4]
0033d2c0  00 20 a0 e3                                      mov r2, #0
0033d2c4  3c ff 2f e1                                      blx ip
0033d2c8  04 00 a0 e1                                      mov r0, r4
0033d2cc  d9 ff ff ea                                      b #0x33d238
0033d2d0  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0033d2d4  00 e0 a0 e3                                      mov lr, #0
0033d2d8  0e 20 a0 e1                                      mov r2, lr
0033d2dc  01 10 8f e0                                      add r1, pc, r1
0033d2e0  00 e0 c1 e5                                      strb lr, [r1]
0033d2e4  00 c0 90 e5                                      ldr ip, [r0]
0033d2e8  bc e0 d3 e1                                      ldrh lr, [r3, #0xc]
0033d2ec  b8 30 d3 e1                                      ldrh r3, [r3, #8]
0033d2f0  28 c0 9c e5                                      ldr ip, [ip, #0x28]
0033d2f4  08 10 8d e2                                      add r1, sp, #8
0033d2f8  b8 30 cd e1                                      strh r3, [sp, #8]
0033d2fc  ba e0 cd e1                                      strh lr, [sp, #0xa]
0033d300  3c ff 2f e1                                      blx ip
0033d304  04 00 a0 e1                                      mov r0, r4
0033d308  ca ff ff ea                                      b #0x33d238
; mapping-symbol data/literal pool
0033d30c  70 4b 66 00 40 4b 66 00 f8 4a 66 00              .byte 0x70, 0x4b, 0x66, 0x00, 0x40, 0x4b, 0x66, 0x00, 0xf8, 0x4a, 0x66, 0x00

; FUNCTION 0x0033d338, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenPS3
; alias: _ZThn436_N14TouchScreenPS3D1Ev
; demangled: non-virtual thunk to TouchScreenPS3::~TouchScreenPS3()
; decoder-mode: arm
0033d338  6d 0f 40 e2                                      sub r0, r0, #0x1b4
0033d33c  ff ff ff ea                                      b #0x33d340

; FUNCTION 0x0033d340, declared_size=72, range_size=72, mode=arm
; class-group: TouchScreenPS3
; alias: _ZN14TouchScreenPS3D1Ev
; demangled: TouchScreenPS3::~TouchScreenPS3()
; decoder-mode: arm
0033d340  34 30 9f e5                                      ldr r3, [pc, #0x34]
0033d344  34 10 9f e5                                      ldr r1, [pc, #0x34]
0033d348  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033d34c  03 30 8f e0                                      add r3, pc, r3
0033d350  01 10 93 e7                                      ldr r1, [r3, r1]
0033d354  02 20 93 e7                                      ldr r2, [r3, r2]
0033d358  10 40 2d e9                                      push {r4, lr}
0033d35c  08 10 81 e2                                      add r1, r1, #8
0033d360  08 20 82 e2                                      add r2, r2, #8
0033d364  00 40 a0 e1                                      mov r4, r0
0033d368  00 10 80 e5                                      str r1, [r0]
0033d36c  b4 21 80 e5                                      str r2, [r0, #0x1b4]
0033d370  bb fa ff eb                                      bl #0x33be64
0033d374  04 00 a0 e1                                      mov r0, r4
0033d378  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033d37c  44 77 65 00 0c 12 00 00 4c 27 00 00              .byte 0x44, 0x77, 0x65, 0x00, 0x0c, 0x12, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x0033d388, declared_size=8, range_size=8, mode=arm
; class-group: TouchScreenPS3
; alias: _ZThn436_N14TouchScreenPS3D0Ev
; demangled: non-virtual thunk to TouchScreenPS3::~TouchScreenPS3()
; decoder-mode: arm
0033d388  6d 0f 40 e2                                      sub r0, r0, #0x1b4
0033d38c  ff ff ff ea                                      b #0x33d390

; FUNCTION 0x0033d390, declared_size=28, range_size=28, mode=arm
; class-group: TouchScreenPS3
; alias: _ZN14TouchScreenPS3D0Ev
; demangled: TouchScreenPS3::~TouchScreenPS3()
; decoder-mode: arm
0033d390  10 40 2d e9                                      push {r4, lr}
0033d394  00 40 a0 e1                                      mov r4, r0
0033d398  e8 ff ff eb                                      bl #0x33d340
0033d39c  04 00 a0 e1                                      mov r0, r4
0033d3a0  26 4c ff eb                                      bl #0x310440
0033d3a4  04 00 a0 e1                                      mov r0, r4
0033d3a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033d3ac, declared_size=72, range_size=72, mode=arm
; class-group: TouchScreenPS3
; alias: _ZN14TouchScreenPS3D2Ev
; demangled: TouchScreenPS3::~TouchScreenPS3()
; decoder-mode: arm
0033d3ac  34 30 9f e5                                      ldr r3, [pc, #0x34]
0033d3b0  34 10 9f e5                                      ldr r1, [pc, #0x34]
0033d3b4  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033d3b8  03 30 8f e0                                      add r3, pc, r3
0033d3bc  01 10 93 e7                                      ldr r1, [r3, r1]
0033d3c0  02 20 93 e7                                      ldr r2, [r3, r2]
0033d3c4  10 40 2d e9                                      push {r4, lr}
0033d3c8  08 10 81 e2                                      add r1, r1, #8
0033d3cc  08 20 82 e2                                      add r2, r2, #8
0033d3d0  00 40 a0 e1                                      mov r4, r0
0033d3d4  00 10 80 e5                                      str r1, [r0]
0033d3d8  b4 21 80 e5                                      str r2, [r0, #0x1b4]
0033d3dc  a0 fa ff eb                                      bl #0x33be64
0033d3e0  04 00 a0 e1                                      mov r0, r4
0033d3e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0033d3e8  d8 76 65 00 0c 12 00 00 4c 27 00 00              .byte 0xd8, 0x76, 0x65, 0x00, 0x0c, 0x12, 0x00, 0x00, 0x4c, 0x27, 0x00, 0x00

; FUNCTION 0x0033d3f4, declared_size=76, range_size=76, mode=arm
; class-group: TouchScreenPS3
; alias: _ZN14TouchScreenPS3C1Ev
; demangled: TouchScreenPS3::TouchScreenPS3()
; decoder-mode: arm
0033d3f4  00 10 a0 e3                                      mov r1, #0
0033d3f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0033d3fc  01 20 a0 e1                                      mov r2, r1
0033d400  30 50 9f e5                                      ldr r5, [pc, #0x30]
0033d404  00 40 a0 e1                                      mov r4, r0
0033d408  a2 fb ff eb                                      bl #0x33c298
0033d40c  28 30 9f e5                                      ldr r3, [pc, #0x28]
0033d410  05 50 8f e0                                      add r5, pc, r5
0033d414  00 20 a0 e3                                      mov r2, #0
0033d418  03 30 95 e7                                      ldr r3, [r5, r3]
0033d41c  90 21 84 e5                                      str r2, [r4, #0x190]
0033d420  04 00 a0 e1                                      mov r0, r4
0033d424  68 20 83 e2                                      add r2, r3, #0x68
0033d428  08 30 83 e2                                      add r3, r3, #8
0033d42c  00 30 84 e5                                      str r3, [r4]
0033d430  b4 21 84 e5                                      str r2, [r4, #0x1b4]
0033d434  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033d438  80 76 65 00 0c 12 00 00                          .byte 0x80, 0x76, 0x65, 0x00, 0x0c, 0x12, 0x00, 0x00

; FUNCTION 0x0033d440, declared_size=76, range_size=76, mode=arm
; class-group: TouchScreenPS3
; alias: _ZN14TouchScreenPS3C2Ev
; demangled: TouchScreenPS3::TouchScreenPS3()
; decoder-mode: arm
0033d440  00 10 a0 e3                                      mov r1, #0
0033d444  70 40 2d e9                                      push {r4, r5, r6, lr}
0033d448  01 20 a0 e1                                      mov r2, r1
0033d44c  30 50 9f e5                                      ldr r5, [pc, #0x30]
0033d450  00 40 a0 e1                                      mov r4, r0
0033d454  8f fb ff eb                                      bl #0x33c298
0033d458  28 30 9f e5                                      ldr r3, [pc, #0x28]
0033d45c  05 50 8f e0                                      add r5, pc, r5
0033d460  00 20 a0 e3                                      mov r2, #0
0033d464  03 30 95 e7                                      ldr r3, [r5, r3]
0033d468  90 21 84 e5                                      str r2, [r4, #0x190]
0033d46c  04 00 a0 e1                                      mov r0, r4
0033d470  68 20 83 e2                                      add r2, r3, #0x68
0033d474  08 30 83 e2                                      add r3, r3, #8
0033d478  00 30 84 e5                                      str r3, [r4]
0033d47c  b4 21 84 e5                                      str r2, [r4, #0x1b4]
0033d480  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033d484  34 76 65 00 0c 12 00 00                          .byte 0x34, 0x76, 0x65, 0x00, 0x0c, 0x12, 0x00, 0x00
