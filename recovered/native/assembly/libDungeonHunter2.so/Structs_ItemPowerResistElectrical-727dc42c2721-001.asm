; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5cb0, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerResistElectrical
; alias: _ZN7Structs25ItemPowerResistElectrical8finalizeEv
; demangled: Structs::ItemPowerResistElectrical::finalize()
; decoder-mode: arm
004d5cb0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5cb4  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5cb8  00 50 a0 e1                                      mov r5, r0
004d5cbc  00 00 53 e3                                      cmp r3, #0
004d5cc0  12 00 00 0a                                      beq #0x4d5d10
004d5cc4  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5cc8  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5ccc  00 00 53 e1                                      cmp r3, r0
004d5cd0  01 00 00 1a                                      bne #0x4d5cdc
004d5cd4  08 00 00 ea                                      b #0x4d5cfc
004d5cd8  04 00 a0 e1                                      mov r0, r4
004d5cdc  10 40 40 e2                                      sub r4, r0, #0x10
004d5ce0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5ce4  04 00 a0 e1                                      mov r0, r4
004d5ce8  0f e0 a0 e1                                      mov lr, pc
004d5cec  00 f0 93 e5                                      ldr pc, [r3]
004d5cf0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5cf4  04 00 50 e1                                      cmp r0, r4
004d5cf8  f6 ff ff 1a                                      bne #0x4d5cd8
004d5cfc  08 00 40 e2                                      sub r0, r0, #8
004d5d00  ce e9 f8 eb                                      bl #0x310440
004d5d04  00 30 a0 e3                                      mov r3, #0
004d5d08  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5d0c  10 30 85 e5                                      str r3, [r5, #0x10]
004d5d10  05 00 a0 e1                                      mov r0, r5
004d5d14  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5d18  87 fe ff ea                                      b #0x4d573c

; FUNCTION 0x004d781c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerResistElectrical
; alias: _ZN7Structs25ItemPowerResistElectricalD1Ev
; demangled: Structs::ItemPowerResistElectrical::~ItemPowerResistElectrical()
; decoder-mode: arm
004d781c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7820  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7824  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7828  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d782c  03 30 8f e0                                      add r3, pc, r3
004d7830  02 20 93 e7                                      ldr r2, [r3, r2]
004d7834  00 00 51 e3                                      cmp r1, #0
004d7838  00 50 a0 e1                                      mov r5, r0
004d783c  08 20 82 e2                                      add r2, r2, #8
004d7840  00 20 80 e5                                      str r2, [r0]
004d7844  0f 00 00 0a                                      beq #0x4d7888
004d7848  04 00 11 e5                                      ldr r0, [r1, #-4]
004d784c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7850  00 00 51 e1                                      cmp r1, r0
004d7854  01 00 00 1a                                      bne #0x4d7860
004d7858  08 00 00 ea                                      b #0x4d7880
004d785c  04 00 a0 e1                                      mov r0, r4
004d7860  10 40 40 e2                                      sub r4, r0, #0x10
004d7864  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7868  04 00 a0 e1                                      mov r0, r4
004d786c  0f e0 a0 e1                                      mov lr, pc
004d7870  00 f0 93 e5                                      ldr pc, [r3]
004d7874  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7878  04 00 50 e1                                      cmp r0, r4
004d787c  f6 ff ff 1a                                      bne #0x4d785c
004d7880  08 00 40 e2                                      sub r0, r0, #8
004d7884  ed e2 f8 eb                                      bl #0x310440
004d7888  05 00 a0 e1                                      mov r0, r5
004d788c  57 fc ff eb                                      bl #0x4d69f0
004d7890  05 00 a0 e1                                      mov r0, r5
004d7894  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7898  64 d2 4b 00 60 17 00 00                          .byte 0x64, 0xd2, 0x4b, 0x00, 0x60, 0x17, 0x00, 0x00

; FUNCTION 0x004d78a0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerResistElectrical
; alias: _ZN7Structs25ItemPowerResistElectricalD0Ev
; demangled: Structs::ItemPowerResistElectrical::~ItemPowerResistElectrical()
; decoder-mode: arm
004d78a0  10 40 2d e9                                      push {r4, lr}
004d78a4  00 40 a0 e1                                      mov r4, r0
004d78a8  db ff ff eb                                      bl #0x4d781c
004d78ac  04 00 a0 e1                                      mov r0, r4
004d78b0  e2 e2 f8 eb                                      bl #0x310440
004d78b4  04 00 a0 e1                                      mov r0, r4
004d78b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d78bc, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerResistElectrical
; alias: _ZN7Structs25ItemPowerResistElectricalD2Ev
; demangled: Structs::ItemPowerResistElectrical::~ItemPowerResistElectrical()
; decoder-mode: arm
004d78bc  70 40 2d e9                                      push {r4, r5, r6, lr}
004d78c0  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d78c4  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d78c8  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d78cc  03 30 8f e0                                      add r3, pc, r3
004d78d0  02 20 93 e7                                      ldr r2, [r3, r2]
004d78d4  00 00 51 e3                                      cmp r1, #0
004d78d8  00 50 a0 e1                                      mov r5, r0
004d78dc  08 20 82 e2                                      add r2, r2, #8
004d78e0  00 20 80 e5                                      str r2, [r0]
004d78e4  0f 00 00 0a                                      beq #0x4d7928
004d78e8  04 00 11 e5                                      ldr r0, [r1, #-4]
004d78ec  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d78f0  00 00 51 e1                                      cmp r1, r0
004d78f4  01 00 00 1a                                      bne #0x4d7900
004d78f8  08 00 00 ea                                      b #0x4d7920
004d78fc  04 00 a0 e1                                      mov r0, r4
004d7900  10 40 40 e2                                      sub r4, r0, #0x10
004d7904  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7908  04 00 a0 e1                                      mov r0, r4
004d790c  0f e0 a0 e1                                      mov lr, pc
004d7910  00 f0 93 e5                                      ldr pc, [r3]
004d7914  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7918  04 00 50 e1                                      cmp r0, r4
004d791c  f6 ff ff 1a                                      bne #0x4d78fc
004d7920  08 00 40 e2                                      sub r0, r0, #8
004d7924  c5 e2 f8 eb                                      bl #0x310440
004d7928  05 00 a0 e1                                      mov r0, r5
004d792c  2f fc ff eb                                      bl #0x4d69f0
004d7930  05 00 a0 e1                                      mov r0, r5
004d7934  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7938  c4 d1 4b 00 60 17 00 00                          .byte 0xc4, 0xd1, 0x4b, 0x00, 0x60, 0x17, 0x00, 0x00

; FUNCTION 0x004ed188, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerResistElectrical
; alias: _ZN7Structs25ItemPowerResistElectrical4readEP11IStreamBase
; demangled: Structs::ItemPowerResistElectrical::read(IStreamBase*)
; decoder-mode: arm
004ed188  0e ff ff ea                                      b #0x4ecdc8
