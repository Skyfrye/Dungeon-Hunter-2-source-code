; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d65f8, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerWaterDamage
; alias: _ZN7Structs20ItemPowerWaterDamage8finalizeEv
; demangled: Structs::ItemPowerWaterDamage::finalize()
; decoder-mode: arm
004d65f8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d65fc  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d6600  00 50 a0 e1                                      mov r5, r0
004d6604  00 00 53 e3                                      cmp r3, #0
004d6608  12 00 00 0a                                      beq #0x4d6658
004d660c  04 00 13 e5                                      ldr r0, [r3, #-4]
004d6610  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d6614  00 00 53 e1                                      cmp r3, r0
004d6618  01 00 00 1a                                      bne #0x4d6624
004d661c  08 00 00 ea                                      b #0x4d6644
004d6620  04 00 a0 e1                                      mov r0, r4
004d6624  10 40 40 e2                                      sub r4, r0, #0x10
004d6628  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d662c  04 00 a0 e1                                      mov r0, r4
004d6630  0f e0 a0 e1                                      mov lr, pc
004d6634  00 f0 93 e5                                      ldr pc, [r3]
004d6638  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d663c  04 00 50 e1                                      cmp r0, r4
004d6640  f6 ff ff 1a                                      bne #0x4d6620
004d6644  08 00 40 e2                                      sub r0, r0, #8
004d6648  7c e7 f8 eb                                      bl #0x310440
004d664c  00 30 a0 e3                                      mov r3, #0
004d6650  0c 30 85 e5                                      str r3, [r5, #0xc]
004d6654  10 30 85 e5                                      str r3, [r5, #0x10]
004d6658  05 00 a0 e1                                      mov r0, r5
004d665c  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d6660  35 fc ff ea                                      b #0x4d573c

; FUNCTION 0x004d9134, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerWaterDamage
; alias: _ZN7Structs20ItemPowerWaterDamageD1Ev
; demangled: Structs::ItemPowerWaterDamage::~ItemPowerWaterDamage()
; decoder-mode: arm
004d9134  70 40 2d e9                                      push {r4, r5, r6, lr}
004d9138  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d913c  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d9140  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d9144  03 30 8f e0                                      add r3, pc, r3
004d9148  02 20 93 e7                                      ldr r2, [r3, r2]
004d914c  00 00 51 e3                                      cmp r1, #0
004d9150  00 50 a0 e1                                      mov r5, r0
004d9154  08 20 82 e2                                      add r2, r2, #8
004d9158  00 20 80 e5                                      str r2, [r0]
004d915c  0f 00 00 0a                                      beq #0x4d91a0
004d9160  04 00 11 e5                                      ldr r0, [r1, #-4]
004d9164  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d9168  00 00 51 e1                                      cmp r1, r0
004d916c  01 00 00 1a                                      bne #0x4d9178
004d9170  08 00 00 ea                                      b #0x4d9198
004d9174  04 00 a0 e1                                      mov r0, r4
004d9178  10 40 40 e2                                      sub r4, r0, #0x10
004d917c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d9180  04 00 a0 e1                                      mov r0, r4
004d9184  0f e0 a0 e1                                      mov lr, pc
004d9188  00 f0 93 e5                                      ldr pc, [r3]
004d918c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d9190  04 00 50 e1                                      cmp r0, r4
004d9194  f6 ff ff 1a                                      bne #0x4d9174
004d9198  08 00 40 e2                                      sub r0, r0, #8
004d919c  a7 dc f8 eb                                      bl #0x310440
004d91a0  05 00 a0 e1                                      mov r0, r5
004d91a4  11 f6 ff eb                                      bl #0x4d69f0
004d91a8  05 00 a0 e1                                      mov r0, r5
004d91ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d91b0  4c b9 4b 00 2c 23 00 00                          .byte 0x4c, 0xb9, 0x4b, 0x00, 0x2c, 0x23, 0x00, 0x00

; FUNCTION 0x004d91b8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerWaterDamage
; alias: _ZN7Structs20ItemPowerWaterDamageD0Ev
; demangled: Structs::ItemPowerWaterDamage::~ItemPowerWaterDamage()
; decoder-mode: arm
004d91b8  10 40 2d e9                                      push {r4, lr}
004d91bc  00 40 a0 e1                                      mov r4, r0
004d91c0  db ff ff eb                                      bl #0x4d9134
004d91c4  04 00 a0 e1                                      mov r0, r4
004d91c8  9c dc f8 eb                                      bl #0x310440
004d91cc  04 00 a0 e1                                      mov r0, r4
004d91d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d91d4, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerWaterDamage
; alias: _ZN7Structs20ItemPowerWaterDamageD2Ev
; demangled: Structs::ItemPowerWaterDamage::~ItemPowerWaterDamage()
; decoder-mode: arm
004d91d4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d91d8  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d91dc  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d91e0  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d91e4  03 30 8f e0                                      add r3, pc, r3
004d91e8  02 20 93 e7                                      ldr r2, [r3, r2]
004d91ec  00 00 51 e3                                      cmp r1, #0
004d91f0  00 50 a0 e1                                      mov r5, r0
004d91f4  08 20 82 e2                                      add r2, r2, #8
004d91f8  00 20 80 e5                                      str r2, [r0]
004d91fc  0f 00 00 0a                                      beq #0x4d9240
004d9200  04 00 11 e5                                      ldr r0, [r1, #-4]
004d9204  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d9208  00 00 51 e1                                      cmp r1, r0
004d920c  01 00 00 1a                                      bne #0x4d9218
004d9210  08 00 00 ea                                      b #0x4d9238
004d9214  04 00 a0 e1                                      mov r0, r4
004d9218  10 40 40 e2                                      sub r4, r0, #0x10
004d921c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d9220  04 00 a0 e1                                      mov r0, r4
004d9224  0f e0 a0 e1                                      mov lr, pc
004d9228  00 f0 93 e5                                      ldr pc, [r3]
004d922c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d9230  04 00 50 e1                                      cmp r0, r4
004d9234  f6 ff ff 1a                                      bne #0x4d9214
004d9238  08 00 40 e2                                      sub r0, r0, #8
004d923c  7f dc f8 eb                                      bl #0x310440
004d9240  05 00 a0 e1                                      mov r0, r5
004d9244  e9 f5 ff eb                                      bl #0x4d69f0
004d9248  05 00 a0 e1                                      mov r0, r5
004d924c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d9250  ac b8 4b 00 2c 23 00 00                          .byte 0xac, 0xb8, 0x4b, 0x00, 0x2c, 0x23, 0x00, 0x00

; FUNCTION 0x004ed1e0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerWaterDamage
; alias: _ZN7Structs20ItemPowerWaterDamage4readEP11IStreamBase
; demangled: Structs::ItemPowerWaterDamage::read(IStreamBase*)
; decoder-mode: arm
004ed1e0  f8 fe ff ea                                      b #0x4ecdc8
