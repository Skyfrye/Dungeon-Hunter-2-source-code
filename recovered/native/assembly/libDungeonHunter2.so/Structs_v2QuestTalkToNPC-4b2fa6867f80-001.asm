; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cf524, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestTalkToNPC
; alias: _ZN7Structs16v2QuestTalkToNPC8finalizeEv
; demangled: Structs::v2QuestTalkToNPC::finalize()
; decoder-mode: arm
004cf524  10 40 2d e9                                      push {r4, lr}
004cf528  00 40 a0 e1                                      mov r4, r0
004cf52c  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf530  00 00 50 e3                                      cmp r0, #0
004cf534  03 00 00 0a                                      beq #0x4cf548
004cf538  c0 03 f9 eb                                      bl #0x310440
004cf53c  00 30 a0 e3                                      mov r3, #0
004cf540  10 30 84 e5                                      str r3, [r4, #0x10]
004cf544  14 30 84 e5                                      str r3, [r4, #0x14]
004cf548  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf54c  00 00 50 e3                                      cmp r0, #0
004cf550  03 00 00 0a                                      beq #0x4cf564
004cf554  b9 03 f9 eb                                      bl #0x310440
004cf558  00 30 a0 e3                                      mov r3, #0
004cf55c  18 30 84 e5                                      str r3, [r4, #0x18]
004cf560  1c 30 84 e5                                      str r3, [r4, #0x1c]
004cf564  04 00 a0 e1                                      mov r0, r4
004cf568  10 40 bd e8                                      pop {r4, lr}
004cf56c  d9 ff ff ea                                      b #0x4cf4d8

; FUNCTION 0x004cf7b8, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestTalkToNPC
; alias: _ZN7Structs16v2QuestTalkToNPCD1Ev
; demangled: Structs::v2QuestTalkToNPC::~v2QuestTalkToNPC()
; decoder-mode: arm
004cf7b8  10 40 2d e9                                      push {r4, lr}
004cf7bc  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf7c0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf7c4  00 40 a0 e1                                      mov r4, r0
004cf7c8  03 30 8f e0                                      add r3, pc, r3
004cf7cc  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf7d0  02 20 93 e7                                      ldr r2, [r3, r2]
004cf7d4  00 00 50 e3                                      cmp r0, #0
004cf7d8  08 20 82 e2                                      add r2, r2, #8
004cf7dc  00 20 84 e5                                      str r2, [r4]
004cf7e0  00 00 00 0a                                      beq #0x4cf7e8
004cf7e4  15 03 f9 eb                                      bl #0x310440
004cf7e8  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf7ec  00 00 50 e3                                      cmp r0, #0
004cf7f0  00 00 00 0a                                      beq #0x4cf7f8
004cf7f4  11 03 f9 eb                                      bl #0x310440
004cf7f8  04 00 a0 e1                                      mov r0, r4
004cf7fc  d7 ff ff eb                                      bl #0x4cf760
004cf800  04 00 a0 e1                                      mov r0, r4
004cf804  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf808  c8 52 4c 00 0c 0f 00 00                          .byte 0xc8, 0x52, 0x4c, 0x00, 0x0c, 0x0f, 0x00, 0x00

; FUNCTION 0x004cf810, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestTalkToNPC
; alias: _ZN7Structs16v2QuestTalkToNPCD0Ev
; demangled: Structs::v2QuestTalkToNPC::~v2QuestTalkToNPC()
; decoder-mode: arm
004cf810  10 40 2d e9                                      push {r4, lr}
004cf814  00 40 a0 e1                                      mov r4, r0
004cf818  e6 ff ff eb                                      bl #0x4cf7b8
004cf81c  04 00 a0 e1                                      mov r0, r4
004cf820  06 03 f9 eb                                      bl #0x310440
004cf824  04 00 a0 e1                                      mov r0, r4
004cf828  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cf82c, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestTalkToNPC
; alias: _ZN7Structs16v2QuestTalkToNPCD2Ev
; demangled: Structs::v2QuestTalkToNPC::~v2QuestTalkToNPC()
; decoder-mode: arm
004cf82c  10 40 2d e9                                      push {r4, lr}
004cf830  44 30 9f e5                                      ldr r3, [pc, #0x44]
004cf834  44 20 9f e5                                      ldr r2, [pc, #0x44]
004cf838  00 40 a0 e1                                      mov r4, r0
004cf83c  03 30 8f e0                                      add r3, pc, r3
004cf840  14 00 90 e5                                      ldr r0, [r0, #0x14]
004cf844  02 20 93 e7                                      ldr r2, [r3, r2]
004cf848  00 00 50 e3                                      cmp r0, #0
004cf84c  08 20 82 e2                                      add r2, r2, #8
004cf850  00 20 84 e5                                      str r2, [r4]
004cf854  00 00 00 0a                                      beq #0x4cf85c
004cf858  f8 02 f9 eb                                      bl #0x310440
004cf85c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004cf860  00 00 50 e3                                      cmp r0, #0
004cf864  00 00 00 0a                                      beq #0x4cf86c
004cf868  f4 02 f9 eb                                      bl #0x310440
004cf86c  04 00 a0 e1                                      mov r0, r4
004cf870  ba ff ff eb                                      bl #0x4cf760
004cf874  04 00 a0 e1                                      mov r0, r4
004cf878  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004cf87c  54 52 4c 00 0c 0f 00 00                          .byte 0x54, 0x52, 0x4c, 0x00, 0x0c, 0x0f, 0x00, 0x00

; FUNCTION 0x00504800, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestTalkToNPC
; alias: _ZN7Structs16v2QuestTalkToNPC4readEP11IStreamBase
; demangled: Structs::v2QuestTalkToNPC::read(IStreamBase*)
; decoder-mode: arm
00504800  60 ff ff ea                                      b #0x504588
