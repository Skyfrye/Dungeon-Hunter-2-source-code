; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042250c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<gameswf::as_value*>
; alias: _ZNSaIPN7gameswf8as_valueEE11_M_allocateEjRj
; demangled: std::allocator<gameswf::as_value*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0042250c  10 40 2d e9                                      push {r4, lr}
00422510  07 01 71 e3                                      cmn r1, #0xc0000001
00422514  08 d0 4d e2                                      sub sp, sp, #8
00422518  02 40 a0 e1                                      mov r4, r2
0042251c  10 00 00 8a                                      bhi #0x422564
00422520  00 00 51 e3                                      cmp r1, #0
00422524  01 00 a0 01                                      moveq r0, r1
00422528  01 00 00 1a                                      bne #0x422534
0042252c  08 d0 8d e2                                      add sp, sp, #8
00422530  10 80 bd e8                                      pop {r4, pc}
00422534  01 01 a0 e1                                      lsl r0, r1, #2
00422538  80 00 50 e3                                      cmp r0, #0x80
0042253c  04 00 8d e5                                      str r0, [sp, #4]
00422540  05 00 00 8a                                      bhi #0x42255c
00422544  04 00 8d e2                                      add r0, sp, #4
00422548  5c 9a 0b eb                                      bl #0x708ec0
0042254c  04 30 9d e5                                      ldr r3, [sp, #4]
00422550  23 31 a0 e1                                      lsr r3, r3, #2
00422554  00 30 84 e5                                      str r3, [r4]
00422558  f3 ff ff ea                                      b #0x42252c
0042255c  bc b7 fb eb                                      bl #0x310454
00422560  f9 ff ff ea                                      b #0x42254c
00422564  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00422568  00 00 8f e0                                      add r0, pc, r0
0042256c  d4 ae fb eb                                      bl #0x30e0c4
00422570  01 00 a0 e3                                      mov r0, #1
00422574  33 ae fb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00422578  08 bf 49 00                                      .byte 0x08, 0xbf, 0x49, 0x00
