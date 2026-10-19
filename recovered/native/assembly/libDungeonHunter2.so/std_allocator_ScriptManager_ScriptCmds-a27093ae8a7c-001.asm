; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045a670, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<ScriptManager::ScriptCmds>
; alias: _ZNSaIN13ScriptManager10ScriptCmdsEE11_M_allocateEjRj
; demangled: std::allocator<ScriptManager::ScriptCmds>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0045a670  10 40 2d e9                                      push {r4, lr}
0045a674  55 35 05 e3                                      movw r3, #0x5555
0045a678  03 37 83 e1                                      orr r3, r3, r3, lsl #14
0045a67c  03 00 51 e1                                      cmp r1, r3
0045a680  08 d0 4d e2                                      sub sp, sp, #8
0045a684  02 40 a0 e1                                      mov r4, r2
0045a688  14 00 00 8a                                      bhi #0x45a6e0
0045a68c  00 00 51 e3                                      cmp r1, #0
0045a690  01 00 a0 01                                      moveq r0, r1
0045a694  01 00 00 1a                                      bne #0x45a6a0
0045a698  08 d0 8d e2                                      add sp, sp, #8
0045a69c  10 80 bd e8                                      pop {r4, pc}
0045a6a0  0c 00 a0 e3                                      mov r0, #0xc
0045a6a4  90 01 00 e0                                      mul r0, r0, r1
0045a6a8  80 00 50 e3                                      cmp r0, #0x80
0045a6ac  04 00 8d e5                                      str r0, [sp, #4]
0045a6b0  08 00 00 8a                                      bhi #0x45a6d8
0045a6b4  04 00 8d e2                                      add r0, sp, #4
0045a6b8  00 ba 0a eb                                      bl #0x708ec0
0045a6bc  04 20 9d e5                                      ldr r2, [sp, #4]
0045a6c0  ab 3a 0a e3                                      movw r3, #0xaaab
0045a6c4  aa 3a 4a e3                                      movt r3, #0xaaaa
0045a6c8  93 12 83 e0                                      umull r1, r3, r3, r2
0045a6cc  a3 31 a0 e1                                      lsr r3, r3, #3
0045a6d0  00 30 84 e5                                      str r3, [r4]
0045a6d4  ef ff ff ea                                      b #0x45a698
0045a6d8  5d d7 fa eb                                      bl #0x310454
0045a6dc  f6 ff ff ea                                      b #0x45a6bc
0045a6e0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0045a6e4  00 00 8f e0                                      add r0, pc, r0
0045a6e8  75 ce fa eb                                      bl #0x30e0c4
0045a6ec  01 00 a0 e3                                      mov r0, #1
0045a6f0  d4 cd fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0045a6f4  8c 3d 46 00                                      .byte 0x8c, 0x3d, 0x46, 0x00
