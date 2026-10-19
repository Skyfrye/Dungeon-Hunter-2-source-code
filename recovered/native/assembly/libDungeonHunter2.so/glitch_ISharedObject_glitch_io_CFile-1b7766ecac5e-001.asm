; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0034f038, declared_size=48, range_size=48, mode=arm
; class-group: glitch::ISharedObject<glitch::io::CFile>
; alias: _ZNK6glitch13ISharedObjectINS_2io5CFileEE4dropEv
; demangled: glitch::ISharedObject<glitch::io::CFile>::drop() const
; decoder-mode: arm
0034f038  10 40 2d e9                                      push {r4, lr}
0034f03c  00 30 90 e5                                      ldr r3, [r0]
0034f040  00 40 a0 e1                                      mov r4, r0
0034f044  01 30 43 e2                                      sub r3, r3, #1
0034f048  00 00 53 e3                                      cmp r3, #0
0034f04c  00 30 80 e5                                      str r3, [r0]
0034f050  03 00 00 1a                                      bne #0x34f064
0034f054  2b 78 08 eb                                      bl #0x56d108
0034f058  04 00 a0 e1                                      mov r0, r4
0034f05c  10 40 bd e8                                      pop {r4, lr}
0034f060  f6 04 ff ea                                      b #0x310440
0034f064  10 80 bd e8                                      pop {r4, pc}
