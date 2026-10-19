; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d6010, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerDamage
; alias: _ZN7Structs15ItemPowerDamage8finalizeEv
; demangled: Structs::ItemPowerDamage::finalize()
; decoder-mode: arm
004d6010  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6014  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d6018  00 50 a0 e1                                      mov r5, r0
004d601c  00 00 53 e3                                      cmp r3, #0
004d6020  12 00 00 0a                                      beq #0x4d6070
004d6024  04 00 13 e5                                      ldr r0, [r3, #-4]
004d6028  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d602c  00 00 53 e1                                      cmp r3, r0
004d6030  01 00 00 1a                                      bne #0x4d603c
004d6034  08 00 00 ea                                      b #0x4d605c
004d6038  04 00 a0 e1                                      mov r0, r4
004d603c  10 40 40 e2                                      sub r4, r0, #0x10
004d6040  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6044  04 00 a0 e1                                      mov r0, r4
004d6048  0f e0 a0 e1                                      mov lr, pc
004d604c  00 f0 93 e5                                      ldr pc, [r3]
004d6050  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6054  04 00 50 e1                                      cmp r0, r4
004d6058  f6 ff ff 1a                                      bne #0x4d6038
004d605c  08 00 40 e2                                      sub r0, r0, #8
004d6060  f6 e8 f8 eb                                      bl #0x310440
004d6064  00 30 a0 e3                                      mov r3, #0
004d6068  0c 30 85 e5                                      str r3, [r5, #0xc]
004d606c  10 30 85 e5                                      str r3, [r5, #0x10]
004d6070  05 00 a0 e1                                      mov r0, r5
004d6074  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d6078  af fd ff ea                                      b #0x4d573c

; FUNCTION 0x004d813c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerDamage
; alias: _ZN7Structs15ItemPowerDamageD1Ev
; demangled: Structs::ItemPowerDamage::~ItemPowerDamage()
; decoder-mode: arm
004d813c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8140  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8144  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8148  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d814c  03 30 8f e0                                      add r3, pc, r3
004d8150  02 20 93 e7                                      ldr r2, [r3, r2]
004d8154  00 00 51 e3                                      cmp r1, #0
004d8158  00 50 a0 e1                                      mov r5, r0
004d815c  08 20 82 e2                                      add r2, r2, #8
004d8160  00 20 80 e5                                      str r2, [r0]
004d8164  0f 00 00 0a                                      beq #0x4d81a8
004d8168  04 00 11 e5                                      ldr r0, [r1, #-4]
004d816c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8170  00 00 51 e1                                      cmp r1, r0
004d8174  01 00 00 1a                                      bne #0x4d8180
004d8178  08 00 00 ea                                      b #0x4d81a0
004d817c  04 00 a0 e1                                      mov r0, r4
004d8180  10 40 40 e2                                      sub r4, r0, #0x10
004d8184  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8188  04 00 a0 e1                                      mov r0, r4
004d818c  0f e0 a0 e1                                      mov lr, pc
004d8190  00 f0 93 e5                                      ldr pc, [r3]
004d8194  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8198  04 00 50 e1                                      cmp r0, r4
004d819c  f6 ff ff 1a                                      bne #0x4d817c
004d81a0  08 00 40 e2                                      sub r0, r0, #8
004d81a4  a5 e0 f8 eb                                      bl #0x310440
004d81a8  05 00 a0 e1                                      mov r0, r5
004d81ac  0f fa ff eb                                      bl #0x4d69f0
004d81b0  05 00 a0 e1                                      mov r0, r5
004d81b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d81b8  44 c9 4b 00 f0 37 00 00                          .byte 0x44, 0xc9, 0x4b, 0x00, 0xf0, 0x37, 0x00, 0x00

; FUNCTION 0x004d81c0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerDamage
; alias: _ZN7Structs15ItemPowerDamageD0Ev
; demangled: Structs::ItemPowerDamage::~ItemPowerDamage()
; decoder-mode: arm
004d81c0  10 40 2d e9                                      push {r4, lr}
004d81c4  00 40 a0 e1                                      mov r4, r0
004d81c8  db ff ff eb                                      bl #0x4d813c
004d81cc  04 00 a0 e1                                      mov r0, r4
004d81d0  9a e0 f8 eb                                      bl #0x310440
004d81d4  04 00 a0 e1                                      mov r0, r4
004d81d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d81dc, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerDamage
; alias: _ZN7Structs15ItemPowerDamageD2Ev
; demangled: Structs::ItemPowerDamage::~ItemPowerDamage()
; decoder-mode: arm
004d81dc  70 40 2d e9                                      push {r4, r5, r6, lr}
004d81e0  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d81e4  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d81e8  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d81ec  03 30 8f e0                                      add r3, pc, r3
004d81f0  02 20 93 e7                                      ldr r2, [r3, r2]
004d81f4  00 00 51 e3                                      cmp r1, #0
004d81f8  00 50 a0 e1                                      mov r5, r0
004d81fc  08 20 82 e2                                      add r2, r2, #8
004d8200  00 20 80 e5                                      str r2, [r0]
004d8204  0f 00 00 0a                                      beq #0x4d8248
004d8208  04 00 11 e5                                      ldr r0, [r1, #-4]
004d820c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8210  00 00 51 e1                                      cmp r1, r0
004d8214  01 00 00 1a                                      bne #0x4d8220
004d8218  08 00 00 ea                                      b #0x4d8240
004d821c  04 00 a0 e1                                      mov r0, r4
004d8220  10 40 40 e2                                      sub r4, r0, #0x10
004d8224  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8228  04 00 a0 e1                                      mov r0, r4
004d822c  0f e0 a0 e1                                      mov lr, pc
004d8230  00 f0 93 e5                                      ldr pc, [r3]
004d8234  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8238  04 00 50 e1                                      cmp r0, r4
004d823c  f6 ff ff 1a                                      bne #0x4d821c
004d8240  08 00 40 e2                                      sub r0, r0, #8
004d8244  7d e0 f8 eb                                      bl #0x310440
004d8248  05 00 a0 e1                                      mov r0, r5
004d824c  e7 f9 ff eb                                      bl #0x4d69f0
004d8250  05 00 a0 e1                                      mov r0, r5
004d8254  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8258  a4 c8 4b 00 f0 37 00 00                          .byte 0xa4, 0xc8, 0x4b, 0x00, 0xf0, 0x37, 0x00, 0x00

; FUNCTION 0x004ed1a8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerDamage
; alias: _ZN7Structs15ItemPowerDamage4readEP11IStreamBase
; demangled: Structs::ItemPowerDamage::read(IStreamBase*)
; decoder-mode: arm
004ed1a8  06 ff ff ea                                      b #0x4ecdc8
