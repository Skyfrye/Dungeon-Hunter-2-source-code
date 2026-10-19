; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047a238, declared_size=8, range_size=8, mode=arm
; class-group: Objective_SavedQty
; alias: _ZThn24_N18Objective_SavedQtyD1Ev
; demangled: non-virtual thunk to Objective_SavedQty::~Objective_SavedQty()
; decoder-mode: arm
0047a238  18 00 40 e2                                      sub r0, r0, #0x18
0047a23c  ff ff ff ea                                      b #0x47a240

; FUNCTION 0x0047a240, declared_size=72, range_size=72, mode=arm
; class-group: Objective_SavedQty
; alias: _ZN18Objective_SavedQtyD1Ev
; demangled: Objective_SavedQty::~Objective_SavedQty()
; decoder-mode: arm
0047a240  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047a244  34 10 9f e5                                      ldr r1, [pc, #0x34]
0047a248  34 20 9f e5                                      ldr r2, [pc, #0x34]
0047a24c  03 30 8f e0                                      add r3, pc, r3
0047a250  01 10 93 e7                                      ldr r1, [r3, r1]
0047a254  02 20 93 e7                                      ldr r2, [r3, r2]
0047a258  10 40 2d e9                                      push {r4, lr}
0047a25c  08 10 81 e2                                      add r1, r1, #8
0047a260  08 20 82 e2                                      add r2, r2, #8
0047a264  00 40 a0 e1                                      mov r4, r0
0047a268  00 10 80 e5                                      str r1, [r0]
0047a26c  18 20 80 e5                                      str r2, [r0, #0x18]
0047a270  db ff ff eb                                      bl #0x47a1e4
0047a274  04 00 a0 e1                                      mov r0, r4
0047a278  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047a27c  44 a8 51 00 90 3a 00 00 40 0b 00 00              .byte 0x44, 0xa8, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00

; FUNCTION 0x0047a388, declared_size=24, range_size=24, mode=arm
; class-group: Objective_SavedQty
; alias: _ZN18Objective_SavedQty10_resetDataEv
; demangled: Objective_SavedQty::_resetData()
; decoder-mode: arm
0047a388  10 40 2d e9                                      push {r4, lr}
0047a38c  00 40 a0 e1                                      mov r4, r0
0047a390  f9 ff ff eb                                      bl #0x47a37c
0047a394  00 30 a0 e3                                      mov r3, #0
0047a398  20 30 84 e5                                      str r3, [r4, #0x20]
0047a39c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0047ab54, declared_size=32, range_size=32, mode=arm
; class-group: Objective_SavedQty
; alias: _ZN18Objective_SavedQty9_loadDataEP11IStreamBase
; demangled: Objective_SavedQty::_loadData(IStreamBase*)
; decoder-mode: arm
0047ab54  70 40 2d e9                                      push {r4, r5, r6, lr}
0047ab58  01 50 a0 e1                                      mov r5, r1
0047ab5c  00 40 a0 e1                                      mov r4, r0
0047ab60  f5 ff ff eb                                      bl #0x47ab3c
0047ab64  05 00 a0 e1                                      mov r0, r5
0047ab68  5f ee fa eb                                      bl #0x3364ec
0047ab6c  20 00 84 e5                                      str r0, [r4, #0x20]
0047ab70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0047ab84, declared_size=32, range_size=32, mode=arm
; class-group: Objective_SavedQty
; alias: _ZN18Objective_SavedQty9_saveDataEP11IStreamBase
; demangled: Objective_SavedQty::_saveData(IStreamBase*)
; decoder-mode: arm
0047ab84  70 40 2d e9                                      push {r4, r5, r6, lr}
0047ab88  00 40 a0 e1                                      mov r4, r0
0047ab8c  01 50 a0 e1                                      mov r5, r1
0047ab90  f7 ff ff eb                                      bl #0x47ab74
0047ab94  20 10 94 e5                                      ldr r1, [r4, #0x20]
0047ab98  05 00 a0 e1                                      mov r0, r5
0047ab9c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0047aba0  ad ee fa ea                                      b #0x33665c

; FUNCTION 0x0047ce6c, declared_size=8, range_size=8, mode=arm
; class-group: Objective_SavedQty
; alias: _ZThn24_N18Objective_SavedQtyD0Ev
; demangled: non-virtual thunk to Objective_SavedQty::~Objective_SavedQty()
; decoder-mode: arm
0047ce6c  18 00 40 e2                                      sub r0, r0, #0x18
0047ce70  ff ff ff ea                                      b #0x47ce74

; FUNCTION 0x0047ce74, declared_size=80, range_size=80, mode=arm
; class-group: Objective_SavedQty
; alias: _ZN18Objective_SavedQtyD0Ev
; demangled: Objective_SavedQty::~Objective_SavedQty()
; decoder-mode: arm
0047ce74  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047ce78  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0047ce7c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047ce80  03 30 8f e0                                      add r3, pc, r3
0047ce84  01 10 93 e7                                      ldr r1, [r3, r1]
0047ce88  02 20 93 e7                                      ldr r2, [r3, r2]
0047ce8c  10 40 2d e9                                      push {r4, lr}
0047ce90  08 10 81 e2                                      add r1, r1, #8
0047ce94  08 20 82 e2                                      add r2, r2, #8
0047ce98  00 40 a0 e1                                      mov r4, r0
0047ce9c  00 10 80 e5                                      str r1, [r0]
0047cea0  18 20 80 e5                                      str r2, [r0, #0x18]
0047cea4  ce f4 ff eb                                      bl #0x47a1e4
0047cea8  04 00 a0 e1                                      mov r0, r4
0047ceac  63 4d fa eb                                      bl #0x310440
0047ceb0  04 00 a0 e1                                      mov r0, r4
0047ceb4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047ceb8  10 7c 51 00 90 3a 00 00 40 0b 00 00              .byte 0x10, 0x7c, 0x51, 0x00, 0x90, 0x3a, 0x00, 0x00, 0x40, 0x0b, 0x00, 0x00
