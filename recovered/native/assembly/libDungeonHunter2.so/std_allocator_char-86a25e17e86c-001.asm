; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00381784, declared_size=108, range_size=108, mode=arm
; class-group: std::allocator<char*>
; alias: _ZNSaIPcE11_M_allocateEjRj
; demangled: std::allocator<char*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
00381784  10 40 2d e9                                      push {r4, lr}
00381788  07 01 71 e3                                      cmn r1, #0xc0000001
0038178c  08 d0 4d e2                                      sub sp, sp, #8
00381790  02 40 a0 e1                                      mov r4, r2
00381794  0f 00 00 8a                                      bhi #0x3817d8
00381798  00 00 51 e3                                      cmp r1, #0
0038179c  01 00 a0 01                                      moveq r0, r1
003817a0  08 00 00 0a                                      beq #0x3817c8
003817a4  01 01 a0 e1                                      lsl r0, r1, #2
003817a8  80 00 50 e3                                      cmp r0, #0x80
003817ac  04 00 8d e5                                      str r0, [sp, #4]
003817b0  06 00 00 8a                                      bhi #0x3817d0
003817b4  04 00 8d e2                                      add r0, sp, #4
003817b8  c0 1d 0e eb                                      bl #0x708ec0
003817bc  04 30 9d e5                                      ldr r3, [sp, #4]
003817c0  23 31 a0 e1                                      lsr r3, r3, #2
003817c4  00 30 84 e5                                      str r3, [r4]
003817c8  08 d0 8d e2                                      add sp, sp, #8
003817cc  10 80 bd e8                                      pop {r4, pc}
003817d0  1f 3b fe eb                                      bl #0x310454
003817d4  f8 ff ff ea                                      b #0x3817bc
003817d8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003817dc  00 00 8f e0                                      add r0, pc, r0
003817e0  37 32 fe eb                                      bl #0x30e0c4
003817e4  01 00 a0 e3                                      mov r0, #1
003817e8  96 31 fe eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003817ec  94 cc 53 00                                      .byte 0x94, 0xcc, 0x53, 0x00

; FUNCTION 0x003817f0, declared_size=28, range_size=28, mode=arm
; class-group: std::allocator<char*>
; alias: _ZNSaIPcE10deallocateEPS_j
; demangled: std::allocator<char*>::deallocate(char**, unsigned int)
; decoder-mode: arm
003817f0  00 00 51 e2                                      subs r0, r1, #0
003817f4  1e ff 2f 01                                      bxeq lr
003817f8  02 11 a0 e1                                      lsl r1, r2, #2
003817fc  80 00 51 e3                                      cmp r1, #0x80
00381800  00 00 00 8a                                      bhi #0x381808
00381804  bd 1d 0e ea                                      b #0x708f00
00381808  0c 3b fe ea                                      b #0x310440
