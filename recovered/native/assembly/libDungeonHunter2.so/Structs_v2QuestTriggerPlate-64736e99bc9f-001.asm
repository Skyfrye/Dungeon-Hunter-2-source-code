; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cf608, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestTriggerPlate
; alias: _ZN7Structs19v2QuestTriggerPlate8finalizeEv
; demangled: Structs::v2QuestTriggerPlate::finalize()
; decoder-mode: arm
004cf608  10 40 2d e9                                      push {r4, lr}
004cf60c  00 40 a0 e1                                      mov r4, r0
004cf610  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf614  00 00 50 e3                                      cmp r0, #0
004cf618  03 00 00 0a                                      beq #0x4cf62c
004cf61c  87 03 f9 eb                                      bl #0x310440
004cf620  00 30 a0 e3                                      mov r3, #0
004cf624  10 30 84 e5                                      str r3, [r4, #0x10]
004cf628  14 30 84 e5                                      str r3, [r4, #0x14]
004cf62c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf630  00 00 50 e3                                      cmp r0, #0
004cf634  03 00 00 0a                                      beq #0x4cf648
004cf638  80 03 f9 eb                                      bl #0x310440
004cf63c  00 30 a0 e3                                      mov r3, #0
004cf640  18 30 84 e5                                      str r3, [r4, #0x18]
004cf644  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cf648  04 00 a0 e1                                      mov r0, r4
004cf64c  10 40 bd e8                                      pop {r4, lr}
004cf650  a0 ff ff ea                                      b #0x4cf4d8

; FUNCTION 0x004cfa1c, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestTriggerPlate
; alias: _ZN7Structs19v2QuestTriggerPlateD1Ev
; demangled: Structs::v2QuestTriggerPlate::~v2QuestTriggerPlate()
; decoder-mode: arm
004cfa1c  10 40 2d e9                                      push {r4, lr}
004cfa20  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cfa24  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cfa28  00 40 a0 e1                                      mov r4, r0
004cfa2c  03 30 8f e0                                      add r3, pc, r3
004cfa30  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cfa34  02 20 93 e7                                      ldr r2, [r3, r2]
004cfa38  00 00 50 e3                                      cmp r0, #0
004cfa3c  08 20 82 e2                                      add r2, r2, #8
004cfa40  00 20 84 e5                                      str r2, [r4]
004cfa44  00 00 00 0a                                      beq #0x4cfa4c
004cfa48  7c 02 f9 eb                                      bl #0x310440
004cfa4c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cfa50  00 00 50 e3                                      cmp r0, #0
004cfa54  00 00 00 0a                                      beq #0x4cfa5c
004cfa58  78 02 f9 eb                                      bl #0x310440
004cfa5c  04 00 a0 e1                                      mov r0, r4
004cfa60  3e ff ff eb                                      bl #0x4cf760
004cfa64  04 00 a0 e1                                      mov r0, r4
004cfa68  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cfa6c  64 50 4c 00 88 3b 00 00                          .byte 0x64, 0x50, 0x4c, 0x00, 0x88, 0x3b, 0x00, 0x00

; FUNCTION 0x004cfa74, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestTriggerPlate
; alias: _ZN7Structs19v2QuestTriggerPlateD0Ev
; demangled: Structs::v2QuestTriggerPlate::~v2QuestTriggerPlate()
; decoder-mode: arm
004cfa74  10 40 2d e9                                      push {r4, lr}
004cfa78  00 40 a0 e1                                      mov r4, r0
004cfa7c  e6 ff ff eb                                      bl #0x4cfa1c
004cfa80  04 00 a0 e1                                      mov r0, r4
004cfa84  6d 02 f9 eb                                      bl #0x310440
004cfa88  04 00 a0 e1                                      mov r0, r4
004cfa8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cfa90, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestTriggerPlate
; alias: _ZN7Structs19v2QuestTriggerPlateD2Ev
; demangled: Structs::v2QuestTriggerPlate::~v2QuestTriggerPlate()
; decoder-mode: arm
004cfa90  10 40 2d e9                                      push {r4, lr}
004cfa94  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cfa98  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cfa9c  00 40 a0 e1                                      mov r4, r0
004cfaa0  03 30 8f e0                                      add r3, pc, r3
004cfaa4  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cfaa8  02 20 93 e7                                      ldr r2, [r3, r2]
004cfaac  00 00 50 e3                                      cmp r0, #0
004cfab0  08 20 82 e2                                      add r2, r2, #8
004cfab4  00 20 84 e5                                      str r2, [r4]
004cfab8  00 00 00 0a                                      beq #0x4cfac0
004cfabc  5f 02 f9 eb                                      bl #0x310440
004cfac0  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cfac4  00 00 50 e3                                      cmp r0, #0
004cfac8  00 00 00 0a                                      beq #0x4cfad0
004cfacc  5b 02 f9 eb                                      bl #0x310440
004cfad0  04 00 a0 e1                                      mov r0, r4
004cfad4  21 ff ff eb                                      bl #0x4cf760
004cfad8  04 00 a0 e1                                      mov r0, r4
004cfadc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cfae0  f0 4f 4c 00 88 3b 00 00                          .byte 0xf0, 0x4f, 0x4c, 0x00, 0x88, 0x3b, 0x00, 0x00

; FUNCTION 0x0050480c, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestTriggerPlate
; alias: _ZN7Structs19v2QuestTriggerPlate4readEP11IStreamBase
; demangled: Structs::v2QuestTriggerPlate::read(IStreamBase*)
; decoder-mode: arm
0050480c  5d ff ff ea                                      b #0x504588
