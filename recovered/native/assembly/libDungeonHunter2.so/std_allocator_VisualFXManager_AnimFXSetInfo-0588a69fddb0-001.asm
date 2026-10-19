; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00493af4, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<VisualFXManager::AnimFXSetInfo>
; alias: _ZNSaIN15VisualFXManager13AnimFXSetInfoEE11_M_allocateEjRj
; demangled: std::allocator<VisualFXManager::AnimFXSetInfo>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00493af4  10 40 2d e9                                      push {r4, lr}
00493af8  aa 3a 0a e3                                      movw r3, #0xaaaa
00493afc  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00493b00  03 00 51 e1                                      cmp r1, r3
00493b04  08 d0 4d e2                                      sub sp, sp, #8
00493b08  02 40 a0 e1                                      mov r4, r2
00493b0c  14 00 00 8a                                      bhi #0x493b64
00493b10  00 00 51 e3                                      cmp r1, #0
00493b14  01 00 a0 01                                      moveq r0, r1
00493b18  01 00 00 1a                                      bne #0x493b24
00493b1c  08 d0 8d e2                                      add sp, sp, #8
00493b20  10 80 bd e8                                      pop {r4, pc}
00493b24  18 00 a0 e3                                      mov r0, #0x18
00493b28  90 01 00 e0                                      mul r0, r0, r1
00493b2c  80 00 50 e3                                      cmp r0, #0x80
00493b30  04 00 8d e5                                      str r0, [sp, #4]
00493b34  08 00 00 8a                                      bhi #0x493b5c
00493b38  04 00 8d e2                                      add r0, sp, #4
00493b3c  df d4 09 eb                                      bl #0x708ec0
00493b40  04 20 9d e5                                      ldr r2, [sp, #4]
00493b44  ab 3a 0a e3                                      movw r3, #0xaaab
00493b48  aa 3a 4a e3                                      movt r3, #0xaaaa
00493b4c  93 12 83 e0                                      umull r1, r3, r3, r2
00493b50  23 32 a0 e1                                      lsr r3, r3, #4
00493b54  00 30 84 e5                                      str r3, [r4]
00493b58  ef ff ff ea                                      b #0x493b1c
00493b5c  3c f2 f9 eb                                      bl #0x310454
00493b60  f6 ff ff ea                                      b #0x493b40
00493b64  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00493b68  00 00 8f e0                                      add r0, pc, r0
00493b6c  54 e9 f9 eb                                      bl #0x30e0c4
00493b70  01 00 a0 e3                                      mov r0, #1
00493b74  b3 e8 f9 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00493b78  08 a9 42 00                                      .byte 0x08, 0xa9, 0x42, 0x00
