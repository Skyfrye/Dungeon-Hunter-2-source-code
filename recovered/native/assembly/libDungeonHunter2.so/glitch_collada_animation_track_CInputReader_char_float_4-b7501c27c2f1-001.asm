; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006139d4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CInputReader<char, float, 4>
; alias: _ZN6glitch7collada15animation_track12CInputReaderIcfLi4EEC1ERKNS0_18SAnimationAccessorE
; demangled: glitch::collada::animation_track::CInputReader<char, float, 4>::CInputReader(glitch::collada::SAnimationAccessor const&)
; decoder-mode: arm
006139d4  70 40 2d e9                                      push {r4, r5, r6, lr}
006139d8  01 50 a0 e1                                      mov r5, r1
006139dc  00 40 a0 e1                                      mov r4, r0
006139e0  00 10 a0 e3                                      mov r1, #0
006139e4  05 00 a0 e1                                      mov r0, r5
006139e8  0d 59 01 eb                                      bl #0x669e24
006139ec  00 00 84 e5                                      str r0, [r4]
006139f0  05 00 a0 e1                                      mov r0, r5
006139f4  32 59 01 eb                                      bl #0x669ec4
006139f8  04 00 84 e5                                      str r0, [r4, #4]
006139fc  05 00 a0 e1                                      mov r0, r5
00613a00  2b 59 01 eb                                      bl #0x669eb4
00613a04  08 00 84 e5                                      str r0, [r4, #8]
00613a08  04 00 a0 e1                                      mov r0, r4
00613a0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
