; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d607c, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerArmor
; alias: _ZN7Structs14ItemPowerArmor8finalizeEv
; demangled: Structs::ItemPowerArmor::finalize()
; decoder-mode: arm
004d607c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6080  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d6084  00 50 a0 e1                                      mov r5, r0
004d6088  00 00 53 e3                                      cmp r3, #0
004d608c  12 00 00 0a                                      beq #0x4d60dc
004d6090  04 00 13 e5                                      ldr r0, [r3, #-4]
004d6094  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d6098  00 00 53 e1                                      cmp r3, r0
004d609c  01 00 00 1a                                      bne #0x4d60a8
004d60a0  08 00 00 ea                                      b #0x4d60c8
004d60a4  04 00 a0 e1                                      mov r0, r4
004d60a8  10 40 40 e2                                      sub r4, r0, #0x10
004d60ac  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d60b0  04 00 a0 e1                                      mov r0, r4
004d60b4  0f e0 a0 e1                                      mov lr, pc
004d60b8  00 f0 93 e5                                      ldr pc, [r3]
004d60bc  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d60c0  04 00 50 e1                                      cmp r0, r4
004d60c4  f6 ff ff 1a                                      bne #0x4d60a4
004d60c8  08 00 40 e2                                      sub r0, r0, #8
004d60cc  db e8 f8 eb                                      bl #0x310440
004d60d0  00 30 a0 e3                                      mov r3, #0
004d60d4  0c 30 85 e5                                      str r3, [r5, #0xc]
004d60d8  10 30 85 e5                                      str r3, [r5, #0x10]
004d60dc  05 00 a0 e1                                      mov r0, r5
004d60e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d60e4  94 fd ff ea                                      b #0x4d573c

; FUNCTION 0x004d8260, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerArmor
; alias: _ZN7Structs14ItemPowerArmorD1Ev
; demangled: Structs::ItemPowerArmor::~ItemPowerArmor()
; decoder-mode: arm
004d8260  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8264  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8268  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d826c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8270  03 30 8f e0                                      add r3, pc, r3
004d8274  02 20 93 e7                                      ldr r2, [r3, r2]
004d8278  00 00 51 e3                                      cmp r1, #0
004d827c  00 50 a0 e1                                      mov r5, r0
004d8280  08 20 82 e2                                      add r2, r2, #8
004d8284  00 20 80 e5                                      str r2, [r0]
004d8288  0f 00 00 0a                                      beq #0x4d82cc
004d828c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8290  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8294  00 00 51 e1                                      cmp r1, r0
004d8298  01 00 00 1a                                      bne #0x4d82a4
004d829c  08 00 00 ea                                      b #0x4d82c4
004d82a0  04 00 a0 e1                                      mov r0, r4
004d82a4  10 40 40 e2                                      sub r4, r0, #0x10
004d82a8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d82ac  04 00 a0 e1                                      mov r0, r4
004d82b0  0f e0 a0 e1                                      mov lr, pc
004d82b4  00 f0 93 e5                                      ldr pc, [r3]
004d82b8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d82bc  04 00 50 e1                                      cmp r0, r4
004d82c0  f6 ff ff 1a                                      bne #0x4d82a0
004d82c4  08 00 40 e2                                      sub r0, r0, #8
004d82c8  5c e0 f8 eb                                      bl #0x310440
004d82cc  05 00 a0 e1                                      mov r0, r5
004d82d0  c6 f9 ff eb                                      bl #0x4d69f0
004d82d4  05 00 a0 e1                                      mov r0, r5
004d82d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d82dc  20 c8 4b 00 84 47 00 00                          .byte 0x20, 0xc8, 0x4b, 0x00, 0x84, 0x47, 0x00, 0x00

; FUNCTION 0x004d82e4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerArmor
; alias: _ZN7Structs14ItemPowerArmorD0Ev
; demangled: Structs::ItemPowerArmor::~ItemPowerArmor()
; decoder-mode: arm
004d82e4  10 40 2d e9                                      push {r4, lr}
004d82e8  00 40 a0 e1                                      mov r4, r0
004d82ec  db ff ff eb                                      bl #0x4d8260
004d82f0  04 00 a0 e1                                      mov r0, r4
004d82f4  51 e0 f8 eb                                      bl #0x310440
004d82f8  04 00 a0 e1                                      mov r0, r4
004d82fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d8300, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerArmor
; alias: _ZN7Structs14ItemPowerArmorD2Ev
; demangled: Structs::ItemPowerArmor::~ItemPowerArmor()
; decoder-mode: arm
004d8300  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8304  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8308  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d830c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8310  03 30 8f e0                                      add r3, pc, r3
004d8314  02 20 93 e7                                      ldr r2, [r3, r2]
004d8318  00 00 51 e3                                      cmp r1, #0
004d831c  00 50 a0 e1                                      mov r5, r0
004d8320  08 20 82 e2                                      add r2, r2, #8
004d8324  00 20 80 e5                                      str r2, [r0]
004d8328  0f 00 00 0a                                      beq #0x4d836c
004d832c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8330  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8334  00 00 51 e1                                      cmp r1, r0
004d8338  01 00 00 1a                                      bne #0x4d8344
004d833c  08 00 00 ea                                      b #0x4d8364
004d8340  04 00 a0 e1                                      mov r0, r4
004d8344  10 40 40 e2                                      sub r4, r0, #0x10
004d8348  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d834c  04 00 a0 e1                                      mov r0, r4
004d8350  0f e0 a0 e1                                      mov lr, pc
004d8354  00 f0 93 e5                                      ldr pc, [r3]
004d8358  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d835c  04 00 50 e1                                      cmp r0, r4
004d8360  f6 ff ff 1a                                      bne #0x4d8340
004d8364  08 00 40 e2                                      sub r0, r0, #8
004d8368  34 e0 f8 eb                                      bl #0x310440
004d836c  05 00 a0 e1                                      mov r0, r5
004d8370  9e f9 ff eb                                      bl #0x4d69f0
004d8374  05 00 a0 e1                                      mov r0, r5
004d8378  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d837c  80 c7 4b 00 84 47 00 00                          .byte 0x80, 0xc7, 0x4b, 0x00, 0x84, 0x47, 0x00, 0x00

; FUNCTION 0x004ed1ac, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerArmor
; alias: _ZN7Structs14ItemPowerArmor4readEP11IStreamBase
; demangled: Structs::ItemPowerArmor::read(IStreamBase*)
; decoder-mode: arm
004ed1ac  05 ff ff ea                                      b #0x4ecdc8
