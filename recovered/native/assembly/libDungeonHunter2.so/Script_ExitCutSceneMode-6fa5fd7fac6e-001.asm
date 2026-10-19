; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455640, declared_size=8, range_size=8, mode=arm
; class-group: Script_ExitCutSceneMode
; alias: _ZNK23Script_ExitCutSceneMode10IsBlockingEv
; demangled: Script_ExitCutSceneMode::IsBlocking() const
; decoder-mode: arm
00455640  00 00 a0 e3                                      mov r0, #0
00455644  1e ff 2f e1                                      bx lr

; FUNCTION 0x004599ac, declared_size=344, range_size=344, mode=arm
; class-group: Script_ExitCutSceneMode
; alias: _ZN23Script_ExitCutSceneMode7ExecuteEbi
; demangled: Script_ExitCutSceneMode::Execute(bool, int)
; decoder-mode: arm
004599ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004599b0  08 d0 4d e2                                      sub sp, sp, #8
004599b4  34 4c ff eb                                      bl #0x42ca8c
004599b8  73 4c ff eb                                      bl #0x42cb8c
004599bc  00 40 a0 e1                                      mov r4, r0
004599c0  31 4c ff eb                                      bl #0x42ca8c
004599c4  70 4c ff eb                                      bl #0x42cb8c
004599c8  b7 38 0d eb                                      bl #0x7a7cac
004599cc  e0 69 0c eb                                      bl #0x774154
004599d0  14 21 9f e5                                      ldr r2, [pc, #0x114]
004599d4  00 50 a0 e3                                      mov r5, #0
004599d8  00 10 a0 e1                                      mov r1, r0
004599dc  02 20 8f e0                                      add r2, pc, r2
004599e0  04 00 a0 e1                                      mov r0, r4
004599e4  05 30 a0 e1                                      mov r3, r5
004599e8  00 41 9f e5                                      ldr r4, [pc, #0x100]
004599ec  00 50 8d e5                                      str r5, [sp]
004599f0  05 49 0d eb                                      bl #0x7abe0c
004599f4  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
004599f8  04 40 8f e0                                      add r4, pc, r4
004599fc  01 70 a0 e3                                      mov r7, #1
00459a00  03 20 94 e7                                      ldr r2, [r4, r3]
00459a04  ec 30 9f e5                                      ldr r3, [pc, #0xec]
00459a08  30 50 c2 e5                                      strb r5, [r2, #0x30]
00459a0c  03 30 94 e7                                      ldr r3, [r4, r3]
00459a10  00 70 c3 e5                                      strb r7, [r3]
00459a14  5e 8f 0e eb                                      bl #0x7fd794
00459a18  05 30 d0 e5                                      ldrb r3, [r0, #5]
00459a1c  05 00 53 e1                                      cmp r3, r5
00459a20  01 00 00 1a                                      bne #0x459a2c
00459a24  08 d0 8d e2                                      add sp, sp, #8
00459a28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00459a2c  e2 c5 0e eb                                      bl #0x80b1bc
00459a30  00 80 a0 e1                                      mov r8, r0
00459a34  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
00459a38  07 10 a0 e1                                      mov r1, r7
00459a3c  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
00459a40  00 00 8f e0                                      add r0, pc, r0
00459a44  fe c1 0e eb                                      bl #0x80a244
00459a48  01 30 e0 e3                                      mvn r3, #1
00459a4c  54 30 80 e5                                      str r3, [r0, #0x54]
00459a50  00 30 e0 e3                                      mvn r3, #0
00459a54  58 30 80 e5                                      str r3, [r0, #0x58]
00459a58  00 10 a0 e1                                      mov r1, r0
00459a5c  50 70 80 e5                                      str r7, [r0, #0x50]
00459a60  08 00 a0 e1                                      mov r0, r8
00459a64  0e d2 0e eb                                      bl #0x80e2a4
00459a68  06 30 94 e7                                      ldr r3, [r4, r6]
00459a6c  40 00 93 e5                                      ldr r0, [r3, #0x40]
00459a70  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
00459a74  05 00 53 e1                                      cmp r3, r5
00459a78  0e 00 00 ca                                      bgt #0x459ab8
00459a7c  e8 ff ff ea                                      b #0x459a24
00459a80  60 36 97 e5                                      ldr r3, [r7, #0x660]
00459a84  01 10 a0 e3                                      mov r1, #1
00459a88  00 00 53 e3                                      cmp r3, #0
00459a8c  03 00 00 0a                                      beq #0x459aa0
00459a90  03 00 a0 e1                                      mov r0, r3
00459a94  00 30 93 e5                                      ldr r3, [r3]
00459a98  0f e0 a0 e1                                      mov lr, pc
00459a9c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00459aa0  06 30 94 e7                                      ldr r3, [r4, r6]
00459aa4  01 50 85 e2                                      add r5, r5, #1
00459aa8  40 00 93 e5                                      ldr r0, [r3, #0x40]
00459aac  c4 36 90 e5                                      ldr r3, [r0, #0x6c4]
00459ab0  03 00 55 e1                                      cmp r5, r3
00459ab4  da ff ff aa                                      bge #0x459a24
00459ab8  05 10 a0 e1                                      mov r1, r5
00459abc  00 20 a0 e3                                      mov r2, #0
00459ac0  1f 53 fc eb                                      bl #0x36e744
00459ac4  00 30 90 e5                                      ldr r3, [r0]
00459ac8  00 70 a0 e1                                      mov r7, r0
00459acc  0f e0 a0 e1                                      mov lr, pc
00459ad0  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00459ad4  00 00 50 e3                                      cmp r0, #0
00459ad8  e8 ff ff 0a                                      beq #0x459a80
00459adc  07 00 a0 e1                                      mov r0, r7
00459ae0  00 10 a0 e3                                      mov r1, #0
00459ae4  85 ff ff eb                                      bl #0x459900
00459ae8  ec ff ff ea                                      b #0x459aa0
; mapping-symbol data/literal pool
00459aec  34 35 47 00 98 b0 53 00 20 1a 00 00 ec 3d 00 00  .byte 0x34, 0x35, 0x47, 0x00, 0x98, 0xb0, 0x53, 0x00, 0x20, 0x1a, 0x00, 0x00, 0xec, 0x3d, 0x00, 0x00
00459afc  80 54 46 00 f4 37 00 00                          .byte 0x80, 0x54, 0x46, 0x00, 0xf4, 0x37, 0x00, 0x00
