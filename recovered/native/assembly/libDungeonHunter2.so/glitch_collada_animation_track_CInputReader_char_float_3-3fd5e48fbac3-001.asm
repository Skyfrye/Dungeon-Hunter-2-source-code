; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0061444c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CInputReader<char, float, 3>
; alias: _ZN6glitch7collada15animation_track12CInputReaderIcfLi3EEC1ERKNS0_18SAnimationAccessorE
; demangled: glitch::collada::animation_track::CInputReader<char, float, 3>::CInputReader(glitch::collada::SAnimationAccessor const&)
; decoder-mode: arm
0061444c  70 40 2d e9                                      push {r4, r5, r6, lr}
00614450  01 50 a0 e1                                      mov r5, r1
00614454  00 40 a0 e1                                      mov r4, r0
00614458  00 10 a0 e3                                      mov r1, #0
0061445c  05 00 a0 e1                                      mov r0, r5
00614460  6f 56 01 eb                                      bl #0x669e24
00614464  00 00 84 e5                                      str r0, [r4]
00614468  05 00 a0 e1                                      mov r0, r5
0061446c  94 56 01 eb                                      bl #0x669ec4
00614470  04 00 84 e5                                      str r0, [r4, #4]
00614474  05 00 a0 e1                                      mov r0, r5
00614478  8d 56 01 eb                                      bl #0x669eb4
0061447c  08 00 84 e5                                      str r0, [r4, #8]
00614480  04 00 a0 e1                                      mov r0, r4
00614484  70 80 bd e8                                      pop {r4, r5, r6, pc}
