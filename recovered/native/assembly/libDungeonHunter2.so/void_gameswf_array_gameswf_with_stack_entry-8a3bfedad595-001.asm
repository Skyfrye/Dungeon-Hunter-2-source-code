; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007babe4, declared_size=92, range_size=92, mode=arm
; class-group: void gameswf::array<gameswf::with_stack_entry>
; alias: _ZN7gameswf5arrayINS_16with_stack_entryEE9push_backIS1_EEvRKT_
; demangled: void gameswf::array<gameswf::with_stack_entry>::push_back<gameswf::with_stack_entry>(gameswf::with_stack_entry const&)
; decoder-mode: arm
007babe4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007babe8  04 30 90 e5                                      ldr r3, [r0, #4]
007babec  08 20 90 e5                                      ldr r2, [r0, #8]
007babf0  00 40 a0 e1                                      mov r4, r0
007babf4  01 50 83 e2                                      add r5, r3, #1
007babf8  02 00 55 e1                                      cmp r5, r2
007babfc  01 60 a0 e1                                      mov r6, r1
007bac00  0a 00 00 ca                                      bgt #0x7bac30
007bac04  00 00 96 e5                                      ldr r0, [r6]
007bac08  00 70 94 e5                                      ldr r7, [r4]
007bac0c  00 00 50 e3                                      cmp r0, #0
007bac10  83 01 87 e7                                      str r0, [r7, r3, lsl #3]
007bac14  83 71 87 e0                                      add r7, r7, r3, lsl #3
007bac18  00 00 00 0a                                      beq #0x7bac20
007bac1c  10 7c fe eb                                      bl #0x759c64
007bac20  04 30 96 e5                                      ldr r3, [r6, #4]
007bac24  04 30 87 e5                                      str r3, [r7, #4]
007bac28  04 50 84 e5                                      str r5, [r4, #4]
007bac2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007bac30  c5 10 85 e0                                      add r1, r5, r5, asr #1
007bac34  b6 7d fe eb                                      bl #0x75a314
007bac38  04 30 94 e5                                      ldr r3, [r4, #4]
007bac3c  f0 ff ff ea                                      b #0x7bac04
