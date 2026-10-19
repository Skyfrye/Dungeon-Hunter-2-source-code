; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5b00, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerSpellCritical
; alias: _ZN7Structs22ItemPowerSpellCritical8finalizeEv
; demangled: Structs::ItemPowerSpellCritical::finalize()
; decoder-mode: arm
004d5b00  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5b04  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5b08  00 50 a0 e1                                      mov r5, r0
004d5b0c  00 00 53 e3                                      cmp r3, #0
004d5b10  12 00 00 0a                                      beq #0x4d5b60
004d5b14  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5b18  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5b1c  00 00 53 e1                                      cmp r3, r0
004d5b20  01 00 00 1a                                      bne #0x4d5b2c
004d5b24  08 00 00 ea                                      b #0x4d5b4c
004d5b28  04 00 a0 e1                                      mov r0, r4
004d5b2c  10 40 40 e2                                      sub r4, r0, #0x10
004d5b30  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5b34  04 00 a0 e1                                      mov r0, r4
004d5b38  0f e0 a0 e1                                      mov lr, pc
004d5b3c  00 f0 93 e5                                      ldr pc, [r3]
004d5b40  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5b44  04 00 50 e1                                      cmp r0, r4
004d5b48  f6 ff ff 1a                                      bne #0x4d5b28
004d5b4c  08 00 40 e2                                      sub r0, r0, #8
004d5b50  3a ea f8 eb                                      bl #0x310440
004d5b54  00 30 a0 e3                                      mov r3, #0
004d5b58  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5b5c  10 30 85 e5                                      str r3, [r5, #0x10]
004d5b60  05 00 a0 e1                                      mov r0, r5
004d5b64  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5b68  f3 fe ff ea                                      b #0x4d573c

; FUNCTION 0x004d738c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerSpellCritical
; alias: _ZN7Structs22ItemPowerSpellCriticalD1Ev
; demangled: Structs::ItemPowerSpellCritical::~ItemPowerSpellCritical()
; decoder-mode: arm
004d738c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7390  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7394  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7398  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d739c  03 30 8f e0                                      add r3, pc, r3
004d73a0  02 20 93 e7                                      ldr r2, [r3, r2]
004d73a4  00 00 51 e3                                      cmp r1, #0
004d73a8  00 50 a0 e1                                      mov r5, r0
004d73ac  08 20 82 e2                                      add r2, r2, #8
004d73b0  00 20 80 e5                                      str r2, [r0]
004d73b4  0f 00 00 0a                                      beq #0x4d73f8
004d73b8  04 00 11 e5                                      ldr r0, [r1, #-4]
004d73bc  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d73c0  00 00 51 e1                                      cmp r1, r0
004d73c4  01 00 00 1a                                      bne #0x4d73d0
004d73c8  08 00 00 ea                                      b #0x4d73f0
004d73cc  04 00 a0 e1                                      mov r0, r4
004d73d0  10 40 40 e2                                      sub r4, r0, #0x10
004d73d4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d73d8  04 00 a0 e1                                      mov r0, r4
004d73dc  0f e0 a0 e1                                      mov lr, pc
004d73e0  00 f0 93 e5                                      ldr pc, [r3]
004d73e4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d73e8  04 00 50 e1                                      cmp r0, r4
004d73ec  f6 ff ff 1a                                      bne #0x4d73cc
004d73f0  08 00 40 e2                                      sub r0, r0, #8
004d73f4  11 e4 f8 eb                                      bl #0x310440
004d73f8  05 00 a0 e1                                      mov r0, r5
004d73fc  7b fd ff eb                                      bl #0x4d69f0
004d7400  05 00 a0 e1                                      mov r0, r5
004d7404  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7408  f4 d6 4b 00 f8 3a 00 00                          .byte 0xf4, 0xd6, 0x4b, 0x00, 0xf8, 0x3a, 0x00, 0x00

; FUNCTION 0x004d7410, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerSpellCritical
; alias: _ZN7Structs22ItemPowerSpellCriticalD0Ev
; demangled: Structs::ItemPowerSpellCritical::~ItemPowerSpellCritical()
; decoder-mode: arm
004d7410  10 40 2d e9                                      push {r4, lr}
004d7414  00 40 a0 e1                                      mov r4, r0
004d7418  db ff ff eb                                      bl #0x4d738c
004d741c  04 00 a0 e1                                      mov r0, r4
004d7420  06 e4 f8 eb                                      bl #0x310440
004d7424  04 00 a0 e1                                      mov r0, r4
004d7428  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d742c, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerSpellCritical
; alias: _ZN7Structs22ItemPowerSpellCriticalD2Ev
; demangled: Structs::ItemPowerSpellCritical::~ItemPowerSpellCritical()
; decoder-mode: arm
004d742c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d7430  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7434  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7438  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d743c  03 30 8f e0                                      add r3, pc, r3
004d7440  02 20 93 e7                                      ldr r2, [r3, r2]
004d7444  00 00 51 e3                                      cmp r1, #0
004d7448  00 50 a0 e1                                      mov r5, r0
004d744c  08 20 82 e2                                      add r2, r2, #8
004d7450  00 20 80 e5                                      str r2, [r0]
004d7454  0f 00 00 0a                                      beq #0x4d7498
004d7458  04 00 11 e5                                      ldr r0, [r1, #-4]
004d745c  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d7460  00 00 51 e1                                      cmp r1, r0
004d7464  01 00 00 1a                                      bne #0x4d7470
004d7468  08 00 00 ea                                      b #0x4d7490
004d746c  04 00 a0 e1                                      mov r0, r4
004d7470  10 40 40 e2                                      sub r4, r0, #0x10
004d7474  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7478  04 00 a0 e1                                      mov r0, r4
004d747c  0f e0 a0 e1                                      mov lr, pc
004d7480  00 f0 93 e5                                      ldr pc, [r3]
004d7484  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7488  04 00 50 e1                                      cmp r0, r4
004d748c  f6 ff ff 1a                                      bne #0x4d746c
004d7490  08 00 40 e2                                      sub r0, r0, #8
004d7494  e9 e3 f8 eb                                      bl #0x310440
004d7498  05 00 a0 e1                                      mov r0, r5
004d749c  53 fd ff eb                                      bl #0x4d69f0
004d74a0  05 00 a0 e1                                      mov r0, r5
004d74a4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d74a8  54 d6 4b 00 f8 3a 00 00                          .byte 0x54, 0xd6, 0x4b, 0x00, 0xf8, 0x3a, 0x00, 0x00

; FUNCTION 0x004ed178, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerSpellCritical
; alias: _ZN7Structs22ItemPowerSpellCritical4readEP11IStreamBase
; demangled: Structs::ItemPowerSpellCritical::read(IStreamBase*)
; decoder-mode: arm
004ed178  12 ff ff ea                                      b #0x4ecdc8
