; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x000addd8, declared_size=48, range_size=48, mode=thumb
; class-group: std::out_of_range
; alias: _ZNSt12out_of_rangeD0Ev
; demangled: std::out_of_range::~out_of_range()
; decoder-mode: thumb
000addd8  d0 b5                                            push {r4, r6, r7, lr}
000addda  02 af                                            add r7, sp, #8
000adddc  04 46                                            mov r4, r0
000addde  09 48                                            ldr r0, [pc, #0x24]
000adde0  78 44                                            add r0, pc
000adde2  01 68                                            ldr r1, [r0]
000adde4  d4 f8 04 01                                      ldr.w r0, [r4, #0x104]
000adde8  08 31                                            adds r1, #8
000addea  21 60                                            str r1, [r4]
000addec  21 1d                                            adds r1, r4, #4
000addee  88 42                                            cmp r0, r1
000addf0  18 bf                                            it ne
000addf2  84 f7 24 e9                                      blxne #0x3203c
000addf6  20 46                                            mov r0, r4
000addf8  00 f0 92 ff                                      bl #0xaed20
000addfc  bd e8 d0 40                                      pop.w {r4, r6, r7, lr}
000ade00  02 f0 aa bf                                      b.w #0xb0d58
000ade04  94 ec 02 00                                      ldc p0, c0, [r4], {2}
