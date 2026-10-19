; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455960, declared_size=8, range_size=8, mode=arm
; class-group: Script_SkipAllCharMenuTutorialMessages
; alias: _ZNK38Script_SkipAllCharMenuTutorialMessages10IsBlockingEv
; demangled: Script_SkipAllCharMenuTutorialMessages::IsBlocking() const
; decoder-mode: arm
00455960  00 00 a0 e3                                      mov r0, #0
00455964  1e ff 2f e1                                      bx lr

; FUNCTION 0x00460428, declared_size=76, range_size=76, mode=arm
; class-group: Script_SkipAllCharMenuTutorialMessages
; alias: _ZN38Script_SkipAllCharMenuTutorialMessages7ExecuteEbi
; demangled: Script_SkipAllCharMenuTutorialMessages::Execute(bool, int)
; decoder-mode: arm
00460428  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0046042c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00460430  70 40 2d e9                                      push {r4, r5, r6, lr}
00460434  03 30 8f e0                                      add r3, pc, r3
00460438  02 40 93 e7                                      ldr r4, [r3, r2]
0046043c  14 20 94 e5                                      ldr r2, [r4, #0x14]
00460440  04 30 94 e5                                      ldr r3, [r4, #4]
00460444  03 00 52 e1                                      cmp r2, r3
00460448  06 00 00 0a                                      beq #0x460468
0046044c  04 50 84 e2                                      add r5, r4, #4
00460450  05 00 a0 e1                                      mov r0, r5
00460454  3f 86 ff eb                                      bl #0x441d58
00460458  14 20 94 e5                                      ldr r2, [r4, #0x14]
0046045c  04 30 94 e5                                      ldr r3, [r4, #4]
00460460  03 00 52 e1                                      cmp r2, r3
00460464  f9 ff ff 1a                                      bne #0x460450
00460468  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0046046c  5c 46 53 00 00 49 00 00                          .byte 0x5c, 0x46, 0x53, 0x00, 0x00, 0x49, 0x00, 0x00
