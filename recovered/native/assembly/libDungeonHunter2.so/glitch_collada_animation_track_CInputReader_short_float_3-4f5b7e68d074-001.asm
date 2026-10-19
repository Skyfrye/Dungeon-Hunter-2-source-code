; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00613e20, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CInputReader<short, float, 3>
; alias: _ZN6glitch7collada15animation_track12CInputReaderIsfLi3EEC1ERKNS0_18SAnimationAccessorE
; demangled: glitch::collada::animation_track::CInputReader<short, float, 3>::CInputReader(glitch::collada::SAnimationAccessor const&)
; decoder-mode: arm
00613e20  70 40 2d e9                                      push {r4, r5, r6, lr}
00613e24  01 50 a0 e1                                      mov r5, r1
00613e28  00 40 a0 e1                                      mov r4, r0
00613e2c  00 10 a0 e3                                      mov r1, #0
00613e30  05 00 a0 e1                                      mov r0, r5
00613e34  fa 57 01 eb                                      bl #0x669e24
00613e38  00 00 84 e5                                      str r0, [r4]
00613e3c  05 00 a0 e1                                      mov r0, r5
00613e40  1f 58 01 eb                                      bl #0x669ec4
00613e44  04 00 84 e5                                      str r0, [r4, #4]
00613e48  05 00 a0 e1                                      mov r0, r5
00613e4c  18 58 01 eb                                      bl #0x669eb4
00613e50  08 00 84 e5                                      str r0, [r4, #8]
00613e54  04 00 a0 e1                                      mov r0, r4
00613e58  70 80 bd e8                                      pop {r4, r5, r6, pc}
