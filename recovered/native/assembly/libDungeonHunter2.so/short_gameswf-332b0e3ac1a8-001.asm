; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077935c, declared_size=44, range_size=44, mode=arm
; class-group: short gameswf
; alias: _ZN7gameswf7read_leIsEET_PNS_7tu_fileE
; demangled: short gameswf::read_le<short>(gameswf::tu_file*)
; decoder-mode: arm
0077935c  04 e0 2d e5                                      str lr, [sp, #-4]!
00779360  00 30 a0 e1                                      mov r3, r0
00779364  0c d0 4d e2                                      sub sp, sp, #0xc
00779368  02 10 a0 e3                                      mov r1, #2
0077936c  06 00 8d e2                                      add r0, sp, #6
00779370  00 20 93 e5                                      ldr r2, [r3]
00779374  0f e0 a0 e1                                      mov lr, pc
00779378  08 f0 93 e5                                      ldr pc, [r3, #8]
0077937c  f6 00 dd e1                                      ldrsh r0, [sp, #6]
00779380  0c d0 8d e2                                      add sp, sp, #0xc
00779384  00 80 bd e8                                      ldm sp!, {pc}
