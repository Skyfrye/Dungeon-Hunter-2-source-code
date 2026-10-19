; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007640d4, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::sound_sample>
; alias: _ZN7gameswf9smart_ptrINS_12sound_sampleEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::sound_sample>::set_ref(gameswf::sound_sample*)
; decoder-mode: arm
007640d4  70 40 2d e9                                      push {r4, r5, r6, lr}
007640d8  00 40 a0 e1                                      mov r4, r0
007640dc  00 00 90 e5                                      ldr r0, [r0]
007640e0  01 50 a0 e1                                      mov r5, r1
007640e4  01 00 50 e1                                      cmp r0, r1
007640e8  08 00 00 0a                                      beq #0x764110
007640ec  00 00 50 e3                                      cmp r0, #0
007640f0  00 00 00 0a                                      beq #0x7640f8
007640f4  51 d8 ff eb                                      bl #0x75a240
007640f8  00 00 55 e3                                      cmp r5, #0
007640fc  00 50 84 e5                                      str r5, [r4]
00764100  02 00 00 0a                                      beq #0x764110
00764104  05 00 a0 e1                                      mov r0, r5
00764108  70 40 bd e8                                      pop {r4, r5, r6, lr}
0076410c  d4 d6 ff ea                                      b #0x759c64
00764110  70 80 bd e8                                      pop {r4, r5, r6, pc}
