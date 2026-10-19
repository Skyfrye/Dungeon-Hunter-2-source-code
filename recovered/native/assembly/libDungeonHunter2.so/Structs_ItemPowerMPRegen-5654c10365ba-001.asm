; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d622c, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerMPRegen
; alias: _ZN7Structs16ItemPowerMPRegen8finalizeEv
; demangled: Structs::ItemPowerMPRegen::finalize()
; decoder-mode: arm
004d622c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6230  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d6234  00 50 a0 e1                                      mov r5, r0
004d6238  00 00 53 e3                                      cmp r3, #0
004d623c  12 00 00 0a                                      beq #0x4d628c
004d6240  04 00 13 e5                                      ldr r0, [r3, #-4]
004d6244  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d6248  00 00 53 e1                                      cmp r3, r0
004d624c  01 00 00 1a                                      bne #0x4d6258
004d6250  08 00 00 ea                                      b #0x4d6278
004d6254  04 00 a0 e1                                      mov r0, r4
004d6258  10 40 40 e2                                      sub r4, r0, #0x10
004d625c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6260  04 00 a0 e1                                      mov r0, r4
004d6264  0f e0 a0 e1                                      mov lr, pc
004d6268  00 f0 93 e5                                      ldr pc, [r3]
004d626c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6270  04 00 50 e1                                      cmp r0, r4
004d6274  f6 ff ff 1a                                      bne #0x4d6254
004d6278  08 00 40 e2                                      sub r0, r0, #8
004d627c  6f e8 f8 eb                                      bl #0x310440
004d6280  00 30 a0 e3                                      mov r3, #0
004d6284  0c 30 85 e5                                      str r3, [r5, #0xc]
004d6288  10 30 85 e5                                      str r3, [r5, #0x10]
004d628c  05 00 a0 e1                                      mov r0, r5
004d6290  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d6294  28 fd ff ea                                      b #0x4d573c

; FUNCTION 0x004d86f0, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerMPRegen
; alias: _ZN7Structs16ItemPowerMPRegenD1Ev
; demangled: Structs::ItemPowerMPRegen::~ItemPowerMPRegen()
; decoder-mode: arm
004d86f0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d86f4  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d86f8  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d86fc  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8700  03 30 8f e0                                      add r3, pc, r3
004d8704  02 20 93 e7                                      ldr r2, [r3, r2]
004d8708  00 00 51 e3                                      cmp r1, #0
004d870c  00 50 a0 e1                                      mov r5, r0
004d8710  08 20 82 e2                                      add r2, r2, #8
004d8714  00 20 80 e5                                      str r2, [r0]
004d8718  0f 00 00 0a                                      beq #0x4d875c
004d871c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8720  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8724  00 00 51 e1                                      cmp r1, r0
004d8728  01 00 00 1a                                      bne #0x4d8734
004d872c  08 00 00 ea                                      b #0x4d8754
004d8730  04 00 a0 e1                                      mov r0, r4
004d8734  10 40 40 e2                                      sub r4, r0, #0x10
004d8738  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d873c  04 00 a0 e1                                      mov r0, r4
004d8740  0f e0 a0 e1                                      mov lr, pc
004d8744  00 f0 93 e5                                      ldr pc, [r3]
004d8748  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d874c  04 00 50 e1                                      cmp r0, r4
004d8750  f6 ff ff 1a                                      bne #0x4d8730
004d8754  08 00 40 e2                                      sub r0, r0, #8
004d8758  38 df f8 eb                                      bl #0x310440
004d875c  05 00 a0 e1                                      mov r0, r5
004d8760  a2 f8 ff eb                                      bl #0x4d69f0
004d8764  05 00 a0 e1                                      mov r0, r5
004d8768  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d876c  90 c3 4b 00 84 45 00 00                          .byte 0x90, 0xc3, 0x4b, 0x00, 0x84, 0x45, 0x00, 0x00

; FUNCTION 0x004d8774, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerMPRegen
; alias: _ZN7Structs16ItemPowerMPRegenD0Ev
; demangled: Structs::ItemPowerMPRegen::~ItemPowerMPRegen()
; decoder-mode: arm
004d8774  10 40 2d e9                                      push {r4, lr}
004d8778  00 40 a0 e1                                      mov r4, r0
004d877c  db ff ff eb                                      bl #0x4d86f0
004d8780  04 00 a0 e1                                      mov r0, r4
004d8784  2d df f8 eb                                      bl #0x310440
004d8788  04 00 a0 e1                                      mov r0, r4
004d878c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d8790, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerMPRegen
; alias: _ZN7Structs16ItemPowerMPRegenD2Ev
; demangled: Structs::ItemPowerMPRegen::~ItemPowerMPRegen()
; decoder-mode: arm
004d8790  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8794  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8798  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d879c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d87a0  03 30 8f e0                                      add r3, pc, r3
004d87a4  02 20 93 e7                                      ldr r2, [r3, r2]
004d87a8  00 00 51 e3                                      cmp r1, #0
004d87ac  00 50 a0 e1                                      mov r5, r0
004d87b0  08 20 82 e2                                      add r2, r2, #8
004d87b4  00 20 80 e5                                      str r2, [r0]
004d87b8  0f 00 00 0a                                      beq #0x4d87fc
004d87bc  04 00 11 e5                                      ldr r0, [r1, #-4]
004d87c0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d87c4  00 00 51 e1                                      cmp r1, r0
004d87c8  01 00 00 1a                                      bne #0x4d87d4
004d87cc  08 00 00 ea                                      b #0x4d87f4
004d87d0  04 00 a0 e1                                      mov r0, r4
004d87d4  10 40 40 e2                                      sub r4, r0, #0x10
004d87d8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d87dc  04 00 a0 e1                                      mov r0, r4
004d87e0  0f e0 a0 e1                                      mov lr, pc
004d87e4  00 f0 93 e5                                      ldr pc, [r3]
004d87e8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d87ec  04 00 50 e1                                      cmp r0, r4
004d87f0  f6 ff ff 1a                                      bne #0x4d87d0
004d87f4  08 00 40 e2                                      sub r0, r0, #8
004d87f8  10 df f8 eb                                      bl #0x310440
004d87fc  05 00 a0 e1                                      mov r0, r5
004d8800  7a f8 ff eb                                      bl #0x4d69f0
004d8804  05 00 a0 e1                                      mov r0, r5
004d8808  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d880c  f0 c2 4b 00 84 45 00 00                          .byte 0xf0, 0xc2, 0x4b, 0x00, 0x84, 0x45, 0x00, 0x00

; FUNCTION 0x004ed1bc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerMPRegen
; alias: _ZN7Structs16ItemPowerMPRegen4readEP11IStreamBase
; demangled: Structs::ItemPowerMPRegen::read(IStreamBase*)
; decoder-mode: arm
004ed1bc  01 ff ff ea                                      b #0x4ecdc8
