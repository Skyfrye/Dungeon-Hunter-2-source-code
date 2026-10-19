; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cf6a0, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestDestroyGameObject
; alias: _ZN7Structs24v2QuestDestroyGameObject8finalizeEv
; demangled: Structs::v2QuestDestroyGameObject::finalize()
; decoder-mode: arm
004cf6a0  10 40 2d e9                                      push {r4, lr}
004cf6a4  00 40 a0 e1                                      mov r4, r0
004cf6a8  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf6ac  00 00 50 e3                                      cmp r0, #0
004cf6b0  03 00 00 0a                                      beq #0x4cf6c4
004cf6b4  61 03 f9 eb                                      bl #0x310440
004cf6b8  00 30 a0 e3                                      mov r3, #0
004cf6bc  10 30 84 e5                                      str r3, [r4, #0x10]
004cf6c0  14 30 84 e5                                      str r3, [r4, #0x14]
004cf6c4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf6c8  00 00 50 e3                                      cmp r0, #0
004cf6cc  03 00 00 0a                                      beq #0x4cf6e0
004cf6d0  5a 03 f9 eb                                      bl #0x310440
004cf6d4  00 30 a0 e3                                      mov r3, #0
004cf6d8  18 30 84 e5                                      str r3, [r4, #0x18]
004cf6dc  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cf6e0  04 00 a0 e1                                      mov r0, r4
004cf6e4  10 40 bd e8                                      pop {r4, lr}
004cf6e8  7a ff ff ea                                      b #0x4cf4d8

; FUNCTION 0x004cfbb4, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestDestroyGameObject
; alias: _ZN7Structs24v2QuestDestroyGameObjectD1Ev
; demangled: Structs::v2QuestDestroyGameObject::~v2QuestDestroyGameObject()
; decoder-mode: arm
004cfbb4  10 40 2d e9                                      push {r4, lr}
004cfbb8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cfbbc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cfbc0  00 40 a0 e1                                      mov r4, r0
004cfbc4  03 30 8f e0                                      add r3, pc, r3
004cfbc8  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cfbcc  02 20 93 e7                                      ldr r2, [r3, r2]
004cfbd0  00 00 50 e3                                      cmp r0, #0
004cfbd4  08 20 82 e2                                      add r2, r2, #8
004cfbd8  00 20 84 e5                                      str r2, [r4]
004cfbdc  00 00 00 0a                                      beq #0x4cfbe4
004cfbe0  16 02 f9 eb                                      bl #0x310440
004cfbe4  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cfbe8  00 00 50 e3                                      cmp r0, #0
004cfbec  00 00 00 0a                                      beq #0x4cfbf4
004cfbf0  12 02 f9 eb                                      bl #0x310440
004cfbf4  04 00 a0 e1                                      mov r0, r4
004cfbf8  d8 fe ff eb                                      bl #0x4cf760
004cfbfc  04 00 a0 e1                                      mov r0, r4
004cfc00  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cfc04  cc 4e 4c 00 34 45 00 00                          .byte 0xcc, 0x4e, 0x4c, 0x00, 0x34, 0x45, 0x00, 0x00

; FUNCTION 0x004cfc0c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestDestroyGameObject
; alias: _ZN7Structs24v2QuestDestroyGameObjectD0Ev
; demangled: Structs::v2QuestDestroyGameObject::~v2QuestDestroyGameObject()
; decoder-mode: arm
004cfc0c  10 40 2d e9                                      push {r4, lr}
004cfc10  00 40 a0 e1                                      mov r4, r0
004cfc14  e6 ff ff eb                                      bl #0x4cfbb4
004cfc18  04 00 a0 e1                                      mov r0, r4
004cfc1c  07 02 f9 eb                                      bl #0x310440
004cfc20  04 00 a0 e1                                      mov r0, r4
004cfc24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cfc28, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestDestroyGameObject
; alias: _ZN7Structs24v2QuestDestroyGameObjectD2Ev
; demangled: Structs::v2QuestDestroyGameObject::~v2QuestDestroyGameObject()
; decoder-mode: arm
004cfc28  10 40 2d e9                                      push {r4, lr}
004cfc2c  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cfc30  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cfc34  00 40 a0 e1                                      mov r4, r0
004cfc38  03 30 8f e0                                      add r3, pc, r3
004cfc3c  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cfc40  02 20 93 e7                                      ldr r2, [r3, r2]
004cfc44  00 00 50 e3                                      cmp r0, #0
004cfc48  08 20 82 e2                                      add r2, r2, #8
004cfc4c  00 20 84 e5                                      str r2, [r4]
004cfc50  00 00 00 0a                                      beq #0x4cfc58
004cfc54  f9 01 f9 eb                                      bl #0x310440
004cfc58  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cfc5c  00 00 50 e3                                      cmp r0, #0
004cfc60  00 00 00 0a                                      beq #0x4cfc68
004cfc64  f5 01 f9 eb                                      bl #0x310440
004cfc68  04 00 a0 e1                                      mov r0, r4
004cfc6c  bb fe ff eb                                      bl #0x4cf760
004cfc70  04 00 a0 e1                                      mov r0, r4
004cfc74  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cfc78  58 4e 4c 00 34 45 00 00                          .byte 0x58, 0x4e, 0x4c, 0x00, 0x34, 0x45, 0x00, 0x00

; FUNCTION 0x00504814, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestDestroyGameObject
; alias: _ZN7Structs24v2QuestDestroyGameObject4readEP11IStreamBase
; demangled: Structs::v2QuestDestroyGameObject::read(IStreamBase*)
; decoder-mode: arm
00504814  5b ff ff ea                                      b #0x504588
