; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076d680, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::weak_ptr<gameswf::root>
; alias: _ZN7gameswf8weak_ptrINS_4rootEEaSEPS1_
; demangled: gameswf::weak_ptr<gameswf::root>::operator=(gameswf::root*)
; decoder-mode: arm
0076d680  70 40 2d e9                                      push {r4, r5, r6, lr}
0076d684  00 00 51 e3                                      cmp r1, #0
0076d688  00 50 a0 e1                                      mov r5, r0
0076d68c  04 10 85 e5                                      str r1, [r5, #4]
0076d690  13 00 00 0a                                      beq #0x76d6e4
0076d694  01 00 a0 e1                                      mov r0, r1
0076d698  7b b4 ff eb                                      bl #0x75a88c
0076d69c  00 40 a0 e1                                      mov r4, r0
0076d6a0  00 00 95 e5                                      ldr r0, [r5]
0076d6a4  00 00 54 e1                                      cmp r4, r0
0076d6a8  18 00 00 0a                                      beq #0x76d710
0076d6ac  00 00 50 e3                                      cmp r0, #0
0076d6b0  04 00 00 0a                                      beq #0x76d6c8
0076d6b4  00 10 90 e5                                      ldr r1, [r0]
0076d6b8  01 10 41 e2                                      sub r1, r1, #1
0076d6bc  00 00 51 e3                                      cmp r1, #0
0076d6c0  00 10 80 e5                                      str r1, [r0]
0076d6c4  12 00 00 0a                                      beq #0x76d714
0076d6c8  00 00 54 e3                                      cmp r4, #0
0076d6cc  00 40 85 e5                                      str r4, [r5]
0076d6d0  0e 00 00 0a                                      beq #0x76d710
0076d6d4  00 30 94 e5                                      ldr r3, [r4]
0076d6d8  01 30 83 e2                                      add r3, r3, #1
0076d6dc  00 30 84 e5                                      str r3, [r4]
0076d6e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0076d6e4  00 00 90 e5                                      ldr r0, [r0]
0076d6e8  00 00 50 e3                                      cmp r0, #0
0076d6ec  07 00 00 0a                                      beq #0x76d710
0076d6f0  00 30 90 e5                                      ldr r3, [r0]
0076d6f4  01 30 43 e2                                      sub r3, r3, #1
0076d6f8  00 00 53 e3                                      cmp r3, #0
0076d6fc  00 30 80 e5                                      str r3, [r0]
0076d700  00 00 00 1a                                      bne #0x76d708
0076d704  0b 95 ff eb                                      bl #0x752b38
0076d708  00 30 a0 e3                                      mov r3, #0
0076d70c  00 30 85 e5                                      str r3, [r5]
0076d710  70 80 bd e8                                      pop {r4, r5, r6, pc}
0076d714  07 95 ff eb                                      bl #0x752b38
0076d718  ea ff ff ea                                      b #0x76d6c8
