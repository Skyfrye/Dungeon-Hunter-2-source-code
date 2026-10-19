; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d0054, declared_size=76, range_size=76, mode=arm
; class-group: Structs::v2QuestAutomatic
; alias: _ZN7Structs16v2QuestAutomatic8finalizeEv
; demangled: Structs::v2QuestAutomatic::finalize()
; decoder-mode: arm
004d0054  10 40 2d e9                                      push {r4, lr}
004d0058  00 40 a0 e1                                      mov r4, r0
004d005c  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d0060  00 00 50 e3                                      cmp r0, #0
004d0064  03 00 00 0a                                      beq #0x4d0078
004d0068  f4 00 f9 eb                                      bl #0x310440
004d006c  00 30 a0 e3                                      mov r3, #0
004d0070  10 30 84 e5                                      str r3, [r4, #0x10]
004d0074  14 30 84 e5                                      str r3, [r4, #0x14]
004d0078  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004d007c  00 00 50 e3                                      cmp r0, #0
004d0080  03 00 00 0a                                      beq #0x4d0094
004d0084  ed 00 f9 eb                                      bl #0x310440
004d0088  00 30 a0 e3                                      mov r3, #0
004d008c  18 30 84 e5                                      str r3, [r4, #0x18]
004d0090  1c 30 84 e5                                      str r3, [r4, #0x1c]
004d0094  04 00 a0 e1                                      mov r0, r4
004d0098  10 40 bd e8                                      pop {r4, lr}
004d009c  d9 ff ff ea                                      b #0x4d0008

; FUNCTION 0x004d016c, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestAutomatic
; alias: _ZN7Structs16v2QuestAutomaticD1Ev
; demangled: Structs::v2QuestAutomatic::~v2QuestAutomatic()
; decoder-mode: arm
004d016c  10 40 2d e9                                      push {r4, lr}
004d0170  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d0174  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d0178  00 40 a0 e1                                      mov r4, r0
004d017c  03 30 8f e0                                      add r3, pc, r3
004d0180  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d0184  02 20 93 e7                                      ldr r2, [r3, r2]
004d0188  00 00 50 e3                                      cmp r0, #0
004d018c  08 20 82 e2                                      add r2, r2, #8
004d0190  00 20 84 e5                                      str r2, [r4]
004d0194  00 00 00 0a                                      beq #0x4d019c
004d0198  a8 00 f9 eb                                      bl #0x310440
004d019c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004d01a0  00 00 50 e3                                      cmp r0, #0
004d01a4  00 00 00 0a                                      beq #0x4d01ac
004d01a8  a4 00 f9 eb                                      bl #0x310440
004d01ac  04 00 a0 e1                                      mov r0, r4
004d01b0  d7 ff ff eb                                      bl #0x4d0114
004d01b4  04 00 a0 e1                                      mov r0, r4
004d01b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d01bc  14 49 4c 00 44 26 00 00                          .byte 0x14, 0x49, 0x4c, 0x00, 0x44, 0x26, 0x00, 0x00

; FUNCTION 0x004d01c4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2QuestAutomatic
; alias: _ZN7Structs16v2QuestAutomaticD0Ev
; demangled: Structs::v2QuestAutomatic::~v2QuestAutomatic()
; decoder-mode: arm
004d01c4  10 40 2d e9                                      push {r4, lr}
004d01c8  00 40 a0 e1                                      mov r4, r0
004d01cc  e6 ff ff eb                                      bl #0x4d016c
004d01d0  04 00 a0 e1                                      mov r0, r4
004d01d4  99 00 f9 eb                                      bl #0x310440
004d01d8  04 00 a0 e1                                      mov r0, r4
004d01dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d01e0, declared_size=88, range_size=88, mode=arm
; class-group: Structs::v2QuestAutomatic
; alias: _ZN7Structs16v2QuestAutomaticD2Ev
; demangled: Structs::v2QuestAutomatic::~v2QuestAutomatic()
; decoder-mode: arm
004d01e0  10 40 2d e9                                      push {r4, lr}
004d01e4  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d01e8  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d01ec  00 40 a0 e1                                      mov r4, r0
004d01f0  03 30 8f e0                                      add r3, pc, r3
004d01f4  14 00 90 e5                                      ldr r0, [r0, #0x14]
004d01f8  02 20 93 e7                                      ldr r2, [r3, r2]
004d01fc  00 00 50 e3                                      cmp r0, #0
004d0200  08 20 82 e2                                      add r2, r2, #8
004d0204  00 20 84 e5                                      str r2, [r4]
004d0208  00 00 00 0a                                      beq #0x4d0210
004d020c  8b 00 f9 eb                                      bl #0x310440
004d0210  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004d0214  00 00 50 e3                                      cmp r0, #0
004d0218  00 00 00 0a                                      beq #0x4d0220
004d021c  87 00 f9 eb                                      bl #0x310440
004d0220  04 00 a0 e1                                      mov r0, r4
004d0224  ba ff ff eb                                      bl #0x4d0114
004d0228  04 00 a0 e1                                      mov r0, r4
004d022c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d0230  a0 48 4c 00 44 26 00 00                          .byte 0xa0, 0x48, 0x4c, 0x00, 0x44, 0x26, 0x00, 0x00

; FUNCTION 0x00504a90, declared_size=4, range_size=4, mode=arm
; class-group: Structs::v2QuestAutomatic
; alias: _ZN7Structs16v2QuestAutomatic4readEP11IStreamBase
; demangled: Structs::v2QuestAutomatic::read(IStreamBase*)
; decoder-mode: arm
00504a90  60 ff ff ea                                      b #0x504818
