; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455630, declared_size=8, range_size=8, mode=arm
; class-group: Script_EmptyImpl
; alias: _ZNK16Script_EmptyImpl10IsBlockingEv
; demangled: Script_EmptyImpl::IsBlocking() const
; decoder-mode: arm
00455630  00 00 a0 e3                                      mov r0, #0
00455634  1e ff 2f e1                                      bx lr

; FUNCTION 0x0045c560, declared_size=136, range_size=136, mode=arm
; class-group: Script_EmptyImpl
; alias: _ZN16Script_EmptyImpl7ExecuteEbi
; demangled: Script_EmptyImpl::Execute(bool, int)
; decoder-mode: arm
0045c560  70 30 9f e5                                      ldr r3, [pc, #0x70]
0045c564  70 20 9f e5                                      ldr r2, [pc, #0x70]
0045c568  70 40 2d e9                                      push {r4, r5, r6, lr}
0045c56c  03 30 8f e0                                      add r3, pc, r3
0045c570  02 50 93 e7                                      ldr r5, [r3, r2]
0045c574  64 20 9f e5                                      ldr r2, [pc, #0x64]
0045c578  20 d0 4d e2                                      sub sp, sp, #0x20
0045c57c  04 40 8d e2                                      add r4, sp, #4
0045c580  02 60 93 e7                                      ldr r6, [r3, r2]
0045c584  00 30 95 e5                                      ldr r3, [r5]
0045c588  06 00 a0 e1                                      mov r0, r6
0045c58c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0045c590  bc 6c fb eb                                      bl #0x337888
0045c594  48 10 9f e5                                      ldr r1, [pc, #0x48]
0045c598  0d 20 a0 e1                                      mov r2, sp
0045c59c  04 00 a0 e1                                      mov r0, r4
0045c5a0  01 10 8f e0                                      add r1, pc, r1
0045c5a4  d0 de fa eb                                      bl #0x3140ec
0045c5a8  04 10 a0 e1                                      mov r1, r4
0045c5ac  06 00 a0 e1                                      mov r0, r6
0045c5b0  34 6d fb eb                                      bl #0x337a88
0045c5b4  04 00 a0 e1                                      mov r0, r4
0045c5b8  25 ef fa eb                                      bl #0x318254
0045c5bc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0045c5c0  00 30 95 e5                                      ldr r3, [r5]
0045c5c4  03 00 52 e1                                      cmp r2, r3
0045c5c8  01 00 00 1a                                      bne #0x45c5d4
0045c5cc  20 d0 8d e2                                      add sp, sp, #0x20
0045c5d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0045c5d4  4d c7 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0045c5d8  24 85 53 00 ac 40 00 00 84 08 00 00 e0 0a 47 00  .byte 0x24, 0x85, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xe0, 0x0a, 0x47, 0x00
