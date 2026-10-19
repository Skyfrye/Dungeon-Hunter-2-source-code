; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d658c, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerAirDamage
; alias: _ZN7Structs18ItemPowerAirDamage8finalizeEv
; demangled: Structs::ItemPowerAirDamage::finalize()
; decoder-mode: arm
004d658c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6590  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d6594  00 50 a0 e1                                      mov r5, r0
004d6598  00 00 53 e3                                      cmp r3, #0
004d659c  12 00 00 0a                                      beq #0x4d65ec
004d65a0  04 00 13 e5                                      ldr r0, [r3, #-4]
004d65a4  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d65a8  00 00 53 e1                                      cmp r3, r0
004d65ac  01 00 00 1a                                      bne #0x4d65b8
004d65b0  08 00 00 ea                                      b #0x4d65d8
004d65b4  04 00 a0 e1                                      mov r0, r4
004d65b8  10 40 40 e2                                      sub r4, r0, #0x10
004d65bc  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d65c0  04 00 a0 e1                                      mov r0, r4
004d65c4  0f e0 a0 e1                                      mov lr, pc
004d65c8  00 f0 93 e5                                      ldr pc, [r3]
004d65cc  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d65d0  04 00 50 e1                                      cmp r0, r4
004d65d4  f6 ff ff 1a                                      bne #0x4d65b4
004d65d8  08 00 40 e2                                      sub r0, r0, #8
004d65dc  97 e7 f8 eb                                      bl #0x310440
004d65e0  00 30 a0 e3                                      mov r3, #0
004d65e4  0c 30 85 e5                                      str r3, [r5, #0xc]
004d65e8  10 30 85 e5                                      str r3, [r5, #0x10]
004d65ec  05 00 a0 e1                                      mov r0, r5
004d65f0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d65f4  50 fc ff ea                                      b #0x4d573c

; FUNCTION 0x004d9010, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerAirDamage
; alias: _ZN7Structs18ItemPowerAirDamageD1Ev
; demangled: Structs::ItemPowerAirDamage::~ItemPowerAirDamage()
; decoder-mode: arm
004d9010  70 40 2d e9                                      push {r4, r5, r6, lr}
004d9014  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d9018  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d901c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d9020  03 30 8f e0                                      add r3, pc, r3
004d9024  02 20 93 e7                                      ldr r2, [r3, r2]
004d9028  00 00 51 e3                                      cmp r1, #0
004d902c  00 50 a0 e1                                      mov r5, r0
004d9030  08 20 82 e2                                      add r2, r2, #8
004d9034  00 20 80 e5                                      str r2, [r0]
004d9038  0f 00 00 0a                                      beq #0x4d907c
004d903c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d9040  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d9044  00 00 51 e1                                      cmp r1, r0
004d9048  01 00 00 1a                                      bne #0x4d9054
004d904c  08 00 00 ea                                      b #0x4d9074
004d9050  04 00 a0 e1                                      mov r0, r4
004d9054  10 40 40 e2                                      sub r4, r0, #0x10
004d9058  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d905c  04 00 a0 e1                                      mov r0, r4
004d9060  0f e0 a0 e1                                      mov lr, pc
004d9064  00 f0 93 e5                                      ldr pc, [r3]
004d9068  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d906c  04 00 50 e1                                      cmp r0, r4
004d9070  f6 ff ff 1a                                      bne #0x4d9050
004d9074  08 00 40 e2                                      sub r0, r0, #8
004d9078  f0 dc f8 eb                                      bl #0x310440
004d907c  05 00 a0 e1                                      mov r0, r5
004d9080  5a f6 ff eb                                      bl #0x4d69f0
004d9084  05 00 a0 e1                                      mov r0, r5
004d9088  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d908c  70 ba 4b 00 60 2a 00 00                          .byte 0x70, 0xba, 0x4b, 0x00, 0x60, 0x2a, 0x00, 0x00

; FUNCTION 0x004d9094, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerAirDamage
; alias: _ZN7Structs18ItemPowerAirDamageD0Ev
; demangled: Structs::ItemPowerAirDamage::~ItemPowerAirDamage()
; decoder-mode: arm
004d9094  10 40 2d e9                                      push {r4, lr}
004d9098  00 40 a0 e1                                      mov r4, r0
004d909c  db ff ff eb                                      bl #0x4d9010
004d90a0  04 00 a0 e1                                      mov r0, r4
004d90a4  e5 dc f8 eb                                      bl #0x310440
004d90a8  04 00 a0 e1                                      mov r0, r4
004d90ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d90b0, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerAirDamage
; alias: _ZN7Structs18ItemPowerAirDamageD2Ev
; demangled: Structs::ItemPowerAirDamage::~ItemPowerAirDamage()
; decoder-mode: arm
004d90b0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d90b4  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d90b8  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d90bc  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d90c0  03 30 8f e0                                      add r3, pc, r3
004d90c4  02 20 93 e7                                      ldr r2, [r3, r2]
004d90c8  00 00 51 e3                                      cmp r1, #0
004d90cc  00 50 a0 e1                                      mov r5, r0
004d90d0  08 20 82 e2                                      add r2, r2, #8
004d90d4  00 20 80 e5                                      str r2, [r0]
004d90d8  0f 00 00 0a                                      beq #0x4d911c
004d90dc  04 00 11 e5                                      ldr r0, [r1, #-4]
004d90e0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d90e4  00 00 51 e1                                      cmp r1, r0
004d90e8  01 00 00 1a                                      bne #0x4d90f4
004d90ec  08 00 00 ea                                      b #0x4d9114
004d90f0  04 00 a0 e1                                      mov r0, r4
004d90f4  10 40 40 e2                                      sub r4, r0, #0x10
004d90f8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d90fc  04 00 a0 e1                                      mov r0, r4
004d9100  0f e0 a0 e1                                      mov lr, pc
004d9104  00 f0 93 e5                                      ldr pc, [r3]
004d9108  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d910c  04 00 50 e1                                      cmp r0, r4
004d9110  f6 ff ff 1a                                      bne #0x4d90f0
004d9114  08 00 40 e2                                      sub r0, r0, #8
004d9118  c8 dc f8 eb                                      bl #0x310440
004d911c  05 00 a0 e1                                      mov r0, r5
004d9120  32 f6 ff eb                                      bl #0x4d69f0
004d9124  05 00 a0 e1                                      mov r0, r5
004d9128  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d912c  d0 b9 4b 00 60 2a 00 00                          .byte 0xd0, 0xb9, 0x4b, 0x00, 0x60, 0x2a, 0x00, 0x00

; FUNCTION 0x004ed1dc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerAirDamage
; alias: _ZN7Structs18ItemPowerAirDamage4readEP11IStreamBase
; demangled: Structs::ItemPowerAirDamage::read(IStreamBase*)
; decoder-mode: arm
004ed1dc  f9 fe ff ea                                      b #0x4ecdc8
