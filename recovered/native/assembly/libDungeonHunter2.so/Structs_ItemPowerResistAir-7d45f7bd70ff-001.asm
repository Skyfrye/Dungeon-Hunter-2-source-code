; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5d1c, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerResistAir
; alias: _ZN7Structs18ItemPowerResistAir8finalizeEv
; demangled: Structs::ItemPowerResistAir::finalize()
; decoder-mode: arm
004d5d1c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5d20  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5d24  00 50 a0 e1                                      mov r5, r0
004d5d28  00 00 53 e3                                      cmp r3, #0
004d5d2c  12 00 00 0a                                      beq #0x4d5d7c
004d5d30  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5d34  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5d38  00 00 53 e1                                      cmp r3, r0
004d5d3c  01 00 00 1a                                      bne #0x4d5d48
004d5d40  08 00 00 ea                                      b #0x4d5d68
004d5d44  04 00 a0 e1                                      mov r0, r4
004d5d48  10 40 40 e2                                      sub r4, r0, #0x10
004d5d4c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5d50  04 00 a0 e1                                      mov r0, r4
004d5d54  0f e0 a0 e1                                      mov lr, pc
004d5d58  00 f0 93 e5                                      ldr pc, [r3]
004d5d5c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5d60  04 00 50 e1                                      cmp r0, r4
004d5d64  f6 ff ff 1a                                      bne #0x4d5d44
004d5d68  08 00 40 e2                                      sub r0, r0, #8
004d5d6c  b3 e9 f8 eb                                      bl #0x310440
004d5d70  00 30 a0 e3                                      mov r3, #0
004d5d74  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5d78  10 30 85 e5                                      str r3, [r5, #0x10]
004d5d7c  05 00 a0 e1                                      mov r0, r5
004d5d80  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5d84  6c fe ff ea                                      b #0x4d573c

; FUNCTION 0x004d7940, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerResistAir
; alias: _ZN7Structs18ItemPowerResistAirD1Ev
; demangled: Structs::ItemPowerResistAir::~ItemPowerResistAir()
; decoder-mode: arm
004d7940  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7944  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7948  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d794c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7950  03 30 8f e0                                      add r3, pc, r3
004d7954  02 20 93 e7                                      ldr r2, [r3, r2]
004d7958  00 00 51 e3                                      cmp r1, #0
004d795c  00 50 a0 e1                                      mov r5, r0
004d7960  08 20 82 e2                                      add r2, r2, #8
004d7964  00 20 80 e5                                      str r2, [r0]
004d7968  0f 00 00 0a                                      beq #0x4d79ac
004d796c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7970  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7974  00 00 51 e1                                      cmp r1, r0
004d7978  01 00 00 1a                                      bne #0x4d7984
004d797c  08 00 00 ea                                      b #0x4d79a4
004d7980  04 00 a0 e1                                      mov r0, r4
004d7984  10 40 40 e2                                      sub r4, r0, #0x10
004d7988  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d798c  04 00 a0 e1                                      mov r0, r4
004d7990  0f e0 a0 e1                                      mov lr, pc
004d7994  00 f0 93 e5                                      ldr pc, [r3]
004d7998  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d799c  04 00 50 e1                                      cmp r0, r4
004d79a0  f6 ff ff 1a                                      bne #0x4d7980
004d79a4  08 00 40 e2                                      sub r0, r0, #8
004d79a8  a4 e2 f8 eb                                      bl #0x310440
004d79ac  05 00 a0 e1                                      mov r0, r5
004d79b0  0e fc ff eb                                      bl #0x4d69f0
004d79b4  05 00 a0 e1                                      mov r0, r5
004d79b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d79bc  40 d1 4b 00 6c 07 00 00                          .byte 0x40, 0xd1, 0x4b, 0x00, 0x6c, 0x07, 0x00, 0x00

; FUNCTION 0x004d79c4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerResistAir
; alias: _ZN7Structs18ItemPowerResistAirD0Ev
; demangled: Structs::ItemPowerResistAir::~ItemPowerResistAir()
; decoder-mode: arm
004d79c4  10 40 2d e9                                      push {r4, lr}
004d79c8  00 40 a0 e1                                      mov r4, r0
004d79cc  db ff ff eb                                      bl #0x4d7940
004d79d0  04 00 a0 e1                                      mov r0, r4
004d79d4  99 e2 f8 eb                                      bl #0x310440
004d79d8  04 00 a0 e1                                      mov r0, r4
004d79dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d79e0, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerResistAir
; alias: _ZN7Structs18ItemPowerResistAirD2Ev
; demangled: Structs::ItemPowerResistAir::~ItemPowerResistAir()
; decoder-mode: arm
004d79e0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d79e4  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d79e8  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d79ec  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d79f0  03 30 8f e0                                      add r3, pc, r3
004d79f4  02 20 93 e7                                      ldr r2, [r3, r2]
004d79f8  00 00 51 e3                                      cmp r1, #0
004d79fc  00 50 a0 e1                                      mov r5, r0
004d7a00  08 20 82 e2                                      add r2, r2, #8
004d7a04  00 20 80 e5                                      str r2, [r0]
004d7a08  0f 00 00 0a                                      beq #0x4d7a4c
004d7a0c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7a10  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7a14  00 00 51 e1                                      cmp r1, r0
004d7a18  01 00 00 1a                                      bne #0x4d7a24
004d7a1c  08 00 00 ea                                      b #0x4d7a44
004d7a20  04 00 a0 e1                                      mov r0, r4
004d7a24  10 40 40 e2                                      sub r4, r0, #0x10
004d7a28  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7a2c  04 00 a0 e1                                      mov r0, r4
004d7a30  0f e0 a0 e1                                      mov lr, pc
004d7a34  00 f0 93 e5                                      ldr pc, [r3]
004d7a38  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7a3c  04 00 50 e1                                      cmp r0, r4
004d7a40  f6 ff ff 1a                                      bne #0x4d7a20
004d7a44  08 00 40 e2                                      sub r0, r0, #8
004d7a48  7c e2 f8 eb                                      bl #0x310440
004d7a4c  05 00 a0 e1                                      mov r0, r5
004d7a50  e6 fb ff eb                                      bl #0x4d69f0
004d7a54  05 00 a0 e1                                      mov r0, r5
004d7a58  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7a5c  a0 d0 4b 00 6c 07 00 00                          .byte 0xa0, 0xd0, 0x4b, 0x00, 0x6c, 0x07, 0x00, 0x00

; FUNCTION 0x004ed18c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerResistAir
; alias: _ZN7Structs18ItemPowerResistAir4readEP11IStreamBase
; demangled: Structs::ItemPowerResistAir::read(IStreamBase*)
; decoder-mode: arm
004ed18c  0d ff ff ea                                      b #0x4ecdc8
