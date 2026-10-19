; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d673c, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerEnergy
; alias: _ZN7Structs15ItemPowerEnergy8finalizeEv
; demangled: Structs::ItemPowerEnergy::finalize()
; decoder-mode: arm
004d673c  70 40 2d e9                                      push {r4, r5, r6, lr}
004d6740  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d6744  00 50 a0 e1                                      mov r5, r0
004d6748  00 00 53 e3                                      cmp r3, #0
004d674c  12 00 00 0a                                      beq #0x4d679c
004d6750  04 00 13 e5                                      ldr r0, [r3, #-4]
004d6754  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d6758  00 00 53 e1                                      cmp r3, r0
004d675c  01 00 00 1a                                      bne #0x4d6768
004d6760  08 00 00 ea                                      b #0x4d6788
004d6764  04 00 a0 e1                                      mov r0, r4
004d6768  10 40 40 e2                                      sub r4, r0, #0x10
004d676c  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d6770  04 00 a0 e1                                      mov r0, r4
004d6774  0f e0 a0 e1                                      mov lr, pc
004d6778  00 f0 93 e5                                      ldr pc, [r3]
004d677c  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d6780  04 00 50 e1                                      cmp r0, r4
004d6784  f6 ff ff 1a                                      bne #0x4d6764
004d6788  08 00 40 e2                                      sub r0, r0, #8
004d678c  2b e7 f8 eb                                      bl #0x310440
004d6790  00 30 a0 e3                                      mov r3, #0
004d6794  0c 30 85 e5                                      str r3, [r5, #0xc]
004d6798  10 30 85 e5                                      str r3, [r5, #0x10]
004d679c  05 00 a0 e1                                      mov r0, r5
004d67a0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d67a4  e4 fb ff ea                                      b #0x4d573c

; FUNCTION 0x004d94a0, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerEnergy
; alias: _ZN7Structs15ItemPowerEnergyD1Ev
; demangled: Structs::ItemPowerEnergy::~ItemPowerEnergy()
; decoder-mode: arm
004d94a0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d94a4  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d94a8  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d94ac  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d94b0  03 30 8f e0                                      add r3, pc, r3
004d94b4  02 20 93 e7                                      ldr r2, [r3, r2]
004d94b8  00 00 51 e3                                      cmp r1, #0
004d94bc  00 50 a0 e1                                      mov r5, r0
004d94c0  08 20 82 e2                                      add r2, r2, #8
004d94c4  00 20 80 e5                                      str r2, [r0]
004d94c8  0f 00 00 0a                                      beq #0x4d950c
004d94cc  04 00 11 e5                                      ldr r0, [r1, #-4]
004d94d0  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d94d4  00 00 51 e1                                      cmp r1, r0
004d94d8  01 00 00 1a                                      bne #0x4d94e4
004d94dc  08 00 00 ea                                      b #0x4d9504
004d94e0  04 00 a0 e1                                      mov r0, r4
004d94e4  10 40 40 e2                                      sub r4, r0, #0x10
004d94e8  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d94ec  04 00 a0 e1                                      mov r0, r4
004d94f0  0f e0 a0 e1                                      mov lr, pc
004d94f4  00 f0 93 e5                                      ldr pc, [r3]
004d94f8  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d94fc  04 00 50 e1                                      cmp r0, r4
004d9500  f6 ff ff 1a                                      bne #0x4d94e0
004d9504  08 00 40 e2                                      sub r0, r0, #8
004d9508  cc db f8 eb                                      bl #0x310440
004d950c  05 00 a0 e1                                      mov r0, r5
004d9510  36 f5 ff eb                                      bl #0x4d69f0
004d9514  05 00 a0 e1                                      mov r0, r5
004d9518  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d951c  e0 b5 4b 00 80 23 00 00                          .byte 0xe0, 0xb5, 0x4b, 0x00, 0x80, 0x23, 0x00, 0x00

; FUNCTION 0x004d9524, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerEnergy
; alias: _ZN7Structs15ItemPowerEnergyD0Ev
; demangled: Structs::ItemPowerEnergy::~ItemPowerEnergy()
; decoder-mode: arm
004d9524  10 40 2d e9                                      push {r4, lr}
004d9528  00 40 a0 e1                                      mov r4, r0
004d952c  db ff ff eb                                      bl #0x4d94a0
004d9530  04 00 a0 e1                                      mov r0, r4
004d9534  c1 db f8 eb                                      bl #0x310440
004d9538  04 00 a0 e1                                      mov r0, r4
004d953c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9540, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerEnergy
; alias: _ZN7Structs15ItemPowerEnergyD2Ev
; demangled: Structs::ItemPowerEnergy::~ItemPowerEnergy()
; decoder-mode: arm
004d9540  70 40 2d e9                                      push {r4, r5, r6, lr}
004d9544  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d9548  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d954c  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d9550  03 30 8f e0                                      add r3, pc, r3
004d9554  02 20 93 e7                                      ldr r2, [r3, r2]
004d9558  00 00 51 e3                                      cmp r1, #0
004d955c  00 50 a0 e1                                      mov r5, r0
004d9560  08 20 82 e2                                      add r2, r2, #8
004d9564  00 20 80 e5                                      str r2, [r0]
004d9568  0f 00 00 0a                                      beq #0x4d95ac
004d956c  04 00 11 e5                                      ldr r0, [r1, #-4]
004d9570  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d9574  00 00 51 e1                                      cmp r1, r0
004d9578  01 00 00 1a                                      bne #0x4d9584
004d957c  08 00 00 ea                                      b #0x4d95a4
004d9580  04 00 a0 e1                                      mov r0, r4
004d9584  10 40 40 e2                                      sub r4, r0, #0x10
004d9588  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d958c  04 00 a0 e1                                      mov r0, r4
004d9590  0f e0 a0 e1                                      mov lr, pc
004d9594  00 f0 93 e5                                      ldr pc, [r3]
004d9598  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d959c  04 00 50 e1                                      cmp r0, r4
004d95a0  f6 ff ff 1a                                      bne #0x4d9580
004d95a4  08 00 40 e2                                      sub r0, r0, #8
004d95a8  a4 db f8 eb                                      bl #0x310440
004d95ac  05 00 a0 e1                                      mov r0, r5
004d95b0  0e f5 ff eb                                      bl #0x4d69f0
004d95b4  05 00 a0 e1                                      mov r0, r5
004d95b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d95bc  40 b5 4b 00 80 23 00 00                          .byte 0x40, 0xb5, 0x4b, 0x00, 0x80, 0x23, 0x00, 0x00

; FUNCTION 0x004ed1ec, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerEnergy
; alias: _ZN7Structs15ItemPowerEnergy4readEP11IStreamBase
; demangled: Structs::ItemPowerEnergy::read(IStreamBase*)
; decoder-mode: arm
004ed1ec  f5 fe ff ea                                      b #0x4ecdc8
