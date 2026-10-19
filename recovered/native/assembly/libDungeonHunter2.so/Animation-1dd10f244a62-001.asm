; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00364ad4, declared_size=32, range_size=32, mode=arm
; class-group: Animation
; alias: _ZN9AnimationD1Ev
; demangled: Animation::~Animation()
; decoder-mode: arm
00364ad4  10 40 2d e9                                      push {r4, lr}
00364ad8  00 40 a0 e1                                      mov r4, r0
00364adc  18 00 80 e2                                      add r0, r0, #0x18
00364ae0  63 d2 0a eb                                      bl #0x619474
00364ae4  04 00 a0 e1                                      mov r0, r4
00364ae8  af bb fe eb                                      bl #0x3139ac
00364aec  04 00 a0 e1                                      mov r0, r4
00364af0  10 80 bd e8                                      pop {r4, pc}
