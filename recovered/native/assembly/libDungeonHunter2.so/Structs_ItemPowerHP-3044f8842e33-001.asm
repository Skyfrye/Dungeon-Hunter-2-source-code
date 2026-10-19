; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d6370, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerHP
; alias: _ZN7Structs11ItemPowerHP8finalizeEv
; demangled: Structs::ItemPowerHP::finalize()
; decoder-mode: arm
004d6370  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6374  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d6378  00 50 a0 e1                                      mov r5, r0
004d637c  00 00 53 e3                                      cmp r3, #0
004d6380  12 00 00 0a                                      beq #0x4d63d0
004d6384  04 00 13 e5                                      ldr r0, [r3, #-4]
004d6388  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d638c  00 00 53 e1                                      cmp r3, r0
004d6390  01 00 00 1a                                      bne #0x4d639c
004d6394  08 00 00 ea                                      b #0x4d63bc
004d6398  04 00 a0 e1                                      mov r0, r4
004d639c  10 40 40 e2                                      sub r4, r0, #0x10
004d63a0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d63a4  04 00 a0 e1                                      mov r0, r4
004d63a8  0f e0 a0 e1                                      mov lr, pc
004d63ac  00 f0 93 e5                                      ldr pc, [r3]
004d63b0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d63b4  04 00 50 e1                                      cmp r0, r4
004d63b8  f6 ff ff 1a                                      bne #0x4d6398
004d63bc  08 00 40 e2                                      sub r0, r0, #8
004d63c0  1e e8 f8 eb                                      bl #0x310440
004d63c4  00 30 a0 e3                                      mov r3, #0
004d63c8  0c 30 85 e5                                      str r3, [r5, #0xc]
004d63cc  10 30 85 e5                                      str r3, [r5, #0x10]
004d63d0  05 00 a0 e1                                      mov r0, r5
004d63d4  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d63d8  d7 fc ff ea                                      b #0x4d573c

; FUNCTION 0x004d8a5c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerHP
; alias: _ZN7Structs11ItemPowerHPD1Ev
; demangled: Structs::ItemPowerHP::~ItemPowerHP()
; decoder-mode: arm
004d8a5c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8a60  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8a64  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8a68  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8a6c  03 30 8f e0                                      add r3, pc, r3
004d8a70  02 20 93 e7                                      ldr r2, [r3, r2]
004d8a74  00 00 51 e3                                      cmp r1, #0
004d8a78  00 50 a0 e1                                      mov r5, r0
004d8a7c  08 20 82 e2                                      add r2, r2, #8
004d8a80  00 20 80 e5                                      str r2, [r0]
004d8a84  0f 00 00 0a                                      beq #0x4d8ac8
004d8a88  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8a8c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8a90  00 00 51 e1                                      cmp r1, r0
004d8a94  01 00 00 1a                                      bne #0x4d8aa0
004d8a98  08 00 00 ea                                      b #0x4d8ac0
004d8a9c  04 00 a0 e1                                      mov r0, r4
004d8aa0  10 40 40 e2                                      sub r4, r0, #0x10
004d8aa4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8aa8  04 00 a0 e1                                      mov r0, r4
004d8aac  0f e0 a0 e1                                      mov lr, pc
004d8ab0  00 f0 93 e5                                      ldr pc, [r3]
004d8ab4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8ab8  04 00 50 e1                                      cmp r0, r4
004d8abc  f6 ff ff 1a                                      bne #0x4d8a9c
004d8ac0  08 00 40 e2                                      sub r0, r0, #8
004d8ac4  5d de f8 eb                                      bl #0x310440
004d8ac8  05 00 a0 e1                                      mov r0, r5
004d8acc  c7 f7 ff eb                                      bl #0x4d69f0
004d8ad0  05 00 a0 e1                                      mov r0, r5
004d8ad4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8ad8  24 c0 4b 00 cc 40 00 00                          .byte 0x24, 0xc0, 0x4b, 0x00, 0xcc, 0x40, 0x00, 0x00

; FUNCTION 0x004d8ae0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerHP
; alias: _ZN7Structs11ItemPowerHPD0Ev
; demangled: Structs::ItemPowerHP::~ItemPowerHP()
; decoder-mode: arm
004d8ae0  10 40 2d e9                                      push {r4, lr}
004d8ae4  00 40 a0 e1                                      mov r4, r0
004d8ae8  db ff ff eb                                      bl #0x4d8a5c
004d8aec  04 00 a0 e1                                      mov r0, r4
004d8af0  52 de f8 eb                                      bl #0x310440
004d8af4  04 00 a0 e1                                      mov r0, r4
004d8af8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d8afc, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerHP
; alias: _ZN7Structs11ItemPowerHPD2Ev
; demangled: Structs::ItemPowerHP::~ItemPowerHP()
; decoder-mode: arm
004d8afc  70 40 2d e9                                      push {r4, r5, r6, lr}
004d8b00  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d8b04  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d8b08  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d8b0c  03 30 8f e0                                      add r3, pc, r3
004d8b10  02 20 93 e7                                      ldr r2, [r3, r2]
004d8b14  00 00 51 e3                                      cmp r1, #0
004d8b18  00 50 a0 e1                                      mov r5, r0
004d8b1c  08 20 82 e2                                      add r2, r2, #8
004d8b20  00 20 80 e5                                      str r2, [r0]
004d8b24  0f 00 00 0a                                      beq #0x4d8b68
004d8b28  04 00 11 e5                                      ldr r0, [r1, #-4]
004d8b2c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d8b30  00 00 51 e1                                      cmp r1, r0
004d8b34  01 00 00 1a                                      bne #0x4d8b40
004d8b38  08 00 00 ea                                      b #0x4d8b60
004d8b3c  04 00 a0 e1                                      mov r0, r4
004d8b40  10 40 40 e2                                      sub r4, r0, #0x10
004d8b44  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d8b48  04 00 a0 e1                                      mov r0, r4
004d8b4c  0f e0 a0 e1                                      mov lr, pc
004d8b50  00 f0 93 e5                                      ldr pc, [r3]
004d8b54  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d8b58  04 00 50 e1                                      cmp r0, r4
004d8b5c  f6 ff ff 1a                                      bne #0x4d8b3c
004d8b60  08 00 40 e2                                      sub r0, r0, #8
004d8b64  35 de f8 eb                                      bl #0x310440
004d8b68  05 00 a0 e1                                      mov r0, r5
004d8b6c  9f f7 ff eb                                      bl #0x4d69f0
004d8b70  05 00 a0 e1                                      mov r0, r5
004d8b74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d8b78  84 bf 4b 00 cc 40 00 00                          .byte 0x84, 0xbf, 0x4b, 0x00, 0xcc, 0x40, 0x00, 0x00

; FUNCTION 0x004ed1c8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerHP
; alias: _ZN7Structs11ItemPowerHP4readEP11IStreamBase
; demangled: Structs::ItemPowerHP::read(IStreamBase*)
; decoder-mode: arm
004ed1c8  fe fe ff ea                                      b #0x4ecdc8
