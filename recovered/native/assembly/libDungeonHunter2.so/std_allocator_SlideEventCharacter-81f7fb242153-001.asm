; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042249c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<SlideEventCharacter*>
; alias: _ZNSaIP19SlideEventCharacterE11_M_allocateEjRj
; demangled: std::allocator<SlideEventCharacter*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0042249c  10 40 2d e9                                      push {r4, lr}
004224a0  07 01 71 e3                                      cmn r1, #0xc0000001
004224a4  08 d0 4d e2                                      sub sp, sp, #8
004224a8  02 40 a0 e1                                      mov r4, r2
004224ac  10 00 00 8a                                      bhi #0x4224f4
004224b0  00 00 51 e3                                      cmp r1, #0
004224b4  01 00 a0 01                                      moveq r0, r1
004224b8  01 00 00 1a                                      bne #0x4224c4
004224bc  08 d0 8d e2                                      add sp, sp, #8
004224c0  10 80 bd e8                                      pop {r4, pc}
004224c4  01 01 a0 e1                                      lsl r0, r1, #2
004224c8  80 00 50 e3                                      cmp r0, #0x80
004224cc  04 00 8d e5                                      str r0, [sp, #4]
004224d0  05 00 00 8a                                      bhi #0x4224ec
004224d4  04 00 8d e2                                      add r0, sp, #4
004224d8  78 9a 0b eb                                      bl #0x708ec0
004224dc  04 30 9d e5                                      ldr r3, [sp, #4]
004224e0  23 31 a0 e1                                      lsr r3, r3, #2
004224e4  00 30 84 e5                                      str r3, [r4]
004224e8  f3 ff ff ea                                      b #0x4224bc
004224ec  d8 b7 fb eb                                      bl #0x310454
004224f0  f9 ff ff ea                                      b #0x4224dc
004224f4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
004224f8  00 00 8f e0                                      add r0, pc, r0
004224fc  f0 ae fb eb                                      bl #0x30e0c4
00422500  01 00 a0 e3                                      mov r0, #1
00422504  4f ae fb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00422508  78 bf 49 00                                      .byte 0x78, 0xbf, 0x49, 0x00
