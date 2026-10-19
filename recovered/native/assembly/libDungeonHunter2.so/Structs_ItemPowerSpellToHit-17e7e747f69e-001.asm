; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5a94, declared_size=108, range_size=108, mode=arm
; class-group: Structs::ItemPowerSpellToHit
; alias: _ZN7Structs19ItemPowerSpellToHit8finalizeEv
; demangled: Structs::ItemPowerSpellToHit::finalize()
; decoder-mode: arm
004d5a94  70 40 2d e9                                      push {r4, r5, r6, lr}
004d5a98  10 30 90 e5                                      ldr r3, [r0, #0x10]
004d5a9c  00 50 a0 e1                                      mov r5, r0
004d5aa0  00 00 53 e3                                      cmp r3, #0
004d5aa4  12 00 00 0a                                      beq #0x4d5af4
004d5aa8  04 00 13 e5                                      ldr r0, [r3, #-4]
004d5aac  00 02 83 e0                                      add r0, r3, r0, lsl #4
004d5ab0  00 00 53 e1                                      cmp r3, r0
004d5ab4  01 00 00 1a                                      bne #0x4d5ac0
004d5ab8  08 00 00 ea                                      b #0x4d5ae0
004d5abc  04 00 a0 e1                                      mov r0, r4
004d5ac0  10 40 40 e2                                      sub r4, r0, #0x10
004d5ac4  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d5ac8  04 00 a0 e1                                      mov r0, r4
004d5acc  0f e0 a0 e1                                      mov lr, pc
004d5ad0  00 f0 93 e5                                      ldr pc, [r3]
004d5ad4  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d5ad8  04 00 50 e1                                      cmp r0, r4
004d5adc  f6 ff ff 1a                                      bne #0x4d5abc
004d5ae0  08 00 40 e2                                      sub r0, r0, #8
004d5ae4  55 ea f8 eb                                      bl #0x310440
004d5ae8  00 30 a0 e3                                      mov r3, #0
004d5aec  0c 30 85 e5                                      str r3, [r5, #0xc]
004d5af0  10 30 85 e5                                      str r3, [r5, #0x10]
004d5af4  05 00 a0 e1                                      mov r0, r5
004d5af8  70 40 bd e8                                      pop {r4, r5, r6, lr}
004d5afc  0e ff ff ea                                      b #0x4d573c

; FUNCTION 0x004d7268, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerSpellToHit
; alias: _ZN7Structs19ItemPowerSpellToHitD1Ev
; demangled: Structs::ItemPowerSpellToHit::~ItemPowerSpellToHit()
; decoder-mode: arm
004d7268  70 40 2d e9                                      push {r4, r5, r6, lr}
004d726c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7270  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7274  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7278  03 30 8f e0                                      add r3, pc, r3
004d727c  02 20 93 e7                                      ldr r2, [r3, r2]
004d7280  00 00 51 e3                                      cmp r1, #0
004d7284  00 50 a0 e1                                      mov r5, r0
004d7288  08 20 82 e2                                      add r2, r2, #8
004d728c  00 20 80 e5                                      str r2, [r0]
004d7290  0f 00 00 0a                                      beq #0x4d72d4
004d7294  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7298  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d729c  00 00 51 e1                                      cmp r1, r0
004d72a0  01 00 00 1a                                      bne #0x4d72ac
004d72a4  08 00 00 ea                                      b #0x4d72cc
004d72a8  04 00 a0 e1                                      mov r0, r4
004d72ac  10 40 40 e2                                      sub r4, r0, #0x10
004d72b0  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d72b4  04 00 a0 e1                                      mov r0, r4
004d72b8  0f e0 a0 e1                                      mov lr, pc
004d72bc  00 f0 93 e5                                      ldr pc, [r3]
004d72c0  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d72c4  04 00 50 e1                                      cmp r0, r4
004d72c8  f6 ff ff 1a                                      bne #0x4d72a8
004d72cc  08 00 40 e2                                      sub r0, r0, #8
004d72d0  5a e4 f8 eb                                      bl #0x310440
004d72d4  05 00 a0 e1                                      mov r0, r5
004d72d8  c4 fd ff eb                                      bl #0x4d69f0
004d72dc  05 00 a0 e1                                      mov r0, r5
004d72e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d72e4  18 d8 4b 00 70 29 00 00                          .byte 0x18, 0xd8, 0x4b, 0x00, 0x70, 0x29, 0x00, 0x00

; FUNCTION 0x004d72ec, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemPowerSpellToHit
; alias: _ZN7Structs19ItemPowerSpellToHitD0Ev
; demangled: Structs::ItemPowerSpellToHit::~ItemPowerSpellToHit()
; decoder-mode: arm
004d72ec  10 40 2d e9                                      push {r4, lr}
004d72f0  00 40 a0 e1                                      mov r4, r0
004d72f4  db ff ff eb                                      bl #0x4d7268
004d72f8  04 00 a0 e1                                      mov r0, r4
004d72fc  4f e4 f8 eb                                      bl #0x310440
004d7300  04 00 a0 e1                                      mov r0, r4
004d7304  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d7308, declared_size=132, range_size=132, mode=arm
; class-group: Structs::ItemPowerSpellToHit
; alias: _ZN7Structs19ItemPowerSpellToHitD2Ev
; demangled: Structs::ItemPowerSpellToHit::~ItemPowerSpellToHit()
; decoder-mode: arm
004d7308  70 40 2d e9                                      push {r4, r5, r6, lr}
004d730c  70 30 9f e5                                      ldr r3, [pc, #0x70]
004d7310  70 20 9f e5                                      ldr r2, [pc, #0x70]
004d7314  10 10 90 e5                                      ldr r1, [r0, #0x10]
004d7318  03 30 8f e0                                      add r3, pc, r3
004d731c  02 20 93 e7                                      ldr r2, [r3, r2]
004d7320  00 00 51 e3                                      cmp r1, #0
004d7324  00 50 a0 e1                                      mov r5, r0
004d7328  08 20 82 e2                                      add r2, r2, #8
004d732c  00 20 80 e5                                      str r2, [r0]
004d7330  0f 00 00 0a                                      beq #0x4d7374
004d7334  04 00 11 e5                                      ldr r0, [r1, #-4]
004d7338  00 02 81 e0                                      add r0, r1, r0, lsl #4
004d733c  00 00 51 e1                                      cmp r1, r0
004d7340  01 00 00 1a                                      bne #0x4d734c
004d7344  08 00 00 ea                                      b #0x4d736c
004d7348  04 00 a0 e1                                      mov r0, r4
004d734c  10 40 40 e2                                      sub r4, r0, #0x10
004d7350  10 30 10 e5                                      ldr r3, [r0, #-0x10]
004d7354  04 00 a0 e1                                      mov r0, r4
004d7358  0f e0 a0 e1                                      mov lr, pc
004d735c  00 f0 93 e5                                      ldr pc, [r3]
004d7360  10 00 95 e5                                      ldr r0, [r5, #0x10]
004d7364  04 00 50 e1                                      cmp r0, r4
004d7368  f6 ff ff 1a                                      bne #0x4d7348
004d736c  08 00 40 e2                                      sub r0, r0, #8
004d7370  32 e4 f8 eb                                      bl #0x310440
004d7374  05 00 a0 e1                                      mov r0, r5
004d7378  9c fd ff eb                                      bl #0x4d69f0
004d737c  05 00 a0 e1                                      mov r0, r5
004d7380  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d7384  78 d7 4b 00 70 29 00 00                          .byte 0x78, 0xd7, 0x4b, 0x00, 0x70, 0x29, 0x00, 0x00

; FUNCTION 0x004ed174, declared_size=4, range_size=4, mode=arm
; class-group: Structs::ItemPowerSpellToHit
; alias: _ZN7Structs19ItemPowerSpellToHit4readEP11IStreamBase
; demangled: Structs::ItemPowerSpellToHit::read(IStreamBase*)
; decoder-mode: arm
004ed174  13 ff ff ea                                      b #0x4ecdc8
