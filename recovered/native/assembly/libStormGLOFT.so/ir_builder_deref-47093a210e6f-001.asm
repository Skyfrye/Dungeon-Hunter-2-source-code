; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000596dc, declared_size=60, range_size=60, mode=thumb
; class-group: ir_builder::deref
; alias: _ZN10ir_builder5derefC2EP11ir_variable
; demangled: ir_builder::deref::deref(ir_variable*)
; decoder-mode: thumb
000596dc  f0 b5                                            push {r4, r5, r6, r7, lr}
000596de  03 af                                            add r7, sp, #0xc
000596e0  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000596e4  0c 46                                            mov r4, r1
000596e6  05 46                                            mov r5, r0
000596e8  20 46                                            mov r0, r4
000596ea  d9 f7 1e ea                                      blx #0x32b28
000596ee  1c 21                                            movs r1, #0x1c
000596f0  d9 f7 16 e8                                      blx #0x32720
000596f4  06 46                                            mov r6, r0
000596f6  07 48                                            ldr r0, [pc, #0x1c]
000596f8  78 44                                            add r0, pc
000596fa  01 68                                            ldr r1, [r0]
000596fc  30 46                                            mov r0, r6
000596fe  d9 f7 00 e9                                      blx #0x32900
00059702  30 46                                            mov r0, r6
00059704  21 46                                            mov r1, r4
00059706  d9 f7 56 e9                                      blx #0x329b4
0005970a  2e 60                                            str r6, [r5]
0005970c  28 46                                            mov r0, r5
0005970e  5d f8 04 bb                                      ldr fp, [sp], #4
00059712  f0 bd                                            pop {r4, r5, r6, r7, pc}
00059714  40 2e                                            cmp r6, #0x40
00059716  08 00                                            movs r0, r1
