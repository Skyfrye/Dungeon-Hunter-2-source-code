; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0040266c, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<Structs::LootEntry const*>
; alias: _ZNSaIPKN7Structs9LootEntryEE11_M_allocateEjRj
; demangled: std::allocator<Structs::LootEntry const*>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0040266c  10 40 2d e9                                      push {r4, lr}
00402670  07 01 71 e3                                      cmn r1, #0xc0000001
00402674  08 d0 4d e2                                      sub sp, sp, #8
00402678  02 40 a0 e1                                      mov r4, r2
0040267c  10 00 00 8a                                      bhi #0x4026c4
00402680  00 00 51 e3                                      cmp r1, #0
00402684  01 00 a0 01                                      moveq r0, r1
00402688  01 00 00 1a                                      bne #0x402694
0040268c  08 d0 8d e2                                      add sp, sp, #8
00402690  10 80 bd e8                                      pop {r4, pc}
00402694  01 01 a0 e1                                      lsl r0, r1, #2
00402698  80 00 50 e3                                      cmp r0, #0x80
0040269c  04 00 8d e5                                      str r0, [sp, #4]
004026a0  05 00 00 8a                                      bhi #0x4026bc
004026a4  04 00 8d e2                                      add r0, sp, #4
004026a8  04 1a 0c eb                                      bl #0x708ec0
004026ac  04 30 9d e5                                      ldr r3, [sp, #4]
004026b0  23 31 a0 e1                                      lsr r3, r3, #2
004026b4  00 30 84 e5                                      str r3, [r4]
004026b8  f3 ff ff ea                                      b #0x40268c
004026bc  64 37 fc eb                                      bl #0x310454
004026c0  f9 ff ff ea                                      b #0x4026ac
004026c4  0c 00 9f e5                                      ldr r0, [pc, #0xc]
004026c8  00 00 8f e0                                      add r0, pc, r0
004026cc  7c 2e fc eb                                      bl #0x30e0c4
004026d0  01 00 a0 e3                                      mov r0, #1
004026d4  db 2d fc eb                                      bl #0x30de48
; mapping-symbol data/literal pool
004026d8  a8 bd 4b 00                                      .byte 0xa8, 0xbd, 0x4b, 0x00
