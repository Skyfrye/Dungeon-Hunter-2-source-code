; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c8754, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsEventCompleted
; alias: _ZN7Structs18v2IsEventCompletedD2Ev
; demangled: Structs::v2IsEventCompleted::~v2IsEventCompleted()
; decoder-mode: arm
004c8754  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c8758  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c875c  10 40 2d e9                                      push {r4, lr}
004c8760  03 30 8f e0                                      add r3, pc, r3
004c8764  02 20 93 e7                                      ldr r2, [r3, r2]
004c8768  00 40 a0 e1                                      mov r4, r0
004c876c  08 20 82 e2                                      add r2, r2, #8
004c8770  00 20 80 e5                                      str r2, [r0]
004c8774  a5 ff ff eb                                      bl #0x4c8610
004c8778  04 00 a0 e1                                      mov r0, r4
004c877c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c8780  30 c3 4c 00 d4 31 00 00                          .byte 0x30, 0xc3, 0x4c, 0x00, 0xd4, 0x31, 0x00, 0x00

; FUNCTION 0x004c8788, declared_size=52, range_size=52, mode=arm
; class-group: Structs::v2IsEventCompleted
; alias: _ZN7Structs18v2IsEventCompletedD1Ev
; demangled: Structs::v2IsEventCompleted::~v2IsEventCompleted()
; decoder-mode: arm
004c8788  24 30 9f e5                                      ldr r3, [pc, #0x24]
004c878c  24 20 9f e5                                      ldr r2, [pc, #0x24]
004c8790  10 40 2d e9                                      push {r4, lr}
004c8794  03 30 8f e0                                      add r3, pc, r3
004c8798  02 20 93 e7                                      ldr r2, [r3, r2]
004c879c  00 40 a0 e1                                      mov r4, r0
004c87a0  08 20 82 e2                                      add r2, r2, #8
004c87a4  00 20 80 e5                                      str r2, [r0]
004c87a8  98 ff ff eb                                      bl #0x4c8610
004c87ac  04 00 a0 e1                                      mov r0, r4
004c87b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004c87b4  fc c2 4c 00 d4 31 00 00                          .byte 0xfc, 0xc2, 0x4c, 0x00, 0xd4, 0x31, 0x00, 0x00

; FUNCTION 0x004c87bc, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsEventCompleted
; alias: _ZN7Structs18v2IsEventCompleted8finalizeEv
; demangled: Structs::v2IsEventCompleted::finalize()
; decoder-mode: arm
004c87bc  ad ff ff ea                                      b #0x4c8678

; FUNCTION 0x004cd9b8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2IsEventCompleted
; alias: _ZN7Structs18v2IsEventCompletedD0Ev
; demangled: Structs::v2IsEventCompleted::~v2IsEventCompleted()
; decoder-mode: arm
004cd9b8  10 40 2d e9                                      push {r4, lr}
004cd9bc  00 40 a0 e1                                      mov r4, r0
004cd9c0  70 eb ff eb                                      bl #0x4c8788
004cd9c4  04 00 a0 e1                                      mov r0, r4
004cd9c8  9c 0a f9 eb                                      bl #0x310440
004cd9cc  04 00 a0 e1                                      mov r0, r4
004cd9d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00505c6c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2IsEventCompleted
; alias: _ZN7Structs18v2IsEventCompleted4readEP11IStreamBase
; demangled: Structs::v2IsEventCompleted::read(IStreamBase*)
; decoder-mode: arm
00505c6c  c9 ff ff ea                                      b #0x505b98
