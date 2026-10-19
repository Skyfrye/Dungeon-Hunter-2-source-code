; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cf570, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestPickedUpLiftable
; alias: _ZN7Structs23v2QuestPickedUpLiftable8finalizeEv
; demangled: Structs::v2QuestPickedUpLiftable::finalize()
; decoder-mode: arm
004cf570  10 40 2d e9                                      push {r4, lr}
004cf574  00 40 a0 e1                                      mov r4, r0
004cf578  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf57c  00 00 50 e3                                      cmp r0, #0
004cf580  03 00 00 0a                                      beq #0x4cf594
004cf584  ad 03 f9 eb                                      bl #0x310440
004cf588  00 30 a0 e3                                      mov r3, #0
004cf58c  10 30 84 e5                                      str r3, [r4, #0x10]
004cf590  14 30 84 e5                                      str r3, [r4, #0x14]
004cf594  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf598  00 00 50 e3                                      cmp r0, #0
004cf59c  03 00 00 0a                                      beq #0x4cf5b0
004cf5a0  a6 03 f9 eb                                      bl #0x310440
004cf5a4  00 30 a0 e3                                      mov r3, #0
004cf5a8  18 30 84 e5                                      str r3, [r4, #0x18]
004cf5ac  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cf5b0  04 00 a0 e1                                      mov r0, r4
004cf5b4  10 40 bd e8                                      pop {r4, lr}
004cf5b8  c6 ff ff ea                                      b #0x4cf4d8

; FUNCTION 0x004cf884, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestPickedUpLiftable
; alias: _ZN7Structs23v2QuestPickedUpLiftableD1Ev
; demangled: Structs::v2QuestPickedUpLiftable::~v2QuestPickedUpLiftable()
; decoder-mode: arm
004cf884  10 40 2d e9                                      push {r4, lr}
004cf888  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf88c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf890  00 40 a0 e1                                      mov r4, r0
004cf894  03 30 8f e0                                      add r3, pc, r3
004cf898  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf89c  02 20 93 e7                                      ldr r2, [r3, r2]
004cf8a0  00 00 50 e3                                      cmp r0, #0
004cf8a4  08 20 82 e2                                      add r2, r2, #8
004cf8a8  00 20 84 e5                                      str r2, [r4]
004cf8ac  00 00 00 0a                                      beq #0x4cf8b4
004cf8b0  e2 02 f9 eb                                      bl #0x310440
004cf8b4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf8b8  00 00 50 e3                                      cmp r0, #0
004cf8bc  00 00 00 0a                                      beq #0x4cf8c4
004cf8c0  de 02 f9 eb                                      bl #0x310440
004cf8c4  04 00 a0 e1                                      mov r0, r4
004cf8c8  a4 ff ff eb                                      bl #0x4cf760
004cf8cc  04 00 a0 e1                                      mov r0, r4
004cf8d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf8d4  fc 51 4c 00 24 11 00 00                          .byte 0xfc, 0x51, 0x4c, 0x00, 0x24, 0x11, 0x00, 0x00

; FUNCTION 0x004cf8dc, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestPickedUpLiftable
; alias: _ZN7Structs23v2QuestPickedUpLiftableD0Ev
; demangled: Structs::v2QuestPickedUpLiftable::~v2QuestPickedUpLiftable()
; decoder-mode: arm
004cf8dc  10 40 2d e9                                      push {r4, lr}
004cf8e0  00 40 a0 e1                                      mov r4, r0
004cf8e4  e6 ff ff eb                                      bl #0x4cf884
004cf8e8  04 00 a0 e1                                      mov r0, r4
004cf8ec  d3 02 f9 eb                                      bl #0x310440
004cf8f0  04 00 a0 e1                                      mov r0, r4
004cf8f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cf8f8, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestPickedUpLiftable
; alias: _ZN7Structs23v2QuestPickedUpLiftableD2Ev
; demangled: Structs::v2QuestPickedUpLiftable::~v2QuestPickedUpLiftable()
; decoder-mode: arm
004cf8f8  10 40 2d e9                                      push {r4, lr}
004cf8fc  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf900  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf904  00 40 a0 e1                                      mov r4, r0
004cf908  03 30 8f e0                                      add r3, pc, r3
004cf90c  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf910  02 20 93 e7                                      ldr r2, [r3, r2]
004cf914  00 00 50 e3                                      cmp r0, #0
004cf918  08 20 82 e2                                      add r2, r2, #8
004cf91c  00 20 84 e5                                      str r2, [r4]
004cf920  00 00 00 0a                                      beq #0x4cf928
004cf924  c5 02 f9 eb                                      bl #0x310440
004cf928  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf92c  00 00 50 e3                                      cmp r0, #0
004cf930  00 00 00 0a                                      beq #0x4cf938
004cf934  c1 02 f9 eb                                      bl #0x310440
004cf938  04 00 a0 e1                                      mov r0, r4
004cf93c  87 ff ff eb                                      bl #0x4cf760
004cf940  04 00 a0 e1                                      mov r0, r4
004cf944  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf948  88 51 4c 00 24 11 00 00                          .byte 0x88, 0x51, 0x4c, 0x00, 0x24, 0x11, 0x00, 0x00

; FUNCTION 0x00504804, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestPickedUpLiftable
; alias: _ZN7Structs23v2QuestPickedUpLiftable4readEP11IStreamBase
; demangled: Structs::v2QuestPickedUpLiftable::read(IStreamBase*)
; decoder-mode: arm
00504804  5f ff ff ea                                      b #0x504588
