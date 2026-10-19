; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004135b4, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<Dropable>
; alias: _ZNSaI8DropableE11_M_allocateEjRj
; demangled: std::allocator<Dropable>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
004135b4  10 40 2d e9                                      push {r4, lr}
004135b8  7e 03 71 e3                                      cmn r1, #0xf8000001
004135bc  08 d0 4d e2                                      sub sp, sp, #8
004135c0  02 40 a0 e1                                      mov r4, r2
004135c4  10 00 00 8a                                      bhi #0x41360c
004135c8  00 00 51 e3                                      cmp r1, #0
004135cc  01 00 a0 01                                      moveq r0, r1
004135d0  01 00 00 1a                                      bne #0x4135dc
004135d4  08 d0 8d e2                                      add sp, sp, #8
004135d8  10 80 bd e8                                      pop {r4, pc}
004135dc  81 02 a0 e1                                      lsl r0, r1, #5
004135e0  80 00 50 e3                                      cmp r0, #0x80
004135e4  04 00 8d e5                                      str r0, [sp, #4]
004135e8  05 00 00 8a                                      bhi #0x413604
004135ec  04 00 8d e2                                      add r0, sp, #4
004135f0  32 d6 0b eb                                      bl #0x708ec0
004135f4  04 30 9d e5                                      ldr r3, [sp, #4]
004135f8  a3 32 a0 e1                                      lsr r3, r3, #5
004135fc  00 30 84 e5                                      str r3, [r4]
00413600  f3 ff ff ea                                      b #0x4135d4
00413604  92 f3 fb eb                                      bl #0x310454
00413608  f9 ff ff ea                                      b #0x4135f4
0041360c  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00413610  00 00 8f e0                                      add r0, pc, r0
00413614  aa ea fb eb                                      bl #0x30e0c4
00413618  01 00 a0 e3                                      mov r0, #1
0041361c  09 ea fb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00413620  60 ae 4a 00                                      .byte 0x60, 0xae, 0x4a, 0x00
