; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00341fa0, declared_size=180, range_size=180, mode=arm
; class-group: Module* const& std::priv
; alias: _ZNSt4priv8__medianIP6Module20SortModuleByDistanceEERKT_S6_S6_S6_T0_
; demangled: Module* const& std::priv::__median<Module*, SortModuleByDistance>(Module* const&, Module* const&, Module* const&, SortModuleByDistance)
; decoder-mode: arm
00341fa0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00341fa4  0c d0 4d e2                                      sub sp, sp, #0xc
00341fa8  08 40 8d e2                                      add r4, sp, #8
00341fac  04 30 24 e5                                      str r3, [r4, #-4]!
00341fb0  00 60 a0 e1                                      mov r6, r0
00341fb4  01 50 a0 e1                                      mov r5, r1
00341fb8  02 70 a0 e1                                      mov r7, r2
00341fbc  04 00 a0 e1                                      mov r0, r4
00341fc0  00 10 96 e5                                      ldr r1, [r6]
00341fc4  00 20 95 e5                                      ldr r2, [r5]
00341fc8  ff fe ff eb                                      bl #0x341bcc
00341fcc  00 00 50 e3                                      cmp r0, #0
00341fd0  08 00 00 0a                                      beq #0x341ff8
00341fd4  04 00 a0 e1                                      mov r0, r4
00341fd8  00 10 95 e5                                      ldr r1, [r5]
00341fdc  00 20 97 e5                                      ldr r2, [r7]
00341fe0  f9 fe ff eb                                      bl #0x341bcc
00341fe4  00 00 50 e3                                      cmp r0, #0
00341fe8  0a 00 00 0a                                      beq #0x342018
00341fec  05 00 a0 e1                                      mov r0, r5
00341ff0  0c d0 8d e2                                      add sp, sp, #0xc
00341ff4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00341ff8  04 00 a0 e1                                      mov r0, r4
00341ffc  00 10 96 e5                                      ldr r1, [r6]
00342000  00 20 97 e5                                      ldr r2, [r7]
00342004  f0 fe ff eb                                      bl #0x341bcc
00342008  00 00 50 e3                                      cmp r0, #0
0034200c  09 00 00 0a                                      beq #0x342038
00342010  06 50 a0 e1                                      mov r5, r6
00342014  f4 ff ff ea                                      b #0x341fec
00342018  04 00 a0 e1                                      mov r0, r4
0034201c  00 10 96 e5                                      ldr r1, [r6]
00342020  00 20 97 e5                                      ldr r2, [r7]
00342024  e8 fe ff eb                                      bl #0x341bcc
00342028  00 00 50 e3                                      cmp r0, #0
0034202c  f7 ff ff 0a                                      beq #0x342010
00342030  07 50 a0 e1                                      mov r5, r7
00342034  ec ff ff ea                                      b #0x341fec
00342038  04 00 a0 e1                                      mov r0, r4
0034203c  00 10 95 e5                                      ldr r1, [r5]
00342040  00 20 97 e5                                      ldr r2, [r7]
00342044  e0 fe ff eb                                      bl #0x341bcc
00342048  00 00 50 e3                                      cmp r0, #0
0034204c  e6 ff ff 0a                                      beq #0x341fec
00342050  f6 ff ff ea                                      b #0x342030
