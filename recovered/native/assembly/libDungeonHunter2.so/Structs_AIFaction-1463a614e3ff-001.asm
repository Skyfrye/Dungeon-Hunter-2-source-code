; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c56a0, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AIFaction
; alias: _ZN7Structs9AIFactionD2Ev
; demangled: Structs::AIFaction::~AIFaction()
; decoder-mode: arm
004c56a0  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56a4, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AIFaction
; alias: _ZN7Structs9AIFactionD1Ev
; demangled: Structs::AIFaction::~AIFaction()
; decoder-mode: arm
004c56a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x004c56a8, declared_size=4, range_size=4, mode=arm
; class-group: Structs::AIFaction
; alias: _ZN7Structs9AIFaction8finalizeEv
; demangled: Structs::AIFaction::finalize()
; decoder-mode: arm
004c56a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x004ceae4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AIFaction
; alias: _ZN7Structs9AIFactionD0Ev
; demangled: Structs::AIFaction::~AIFaction()
; decoder-mode: arm
004ceae4  10 40 2d e9                                      push {r4, lr}
004ceae8  00 40 a0 e1                                      mov r4, r0
004ceaec  ec da ff eb                                      bl #0x4c56a4
004ceaf0  04 00 a0 e1                                      mov r0, r4
004ceaf4  51 06 f9 eb                                      bl #0x310440
004ceaf8  04 00 a0 e1                                      mov r0, r4
004ceafc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004eb408, declared_size=208, range_size=208, mode=arm
; class-group: Structs::AIFaction
; alias: _ZN7Structs9AIFaction4readEP11IStreamBase
; demangled: Structs::AIFaction::read(IStreamBase*)
; decoder-mode: arm
004eb408  30 40 2d e9                                      push {r4, r5, lr}
004eb40c  00 40 a0 e1                                      mov r4, r0
004eb410  0c d0 4d e2                                      sub sp, sp, #0xc
004eb414  01 00 a0 e1                                      mov r0, r1
004eb418  01 50 a0 e1                                      mov r5, r1
004eb41c  04 10 84 e2                                      add r1, r4, #4
004eb420  1a b7 fd eb                                      bl #0x459090
004eb424  01 30 a0 e3                                      mov r3, #1
004eb428  00 00 53 e3                                      cmp r3, #0
004eb42c  04 30 8d e5                                      str r3, [sp, #4]
004eb430  0f 00 00 1a                                      bne #0x4eb474
004eb434  05 30 84 e2                                      add r3, r4, #5
004eb438  06 20 84 e2                                      add r2, r4, #6
004eb43c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb440  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb444  02 00 53 e1                                      cmp r3, r2
004eb448  01 10 20 e0                                      eor r1, r0, r1
004eb44c  01 10 43 e5                                      strb r1, [r3, #-1]
004eb450  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb454  00 10 21 e0                                      eor r1, r1, r0
004eb458  01 10 c2 e5                                      strb r1, [r2, #1]
004eb45c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb460  01 20 42 e2                                      sub r2, r2, #1
004eb464  00 10 21 e0                                      eor r1, r1, r0
004eb468  01 10 43 e5                                      strb r1, [r3, #-1]
004eb46c  01 30 83 e2                                      add r3, r3, #1
004eb470  f1 ff ff 3a                                      blo #0x4eb43c
004eb474  05 00 a0 e1                                      mov r0, r5
004eb478  08 10 84 e2                                      add r1, r4, #8
004eb47c  03 b7 fd eb                                      bl #0x459090
004eb480  01 30 a0 e3                                      mov r3, #1
004eb484  00 00 53 e3                                      cmp r3, #0
004eb488  04 30 8d e5                                      str r3, [sp, #4]
004eb48c  0f 00 00 1a                                      bne #0x4eb4d0
004eb490  0a 30 84 e2                                      add r3, r4, #0xa
004eb494  09 40 84 e2                                      add r4, r4, #9
004eb498  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eb49c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004eb4a0  04 00 53 e1                                      cmp r3, r4
004eb4a4  02 20 21 e0                                      eor r2, r1, r2
004eb4a8  01 20 44 e5                                      strb r2, [r4, #-1]
004eb4ac  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eb4b0  01 20 22 e0                                      eor r2, r2, r1
004eb4b4  01 20 c3 e5                                      strb r2, [r3, #1]
004eb4b8  01 10 54 e5                                      ldrb r1, [r4, #-1]
004eb4bc  01 30 43 e2                                      sub r3, r3, #1
004eb4c0  01 20 22 e0                                      eor r2, r2, r1
004eb4c4  01 20 44 e5                                      strb r2, [r4, #-1]
004eb4c8  01 40 84 e2                                      add r4, r4, #1
004eb4cc  f1 ff ff 8a                                      bhi #0x4eb498
004eb4d0  0c d0 8d e2                                      add sp, sp, #0xc
004eb4d4  30 80 bd e8                                      pop {r4, r5, pc}
