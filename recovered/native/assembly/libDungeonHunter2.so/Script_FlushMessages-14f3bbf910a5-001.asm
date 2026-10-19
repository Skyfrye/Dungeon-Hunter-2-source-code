; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455978, declared_size=8, range_size=8, mode=arm
; class-group: Script_FlushMessages
; alias: _ZNK20Script_FlushMessages10IsBlockingEv
; demangled: Script_FlushMessages::IsBlocking() const
; decoder-mode: arm
00455978  00 00 a0 e3                                      mov r0, #0
0045597c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00460a58, declared_size=196, range_size=196, mode=arm
; class-group: Script_FlushMessages
; alias: _ZN20Script_FlushMessages7ExecuteEbi
; demangled: Script_FlushMessages::Execute(bool, int)
; decoder-mode: arm
00460a58  70 40 2d e9                                      push {r4, r5, r6, lr}
00460a5c  a8 60 9f e5                                      ldr r6, [pc, #0xa8]
00460a60  83 fe ff eb                                      bl #0x460474
00460a64  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00460a68  06 60 8f e0                                      add r6, pc, r6
00460a6c  03 40 96 e7                                      ldr r4, [r6, r3]
00460a70  14 20 94 e5                                      ldr r2, [r4, #0x14]
00460a74  04 30 94 e5                                      ldr r3, [r4, #4]
00460a78  03 00 52 e1                                      cmp r2, r3
00460a7c  06 00 00 0a                                      beq #0x460a9c
00460a80  04 50 84 e2                                      add r5, r4, #4
00460a84  05 00 a0 e1                                      mov r0, r5
00460a88  19 8d fc eb                                      bl #0x383ef4
00460a8c  14 20 94 e5                                      ldr r2, [r4, #0x14]
00460a90  04 30 94 e5                                      ldr r3, [r4, #4]
00460a94  03 00 52 e1                                      cmp r2, r3
00460a98  f9 ff ff 1a                                      bne #0x460a84
00460a9c  74 fe ff eb                                      bl #0x460474
00460aa0  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00460aa4  03 40 96 e7                                      ldr r4, [r6, r3]
00460aa8  14 20 94 e5                                      ldr r2, [r4, #0x14]
00460aac  04 30 94 e5                                      ldr r3, [r4, #4]
00460ab0  03 00 52 e1                                      cmp r2, r3
00460ab4  06 00 00 0a                                      beq #0x460ad4
00460ab8  04 50 84 e2                                      add r5, r4, #4
00460abc  05 00 a0 e1                                      mov r0, r5
00460ac0  92 8c fc eb                                      bl #0x383d10
00460ac4  14 20 94 e5                                      ldr r2, [r4, #0x14]
00460ac8  04 30 94 e5                                      ldr r3, [r4, #4]
00460acc  03 00 52 e1                                      cmp r2, r3
00460ad0  f9 ff ff 1a                                      bne #0x460abc
00460ad4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00460ad8  03 40 96 e7                                      ldr r4, [r6, r3]
00460adc  14 20 94 e5                                      ldr r2, [r4, #0x14]
00460ae0  04 30 94 e5                                      ldr r3, [r4, #4]
00460ae4  03 00 52 e1                                      cmp r2, r3
00460ae8  06 00 00 0a                                      beq #0x460b08
00460aec  04 50 84 e2                                      add r5, r4, #4
00460af0  05 00 a0 e1                                      mov r0, r5
00460af4  ab 8c fc eb                                      bl #0x383da8
00460af8  14 20 94 e5                                      ldr r2, [r4, #0x14]
00460afc  04 30 94 e5                                      ldr r3, [r4, #4]
00460b00  03 00 52 e1                                      cmp r2, r3
00460b04  f9 ff ff 1a                                      bne #0x460af0
00460b08  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00460b0c  28 40 53 00 bc 25 00 00 ec 14 00 00 d8 0f 00 00  .byte 0x28, 0x40, 0x53, 0x00, 0xbc, 0x25, 0x00, 0x00, 0xec, 0x14, 0x00, 0x00, 0xd8, 0x0f, 0x00, 0x00
