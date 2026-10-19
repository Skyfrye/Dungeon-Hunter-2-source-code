; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000adea8, declared_size=104, range_size=104, mode=thumb
; class-group: std::__malloc_alloc
; alias: _ZNSt14__malloc_alloc8allocateEj
; demangled: std::__malloc_alloc::allocate(unsigned int)
; decoder-mode: thumb
000adea8  f0 b5                                            push {r4, r5, r6, r7, lr}
000adeaa  03 af                                            add r7, sp, #0xc
000adeac  4d f8 04 8d                                      str r8, [sp, #-0x4]!
000adeb0  04 46                                            mov r4, r0
000adeb2  84 f7 12 e9                                      blx #0x320d8
000adeb6  98 b9                                            cbnz r0, #0xadee0
000adeb8  11 4d                                            ldr r5, [pc, #0x44]
000adeba  df f8 48 80                                      ldr.w r8, [pc, #0x48]
000adebe  7d 44                                            add r5, pc
000adec0  f8 44                                            add r8, pc
000adec2  28 46                                            mov r0, r5
000adec4  87 f7 2a ee                                      blx #0x35b1c
000adec8  28 46                                            mov r0, r5
000adeca  d8 f8 00 60                                      ldr.w r6, [r8]
000adece  87 f7 2c ee                                      blx #0x35b28
000aded2  46 b1                                            cbz r6, #0xadee6
000aded4  b0 47                                            blx r6
000aded6  20 46                                            mov r0, r4
000aded8  84 f7 fe e8                                      blx #0x320d8
000adedc  00 28                                            cmp r0, #0
000adede  f0 d0                                            beq #0xadec2
000adee0  5d f8 04 8b                                      ldr r8, [sp], #4
000adee4  f0 bd                                            pop {r4, r5, r6, r7, pc}
000adee6  04 20                                            movs r0, #4
000adee8  fe f7 64 f9                                      bl #0xac1b4
000adeec  fe f7 b8 fe                                      bl #0xacc60
000adef0  05 49                                            ldr r1, [pc, #0x14]
000adef2  06 4a                                            ldr r2, [pc, #0x18]
000adef4  79 44                                            add r1, pc
000adef6  7a 44                                            add r2, pc
000adef8  09 68                                            ldr r1, [r1]
000adefa  12 68                                            ldr r2, [r2]
000adefc  fe f7 40 fa                                      bl #0xac380
000adf00  b6 92                                            str r2, [sp, #0x2d8]
000adf02  03 00                                            movs r3, r0
000adf04  b8 92                                            str r2, [sp, #0x2e0]
000adf06  03 00                                            movs r3, r0
000adf08  74 eb 02 00                                      sbcs.w r0, r4, r2
000adf0c  b6 eb 02 00                                      subs.w r0, r6, r2

; FUNCTION 0x000adf10, declared_size=52, range_size=52, mode=thumb
; class-group: std::__malloc_alloc
; alias: _ZNSt14__malloc_alloc18set_malloc_handlerEPFvvE
; demangled: std::__malloc_alloc::set_malloc_handler(void (*)())
; decoder-mode: thumb
000adf10  f0 b5                                            push {r4, r5, r6, r7, lr}
000adf12  03 af                                            add r7, sp, #0xc
000adf14  4d f8 04 bd                                      str fp, [sp, #-0x4]!
000adf18  08 4d                                            ldr r5, [pc, #0x20]
000adf1a  04 46                                            mov r4, r0
000adf1c  7d 44                                            add r5, pc
000adf1e  28 46                                            mov r0, r5
000adf20  87 f7 fc ed                                      blx #0x35b1c
000adf24  06 48                                            ldr r0, [pc, #0x18]
000adf26  78 44                                            add r0, pc
000adf28  06 68                                            ldr r6, [r0]
000adf2a  04 60                                            str r4, [r0]
000adf2c  28 46                                            mov r0, r5
000adf2e  87 f7 fc ed                                      blx #0x35b28
000adf32  30 46                                            mov r0, r6
000adf34  5d f8 04 bb                                      ldr fp, [sp], #4
000adf38  f0 bd                                            pop {r4, r5, r6, r7, pc}
000adf3a  00 bf                                            nop
000adf3c  58 92                                            str r2, [sp, #0x160]
000adf3e  03 00                                            movs r3, r0
000adf40  52 92                                            str r2, [sp, #0x148]
000adf42  03 00                                            movs r3, r0
