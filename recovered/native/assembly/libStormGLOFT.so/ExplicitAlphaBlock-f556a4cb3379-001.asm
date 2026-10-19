; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0003e830, declared_size=292, range_size=292, mode=arm
; class-group: ExplicitAlphaBlock
; alias: _ZNK18ExplicitAlphaBlock3GetEPm
; demangled: ExplicitAlphaBlock::Get(unsigned long*) const
; decoder-mode: arm
0003e830  00 20 d0 e5                                      ldrb r2, [r0]
0003e834  0f 30 02 e2                                      and r3, r2, #0xf
0003e838  02 22 83 e1                                      orr r2, r3, r2, lsl #4
0003e83c  72 20 ef e6                                      uxtb r2, r2
0003e840  00 20 81 e5                                      str r2, [r1]
0003e844  00 20 d0 e5                                      ldrb r2, [r0]
0003e848  f0 20 02 e2                                      and r2, r2, #0xf0
0003e84c  02 22 82 e1                                      orr r2, r2, r2, lsl #4
0003e850  04 20 81 e5                                      str r2, [r1, #4]
0003e854  01 20 d0 e5                                      ldrb r2, [r0, #1]
0003e858  0f 30 02 e2                                      and r3, r2, #0xf
0003e85c  02 22 83 e1                                      orr r2, r3, r2, lsl #4
0003e860  72 20 ef e6                                      uxtb r2, r2
0003e864  08 20 81 e5                                      str r2, [r1, #8]
0003e868  01 20 d0 e5                                      ldrb r2, [r0, #1]
0003e86c  f0 20 02 e2                                      and r2, r2, #0xf0
0003e870  02 22 82 e1                                      orr r2, r2, r2, lsl #4
0003e874  0c 20 81 e5                                      str r2, [r1, #0xc]
0003e878  02 20 d0 e5                                      ldrb r2, [r0, #2]
0003e87c  0f 30 02 e2                                      and r3, r2, #0xf
0003e880  02 22 83 e1                                      orr r2, r3, r2, lsl #4
0003e884  72 20 ef e6                                      uxtb r2, r2
0003e888  10 20 81 e5                                      str r2, [r1, #0x10]
0003e88c  02 20 d0 e5                                      ldrb r2, [r0, #2]
0003e890  f0 20 02 e2                                      and r2, r2, #0xf0
0003e894  02 22 82 e1                                      orr r2, r2, r2, lsl #4
0003e898  14 20 81 e5                                      str r2, [r1, #0x14]
0003e89c  03 20 d0 e5                                      ldrb r2, [r0, #3]
0003e8a0  0f 30 02 e2                                      and r3, r2, #0xf
0003e8a4  02 22 83 e1                                      orr r2, r3, r2, lsl #4
0003e8a8  72 20 ef e6                                      uxtb r2, r2
0003e8ac  18 20 81 e5                                      str r2, [r1, #0x18]
0003e8b0  03 20 d0 e5                                      ldrb r2, [r0, #3]
0003e8b4  f0 20 02 e2                                      and r2, r2, #0xf0
0003e8b8  02 22 82 e1                                      orr r2, r2, r2, lsl #4
0003e8bc  1c 20 81 e5                                      str r2, [r1, #0x1c]
0003e8c0  04 20 d0 e5                                      ldrb r2, [r0, #4]
0003e8c4  0f 30 02 e2                                      and r3, r2, #0xf
0003e8c8  02 22 83 e1                                      orr r2, r3, r2, lsl #4
0003e8cc  72 20 ef e6                                      uxtb r2, r2
0003e8d0  20 20 81 e5                                      str r2, [r1, #0x20]
0003e8d4  04 20 d0 e5                                      ldrb r2, [r0, #4]
0003e8d8  f0 20 02 e2                                      and r2, r2, #0xf0
0003e8dc  02 22 82 e1                                      orr r2, r2, r2, lsl #4
0003e8e0  24 20 81 e5                                      str r2, [r1, #0x24]
0003e8e4  05 20 d0 e5                                      ldrb r2, [r0, #5]
0003e8e8  0f 30 02 e2                                      and r3, r2, #0xf
0003e8ec  02 22 83 e1                                      orr r2, r3, r2, lsl #4
0003e8f0  72 20 ef e6                                      uxtb r2, r2
0003e8f4  28 20 81 e5                                      str r2, [r1, #0x28]
0003e8f8  05 20 d0 e5                                      ldrb r2, [r0, #5]
0003e8fc  f0 20 02 e2                                      and r2, r2, #0xf0
0003e900  02 22 82 e1                                      orr r2, r2, r2, lsl #4
0003e904  2c 20 81 e5                                      str r2, [r1, #0x2c]
0003e908  06 20 d0 e5                                      ldrb r2, [r0, #6]
0003e90c  0f 30 02 e2                                      and r3, r2, #0xf
0003e910  02 22 83 e1                                      orr r2, r3, r2, lsl #4
0003e914  72 20 ef e6                                      uxtb r2, r2
0003e918  30 20 81 e5                                      str r2, [r1, #0x30]
0003e91c  06 20 d0 e5                                      ldrb r2, [r0, #6]
0003e920  f0 20 02 e2                                      and r2, r2, #0xf0
0003e924  02 22 82 e1                                      orr r2, r2, r2, lsl #4
0003e928  34 20 81 e5                                      str r2, [r1, #0x34]
0003e92c  07 20 d0 e5                                      ldrb r2, [r0, #7]
0003e930  0f 30 02 e2                                      and r3, r2, #0xf
0003e934  02 22 83 e1                                      orr r2, r3, r2, lsl #4
0003e938  72 20 ef e6                                      uxtb r2, r2
0003e93c  38 20 81 e5                                      str r2, [r1, #0x38]
0003e940  07 00 d0 e5                                      ldrb r0, [r0, #7]
0003e944  f0 00 00 e2                                      and r0, r0, #0xf0
0003e948  00 02 80 e1                                      orr r0, r0, r0, lsl #4
0003e94c  3c 00 81 e5                                      str r0, [r1, #0x3c]
0003e950  1e ff 2f e1                                      bx lr
