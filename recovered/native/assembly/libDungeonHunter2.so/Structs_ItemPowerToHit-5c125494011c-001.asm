; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5fa4, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerToHit
; alias: _ZN7Structs14ItemPowerToHit8finalizeEv
; demangled: Structs::ItemPowerToHit::finalize()
; decoder-mode: arm
004d5fa4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5fa8  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5fac  00 50 a0 e1                                      mov r5, r0
004d5fb0  00 00 53 e3                                      cmp r3, #0
004d5fb4  12 00 00 0a                                      beq #0x4d6004
004d5fb8  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5fbc  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5fc0  00 00 53 e1                                      cmp r3, r0
004d5fc4  01 00 00 1a                                      bne #0x4d5fd0
004d5fc8  08 00 00 ea                                      b #0x4d5ff0
004d5fcc  04 00 a0 e1                                      mov r0, r4
004d5fd0  10 40 40 e2                                      sub r4, r0, #0x10
004d5fd4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5fd8  04 00 a0 e1                                      mov r0, r4
004d5fdc  0f e0 a0 e1                                      mov lr, pc
004d5fe0  00 f0 93 e5                                      ldr pc, [r3]
004d5fe4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5fe8  04 00 50 e1                                      cmp r0, r4
004d5fec  f6 ff ff 1a                                      bne #0x4d5fcc
004d5ff0  08 00 40 e2                                      sub r0, r0, #8
004d5ff4  11 e9 f8 eb                                      bl #0x310440
004d5ff8  00 30 a0 e3                                      mov r3, #0
004d5ffc  0c 30 85 e5                                      str r3, [r5, #0xc]
004d6000  10 30 85 e5                                      str r3, [r5, #0x10]
004d6004  05 00 a0 e1                                      mov r0, r5
004d6008  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d600c  ca fd ff ea                                      b #0x4d573c

; FUNCTION 0x004d8018, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerToHit
; alias: _ZN7Structs14ItemPowerToHitD1Ev
; demangled: Structs::ItemPowerToHit::~ItemPowerToHit()
; decoder-mode: arm
004d8018  70 40 2d e9                                      push {r4, r5, r6, lr}
004d801c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8020  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8024  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8028  03 30 8f e0                                      add r3, pc, r3
004d802c  02 20 93 e7                                      ldr r2, [r3, r2]
004d8030  00 00 51 e3                                      cmp r1, #0
004d8034  00 50 a0 e1                                      mov r5, r0
004d8038  08 20 82 e2                                      add r2, r2, #8
004d803c  00 20 80 e5                                      str r2, [r0]
004d8040  0f 00 00 0a                                      beq #0x4d8084
004d8044  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8048  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d804c  00 00 51 e1                                      cmp r1, r0
004d8050  01 00 00 1a                                      bne #0x4d805c
004d8054  08 00 00 ea                                      b #0x4d807c
004d8058  04 00 a0 e1                                      mov r0, r4
004d805c  10 40 40 e2                                      sub r4, r0, #0x10
004d8060  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8064  04 00 a0 e1                                      mov r0, r4
004d8068  0f e0 a0 e1                                      mov lr, pc
004d806c  00 f0 93 e5                                      ldr pc, [r3]
004d8070  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8074  04 00 50 e1                                      cmp r0, r4
004d8078  f6 ff ff 1a                                      bne #0x4d8058
004d807c  08 00 40 e2                                      sub r0, r0, #8
004d8080  ee e0 f8 eb                                      bl #0x310440
004d8084  05 00 a0 e1                                      mov r0, r5
004d8088  58 fa ff eb                                      bl #0x4d69f0
004d808c  05 00 a0 e1                                      mov r0, r5
004d8090  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8094  68 ca 4b 00 74 19 00 00                          .byte 0x68, 0xca, 0x4b, 0x00, 0x74, 0x19, 0x00, 0x00

; FUNCTION 0x004d809c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerToHit
; alias: _ZN7Structs14ItemPowerToHitD0Ev
; demangled: Structs::ItemPowerToHit::~ItemPowerToHit()
; decoder-mode: arm
004d809c  10 40 2d e9                                      push {r4, lr}
004d80a0  00 40 a0 e1                                      mov r4, r0
004d80a4  db ff ff eb                                      bl #0x4d8018
004d80a8  04 00 a0 e1                                      mov r0, r4
004d80ac  e3 e0 f8 eb                                      bl #0x310440
004d80b0  04 00 a0 e1                                      mov r0, r4
004d80b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d80b8, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerToHit
; alias: _ZN7Structs14ItemPowerToHitD2Ev
; demangled: Structs::ItemPowerToHit::~ItemPowerToHit()
; decoder-mode: arm
004d80b8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d80bc  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d80c0  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d80c4  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d80c8  03 30 8f e0                                      add r3, pc, r3
004d80cc  02 20 93 e7                                      ldr r2, [r3, r2]
004d80d0  00 00 51 e3                                      cmp r1, #0
004d80d4  00 50 a0 e1                                      mov r5, r0
004d80d8  08 20 82 e2                                      add r2, r2, #8
004d80dc  00 20 80 e5                                      str r2, [r0]
004d80e0  0f 00 00 0a                                      beq #0x4d8124
004d80e4  04 00 11 e5                                      ldr r0, [r1, #-4]
004d80e8  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d80ec  00 00 51 e1                                      cmp r1, r0
004d80f0  01 00 00 1a                                      bne #0x4d80fc
004d80f4  08 00 00 ea                                      b #0x4d811c
004d80f8  04 00 a0 e1                                      mov r0, r4
004d80fc  10 40 40 e2                                      sub r4, r0, #0x10
004d8100  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8104  04 00 a0 e1                                      mov r0, r4
004d8108  0f e0 a0 e1                                      mov lr, pc
004d810c  00 f0 93 e5                                      ldr pc, [r3]
004d8110  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8114  04 00 50 e1                                      cmp r0, r4
004d8118  f6 ff ff 1a                                      bne #0x4d80f8
004d811c  08 00 40 e2                                      sub r0, r0, #8
004d8120  c6 e0 f8 eb                                      bl #0x310440
004d8124  05 00 a0 e1                                      mov r0, r5
004d8128  30 fa ff eb                                      bl #0x4d69f0
004d812c  05 00 a0 e1                                      mov r0, r5
004d8130  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8134  c8 c9 4b 00 74 19 00 00                          .byte 0xc8, 0xc9, 0x4b, 0x00, 0x74, 0x19, 0x00, 0x00

; FUNCTION 0x004ed1a4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerToHit
; alias: _ZN7Structs14ItemPowerToHit4readEP11IStreamBase
; demangled: Structs::ItemPowerToHit::read(IStreamBase*)
; decoder-mode: arm
004ed1a4  07 ff ff ea                                      b #0x4ecdc8
