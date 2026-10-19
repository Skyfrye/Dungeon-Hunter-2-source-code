; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cf5bc, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestTriggerOn
; alias: _ZN7Structs16v2QuestTriggerOn8finalizeEv
; demangled: Structs::v2QuestTriggerOn::finalize()
; decoder-mode: arm
004cf5bc  10 40 2d e9                                      push {r4, lr}
004cf5c0  00 40 a0 e1                                      mov r4, r0
004cf5c4  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf5c8  00 00 50 e3                                      cmp r0, #0
004cf5cc  03 00 00 0a                                      beq #0x4cf5e0
004cf5d0  9a 03 f9 eb                                      bl #0x310440
004cf5d4  00 30 a0 e3                                      mov r3, #0
004cf5d8  10 30 84 e5                                      str r3, [r4, #0x10]
004cf5dc  14 30 84 e5                                      str r3, [r4, #0x14]
004cf5e0  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf5e4  00 00 50 e3                                      cmp r0, #0
004cf5e8  03 00 00 0a                                      beq #0x4cf5fc
004cf5ec  93 03 f9 eb                                      bl #0x310440
004cf5f0  00 30 a0 e3                                      mov r3, #0
004cf5f4  18 30 84 e5                                      str r3, [r4, #0x18]
004cf5f8  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cf5fc  04 00 a0 e1                                      mov r0, r4
004cf600  10 40 bd e8                                      pop {r4, lr}
004cf604  b3 ff ff ea                                      b #0x4cf4d8

; FUNCTION 0x004cf950, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestTriggerOn
; alias: _ZN7Structs16v2QuestTriggerOnD1Ev
; demangled: Structs::v2QuestTriggerOn::~v2QuestTriggerOn()
; decoder-mode: arm
004cf950  10 40 2d e9                                      push {r4, lr}
004cf954  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf958  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf95c  00 40 a0 e1                                      mov r4, r0
004cf960  03 30 8f e0                                      add r3, pc, r3
004cf964  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf968  02 20 93 e7                                      ldr r2, [r3, r2]
004cf96c  00 00 50 e3                                      cmp r0, #0
004cf970  08 20 82 e2                                      add r2, r2, #8
004cf974  00 20 84 e5                                      str r2, [r4]
004cf978  00 00 00 0a                                      beq #0x4cf980
004cf97c  af 02 f9 eb                                      bl #0x310440
004cf980  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf984  00 00 50 e3                                      cmp r0, #0
004cf988  00 00 00 0a                                      beq #0x4cf990
004cf98c  ab 02 f9 eb                                      bl #0x310440
004cf990  04 00 a0 e1                                      mov r0, r4
004cf994  71 ff ff eb                                      bl #0x4cf760
004cf998  04 00 a0 e1                                      mov r0, r4
004cf99c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf9a0  30 51 4c 00 04 32 00 00                          .byte 0x30, 0x51, 0x4c, 0x00, 0x04, 0x32, 0x00, 0x00

; FUNCTION 0x004cf9a8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestTriggerOn
; alias: _ZN7Structs16v2QuestTriggerOnD0Ev
; demangled: Structs::v2QuestTriggerOn::~v2QuestTriggerOn()
; decoder-mode: arm
004cf9a8  10 40 2d e9                                      push {r4, lr}
004cf9ac  00 40 a0 e1                                      mov r4, r0
004cf9b0  e6 ff ff eb                                      bl #0x4cf950
004cf9b4  04 00 a0 e1                                      mov r0, r4
004cf9b8  a0 02 f9 eb                                      bl #0x310440
004cf9bc  04 00 a0 e1                                      mov r0, r4
004cf9c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cf9c4, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestTriggerOn
; alias: _ZN7Structs16v2QuestTriggerOnD2Ev
; demangled: Structs::v2QuestTriggerOn::~v2QuestTriggerOn()
; decoder-mode: arm
004cf9c4  10 40 2d e9                                      push {r4, lr}
004cf9c8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf9cc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf9d0  00 40 a0 e1                                      mov r4, r0
004cf9d4  03 30 8f e0                                      add r3, pc, r3
004cf9d8  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf9dc  02 20 93 e7                                      ldr r2, [r3, r2]
004cf9e0  00 00 50 e3                                      cmp r0, #0
004cf9e4  08 20 82 e2                                      add r2, r2, #8
004cf9e8  00 20 84 e5                                      str r2, [r4]
004cf9ec  00 00 00 0a                                      beq #0x4cf9f4
004cf9f0  92 02 f9 eb                                      bl #0x310440
004cf9f4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf9f8  00 00 50 e3                                      cmp r0, #0
004cf9fc  00 00 00 0a                                      beq #0x4cfa04
004cfa00  8e 02 f9 eb                                      bl #0x310440
004cfa04  04 00 a0 e1                                      mov r0, r4
004cfa08  54 ff ff eb                                      bl #0x4cf760
004cfa0c  04 00 a0 e1                                      mov r0, r4
004cfa10  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cfa14  bc 50 4c 00 04 32 00 00                          .byte 0xbc, 0x50, 0x4c, 0x00, 0x04, 0x32, 0x00, 0x00

; FUNCTION 0x00504808, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestTriggerOn
; alias: _ZN7Structs16v2QuestTriggerOn4readEP11IStreamBase
; demangled: Structs::v2QuestTriggerOn::read(IStreamBase*)
; decoder-mode: arm
00504808  5e ff ff ea                                      b #0x504588
