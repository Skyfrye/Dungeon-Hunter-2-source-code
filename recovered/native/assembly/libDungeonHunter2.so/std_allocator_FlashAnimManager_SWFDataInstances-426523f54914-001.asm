; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004141d8, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<FlashAnimManager::SWFDataInstances>
; alias: _ZNSaIN16FlashAnimManager16SWFDataInstancesEE11_M_allocateEjRj
; demangled: std::allocator<FlashAnimManager::SWFDataInstances>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
004141d8  10 40 2d e9                                      push {r4, lr}
004141dc  aa 3a 0a e3                                      movw r3, #0xaaaa
004141e0  03 35 83 e1                                      orr r3, r3, r3, lsl #10
004141e4  03 00 51 e1                                      cmp r1, r3
004141e8  08 d0 4d e2                                      sub sp, sp, #8
004141ec  02 40 a0 e1                                      mov r4, r2
004141f0  14 00 00 8a                                      bhi #0x414248
004141f4  00 00 51 e3                                      cmp r1, #0
004141f8  01 00 a0 01                                      moveq r0, r1
004141fc  01 00 00 1a                                      bne #0x414208
00414200  08 d0 8d e2                                      add sp, sp, #8
00414204  10 80 bd e8                                      pop {r4, pc}
00414208  60 00 a0 e3                                      mov r0, #0x60
0041420c  90 01 00 e0                                      mul r0, r0, r1
00414210  80 00 50 e3                                      cmp r0, #0x80
00414214  04 00 8d e5                                      str r0, [sp, #4]
00414218  08 00 00 8a                                      bhi #0x414240
0041421c  04 00 8d e2                                      add r0, sp, #4
00414220  26 d3 0b eb                                      bl #0x708ec0
00414224  04 20 9d e5                                      ldr r2, [sp, #4]
00414228  ab 3a 0a e3                                      movw r3, #0xaaab
0041422c  aa 3a 4a e3                                      movt r3, #0xaaaa
00414230  93 12 83 e0                                      umull r1, r3, r3, r2
00414234  23 33 a0 e1                                      lsr r3, r3, #6
00414238  00 30 84 e5                                      str r3, [r4]
0041423c  ef ff ff ea                                      b #0x414200
00414240  83 f0 fb eb                                      bl #0x310454
00414244  f6 ff ff ea                                      b #0x414224
00414248  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0041424c  00 00 8f e0                                      add r0, pc, r0
00414250  9b e7 fb eb                                      bl #0x30e0c4
00414254  01 00 a0 e3                                      mov r0, #1
00414258  fa e6 fb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0041425c  24 a2 4a 00                                      .byte 0x24, 0xa2, 0x4a, 0x00
