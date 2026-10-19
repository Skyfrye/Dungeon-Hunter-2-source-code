; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d6304, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerMP
; alias: _ZN7Structs11ItemPowerMP8finalizeEv
; demangled: Structs::ItemPowerMP::finalize()
; decoder-mode: arm
004d6304  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6308  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d630c  00 50 a0 e1                                      mov r5, r0
004d6310  00 00 53 e3                                      cmp r3, #0
004d6314  12 00 00 0a                                      beq #0x4d6364
004d6318  04 00 13 e5                                      ldr r0, [r3, #-4]
004d631c  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d6320  00 00 53 e1                                      cmp r3, r0
004d6324  01 00 00 1a                                      bne #0x4d6330
004d6328  08 00 00 ea                                      b #0x4d6350
004d632c  04 00 a0 e1                                      mov r0, r4
004d6330  10 40 40 e2                                      sub r4, r0, #0x10
004d6334  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6338  04 00 a0 e1                                      mov r0, r4
004d633c  0f e0 a0 e1                                      mov lr, pc
004d6340  00 f0 93 e5                                      ldr pc, [r3]
004d6344  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6348  04 00 50 e1                                      cmp r0, r4
004d634c  f6 ff ff 1a                                      bne #0x4d632c
004d6350  08 00 40 e2                                      sub r0, r0, #8
004d6354  39 e8 f8 eb                                      bl #0x310440
004d6358  00 30 a0 e3                                      mov r3, #0
004d635c  0c 30 85 e5                                      str r3, [r5, #0xc]
004d6360  10 30 85 e5                                      str r3, [r5, #0x10]
004d6364  05 00 a0 e1                                      mov r0, r5
004d6368  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d636c  f2 fc ff ea                                      b #0x4d573c

; FUNCTION 0x004d8938, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerMP
; alias: _ZN7Structs11ItemPowerMPD1Ev
; demangled: Structs::ItemPowerMP::~ItemPowerMP()
; decoder-mode: arm
004d8938  70 40 2d e9                                      push {r4, r5, r6, lr}
004d893c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8940  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8944  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8948  03 30 8f e0                                      add r3, pc, r3
004d894c  02 20 93 e7                                      ldr r2, [r3, r2]
004d8950  00 00 51 e3                                      cmp r1, #0
004d8954  00 50 a0 e1                                      mov r5, r0
004d8958  08 20 82 e2                                      add r2, r2, #8
004d895c  00 20 80 e5                                      str r2, [r0]
004d8960  0f 00 00 0a                                      beq #0x4d89a4
004d8964  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8968  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d896c  00 00 51 e1                                      cmp r1, r0
004d8970  01 00 00 1a                                      bne #0x4d897c
004d8974  08 00 00 ea                                      b #0x4d899c
004d8978  04 00 a0 e1                                      mov r0, r4
004d897c  10 40 40 e2                                      sub r4, r0, #0x10
004d8980  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8984  04 00 a0 e1                                      mov r0, r4
004d8988  0f e0 a0 e1                                      mov lr, pc
004d898c  00 f0 93 e5                                      ldr pc, [r3]
004d8990  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8994  04 00 50 e1                                      cmp r0, r4
004d8998  f6 ff ff 1a                                      bne #0x4d8978
004d899c  08 00 40 e2                                      sub r0, r0, #8
004d89a0  a6 de f8 eb                                      bl #0x310440
004d89a4  05 00 a0 e1                                      mov r0, r5
004d89a8  10 f8 ff eb                                      bl #0x4d69f0
004d89ac  05 00 a0 e1                                      mov r0, r5
004d89b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d89b4  48 c1 4b 00 24 19 00 00                          .byte 0x48, 0xc1, 0x4b, 0x00, 0x24, 0x19, 0x00, 0x00

; FUNCTION 0x004d89bc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerMP
; alias: _ZN7Structs11ItemPowerMPD0Ev
; demangled: Structs::ItemPowerMP::~ItemPowerMP()
; decoder-mode: arm
004d89bc  10 40 2d e9                                      push {r4, lr}
004d89c0  00 40 a0 e1                                      mov r4, r0
004d89c4  db ff ff eb                                      bl #0x4d8938
004d89c8  04 00 a0 e1                                      mov r0, r4
004d89cc  9b de f8 eb                                      bl #0x310440
004d89d0  04 00 a0 e1                                      mov r0, r4
004d89d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d89d8, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerMP
; alias: _ZN7Structs11ItemPowerMPD2Ev
; demangled: Structs::ItemPowerMP::~ItemPowerMP()
; decoder-mode: arm
004d89d8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d89dc  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d89e0  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d89e4  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d89e8  03 30 8f e0                                      add r3, pc, r3
004d89ec  02 20 93 e7                                      ldr r2, [r3, r2]
004d89f0  00 00 51 e3                                      cmp r1, #0
004d89f4  00 50 a0 e1                                      mov r5, r0
004d89f8  08 20 82 e2                                      add r2, r2, #8
004d89fc  00 20 80 e5                                      str r2, [r0]
004d8a00  0f 00 00 0a                                      beq #0x4d8a44
004d8a04  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8a08  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8a0c  00 00 51 e1                                      cmp r1, r0
004d8a10  01 00 00 1a                                      bne #0x4d8a1c
004d8a14  08 00 00 ea                                      b #0x4d8a3c
004d8a18  04 00 a0 e1                                      mov r0, r4
004d8a1c  10 40 40 e2                                      sub r4, r0, #0x10
004d8a20  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8a24  04 00 a0 e1                                      mov r0, r4
004d8a28  0f e0 a0 e1                                      mov lr, pc
004d8a2c  00 f0 93 e5                                      ldr pc, [r3]
004d8a30  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8a34  04 00 50 e1                                      cmp r0, r4
004d8a38  f6 ff ff 1a                                      bne #0x4d8a18
004d8a3c  08 00 40 e2                                      sub r0, r0, #8
004d8a40  7e de f8 eb                                      bl #0x310440
004d8a44  05 00 a0 e1                                      mov r0, r5
004d8a48  e8 f7 ff eb                                      bl #0x4d69f0
004d8a4c  05 00 a0 e1                                      mov r0, r5
004d8a50  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8a54  a8 c0 4b 00 24 19 00 00                          .byte 0xa8, 0xc0, 0x4b, 0x00, 0x24, 0x19, 0x00, 0x00

; FUNCTION 0x004ed1c4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerMP
; alias: _ZN7Structs11ItemPowerMP4readEP11IStreamBase
; demangled: Structs::ItemPowerMP::read(IStreamBase*)
; decoder-mode: arm
004ed1c4  ff fe ff ea                                      b #0x4ecdc8
