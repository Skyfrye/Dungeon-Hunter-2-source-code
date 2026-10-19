; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004558e4, declared_size=8, range_size=8, mode=arm
; class-group: Script_SetLevelState
; alias: _ZNK20Script_SetLevelState10IsBlockingEv
; demangled: Script_SetLevelState::IsBlocking() const
; decoder-mode: arm
004558e4  00 00 a0 e3                                      mov r0, #0
004558e8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045cf40, declared_size=200, range_size=200, mode=arm
; class-group: Script_SetLevelState
; alias: _ZN20Script_SetLevelState7ExecuteEbi
; demangled: Script_SetLevelState::Execute(bool, int)
; decoder-mode: arm
0045cf40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0045cf44  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
0045cf48  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
0045cf4c  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0045cf50  04 40 8f e0                                      add r4, pc, r4
0045cf54  05 30 94 e7                                      ldr r3, [r4, r5]
0045cf58  02 70 94 e7                                      ldr r7, [r4, r2]
0045cf5c  20 d0 4d e2                                      sub sp, sp, #0x20
0045cf60  00 30 93 e5                                      ldr r3, [r3]
0045cf64  04 60 8d e2                                      add r6, sp, #4
0045cf68  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045cf6c  0c 80 90 e5                                      ldr r8, [r0, #0xc]
0045cf70  07 00 a0 e1                                      mov r0, r7
0045cf74  43 6a fb eb                                      bl #0x337888
0045cf78  80 10 9f e5                                      ldr r1, [pc, #0x80]
0045cf7c  0d 20 a0 e1                                      mov r2, sp
0045cf80  06 00 a0 e1                                      mov r0, r6
0045cf84  01 10 8f e0                                      add r1, pc, r1
0045cf88  57 dc fa eb                                      bl #0x3140ec
0045cf8c  06 10 a0 e1                                      mov r1, r6
0045cf90  07 00 a0 e1                                      mov r0, r7
0045cf94  bb 6a fb eb                                      bl #0x337a88
0045cf98  06 00 a0 e1                                      mov r0, r6
0045cf9c  ac ec fa eb                                      bl #0x318254
0045cfa0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0045cfa4  00 10 a0 e3                                      mov r1, #0
0045cfa8  01 20 a0 e3                                      mov r2, #1
0045cfac  03 30 94 e7                                      ldr r3, [r4, r3]
0045cfb0  40 00 93 e5                                      ldr r0, [r3, #0x40]
0045cfb4  2f 45 fc eb                                      bl #0x36e478
0045cfb8  60 06 90 e5                                      ldr r0, [r0, #0x660]
0045cfbc  00 00 50 e3                                      cmp r0, #0
0045cfc0  03 00 00 0a                                      beq #0x45cfd4
0045cfc4  0c 20 98 e5                                      ldr r2, [r8, #0xc]
0045cfc8  08 10 98 e5                                      ldr r1, [r8, #8]
0045cfcc  00 30 e0 e3                                      mvn r3, #0
0045cfd0  33 7b fd eb                                      bl #0x3bbca4
0045cfd4  05 30 94 e7                                      ldr r3, [r4, r5]
0045cfd8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045cfdc  00 30 93 e5                                      ldr r3, [r3]
0045cfe0  03 00 52 e1                                      cmp r2, r3
0045cfe4  01 00 00 1a                                      bne #0x45cff0
0045cfe8  20 d0 8d e2                                      add sp, sp, #0x20
0045cfec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0045cff0  c6 c4 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045cff4  40 7b 53 00 ac 40 00 00 84 08 00 00 fc 00 47 00  .byte 0x40, 0x7b, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xfc, 0x00, 0x47, 0x00
0045d004  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00
