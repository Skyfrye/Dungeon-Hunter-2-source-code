; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5ecc, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerDR
; alias: _ZN7Structs11ItemPowerDR8finalizeEv
; demangled: Structs::ItemPowerDR::finalize()
; decoder-mode: arm
004d5ecc  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5ed0  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5ed4  00 50 a0 e1                                      mov r5, r0
004d5ed8  00 00 53 e3                                      cmp r3, #0
004d5edc  12 00 00 0a                                      beq #0x4d5f2c
004d5ee0  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5ee4  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5ee8  00 00 53 e1                                      cmp r3, r0
004d5eec  01 00 00 1a                                      bne #0x4d5ef8
004d5ef0  08 00 00 ea                                      b #0x4d5f18
004d5ef4  04 00 a0 e1                                      mov r0, r4
004d5ef8  10 40 40 e2                                      sub r4, r0, #0x10
004d5efc  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5f00  04 00 a0 e1                                      mov r0, r4
004d5f04  0f e0 a0 e1                                      mov lr, pc
004d5f08  00 f0 93 e5                                      ldr pc, [r3]
004d5f0c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5f10  04 00 50 e1                                      cmp r0, r4
004d5f14  f6 ff ff 1a                                      bne #0x4d5ef4
004d5f18  08 00 40 e2                                      sub r0, r0, #8
004d5f1c  47 e9 f8 eb                                      bl #0x310440
004d5f20  00 30 a0 e3                                      mov r3, #0
004d5f24  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5f28  10 30 85 e5                                      str r3, [r5, #0x10]
004d5f2c  05 00 a0 e1                                      mov r0, r5
004d5f30  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5f34  00 fe ff ea                                      b #0x4d573c

; FUNCTION 0x004d7dd0, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerDR
; alias: _ZN7Structs11ItemPowerDRD1Ev
; demangled: Structs::ItemPowerDR::~ItemPowerDR()
; decoder-mode: arm
004d7dd0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7dd4  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7dd8  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7ddc  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7de0  03 30 8f e0                                      add r3, pc, r3
004d7de4  02 20 93 e7                                      ldr r2, [r3, r2]
004d7de8  00 00 51 e3                                      cmp r1, #0
004d7dec  00 50 a0 e1                                      mov r5, r0
004d7df0  08 20 82 e2                                      add r2, r2, #8
004d7df4  00 20 80 e5                                      str r2, [r0]
004d7df8  0f 00 00 0a                                      beq #0x4d7e3c
004d7dfc  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7e00  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7e04  00 00 51 e1                                      cmp r1, r0
004d7e08  01 00 00 1a                                      bne #0x4d7e14
004d7e0c  08 00 00 ea                                      b #0x4d7e34
004d7e10  04 00 a0 e1                                      mov r0, r4
004d7e14  10 40 40 e2                                      sub r4, r0, #0x10
004d7e18  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7e1c  04 00 a0 e1                                      mov r0, r4
004d7e20  0f e0 a0 e1                                      mov lr, pc
004d7e24  00 f0 93 e5                                      ldr pc, [r3]
004d7e28  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7e2c  04 00 50 e1                                      cmp r0, r4
004d7e30  f6 ff ff 1a                                      bne #0x4d7e10
004d7e34  08 00 40 e2                                      sub r0, r0, #8
004d7e38  80 e1 f8 eb                                      bl #0x310440
004d7e3c  05 00 a0 e1                                      mov r0, r5
004d7e40  ea fa ff eb                                      bl #0x4d69f0
004d7e44  05 00 a0 e1                                      mov r0, r5
004d7e48  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7e4c  b0 cc 4b 00 e4 08 00 00                          .byte 0xb0, 0xcc, 0x4b, 0x00, 0xe4, 0x08, 0x00, 0x00

; FUNCTION 0x004d7e54, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerDR
; alias: _ZN7Structs11ItemPowerDRD0Ev
; demangled: Structs::ItemPowerDR::~ItemPowerDR()
; decoder-mode: arm
004d7e54  10 40 2d e9                                      push {r4, lr}
004d7e58  00 40 a0 e1                                      mov r4, r0
004d7e5c  db ff ff eb                                      bl #0x4d7dd0
004d7e60  04 00 a0 e1                                      mov r0, r4
004d7e64  75 e1 f8 eb                                      bl #0x310440
004d7e68  04 00 a0 e1                                      mov r0, r4
004d7e6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d7e70, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerDR
; alias: _ZN7Structs11ItemPowerDRD2Ev
; demangled: Structs::ItemPowerDR::~ItemPowerDR()
; decoder-mode: arm
004d7e70  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7e74  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7e78  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7e7c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7e80  03 30 8f e0                                      add r3, pc, r3
004d7e84  02 20 93 e7                                      ldr r2, [r3, r2]
004d7e88  00 00 51 e3                                      cmp r1, #0
004d7e8c  00 50 a0 e1                                      mov r5, r0
004d7e90  08 20 82 e2                                      add r2, r2, #8
004d7e94  00 20 80 e5                                      str r2, [r0]
004d7e98  0f 00 00 0a                                      beq #0x4d7edc
004d7e9c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7ea0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7ea4  00 00 51 e1                                      cmp r1, r0
004d7ea8  01 00 00 1a                                      bne #0x4d7eb4
004d7eac  08 00 00 ea                                      b #0x4d7ed4
004d7eb0  04 00 a0 e1                                      mov r0, r4
004d7eb4  10 40 40 e2                                      sub r4, r0, #0x10
004d7eb8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7ebc  04 00 a0 e1                                      mov r0, r4
004d7ec0  0f e0 a0 e1                                      mov lr, pc
004d7ec4  00 f0 93 e5                                      ldr pc, [r3]
004d7ec8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7ecc  04 00 50 e1                                      cmp r0, r4
004d7ed0  f6 ff ff 1a                                      bne #0x4d7eb0
004d7ed4  08 00 40 e2                                      sub r0, r0, #8
004d7ed8  58 e1 f8 eb                                      bl #0x310440
004d7edc  05 00 a0 e1                                      mov r0, r5
004d7ee0  c2 fa ff eb                                      bl #0x4d69f0
004d7ee4  05 00 a0 e1                                      mov r0, r5
004d7ee8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7eec  10 cc 4b 00 e4 08 00 00                          .byte 0x10, 0xcc, 0x4b, 0x00, 0xe4, 0x08, 0x00, 0x00

; FUNCTION 0x004ed19c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerDR
; alias: _ZN7Structs11ItemPowerDR4readEP11IStreamBase
; demangled: Structs::ItemPowerDR::read(IStreamBase*)
; decoder-mode: arm
004ed19c  09 ff ff ea                                      b #0x4ecdc8
