; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5f38, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerAR
; alias: _ZN7Structs11ItemPowerAR8finalizeEv
; demangled: Structs::ItemPowerAR::finalize()
; decoder-mode: arm
004d5f38  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5f3c  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5f40  00 50 a0 e1                                      mov r5, r0
004d5f44  00 00 53 e3                                      cmp r3, #0
004d5f48  12 00 00 0a                                      beq #0x4d5f98
004d5f4c  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5f50  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5f54  00 00 53 e1                                      cmp r3, r0
004d5f58  01 00 00 1a                                      bne #0x4d5f64
004d5f5c  08 00 00 ea                                      b #0x4d5f84
004d5f60  04 00 a0 e1                                      mov r0, r4
004d5f64  10 40 40 e2                                      sub r4, r0, #0x10
004d5f68  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5f6c  04 00 a0 e1                                      mov r0, r4
004d5f70  0f e0 a0 e1                                      mov lr, pc
004d5f74  00 f0 93 e5                                      ldr pc, [r3]
004d5f78  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5f7c  04 00 50 e1                                      cmp r0, r4
004d5f80  f6 ff ff 1a                                      bne #0x4d5f60
004d5f84  08 00 40 e2                                      sub r0, r0, #8
004d5f88  2c e9 f8 eb                                      bl #0x310440
004d5f8c  00 30 a0 e3                                      mov r3, #0
004d5f90  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5f94  10 30 85 e5                                      str r3, [r5, #0x10]
004d5f98  05 00 a0 e1                                      mov r0, r5
004d5f9c  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5fa0  e5 fd ff ea                                      b #0x4d573c

; FUNCTION 0x004d7ef4, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerAR
; alias: _ZN7Structs11ItemPowerARD1Ev
; demangled: Structs::ItemPowerAR::~ItemPowerAR()
; decoder-mode: arm
004d7ef4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7ef8  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7efc  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7f00  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7f04  03 30 8f e0                                      add r3, pc, r3
004d7f08  02 20 93 e7                                      ldr r2, [r3, r2]
004d7f0c  00 00 51 e3                                      cmp r1, #0
004d7f10  00 50 a0 e1                                      mov r5, r0
004d7f14  08 20 82 e2                                      add r2, r2, #8
004d7f18  00 20 80 e5                                      str r2, [r0]
004d7f1c  0f 00 00 0a                                      beq #0x4d7f60
004d7f20  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7f24  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7f28  00 00 51 e1                                      cmp r1, r0
004d7f2c  01 00 00 1a                                      bne #0x4d7f38
004d7f30  08 00 00 ea                                      b #0x4d7f58
004d7f34  04 00 a0 e1                                      mov r0, r4
004d7f38  10 40 40 e2                                      sub r4, r0, #0x10
004d7f3c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7f40  04 00 a0 e1                                      mov r0, r4
004d7f44  0f e0 a0 e1                                      mov lr, pc
004d7f48  00 f0 93 e5                                      ldr pc, [r3]
004d7f4c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7f50  04 00 50 e1                                      cmp r0, r4
004d7f54  f6 ff ff 1a                                      bne #0x4d7f34
004d7f58  08 00 40 e2                                      sub r0, r0, #8
004d7f5c  37 e1 f8 eb                                      bl #0x310440
004d7f60  05 00 a0 e1                                      mov r0, r5
004d7f64  a1 fa ff eb                                      bl #0x4d69f0
004d7f68  05 00 a0 e1                                      mov r0, r5
004d7f6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7f70  8c cb 4b 00 dc 11 00 00                          .byte 0x8c, 0xcb, 0x4b, 0x00, 0xdc, 0x11, 0x00, 0x00

; FUNCTION 0x004d7f78, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerAR
; alias: _ZN7Structs11ItemPowerARD0Ev
; demangled: Structs::ItemPowerAR::~ItemPowerAR()
; decoder-mode: arm
004d7f78  10 40 2d e9                                      push {r4, lr}
004d7f7c  00 40 a0 e1                                      mov r4, r0
004d7f80  db ff ff eb                                      bl #0x4d7ef4
004d7f84  04 00 a0 e1                                      mov r0, r4
004d7f88  2c e1 f8 eb                                      bl #0x310440
004d7f8c  04 00 a0 e1                                      mov r0, r4
004d7f90  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d7f94, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerAR
; alias: _ZN7Structs11ItemPowerARD2Ev
; demangled: Structs::ItemPowerAR::~ItemPowerAR()
; decoder-mode: arm
004d7f94  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7f98  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7f9c  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7fa0  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7fa4  03 30 8f e0                                      add r3, pc, r3
004d7fa8  02 20 93 e7                                      ldr r2, [r3, r2]
004d7fac  00 00 51 e3                                      cmp r1, #0
004d7fb0  00 50 a0 e1                                      mov r5, r0
004d7fb4  08 20 82 e2                                      add r2, r2, #8
004d7fb8  00 20 80 e5                                      str r2, [r0]
004d7fbc  0f 00 00 0a                                      beq #0x4d8000
004d7fc0  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7fc4  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7fc8  00 00 51 e1                                      cmp r1, r0
004d7fcc  01 00 00 1a                                      bne #0x4d7fd8
004d7fd0  08 00 00 ea                                      b #0x4d7ff8
004d7fd4  04 00 a0 e1                                      mov r0, r4
004d7fd8  10 40 40 e2                                      sub r4, r0, #0x10
004d7fdc  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7fe0  04 00 a0 e1                                      mov r0, r4
004d7fe4  0f e0 a0 e1                                      mov lr, pc
004d7fe8  00 f0 93 e5                                      ldr pc, [r3]
004d7fec  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7ff0  04 00 50 e1                                      cmp r0, r4
004d7ff4  f6 ff ff 1a                                      bne #0x4d7fd4
004d7ff8  08 00 40 e2                                      sub r0, r0, #8
004d7ffc  0f e1 f8 eb                                      bl #0x310440
004d8000  05 00 a0 e1                                      mov r0, r5
004d8004  79 fa ff eb                                      bl #0x4d69f0
004d8008  05 00 a0 e1                                      mov r0, r5
004d800c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8010  ec ca 4b 00 dc 11 00 00                          .byte 0xec, 0xca, 0x4b, 0x00, 0xdc, 0x11, 0x00, 0x00

; FUNCTION 0x004ed1a0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerAR
; alias: _ZN7Structs11ItemPowerAR4readEP11IStreamBase
; demangled: Structs::ItemPowerAR::read(IStreamBase*)
; decoder-mode: arm
004ed1a0  08 ff ff ea                                      b #0x4ecdc8
