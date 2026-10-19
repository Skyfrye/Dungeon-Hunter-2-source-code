; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0069ac90, declared_size=4, range_size=4, mode=arm
; class-group: glitch::ps::PDPoint
; alias: _ZN6glitch2ps7PDPointD1Ev
; demangled: glitch::ps::PDPoint::~PDPoint()
; decoder-mode: arm
0069ac90  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069ac94, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDPoint
; alias: _ZNK6glitch2ps7PDPoint7getTypeEv
; demangled: glitch::ps::PDPoint::getType() const
; decoder-mode: arm
0069ac94  03 00 a0 e3                                      mov r0, #3
0069ac98  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069ace4, declared_size=84, range_size=84, mode=arm
; class-group: glitch::ps::PDPoint
; alias: _ZN6glitch2ps7PDPointC2ERKNS_4core8vector3dIfEE
; demangled: glitch::ps::PDPoint::PDPoint(glitch::core::vector3d<float> const&)
; decoder-mode: arm
0069ace4  44 20 9f e5                                      ldr r2, [pc, #0x44]
0069ace8  04 40 2d e5                                      str r4, [sp, #-4]!
0069acec  40 40 9f e5                                      ldr r4, [pc, #0x40]
0069acf0  02 20 8f e0                                      add r2, pc, r2
0069acf4  00 c0 a0 e3                                      mov ip, #0
0069acf8  04 40 92 e7                                      ldr r4, [r2, r4]
0069acfc  0c c0 80 e5                                      str ip, [r0, #0xc]
0069ad00  04 c0 80 e5                                      str ip, [r0, #4]
0069ad04  08 40 84 e2                                      add r4, r4, #8
0069ad08  08 c0 80 e5                                      str ip, [r0, #8]
0069ad0c  00 40 80 e5                                      str r4, [r0]
0069ad10  00 c0 91 e5                                      ldr ip, [r1]
0069ad14  04 c0 80 e5                                      str ip, [r0, #4]
0069ad18  04 20 91 e5                                      ldr r2, [r1, #4]
0069ad1c  08 20 80 e5                                      str r2, [r0, #8]
0069ad20  08 20 91 e5                                      ldr r2, [r1, #8]
0069ad24  0c 20 80 e5                                      str r2, [r0, #0xc]
0069ad28  10 00 bd e8                                      ldm sp!, {r4}
0069ad2c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0069ad30  a0 9d 2f 00 58 0a 00 00                          .byte 0xa0, 0x9d, 0x2f, 0x00, 0x58, 0x0a, 0x00, 0x00

; FUNCTION 0x0069ad38, declared_size=84, range_size=84, mode=arm
; class-group: glitch::ps::PDPoint
; alias: _ZN6glitch2ps7PDPointC1ERKNS_4core8vector3dIfEE
; demangled: glitch::ps::PDPoint::PDPoint(glitch::core::vector3d<float> const&)
; decoder-mode: arm
0069ad38  44 20 9f e5                                      ldr r2, [pc, #0x44]
0069ad3c  04 40 2d e5                                      str r4, [sp, #-4]!
0069ad40  40 40 9f e5                                      ldr r4, [pc, #0x40]
0069ad44  02 20 8f e0                                      add r2, pc, r2
0069ad48  00 c0 a0 e3                                      mov ip, #0
0069ad4c  04 40 92 e7                                      ldr r4, [r2, r4]
0069ad50  0c c0 80 e5                                      str ip, [r0, #0xc]
0069ad54  04 c0 80 e5                                      str ip, [r0, #4]
0069ad58  08 40 84 e2                                      add r4, r4, #8
0069ad5c  08 c0 80 e5                                      str ip, [r0, #8]
0069ad60  00 40 80 e5                                      str r4, [r0]
0069ad64  00 c0 91 e5                                      ldr ip, [r1]
0069ad68  04 c0 80 e5                                      str ip, [r0, #4]
0069ad6c  04 20 91 e5                                      ldr r2, [r1, #4]
0069ad70  08 20 80 e5                                      str r2, [r0, #8]
0069ad74  08 20 91 e5                                      ldr r2, [r1, #8]
0069ad78  0c 20 80 e5                                      str r2, [r0, #0xc]
0069ad7c  10 00 bd e8                                      ldm sp!, {r4}
0069ad80  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0069ad84  4c 9d 2f 00 58 0a 00 00                          .byte 0x4c, 0x9d, 0x2f, 0x00, 0x58, 0x0a, 0x00, 0x00

; FUNCTION 0x0069ad8c, declared_size=92, range_size=92, mode=arm
; class-group: glitch::ps::PDPoint
; alias: _ZNK6glitch2ps7PDPoint6withinERKNS_4core8vector3dIfEE
; demangled: glitch::ps::PDPoint::within(glitch::core::vector3d<float> const&) const
; decoder-mode: arm
0069ad8c  70 40 2d e9                                      push {r4, r5, r6, lr}
0069ad90  00 50 a0 e1                                      mov r5, r0
0069ad94  01 40 a0 e1                                      mov r4, r1
0069ad98  04 00 90 e5                                      ldr r0, [r0, #4]
0069ad9c  00 10 91 e5                                      ldr r1, [r1]
0069ada0  79 cc f1 eb                                      bl #0x30df8c
0069ada4  00 00 50 e3                                      cmp r0, #0
0069ada8  0c 00 00 0a                                      beq #0x69ade0
0069adac  08 00 95 e5                                      ldr r0, [r5, #8]
0069adb0  04 10 94 e5                                      ldr r1, [r4, #4]
0069adb4  74 cc f1 eb                                      bl #0x30df8c
0069adb8  00 00 50 e3                                      cmp r0, #0
0069adbc  07 00 00 0a                                      beq #0x69ade0
0069adc0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0069adc4  08 10 94 e5                                      ldr r1, [r4, #8]
0069adc8  6f cc f1 eb                                      bl #0x30df8c
0069adcc  00 00 50 e3                                      cmp r0, #0
0069add0  00 00 a0 e3                                      mov r0, #0
0069add4  01 00 a0 13                                      movne r0, #1
0069add8  70 00 ef e6                                      uxtb r0, r0
0069addc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0069ade0  00 00 a0 e3                                      mov r0, #0
0069ade4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0069ade8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::ps::PDPoint
; alias: _ZNK6glitch2ps7PDPoint8generateERNS0_8PSRandomE
; demangled: glitch::ps::PDPoint::generate(glitch::ps::PSRandom&) const
; decoder-mode: arm
0069ade8  04 20 91 e5                                      ldr r2, [r1, #4]
0069adec  00 20 80 e5                                      str r2, [r0]
0069adf0  08 20 91 e5                                      ldr r2, [r1, #8]
0069adf4  04 20 80 e5                                      str r2, [r0, #4]
0069adf8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0069adfc  08 20 80 e5                                      str r2, [r0, #8]
0069ae00  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069ae04, declared_size=72, range_size=72, mode=arm
; class-group: glitch::ps::PDPoint
; alias: _ZN6glitch2ps7PDPoint9transformERKNS_4core8CMatrix4IfEE
; demangled: glitch::ps::PDPoint::transform(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0069ae04  70 40 2d e9                                      push {r4, r5, r6, lr}
0069ae08  01 30 a0 e1                                      mov r3, r1
0069ae0c  00 40 a0 e1                                      mov r4, r0
0069ae10  30 10 91 e5                                      ldr r1, [r1, #0x30]
0069ae14  04 00 90 e5                                      ldr r0, [r0, #4]
0069ae18  34 60 93 e5                                      ldr r6, [r3, #0x34]
0069ae1c  38 50 93 e5                                      ldr r5, [r3, #0x38]
0069ae20  5f cf f1 eb                                      bl #0x30eba4
0069ae24  06 10 a0 e1                                      mov r1, r6
0069ae28  04 00 84 e5                                      str r0, [r4, #4]
0069ae2c  08 00 94 e5                                      ldr r0, [r4, #8]
0069ae30  5b cf f1 eb                                      bl #0x30eba4
0069ae34  05 10 a0 e1                                      mov r1, r5
0069ae38  08 00 84 e5                                      str r0, [r4, #8]
0069ae3c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0069ae40  57 cf f1 eb                                      bl #0x30eba4
0069ae44  0c 00 84 e5                                      str r0, [r4, #0xc]
0069ae48  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0069ae4c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::ps::PDPoint
; alias: _ZNK6glitch2ps7PDPoint4sizeEv
; demangled: glitch::ps::PDPoint::size() const
; decoder-mode: arm
0069ae4c  fe 05 a0 e3                                      mov r0, #0x3f800000
0069ae50  1e ff 2f e1                                      bx lr

; FUNCTION 0x0069bfa4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::ps::PDPoint
; alias: _ZN6glitch2ps7PDPointD0Ev
; demangled: glitch::ps::PDPoint::~PDPoint()
; decoder-mode: arm
0069bfa4  10 40 2d e9                                      push {r4, lr}
0069bfa8  00 40 a0 e1                                      mov r4, r0
0069bfac  bf c8 f1 eb                                      bl #0x30e2b0
0069bfb0  04 00 a0 e1                                      mov r0, r4
0069bfb4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0069c45c, declared_size=80, range_size=80, mode=arm
; class-group: glitch::ps::PDPoint
; alias: _ZNK6glitch2ps7PDPoint4copyEv
; demangled: glitch::ps::PDPoint::copy() const
; decoder-mode: arm
0069c45c  70 40 2d e9                                      push {r4, r5, r6, lr}
0069c460  00 10 a0 e3                                      mov r1, #0
0069c464  00 50 a0 e1                                      mov r5, r0
0069c468  10 00 a0 e3                                      mov r0, #0x10
0069c46c  4e 5f fa eb                                      bl #0x5341ac
0069c470  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
0069c474  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0069c478  04 40 8f e0                                      add r4, pc, r4
0069c47c  02 20 94 e7                                      ldr r2, [r4, r2]
0069c480  08 20 82 e2                                      add r2, r2, #8
0069c484  00 20 80 e5                                      str r2, [r0]
0069c488  04 20 95 e5                                      ldr r2, [r5, #4]
0069c48c  04 20 80 e5                                      str r2, [r0, #4]
0069c490  08 20 95 e5                                      ldr r2, [r5, #8]
0069c494  08 20 80 e5                                      str r2, [r0, #8]
0069c498  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0069c49c  0c 20 80 e5                                      str r2, [r0, #0xc]
0069c4a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0069c4a4  18 86 2f 00 58 0a 00 00                          .byte 0x18, 0x86, 0x2f, 0x00, 0x58, 0x0a, 0x00, 0x00
