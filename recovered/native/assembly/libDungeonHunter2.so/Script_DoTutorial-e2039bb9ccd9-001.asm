; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455970, declared_size=8, range_size=8, mode=arm
; class-group: Script_DoTutorial
; alias: _ZNK17Script_DoTutorial10IsBlockingEv
; demangled: Script_DoTutorial::IsBlocking() const
; decoder-mode: arm
00455970  00 00 a0 e3                                      mov r0, #0
00455974  1e ff 2f e1                                      bx lr

; FUNCTION 0x00460950, declared_size=264, range_size=264, mode=arm
; class-group: Script_DoTutorial
; alias: _ZN17Script_DoTutorial7ExecuteEbi
; demangled: Script_DoTutorial::Execute(bool, int)
; decoder-mode: arm
00460950  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00460954  0c 70 90 e5                                      ldr r7, [r0, #0xc]
00460958  e4 40 9f e5                                      ldr r4, [pc, #0xe4]
0046095c  00 00 57 e3                                      cmp r7, #0
00460960  04 40 8f e0                                      add r4, pc, r4
00460964  11 00 00 0a                                      beq #0x4609b0
00460968  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
0046096c  00 10 a0 e3                                      mov r1, #0
00460970  01 20 a0 e1                                      mov r2, r1
00460974  05 80 94 e7                                      ldr r8, [r4, r5]
00460978  40 00 98 e5                                      ldr r0, [r8, #0x40]
0046097c  bd 36 fc eb                                      bl #0x36e478
00460980  60 06 90 e5                                      ldr r0, [r0, #0x660]
00460984  10 60 97 e5                                      ldr r6, [r7, #0x10]
00460988  00 00 50 e3                                      cmp r0, #0
0046098c  07 00 00 0a                                      beq #0x4609b0
00460990  d3 6b fd eb                                      bl #0x3bb8e4
00460994  00 00 50 e3                                      cmp r0, #0
00460998  04 00 00 1a                                      bne #0x4609b0
0046099c  4c 30 98 e5                                      ldr r3, [r8, #0x4c]
004609a0  06 30 83 e0                                      add r3, r3, r6
004609a4  29 30 d3 e5                                      ldrb r3, [r3, #0x29]
004609a8  00 00 53 e3                                      cmp r3, #0
004609ac  00 00 00 1a                                      bne #0x4609b4
004609b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
004609b4  76 73 0e eb                                      bl #0x7fd794
004609b8  05 30 d0 e5                                      ldrb r3, [r0, #5]
004609bc  00 00 53 e3                                      cmp r3, #0
004609c0  fa ff ff 1a                                      bne #0x4609b0
004609c4  80 30 9f e5                                      ldr r3, [pc, #0x80]
004609c8  0c 10 97 e5                                      ldr r1, [r7, #0xc]
004609cc  01 20 a0 e3                                      mov r2, #1
004609d0  03 70 94 e7                                      ldr r7, [r4, r3]
004609d4  07 00 a0 e1                                      mov r0, r7
004609d8  04 e2 ff eb                                      bl #0x4591f0
004609dc  01 00 70 e3                                      cmn r0, #1
004609e0  00 10 a0 e1                                      mov r1, r0
004609e4  03 00 00 0a                                      beq #0x4609f8
004609e8  07 00 a0 e1                                      mov r0, r7
004609ec  00 20 e0 e3                                      mvn r2, #0
004609f0  01 30 a0 e3                                      mov r3, #1
004609f4  f1 fe ff eb                                      bl #0x4605c0
004609f8  05 30 94 e7                                      ldr r3, [r4, r5]
004609fc  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00460a00  4c 10 93 e5                                      ldr r1, [r3, #0x4c]
00460a04  02 20 94 e7                                      ldr r2, [r4, r2]
00460a08  06 60 81 e0                                      add r6, r1, r6
00460a0c  28 60 86 e2                                      add r6, r6, #0x28
00460a10  00 10 a0 e3                                      mov r1, #0
00460a14  01 10 c6 e5                                      strb r1, [r6, #1]
00460a18  00 20 92 e5                                      ldr r2, [r2]
00460a1c  11 00 52 e3                                      cmp r2, #0x11
00460a20  04 00 00 0a                                      beq #0x460a38
00460a24  28 30 9f e5                                      ldr r3, [pc, #0x28]
00460a28  03 30 94 e7                                      ldr r3, [r4, r3]
00460a2c  00 00 93 e5                                      ldr r0, [r3]
00460a30  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00460a34  17 dd fa ea                                      b #0x317e98
00460a38  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
00460a3c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00460a40  3b 30 00 ea                                      b #0x46cb34
; mapping-symbol data/literal pool
00460a44  30 41 53 00 f4 37 00 00 20 1a 00 00 50 38 00 00  .byte 0x30, 0x41, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00, 0x50, 0x38, 0x00, 0x00
00460a54  bc 0c 00 00                                      .byte 0xbc, 0x0c, 0x00, 0x00
