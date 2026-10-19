; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0003f6d8, declared_size=2176, range_size=2176, mode=arm
; class-group: rg_etc1
; alias: _ZN7rg_etc117unpack_etc1_blockEPKvPjb
; demangled: rg_etc1::unpack_etc1_block(void const*, unsigned int*, bool)
; decoder-mode: arm
0003f6d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0003f6dc  1c b0 8d e2                                      add fp, sp, #0x1c
0003f6e0  2c d0 4d e2                                      sub sp, sp, #0x2c
0003f6e4  00 80 a0 e1                                      mov r8, r0
0003f6e8  5c 08 9f e5                                      ldr r0, [pc, #0x85c]
0003f6ec  04 20 8d e5                                      str r2, [sp, #4]
0003f6f0  01 a0 a0 e1                                      mov sl, r1
0003f6f4  00 00 9f e7                                      ldr r0, [pc, r0]
0003f6f8  00 00 90 e5                                      ldr r0, [r0]
0003f6fc  20 00 0b e5                                      str r0, [fp, #-0x20]
0003f700  03 70 d8 e5                                      ldrb r7, [r8, #3]
0003f704  00 50 d8 e5                                      ldrb r5, [r8]
0003f708  02 00 17 e3                                      tst r7, #2
0003f70c  57 61 e2 e7                                      ubfx r6, r7, #2, #3
0003f710  a7 22 a0 e1                                      lsr r2, r7, #5
0003f714  14 00 00 1a                                      bne #0x3f76c
0003f718  01 00 d8 e5                                      ldrb r0, [r8, #1]
0003f71c  0f 4c a0 e3                                      mov r4, #0xf00
0003f720  02 10 d8 e5                                      ldrb r1, [r8, #2]
0003f724  05 32 04 e0                                      and r3, r4, r5, lsl #4
0003f728  f0 00 00 e2                                      and r0, r0, #0xf0
0003f72c  00 00 83 e1                                      orr r0, r3, r0
0003f730  21 12 80 e1                                      orr r1, r0, r1, lsr #4
0003f734  18 00 8d e2                                      add r0, sp, #0x18
0003f738  2f cb ff eb                                      bl #0x323fc
0003f73c  00 00 d8 e5                                      ldrb r0, [r8]
0003f740  01 10 d8 e5                                      ldrb r1, [r8, #1]
0003f744  02 20 d8 e5                                      ldrb r2, [r8, #2]
0003f748  00 04 04 e0                                      and r0, r4, r0, lsl #8
0003f74c  11 02 c7 e7                                      bfi r0, r1, #4, #4
0003f750  0f 10 02 e2                                      and r1, r2, #0xf
0003f754  01 10 80 e1                                      orr r1, r0, r1
0003f758  08 00 8d e2                                      add r0, sp, #8
0003f75c  06 20 a0 e1                                      mov r2, r6
0003f760  25 cb ff eb                                      bl #0x323fc
0003f764  01 00 a0 e3                                      mov r0, #1
0003f768  15 00 00 ea                                      b #0x3f7c4
0003f76c  01 40 d8 e5                                      ldrb r4, [r8, #1]
0003f770  1f 0b a0 e3                                      mov r0, #0x7c00
0003f774  00 60 8d e5                                      str r6, [sp]
0003f778  3e 1e a0 e3                                      mov r1, #0x3e0
0003f77c  02 90 d8 e5                                      ldrb sb, [r8, #2]
0003f780  85 03 00 e0                                      and r0, r0, r5, lsl #7
0003f784  04 11 01 e0                                      and r1, r1, r4, lsl #2
0003f788  00 00 81 e1                                      orr r0, r1, r0
0003f78c  a9 61 80 e1                                      orr r6, r0, sb, lsr #3
0003f790  18 00 8d e2                                      add r0, sp, #0x18
0003f794  06 10 a0 e1                                      mov r1, r6
0003f798  1a cb ff eb                                      bl #0x32408
0003f79c  38 00 a0 e3                                      mov r0, #0x38
0003f7a0  07 10 09 e2                                      and r1, sb, #7
0003f7a4  84 01 00 e0                                      and r0, r0, r4, lsl #3
0003f7a8  00 30 9d e5                                      ldr r3, [sp]
0003f7ac  00 00 81 e1                                      orr r0, r1, r0
0003f7b0  07 10 05 e2                                      and r1, r5, #7
0003f7b4  01 23 80 e1                                      orr r2, r0, r1, lsl #6
0003f7b8  08 00 8d e2                                      add r0, sp, #8
0003f7bc  06 10 a0 e1                                      mov r1, r6
0003f7c0  13 cb ff eb                                      bl #0x32414
0003f7c4  04 20 9d e5                                      ldr r2, [sp, #4]
0003f7c8  01 10 07 e2                                      and r1, r7, #1
0003f7cc  01 00 52 e3                                      cmp r2, #1
0003f7d0  d3 00 00 1a                                      bne #0x3fb24
0003f7d4  00 00 51 e3                                      cmp r1, #0
0003f7d8  54 01 00 0a                                      beq #0x3fd30
0003f7dc  07 20 d8 e5                                      ldrb r2, [r8, #7]
0003f7e0  18 30 8d e2                                      add r3, sp, #0x18
0003f7e4  05 10 d8 e5                                      ldrb r1, [r8, #5]
0003f7e8  01 20 02 e2                                      and r2, r2, #1
0003f7ec  91 20 c1 e7                                      bfi r2, r1, #1, #1
0003f7f0  ca 1f 8f e2                                      add r1, pc, #0x328
0003f7f4  02 20 d1 e7                                      ldrb r2, [r1, r2]
0003f7f8  02 71 d3 e7                                      ldrb r7, [r3, r2, lsl #2]
0003f7fc  02 21 83 e0                                      add r2, r3, r2, lsl #2
0003f800  00 70 ca e5                                      strb r7, [sl]
0003f804  01 70 d2 e5                                      ldrb r7, [r2, #1]
0003f808  01 70 ca e5                                      strb r7, [sl, #1]
0003f80c  02 20 d2 e5                                      ldrb r2, [r2, #2]
0003f810  02 20 ca e5                                      strb r2, [sl, #2]
0003f814  02 20 a0 e3                                      mov r2, #2
0003f818  05 70 d8 e5                                      ldrb r7, [r8, #5]
0003f81c  07 60 d8 e5                                      ldrb r6, [r8, #7]
0003f820  a7 71 02 e0                                      and r7, r2, r7, lsr #3
0003f824  56 62 e0 e7                                      ubfx r6, r6, #4, #1
0003f828  06 70 87 e1                                      orr r7, r7, r6
0003f82c  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003f830  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003f834  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003f838  04 60 ca e5                                      strb r6, [sl, #4]
0003f83c  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003f840  05 60 ca e5                                      strb r6, [sl, #5]
0003f844  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003f848  06 70 ca e5                                      strb r7, [sl, #6]
0003f84c  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003f850  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003f854  01 60 06 e2                                      and r6, r6, #1
0003f858  97 60 c1 e7                                      bfi r6, r7, #1, #1
0003f85c  06 70 d1 e7                                      ldrb r7, [r1, r6]
0003f860  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003f864  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003f868  08 60 ca e5                                      strb r6, [sl, #8]
0003f86c  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003f870  09 60 ca e5                                      strb r6, [sl, #9]
0003f874  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003f878  0a 70 ca e5                                      strb r7, [sl, #0xa]
0003f87c  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003f880  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003f884  a7 71 02 e0                                      and r7, r2, r7, lsr #3
0003f888  56 62 e0 e7                                      ubfx r6, r6, #4, #1
0003f88c  06 70 87 e1                                      orr r7, r7, r6
0003f890  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003f894  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003f898  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003f89c  0c 60 ca e5                                      strb r6, [sl, #0xc]
0003f8a0  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003f8a4  0d 60 ca e5                                      strb r6, [sl, #0xd]
0003f8a8  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003f8ac  0e 70 ca e5                                      strb r7, [sl, #0xe]
0003f8b0  07 60 d8 e5                                      ldrb r6, [r8, #7]
0003f8b4  05 70 d8 e5                                      ldrb r7, [r8, #5]
0003f8b8  02 70 07 e2                                      and r7, r7, #2
0003f8bc  d6 60 e0 e7                                      ubfx r6, r6, #1, #1
0003f8c0  07 70 86 e1                                      orr r7, r6, r7
0003f8c4  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003f8c8  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003f8cc  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003f8d0  10 60 ca e5                                      strb r6, [sl, #0x10]
0003f8d4  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003f8d8  11 60 ca e5                                      strb r6, [sl, #0x11]
0003f8dc  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003f8e0  12 70 ca e5                                      strb r7, [sl, #0x12]
0003f8e4  05 70 d8 e5                                      ldrb r7, [r8, #5]
0003f8e8  07 60 d8 e5                                      ldrb r6, [r8, #7]
0003f8ec  27 72 02 e0                                      and r7, r2, r7, lsr #4
0003f8f0  d6 62 e0 e7                                      ubfx r6, r6, #5, #1
0003f8f4  06 70 87 e1                                      orr r7, r7, r6
0003f8f8  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003f8fc  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003f900  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003f904  14 60 ca e5                                      strb r6, [sl, #0x14]
0003f908  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003f90c  15 60 ca e5                                      strb r6, [sl, #0x15]
0003f910  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003f914  16 70 ca e5                                      strb r7, [sl, #0x16]
0003f918  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003f91c  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003f920  02 70 07 e2                                      and r7, r7, #2
0003f924  d6 60 e0 e7                                      ubfx r6, r6, #1, #1
0003f928  07 70 86 e1                                      orr r7, r6, r7
0003f92c  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003f930  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003f934  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003f938  18 60 ca e5                                      strb r6, [sl, #0x18]
0003f93c  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003f940  19 60 ca e5                                      strb r6, [sl, #0x19]
0003f944  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003f948  1a 70 ca e5                                      strb r7, [sl, #0x1a]
0003f94c  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003f950  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003f954  27 72 02 e0                                      and r7, r2, r7, lsr #4
0003f958  d6 62 e0 e7                                      ubfx r6, r6, #5, #1
0003f95c  06 70 87 e1                                      orr r7, r7, r6
0003f960  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003f964  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003f968  07 31 83 e0                                      add r3, r3, r7, lsl #2
0003f96c  1c 60 ca e5                                      strb r6, [sl, #0x1c]
0003f970  01 70 d3 e5                                      ldrb r7, [r3, #1]
0003f974  1d 70 ca e5                                      strb r7, [sl, #0x1d]
0003f978  02 30 d3 e5                                      ldrb r3, [r3, #2]
0003f97c  1e 30 ca e5                                      strb r3, [sl, #0x1e]
0003f980  05 30 d8 e5                                      ldrb r3, [r8, #5]
0003f984  07 70 d8 e5                                      ldrb r7, [r8, #7]
0003f988  a3 30 02 e0                                      and r3, r2, r3, lsr #1
0003f98c  57 71 e0 e7                                      ubfx r7, r7, #2, #1
0003f990  07 30 83 e1                                      orr r3, r3, r7
0003f994  03 70 d1 e7                                      ldrb r7, [r1, r3]
0003f998  08 30 8d e2                                      add r3, sp, #8
0003f99c  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003f9a0  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003f9a4  20 60 ca e5                                      strb r6, [sl, #0x20]
0003f9a8  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003f9ac  21 60 ca e5                                      strb r6, [sl, #0x21]
0003f9b0  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003f9b4  22 70 ca e5                                      strb r7, [sl, #0x22]
0003f9b8  05 70 d8 e5                                      ldrb r7, [r8, #5]
0003f9bc  07 60 d8 e5                                      ldrb r6, [r8, #7]
0003f9c0  a7 72 02 e0                                      and r7, r2, r7, lsr #5
0003f9c4  56 63 e0 e7                                      ubfx r6, r6, #6, #1
0003f9c8  06 70 87 e1                                      orr r7, r7, r6
0003f9cc  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003f9d0  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003f9d4  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003f9d8  24 60 ca e5                                      strb r6, [sl, #0x24]
0003f9dc  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003f9e0  25 60 ca e5                                      strb r6, [sl, #0x25]
0003f9e4  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003f9e8  26 70 ca e5                                      strb r7, [sl, #0x26]
0003f9ec  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003f9f0  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003f9f4  a7 70 02 e0                                      and r7, r2, r7, lsr #1
0003f9f8  56 61 e0 e7                                      ubfx r6, r6, #2, #1
0003f9fc  06 70 87 e1                                      orr r7, r7, r6
0003fa00  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fa04  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003fa08  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003fa0c  28 60 ca e5                                      strb r6, [sl, #0x28]
0003fa10  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003fa14  29 60 ca e5                                      strb r6, [sl, #0x29]
0003fa18  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003fa1c  2a 70 ca e5                                      strb r7, [sl, #0x2a]
0003fa20  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003fa24  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003fa28  a7 72 02 e0                                      and r7, r2, r7, lsr #5
0003fa2c  56 63 e0 e7                                      ubfx r6, r6, #6, #1
0003fa30  06 70 87 e1                                      orr r7, r7, r6
0003fa34  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fa38  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003fa3c  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003fa40  2c 60 ca e5                                      strb r6, [sl, #0x2c]
0003fa44  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003fa48  2d 60 ca e5                                      strb r6, [sl, #0x2d]
0003fa4c  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003fa50  2e 70 ca e5                                      strb r7, [sl, #0x2e]
0003fa54  05 70 d8 e5                                      ldrb r7, [r8, #5]
0003fa58  07 60 d8 e5                                      ldrb r6, [r8, #7]
0003fa5c  27 71 02 e0                                      and r7, r2, r7, lsr #2
0003fa60  d6 61 e0 e7                                      ubfx r6, r6, #3, #1
0003fa64  06 70 87 e1                                      orr r7, r7, r6
0003fa68  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fa6c  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003fa70  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003fa74  30 60 ca e5                                      strb r6, [sl, #0x30]
0003fa78  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003fa7c  31 60 ca e5                                      strb r6, [sl, #0x31]
0003fa80  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003fa84  32 70 ca e5                                      strb r7, [sl, #0x32]
0003fa88  05 70 d8 e5                                      ldrb r7, [r8, #5]
0003fa8c  07 60 d8 e5                                      ldrb r6, [r8, #7]
0003fa90  27 73 02 e0                                      and r7, r2, r7, lsr #6
0003fa94  a6 73 87 e1                                      orr r7, r7, r6, lsr #7
0003fa98  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fa9c  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003faa0  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003faa4  34 60 ca e5                                      strb r6, [sl, #0x34]
0003faa8  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003faac  35 60 ca e5                                      strb r6, [sl, #0x35]
0003fab0  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003fab4  36 70 ca e5                                      strb r7, [sl, #0x36]
0003fab8  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003fabc  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003fac0  27 71 02 e0                                      and r7, r2, r7, lsr #2
0003fac4  d6 61 e0 e7                                      ubfx r6, r6, #3, #1
0003fac8  06 70 87 e1                                      orr r7, r7, r6
0003facc  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fad0  07 61 d3 e7                                      ldrb r6, [r3, r7, lsl #2]
0003fad4  07 71 83 e0                                      add r7, r3, r7, lsl #2
0003fad8  38 60 ca e5                                      strb r6, [sl, #0x38]
0003fadc  01 60 d7 e5                                      ldrb r6, [r7, #1]
0003fae0  39 60 ca e5                                      strb r6, [sl, #0x39]
0003fae4  02 70 d7 e5                                      ldrb r7, [r7, #2]
0003fae8  3a 70 ca e5                                      strb r7, [sl, #0x3a]
0003faec  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003faf0  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003faf4  27 23 02 e0                                      and r2, r2, r7, lsr #6
0003faf8  a6 23 82 e1                                      orr r2, r2, r6, lsr #7
0003fafc  02 10 d1 e7                                      ldrb r1, [r1, r2]
0003fb00  01 21 d3 e7                                      ldrb r2, [r3, r1, lsl #2]
0003fb04  01 11 83 e0                                      add r1, r3, r1, lsl #2
0003fb08  3c 20 ca e5                                      strb r2, [sl, #0x3c]
0003fb0c  01 20 d1 e5                                      ldrb r2, [r1, #1]
0003fb10  3d 20 ca e5                                      strb r2, [sl, #0x3d]
0003fb14  02 10 d1 e5                                      ldrb r1, [r1, #2]
0003fb18  3e 10 ca e5                                      strb r1, [sl, #0x3e]
0003fb1c  02 01 00 ea                                      b #0x3ff2c
0003fb20  02 03 01 00                                      andeq r0, r1, r2, lsl #6
0003fb24  00 00 51 e3                                      cmp r1, #0
0003fb28  ca 00 00 0a                                      beq #0x3fe58
0003fb2c  07 20 d8 e5                                      ldrb r2, [r8, #7]
0003fb30  18 30 8d e2                                      add r3, sp, #0x18
0003fb34  05 10 d8 e5                                      ldrb r1, [r8, #5]
0003fb38  01 20 02 e2                                      and r2, r2, #1
0003fb3c  91 20 c1 e7                                      bfi r2, r1, #1, #1
0003fb40  28 10 4f e2                                      sub r1, pc, #0x28
0003fb44  02 20 d1 e7                                      ldrb r2, [r1, r2]
0003fb48  02 21 93 e7                                      ldr r2, [r3, r2, lsl #2]
0003fb4c  00 20 8a e5                                      str r2, [sl]
0003fb50  05 70 d8 e5                                      ldrb r7, [r8, #5]
0003fb54  02 20 a0 e3                                      mov r2, #2
0003fb58  07 60 d8 e5                                      ldrb r6, [r8, #7]
0003fb5c  a7 71 02 e0                                      and r7, r2, r7, lsr #3
0003fb60  56 62 e0 e7                                      ubfx r6, r6, #4, #1
0003fb64  06 70 87 e1                                      orr r7, r7, r6
0003fb68  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fb6c  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fb70  04 70 8a e5                                      str r7, [sl, #4]
0003fb74  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003fb78  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003fb7c  01 60 06 e2                                      and r6, r6, #1
0003fb80  97 60 c1 e7                                      bfi r6, r7, #1, #1
0003fb84  06 70 d1 e7                                      ldrb r7, [r1, r6]
0003fb88  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fb8c  08 70 8a e5                                      str r7, [sl, #8]
0003fb90  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003fb94  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003fb98  a7 71 02 e0                                      and r7, r2, r7, lsr #3
0003fb9c  56 62 e0 e7                                      ubfx r6, r6, #4, #1
0003fba0  06 70 87 e1                                      orr r7, r7, r6
0003fba4  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fba8  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fbac  0c 70 8a e5                                      str r7, [sl, #0xc]
0003fbb0  07 60 d8 e5                                      ldrb r6, [r8, #7]
0003fbb4  05 70 d8 e5                                      ldrb r7, [r8, #5]
0003fbb8  02 70 07 e2                                      and r7, r7, #2
0003fbbc  d6 60 e0 e7                                      ubfx r6, r6, #1, #1
0003fbc0  07 70 86 e1                                      orr r7, r6, r7
0003fbc4  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fbc8  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fbcc  10 70 8a e5                                      str r7, [sl, #0x10]
0003fbd0  05 70 d8 e5                                      ldrb r7, [r8, #5]
0003fbd4  07 60 d8 e5                                      ldrb r6, [r8, #7]
0003fbd8  27 72 02 e0                                      and r7, r2, r7, lsr #4
0003fbdc  d6 62 e0 e7                                      ubfx r6, r6, #5, #1
0003fbe0  06 70 87 e1                                      orr r7, r7, r6
0003fbe4  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fbe8  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fbec  14 70 8a e5                                      str r7, [sl, #0x14]
0003fbf0  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003fbf4  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003fbf8  02 70 07 e2                                      and r7, r7, #2
0003fbfc  d6 60 e0 e7                                      ubfx r6, r6, #1, #1
0003fc00  07 70 86 e1                                      orr r7, r6, r7
0003fc04  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fc08  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fc0c  18 70 8a e5                                      str r7, [sl, #0x18]
0003fc10  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003fc14  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003fc18  27 72 02 e0                                      and r7, r2, r7, lsr #4
0003fc1c  d6 62 e0 e7                                      ubfx r6, r6, #5, #1
0003fc20  06 70 87 e1                                      orr r7, r7, r6
0003fc24  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fc28  07 31 93 e7                                      ldr r3, [r3, r7, lsl #2]
0003fc2c  1c 30 8a e5                                      str r3, [sl, #0x1c]
0003fc30  05 30 d8 e5                                      ldrb r3, [r8, #5]
0003fc34  07 70 d8 e5                                      ldrb r7, [r8, #7]
0003fc38  a3 30 02 e0                                      and r3, r2, r3, lsr #1
0003fc3c  57 71 e0 e7                                      ubfx r7, r7, #2, #1
0003fc40  07 30 83 e1                                      orr r3, r3, r7
0003fc44  03 70 d1 e7                                      ldrb r7, [r1, r3]
0003fc48  08 30 8d e2                                      add r3, sp, #8
0003fc4c  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fc50  20 70 8a e5                                      str r7, [sl, #0x20]
0003fc54  05 70 d8 e5                                      ldrb r7, [r8, #5]
0003fc58  07 60 d8 e5                                      ldrb r6, [r8, #7]
0003fc5c  a7 72 02 e0                                      and r7, r2, r7, lsr #5
0003fc60  56 63 e0 e7                                      ubfx r6, r6, #6, #1
0003fc64  06 70 87 e1                                      orr r7, r7, r6
0003fc68  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fc6c  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fc70  24 70 8a e5                                      str r7, [sl, #0x24]
0003fc74  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003fc78  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003fc7c  a7 70 02 e0                                      and r7, r2, r7, lsr #1
0003fc80  56 61 e0 e7                                      ubfx r6, r6, #2, #1
0003fc84  06 70 87 e1                                      orr r7, r7, r6
0003fc88  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fc8c  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fc90  28 70 8a e5                                      str r7, [sl, #0x28]
0003fc94  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003fc98  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003fc9c  a7 72 02 e0                                      and r7, r2, r7, lsr #5
0003fca0  56 63 e0 e7                                      ubfx r6, r6, #6, #1
0003fca4  06 70 87 e1                                      orr r7, r7, r6
0003fca8  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fcac  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fcb0  2c 70 8a e5                                      str r7, [sl, #0x2c]
0003fcb4  05 70 d8 e5                                      ldrb r7, [r8, #5]
0003fcb8  07 60 d8 e5                                      ldrb r6, [r8, #7]
0003fcbc  27 71 02 e0                                      and r7, r2, r7, lsr #2
0003fcc0  d6 61 e0 e7                                      ubfx r6, r6, #3, #1
0003fcc4  06 70 87 e1                                      orr r7, r7, r6
0003fcc8  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fccc  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fcd0  30 70 8a e5                                      str r7, [sl, #0x30]
0003fcd4  05 70 d8 e5                                      ldrb r7, [r8, #5]
0003fcd8  07 60 d8 e5                                      ldrb r6, [r8, #7]
0003fcdc  27 73 02 e0                                      and r7, r2, r7, lsr #6
0003fce0  a6 73 87 e1                                      orr r7, r7, r6, lsr #7
0003fce4  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fce8  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fcec  34 70 8a e5                                      str r7, [sl, #0x34]
0003fcf0  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003fcf4  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003fcf8  27 71 02 e0                                      and r7, r2, r7, lsr #2
0003fcfc  d6 61 e0 e7                                      ubfx r6, r6, #3, #1
0003fd00  06 70 87 e1                                      orr r7, r7, r6
0003fd04  07 70 d1 e7                                      ldrb r7, [r1, r7]
0003fd08  07 71 93 e7                                      ldr r7, [r3, r7, lsl #2]
0003fd0c  38 70 8a e5                                      str r7, [sl, #0x38]
0003fd10  04 70 d8 e5                                      ldrb r7, [r8, #4]
0003fd14  06 60 d8 e5                                      ldrb r6, [r8, #6]
0003fd18  27 23 02 e0                                      and r2, r2, r7, lsr #6
0003fd1c  a6 23 82 e1                                      orr r2, r2, r6, lsr #7
0003fd20  02 10 d1 e7                                      ldrb r1, [r1, r2]
0003fd24  01 11 93 e7                                      ldr r1, [r3, r1, lsl #2]
0003fd28  3c 10 8a e5                                      str r1, [sl, #0x3c]
0003fd2c  7e 00 00 ea                                      b #0x3ff2c
0003fd30  18 90 8d e2                                      add sb, sp, #0x18
0003fd34  08 60 8d e2                                      add r6, sp, #8
0003fd38  00 10 a0 e3                                      mov r1, #0
0003fd3c  07 c0 a0 e3                                      mov ip, #7
0003fd40  01 e0 a0 e3                                      mov lr, #1
0003fd44  a1 21 4c e0                                      sub r2, ip, r1, lsr #3
0003fd48  08 50 a0 e1                                      mov r5, r8
0003fd4c  0a 40 a0 e1                                      mov r4, sl
0003fd50  08 70 a0 e1                                      mov r7, r8
0003fd54  02 20 f5 e7                                      ldrb r2, [r5, r2]!
0003fd58  02 50 55 e5                                      ldrb r5, [r5, #-2]
0003fd5c  32 21 0e e0                                      and r2, lr, r2, lsr r1
0003fd60  35 51 a0 e1                                      lsr r5, r5, r1
0003fd64  95 20 c1 e7                                      bfi r2, r5, #1, #1
0003fd68  1e 5e 8f e2                                      add r5, pc, #0x1e0
0003fd6c  02 20 d5 e7                                      ldrb r2, [r5, r2]
0003fd70  02 31 d9 e7                                      ldrb r3, [sb, r2, lsl #2]
0003fd74  02 21 89 e0                                      add r2, sb, r2, lsl #2
0003fd78  01 32 e4 e7                                      strb r3, [r4, r1, lsl #4]!
0003fd7c  01 30 d2 e5                                      ldrb r3, [r2, #1]
0003fd80  01 30 c4 e5                                      strb r3, [r4, #1]
0003fd84  02 20 d2 e5                                      ldrb r2, [r2, #2]
0003fd88  02 20 c4 e5                                      strb r2, [r4, #2]
0003fd8c  04 20 81 e2                                      add r2, r1, #4
0003fd90  a2 31 4c e0                                      sub r3, ip, r2, lsr #3
0003fd94  03 30 f7 e7                                      ldrb r3, [r7, r3]!
0003fd98  02 70 57 e5                                      ldrb r7, [r7, #-2]
0003fd9c  33 32 0e e0                                      and r3, lr, r3, lsr r2
0003fda0  37 72 a0 e1                                      lsr r7, r7, r2
0003fda4  97 30 c1 e7                                      bfi r3, r7, #1, #1
0003fda8  03 30 d5 e7                                      ldrb r3, [r5, r3]
0003fdac  03 71 d9 e7                                      ldrb r7, [sb, r3, lsl #2]
0003fdb0  03 31 89 e0                                      add r3, sb, r3, lsl #2
0003fdb4  04 70 c4 e5                                      strb r7, [r4, #4]
0003fdb8  01 70 d3 e5                                      ldrb r7, [r3, #1]
0003fdbc  05 70 c4 e5                                      strb r7, [r4, #5]
0003fdc0  08 70 a0 e1                                      mov r7, r8
0003fdc4  02 30 d3 e5                                      ldrb r3, [r3, #2]
0003fdc8  06 30 c4 e5                                      strb r3, [r4, #6]
0003fdcc  08 30 81 e2                                      add r3, r1, #8
0003fdd0  a3 31 4c e0                                      sub r3, ip, r3, lsr #3
0003fdd4  03 30 f7 e7                                      ldrb r3, [r7, r3]!
0003fdd8  02 70 57 e5                                      ldrb r7, [r7, #-2]
0003fddc  33 31 0e e0                                      and r3, lr, r3, lsr r1
0003fde0  37 71 a0 e1                                      lsr r7, r7, r1
0003fde4  97 30 c1 e7                                      bfi r3, r7, #1, #1
0003fde8  03 30 d5 e7                                      ldrb r3, [r5, r3]
0003fdec  03 71 d6 e7                                      ldrb r7, [r6, r3, lsl #2]
0003fdf0  03 31 86 e0                                      add r3, r6, r3, lsl #2
0003fdf4  08 70 c4 e5                                      strb r7, [r4, #8]
0003fdf8  01 70 d3 e5                                      ldrb r7, [r3, #1]
0003fdfc  09 70 c4 e5                                      strb r7, [r4, #9]
0003fe00  08 70 a0 e1                                      mov r7, r8
0003fe04  02 30 d3 e5                                      ldrb r3, [r3, #2]
0003fe08  0a 30 c4 e5                                      strb r3, [r4, #0xa]
0003fe0c  0c 30 81 e2                                      add r3, r1, #0xc
0003fe10  01 10 81 e2                                      add r1, r1, #1
0003fe14  a3 31 4c e0                                      sub r3, ip, r3, lsr #3
0003fe18  04 00 51 e3                                      cmp r1, #4
0003fe1c  03 30 f7 e7                                      ldrb r3, [r7, r3]!
0003fe20  02 70 57 e5                                      ldrb r7, [r7, #-2]
0003fe24  33 32 0e e0                                      and r3, lr, r3, lsr r2
0003fe28  37 22 a0 e1                                      lsr r2, r7, r2
0003fe2c  92 30 c1 e7                                      bfi r3, r2, #1, #1
0003fe30  03 20 d5 e7                                      ldrb r2, [r5, r3]
0003fe34  02 31 d6 e7                                      ldrb r3, [r6, r2, lsl #2]
0003fe38  02 21 86 e0                                      add r2, r6, r2, lsl #2
0003fe3c  0c 30 c4 e5                                      strb r3, [r4, #0xc]
0003fe40  01 30 d2 e5                                      ldrb r3, [r2, #1]
0003fe44  0d 30 c4 e5                                      strb r3, [r4, #0xd]
0003fe48  02 20 d2 e5                                      ldrb r2, [r2, #2]
0003fe4c  0e 20 c4 e5                                      strb r2, [r4, #0xe]
0003fe50  bb ff ff 1a                                      bne #0x3fd44
0003fe54  34 00 00 ea                                      b #0x3ff2c
0003fe58  18 c0 8d e2                                      add ip, sp, #0x18
0003fe5c  08 e0 8d e2                                      add lr, sp, #8
0003fe60  00 10 a0 e3                                      mov r1, #0
0003fe64  07 90 a0 e3                                      mov sb, #7
0003fe68  01 30 a0 e3                                      mov r3, #1
0003fe6c  a1 51 49 e0                                      sub r5, sb, r1, lsr #3
0003fe70  08 40 a0 e1                                      mov r4, r8
0003fe74  08 20 a0 e1                                      mov r2, r8
0003fe78  05 50 f4 e7                                      ldrb r5, [r4, r5]!
0003fe7c  02 40 54 e5                                      ldrb r4, [r4, #-2]
0003fe80  35 71 03 e0                                      and r7, r3, r5, lsr r1
0003fe84  34 51 a0 e1                                      lsr r5, r4, r1
0003fe88  0a 40 a0 e1                                      mov r4, sl
0003fe8c  95 70 c1 e7                                      bfi r7, r5, #1, #1
0003fe90  b8 50 8f e2                                      add r5, pc, #0xb8
0003fe94  07 70 d5 e7                                      ldrb r7, [r5, r7]
0003fe98  07 71 9c e7                                      ldr r7, [ip, r7, lsl #2]
0003fe9c  01 72 a4 e7                                      str r7, [r4, r1, lsl #4]!
0003fea0  04 70 81 e2                                      add r7, r1, #4
0003fea4  a7 61 49 e0                                      sub r6, sb, r7, lsr #3
0003fea8  06 60 f2 e7                                      ldrb r6, [r2, r6]!
0003feac  02 20 52 e5                                      ldrb r2, [r2, #-2]
0003feb0  36 67 03 e0                                      and r6, r3, r6, lsr r7
0003feb4  32 27 a0 e1                                      lsr r2, r2, r7
0003feb8  92 60 c1 e7                                      bfi r6, r2, #1, #1
0003febc  06 20 d5 e7                                      ldrb r2, [r5, r6]
0003fec0  08 60 a0 e1                                      mov r6, r8
0003fec4  02 21 9c e7                                      ldr r2, [ip, r2, lsl #2]
0003fec8  04 20 84 e5                                      str r2, [r4, #4]
0003fecc  08 20 81 e2                                      add r2, r1, #8
0003fed0  a2 21 49 e0                                      sub r2, sb, r2, lsr #3
0003fed4  02 20 f6 e7                                      ldrb r2, [r6, r2]!
0003fed8  02 60 56 e5                                      ldrb r6, [r6, #-2]
0003fedc  32 21 03 e0                                      and r2, r3, r2, lsr r1
0003fee0  36 61 a0 e1                                      lsr r6, r6, r1
0003fee4  96 20 c1 e7                                      bfi r2, r6, #1, #1
0003fee8  08 60 a0 e1                                      mov r6, r8
0003feec  02 20 d5 e7                                      ldrb r2, [r5, r2]
0003fef0  02 21 9e e7                                      ldr r2, [lr, r2, lsl #2]
0003fef4  08 20 84 e5                                      str r2, [r4, #8]
0003fef8  0c 20 81 e2                                      add r2, r1, #0xc
0003fefc  01 10 81 e2                                      add r1, r1, #1
0003ff00  04 00 51 e3                                      cmp r1, #4
0003ff04  a2 21 49 e0                                      sub r2, sb, r2, lsr #3
0003ff08  02 20 f6 e7                                      ldrb r2, [r6, r2]!
0003ff0c  02 60 56 e5                                      ldrb r6, [r6, #-2]
0003ff10  32 27 03 e0                                      and r2, r3, r2, lsr r7
0003ff14  36 67 a0 e1                                      lsr r6, r6, r7
0003ff18  96 20 c1 e7                                      bfi r2, r6, #1, #1
0003ff1c  02 20 d5 e7                                      ldrb r2, [r5, r2]
0003ff20  02 21 9e e7                                      ldr r2, [lr, r2, lsl #2]
0003ff24  0c 20 84 e5                                      str r2, [r4, #0xc]
0003ff28  cf ff ff 1a                                      bne #0x3fe6c
0003ff2c  20 10 9f e5                                      ldr r1, [pc, #0x20]
0003ff30  20 20 1b e5                                      ldr r2, [fp, #-0x20]
0003ff34  01 10 9f e7                                      ldr r1, [pc, r1]
0003ff38  00 10 91 e5                                      ldr r1, [r1]
0003ff3c  02 10 51 e0                                      subs r1, r1, r2
0003ff40  1c d0 4b 02                                      subeq sp, fp, #0x1c
0003ff44  f0 8f bd 08                                      popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0003ff48  44 c8 ff eb                                      bl #0x32060
0003ff4c  bc cd 09 00                                      strheq ip, [sb], -ip
0003ff50  02 03 01 00                                      andeq r0, r1, r2, lsl #6
0003ff54  7c c5 09 00                                      andeq ip, sb, ip, ror r5

; FUNCTION 0x00041afc, declared_size=1724, range_size=1724, mode=arm
; class-group: rg_etc1
; alias: _ZN7rg_etc120pack_etc1_block_initEv
; demangled: rg_etc1::pack_etc1_block_init()
; decoder-mode: arm
00041afc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00041b00  1c b0 8d e2                                      add fp, sp, #0x1c
00041b04  a4 d0 4d e2                                      sub sp, sp, #0xa4
00041b08  5c 06 9f e5                                      ldr r0, [pc, #0x65c]
00041b0c  00 80 a0 e3                                      mov r8, #0
00041b10  58 16 9f e5                                      ldr r1, [pc, #0x658]
00041b14  00 00 9f e7                                      ldr r0, [pc, r0]
00041b18  00 00 90 e5                                      ldr r0, [r0]
00041b1c  20 00 0b e5                                      str r0, [fp, #-0x20]
00041b20  01 00 8f e0                                      add r0, pc, r1
00041b24  48 16 9f e5                                      ldr r1, [pc, #0x648]
00041b28  14 00 8d e5                                      str r0, [sp, #0x14]
00041b2c  01 c0 8f e0                                      add ip, pc, r1
00041b30  40 16 9f e5                                      ldr r1, [pc, #0x640]
00041b34  10 c0 8d e5                                      str ip, [sp, #0x10]
00041b38  01 00 8f e0                                      add r0, pc, r1
00041b3c  38 16 9f e5                                      ldr r1, [pc, #0x638]
00041b40  0c 00 8d e5                                      str r0, [sp, #0xc]
00041b44  01 00 8f e0                                      add r0, pc, r1
00041b48  30 16 9f e5                                      ldr r1, [pc, #0x630]
00041b4c  1c 00 8d e5                                      str r0, [sp, #0x1c]
00041b50  01 00 8f e0                                      add r0, pc, r1
00041b54  28 16 9f e5                                      ldr r1, [pc, #0x628]
00041b58  08 00 8d e5                                      str r0, [sp, #8]
00041b5c  01 90 8f e0                                      add sb, pc, r1
00041b60  20 16 9f e5                                      ldr r1, [pc, #0x620]
00041b64  01 00 8f e0                                      add r0, pc, r1
00041b68  1c 16 9f e5                                      ldr r1, [pc, #0x61c]
00041b6c  04 00 8d e5                                      str r0, [sp, #4]
00041b70  01 a0 8f e0                                      add sl, pc, r1
00041b74  00 10 a0 e3                                      mov r1, #0
00041b78  14 00 9d e5                                      ldr r0, [sp, #0x14]
00041b7c  81 e0 a0 e1                                      lsl lr, r1, #1
00041b80  00 70 a0 e3                                      mov r7, #0
00041b84  18 10 8d e5                                      str r1, [sp, #0x18]
00041b88  01 52 90 e7                                      ldr r5, [r0, r1, lsl #4]
00041b8c  00 20 e0 e3                                      mvn r2, #0
00041b90  00 60 a0 e3                                      mov r6, #0
00041b94  00 10 a0 e3                                      mov r1, #0
00041b98  00 40 a0 e3                                      mov r4, #0
00041b9c  01 30 86 e1                                      orr r3, r6, r1
00041ba0  ff 00 a0 e3                                      mov r0, #0xff
00041ba4  03 30 85 e0                                      add r3, r5, r3
00041ba8  ff 00 53 e3                                      cmp r3, #0xff
00041bac  03 00 a0 b1                                      movlt r0, r3
00041bb0  00 00 53 e3                                      cmp r3, #0
00041bb4  08 00 a0 d1                                      movle r0, r8
00041bb8  07 30 50 e0                                      subs r3, r0, r7
00041bbc  00 30 63 42                                      rsbmi r3, r3, #0
00041bc0  02 00 53 e1                                      cmp r3, r2
00041bc4  03 00 00 2a                                      bhs #0x41bd8
00041bc8  00 00 53 e3                                      cmp r3, #0
00041bcc  03 20 a0 e1                                      mov r2, r3
00041bd0  01 40 a0 e1                                      mov r4, r1
00041bd4  04 00 00 0a                                      beq #0x41bec
00041bd8  01 10 81 e2                                      add r1, r1, #1
00041bdc  10 60 86 e2                                      add r6, r6, #0x10
00041be0  10 00 51 e3                                      cmp r1, #0x10
00041be4  ec ff ff 3a                                      blo #0x41b9c
00041be8  01 00 00 ea                                      b #0x41bf4
00041bec  00 20 a0 e3                                      mov r2, #0
00041bf0  01 40 a0 e1                                      mov r4, r1
00041bf4  8e 04 8c e0                                      add r0, ip, lr, lsl #9
00041bf8  02 14 84 e1                                      orr r1, r4, r2, lsl #8
00041bfc  87 00 80 e0                                      add r0, r0, r7, lsl #1
00041c00  01 70 87 e2                                      add r7, r7, #1
00041c04  01 0c 57 e3                                      cmp r7, #0x100
00041c08  b0 10 c0 e1                                      strh r1, [r0]
00041c0c  de ff ff 1a                                      bne #0x41b8c
00041c10  18 10 9d e5                                      ldr r1, [sp, #0x18]
00041c14  10 50 8e e2                                      add r5, lr, #0x10
00041c18  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00041c1c  00 c0 a0 e3                                      mov ip, #0
00041c20  01 12 80 e0                                      add r1, r0, r1, lsl #4
00041c24  04 70 91 e5                                      ldr r7, [r1, #4]
00041c28  00 20 e0 e3                                      mvn r2, #0
00041c2c  00 60 a0 e3                                      mov r6, #0
00041c30  00 10 a0 e3                                      mov r1, #0
00041c34  00 40 a0 e3                                      mov r4, #0
00041c38  01 00 86 e1                                      orr r0, r6, r1
00041c3c  ff 30 a0 e3                                      mov r3, #0xff
00041c40  00 00 87 e0                                      add r0, r7, r0
00041c44  ff 00 50 e3                                      cmp r0, #0xff
00041c48  00 30 a0 b1                                      movlt r3, r0
00041c4c  00 00 50 e3                                      cmp r0, #0
00041c50  08 30 a0 d1                                      movle r3, r8
00041c54  0c 30 53 e0                                      subs r3, r3, ip
00041c58  00 30 63 42                                      rsbmi r3, r3, #0
00041c5c  02 00 53 e1                                      cmp r3, r2
00041c60  03 00 00 2a                                      bhs #0x41c74
00041c64  00 00 53 e3                                      cmp r3, #0
00041c68  03 20 a0 e1                                      mov r2, r3
00041c6c  01 40 a0 e1                                      mov r4, r1
00041c70  04 00 00 0a                                      beq #0x41c88
00041c74  01 10 81 e2                                      add r1, r1, #1
00041c78  10 60 86 e2                                      add r6, r6, #0x10
00041c7c  10 00 51 e3                                      cmp r1, #0x10
00041c80  ec ff ff 3a                                      blo #0x41c38
00041c84  01 00 00 ea                                      b #0x41c90
00041c88  00 20 a0 e3                                      mov r2, #0
00041c8c  01 40 a0 e1                                      mov r4, r1
00041c90  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00041c94  02 14 84 e1                                      orr r1, r4, r2, lsl #8
00041c98  85 04 80 e0                                      add r0, r0, r5, lsl #9
00041c9c  8c 00 80 e0                                      add r0, r0, ip, lsl #1
00041ca0  01 c0 8c e2                                      add ip, ip, #1
00041ca4  01 0c 5c e3                                      cmp ip, #0x100
00041ca8  b0 10 c0 e1                                      strh r1, [r0]
00041cac  dd ff ff 1a                                      bne #0x41c28
00041cb0  18 10 9d e5                                      ldr r1, [sp, #0x18]
00041cb4  20 c0 8e e2                                      add ip, lr, #0x20
00041cb8  08 00 9d e5                                      ldr r0, [sp, #8]
00041cbc  00 20 a0 e3                                      mov r2, #0
00041cc0  01 02 80 e0                                      add r0, r0, r1, lsl #4
00041cc4  08 70 90 e5                                      ldr r7, [r0, #8]
00041cc8  00 50 e0 e3                                      mvn r5, #0
00041ccc  00 30 a0 e3                                      mov r3, #0
00041cd0  00 40 a0 e3                                      mov r4, #0
00041cd4  00 60 a0 e3                                      mov r6, #0
00041cd8  04 00 83 e1                                      orr r0, r3, r4
00041cdc  ff 10 a0 e3                                      mov r1, #0xff
00041ce0  00 00 87 e0                                      add r0, r7, r0
00041ce4  ff 00 50 e3                                      cmp r0, #0xff
00041ce8  00 10 a0 b1                                      movlt r1, r0
00041cec  00 00 50 e3                                      cmp r0, #0
00041cf0  08 10 a0 d1                                      movle r1, r8
00041cf4  02 10 51 e0                                      subs r1, r1, r2
00041cf8  00 10 61 42                                      rsbmi r1, r1, #0
00041cfc  05 00 51 e1                                      cmp r1, r5
00041d00  03 00 00 2a                                      bhs #0x41d14
00041d04  00 00 51 e3                                      cmp r1, #0
00041d08  01 50 a0 e1                                      mov r5, r1
00041d0c  04 60 a0 e1                                      mov r6, r4
00041d10  04 00 00 0a                                      beq #0x41d28
00041d14  01 40 84 e2                                      add r4, r4, #1
00041d18  10 30 83 e2                                      add r3, r3, #0x10
00041d1c  10 00 54 e3                                      cmp r4, #0x10
00041d20  ec ff ff 3a                                      blo #0x41cd8
00041d24  01 00 00 ea                                      b #0x41d30
00041d28  00 50 a0 e3                                      mov r5, #0
00041d2c  04 60 a0 e1                                      mov r6, r4
00041d30  8c 04 89 e0                                      add r0, sb, ip, lsl #9
00041d34  05 14 86 e1                                      orr r1, r6, r5, lsl #8
00041d38  82 00 80 e0                                      add r0, r0, r2, lsl #1
00041d3c  01 20 82 e2                                      add r2, r2, #1
00041d40  01 0c 52 e3                                      cmp r2, #0x100
00041d44  b0 10 c0 e1                                      strh r1, [r0]
00041d48  de ff ff 1a                                      bne #0x41cc8
00041d4c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00041d50  30 c0 8e e2                                      add ip, lr, #0x30
00041d54  04 00 9d e5                                      ldr r0, [sp, #4]
00041d58  00 20 a0 e3                                      mov r2, #0
00041d5c  01 02 80 e0                                      add r0, r0, r1, lsl #4
00041d60  0c 50 90 e5                                      ldr r5, [r0, #0xc]
00041d64  00 30 e0 e3                                      mvn r3, #0
00041d68  00 40 a0 e3                                      mov r4, #0
00041d6c  00 70 a0 e3                                      mov r7, #0
00041d70  00 60 a0 e3                                      mov r6, #0
00041d74  07 00 84 e1                                      orr r0, r4, r7
00041d78  ff 10 a0 e3                                      mov r1, #0xff
00041d7c  00 00 85 e0                                      add r0, r5, r0
00041d80  ff 00 50 e3                                      cmp r0, #0xff
00041d84  00 10 a0 b1                                      movlt r1, r0
00041d88  00 00 50 e3                                      cmp r0, #0
00041d8c  08 10 a0 d1                                      movle r1, r8
00041d90  02 10 51 e0                                      subs r1, r1, r2
00041d94  00 10 61 42                                      rsbmi r1, r1, #0
00041d98  03 00 51 e1                                      cmp r1, r3
00041d9c  03 00 00 2a                                      bhs #0x41db0
00041da0  00 00 51 e3                                      cmp r1, #0
00041da4  01 30 a0 e1                                      mov r3, r1
00041da8  07 60 a0 e1                                      mov r6, r7
00041dac  04 00 00 0a                                      beq #0x41dc4
00041db0  01 70 87 e2                                      add r7, r7, #1
00041db4  10 40 84 e2                                      add r4, r4, #0x10
00041db8  10 00 57 e3                                      cmp r7, #0x10
00041dbc  ec ff ff 3a                                      blo #0x41d74
00041dc0  01 00 00 ea                                      b #0x41dcc
00041dc4  00 30 a0 e3                                      mov r3, #0
00041dc8  07 60 a0 e1                                      mov r6, r7
00041dcc  8c 04 8a e0                                      add r0, sl, ip, lsl #9
00041dd0  03 14 86 e1                                      orr r1, r6, r3, lsl #8
00041dd4  82 00 80 e0                                      add r0, r0, r2, lsl #1
00041dd8  01 20 82 e2                                      add r2, r2, #1
00041ddc  01 0c 52 e3                                      cmp r2, #0x100
00041de0  b0 10 c0 e1                                      strh r1, [r0]
00041de4  de ff ff 1a                                      bne #0x41d64
00041de8  18 10 9d e5                                      ldr r1, [sp, #0x18]
00041dec  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00041df0  01 10 81 e2                                      add r1, r1, #1
00041df4  08 00 51 e3                                      cmp r1, #8
00041df8  5e ff ff 1a                                      bne #0x41b78
00041dfc  8c 03 9f e5                                      ldr r0, [pc, #0x38c]
00041e00  00 90 a0 e3                                      mov sb, #0
00041e04  00 10 a0 e3                                      mov r1, #0
00041e08  00 00 8f e0                                      add r0, pc, r0
00041e0c  14 00 8d e5                                      str r0, [sp, #0x14]
00041e10  7c 03 9f e5                                      ldr r0, [pc, #0x37c]
00041e14  00 c0 8f e0                                      add ip, pc, r0
00041e18  78 03 9f e5                                      ldr r0, [pc, #0x378]
00041e1c  10 c0 8d e5                                      str ip, [sp, #0x10]
00041e20  00 00 8f e0                                      add r0, pc, r0
00041e24  0c 00 8d e5                                      str r0, [sp, #0xc]
00041e28  6c 03 9f e5                                      ldr r0, [pc, #0x36c]
00041e2c  00 00 8f e0                                      add r0, pc, r0
00041e30  1c 00 8d e5                                      str r0, [sp, #0x1c]
00041e34  64 03 9f e5                                      ldr r0, [pc, #0x364]
00041e38  00 00 8f e0                                      add r0, pc, r0
00041e3c  08 00 8d e5                                      str r0, [sp, #8]
00041e40  5c 03 9f e5                                      ldr r0, [pc, #0x35c]
00041e44  00 a0 8f e0                                      add sl, pc, r0
00041e48  58 03 9f e5                                      ldr r0, [pc, #0x358]
00041e4c  00 00 8f e0                                      add r0, pc, r0
00041e50  04 00 8d e5                                      str r0, [sp, #4]
00041e54  50 03 9f e5                                      ldr r0, [pc, #0x350]
00041e58  00 e0 8f e0                                      add lr, pc, r0
00041e5c  01 00 a0 e3                                      mov r0, #1
00041e60  81 80 80 e1                                      orr r8, r0, r1, lsl #1
00041e64  14 00 9d e5                                      ldr r0, [sp, #0x14]
00041e68  18 10 8d e5                                      str r1, [sp, #0x18]
00041e6c  01 62 90 e7                                      ldr r6, [r0, r1, lsl #4]
00041e70  00 10 a0 e3                                      mov r1, #0
00041e74  00 40 e0 e3                                      mvn r4, #0
00041e78  00 70 a0 e3                                      mov r7, #0
00041e7c  00 20 a0 e3                                      mov r2, #0
00041e80  00 50 a0 e3                                      mov r5, #0
00041e84  22 31 87 e1                                      orr r3, r7, r2, lsr #2
00041e88  ff 00 a0 e3                                      mov r0, #0xff
00041e8c  03 30 86 e0                                      add r3, r6, r3
00041e90  ff 00 53 e3                                      cmp r3, #0xff
00041e94  03 00 a0 b1                                      movlt r0, r3
00041e98  00 00 53 e3                                      cmp r3, #0
00041e9c  09 00 a0 d1                                      movle r0, sb
00041ea0  01 30 50 e0                                      subs r3, r0, r1
00041ea4  00 30 63 42                                      rsbmi r3, r3, #0
00041ea8  04 00 53 e1                                      cmp r3, r4
00041eac  03 00 00 2a                                      bhs #0x41ec0
00041eb0  00 00 53 e3                                      cmp r3, #0
00041eb4  03 40 a0 e1                                      mov r4, r3
00041eb8  02 50 a0 e1                                      mov r5, r2
00041ebc  04 00 00 0a                                      beq #0x41ed4
00041ec0  01 20 82 e2                                      add r2, r2, #1
00041ec4  08 70 87 e2                                      add r7, r7, #8
00041ec8  20 00 52 e3                                      cmp r2, #0x20
00041ecc  ec ff ff 3a                                      blo #0x41e84
00041ed0  01 00 00 ea                                      b #0x41edc
00041ed4  00 40 a0 e3                                      mov r4, #0
00041ed8  02 50 a0 e1                                      mov r5, r2
00041edc  88 04 8c e0                                      add r0, ip, r8, lsl #9
00041ee0  04 24 85 e1                                      orr r2, r5, r4, lsl #8
00041ee4  81 00 80 e0                                      add r0, r0, r1, lsl #1
00041ee8  01 10 81 e2                                      add r1, r1, #1
00041eec  01 0c 51 e3                                      cmp r1, #0x100
00041ef0  b0 20 c0 e1                                      strh r2, [r0]
00041ef4  de ff ff 1a                                      bne #0x41e74
00041ef8  18 10 9d e5                                      ldr r1, [sp, #0x18]
00041efc  10 60 88 e2                                      add r6, r8, #0x10
00041f00  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00041f04  01 02 80 e0                                      add r0, r0, r1, lsl #4
00041f08  00 10 a0 e3                                      mov r1, #0
00041f0c  04 c0 90 e5                                      ldr ip, [r0, #4]
00041f10  00 30 e0 e3                                      mvn r3, #0
00041f14  00 70 a0 e3                                      mov r7, #0
00041f18  00 20 a0 e3                                      mov r2, #0
00041f1c  00 50 a0 e3                                      mov r5, #0
00041f20  22 01 87 e1                                      orr r0, r7, r2, lsr #2
00041f24  ff 40 a0 e3                                      mov r4, #0xff
00041f28  00 00 8c e0                                      add r0, ip, r0
00041f2c  ff 00 50 e3                                      cmp r0, #0xff
00041f30  00 40 a0 b1                                      movlt r4, r0
00041f34  00 00 50 e3                                      cmp r0, #0
00041f38  09 40 a0 d1                                      movle r4, sb
00041f3c  01 40 54 e0                                      subs r4, r4, r1
00041f40  00 40 64 42                                      rsbmi r4, r4, #0
00041f44  03 00 54 e1                                      cmp r4, r3
00041f48  03 00 00 2a                                      bhs #0x41f5c
00041f4c  00 00 54 e3                                      cmp r4, #0
00041f50  04 30 a0 e1                                      mov r3, r4
00041f54  02 50 a0 e1                                      mov r5, r2
00041f58  04 00 00 0a                                      beq #0x41f70
00041f5c  01 20 82 e2                                      add r2, r2, #1
00041f60  08 70 87 e2                                      add r7, r7, #8
00041f64  20 00 52 e3                                      cmp r2, #0x20
00041f68  ec ff ff 3a                                      blo #0x41f20
00041f6c  01 00 00 ea                                      b #0x41f78
00041f70  00 30 a0 e3                                      mov r3, #0
00041f74  02 50 a0 e1                                      mov r5, r2
00041f78  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00041f7c  03 24 85 e1                                      orr r2, r5, r3, lsl #8
00041f80  86 04 80 e0                                      add r0, r0, r6, lsl #9
00041f84  81 00 80 e0                                      add r0, r0, r1, lsl #1
00041f88  01 10 81 e2                                      add r1, r1, #1
00041f8c  01 0c 51 e3                                      cmp r1, #0x100
00041f90  b0 20 c0 e1                                      strh r2, [r0]
00041f94  dd ff ff 1a                                      bne #0x41f10
00041f98  18 10 9d e5                                      ldr r1, [sp, #0x18]
00041f9c  20 c0 88 e2                                      add ip, r8, #0x20
00041fa0  08 00 9d e5                                      ldr r0, [sp, #8]
00041fa4  00 30 a0 e3                                      mov r3, #0
00041fa8  01 02 80 e0                                      add r0, r0, r1, lsl #4
00041fac  08 10 90 e5                                      ldr r1, [r0, #8]
00041fb0  00 60 e0 e3                                      mvn r6, #0
00041fb4  00 40 a0 e3                                      mov r4, #0
00041fb8  00 50 a0 e3                                      mov r5, #0
00041fbc  00 70 a0 e3                                      mov r7, #0
00041fc0  25 01 84 e1                                      orr r0, r4, r5, lsr #2
00041fc4  ff 20 a0 e3                                      mov r2, #0xff
00041fc8  00 00 81 e0                                      add r0, r1, r0
00041fcc  ff 00 50 e3                                      cmp r0, #0xff
00041fd0  00 20 a0 b1                                      movlt r2, r0
00041fd4  00 00 50 e3                                      cmp r0, #0
00041fd8  09 20 a0 d1                                      movle r2, sb
00041fdc  03 20 52 e0                                      subs r2, r2, r3
00041fe0  00 20 62 42                                      rsbmi r2, r2, #0
00041fe4  06 00 52 e1                                      cmp r2, r6
00041fe8  03 00 00 2a                                      bhs #0x41ffc
00041fec  00 00 52 e3                                      cmp r2, #0
00041ff0  02 60 a0 e1                                      mov r6, r2
00041ff4  05 70 a0 e1                                      mov r7, r5
00041ff8  04 00 00 0a                                      beq #0x42010
00041ffc  01 50 85 e2                                      add r5, r5, #1
00042000  08 40 84 e2                                      add r4, r4, #8
00042004  20 00 55 e3                                      cmp r5, #0x20
00042008  ec ff ff 3a                                      blo #0x41fc0
0004200c  01 00 00 ea                                      b #0x42018
00042010  00 60 a0 e3                                      mov r6, #0
00042014  05 70 a0 e1                                      mov r7, r5
00042018  8c 04 8a e0                                      add r0, sl, ip, lsl #9
0004201c  06 24 87 e1                                      orr r2, r7, r6, lsl #8
00042020  83 00 80 e0                                      add r0, r0, r3, lsl #1
00042024  01 30 83 e2                                      add r3, r3, #1
00042028  01 0c 53 e3                                      cmp r3, #0x100
0004202c  b0 20 c0 e1                                      strh r2, [r0]
00042030  de ff ff 1a                                      bne #0x41fb0
00042034  18 10 9d e5                                      ldr r1, [sp, #0x18]
00042038  30 c0 88 e2                                      add ip, r8, #0x30
0004203c  04 00 9d e5                                      ldr r0, [sp, #4]
00042040  00 30 a0 e3                                      mov r3, #0
00042044  01 02 80 e0                                      add r0, r0, r1, lsl #4
00042048  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0004204c  00 60 e0 e3                                      mvn r6, #0
00042050  00 40 a0 e3                                      mov r4, #0
00042054  00 50 a0 e3                                      mov r5, #0
00042058  00 70 a0 e3                                      mov r7, #0
0004205c  25 01 84 e1                                      orr r0, r4, r5, lsr #2
00042060  ff 20 a0 e3                                      mov r2, #0xff
00042064  00 00 81 e0                                      add r0, r1, r0
00042068  ff 00 50 e3                                      cmp r0, #0xff
0004206c  00 20 a0 b1                                      movlt r2, r0
00042070  00 00 50 e3                                      cmp r0, #0
00042074  09 20 a0 d1                                      movle r2, sb
00042078  03 20 52 e0                                      subs r2, r2, r3
0004207c  00 20 62 42                                      rsbmi r2, r2, #0
00042080  06 00 52 e1                                      cmp r2, r6
00042084  03 00 00 2a                                      bhs #0x42098
00042088  00 00 52 e3                                      cmp r2, #0
0004208c  02 60 a0 e1                                      mov r6, r2
00042090  05 70 a0 e1                                      mov r7, r5
00042094  04 00 00 0a                                      beq #0x420ac
00042098  01 50 85 e2                                      add r5, r5, #1
0004209c  08 40 84 e2                                      add r4, r4, #8
000420a0  20 00 55 e3                                      cmp r5, #0x20
000420a4  ec ff ff 3a                                      blo #0x4205c
000420a8  01 00 00 ea                                      b #0x420b4
000420ac  00 60 a0 e3                                      mov r6, #0
000420b0  05 70 a0 e1                                      mov r7, r5
000420b4  8c 04 8e e0                                      add r0, lr, ip, lsl #9
000420b8  06 24 87 e1                                      orr r2, r7, r6, lsl #8
000420bc  83 00 80 e0                                      add r0, r0, r3, lsl #1
000420c0  01 30 83 e2                                      add r3, r3, #1
000420c4  01 0c 53 e3                                      cmp r3, #0x100
000420c8  b0 20 c0 e1                                      strh r2, [r0]
000420cc  de ff ff 1a                                      bne #0x4204c
000420d0  18 10 9d e5                                      ldr r1, [sp, #0x18]
000420d4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
000420d8  01 10 81 e2                                      add r1, r1, #1
000420dc  08 00 51 e3                                      cmp r1, #8
000420e0  5d ff ff 1a                                      bne #0x41e5c
000420e4  00 10 a0 e3                                      mov r1, #0
000420e8  20 00 8d e2                                      add r0, sp, #0x20
000420ec  00 20 a0 e3                                      mov r2, #0
000420f0  42 31 81 e1                                      orr r3, r1, r2, asr #2
000420f4  02 31 80 e7                                      str r3, [r0, r2, lsl #2]
000420f8  01 20 82 e2                                      add r2, r2, #1
000420fc  08 10 81 e2                                      add r1, r1, #8
00042100  20 00 52 e3                                      cmp r2, #0x20
00042104  f9 ff ff 1a                                      bne #0x420f0
00042108  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
0004210c  00 10 a0 e3                                      mov r1, #0
00042110  02 20 8f e0                                      add r2, pc, r2
00042114  08 30 41 e2                                      sub r3, r1, #8
00042118  ff 00 53 e3                                      cmp r3, #0xff
0004211c  ff 30 a0 a3                                      movge r3, #0xff
00042120  08 00 51 e3                                      cmp r1, #8
00042124  83 32 63 e0                                      rsb r3, r3, r3, lsl #5
00042128  80 30 83 e2                                      add r3, r3, #0x80
0004212c  80 30 00 b3                                      movwlt r3, #0x80
00042130  43 34 83 e0                                      add r3, r3, r3, asr #8
00042134  43 34 a0 e1                                      asr r3, r3, #8
00042138  03 31 90 e7                                      ldr r3, [r0, r3, lsl #2]
0004213c  01 30 c2 e7                                      strb r3, [r2, r1]
00042140  01 10 81 e2                                      add r1, r1, #1
00042144  11 0e 51 e3                                      cmp r1, #0x110
00042148  f1 ff ff 1a                                      bne #0x42114
0004214c  60 00 9f e5                                      ldr r0, [pc, #0x60]
00042150  20 10 1b e5                                      ldr r1, [fp, #-0x20]
00042154  00 00 9f e7                                      ldr r0, [pc, r0]
00042158  00 00 90 e5                                      ldr r0, [r0]
0004215c  01 00 50 e0                                      subs r0, r0, r1
00042160  1c d0 4b 02                                      subeq sp, fp, #0x1c
00042164  f0 8f bd 08                                      popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00042168  bc bf ff eb                                      bl #0x32060
0004216c  9c a9 09 00                                      muleq sb, ip, sb
00042170  ec 1f 08 00                                      andeq r1, r8, ip, ror #31
00042174  88 c8 09 00                                      andeq ip, sb, r8, lsl #17
00042178  d4 1f 08 00                                      ldrdeq r1, r2, [r8], -r4
0004217c  70 c8 09 00                                      andeq ip, sb, r0, ror r8
00042180  bc 1f 08 00                                      strheq r1, [r8], -ip
00042184  58 c8 09 00                                      andeq ip, sb, r8, asr r8
00042188  a8 1f 08 00                                      andeq r1, r8, r8, lsr #31
0004218c  44 c8 09 00                                      andeq ip, sb, r4, asr #16
00042190  04 1d 08 00                                      andeq r1, r8, r4, lsl #26
00042194  a0 c5 09 00                                      andeq ip, sb, r0, lsr #11
00042198  ec 1c 08 00                                      andeq r1, r8, ip, ror #25
0004219c  88 c5 09 00                                      andeq ip, sb, r8, lsl #11
000421a0  d4 1c 08 00                                      ldrdeq r1, r2, [r8], -r4
000421a4  70 c5 09 00                                      andeq ip, sb, r0, ror r5
000421a8  c0 1c 08 00                                      andeq r1, r8, r0, asr #25
000421ac  5c c5 09 00                                      andeq ip, sb, ip, asr r5
000421b0  a4 42 0a 00                                      andeq r4, sl, r4, lsr #5
000421b4  5c a3 09 00                                      andeq sl, sb, ip, asr r3

; FUNCTION 0x000421b8, declared_size=4584, range_size=4584, mode=arm
; class-group: rg_etc1
; alias: _ZN7rg_etc115pack_etc1_blockEPvPKjRNS_16etc1_pack_paramsE
; demangled: rg_etc1::pack_etc1_block(void*, unsigned int const*, rg_etc1::etc1_pack_params&)
; decoder-mode: arm
000421b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
000421bc  1c b0 8d e2                                      add fp, sp, #0x1c
000421c0  bf df 4d e2                                      sub sp, sp, #0x2fc
000421c4  04 00 8d e5                                      str r0, [sp, #4]
000421c8  01 40 a0 e1                                      mov r4, r1
000421cc  fc 0f 9f e5                                      ldr r0, [pc, #0xffc]
000421d0  ff 9f 0f e3                                      movw sb, #0xffff
000421d4  00 00 9f e7                                      ldr r0, [pc, r0]
000421d8  00 00 90 e5                                      ldr r0, [r0]
000421dc  24 00 0b e5                                      str r0, [fp, #-0x24]
000421e0  00 60 94 e5                                      ldr r6, [r4]
000421e4  3c 00 94 e5                                      ldr r0, [r4, #0x3c]
000421e8  06 00 50 e1                                      cmp r0, r6
000421ec  38 00 94 05                                      ldreq r0, [r4, #0x38]
000421f0  06 00 50 01                                      cmpeq r0, r6
000421f4  34 00 94 05                                      ldreq r0, [r4, #0x34]
000421f8  06 00 50 01                                      cmpeq r0, r6
000421fc  25 03 00 0a                                      beq #0x42e98
00042200  04 00 d2 e5                                      ldrb r0, [r2, #4]
00042204  00 00 50 e3                                      cmp r0, #0
00042208  5e 00 00 0a                                      beq #0x42388
0004220c  68 a0 4b e2                                      sub sl, fp, #0x68
00042210  b0 20 8d e5                                      str r2, [sp, #0xb0]
00042214  40 10 a0 e3                                      mov r1, #0x40
00042218  ff 20 a0 e3                                      mov r2, #0xff
0004221c  0a 00 a0 e1                                      mov r0, sl
00042220  8a c0 ff eb                                      bl #0x32450
00042224  a8 1f 9f e5                                      ldr r1, [pc, #0xfa8]
00042228  15 6e 4b e2                                      sub r6, fp, #0x150
0004222c  10 70 86 e2                                      add r7, r6, #0x10
00042230  00 00 a0 e3                                      mov r0, #0
00042234  01 10 8f e0                                      add r1, pc, r1
00042238  08 90 81 e2                                      add sb, r1, #8
0004223c  b4 00 8d e5                                      str r0, [sp, #0xb4]
00042240  00 00 a0 e3                                      mov r0, #0
00042244  00 50 a0 e3                                      mov r5, #0
00042248  34 01 0b e5                                      str r0, [fp, #-0x134]
0004224c  38 01 0b e5                                      str r0, [fp, #-0x138]
00042250  3c 01 0b e5                                      str r0, [fp, #-0x13c]
00042254  40 01 0b e5                                      str r0, [fp, #-0x140]
00042258  44 01 0b e5                                      str r0, [fp, #-0x144]
0004225c  48 01 0b e5                                      str r0, [fp, #-0x148]
00042260  4c 01 0b e5                                      str r0, [fp, #-0x14c]
00042264  4c 40 8d e5                                      str r4, [sp, #0x4c]
00042268  50 01 0b e5                                      str r0, [fp, #-0x150]
0004226c  07 10 a0 e1                                      mov r1, r7
00042270  06 70 a0 e1                                      mov r7, r6
00042274  00 60 91 e5                                      ldr r6, [r1]
00042278  04 00 91 e5                                      ldr r0, [r1, #4]
0004227c  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
00042280  06 61 86 e0                                      add r6, r6, r6, lsl #2
00042284  80 00 80 e0                                      add r0, r0, r0, lsl #1
00042288  00 00 86 e0                                      add r0, r6, r0
0004228c  05 32 f4 e7                                      ldrb r3, [r4, r5, lsl #4]!
00042290  0a 60 a0 e1                                      mov r6, sl
00042294  40 02 83 e0                                      add r0, r3, r0, asr #4
00042298  00 00 d9 e7                                      ldrb r0, [sb, r0]
0004229c  05 02 e6 e7                                      strb r0, [r6, r5, lsl #4]!
000422a0  00 00 43 e0                                      sub r0, r3, r0
000422a4  00 00 87 e5                                      str r0, [r7]
000422a8  00 e0 91 e5                                      ldr lr, [r1]
000422ac  01 50 85 e2                                      add r5, r5, #1
000422b0  04 01 91 e9                                      ldmib r1, {r2, r8}
000422b4  80 01 60 e0                                      rsb r0, r0, r0, lsl #3
000422b8  04 00 55 e3                                      cmp r5, #4
000422bc  04 c0 d4 e5                                      ldrb ip, [r4, #4]
000422c0  88 30 88 e0                                      add r3, r8, r8, lsl #1
000422c4  02 21 82 e0                                      add r2, r2, r2, lsl #2
000422c8  00 00 83 e0                                      add r0, r3, r0
000422cc  02 00 80 e0                                      add r0, r0, r2
000422d0  0e 00 80 e0                                      add r0, r0, lr
000422d4  40 02 8c e0                                      add r0, ip, r0, asr #4
000422d8  00 00 d9 e7                                      ldrb r0, [sb, r0]
000422dc  04 00 c6 e5                                      strb r0, [r6, #4]
000422e0  00 00 4c e0                                      sub r0, ip, r0
000422e4  04 00 87 e5                                      str r0, [r7, #4]
000422e8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
000422ec  08 30 91 e5                                      ldr r3, [r1, #8]
000422f0  80 01 60 e0                                      rsb r0, r0, r0, lsl #3
000422f4  04 c0 91 e5                                      ldr ip, [r1, #4]
000422f8  82 20 82 e0                                      add r2, r2, r2, lsl #1
000422fc  00 00 82 e0                                      add r0, r2, r0
00042300  03 21 83 e0                                      add r2, r3, r3, lsl #2
00042304  02 00 80 e0                                      add r0, r0, r2
00042308  08 20 d4 e5                                      ldrb r2, [r4, #8]
0004230c  0c 00 80 e0                                      add r0, r0, ip
00042310  40 02 82 e0                                      add r0, r2, r0, asr #4
00042314  00 00 d9 e7                                      ldrb r0, [sb, r0]
00042318  08 00 c6 e5                                      strb r0, [r6, #8]
0004231c  00 00 42 e0                                      sub r0, r2, r0
00042320  08 00 87 e5                                      str r0, [r7, #8]
00042324  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00042328  08 20 91 e5                                      ldr r2, [r1, #8]
0004232c  80 01 60 e0                                      rsb r0, r0, r0, lsl #3
00042330  0c 40 d4 e5                                      ldrb r4, [r4, #0xc]
00042334  03 31 83 e0                                      add r3, r3, r3, lsl #2
00042338  00 00 83 e0                                      add r0, r3, r0
0004233c  02 00 80 e0                                      add r0, r0, r2
00042340  40 02 84 e0                                      add r0, r4, r0, asr #4
00042344  00 00 d9 e7                                      ldrb r0, [sb, r0]
00042348  0c 00 c6 e5                                      strb r0, [r6, #0xc]
0004234c  01 60 a0 e1                                      mov r6, r1
00042350  00 00 44 e0                                      sub r0, r4, r0
00042354  0c 00 87 e5                                      str r0, [r7, #0xc]
00042358  c3 ff ff 1a                                      bne #0x4226c
0004235c  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
00042360  01 a0 8a e2                                      add sl, sl, #1
00042364  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
00042368  01 60 a0 e1                                      mov r6, r1
0004236c  01 40 84 e2                                      add r4, r4, #1
00042370  01 00 80 e2                                      add r0, r0, #1
00042374  03 00 50 e3                                      cmp r0, #3
00042378  af ff ff 1a                                      bne #0x4223c
0004237c  b0 20 9d e5                                      ldr r2, [sp, #0xb0]
00042380  68 40 4b e2                                      sub r4, fp, #0x68
00042384  ff 9f 0f e3                                      movw sb, #0xffff
00042388  00 30 a0 e3                                      mov r3, #0
0004238c  00 10 e0 e3                                      mvn r1, #0
00042390  94 30 0b e5                                      str r3, [fp, #-0x94]
00042394  08 70 a0 e3                                      mov r7, #8
00042398  90 30 4b e5                                      strb r3, [fp, #-0x90]
0004239c  04 a0 a0 e3                                      mov sl, #4
000423a0  80 10 0b e5                                      str r1, [fp, #-0x80]
000423a4  78 30 4b e5                                      strb r3, [fp, #-0x78]
000423a8  98 30 0b e5                                      str r3, [fp, #-0x98]
000423ac  a0 30 4b e5                                      strb r3, [fp, #-0xa0]
000423b0  b8 30 4b e5                                      strb r3, [fp, #-0xb8]
000423b4  bc 30 0b e5                                      str r3, [fp, #-0xbc]
000423b8  a8 10 0b e5                                      str r1, [fp, #-0xa8]
000423bc  c0 30 0b e5                                      str r3, [fp, #-0xc0]
000423c0  7c 10 0b e5                                      str r1, [fp, #-0x7c]
000423c4  a4 10 0b e5                                      str r1, [fp, #-0xa4]
000423c8  16 1e 4b e2                                      sub r1, fp, #0x160
000423cc  8c 11 8d e5                                      str r1, [sp, #0x18c]
000423d0  08 10 81 e2                                      add r1, r1, #8
000423d4  4c 0f 9f e5                                      ldr r0, [pc, #0xf4c]
000423d8  88 71 8d e5                                      str r7, [sp, #0x188]
000423dc  ac 11 8d e5                                      str r1, [sp, #0x1ac]
000423e0  40 10 8d e5                                      str r1, [sp, #0x40]
000423e4  16 1e 8d e2                                      add r1, sp, #0x160
000423e8  4c 31 0b e5                                      str r3, [fp, #-0x14c]
000423ec  08 60 81 e2                                      add r6, r1, #8
000423f0  14 11 8d e5                                      str r1, [sp, #0x114]
000423f4  10 10 81 e2                                      add r1, r1, #0x10
000423f8  50 31 0b e5                                      str r3, [fp, #-0x150]
000423fc  d8 30 0b e5                                      str r3, [fp, #-0xd8]
00042400  10 71 8d e5                                      str r7, [sp, #0x110]
00042404  34 61 8d e5                                      str r6, [sp, #0x134]
00042408  e0 60 8d e2                                      add r6, sp, #0xe0
0004240c  30 71 8d e5                                      str r7, [sp, #0x130]
00042410  54 11 8d e5                                      str r1, [sp, #0x154]
00042414  dc 30 0b e5                                      str r3, [fp, #-0xdc]
00042418  a8 71 8d e5                                      str r7, [sp, #0x1a8]
0004241c  50 71 8d e5                                      str r7, [sp, #0x150]
00042420  06 00 92 e8                                      ldm r2, {r1, r2}
00042424  d8 30 cd e5                                      strb r3, [sp, #0xd8]
00042428  bc 20 8d e5                                      str r2, [sp, #0xbc]
0004242c  b8 10 8d e5                                      str r1, [sp, #0xb8]
00042430  01 10 a0 e3                                      mov r1, #1
00042434  00 00 9f e7                                      ldr r0, [pc, r0]
00042438  c4 60 8d e5                                      str r6, [sp, #0xc4]
0004243c  d0 10 8d e5                                      str r1, [sp, #0xd0]
00042440  c0 70 8d e5                                      str r7, [sp, #0xc0]
00042444  c8 30 cd e5                                      strb r3, [sp, #0xc8]
00042448  cc 00 8d e5                                      str r0, [sp, #0xcc]
0004244c  5e 0f 8d e2                                      add r0, sp, #0x178
00042450  20 00 80 e2                                      add r0, r0, #0x20
00042454  00 00 8d e5                                      str r0, [sp]
00042458  01 0c 8d e2                                      add r0, sp, #0x100
0004245c  d4 30 8d e5                                      str r3, [sp, #0xd4]
00042460  20 10 80 e2                                      add r1, r0, #0x20
00042464  0c 10 8d e5                                      str r1, [sp, #0xc]
00042468  48 10 80 e2                                      add r1, r0, #0x48
0004246c  40 00 80 e2                                      add r0, r0, #0x40
00042470  68 00 8d e5                                      str r0, [sp, #0x68]
00042474  9c 01 9d e5                                      ldr r0, [sp, #0x19c]
00042478  34 00 8d e5                                      str r0, [sp, #0x34]
0004247c  a0 01 9d e5                                      ldr r0, [sp, #0x1a0]
00042480  24 00 8d e5                                      str r0, [sp, #0x24]
00042484  a4 01 9d e5                                      ldr r0, [sp, #0x1a4]
00042488  28 00 8d e5                                      str r0, [sp, #0x28]
0004248c  ac 01 9d e5                                      ldr r0, [sp, #0x1ac]
00042490  08 00 8d e5                                      str r0, [sp, #8]
00042494  b0 01 dd e5                                      ldrb r0, [sp, #0x1b0]
00042498  18 00 8d e5                                      str r0, [sp, #0x18]
0004249c  98 01 9d e5                                      ldr r0, [sp, #0x198]
000424a0  2c 00 8d e5                                      str r0, [sp, #0x2c]
000424a4  7c 01 9d e5                                      ldr r0, [sp, #0x17c]
000424a8  3c 00 8d e5                                      str r0, [sp, #0x3c]
000424ac  78 01 9d e5                                      ldr r0, [sp, #0x178]
000424b0  38 00 8d e5                                      str r0, [sp, #0x38]
000424b4  84 01 9d e5                                      ldr r0, [sp, #0x184]
000424b8  30 00 8d e5                                      str r0, [sp, #0x30]
000424bc  90 01 dd e5                                      ldrb r0, [sp, #0x190]
000424c0  1c 00 8d e5                                      str r0, [sp, #0x1c]
000424c4  80 01 9d e5                                      ldr r0, [sp, #0x180]
000424c8  20 00 8d e5                                      str r0, [sp, #0x20]
000424cc  90 0e 9f e5                                      ldr r0, [pc, #0xe90]
000424d0  48 10 8d e5                                      str r1, [sp, #0x48]
000424d4  00 00 8f e0                                      add r0, pc, r0
000424d8  44 00 8d e5                                      str r0, [sp, #0x44]
000424dc  70 0e 9f e5                                      ldr r0, [pc, #0xe70]
000424e0  4c 40 8d e5                                      str r4, [sp, #0x4c]
000424e4  00 00 8f e0                                      add r0, pc, r0
000424e8  50 00 8d e5                                      str r0, [sp, #0x50]
000424ec  58 0e 9f e5                                      ldr r0, [pc, #0xe58]
000424f0  00 00 8f e0                                      add r0, pc, r0
000424f4  a8 00 8d e5                                      str r0, [sp, #0xa8]
000424f8  48 0e 9f e5                                      ldr r0, [pc, #0xe48]
000424fc  00 00 8f e0                                      add r0, pc, r0
00042500  90 00 8d e5                                      str r0, [sp, #0x90]
00042504  34 0e 9f e5                                      ldr r0, [pc, #0xe34]
00042508  00 00 8f e0                                      add r0, pc, r0
0004250c  80 00 8d e5                                      str r0, [sp, #0x80]
00042510  2c 0e 9f e5                                      ldr r0, [pc, #0xe2c]
00042514  00 00 8f e0                                      add r0, pc, r0
00042518  7c 00 8d e5                                      str r0, [sp, #0x7c]
0004251c  00 00 e0 e3                                      mvn r0, #0
00042520  58 00 8d e5                                      str r0, [sp, #0x58]
00042524  00 00 e0 e3                                      mvn r0, #0
00042528  54 00 8d e5                                      str r0, [sp, #0x54]
0004252c  00 00 a0 e3                                      mov r0, #0
00042530  14 00 8d e5                                      str r0, [sp, #0x14]
00042534  00 00 a0 e3                                      mov r0, #0
00042538  10 00 8d e5                                      str r0, [sp, #0x10]
0004253c  00 00 a0 e3                                      mov r0, #0
00042540  5c 00 8d e5                                      str r0, [sp, #0x5c]
00042544  00 00 a0 e3                                      mov r0, #0
00042548  00 00 50 e3                                      cmp r0, #0
0004254c  74 00 8d e5                                      str r0, [sp, #0x74]
00042550  01 00 00 13                                      movwne r0, #1
00042554  00 80 a0 e3                                      mov r8, #0
00042558  60 00 8d e5                                      str r0, [sp, #0x60]
0004255c  00 00 a0 e3                                      mov r0, #0
00042560  00 10 a0 e3                                      mov r1, #0
00042564  01 80 00 03                                      movweq r8, #1
00042568  00 70 a0 e3                                      mov r7, #0
0004256c  70 00 8d e5                                      str r0, [sp, #0x70]
00042570  06 00 00 ea                                      b #0x42590
00042574  94 00 9d e5                                      ldr r0, [sp, #0x94]
00042578  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
0004257c  78 20 9d e5                                      ldr r2, [sp, #0x78]
00042580  01 00 70 e3                                      cmn r0, #1
00042584  84 70 9d e5                                      ldr r7, [sp, #0x84]
00042588  d0 00 00 1a                                      bne #0x428d0
0004258c  ee 00 00 ea                                      b #0x4294c
00042590  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00042594  6c 70 8d e5                                      str r7, [sp, #0x6c]
00042598  00 00 50 e3                                      cmp r0, #0
0004259c  78 10 8d e5                                      str r1, [sp, #0x78]
000425a0  06 00 00 0a                                      beq #0x425c0
000425a4  81 02 84 e0                                      add r0, r4, r1, lsl #5
000425a8  06 10 a0 e1                                      mov r1, r6
000425ac  cc 00 b0 e8                                      ldm r0!, {r2, r3, r6, r7}
000425b0  cc 00 a1 e8                                      stm r1!, {r2, r3, r6, r7}
000425b4  cc 00 90 e8                                      ldm r0, {r2, r3, r6, r7}
000425b8  cc 00 81 e8                                      stm r1, {r2, r3, r6, r7}
000425bc  0e 00 00 ea                                      b #0x425fc
000425c0  04 00 a0 e1                                      mov r0, r4
000425c4  81 11 b0 e7                                      ldr r1, [r0, r1, lsl #3]!
000425c8  e0 10 8d e5                                      str r1, [sp, #0xe0]
000425cc  10 10 90 e5                                      ldr r1, [r0, #0x10]
000425d0  14 20 90 e5                                      ldr r2, [r0, #0x14]
000425d4  e4 10 8d e5                                      str r1, [sp, #0xe4]
000425d8  20 10 90 e5                                      ldr r1, [r0, #0x20]
000425dc  24 30 90 e5                                      ldr r3, [r0, #0x24]
000425e0  e8 10 8d e5                                      str r1, [sp, #0xe8]
000425e4  30 10 90 e5                                      ldr r1, [r0, #0x30]
000425e8  34 70 90 e5                                      ldr r7, [r0, #0x34]
000425ec  ec 10 8d e5                                      str r1, [sp, #0xec]
000425f0  f0 10 8d e2                                      add r1, sp, #0xf0
000425f4  04 00 90 e5                                      ldr r0, [r0, #4]
000425f8  8d 00 81 e8                                      stm r1, {r0, r2, r3, r7}
000425fc  68 10 9d e5                                      ldr r1, [sp, #0x68]
00042600  00 00 e0 e3                                      mvn r0, #0
00042604  00 00 81 e5                                      str r0, [r1]
00042608  04 00 81 e5                                      str r0, [r1, #4]
0004260c  b8 00 9d e5                                      ldr r0, [sp, #0xb8]
00042610  78 20 9d e5                                      ldr r2, [sp, #0x78]
00042614  01 00 50 e3                                      cmp r0, #1
00042618  cb 00 00 ba                                      blt #0x4294c
0004261c  74 00 9d e5                                      ldr r0, [sp, #0x74]
00042620  00 00 92 e1                                      orrs r0, r2, r0
00042624  c8 00 00 0a                                      beq #0x4294c
00042628  e0 00 9d e5                                      ldr r0, [sp, #0xe0]
0004262c  fc 10 9d e5                                      ldr r1, [sp, #0xfc]
00042630  00 00 51 e1                                      cmp r1, r0
00042634  c4 00 00 1a                                      bne #0x4294c
00042638  f8 10 9d e5                                      ldr r1, [sp, #0xf8]
0004263c  00 00 51 e1                                      cmp r1, r0
00042640  f4 10 9d 05                                      ldreq r1, [sp, #0xf4]
00042644  00 00 51 01                                      cmpeq r1, r0
00042648  bf 00 00 1a                                      bne #0x4294c
0004264c  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
00042650  00 00 51 e1                                      cmp r1, r0
00042654  ec 10 9d 05                                      ldreq r1, [sp, #0xec]
00042658  00 00 51 01                                      cmpeq r1, r0
0004265c  ba 00 00 1a                                      bne #0x4294c
00042660  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
00042664  00 00 51 e1                                      cmp r1, r0
00042668  e4 10 9d 05                                      ldreq r1, [sp, #0xe4]
0004266c  00 00 51 01                                      cmpeq r1, r0
00042670  b5 00 00 1a                                      bne #0x4294c
00042674  e1 10 dd e5                                      ldrb r1, [sp, #0xe1]
00042678  00 00 52 e3                                      cmp r2, #0
0004267c  b4 10 8d e5                                      str r1, [sp, #0xb4]
00042680  02 70 a0 e1                                      mov r7, r2
00042684  01 1c 8d e2                                      add r1, sp, #0x100
00042688  00 60 a0 e3                                      mov r6, #0
0004268c  08 70 81 12                                      addne r7, r1, #8
00042690  74 10 9d e5                                      ldr r1, [sp, #0x74]
00042694  e0 30 8d e2                                      add r3, sp, #0xe0
00042698  00 00 51 e3                                      cmp r1, #0
0004269c  00 10 a0 e3                                      mov r1, #0
000426a0  84 10 8d e5                                      str r1, [sp, #0x84]
000426a4  00 10 e0 e3                                      mvn r1, #0
000426a8  94 10 8d e5                                      str r1, [sp, #0x94]
000426ac  00 10 a0 e3                                      mov r1, #0
000426b0  88 10 8d e5                                      str r1, [sp, #0x88]
000426b4  00 10 a0 e3                                      mov r1, #0
000426b8  8c 10 8d e5                                      str r1, [sp, #0x8c]
000426bc  00 70 00 13                                      movwne r7, #0
000426c0  00 10 a0 e3                                      mov r1, #0
000426c4  04 00 00 ea                                      b #0x426dc
000426c8  64 10 9d e5                                      ldr r1, [sp, #0x64]
000426cc  02 00 51 e3                                      cmp r1, #2
000426d0  a7 ff ff 8a                                      bhi #0x42574
000426d4  e0 30 8d e2                                      add r3, sp, #0xe0
000426d8  01 00 d3 e7                                      ldrb r0, [r3, r1]
000426dc  01 50 81 e2                                      add r5, r1, #1
000426e0  0d 2d 8f e2                                      add r2, pc, #0x340
000426e4  70 00 ef e6                                      uxtb r0, r0
000426e8  64 50 8d e5                                      str r5, [sp, #0x64]
000426ec  a0 00 8d e5                                      str r0, [sp, #0xa0]
000426f0  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
000426f4  05 21 92 e7                                      ldr r2, [r2, r5, lsl #2]
000426f8  ac 20 8d e5                                      str r2, [sp, #0xac]
000426fc  70 00 ef e6                                      uxtb r0, r0
00042700  b0 00 8d e5                                      str r0, [sp, #0xb0]
00042704  02 00 d3 e7                                      ldrb r0, [r3, r2]
00042708  00 20 e0 e3                                      mvn r2, #0
0004270c  b4 00 8d e5                                      str r0, [sp, #0xb4]
00042710  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
00042714  9c 20 8d e5                                      str r2, [sp, #0x9c]
00042718  00 20 82 e0                                      add r2, r2, r0
0004271c  a4 60 8d e5                                      str r6, [sp, #0xa4]
00042720  ff 00 52 e3                                      cmp r2, #0xff
00042724  02 00 a0 e1                                      mov r0, r2
00042728  ff 00 a0 a3                                      movge r0, #0xff
0004272c  00 00 52 e3                                      cmp r2, #0
00042730  00 20 a0 e3                                      mov r2, #0
00042734  02 00 a0 d1                                      movle r0, r2
00042738  02 21 c0 e3                                      bic r2, r0, #0x80000000
0004273c  00 00 52 e3                                      cmp r2, #0
00042740  04 00 00 0a                                      beq #0x42758
00042744  ff 00 52 e3                                      cmp r2, #0xff
00042748  05 00 00 1a                                      bne #0x42764
0004274c  80 20 9d e5                                      ldr r2, [sp, #0x80]
00042750  42 20 82 e2                                      add r2, r2, #0x42
00042754  06 00 00 ea                                      b #0x42774
00042758  dc 2b 9f e5                                      ldr r2, [pc, #0xbdc]
0004275c  02 20 8f e0                                      add r2, pc, r2
00042760  03 00 00 ea                                      b #0x42774
00042764  80 20 80 e0                                      add r2, r0, r0, lsl #1
00042768  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
0004276c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00042770  18 20 42 e2                                      sub r2, r2, #0x18
00042774  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
00042778  b0 60 d2 e1                                      ldrh r6, [r2]
0004277c  03 00 40 e0                                      sub r0, r0, r3
00042780  90 00 00 e0                                      mul r0, r0, r0
00042784  98 00 8d e5                                      str r0, [sp, #0x98]
00042788  02 20 82 e2                                      add r2, r2, #2
0004278c  01 00 06 e2                                      and r0, r6, #1
00042790  08 00 50 e1                                      cmp r0, r8
00042794  1f 00 00 1a                                      bne #0x42818
00042798  00 00 57 e3                                      cmp r7, #0
0004279c  76 c0 ff e6                                      uxth ip, r6
000427a0  01 00 1c 12                                      andsne r0, ip, #1
000427a4  1f 00 00 0a                                      beq #0x42828
000427a8  01 00 d7 e7                                      ldrb r0, [r7, r1]
000427ac  2c 64 8a e0                                      add r6, sl, ip, lsr #8
000427b0  00 00 46 e0                                      sub r0, r6, r0
000427b4  07 00 50 e3                                      cmp r0, #7
000427b8  16 00 00 8a                                      bhi #0x42818
000427bc  99 0f 8f e2                                      add r0, pc, #0x264
000427c0  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
000427c4  7c 60 ef e6                                      uxtb r6, ip
000427c8  ac 50 9d e5                                      ldr r5, [sp, #0xac]
000427cc  01 01 90 e7                                      ldr r0, [r0, r1, lsl #2]
000427d0  86 44 83 e0                                      add r4, r3, r6, lsl #9
000427d4  04 e0 a0 e3                                      mov lr, #4
000427d8  04 a0 a0 e3                                      mov sl, #4
000427dc  00 30 d7 e7                                      ldrb r3, [r7, r0]
000427e0  b4 00 9d e5                                      ldr r0, [sp, #0xb4]
000427e4  80 00 84 e0                                      add r0, r4, r0, lsl #1
000427e8  b0 60 d0 e1                                      ldrh r6, [r0]
000427ec  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
000427f0  80 00 84 e0                                      add r0, r4, r0, lsl #1
000427f4  05 40 d7 e7                                      ldrb r4, [r7, r5]
000427f8  b0 00 d0 e1                                      ldrh r0, [r0]
000427fc  70 50 ee e6                                      uxtab r5, lr, r0
00042800  03 30 45 e0                                      sub r3, r5, r3
00042804  76 50 ee e6                                      uxtab r5, lr, r6
00042808  04 40 45 e0                                      sub r4, r5, r4
0004280c  03 30 84 e1                                      orr r3, r4, r3
00042810  07 00 53 e3                                      cmp r3, #7
00042814  0c 00 00 9a                                      bls #0x4284c
00042818  b2 60 d2 e0                                      ldrh r6, [r2], #2
0004281c  09 00 56 e1                                      cmp r6, sb
00042820  d9 ff ff 1a                                      bne #0x4278c
00042824  1d 00 00 ea                                      b #0x428a0
00042828  90 30 9d e5                                      ldr r3, [sp, #0x90]
0004282c  7c 00 ef e6                                      uxtb r0, ip
00042830  80 04 83 e0                                      add r0, r3, r0, lsl #9
00042834  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
00042838  83 60 80 e0                                      add r6, r0, r3, lsl #1
0004283c  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
00042840  b0 60 d6 e1                                      ldrh r6, [r6]
00042844  83 00 80 e0                                      add r0, r0, r3, lsl #1
00042848  b0 00 d0 e1                                      ldrh r0, [r0]
0004284c  26 34 a0 e1                                      lsr r3, r6, #8
00042850  98 50 9d e5                                      ldr r5, [sp, #0x98]
00042854  83 53 03 e1                                      smlabb r3, r3, r3, r5
00042858  20 44 a0 e1                                      lsr r4, r0, #8
0004285c  84 34 09 e1                                      smlabb sb, r4, r4, r3
00042860  94 30 9d e5                                      ldr r3, [sp, #0x94]
00042864  03 00 59 e1                                      cmp sb, r3
00042868  08 00 00 2a                                      bhs #0x42890
0004286c  76 30 ef e6                                      uxtb r3, r6
00042870  70 00 ef e6                                      uxtb r0, r0
00042874  00 00 59 e3                                      cmp sb, #0
00042878  8c 30 8d e5                                      str r3, [sp, #0x8c]
0004287c  88 00 8d e5                                      str r0, [sp, #0x88]
00042880  0d 00 00 0a                                      beq #0x428bc
00042884  94 90 8d e5                                      str sb, [sp, #0x94]
00042888  84 10 8d e5                                      str r1, [sp, #0x84]
0004288c  a4 c0 8d e5                                      str ip, [sp, #0xa4]
00042890  b0 60 d2 e1                                      ldrh r6, [r2]
00042894  ff 9f 0f e3                                      movw sb, #0xffff
00042898  09 00 56 e1                                      cmp r6, sb
0004289c  b9 ff ff 1a                                      bne #0x42788
000428a0  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
000428a4  a4 60 9d e5                                      ldr r6, [sp, #0xa4]
000428a8  01 00 82 e2                                      add r0, r2, #1
000428ac  01 00 52 e3                                      cmp r2, #1
000428b0  00 20 a0 e1                                      mov r2, r0
000428b4  95 ff ff ba                                      blt #0x42710
000428b8  82 ff ff ea                                      b #0x426c8
000428bc  00 00 a0 e3                                      mov r0, #0
000428c0  0c 60 a0 e1                                      mov r6, ip
000428c4  01 70 a0 e1                                      mov r7, r1
000428c8  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
000428cc  ff 9f 0f e3                                      movw sb, #0xffff
000428d0  00 c0 a0 e1                                      mov ip, r0
000428d4  01 00 a0 e3                                      mov r0, #1
000428d8  06 00 c0 e1                                      bic r0, r0, r6
000428dc  58 01 cd e5                                      strb r0, [sp, #0x158]
000428e0  54 01 9d e5                                      ldr r0, [sp, #0x154]
000428e4  56 12 e1 e7                                      ubfx r1, r6, #4, #2
000428e8  4e 2f 8f e2                                      add r2, pc, #0x138
000428ec  07 50 a0 e1                                      mov r5, r7
000428f0  07 31 b2 e7                                      ldr r3, [r2, r7, lsl #2]!
000428f4  01 71 00 e3                                      movw r7, #0x101
000428f8  01 71 40 e3                                      movt r7, #0x101
000428fc  91 07 01 e0                                      mul r1, r1, r7
00042900  08 70 a0 e3                                      mov r7, #8
00042904  50 71 8d e5                                      str r7, [sp, #0x150]
00042908  d6 70 e2 e7                                      ubfx r7, r6, #1, #3
0004290c  4c 71 8d e5                                      str r7, [sp, #0x14c]
00042910  04 20 92 e5                                      ldr r2, [r2, #4]
00042914  26 74 a0 e1                                      lsr r7, r6, #8
00042918  04 10 80 e5                                      str r1, [r0, #4]
0004291c  00 10 80 e5                                      str r1, [r0]
00042920  48 00 9d e5                                      ldr r0, [sp, #0x48]
00042924  88 10 9d e5                                      ldr r1, [sp, #0x88]
00042928  05 70 c0 e7                                      strb r7, [r0, r5]
0004292c  03 10 c0 e7                                      strb r1, [r0, r3]
00042930  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
00042934  02 10 c0 e7                                      strb r1, [r0, r2]
00042938  8c 01 a0 e1                                      lsl r0, ip, #3
0004293c  00 10 a0 e3                                      mov r1, #0
00042940  68 20 9d e5                                      ldr r2, [sp, #0x68]
00042944  f0 00 c2 e1                                      strd r0, r1, [r2]
00042948  78 20 9d e5                                      ldr r2, [sp, #0x78]
0004294c  00 00 a0 e3                                      mov r0, #0
00042950  d8 00 cd e5                                      strb r0, [sp, #0xd8]
00042954  60 00 9d e5                                      ldr r0, [sp, #0x60]
00042958  c8 00 cd e5                                      strb r0, [sp, #0xc8]
0004295c  74 00 9d e5                                      ldr r0, [sp, #0x74]
00042960  00 00 50 e3                                      cmp r0, #0
00042964  04 00 00 1a                                      bne #0x4297c
00042968  00 00 52 e3                                      cmp r2, #0
0004296c  01 10 a0 13                                      movne r1, #1
00042970  08 01 9d 15                                      ldrne r0, [sp, #0x108]
00042974  d8 10 cd 15                                      strbne r1, [sp, #0xd8]
00042978  d4 00 8d 15                                      strne r0, [sp, #0xd4]
0004297c  b8 00 9d e5                                      ldr r0, [sp, #0xb8]
00042980  e0 60 8d e2                                      add r6, sp, #0xe0
00042984  04 50 a0 e1                                      mov r5, r4
00042988  02 00 50 e3                                      cmp r0, #2
0004298c  03 00 00 1a                                      bne #0x429a0
00042990  b8 09 9f e5                                      ldr r0, [pc, #0x9b8]
00042994  09 10 a0 e3                                      mov r1, #9
00042998  00 00 8f e0                                      add r0, pc, r0
0004299c  05 00 00 ea                                      b #0x429b8
000429a0  01 00 50 e3                                      cmp r0, #1
000429a4  50 00 9d e5                                      ldr r0, [sp, #0x50]
000429a8  a8 19 9f e5                                      ldr r1, [pc, #0x9a8]
000429ac  01 00 8f 00                                      addeq r0, pc, r1
000429b0  01 10 a0 e3                                      mov r1, #1
000429b4  03 10 00 03                                      movweq r1, #3
000429b8  cc 00 8d e5                                      str r0, [sp, #0xcc]
000429bc  01 0c 8d e2                                      add r0, sp, #0x100
000429c0  82 42 80 e0                                      add r4, r0, r2, lsl #5
000429c4  15 7e 4b e2                                      sub r7, fp, #0x150
000429c8  d0 10 8d e5                                      str r1, [sp, #0xd0]
000429cc  b8 10 8d e2                                      add r1, sp, #0xb8
000429d0  07 00 a0 e1                                      mov r0, r7
000429d4  04 20 a0 e1                                      mov r2, r4
000429d8  9f be ff eb                                      bl #0x3245c
000429dc  07 00 a0 e1                                      mov r0, r7
000429e0  a0 be ff eb                                      bl #0x32468
000429e4  01 00 50 e3                                      cmp r0, #1
000429e8  69 00 00 1a                                      bne #0x42b94
000429ec  b8 20 9d e5                                      ldr r2, [sp, #0xb8]
000429f0  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
000429f4  01 00 52 e3                                      cmp r2, #1
000429f8  2d 00 00 ba                                      blt #0x42ab4
000429fc  d0 00 c4 e1                                      ldrd r0, r1, [r4]
00042a00  b9 3b 00 e3                                      movw r3, #0xbb9
00042a04  03 30 50 e0                                      subs r3, r0, r3
00042a08  00 30 d1 e2                                      sbcs r3, r1, #0
00042a0c  18 00 00 3a                                      blo #0x42a74
00042a10  01 00 52 e3                                      cmp r2, #1
00042a14  07 00 00 1a                                      bne #0x42a38
00042a18  3c 09 9f e5                                      ldr r0, [pc, #0x93c]
00042a1c  04 10 a0 e3                                      mov r1, #4
00042a20  00 00 8f e0                                      add r0, pc, r0
00042a24  0b 00 00 ea                                      b #0x42a58
00042a28  01 00 00 00                                      andeq r0, r0, r1
00042a2c  02 00 00 00                                      andeq r0, r0, r2
00042a30  00 00 00 00                                      andeq r0, r0, r0
00042a34  01 00 00 00                                      andeq r0, r0, r1
00042a38  70 27 01 e3                                      movw r2, #0x1770
00042a3c  00 00 52 e0                                      subs r0, r2, r0
00042a40  00 00 f1 e2                                      rscs r0, r1, #0
00042a44  14 19 9f e5                                      ldr r1, [pc, #0x914]
00042a48  44 00 9d e5                                      ldr r0, [sp, #0x44]
00042a4c  01 00 8f 30                                      addlo r0, pc, r1
00042a50  02 10 a0 e3                                      mov r1, #2
00042a54  08 10 00 33                                      movwlo r1, #8
00042a58  cc 00 8d e5                                      str r0, [sp, #0xcc]
00042a5c  15 0e 4b e2                                      sub r0, fp, #0x150
00042a60  d0 10 8d e5                                      str r1, [sp, #0xd0]
00042a64  7f be ff eb                                      bl #0x32468
00042a68  01 00 50 e3                                      cmp r0, #1
00042a6c  48 00 00 1a                                      bne #0x42b94
00042a70  d0 00 c4 e1                                      ldrd r0, r1, [r4]
00042a74  68 20 9d e5                                      ldr r2, [sp, #0x68]
00042a78  d0 20 c2 e1                                      ldrd r2, r3, [r2]
00042a7c  00 00 52 e0                                      subs r0, r2, r0
00042a80  01 00 d3 e0                                      sbcs r0, r3, r1
00042a84  0a 00 00 2a                                      bhs #0x42ab4
00042a88  48 01 9d e5                                      ldr r0, [sp, #0x148]
00042a8c  08 00 84 e5                                      str r0, [r4, #8]
00042a90  58 01 dd e5                                      ldrb r0, [sp, #0x158]
00042a94  18 00 c4 e5                                      strb r0, [r4, #0x18]
00042a98  4c 01 9d e5                                      ldr r0, [sp, #0x14c]
00042a9c  0c 00 84 e5                                      str r0, [r4, #0xc]
00042aa0  0c 00 84 e8                                      stm r4, {r2, r3}
00042aa4  50 21 9d e5                                      ldr r2, [sp, #0x150]
00042aa8  54 11 9d e5                                      ldr r1, [sp, #0x154]
00042aac  14 00 94 e5                                      ldr r0, [r4, #0x14]
00042ab0  49 bd ff eb                                      bl #0x31fdc
00042ab4  d0 00 c4 e1                                      ldrd r0, r1, [r4]
00042ab8  70 20 9d e5                                      ldr r2, [sp, #0x70]
00042abc  07 70 90 e0                                      adds r7, r0, r7
00042ac0  58 00 9d e5                                      ldr r0, [sp, #0x58]
00042ac4  02 20 a1 e0                                      adc r2, r1, r2
00042ac8  00 00 57 e0                                      subs r0, r7, r0
00042acc  54 00 9d e5                                      ldr r0, [sp, #0x54]
00042ad0  00 00 d2 e0                                      sbcs r0, r2, r0
00042ad4  2e 00 00 2a                                      bhs #0x42b94
00042ad8  78 10 9d e5                                      ldr r1, [sp, #0x78]
00042adc  05 40 a0 e1                                      mov r4, r5
00042ae0  70 20 8d e5                                      str r2, [sp, #0x70]
00042ae4  01 10 81 e2                                      add r1, r1, #1
00042ae8  01 00 51 e3                                      cmp r1, #1
00042aec  a7 fe ff 9a                                      bls #0x42590
00042af0  00 01 9d e5                                      ldr r0, [sp, #0x100]
00042af4  38 00 8d e5                                      str r0, [sp, #0x38]
00042af8  04 01 9d e5                                      ldr r0, [sp, #0x104]
00042afc  3c 00 8d e5                                      str r0, [sp, #0x3c]
00042b00  08 01 9d e5                                      ldr r0, [sp, #0x108]
00042b04  20 00 8d e5                                      str r0, [sp, #0x20]
00042b08  0c 01 9d e5                                      ldr r0, [sp, #0x10c]
00042b0c  30 00 8d e5                                      str r0, [sp, #0x30]
00042b10  18 01 dd e5                                      ldrb r0, [sp, #0x118]
00042b14  10 21 9d e5                                      ldr r2, [sp, #0x110]
00042b18  14 11 9d e5                                      ldr r1, [sp, #0x114]
00042b1c  1c 00 8d e5                                      str r0, [sp, #0x1c]
00042b20  16 0e 4b e2                                      sub r0, fp, #0x160
00042b24  2c bd ff eb                                      bl #0x31fdc
00042b28  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00042b2c  04 50 a0 e1                                      mov r5, r4
00042b30  00 10 90 e5                                      ldr r1, [r0]
00042b34  04 00 90 e5                                      ldr r0, [r0, #4]
00042b38  34 00 8d e5                                      str r0, [sp, #0x34]
00042b3c  28 01 9d e5                                      ldr r0, [sp, #0x128]
00042b40  08 40 9d e5                                      ldr r4, [sp, #8]
00042b44  2c 10 8d e5                                      str r1, [sp, #0x2c]
00042b48  24 00 8d e5                                      str r0, [sp, #0x24]
00042b4c  2c 01 9d e5                                      ldr r0, [sp, #0x12c]
00042b50  30 21 9d e5                                      ldr r2, [sp, #0x130]
00042b54  34 11 9d e5                                      ldr r1, [sp, #0x134]
00042b58  28 00 8d e5                                      str r0, [sp, #0x28]
00042b5c  38 01 dd e5                                      ldrb r0, [sp, #0x138]
00042b60  18 00 8d e5                                      str r0, [sp, #0x18]
00042b64  04 00 a0 e1                                      mov r0, r4
00042b68  1b bd ff eb                                      bl #0x31fdc
00042b6c  74 00 9d e5                                      ldr r0, [sp, #0x74]
00042b70  10 00 8d e5                                      str r0, [sp, #0x10]
00042b74  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00042b78  40 40 8d e5                                      str r4, [sp, #0x40]
00042b7c  05 40 a0 e1                                      mov r4, r5
00042b80  14 00 8d e5                                      str r0, [sp, #0x14]
00042b84  70 00 9d e5                                      ldr r0, [sp, #0x70]
00042b88  58 70 8d e5                                      str r7, [sp, #0x58]
00042b8c  54 00 8d e5                                      str r0, [sp, #0x54]
00042b90  00 00 00 ea                                      b #0x42b98
00042b94  05 40 a0 e1                                      mov r4, r5
00042b98  74 00 9d e5                                      ldr r0, [sp, #0x74]
00042b9c  01 00 80 e2                                      add r0, r0, #1
00042ba0  02 00 50 e3                                      cmp r0, #2
00042ba4  67 fe ff 1a                                      bne #0x42548
00042ba8  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00042bac  01 00 80 e2                                      add r0, r0, #1
00042bb0  5c 00 8d e5                                      str r0, [sp, #0x5c]
00042bb4  02 00 50 e3                                      cmp r0, #2
00042bb8  61 fe ff 1a                                      bne #0x42544
00042bbc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00042bc0  90 01 cd e5                                      strb r0, [sp, #0x190]
00042bc4  20 00 9d e5                                      ldr r0, [sp, #0x20]
00042bc8  80 01 8d e5                                      str r0, [sp, #0x180]
00042bcc  30 00 9d e5                                      ldr r0, [sp, #0x30]
00042bd0  84 01 8d e5                                      str r0, [sp, #0x184]
00042bd4  38 00 9d e5                                      ldr r0, [sp, #0x38]
00042bd8  78 01 8d e5                                      str r0, [sp, #0x178]
00042bdc  24 00 9d e5                                      ldr r0, [sp, #0x24]
00042be0  a0 01 8d e5                                      str r0, [sp, #0x1a0]
00042be4  18 00 9d e5                                      ldr r0, [sp, #0x18]
00042be8  b0 01 cd e5                                      strb r0, [sp, #0x1b0]
00042bec  28 00 9d e5                                      ldr r0, [sp, #0x28]
00042bf0  a4 01 8d e5                                      str r0, [sp, #0x1a4]
00042bf4  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00042bf8  7c 01 8d e5                                      str r0, [sp, #0x17c]
00042bfc  00 00 9d e5                                      ldr r0, [sp]
00042c00  34 10 9d e5                                      ldr r1, [sp, #0x34]
00042c04  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00042c08  00 20 80 e5                                      str r2, [r0]
00042c0c  04 10 80 e5                                      str r1, [r0, #4]
00042c10  10 40 9d e5                                      ldr r4, [sp, #0x10]
00042c14  80 31 dd e5                                      ldrb r3, [sp, #0x180]
00042c18  81 21 dd e5                                      ldrb r2, [sp, #0x181]
00042c1c  00 00 54 e3                                      cmp r4, #0
00042c20  82 01 dd e5                                      ldrb r0, [sp, #0x182]
00042c24  a0 71 dd e5                                      ldrb r7, [sp, #0x1a0]
00042c28  a2 11 dd e5                                      ldrb r1, [sp, #0x1a2]
00042c2c  a1 61 dd e5                                      ldrb r6, [sp, #0x1a1]
00042c30  05 00 00 0a                                      beq #0x42c4c
00042c34  04 c0 9d e5                                      ldr ip, [sp, #4]
00042c38  03 32 87 e1                                      orr r3, r7, r3, lsl #4
00042c3c  02 22 86 e1                                      orr r2, r6, r2, lsl #4
00042c40  00 30 cc e5                                      strb r3, [ip]
00042c44  04 30 a0 e3                                      mov r3, #4
00042c48  0d 00 00 ea                                      b #0x42c84
00042c4c  03 70 47 e0                                      sub r7, r7, r3
00042c50  00 10 41 e0                                      sub r1, r1, r0
00042c54  00 00 57 e3                                      cmp r7, #0
00042c58  02 60 46 e0                                      sub r6, r6, r2
00042c5c  08 70 87 b2                                      addlt r7, r7, #8
00042c60  00 00 51 e3                                      cmp r1, #0
00042c64  08 10 81 b2                                      addlt r1, r1, #8
00042c68  00 00 56 e3                                      cmp r6, #0
00042c6c  04 c0 9d e5                                      ldr ip, [sp, #4]
00042c70  08 60 86 b2                                      addlt r6, r6, #8
00042c74  83 31 87 e1                                      orr r3, r7, r3, lsl #3
00042c78  82 21 86 e1                                      orr r2, r6, r2, lsl #3
00042c7c  00 30 cc e5                                      strb r3, [ip]
00042c80  03 30 a0 e3                                      mov r3, #3
00042c84  40 90 9d e5                                      ldr sb, [sp, #0x40]
00042c88  10 03 81 e1                                      orr r0, r1, r0, lsl r3
00042c8c  02 00 cc e5                                      strb r0, [ip, #2]
00042c90  16 ee 4b e2                                      sub lr, fp, #0x160
00042c94  01 20 cc e5                                      strb r2, [ip, #1]
00042c98  02 20 a0 e3                                      mov r2, #2
00042c9c  a4 11 9d e5                                      ldr r1, [sp, #0x1a4]
00042ca0  84 20 02 e0                                      and r2, r2, r4, lsl #1
00042ca4  84 01 9d e5                                      ldr r0, [sp, #0x184]
00042ca8  01 11 82 e1                                      orr r1, r2, r1, lsl #2
00042cac  80 02 81 e1                                      orr r0, r1, r0, lsl #5
00042cb0  14 10 9d e5                                      ldr r1, [sp, #0x14]
00042cb4  02 00 20 e2                                      eor r0, r0, #2
00042cb8  00 00 51 e3                                      cmp r1, #0
00042cbc  01 00 80 e1                                      orr r0, r0, r1
00042cc0  03 00 cc e5                                      strb r0, [ip, #3]
00042cc4  21 00 00 0a                                      beq #0x42d50
00042cc8  00 20 a0 e3                                      mov r2, #0
00042ccc  00 10 a0 e3                                      mov r1, #0
00042cd0  00 a0 a0 e3                                      mov sl, #0
00042cd4  02 70 89 e0                                      add r7, sb, r2
00042cd8  02 30 8e e0                                      add r3, lr, r2
00042cdc  03 60 d7 e5                                      ldrb r6, [r7, #3]
00042ce0  07 70 d7 e5                                      ldrb r7, [r7, #7]
00042ce4  03 00 d3 e5                                      ldrb r0, [r3, #3]
00042ce8  07 30 d3 e5                                      ldrb r3, [r3, #7]
00042cec  d5 4f 8f e2                                      add r4, pc, #0x354
00042cf0  07 70 d4 e7                                      ldrb r7, [r4, r7]
00042cf4  03 30 d4 e7                                      ldrb r3, [r4, r3]
00042cf8  00 00 d4 e7                                      ldrb r0, [r4, r0]
00042cfc  06 60 d4 e7                                      ldrb r6, [r4, r6]
00042d00  fe 40 07 e2                                      and r4, r7, #0xfe
00042d04  01 11 84 e1                                      orr r1, r4, r1, lsl #2
00042d08  fe 40 06 e2                                      and r4, r6, #0xfe
00042d0c  01 70 07 e2                                      and r7, r7, #1
00042d10  81 10 84 e1                                      orr r1, r4, r1, lsl #1
00042d14  fe 40 03 e2                                      and r4, r3, #0xfe
00042d18  01 30 03 e2                                      and r3, r3, #1
00042d1c  81 10 84 e1                                      orr r1, r4, r1, lsl #1
00042d20  8a 40 87 e1                                      orr r4, r7, sl, lsl #1
00042d24  01 70 06 e2                                      and r7, r6, #1
00042d28  a0 10 81 e1                                      orr r1, r1, r0, lsr #1
00042d2c  84 40 87 e1                                      orr r4, r7, r4, lsl #1
00042d30  84 40 83 e1                                      orr r4, r3, r4, lsl #1
00042d34  01 30 00 e2                                      and r3, r0, #1
00042d38  84 a0 83 e1                                      orr sl, r3, r4, lsl #1
00042d3c  03 30 82 e2                                      add r3, r2, #3
00042d40  01 20 42 e2                                      sub r2, r2, #1
00042d44  00 00 53 e3                                      cmp r3, #0
00042d48  e1 ff ff ca                                      bgt #0x42cd4
00042d4c  42 00 00 ea                                      b #0x42e5c
00042d50  5e 0f 8d e2                                      add r0, sp, #0x178
00042d54  00 10 a0 e3                                      mov r1, #0
00042d58  14 00 80 e2                                      add r0, r0, #0x14
00042d5c  ac 00 8d e5                                      str r0, [sp, #0xac]
00042d60  00 00 a0 e3                                      mov r0, #0
00042d64  00 a0 a0 e3                                      mov sl, #0
00042d68  b4 00 8d e5                                      str r0, [sp, #0xb4]
00042d6c  03 00 00 ea                                      b #0x42d80
00042d70  ac 00 9d e5                                      ldr r0, [sp, #0xac]
00042d74  83 92 90 e7                                      ldr sb, [r0, r3, lsl #5]
00042d78  01 30 43 e2                                      sub r3, r3, #1
00042d7c  b4 30 8d e5                                      str r3, [sp, #0xb4]
00042d80  07 50 d9 e5                                      ldrb r5, [sb, #7]
00042d84  04 70 d9 e5                                      ldrb r7, [sb, #4]
00042d88  06 60 d9 e5                                      ldrb r6, [sb, #6]
00042d8c  05 40 d9 e5                                      ldrb r4, [sb, #5]
00042d90  2b 2e 8f e2                                      add r2, pc, #0x2b0
00042d94  05 80 d2 e7                                      ldrb r8, [r2, r5]
00042d98  09 50 a0 e1                                      mov r5, sb
00042d9c  04 00 d2 e7                                      ldrb r0, [r2, r4]
00042da0  fe 30 08 e2                                      and r3, r8, #0xfe
00042da4  06 60 d2 e7                                      ldrb r6, [r2, r6]
00042da8  01 11 83 e1                                      orr r1, r3, r1, lsl #2
00042dac  b0 00 8d e5                                      str r0, [sp, #0xb0]
00042db0  fe 30 06 e2                                      and r3, r6, #0xfe
00042db4  03 40 d5 e5                                      ldrb r4, [r5, #3]
00042db8  07 90 d2 e7                                      ldrb sb, [r2, r7]
00042dbc  81 10 83 e1                                      orr r1, r3, r1, lsl #1
00042dc0  fe 30 00 e2                                      and r3, r0, #0xfe
00042dc4  02 70 d5 e5                                      ldrb r7, [r5, #2]
00042dc8  81 10 83 e1                                      orr r1, r3, r1, lsl #1
00042dcc  04 40 d2 e7                                      ldrb r4, [r2, r4]
00042dd0  a9 10 81 e1                                      orr r1, r1, sb, lsr #1
00042dd4  01 e0 d5 e5                                      ldrb lr, [r5, #1]
00042dd8  fe c0 04 e2                                      and ip, r4, #0xfe
00042ddc  07 70 d2 e7                                      ldrb r7, [r2, r7]
00042de0  01 11 8c e1                                      orr r1, ip, r1, lsl #2
00042de4  fe 30 07 e2                                      and r3, r7, #0xfe
00042de8  00 00 d5 e5                                      ldrb r0, [r5]
00042dec  81 10 83 e1                                      orr r1, r3, r1, lsl #1
00042df0  0e 30 d2 e7                                      ldrb r3, [r2, lr]
00042df4  01 60 06 e2                                      and r6, r6, #1
00042df8  fe 50 03 e2                                      and r5, r3, #0xfe
00042dfc  00 20 d2 e7                                      ldrb r2, [r2, r0]
00042e00  81 10 85 e1                                      orr r1, r5, r1, lsl #1
00042e04  01 50 08 e2                                      and r5, r8, #1
00042e08  01 70 07 e2                                      and r7, r7, #1
00042e0c  8a 00 85 e1                                      orr r0, r5, sl, lsl #1
00042e10  01 30 03 e2                                      and r3, r3, #1
00042e14  a2 10 81 e1                                      orr r1, r1, r2, lsr #1
00042e18  01 20 02 e2                                      and r2, r2, #1
00042e1c  80 00 86 e1                                      orr r0, r6, r0, lsl #1
00042e20  b0 60 9d e5                                      ldr r6, [sp, #0xb0]
00042e24  01 60 06 e2                                      and r6, r6, #1
00042e28  80 00 86 e1                                      orr r0, r6, r0, lsl #1
00042e2c  01 60 09 e2                                      and r6, sb, #1
00042e30  80 00 86 e1                                      orr r0, r6, r0, lsl #1
00042e34  01 60 04 e2                                      and r6, r4, #1
00042e38  80 00 86 e1                                      orr r0, r6, r0, lsl #1
00042e3c  80 00 87 e1                                      orr r0, r7, r0, lsl #1
00042e40  80 00 83 e1                                      orr r0, r3, r0, lsl #1
00042e44  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
00042e48  80 a0 82 e1                                      orr sl, r2, r0, lsl #1
00042e4c  01 20 83 e2                                      add r2, r3, #1
00042e50  01 00 52 e3                                      cmp r2, #1
00042e54  c5 ff ff aa                                      bge #0x42d70
00042e58  04 c0 9d e5                                      ldr ip, [sp, #4]
00042e5c  05 10 cc e5                                      strb r1, [ip, #5]
00042e60  21 14 a0 e1                                      lsr r1, r1, #8
00042e64  2a 04 a0 e1                                      lsr r0, sl, #8
00042e68  07 a0 cc e5                                      strb sl, [ip, #7]
00042e6c  04 10 cc e5                                      strb r1, [ip, #4]
00042e70  06 00 cc e5                                      strb r0, [ip, #6]
00042e74  20 05 9f e5                                      ldr r0, [pc, #0x520]
00042e78  24 10 1b e5                                      ldr r1, [fp, #-0x24]
00042e7c  00 00 9f e7                                      ldr r0, [pc, r0]
00042e80  00 00 90 e5                                      ldr r0, [r0]
00042e84  01 00 50 e0                                      subs r0, r0, r1
00042e88  58 00 9d 05                                      ldreq r0, [sp, #0x58]
00042e8c  1c d0 4b 02                                      subeq sp, fp, #0x1c
00042e90  f0 8f bd 08                                      popeq {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00042e94  71 bc ff eb                                      bl #0x32060
00042e98  30 00 94 e5                                      ldr r0, [r4, #0x30]
00042e9c  06 00 50 e1                                      cmp r0, r6
00042ea0  d6 fc ff 1a                                      bne #0x42200
00042ea4  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00042ea8  06 00 50 e1                                      cmp r0, r6
00042eac  28 00 94 05                                      ldreq r0, [r4, #0x28]
00042eb0  06 00 50 01                                      cmpeq r0, r6
00042eb4  d1 fc ff 1a                                      bne #0x42200
00042eb8  24 00 94 e5                                      ldr r0, [r4, #0x24]
00042ebc  06 00 50 e1                                      cmp r0, r6
00042ec0  20 00 94 05                                      ldreq r0, [r4, #0x20]
00042ec4  06 00 50 01                                      cmpeq r0, r6
00042ec8  cc fc ff 1a                                      bne #0x42200
00042ecc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
00042ed0  06 00 50 e1                                      cmp r0, r6
00042ed4  18 00 94 05                                      ldreq r0, [r4, #0x18]
00042ed8  06 00 50 01                                      cmpeq r0, r6
00042edc  c7 fc ff 1a                                      bne #0x42200
00042ee0  14 00 94 e5                                      ldr r0, [r4, #0x14]
00042ee4  06 00 50 e1                                      cmp r0, r6
00042ee8  10 00 94 05                                      ldreq r0, [r4, #0x10]
00042eec  06 00 50 01                                      cmpeq r0, r6
00042ef0  c2 fc ff 1a                                      bne #0x42200
00042ef4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00042ef8  06 00 50 e1                                      cmp r0, r6
00042efc  08 00 94 05                                      ldreq r0, [r4, #8]
00042f00  06 00 50 01                                      cmpeq r0, r6
00042f04  bd fc ff 1a                                      bne #0x42200
00042f08  04 00 94 e5                                      ldr r0, [r4, #4]
00042f0c  06 00 50 e1                                      cmp r0, r6
00042f10  ba fc ff 1a                                      bne #0x42200
00042f14  5c 04 9f e5                                      ldr r0, [pc, #0x45c]
00042f18  00 a0 e0 e3                                      mvn sl, #0
00042f1c  4c 40 8d e5                                      str r4, [sp, #0x4c]
00042f20  00 30 a0 e3                                      mov r3, #0
00042f24  00 00 8f e0                                      add r0, pc, r0
00042f28  01 20 d4 e5                                      ldrb r2, [r4, #1]
00042f2c  a0 00 8d e5                                      str r0, [sp, #0xa0]
00042f30  00 e0 a0 e3                                      mov lr, #0
00042f34  4c 04 9f e5                                      ldr r0, [pc, #0x44c]
00042f38  00 90 a0 e3                                      mov sb, #0
00042f3c  00 00 8f e0                                      add r0, pc, r0
00042f40  98 00 8d e5                                      str r0, [sp, #0x98]
00042f44  4c 04 9f e5                                      ldr r0, [pc, #0x44c]
00042f48  00 00 8f e0                                      add r0, pc, r0
00042f4c  90 00 8d e5                                      str r0, [sp, #0x90]
00042f50  38 04 9f e5                                      ldr r0, [pc, #0x438]
00042f54  00 00 8f e0                                      add r0, pc, r0
00042f58  7c 00 8d e5                                      str r0, [sp, #0x7c]
00042f5c  30 04 9f e5                                      ldr r0, [pc, #0x430]
00042f60  00 00 8f e0                                      add r0, pc, r0
00042f64  78 00 8d e5                                      str r0, [sp, #0x78]
00042f68  10 04 9f e5                                      ldr r0, [pc, #0x410]
00042f6c  00 00 8f e0                                      add r0, pc, r0
00042f70  84 00 8d e5                                      str r0, [sp, #0x84]
00042f74  08 04 9f e5                                      ldr r0, [pc, #0x408]
00042f78  00 00 8f e0                                      add r0, pc, r0
00042f7c  80 00 8d e5                                      str r0, [sp, #0x80]
00042f80  e8 03 9f e5                                      ldr r0, [pc, #0x3e8]
00042f84  00 00 8f e0                                      add r0, pc, r0
00042f88  8c 00 8d e5                                      str r0, [sp, #0x8c]
00042f8c  e0 03 9f e5                                      ldr r0, [pc, #0x3e0]
00042f90  00 00 8f e0                                      add r0, pc, r0
00042f94  88 00 8d e5                                      str r0, [sp, #0x88]
00042f98  00 00 a0 e3                                      mov r0, #0
00042f9c  a8 00 8d e5                                      str r0, [sp, #0xa8]
00042fa0  00 00 a0 e3                                      mov r0, #0
00042fa4  ac 00 8d e5                                      str r0, [sp, #0xac]
00042fa8  08 00 00 ea                                      b #0x42fd0
00042fac  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
00042fb0  a8 c0 8d e5                                      str ip, [sp, #0xa8]
00042fb4  02 00 50 e3                                      cmp r0, #2
00042fb8  d7 00 00 8a                                      bhi #0x4331c
00042fbc  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00042fc0  9c 10 9d e5                                      ldr r1, [sp, #0x9c]
00042fc4  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
00042fc8  01 60 d0 e7                                      ldrb r6, [r0, r1]
00042fcc  ac 10 8d e5                                      str r1, [sp, #0xac]
00042fd0  00 00 e0 e3                                      mvn r0, #0
00042fd4  76 10 e0 e6                                      uxtab r1, r0, r6
00042fd8  ff 00 51 e3                                      cmp r1, #0xff
00042fdc  ff 00 a0 e3                                      mov r0, #0xff
00042fe0  94 10 8d e5                                      str r1, [sp, #0x94]
00042fe4  01 00 a0 b1                                      movlt r0, r1
00042fe8  ac 10 9d e5                                      ldr r1, [sp, #0xac]
00042fec  ce 4f 8f e2                                      add r4, pc, #0x338
00042ff0  76 70 ef e6                                      uxtb r7, r6
00042ff4  01 00 57 e3                                      cmp r7, #1
00042ff8  01 10 81 e2                                      add r1, r1, #1
00042ffc  9c 10 8d e5                                      str r1, [sp, #0x9c]
00043000  a4 70 8d e5                                      str r7, [sp, #0xa4]
00043004  01 41 94 e7                                      ldr r4, [r4, r1, lsl #2]
00043008  00 10 a0 e3                                      mov r1, #0
0004300c  01 00 a0 91                                      movls r0, r1
00043010  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00043014  00 00 50 e3                                      cmp r0, #0
00043018  04 10 d1 e7                                      ldrb r1, [r1, r4]
0004301c  b4 10 8d e5                                      str r1, [sp, #0xb4]
00043020  05 00 00 0a                                      beq #0x4303c
00043024  02 41 c0 e3                                      bic r4, r0, #0x80000000
00043028  ff 00 54 e3                                      cmp r4, #0xff
0004302c  06 00 00 1a                                      bne #0x4304c
00043030  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
00043034  42 60 81 e2                                      add r6, r1, #0x42
00043038  07 00 00 ea                                      b #0x4305c
0004303c  28 13 9f e5                                      ldr r1, [pc, #0x328]
00043040  01 60 8f e0                                      add r6, pc, r1
00043044  04 00 00 ea                                      b #0x4305c
00043048  03 02 00 01                                      .byte 0x03, 0x02, 0x00, 0x01
0004304c  80 40 80 e0                                      add r4, r0, r0, lsl #1
00043050  88 10 9d e5                                      ldr r1, [sp, #0x88]
00043054  84 41 81 e0                                      add r4, r1, r4, lsl #3
00043058  18 60 44 e2                                      sub r6, r4, #0x18
0004305c  72 10 ef e6                                      uxtb r1, r2
00043060  b2 40 d6 e0                                      ldrh r4, [r6], #2
00043064  b0 10 8d e5                                      str r1, [sp, #0xb0]
00043068  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
0004306c  01 00 40 e0                                      sub r0, r0, r1
00043070  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
00043074  90 00 08 e0                                      mul r8, r0, r0
00043078  b0 20 9d e5                                      ldr r2, [sp, #0xb0]
0004307c  74 00 ef e6                                      uxtb r0, r4
00043080  80 04 81 e0                                      add r0, r1, r0, lsl #9
00043084  82 50 80 e0                                      add r5, r0, r2, lsl #1
00043088  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
0004308c  b0 70 d5 e1                                      ldrh r7, [r5]
00043090  82 00 80 e0                                      add r0, r0, r2, lsl #1
00043094  b0 50 d0 e1                                      ldrh r5, [r0]
00043098  27 04 a0 e1                                      lsr r0, r7, #8
0004309c  80 80 00 e1                                      smlabb r0, r0, r0, r8
000430a0  25 c4 a0 e1                                      lsr ip, r5, #8
000430a4  8c 0c 00 e1                                      smlabb r0, ip, ip, r0
000430a8  0a 00 50 e1                                      cmp r0, sl
000430ac  07 00 00 2a                                      bhs #0x430d0
000430b0  74 30 ff e6                                      uxth r3, r4
000430b4  75 90 ef e6                                      uxtb sb, r5
000430b8  77 e0 ef e6                                      uxtb lr, r7
000430bc  00 00 50 e3                                      cmp r0, #0
000430c0  67 00 00 0a                                      beq #0x43264
000430c4  ac 20 9d e5                                      ldr r2, [sp, #0xac]
000430c8  00 a0 a0 e1                                      mov sl, r0
000430cc  a8 20 8d e5                                      str r2, [sp, #0xa8]
000430d0  b2 40 d6 e0                                      ldrh r4, [r6], #2
000430d4  ff 0f 0f e3                                      movw r0, #0xffff
000430d8  00 00 54 e1                                      cmp r4, r0
000430dc  e5 ff ff 1a                                      bne #0x43078
000430e0  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
000430e4  00 00 50 e3                                      cmp r0, #0
000430e8  05 00 00 0a                                      beq #0x43104
000430ec  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
000430f0  ff 00 50 e3                                      cmp r0, #0xff
000430f4  05 00 00 1a                                      bne #0x43110
000430f8  84 00 9d e5                                      ldr r0, [sp, #0x84]
000430fc  42 60 80 e2                                      add r6, r0, #0x42
00043100  06 00 00 ea                                      b #0x43120
00043104  70 02 9f e5                                      ldr r0, [pc, #0x270]
00043108  00 60 8f e0                                      add r6, pc, r0
0004310c  03 00 00 ea                                      b #0x43120
00043110  94 00 9d e5                                      ldr r0, [sp, #0x94]
00043114  80 10 9d e5                                      ldr r1, [sp, #0x80]
00043118  80 00 80 e0                                      add r0, r0, r0, lsl #1
0004311c  80 61 81 e0                                      add r6, r1, r0, lsl #3
00043120  b2 40 d6 e0                                      ldrh r4, [r6], #2
00043124  98 20 9d e5                                      ldr r2, [sp, #0x98]
00043128  a8 c0 9d e5                                      ldr ip, [sp, #0xa8]
0004312c  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
00043130  74 00 ef e6                                      uxtb r0, r4
00043134  80 04 82 e0                                      add r0, r2, r0, lsl #9
00043138  81 70 80 e0                                      add r7, r0, r1, lsl #1
0004313c  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
00043140  b0 70 d7 e1                                      ldrh r7, [r7]
00043144  81 00 80 e0                                      add r0, r0, r1, lsl #1
00043148  b0 50 d0 e1                                      ldrh r5, [r0]
0004314c  27 04 a0 e1                                      lsr r0, r7, #8
00043150  80 00 60 e1                                      smulbb r0, r0, r0
00043154  25 14 a0 e1                                      lsr r1, r5, #8
00043158  81 01 00 e1                                      smlabb r0, r1, r1, r0
0004315c  0a 00 50 e1                                      cmp r0, sl
00043160  06 00 00 2a                                      bhs #0x43180
00043164  74 30 ff e6                                      uxth r3, r4
00043168  77 90 ef e6                                      uxtb sb, r7
0004316c  75 e0 ef e6                                      uxtb lr, r5
00043170  00 00 50 e3                                      cmp r0, #0
00043174  3a 00 00 0a                                      beq #0x43264
00043178  ac c0 9d e5                                      ldr ip, [sp, #0xac]
0004317c  00 a0 a0 e1                                      mov sl, r0
00043180  b2 40 d6 e0                                      ldrh r4, [r6], #2
00043184  ff 0f 0f e3                                      movw r0, #0xffff
00043188  00 00 54 e1                                      cmp r4, r0
0004318c  e6 ff ff 1a                                      bne #0x4312c
00043190  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
00043194  ff 10 a0 e3                                      mov r1, #0xff
00043198  01 00 80 e2                                      add r0, r0, #1
0004319c  ff 00 50 e3                                      cmp r0, #0xff
000431a0  01 00 a0 21                                      movhs r0, r1
000431a4  70 40 ef e6                                      uxtb r4, r0
000431a8  00 00 54 e3                                      cmp r4, #0
000431ac  04 00 00 0a                                      beq #0x431c4
000431b0  ff 00 54 e3                                      cmp r4, #0xff
000431b4  07 00 00 1a                                      bne #0x431d8
000431b8  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
000431bc  42 60 81 e2                                      add r6, r1, #0x42
000431c0  08 00 00 ea                                      b #0x431e8
000431c4  c0 11 9f e5                                      ldr r1, [pc, #0x1c0]
000431c8  01 60 8f e0                                      add r6, pc, r1
000431cc  05 00 00 ea                                      b #0x431e8
000431d0  dc a2 09 00                                      ldrdeq sl, fp, [sb], -ip
000431d4  80 41 0a 00                                      andeq r4, sl, r0, lsl #3
000431d8  80 10 80 e0                                      add r1, r0, r0, lsl #1
000431dc  78 20 9d e5                                      ldr r2, [sp, #0x78]
000431e0  81 11 82 e0                                      add r1, r2, r1, lsl #3
000431e4  18 60 41 e2                                      sub r6, r1, #0x18
000431e8  a4 10 9d e5                                      ldr r1, [sp, #0xa4]
000431ec  90 20 9d e5                                      ldr r2, [sp, #0x90]
000431f0  01 00 40 e0                                      sub r0, r0, r1
000431f4  90 00 08 e0                                      mul r8, r0, r0
000431f8  b2 00 d6 e0                                      ldrh r0, [r6], #2
000431fc  b0 40 9d e5                                      ldr r4, [sp, #0xb0]
00043200  70 10 ef e6                                      uxtb r1, r0
00043204  81 14 82 e0                                      add r1, r2, r1, lsl #9
00043208  84 70 81 e0                                      add r7, r1, r4, lsl #1
0004320c  b0 40 d7 e1                                      ldrh r4, [r7]
00043210  b4 70 9d e5                                      ldr r7, [sp, #0xb4]
00043214  87 10 81 e0                                      add r1, r1, r7, lsl #1
00043218  b0 50 d1 e1                                      ldrh r5, [r1]
0004321c  24 14 a0 e1                                      lsr r1, r4, #8
00043220  81 81 01 e1                                      smlabb r1, r1, r1, r8
00043224  25 74 a0 e1                                      lsr r7, r5, #8
00043228  87 17 07 e1                                      smlabb r7, r7, r7, r1
0004322c  0a 00 57 e1                                      cmp r7, sl
00043230  06 00 00 2a                                      bhs #0x43250
00043234  70 30 ff e6                                      uxth r3, r0
00043238  75 90 ef e6                                      uxtb sb, r5
0004323c  74 e0 ef e6                                      uxtb lr, r4
00043240  00 00 57 e3                                      cmp r7, #0
00043244  06 00 00 0a                                      beq #0x43264
00043248  ac c0 9d e5                                      ldr ip, [sp, #0xac]
0004324c  07 a0 a0 e1                                      mov sl, r7
00043250  b2 00 d6 e0                                      ldrh r0, [r6], #2
00043254  ff 1f 0f e3                                      movw r1, #0xffff
00043258  01 00 50 e1                                      cmp r0, r1
0004325c  e6 ff ff 1a                                      bne #0x431fc
00043260  51 ff ff ea                                      b #0x42fac
00043264  00 a0 a0 e3                                      mov sl, #0
00043268  53 72 e1 e7                                      ubfx r7, r3, #4, #2
0004326c  d3 60 e2 e7                                      ubfx r6, r3, #1, #3
00043270  f0 50 8f e2                                      add r5, pc, #0xf0
00043274  01 00 13 e2                                      ands r0, r3, #1
00043278  86 61 86 e1                                      orr r6, r6, r6, lsl #3
0004327c  04 10 9d e5                                      ldr r1, [sp, #4]
00043280  07 70 d5 e7                                      ldrb r7, [r5, r7]
00043284  06 61 a0 e1                                      lsl r6, r6, #2
00043288  80 00 86 e1                                      orr r0, r6, r0, lsl #1
0004328c  03 00 c1 e5                                      strb r0, [r1, #3]
00043290  d7 00 a0 e7                                      sbfx r0, r7, #1, #1
00043294  b4 00 c1 e1                                      strh r0, [r1, #4]
00043298  01 00 07 e2                                      and r0, r7, #1
0004329c  00 00 60 e2                                      rsb r0, r0, #0
000432a0  b6 00 c1 e1                                      strh r0, [r1, #6]
000432a4  23 04 a0 e1                                      lsr r0, r3, #8
000432a8  09 00 00 1a                                      bne #0x432d4
000432ac  78 30 8f e2                                      add r3, pc, #0x78
000432b0  ac 70 9d e5                                      ldr r7, [sp, #0xac]
000432b4  04 10 9d e5                                      ldr r1, [sp, #4]
000432b8  00 02 80 e1                                      orr r0, r0, r0, lsl #4
000432bc  07 31 93 e7                                      ldr r3, [r3, r7, lsl #2]
000432c0  07 00 c1 e7                                      strb r0, [r1, r7]
000432c4  0e 02 8e e1                                      orr r0, lr, lr, lsl #4
000432c8  03 00 c1 e7                                      strb r0, [r1, r3]
000432cc  09 02 89 e1                                      orr r0, sb, sb, lsl #4
000432d0  08 00 00 ea                                      b #0x432f8
000432d4  50 30 8f e2                                      add r3, pc, #0x50
000432d8  ac 70 9d e5                                      ldr r7, [sp, #0xac]
000432dc  04 10 9d e5                                      ldr r1, [sp, #4]
000432e0  80 01 a0 e1                                      lsl r0, r0, #3
000432e4  07 31 93 e7                                      ldr r3, [r3, r7, lsl #2]
000432e8  07 00 c1 e7                                      strb r0, [r1, r7]
000432ec  8e 01 a0 e1                                      lsl r0, lr, #3
000432f0  03 00 c1 e7                                      strb r0, [r1, r3]
000432f4  89 01 a0 e1                                      lsl r0, sb, #3
000432f8  2c 10 8f e2                                      add r1, pc, #0x2c
000432fc  ac 20 9d e5                                      ldr r2, [sp, #0xac]
00043300  02 11 81 e0                                      add r1, r1, r2, lsl #2
00043304  04 20 9d e5                                      ldr r2, [sp, #4]
00043308  04 10 91 e5                                      ldr r1, [r1, #4]
0004330c  01 00 c2 e7                                      strb r0, [r2, r1]
00043310  0a 02 a0 e1                                      lsl r0, sl, #4
00043314  58 00 8d e5                                      str r0, [sp, #0x58]
00043318  d5 fe ff ea                                      b #0x42e74
0004331c  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00043320  ac 00 8d e5                                      str r0, [sp, #0xac]
00043324  cf ff ff ea                                      b #0x43268
00043328  b0 a0 09 00                                      strheq sl, [sb], -r0
0004332c  01 00 00 00                                      andeq r0, r0, r1
00043330  02 00 00 00                                      andeq r0, r0, r2
00043334  00 00 00 00                                      andeq r0, r0, r0
00043338  01 00 00 00                                      andeq r0, r0, r1
0004333c  9c 14 08 00                                      muleq r8, ip, r4
00043340  f0 16 08 00                                      strdeq r1, r2, [r8], -r0
00043344  68 17 08 00                                      andeq r1, r8, r8, ror #14
00043348  b8 be 09 00                                      strheq fp, [sb], -r8
0004334c  c4 be 09 00                                      andeq fp, sb, r4, asr #29
00043350  f4 11 08 00                                      strdeq r1, r2, [r8], -r4
00043354  d8 16 08 00                                      ldrdeq r1, r2, [r8], -r8
00043358  04 12 08 00                                      andeq r1, r8, r4, lsl #4
0004335c  a0 11 08 00                                      andeq r1, r8, r0, lsr #3
00043360  8c 11 08 00                                      andeq r1, r8, ip, lsl #3
00043364  fc 16 08 00                                      strdeq r1, r2, [r8], -ip
00043368  03 02 00 01                                      .byte 0x03, 0x02, 0x00, 0x01
0004336c  b8 0b 08 00                                      strheq r0, [r8], -r8
00043370  74 0c 08 00                                      andeq r0, r8, r4, ror ip
00043374  ec 0c 08 00                                      andeq r0, r8, ip, ror #25
00043378  90 b4 09 00                                      muleq sb, r0, r4
0004337c  f0 0a 08 00                                      strdeq r0, r1, [r8], -r0
00043380  8c 0c 08 00                                      andeq r0, r8, ip, lsl #25
00043384  04 0d 08 00                                      andeq r0, r8, r4, lsl #26
00043388  78 b4 09 00                                      andeq fp, sb, r8, ror r4
0004338c  30 0a 08 00                                      andeq r0, r8, r0, lsr sl
00043390  a4 0c 08 00                                      andeq r0, r8, r4, lsr #25
00043394  1c 0d 08 00                                      andeq r0, r8, ip, lsl sp
00043398  6c b4 09 00                                      andeq fp, sb, ip, ror #8
0004339c  34 96 09 00                                      andeq sb, sb, r4, lsr r6
