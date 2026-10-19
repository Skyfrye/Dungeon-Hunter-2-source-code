; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045632c, declared_size=104, range_size=104, mode=arm
; class-group: ScriptManager::ScriptCmds
; alias: _ZN13ScriptManager10ScriptCmds4FreeEv
; demangled: ScriptManager::ScriptCmds::Free()
; decoder-mode: arm
0045632c  70 40 2d e9                                      push {r4, r5, r6, lr}
00456330  00 60 a0 e1                                      mov r6, r0
00456334  08 00 90 e5                                      ldr r0, [r0, #8]
00456338  00 00 50 e3                                      cmp r0, #0
0045633c  10 00 00 0a                                      beq #0x456384
00456340  00 30 96 e5                                      ldr r3, [r6]
00456344  00 00 53 e3                                      cmp r3, #0
00456348  0c 00 00 da                                      ble #0x456380
0045634c  00 40 a0 e3                                      mov r4, #0
00456350  04 51 90 e7                                      ldr r5, [r0, r4, lsl #2]
00456354  01 40 84 e2                                      add r4, r4, #1
00456358  00 00 55 e3                                      cmp r5, #0
0045635c  05 00 00 0a                                      beq #0x456378
00456360  05 00 a0 e1                                      mov r0, r5
00456364  bf fd ff eb                                      bl #0x455a68
00456368  05 00 a0 e1                                      mov r0, r5
0045636c  33 e8 fa eb                                      bl #0x310440
00456370  00 30 96 e5                                      ldr r3, [r6]
00456374  08 00 96 e5                                      ldr r0, [r6, #8]
00456378  04 00 53 e1                                      cmp r3, r4
0045637c  f3 ff ff ca                                      bgt #0x456350
00456380  2e e8 fa eb                                      bl #0x310440
00456384  00 30 a0 e3                                      mov r3, #0
00456388  00 30 86 e5                                      str r3, [r6]
0045638c  08 30 86 e5                                      str r3, [r6, #8]
00456390  70 80 bd e8                                      pop {r4, r5, r6, pc}
