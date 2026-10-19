; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5c44, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerResistAll
; alias: _ZN7Structs18ItemPowerResistAll8finalizeEv
; demangled: Structs::ItemPowerResistAll::finalize()
; decoder-mode: arm
004d5c44  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5c48  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5c4c  00 50 a0 e1                                      mov r5, r0
004d5c50  00 00 53 e3                                      cmp r3, #0
004d5c54  12 00 00 0a                                      beq #0x4d5ca4
004d5c58  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5c5c  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5c60  00 00 53 e1                                      cmp r3, r0
004d5c64  01 00 00 1a                                      bne #0x4d5c70
004d5c68  08 00 00 ea                                      b #0x4d5c90
004d5c6c  04 00 a0 e1                                      mov r0, r4
004d5c70  10 40 40 e2                                      sub r4, r0, #0x10
004d5c74  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5c78  04 00 a0 e1                                      mov r0, r4
004d5c7c  0f e0 a0 e1                                      mov lr, pc
004d5c80  00 f0 93 e5                                      ldr pc, [r3]
004d5c84  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5c88  04 00 50 e1                                      cmp r0, r4
004d5c8c  f6 ff ff 1a                                      bne #0x4d5c6c
004d5c90  08 00 40 e2                                      sub r0, r0, #8
004d5c94  e9 e9 f8 eb                                      bl #0x310440
004d5c98  00 30 a0 e3                                      mov r3, #0
004d5c9c  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5ca0  10 30 85 e5                                      str r3, [r5, #0x10]
004d5ca4  05 00 a0 e1                                      mov r0, r5
004d5ca8  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5cac  a2 fe ff ea                                      b #0x4d573c

; FUNCTION 0x004d76f8, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerResistAll
; alias: _ZN7Structs18ItemPowerResistAllD1Ev
; demangled: Structs::ItemPowerResistAll::~ItemPowerResistAll()
; decoder-mode: arm
004d76f8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d76fc  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7700  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7704  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7708  03 30 8f e0                                      add r3, pc, r3
004d770c  02 20 93 e7                                      ldr r2, [r3, r2]
004d7710  00 00 51 e3                                      cmp r1, #0
004d7714  00 50 a0 e1                                      mov r5, r0
004d7718  08 20 82 e2                                      add r2, r2, #8
004d771c  00 20 80 e5                                      str r2, [r0]
004d7720  0f 00 00 0a                                      beq #0x4d7764
004d7724  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7728  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d772c  00 00 51 e1                                      cmp r1, r0
004d7730  01 00 00 1a                                      bne #0x4d773c
004d7734  08 00 00 ea                                      b #0x4d775c
004d7738  04 00 a0 e1                                      mov r0, r4
004d773c  10 40 40 e2                                      sub r4, r0, #0x10
004d7740  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7744  04 00 a0 e1                                      mov r0, r4
004d7748  0f e0 a0 e1                                      mov lr, pc
004d774c  00 f0 93 e5                                      ldr pc, [r3]
004d7750  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7754  04 00 50 e1                                      cmp r0, r4
004d7758  f6 ff ff 1a                                      bne #0x4d7738
004d775c  08 00 40 e2                                      sub r0, r0, #8
004d7760  36 e3 f8 eb                                      bl #0x310440
004d7764  05 00 a0 e1                                      mov r0, r5
004d7768  a0 fc ff eb                                      bl #0x4d69f0
004d776c  05 00 a0 e1                                      mov r0, r5
004d7770  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7774  88 d3 4b 00 fc 2f 00 00                          .byte 0x88, 0xd3, 0x4b, 0x00, 0xfc, 0x2f, 0x00, 0x00

; FUNCTION 0x004d777c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerResistAll
; alias: _ZN7Structs18ItemPowerResistAllD0Ev
; demangled: Structs::ItemPowerResistAll::~ItemPowerResistAll()
; decoder-mode: arm
004d777c  10 40 2d e9                                      push {r4, lr}
004d7780  00 40 a0 e1                                      mov r4, r0
004d7784  db ff ff eb                                      bl #0x4d76f8
004d7788  04 00 a0 e1                                      mov r0, r4
004d778c  2b e3 f8 eb                                      bl #0x310440
004d7790  04 00 a0 e1                                      mov r0, r4
004d7794  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d7798, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerResistAll
; alias: _ZN7Structs18ItemPowerResistAllD2Ev
; demangled: Structs::ItemPowerResistAll::~ItemPowerResistAll()
; decoder-mode: arm
004d7798  70 40 2d e9                                      push {r4, r5, r6, lr}
004d779c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d77a0  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d77a4  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d77a8  03 30 8f e0                                      add r3, pc, r3
004d77ac  02 20 93 e7                                      ldr r2, [r3, r2]
004d77b0  00 00 51 e3                                      cmp r1, #0
004d77b4  00 50 a0 e1                                      mov r5, r0
004d77b8  08 20 82 e2                                      add r2, r2, #8
004d77bc  00 20 80 e5                                      str r2, [r0]
004d77c0  0f 00 00 0a                                      beq #0x4d7804
004d77c4  04 00 11 e5                                      ldr r0, [r1, #-4]
004d77c8  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d77cc  00 00 51 e1                                      cmp r1, r0
004d77d0  01 00 00 1a                                      bne #0x4d77dc
004d77d4  08 00 00 ea                                      b #0x4d77fc
004d77d8  04 00 a0 e1                                      mov r0, r4
004d77dc  10 40 40 e2                                      sub r4, r0, #0x10
004d77e0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d77e4  04 00 a0 e1                                      mov r0, r4
004d77e8  0f e0 a0 e1                                      mov lr, pc
004d77ec  00 f0 93 e5                                      ldr pc, [r3]
004d77f0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d77f4  04 00 50 e1                                      cmp r0, r4
004d77f8  f6 ff ff 1a                                      bne #0x4d77d8
004d77fc  08 00 40 e2                                      sub r0, r0, #8
004d7800  0e e3 f8 eb                                      bl #0x310440
004d7804  05 00 a0 e1                                      mov r0, r5
004d7808  78 fc ff eb                                      bl #0x4d69f0
004d780c  05 00 a0 e1                                      mov r0, r5
004d7810  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7814  e8 d2 4b 00 fc 2f 00 00                          .byte 0xe8, 0xd2, 0x4b, 0x00, 0xfc, 0x2f, 0x00, 0x00

; FUNCTION 0x004ed184, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerResistAll
; alias: _ZN7Structs18ItemPowerResistAll4readEP11IStreamBase
; demangled: Structs::ItemPowerResistAll::read(IStreamBase*)
; decoder-mode: arm
004ed184  0f ff ff ea                                      b #0x4ecdc8
