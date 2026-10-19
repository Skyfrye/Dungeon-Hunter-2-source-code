; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045a6f8, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<ScriptManager::ScriptContext>
; alias: _ZNSaIN13ScriptManager13ScriptContextEE11_M_allocateEjRj
; demangled: std::allocator<ScriptManager::ScriptContext>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0045a6f8  10 40 2d e9                                      push {r4, lr}
0045a6fc  55 35 05 e3                                      movw r3, #0x5555
0045a700  03 37 83 e1                                      orr r3, r3, r3, lsl #14
0045a704  03 00 51 e1                                      cmp r1, r3
0045a708  08 d0 4d e2                                      sub sp, sp, #8
0045a70c  02 40 a0 e1                                      mov r4, r2
0045a710  14 00 00 8a                                      bhi #0x45a768
0045a714  00 00 51 e3                                      cmp r1, #0
0045a718  01 00 a0 01                                      moveq r0, r1
0045a71c  01 00 00 1a                                      bne #0x45a728
0045a720  08 d0 8d e2                                      add sp, sp, #8
0045a724  10 80 bd e8                                      pop {r4, pc}
0045a728  0c 00 a0 e3                                      mov r0, #0xc
0045a72c  90 01 00 e0                                      mul r0, r0, r1
0045a730  80 00 50 e3                                      cmp r0, #0x80
0045a734  04 00 8d e5                                      str r0, [sp, #4]
0045a738  08 00 00 8a                                      bhi #0x45a760
0045a73c  04 00 8d e2                                      add r0, sp, #4
0045a740  de b9 0a eb                                      bl #0x708ec0
0045a744  04 20 9d e5                                      ldr r2, [sp, #4]
0045a748  ab 3a 0a e3                                      movw r3, #0xaaab
0045a74c  aa 3a 4a e3                                      movt r3, #0xaaaa
0045a750  93 12 83 e0                                      umull r1, r3, r3, r2
0045a754  a3 31 a0 e1                                      lsr r3, r3, #3
0045a758  00 30 84 e5                                      str r3, [r4]
0045a75c  ef ff ff ea                                      b #0x45a720
0045a760  3b d7 fa eb                                      bl #0x310454
0045a764  f6 ff ff ea                                      b #0x45a744
0045a768  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0045a76c  00 00 8f e0                                      add r0, pc, r0
0045a770  53 ce fa eb                                      bl #0x30e0c4
0045a774  01 00 a0 e3                                      mov r0, #1
0045a778  b2 cd fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0045a77c  04 3d 46 00                                      .byte 0x04, 0x3d, 0x46, 0x00
