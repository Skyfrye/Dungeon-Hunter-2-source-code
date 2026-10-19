; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5bd8, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerLifeLeech
; alias: _ZN7Structs18ItemPowerLifeLeech8finalizeEv
; demangled: Structs::ItemPowerLifeLeech::finalize()
; decoder-mode: arm
004d5bd8  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5bdc  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5be0  00 50 a0 e1                                      mov r5, r0
004d5be4  00 00 53 e3                                      cmp r3, #0
004d5be8  12 00 00 0a                                      beq #0x4d5c38
004d5bec  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5bf0  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5bf4  00 00 53 e1                                      cmp r3, r0
004d5bf8  01 00 00 1a                                      bne #0x4d5c04
004d5bfc  08 00 00 ea                                      b #0x4d5c24
004d5c00  04 00 a0 e1                                      mov r0, r4
004d5c04  10 40 40 e2                                      sub r4, r0, #0x10
004d5c08  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5c0c  04 00 a0 e1                                      mov r0, r4
004d5c10  0f e0 a0 e1                                      mov lr, pc
004d5c14  00 f0 93 e5                                      ldr pc, [r3]
004d5c18  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5c1c  04 00 50 e1                                      cmp r0, r4
004d5c20  f6 ff ff 1a                                      bne #0x4d5c00
004d5c24  08 00 40 e2                                      sub r0, r0, #8
004d5c28  04 ea f8 eb                                      bl #0x310440
004d5c2c  00 30 a0 e3                                      mov r3, #0
004d5c30  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5c34  10 30 85 e5                                      str r3, [r5, #0x10]
004d5c38  05 00 a0 e1                                      mov r0, r5
004d5c3c  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5c40  bd fe ff ea                                      b #0x4d573c

; FUNCTION 0x004d75d4, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerLifeLeech
; alias: _ZN7Structs18ItemPowerLifeLeechD1Ev
; demangled: Structs::ItemPowerLifeLeech::~ItemPowerLifeLeech()
; decoder-mode: arm
004d75d4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d75d8  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d75dc  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d75e0  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d75e4  03 30 8f e0                                      add r3, pc, r3
004d75e8  02 20 93 e7                                      ldr r2, [r3, r2]
004d75ec  00 00 51 e3                                      cmp r1, #0
004d75f0  00 50 a0 e1                                      mov r5, r0
004d75f4  08 20 82 e2                                      add r2, r2, #8
004d75f8  00 20 80 e5                                      str r2, [r0]
004d75fc  0f 00 00 0a                                      beq #0x4d7640
004d7600  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7604  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7608  00 00 51 e1                                      cmp r1, r0
004d760c  01 00 00 1a                                      bne #0x4d7618
004d7610  08 00 00 ea                                      b #0x4d7638
004d7614  04 00 a0 e1                                      mov r0, r4
004d7618  10 40 40 e2                                      sub r4, r0, #0x10
004d761c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7620  04 00 a0 e1                                      mov r0, r4
004d7624  0f e0 a0 e1                                      mov lr, pc
004d7628  00 f0 93 e5                                      ldr pc, [r3]
004d762c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7630  04 00 50 e1                                      cmp r0, r4
004d7634  f6 ff ff 1a                                      bne #0x4d7614
004d7638  08 00 40 e2                                      sub r0, r0, #8
004d763c  7f e3 f8 eb                                      bl #0x310440
004d7640  05 00 a0 e1                                      mov r0, r5
004d7644  e9 fc ff eb                                      bl #0x4d69f0
004d7648  05 00 a0 e1                                      mov r0, r5
004d764c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7650  ac d4 4b 00 04 26 00 00                          .byte 0xac, 0xd4, 0x4b, 0x00, 0x04, 0x26, 0x00, 0x00

; FUNCTION 0x004d7658, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerLifeLeech
; alias: _ZN7Structs18ItemPowerLifeLeechD0Ev
; demangled: Structs::ItemPowerLifeLeech::~ItemPowerLifeLeech()
; decoder-mode: arm
004d7658  10 40 2d e9                                      push {r4, lr}
004d765c  00 40 a0 e1                                      mov r4, r0
004d7660  db ff ff eb                                      bl #0x4d75d4
004d7664  04 00 a0 e1                                      mov r0, r4
004d7668  74 e3 f8 eb                                      bl #0x310440
004d766c  04 00 a0 e1                                      mov r0, r4
004d7670  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d7674, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerLifeLeech
; alias: _ZN7Structs18ItemPowerLifeLeechD2Ev
; demangled: Structs::ItemPowerLifeLeech::~ItemPowerLifeLeech()
; decoder-mode: arm
004d7674  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7678  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d767c  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7680  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7684  03 30 8f e0                                      add r3, pc, r3
004d7688  02 20 93 e7                                      ldr r2, [r3, r2]
004d768c  00 00 51 e3                                      cmp r1, #0
004d7690  00 50 a0 e1                                      mov r5, r0
004d7694  08 20 82 e2                                      add r2, r2, #8
004d7698  00 20 80 e5                                      str r2, [r0]
004d769c  0f 00 00 0a                                      beq #0x4d76e0
004d76a0  04 00 11 e5                                      ldr r0, [r1, #-4]
004d76a4  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d76a8  00 00 51 e1                                      cmp r1, r0
004d76ac  01 00 00 1a                                      bne #0x4d76b8
004d76b0  08 00 00 ea                                      b #0x4d76d8
004d76b4  04 00 a0 e1                                      mov r0, r4
004d76b8  10 40 40 e2                                      sub r4, r0, #0x10
004d76bc  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d76c0  04 00 a0 e1                                      mov r0, r4
004d76c4  0f e0 a0 e1                                      mov lr, pc
004d76c8  00 f0 93 e5                                      ldr pc, [r3]
004d76cc  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d76d0  04 00 50 e1                                      cmp r0, r4
004d76d4  f6 ff ff 1a                                      bne #0x4d76b4
004d76d8  08 00 40 e2                                      sub r0, r0, #8
004d76dc  57 e3 f8 eb                                      bl #0x310440
004d76e0  05 00 a0 e1                                      mov r0, r5
004d76e4  c1 fc ff eb                                      bl #0x4d69f0
004d76e8  05 00 a0 e1                                      mov r0, r5
004d76ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d76f0  0c d4 4b 00 04 26 00 00                          .byte 0x0c, 0xd4, 0x4b, 0x00, 0x04, 0x26, 0x00, 0x00

; FUNCTION 0x004ed180, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerLifeLeech
; alias: _ZN7Structs18ItemPowerLifeLeech4readEP11IStreamBase
; demangled: Structs::ItemPowerLifeLeech::read(IStreamBase*)
; decoder-mode: arm
004ed180  10 ff ff ea                                      b #0x4ecdc8
