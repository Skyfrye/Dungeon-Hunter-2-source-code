; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00613600, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::animation_track::CInputReader<short, float, 4>
; alias: _ZN6glitch7collada15animation_track12CInputReaderIsfLi4EEC1ERKNS0_18SAnimationAccessorE
; demangled: glitch::collada::animation_track::CInputReader<short, float, 4>::CInputReader(glitch::collada::SAnimationAccessor const&)
; decoder-mode: arm
00613600  70 40 2d e9                                      push {r4, r5, r6, lr}
00613604  01 50 a0 e1                                      mov r5, r1
00613608  00 40 a0 e1                                      mov r4, r0
0061360c  00 10 a0 e3                                      mov r1, #0
00613610  05 00 a0 e1                                      mov r0, r5
00613614  02 5a 01 eb                                      bl #0x669e24
00613618  00 00 84 e5                                      str r0, [r4]
0061361c  05 00 a0 e1                                      mov r0, r5
00613620  27 5a 01 eb                                      bl #0x669ec4
00613624  04 00 84 e5                                      str r0, [r4, #4]
00613628  05 00 a0 e1                                      mov r0, r5
0061362c  20 5a 01 eb                                      bl #0x669eb4
00613630  08 00 84 e5                                      str r0, [r4, #8]
00613634  04 00 a0 e1                                      mov r0, r4
00613638  70 80 bd e8                                      pop {r4, r5, r6, pc}
