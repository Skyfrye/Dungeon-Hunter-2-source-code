; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077b84c, declared_size=44, range_size=44, mode=arm
; class-group: float gameswf
; alias: _ZN7gameswf7read_leIfEET_PNS_7tu_fileE
; demangled: float gameswf::read_le<float>(gameswf::tu_file*)
; decoder-mode: arm
0077b84c  04 e0 2d e5                                      str lr, [sp, #-4]!
0077b850  00 30 a0 e1                                      mov r3, r0
0077b854  0c d0 4d e2                                      sub sp, sp, #0xc
0077b858  04 10 a0 e3                                      mov r1, #4
0077b85c  01 00 8d e0                                      add r0, sp, r1
0077b860  00 20 93 e5                                      ldr r2, [r3]
0077b864  0f e0 a0 e1                                      mov lr, pc
0077b868  08 f0 93 e5                                      ldr pc, [r3, #8]
0077b86c  04 00 9d e5                                      ldr r0, [sp, #4]
0077b870  0c d0 8d e2                                      add sp, sp, #0xc
0077b874  00 80 bd e8                                      ldm sp!, {pc}
