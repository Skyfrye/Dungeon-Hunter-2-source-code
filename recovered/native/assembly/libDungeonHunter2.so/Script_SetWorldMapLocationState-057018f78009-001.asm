; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004558ec, declared_size=8, range_size=8, mode=arm
; class-group: Script_SetWorldMapLocationState
; alias: _ZNK31Script_SetWorldMapLocationState10IsBlockingEv
; demangled: Script_SetWorldMapLocationState::IsBlocking() const
; decoder-mode: arm
004558ec  00 00 a0 e3                                      mov r0, #0
004558f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045ce78, declared_size=200, range_size=200, mode=arm
; class-group: Script_SetWorldMapLocationState
; alias: _ZN31Script_SetWorldMapLocationState7ExecuteEbi
; demangled: Script_SetWorldMapLocationState::Execute(bool, int)
; decoder-mode: arm
0045ce78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045ce7c  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
0045ce80  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
0045ce84  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0045ce88  04 40 8f e0                                      add r4, pc, r4
0045ce8c  05 30 94 e7                                      ldr r3, [r4, r5]
0045ce90  02 70 94 e7                                      ldr r7, [r4, r2]
0045ce94  20 d0 4d e2                                      sub sp, sp, #0x20
0045ce98  00 30 93 e5                                      ldr r3, [r3]
0045ce9c  04 60 8d e2                                      add r6, sp, #4
0045cea0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045cea4  0c 80 90 e5                                      ldr r8, [r0, #0xc]
0045cea8  07 00 a0 e1                                      mov r0, r7
0045ceac  75 6a fb eb                                      bl #0x337888
0045ceb0  80 10 9f e5                                      ldr r1, [pc, #0x80]
0045ceb4  0d 20 a0 e1                                      mov r2, sp
0045ceb8  06 00 a0 e1                                      mov r0, r6
0045cebc  01 10 8f e0                                      add r1, pc, r1
0045cec0  89 dc fa eb                                      bl #0x3140ec
0045cec4  06 10 a0 e1                                      mov r1, r6
0045cec8  07 00 a0 e1                                      mov r0, r7
0045cecc  ed 6a fb eb                                      bl #0x337a88
0045ced0  06 00 a0 e1                                      mov r0, r6
0045ced4  de ec fa eb                                      bl #0x318254
0045ced8  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0045cedc  00 10 a0 e3                                      mov r1, #0
0045cee0  01 20 a0 e3                                      mov r2, #1
0045cee4  03 30 94 e7                                      ldr r3, [r4, r3]
0045cee8  40 00 93 e5                                      ldr r0, [r3, #0x40]
0045ceec  61 45 fc eb                                      bl #0x36e478
0045cef0  60 06 90 e5                                      ldr r0, [r0, #0x660]
0045cef4  00 00 50 e3                                      cmp r0, #0
0045cef8  03 00 00 0a                                      beq #0x45cf0c
0045cefc  0c 20 98 e5                                      ldr r2, [r8, #0xc]
0045cf00  08 10 98 e5                                      ldr r1, [r8, #8]
0045cf04  00 30 e0 e3                                      mvn r3, #0
0045cf08  a4 7b fd eb                                      bl #0x3bbda0
0045cf0c  05 30 94 e7                                      ldr r3, [r4, r5]
0045cf10  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045cf14  00 30 93 e5                                      ldr r3, [r3]
0045cf18  03 00 52 e1                                      cmp r2, r3
0045cf1c  01 00 00 1a                                      bne #0x45cf28
0045cf20  20 d0 8d e2                                      add sp, sp, #0x20
0045cf24  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045cf28  f8 c4 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045cf2c  08 7c 53 00 ac 40 00 00 84 08 00 00 c4 01 47 00  .byte 0x08, 0x7c, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0x01, 0x47, 0x00
0045cf3c  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
