; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00613da8, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CInputReader<short, float, 1>
; alias: _ZN6glitch7collada15animation_track12CInputReaderIsfLi1EEC1ERKNS0_18SAnimationAccessorE
; demangled: glitch::collada::animation_track::CInputReader<short, float, 1>::CInputReader(glitch::collada::SAnimationAccessor const&)
; decoder-mode: arm
00613da8  70 40 2d e9                                      push {r4, r5, r6, lr}
00613dac  01 50 a0 e1                                      mov r5, r1
00613db0  00 40 a0 e1                                      mov r4, r0
00613db4  00 10 a0 e3                                      mov r1, #0
00613db8  05 00 a0 e1                                      mov r0, r5
00613dbc  18 58 01 eb                                      bl #0x669e24
00613dc0  00 00 84 e5                                      str r0, [r4]
00613dc4  05 00 a0 e1                                      mov r0, r5
00613dc8  3d 58 01 eb                                      bl #0x669ec4
00613dcc  04 00 84 e5                                      str r0, [r4, #4]
00613dd0  05 00 a0 e1                                      mov r0, r5
00613dd4  36 58 01 eb                                      bl #0x669eb4
00613dd8  08 00 84 e5                                      str r0, [r4, #8]
00613ddc  04 00 a0 e1                                      mov r0, r4
00613de0  70 80 bd e8                                      pop {r4, r5, r6, pc}
