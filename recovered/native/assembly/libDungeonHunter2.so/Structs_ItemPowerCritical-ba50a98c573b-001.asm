; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d61c0, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerCritical
; alias: _ZN7Structs17ItemPowerCritical8finalizeEv
; demangled: Structs::ItemPowerCritical::finalize()
; decoder-mode: arm
004d61c0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d61c4  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d61c8  00 50 a0 e1                                      mov r5, r0
004d61cc  00 00 53 e3                                      cmp r3, #0
004d61d0  12 00 00 0a                                      beq #0x4d6220
004d61d4  04 00 13 e5                                      ldr r0, [r3, #-4]
004d61d8  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d61dc  00 00 53 e1                                      cmp r3, r0
004d61e0  01 00 00 1a                                      bne #0x4d61ec
004d61e4  08 00 00 ea                                      b #0x4d620c
004d61e8  04 00 a0 e1                                      mov r0, r4
004d61ec  10 40 40 e2                                      sub r4, r0, #0x10
004d61f0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d61f4  04 00 a0 e1                                      mov r0, r4
004d61f8  0f e0 a0 e1                                      mov lr, pc
004d61fc  00 f0 93 e5                                      ldr pc, [r3]
004d6200  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6204  04 00 50 e1                                      cmp r0, r4
004d6208  f6 ff ff 1a                                      bne #0x4d61e8
004d620c  08 00 40 e2                                      sub r0, r0, #8
004d6210  8a e8 f8 eb                                      bl #0x310440
004d6214  00 30 a0 e3                                      mov r3, #0
004d6218  0c 30 85 e5                                      str r3, [r5, #0xc]
004d621c  10 30 85 e5                                      str r3, [r5, #0x10]
004d6220  05 00 a0 e1                                      mov r0, r5
004d6224  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d6228  43 fd ff ea                                      b #0x4d573c

; FUNCTION 0x004d85cc, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerCritical
; alias: _ZN7Structs17ItemPowerCriticalD1Ev
; demangled: Structs::ItemPowerCritical::~ItemPowerCritical()
; decoder-mode: arm
004d85cc  70 40 2d e9                                      push {r4, r5, r6, lr}
004d85d0  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d85d4  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d85d8  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d85dc  03 30 8f e0                                      add r3, pc, r3
004d85e0  02 20 93 e7                                      ldr r2, [r3, r2]
004d85e4  00 00 51 e3                                      cmp r1, #0
004d85e8  00 50 a0 e1                                      mov r5, r0
004d85ec  08 20 82 e2                                      add r2, r2, #8
004d85f0  00 20 80 e5                                      str r2, [r0]
004d85f4  0f 00 00 0a                                      beq #0x4d8638
004d85f8  04 00 11 e5                                      ldr r0, [r1, #-4]
004d85fc  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8600  00 00 51 e1                                      cmp r1, r0
004d8604  01 00 00 1a                                      bne #0x4d8610
004d8608  08 00 00 ea                                      b #0x4d8630
004d860c  04 00 a0 e1                                      mov r0, r4
004d8610  10 40 40 e2                                      sub r4, r0, #0x10
004d8614  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8618  04 00 a0 e1                                      mov r0, r4
004d861c  0f e0 a0 e1                                      mov lr, pc
004d8620  00 f0 93 e5                                      ldr pc, [r3]
004d8624  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8628  04 00 50 e1                                      cmp r0, r4
004d862c  f6 ff ff 1a                                      bne #0x4d860c
004d8630  08 00 40 e2                                      sub r0, r0, #8
004d8634  81 df f8 eb                                      bl #0x310440
004d8638  05 00 a0 e1                                      mov r0, r5
004d863c  eb f8 ff eb                                      bl #0x4d69f0
004d8640  05 00 a0 e1                                      mov r0, r5
004d8644  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8648  b4 c4 4b 00 bc 09 00 00                          .byte 0xb4, 0xc4, 0x4b, 0x00, 0xbc, 0x09, 0x00, 0x00

; FUNCTION 0x004d8650, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerCritical
; alias: _ZN7Structs17ItemPowerCriticalD0Ev
; demangled: Structs::ItemPowerCritical::~ItemPowerCritical()
; decoder-mode: arm
004d8650  10 40 2d e9                                      push {r4, lr}
004d8654  00 40 a0 e1                                      mov r4, r0
004d8658  db ff ff eb                                      bl #0x4d85cc
004d865c  04 00 a0 e1                                      mov r0, r4
004d8660  76 df f8 eb                                      bl #0x310440
004d8664  04 00 a0 e1                                      mov r0, r4
004d8668  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d866c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerCritical
; alias: _ZN7Structs17ItemPowerCriticalD2Ev
; demangled: Structs::ItemPowerCritical::~ItemPowerCritical()
; decoder-mode: arm
004d866c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8670  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8674  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8678  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d867c  03 30 8f e0                                      add r3, pc, r3
004d8680  02 20 93 e7                                      ldr r2, [r3, r2]
004d8684  00 00 51 e3                                      cmp r1, #0
004d8688  00 50 a0 e1                                      mov r5, r0
004d868c  08 20 82 e2                                      add r2, r2, #8
004d8690  00 20 80 e5                                      str r2, [r0]
004d8694  0f 00 00 0a                                      beq #0x4d86d8
004d8698  04 00 11 e5                                      ldr r0, [r1, #-4]
004d869c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d86a0  00 00 51 e1                                      cmp r1, r0
004d86a4  01 00 00 1a                                      bne #0x4d86b0
004d86a8  08 00 00 ea                                      b #0x4d86d0
004d86ac  04 00 a0 e1                                      mov r0, r4
004d86b0  10 40 40 e2                                      sub r4, r0, #0x10
004d86b4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d86b8  04 00 a0 e1                                      mov r0, r4
004d86bc  0f e0 a0 e1                                      mov lr, pc
004d86c0  00 f0 93 e5                                      ldr pc, [r3]
004d86c4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d86c8  04 00 50 e1                                      cmp r0, r4
004d86cc  f6 ff ff 1a                                      bne #0x4d86ac
004d86d0  08 00 40 e2                                      sub r0, r0, #8
004d86d4  59 df f8 eb                                      bl #0x310440
004d86d8  05 00 a0 e1                                      mov r0, r5
004d86dc  c3 f8 ff eb                                      bl #0x4d69f0
004d86e0  05 00 a0 e1                                      mov r0, r5
004d86e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d86e8  14 c4 4b 00 bc 09 00 00                          .byte 0x14, 0xc4, 0x4b, 0x00, 0xbc, 0x09, 0x00, 0x00

; FUNCTION 0x004ed1b8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerCritical
; alias: _ZN7Structs17ItemPowerCritical4readEP11IStreamBase
; demangled: Structs::ItemPowerCritical::read(IStreamBase*)
; decoder-mode: arm
004ed1b8  02 ff ff ea                                      b #0x4ecdc8
