; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d6664, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerEarthDamage
; alias: _ZN7Structs20ItemPowerEarthDamage8finalizeEv
; demangled: Structs::ItemPowerEarthDamage::finalize()
; decoder-mode: arm
004d6664  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6668  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d666c  00 50 a0 e1                                      mov r5, r0
004d6670  00 00 53 e3                                      cmp r3, #0
004d6674  12 00 00 0a                                      beq #0x4d66c4
004d6678  04 00 13 e5                                      ldr r0, [r3, #-4]
004d667c  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d6680  00 00 53 e1                                      cmp r3, r0
004d6684  01 00 00 1a                                      bne #0x4d6690
004d6688  08 00 00 ea                                      b #0x4d66b0
004d668c  04 00 a0 e1                                      mov r0, r4
004d6690  10 40 40 e2                                      sub r4, r0, #0x10
004d6694  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6698  04 00 a0 e1                                      mov r0, r4
004d669c  0f e0 a0 e1                                      mov lr, pc
004d66a0  00 f0 93 e5                                      ldr pc, [r3]
004d66a4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d66a8  04 00 50 e1                                      cmp r0, r4
004d66ac  f6 ff ff 1a                                      bne #0x4d668c
004d66b0  08 00 40 e2                                      sub r0, r0, #8
004d66b4  61 e7 f8 eb                                      bl #0x310440
004d66b8  00 30 a0 e3                                      mov r3, #0
004d66bc  0c 30 85 e5                                      str r3, [r5, #0xc]
004d66c0  10 30 85 e5                                      str r3, [r5, #0x10]
004d66c4  05 00 a0 e1                                      mov r0, r5
004d66c8  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d66cc  1a fc ff ea                                      b #0x4d573c

; FUNCTION 0x004d9258, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerEarthDamage
; alias: _ZN7Structs20ItemPowerEarthDamageD1Ev
; demangled: Structs::ItemPowerEarthDamage::~ItemPowerEarthDamage()
; decoder-mode: arm
004d9258  70 40 2d e9                                      push {r4, r5, r6, lr}
004d925c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d9260  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d9264  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d9268  03 30 8f e0                                      add r3, pc, r3
004d926c  02 20 93 e7                                      ldr r2, [r3, r2]
004d9270  00 00 51 e3                                      cmp r1, #0
004d9274  00 50 a0 e1                                      mov r5, r0
004d9278  08 20 82 e2                                      add r2, r2, #8
004d927c  00 20 80 e5                                      str r2, [r0]
004d9280  0f 00 00 0a                                      beq #0x4d92c4
004d9284  04 00 11 e5                                      ldr r0, [r1, #-4]
004d9288  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d928c  00 00 51 e1                                      cmp r1, r0
004d9290  01 00 00 1a                                      bne #0x4d929c
004d9294  08 00 00 ea                                      b #0x4d92bc
004d9298  04 00 a0 e1                                      mov r0, r4
004d929c  10 40 40 e2                                      sub r4, r0, #0x10
004d92a0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d92a4  04 00 a0 e1                                      mov r0, r4
004d92a8  0f e0 a0 e1                                      mov lr, pc
004d92ac  00 f0 93 e5                                      ldr pc, [r3]
004d92b0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d92b4  04 00 50 e1                                      cmp r0, r4
004d92b8  f6 ff ff 1a                                      bne #0x4d9298
004d92bc  08 00 40 e2                                      sub r0, r0, #8
004d92c0  5e dc f8 eb                                      bl #0x310440
004d92c4  05 00 a0 e1                                      mov r0, r5
004d92c8  c8 f5 ff eb                                      bl #0x4d69f0
004d92cc  05 00 a0 e1                                      mov r0, r5
004d92d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d92d4  28 b8 4b 00 d8 0b 00 00                          .byte 0x28, 0xb8, 0x4b, 0x00, 0xd8, 0x0b, 0x00, 0x00

; FUNCTION 0x004d92dc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerEarthDamage
; alias: _ZN7Structs20ItemPowerEarthDamageD0Ev
; demangled: Structs::ItemPowerEarthDamage::~ItemPowerEarthDamage()
; decoder-mode: arm
004d92dc  10 40 2d e9                                      push {r4, lr}
004d92e0  00 40 a0 e1                                      mov r4, r0
004d92e4  db ff ff eb                                      bl #0x4d9258
004d92e8  04 00 a0 e1                                      mov r0, r4
004d92ec  53 dc f8 eb                                      bl #0x310440
004d92f0  04 00 a0 e1                                      mov r0, r4
004d92f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d92f8, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerEarthDamage
; alias: _ZN7Structs20ItemPowerEarthDamageD2Ev
; demangled: Structs::ItemPowerEarthDamage::~ItemPowerEarthDamage()
; decoder-mode: arm
004d92f8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d92fc  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d9300  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d9304  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d9308  03 30 8f e0                                      add r3, pc, r3
004d930c  02 20 93 e7                                      ldr r2, [r3, r2]
004d9310  00 00 51 e3                                      cmp r1, #0
004d9314  00 50 a0 e1                                      mov r5, r0
004d9318  08 20 82 e2                                      add r2, r2, #8
004d931c  00 20 80 e5                                      str r2, [r0]
004d9320  0f 00 00 0a                                      beq #0x4d9364
004d9324  04 00 11 e5                                      ldr r0, [r1, #-4]
004d9328  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d932c  00 00 51 e1                                      cmp r1, r0
004d9330  01 00 00 1a                                      bne #0x4d933c
004d9334  08 00 00 ea                                      b #0x4d935c
004d9338  04 00 a0 e1                                      mov r0, r4
004d933c  10 40 40 e2                                      sub r4, r0, #0x10
004d9340  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d9344  04 00 a0 e1                                      mov r0, r4
004d9348  0f e0 a0 e1                                      mov lr, pc
004d934c  00 f0 93 e5                                      ldr pc, [r3]
004d9350  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d9354  04 00 50 e1                                      cmp r0, r4
004d9358  f6 ff ff 1a                                      bne #0x4d9338
004d935c  08 00 40 e2                                      sub r0, r0, #8
004d9360  36 dc f8 eb                                      bl #0x310440
004d9364  05 00 a0 e1                                      mov r0, r5
004d9368  a0 f5 ff eb                                      bl #0x4d69f0
004d936c  05 00 a0 e1                                      mov r0, r5
004d9370  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d9374  88 b7 4b 00 d8 0b 00 00                          .byte 0x88, 0xb7, 0x4b, 0x00, 0xd8, 0x0b, 0x00, 0x00

; FUNCTION 0x004ed1e4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerEarthDamage
; alias: _ZN7Structs20ItemPowerEarthDamage4readEP11IStreamBase
; demangled: Structs::ItemPowerEarthDamage::read(IStreamBase*)
; decoder-mode: arm
004ed1e4  f7 fe ff ea                                      b #0x4ecdc8
