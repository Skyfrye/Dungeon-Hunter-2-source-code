; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d60e8, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerBlock
; alias: _ZN7Structs14ItemPowerBlock8finalizeEv
; demangled: Structs::ItemPowerBlock::finalize()
; decoder-mode: arm
004d60e8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d60ec  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d60f0  00 50 a0 e1                                      mov r5, r0
004d60f4  00 00 53 e3                                      cmp r3, #0
004d60f8  12 00 00 0a                                      beq #0x4d6148
004d60fc  04 00 13 e5                                      ldr r0, [r3, #-4]
004d6100  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d6104  00 00 53 e1                                      cmp r3, r0
004d6108  01 00 00 1a                                      bne #0x4d6114
004d610c  08 00 00 ea                                      b #0x4d6134
004d6110  04 00 a0 e1                                      mov r0, r4
004d6114  10 40 40 e2                                      sub r4, r0, #0x10
004d6118  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d611c  04 00 a0 e1                                      mov r0, r4
004d6120  0f e0 a0 e1                                      mov lr, pc
004d6124  00 f0 93 e5                                      ldr pc, [r3]
004d6128  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d612c  04 00 50 e1                                      cmp r0, r4
004d6130  f6 ff ff 1a                                      bne #0x4d6110
004d6134  08 00 40 e2                                      sub r0, r0, #8
004d6138  c0 e8 f8 eb                                      bl #0x310440
004d613c  00 30 a0 e3                                      mov r3, #0
004d6140  0c 30 85 e5                                      str r3, [r5, #0xc]
004d6144  10 30 85 e5                                      str r3, [r5, #0x10]
004d6148  05 00 a0 e1                                      mov r0, r5
004d614c  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d6150  79 fd ff ea                                      b #0x4d573c

; FUNCTION 0x004d8384, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerBlock
; alias: _ZN7Structs14ItemPowerBlockD1Ev
; demangled: Structs::ItemPowerBlock::~ItemPowerBlock()
; decoder-mode: arm
004d8384  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8388  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d838c  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8390  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8394  03 30 8f e0                                      add r3, pc, r3
004d8398  02 20 93 e7                                      ldr r2, [r3, r2]
004d839c  00 00 51 e3                                      cmp r1, #0
004d83a0  00 50 a0 e1                                      mov r5, r0
004d83a4  08 20 82 e2                                      add r2, r2, #8
004d83a8  00 20 80 e5                                      str r2, [r0]
004d83ac  0f 00 00 0a                                      beq #0x4d83f0
004d83b0  04 00 11 e5                                      ldr r0, [r1, #-4]
004d83b4  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d83b8  00 00 51 e1                                      cmp r1, r0
004d83bc  01 00 00 1a                                      bne #0x4d83c8
004d83c0  08 00 00 ea                                      b #0x4d83e8
004d83c4  04 00 a0 e1                                      mov r0, r4
004d83c8  10 40 40 e2                                      sub r4, r0, #0x10
004d83cc  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d83d0  04 00 a0 e1                                      mov r0, r4
004d83d4  0f e0 a0 e1                                      mov lr, pc
004d83d8  00 f0 93 e5                                      ldr pc, [r3]
004d83dc  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d83e0  04 00 50 e1                                      cmp r0, r4
004d83e4  f6 ff ff 1a                                      bne #0x4d83c4
004d83e8  08 00 40 e2                                      sub r0, r0, #8
004d83ec  13 e0 f8 eb                                      bl #0x310440
004d83f0  05 00 a0 e1                                      mov r0, r5
004d83f4  7d f9 ff eb                                      bl #0x4d69f0
004d83f8  05 00 a0 e1                                      mov r0, r5
004d83fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8400  fc c6 4b 00 3c 3c 00 00                          .byte 0xfc, 0xc6, 0x4b, 0x00, 0x3c, 0x3c, 0x00, 0x00

; FUNCTION 0x004d8408, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerBlock
; alias: _ZN7Structs14ItemPowerBlockD0Ev
; demangled: Structs::ItemPowerBlock::~ItemPowerBlock()
; decoder-mode: arm
004d8408  10 40 2d e9                                      push {r4, lr}
004d840c  00 40 a0 e1                                      mov r4, r0
004d8410  db ff ff eb                                      bl #0x4d8384
004d8414  04 00 a0 e1                                      mov r0, r4
004d8418  08 e0 f8 eb                                      bl #0x310440
004d841c  04 00 a0 e1                                      mov r0, r4
004d8420  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d8424, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerBlock
; alias: _ZN7Structs14ItemPowerBlockD2Ev
; demangled: Structs::ItemPowerBlock::~ItemPowerBlock()
; decoder-mode: arm
004d8424  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8428  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d842c  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8430  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8434  03 30 8f e0                                      add r3, pc, r3
004d8438  02 20 93 e7                                      ldr r2, [r3, r2]
004d843c  00 00 51 e3                                      cmp r1, #0
004d8440  00 50 a0 e1                                      mov r5, r0
004d8444  08 20 82 e2                                      add r2, r2, #8
004d8448  00 20 80 e5                                      str r2, [r0]
004d844c  0f 00 00 0a                                      beq #0x4d8490
004d8450  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8454  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8458  00 00 51 e1                                      cmp r1, r0
004d845c  01 00 00 1a                                      bne #0x4d8468
004d8460  08 00 00 ea                                      b #0x4d8488
004d8464  04 00 a0 e1                                      mov r0, r4
004d8468  10 40 40 e2                                      sub r4, r0, #0x10
004d846c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8470  04 00 a0 e1                                      mov r0, r4
004d8474  0f e0 a0 e1                                      mov lr, pc
004d8478  00 f0 93 e5                                      ldr pc, [r3]
004d847c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8480  04 00 50 e1                                      cmp r0, r4
004d8484  f6 ff ff 1a                                      bne #0x4d8464
004d8488  08 00 40 e2                                      sub r0, r0, #8
004d848c  eb df f8 eb                                      bl #0x310440
004d8490  05 00 a0 e1                                      mov r0, r5
004d8494  55 f9 ff eb                                      bl #0x4d69f0
004d8498  05 00 a0 e1                                      mov r0, r5
004d849c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d84a0  5c c6 4b 00 3c 3c 00 00                          .byte 0x5c, 0xc6, 0x4b, 0x00, 0x3c, 0x3c, 0x00, 0x00

; FUNCTION 0x004ed1b0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerBlock
; alias: _ZN7Structs14ItemPowerBlock4readEP11IStreamBase
; demangled: Structs::ItemPowerBlock::read(IStreamBase*)
; decoder-mode: arm
004ed1b0  04 ff ff ea                                      b #0x4ecdc8
