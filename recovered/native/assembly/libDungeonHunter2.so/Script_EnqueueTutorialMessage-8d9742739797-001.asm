; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455938, declared_size=8, range_size=8, mode=arm
; class-group: Script_EnqueueTutorialMessage
; alias: _ZNK29Script_EnqueueTutorialMessage10IsBlockingEv
; demangled: Script_EnqueueTutorialMessage::IsBlocking() const
; decoder-mode: arm
00455938  00 00 a0 e3                                      mov r0, #0
0045593c  1e ff 2f e1                                      bx lr

; FUNCTION 0x004613d4, declared_size=196, range_size=196, mode=arm
; class-group: Script_EnqueueTutorialMessage
; alias: _ZN29Script_EnqueueTutorialMessage7ExecuteEbi
; demangled: Script_EnqueueTutorialMessage::Execute(bool, int)
; decoder-mode: arm
004613d4  30 40 2d e9                                      push {r4, r5, lr}
004613d8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
004613dc  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
004613e0  1c d0 4d e2                                      sub sp, sp, #0x1c
004613e4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
004613e8  04 40 8f e0                                      add r4, pc, r4
004613ec  00 00 52 e3                                      cmp r2, #0
004613f0  1a 00 00 ba                                      blt #0x461460
004613f4  94 50 9f e5                                      ldr r5, [pc, #0x94]
004613f8  08 20 93 e5                                      ldr r2, [r3, #8]
004613fc  05 00 94 e7                                      ldr r0, [r4, r5]
00461400  14 20 8d e5                                      str r2, [sp, #0x14]
00461404  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00461408  1c 10 90 e5                                      ldr r1, [r0, #0x1c]
0046140c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00461410  10 20 8d e5                                      str r2, [sp, #0x10]
00461414  08 10 41 e2                                      sub r1, r1, #8
00461418  01 00 53 e1                                      cmp r3, r1
0046141c  16 00 00 0a                                      beq #0x46147c
00461420  00 20 83 e5                                      str r2, [r3]
00461424  14 20 9d e5                                      ldr r2, [sp, #0x14]
00461428  04 20 83 e5                                      str r2, [r3, #4]
0046142c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00461430  08 30 83 e2                                      add r3, r3, #8
00461434  14 30 80 e5                                      str r3, [r0, #0x14]
00461438  05 e0 94 e7                                      ldr lr, [r4, r5]
0046143c  0d c0 a0 e1                                      mov ip, sp
00461440  04 30 8e e2                                      add r3, lr, #4
00461444  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00461448  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0046144c  14 00 8e e2                                      add r0, lr, #0x14
00461450  0d 10 a0 e1                                      mov r1, sp
00461454  8f d3 ff eb                                      bl #0x456298
00461458  01 00 50 e3                                      cmp r0, #1
0046145c  01 00 00 0a                                      beq #0x461468
00461460  1c d0 8d e2                                      add sp, sp, #0x1c
00461464  30 80 bd e8                                      pop {r4, r5, pc}
00461468  24 30 9f e5                                      ldr r3, [pc, #0x24]
0046146c  03 30 94 e7                                      ldr r3, [r4, r3]
00461470  00 00 93 e5                                      ldr r0, [r3]
00461474  ed e2 ff eb                                      bl #0x45a030
00461478  f8 ff ff ea                                      b #0x461460
0046147c  04 00 80 e2                                      add r0, r0, #4
00461480  10 10 8d e2                                      add r1, sp, #0x10
00461484  70 ff ff eb                                      bl #0x46124c
00461488  ea ff ff ea                                      b #0x461438
; mapping-symbol data/literal pool
0046148c  a8 36 53 00 10 1c 00 00 38 33 00 00              .byte 0xa8, 0x36, 0x53, 0x00, 0x10, 0x1c, 0x00, 0x00, 0x38, 0x33, 0x00, 0x00
