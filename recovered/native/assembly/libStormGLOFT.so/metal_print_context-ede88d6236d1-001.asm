; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0008a460, declared_size=224, range_size=224, mode=thumb
; class-group: metal_print_context
; alias: _ZN19metal_print_contextC2EPc
; demangled: metal_print_context::metal_print_context(char*)
; decoder-mode: thumb
0008a460  f0 b5                                            push {r4, r5, r6, r7, lr}
0008a462  03 af                                            add r7, sp, #0xc
0008a464  2d e9 00 0b                                      push.w {r8, sb, fp}
0008a468  0d 46                                            mov r5, r1
0008a46a  04 46                                            mov r4, r0
0008a46c  4f f4 00 79                                      mov.w sb, #0x200
0008a470  28 46                                            mov r0, r5
0008a472  4f f4 00 71                                      mov.w r1, #0x200
0008a476  c4 f8 08 90                                      str.w sb, [r4, #8]
0008a47a  a8 f7 52 e9                                      blx #0x32720
0008a47e  df f8 bc 80                                      ldr.w r8, [pc, #0xbc]
0008a482  00 26                                            movs r6, #0
0008a484  c4 e9 00 06                                      strd r0, r6, [r4]
0008a488  f8 44                                            add r8, pc
0008a48a  06 70                                            strb r6, [r0]
0008a48c  28 46                                            mov r0, r5
0008a48e  41 46                                            mov r1, r8
0008a490  a8 f7 e0 e8                                      blx #0x32654
0008a494  4f f4 00 71                                      mov.w r1, #0x200
0008a498  c4 f8 14 90                                      str.w sb, [r4, #0x14]
0008a49c  a8 f7 40 e9                                      blx #0x32720
0008a4a0  c4 e9 03 06                                      strd r0, r6, [r4, #0xc]
0008a4a4  41 46                                            mov r1, r8
0008a4a6  06 70                                            strb r6, [r0]
0008a4a8  28 46                                            mov r0, r5
0008a4aa  a8 f7 d4 e8                                      blx #0x32654
0008a4ae  4f f4 00 71                                      mov.w r1, #0x200
0008a4b2  c4 f8 20 90                                      str.w sb, [r4, #0x20]
0008a4b6  a8 f7 34 e9                                      blx #0x32720
0008a4ba  c4 e9 06 06                                      strd r0, r6, [r4, #0x18]
0008a4be  41 46                                            mov r1, r8
0008a4c0  06 70                                            strb r6, [r0]
0008a4c2  28 46                                            mov r0, r5
0008a4c4  a8 f7 c6 e8                                      blx #0x32654
0008a4c8  4f f4 00 71                                      mov.w r1, #0x200
0008a4cc  c4 f8 2c 90                                      str.w sb, [r4, #0x2c]
0008a4d0  a8 f7 26 e9                                      blx #0x32720
0008a4d4  c4 e9 09 06                                      strd r0, r6, [r4, #0x24]
0008a4d8  41 46                                            mov r1, r8
0008a4da  06 70                                            strb r6, [r0]
0008a4dc  28 46                                            mov r0, r5
0008a4de  a8 f7 ba e8                                      blx #0x32654
0008a4e2  4f f4 00 71                                      mov.w r1, #0x200
0008a4e6  c4 f8 38 90                                      str.w sb, [r4, #0x38]
0008a4ea  a8 f7 1a e9                                      blx #0x32720
0008a4ee  c4 e9 0c 06                                      strd r0, r6, [r4, #0x30]
0008a4f2  41 46                                            mov r1, r8
0008a4f4  06 70                                            strb r6, [r0]
0008a4f6  28 46                                            mov r0, r5
0008a4f8  a8 f7 ac e8                                      blx #0x32654
0008a4fc  4f f4 00 71                                      mov.w r1, #0x200
0008a500  c4 f8 44 90                                      str.w sb, [r4, #0x44]
0008a504  a8 f7 0c e9                                      blx #0x32720
0008a508  c4 e9 0f 06                                      strd r0, r6, [r4, #0x3c]
0008a50c  41 46                                            mov r1, r8
0008a50e  06 70                                            strb r6, [r0]
0008a510  28 46                                            mov r0, r5
0008a512  a8 f7 a0 e8                                      blx #0x32654
0008a516  4f f4 00 71                                      mov.w r1, #0x200
0008a51a  c4 f8 50 90                                      str.w sb, [r4, #0x50]
0008a51e  a8 f7 00 e9                                      blx #0x32720
0008a522  c4 e9 12 06                                      strd r0, r6, [r4, #0x48]
0008a526  14 21                                            movs r1, #0x14
0008a528  06 70                                            strb r6, [r0]
0008a52a  04 f1 54 00                                      add.w r0, r4, #0x54
0008a52e  a8 f7 98 e8                                      blx #0x32660
0008a532  20 46                                            mov r0, r4
0008a534  bd e8 00 0b                                      pop.w {r8, sb, fp}
0008a538  f0 bd                                            pop {r4, r5, r6, r7, pc}
0008a53a  00 bf                                            nop
0008a53c  37 ed 02 00                                      ldc p0, c0, [r7, #-8]!
