; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cf654, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestOpenGameObject
; alias: _ZN7Structs21v2QuestOpenGameObject8finalizeEv
; demangled: Structs::v2QuestOpenGameObject::finalize()
; decoder-mode: arm
004cf654  10 40 2d e9                                      push {r4, lr}
004cf658  00 40 a0 e1                                      mov r4, r0
004cf65c  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf660  00 00 50 e3                                      cmp r0, #0
004cf664  03 00 00 0a                                      beq #0x4cf678
004cf668  74 03 f9 eb                                      bl #0x310440
004cf66c  00 30 a0 e3                                      mov r3, #0
004cf670  10 30 84 e5                                      str r3, [r4, #0x10]
004cf674  14 30 84 e5                                      str r3, [r4, #0x14]
004cf678  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf67c  00 00 50 e3                                      cmp r0, #0
004cf680  03 00 00 0a                                      beq #0x4cf694
004cf684  6d 03 f9 eb                                      bl #0x310440
004cf688  00 30 a0 e3                                      mov r3, #0
004cf68c  18 30 84 e5                                      str r3, [r4, #0x18]
004cf690  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cf694  04 00 a0 e1                                      mov r0, r4
004cf698  10 40 bd e8                                      pop {r4, lr}
004cf69c  8d ff ff ea                                      b #0x4cf4d8

; FUNCTION 0x004cfae8, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestOpenGameObject
; alias: _ZN7Structs21v2QuestOpenGameObjectD1Ev
; demangled: Structs::v2QuestOpenGameObject::~v2QuestOpenGameObject()
; decoder-mode: arm
004cfae8  10 40 2d e9                                      push {r4, lr}
004cfaec  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cfaf0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cfaf4  00 40 a0 e1                                      mov r4, r0
004cfaf8  03 30 8f e0                                      add r3, pc, r3
004cfafc  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cfb00  02 20 93 e7                                      ldr r2, [r3, r2]
004cfb04  00 00 50 e3                                      cmp r0, #0
004cfb08  08 20 82 e2                                      add r2, r2, #8
004cfb0c  00 20 84 e5                                      str r2, [r4]
004cfb10  00 00 00 0a                                      beq #0x4cfb18
004cfb14  49 02 f9 eb                                      bl #0x310440
004cfb18  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cfb1c  00 00 50 e3                                      cmp r0, #0
004cfb20  00 00 00 0a                                      beq #0x4cfb28
004cfb24  45 02 f9 eb                                      bl #0x310440
004cfb28  04 00 a0 e1                                      mov r0, r4
004cfb2c  0b ff ff eb                                      bl #0x4cf760
004cfb30  04 00 a0 e1                                      mov r0, r4
004cfb34  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cfb38  98 4f 4c 00 b0 13 00 00                          .byte 0x98, 0x4f, 0x4c, 0x00, 0xb0, 0x13, 0x00, 0x00

; FUNCTION 0x004cfb40, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestOpenGameObject
; alias: _ZN7Structs21v2QuestOpenGameObjectD0Ev
; demangled: Structs::v2QuestOpenGameObject::~v2QuestOpenGameObject()
; decoder-mode: arm
004cfb40  10 40 2d e9                                      push {r4, lr}
004cfb44  00 40 a0 e1                                      mov r4, r0
004cfb48  e6 ff ff eb                                      bl #0x4cfae8
004cfb4c  04 00 a0 e1                                      mov r0, r4
004cfb50  3a 02 f9 eb                                      bl #0x310440
004cfb54  04 00 a0 e1                                      mov r0, r4
004cfb58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cfb5c, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestOpenGameObject
; alias: _ZN7Structs21v2QuestOpenGameObjectD2Ev
; demangled: Structs::v2QuestOpenGameObject::~v2QuestOpenGameObject()
; decoder-mode: arm
004cfb5c  10 40 2d e9                                      push {r4, lr}
004cfb60  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cfb64  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cfb68  00 40 a0 e1                                      mov r4, r0
004cfb6c  03 30 8f e0                                      add r3, pc, r3
004cfb70  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cfb74  02 20 93 e7                                      ldr r2, [r3, r2]
004cfb78  00 00 50 e3                                      cmp r0, #0
004cfb7c  08 20 82 e2                                      add r2, r2, #8
004cfb80  00 20 84 e5                                      str r2, [r4]
004cfb84  00 00 00 0a                                      beq #0x4cfb8c
004cfb88  2c 02 f9 eb                                      bl #0x310440
004cfb8c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cfb90  00 00 50 e3                                      cmp r0, #0
004cfb94  00 00 00 0a                                      beq #0x4cfb9c
004cfb98  28 02 f9 eb                                      bl #0x310440
004cfb9c  04 00 a0 e1                                      mov r0, r4
004cfba0  ee fe ff eb                                      bl #0x4cf760
004cfba4  04 00 a0 e1                                      mov r0, r4
004cfba8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cfbac  24 4f 4c 00 b0 13 00 00                          .byte 0x24, 0x4f, 0x4c, 0x00, 0xb0, 0x13, 0x00, 0x00

; FUNCTION 0x00504810, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestOpenGameObject
; alias: _ZN7Structs21v2QuestOpenGameObject4readEP11IStreamBase
; demangled: Structs::v2QuestOpenGameObject::read(IStreamBase*)
; decoder-mode: arm
00504810  5c ff ff ea                                      b #0x504588
