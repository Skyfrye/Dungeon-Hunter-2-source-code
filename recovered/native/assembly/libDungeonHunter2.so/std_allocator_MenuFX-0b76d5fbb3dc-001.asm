; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042e038, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<MenuFX**>
; alias: _ZNSaIPP6MenuFXE8allocateEjPKv
; demangled: std::allocator<MenuFX**>::allocate(unsigned int, void const*)
; decoder-mode: arm
0042e038  04 e0 2d e5                                      str lr, [sp, #-4]!
0042e03c  07 01 71 e3                                      cmn r1, #0xc0000001
0042e040  0c d0 4d e2                                      sub sp, sp, #0xc
0042e044  0d 00 00 8a                                      bhi #0x42e080
0042e048  00 00 51 e3                                      cmp r1, #0
0042e04c  01 00 a0 01                                      moveq r0, r1
0042e050  01 00 00 1a                                      bne #0x42e05c
0042e054  0c d0 8d e2                                      add sp, sp, #0xc
0042e058  00 80 bd e8                                      ldm sp!, {pc}
0042e05c  01 01 a0 e1                                      lsl r0, r1, #2
0042e060  80 00 50 e3                                      cmp r0, #0x80
0042e064  04 00 8d e5                                      str r0, [sp, #4]
0042e068  02 00 00 8a                                      bhi #0x42e078
0042e06c  04 00 8d e2                                      add r0, sp, #4
0042e070  92 6b 0b eb                                      bl #0x708ec0
0042e074  f6 ff ff ea                                      b #0x42e054
0042e078  f5 88 fb eb                                      bl #0x310454
0042e07c  f4 ff ff ea                                      b #0x42e054
0042e080  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0042e084  00 00 8f e0                                      add r0, pc, r0
0042e088  0d 80 fb eb                                      bl #0x30e0c4
0042e08c  01 00 a0 e3                                      mov r0, #1
0042e090  6c 7f fb eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0042e094  ec 03 49 00                                      .byte 0xec, 0x03, 0x49, 0x00
