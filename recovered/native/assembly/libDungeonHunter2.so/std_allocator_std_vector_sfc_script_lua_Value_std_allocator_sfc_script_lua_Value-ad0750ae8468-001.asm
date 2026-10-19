; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031bd80, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >**>
; alias: _ZNSaIPPSt6vectorIN3sfc6script3lua5ValueESaIS3_EEE8allocateEjPKv
; demangled: std::allocator<std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::Value> >**>::allocate(unsigned int, void const*)
; decoder-mode: arm
0031bd80  04 e0 2d e5                                      str lr, [sp, #-4]!
0031bd84  07 01 71 e3                                      cmn r1, #0xc0000001
0031bd88  0c d0 4d e2                                      sub sp, sp, #0xc
0031bd8c  0d 00 00 8a                                      bhi #0x31bdc8
0031bd90  00 00 51 e3                                      cmp r1, #0
0031bd94  01 00 a0 01                                      moveq r0, r1
0031bd98  01 00 00 1a                                      bne #0x31bda4
0031bd9c  0c d0 8d e2                                      add sp, sp, #0xc
0031bda0  00 80 bd e8                                      ldm sp!, {pc}
0031bda4  01 01 a0 e1                                      lsl r0, r1, #2
0031bda8  80 00 50 e3                                      cmp r0, #0x80
0031bdac  04 00 8d e5                                      str r0, [sp, #4]
0031bdb0  02 00 00 8a                                      bhi #0x31bdc0
0031bdb4  04 00 8d e2                                      add r0, sp, #4
0031bdb8  40 b4 0f eb                                      bl #0x708ec0
0031bdbc  f6 ff ff ea                                      b #0x31bd9c
0031bdc0  a3 d1 ff eb                                      bl #0x310454
0031bdc4  f4 ff ff ea                                      b #0x31bd9c
0031bdc8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0031bdcc  00 00 8f e0                                      add r0, pc, r0
0031bdd0  bb c8 ff eb                                      bl #0x30e0c4
0031bdd4  01 00 a0 e3                                      mov r0, #1
0031bdd8  1a c8 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0031bddc  a4 26 5a 00                                      .byte 0xa4, 0x26, 0x5a, 0x00
