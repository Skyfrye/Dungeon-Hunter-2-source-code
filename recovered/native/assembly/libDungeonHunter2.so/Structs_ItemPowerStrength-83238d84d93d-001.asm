; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d6880, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerStrength
; alias: _ZN7Structs17ItemPowerStrength8finalizeEv
; demangled: Structs::ItemPowerStrength::finalize()
; decoder-mode: arm
004d6880  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6884  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d6888  00 50 a0 e1                                      mov r5, r0
004d688c  00 00 53 e3                                      cmp r3, #0
004d6890  12 00 00 0a                                      beq #0x4d68e0
004d6894  04 00 13 e5                                      ldr r0, [r3, #-4]
004d6898  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d689c  00 00 53 e1                                      cmp r3, r0
004d68a0  01 00 00 1a                                      bne #0x4d68ac
004d68a4  08 00 00 ea                                      b #0x4d68cc
004d68a8  04 00 a0 e1                                      mov r0, r4
004d68ac  10 40 40 e2                                      sub r4, r0, #0x10
004d68b0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d68b4  04 00 a0 e1                                      mov r0, r4
004d68b8  0f e0 a0 e1                                      mov lr, pc
004d68bc  00 f0 93 e5                                      ldr pc, [r3]
004d68c0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d68c4  04 00 50 e1                                      cmp r0, r4
004d68c8  f6 ff ff 1a                                      bne #0x4d68a8
004d68cc  08 00 40 e2                                      sub r0, r0, #8
004d68d0  da e6 f8 eb                                      bl #0x310440
004d68d4  00 30 a0 e3                                      mov r3, #0
004d68d8  0c 30 85 e5                                      str r3, [r5, #0xc]
004d68dc  10 30 85 e5                                      str r3, [r5, #0x10]
004d68e0  05 00 a0 e1                                      mov r0, r5
004d68e4  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d68e8  93 fb ff ea                                      b #0x4d573c

; FUNCTION 0x004d980c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerStrength
; alias: _ZN7Structs17ItemPowerStrengthD1Ev
; demangled: Structs::ItemPowerStrength::~ItemPowerStrength()
; decoder-mode: arm
004d980c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d9810  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d9814  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d9818  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d981c  03 30 8f e0                                      add r3, pc, r3
004d9820  02 20 93 e7                                      ldr r2, [r3, r2]
004d9824  00 00 51 e3                                      cmp r1, #0
004d9828  00 50 a0 e1                                      mov r5, r0
004d982c  08 20 82 e2                                      add r2, r2, #8
004d9830  00 20 80 e5                                      str r2, [r0]
004d9834  0f 00 00 0a                                      beq #0x4d9878
004d9838  04 00 11 e5                                      ldr r0, [r1, #-4]
004d983c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d9840  00 00 51 e1                                      cmp r1, r0
004d9844  01 00 00 1a                                      bne #0x4d9850
004d9848  08 00 00 ea                                      b #0x4d9870
004d984c  04 00 a0 e1                                      mov r0, r4
004d9850  10 40 40 e2                                      sub r4, r0, #0x10
004d9854  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d9858  04 00 a0 e1                                      mov r0, r4
004d985c  0f e0 a0 e1                                      mov lr, pc
004d9860  00 f0 93 e5                                      ldr pc, [r3]
004d9864  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d9868  04 00 50 e1                                      cmp r0, r4
004d986c  f6 ff ff 1a                                      bne #0x4d984c
004d9870  08 00 40 e2                                      sub r0, r0, #8
004d9874  f1 da f8 eb                                      bl #0x310440
004d9878  05 00 a0 e1                                      mov r0, r5
004d987c  5b f4 ff eb                                      bl #0x4d69f0
004d9880  05 00 a0 e1                                      mov r0, r5
004d9884  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d9888  74 b2 4b 00 b0 21 00 00                          .byte 0x74, 0xb2, 0x4b, 0x00, 0xb0, 0x21, 0x00, 0x00

; FUNCTION 0x004d9890, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerStrength
; alias: _ZN7Structs17ItemPowerStrengthD0Ev
; demangled: Structs::ItemPowerStrength::~ItemPowerStrength()
; decoder-mode: arm
004d9890  10 40 2d e9                                      push {r4, lr}
004d9894  00 40 a0 e1                                      mov r4, r0
004d9898  db ff ff eb                                      bl #0x4d980c
004d989c  04 00 a0 e1                                      mov r0, r4
004d98a0  e6 da f8 eb                                      bl #0x310440
004d98a4  04 00 a0 e1                                      mov r0, r4
004d98a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d98ac, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerStrength
; alias: _ZN7Structs17ItemPowerStrengthD2Ev
; demangled: Structs::ItemPowerStrength::~ItemPowerStrength()
; decoder-mode: arm
004d98ac  70 40 2d e9                                      push {r4, r5, r6, lr}
004d98b0  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d98b4  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d98b8  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d98bc  03 30 8f e0                                      add r3, pc, r3
004d98c0  02 20 93 e7                                      ldr r2, [r3, r2]
004d98c4  00 00 51 e3                                      cmp r1, #0
004d98c8  00 50 a0 e1                                      mov r5, r0
004d98cc  08 20 82 e2                                      add r2, r2, #8
004d98d0  00 20 80 e5                                      str r2, [r0]
004d98d4  0f 00 00 0a                                      beq #0x4d9918
004d98d8  04 00 11 e5                                      ldr r0, [r1, #-4]
004d98dc  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d98e0  00 00 51 e1                                      cmp r1, r0
004d98e4  01 00 00 1a                                      bne #0x4d98f0
004d98e8  08 00 00 ea                                      b #0x4d9910
004d98ec  04 00 a0 e1                                      mov r0, r4
004d98f0  10 40 40 e2                                      sub r4, r0, #0x10
004d98f4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d98f8  04 00 a0 e1                                      mov r0, r4
004d98fc  0f e0 a0 e1                                      mov lr, pc
004d9900  00 f0 93 e5                                      ldr pc, [r3]
004d9904  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d9908  04 00 50 e1                                      cmp r0, r4
004d990c  f6 ff ff 1a                                      bne #0x4d98ec
004d9910  08 00 40 e2                                      sub r0, r0, #8
004d9914  c9 da f8 eb                                      bl #0x310440
004d9918  05 00 a0 e1                                      mov r0, r5
004d991c  33 f4 ff eb                                      bl #0x4d69f0
004d9920  05 00 a0 e1                                      mov r0, r5
004d9924  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d9928  d4 b1 4b 00 b0 21 00 00                          .byte 0xd4, 0xb1, 0x4b, 0x00, 0xb0, 0x21, 0x00, 0x00

; FUNCTION 0x004ed1f8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerStrength
; alias: _ZN7Structs17ItemPowerStrength4readEP11IStreamBase
; demangled: Structs::ItemPowerStrength::read(IStreamBase*)
; decoder-mode: arm
004ed1f8  f2 fe ff ea                                      b #0x4ecdc8
