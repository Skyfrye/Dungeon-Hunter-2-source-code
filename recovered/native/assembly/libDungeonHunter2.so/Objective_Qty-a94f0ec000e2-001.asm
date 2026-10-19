; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a288, declared_size=8, range_size=8, mode=arm
; class-group: Objective_Qty
; alias: _ZThn24_N13Objective_QtyD1Ev
; demangled: non-virtual thunk to Objective_Qty::~Objective_Qty()
; decoder-mode: arm
0047a288  18 00 40 e2                                      sub r0, r0, #0x18
0047a28c  ff ff ff ea                                      b #0x47a290

; FUNCTION 0x0047a290, declared_size=72, range_size=72, mode=arm
; class-group: Objective_Qty
; alias: _ZN13Objective_QtyD1Ev
; demangled: Objective_Qty::~Objective_Qty()
; decoder-mode: arm
0047a290  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047a294  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047a298  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047a29c  03 30 8f e0                                      add r3, pc, r3
0047a2a0  01 10 93 e7                                      ldr r1, [r3, r1]
0047a2a4  02 20 93 e7                                      ldr r2, [r3, r2]
0047a2a8  10 40 2d e9                                      push {r4, lr}
0047a2ac  08 10 81 e2                                      add r1, r1, #8
0047a2b0  08 20 82 e2                                      add r2, r2, #8
0047a2b4  00 40 a0 e1                                      mov r4, r0
0047a2b8  00 10 80 e5                                      str r1, [r0]
0047a2bc  18 20 80 e5                                      str r2, [r0, #0x18]
0047a2c0  c7 ff ff eb                                      bl #0x47a1e4
0047a2c4  04 00 a0 e1                                      mov r0, r4
0047a2c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047a2cc  f4 a7 51 00 90 3a 00 00 40 0b 00 00              .byte 0xf4, 0xa7, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047cd64, declared_size=8, range_size=8, mode=arm
; class-group: Objective_Qty
; alias: _ZThn24_N13Objective_QtyD0Ev
; demangled: non-virtual thunk to Objective_Qty::~Objective_Qty()
; decoder-mode: arm
0047cd64  18 00 40 e2                                      sub r0, r0, #0x18
0047cd68  ff ff ff ea                                      b #0x47cd6c

; FUNCTION 0x0047cd6c, declared_size=80, range_size=80, mode=arm
; class-group: Objective_Qty
; alias: _ZN13Objective_QtyD0Ev
; demangled: Objective_Qty::~Objective_Qty()
; decoder-mode: arm
0047cd6c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047cd70  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047cd74  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047cd78  03 30 8f e0                                      add r3, pc, r3
0047cd7c  01 10 93 e7                                      ldr r1, [r3, r1]
0047cd80  02 20 93 e7                                      ldr r2, [r3, r2]
0047cd84  10 40 2d e9                                      push {r4, lr}
0047cd88  08 10 81 e2                                      add r1, r1, #8
0047cd8c  08 20 82 e2                                      add r2, r2, #8
0047cd90  00 40 a0 e1                                      mov r4, r0
0047cd94  00 10 80 e5                                      str r1, [r0]
0047cd98  18 20 80 e5                                      str r2, [r0, #0x18]
0047cd9c  10 f5 ff eb                                      bl #0x47a1e4
0047cda0  04 00 a0 e1                                      mov r0, r4
0047cda4  a5 4d fa eb                                      bl #0x310440
0047cda8  04 00 a0 e1                                      mov r0, r4
0047cdac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047cdb0  18 7d 51 00 90 3a 00 00 40 0b 00 00              .byte 0x18, 0x7d, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00
