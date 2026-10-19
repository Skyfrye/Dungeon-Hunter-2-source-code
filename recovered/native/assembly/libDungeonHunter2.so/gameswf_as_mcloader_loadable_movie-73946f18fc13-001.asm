; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a2734, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::as_mcloader::loadable_movie
; alias: _ZN7gameswf11as_mcloader14loadable_movieD1Ev
; demangled: gameswf::as_mcloader::loadable_movie::~loadable_movie()
; decoder-mode: arm
007a2734  10 40 2d e9                                      push {r4, lr}
007a2738  00 40 a0 e1                                      mov r4, r0
007a273c  04 00 90 e5                                      ldr r0, [r0, #4]
007a2740  00 00 50 e3                                      cmp r0, #0
007a2744  04 00 00 0a                                      beq #0x7a275c
007a2748  00 10 90 e5                                      ldr r1, [r0]
007a274c  01 10 41 e2                                      sub r1, r1, #1
007a2750  00 00 51 e3                                      cmp r1, #0
007a2754  00 10 80 e5                                      str r1, [r0]
007a2758  05 00 00 0a                                      beq #0x7a2774
007a275c  00 00 94 e5                                      ldr r0, [r4]
007a2760  00 00 50 e3                                      cmp r0, #0
007a2764  00 00 00 0a                                      beq #0x7a276c
007a2768  b4 de fe eb                                      bl #0x75a240
007a276c  04 00 a0 e1                                      mov r0, r4
007a2770  10 80 bd e8                                      pop {r4, pc}
007a2774  ef c0 fe eb                                      bl #0x752b38
007a2778  f7 ff ff ea                                      b #0x7a275c
