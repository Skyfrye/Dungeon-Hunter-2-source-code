; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b3110, declared_size=104, range_size=104, mode=arm
; class-group: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate
; alias: _ZN7gameswf16ear_clip_wrapperIfNS_20ear_clip_triangulate17ear_clip_array_ioIfEES3_E8tristateD1Ev
; demangled: gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::tristate::~tristate()
; decoder-mode: arm
007b3110  70 40 2d e9                                      push {r4, r5, r6, lr}
007b3114  3c 50 90 e5                                      ldr r5, [r0, #0x3c]
007b3118  00 40 a0 e1                                      mov r4, r0
007b311c  00 00 55 e3                                      cmp r5, #0
007b3120  04 00 00 0a                                      beq #0x7b3138
007b3124  05 00 a0 e1                                      mov r0, r5
007b3128  f6 fa ff eb                                      bl #0x7b1d08
007b312c  05 00 a0 e1                                      mov r0, r5
007b3130  00 10 a0 e3                                      mov r1, #0
007b3134  7f 7e fe eb                                      bl #0x752b38
007b3138  14 50 84 e2                                      add r5, r4, #0x14
007b313c  05 00 a0 e1                                      mov r0, r5
007b3140  00 10 a0 e3                                      mov r1, #0
007b3144  75 fb ff eb                                      bl #0x7b1f20
007b3148  05 00 a0 e1                                      mov r0, r5
007b314c  00 10 a0 e3                                      mov r1, #0
007b3150  04 50 84 e2                                      add r5, r4, #4
007b3154  4f fb ff eb                                      bl #0x7b1e98
007b3158  05 00 a0 e1                                      mov r0, r5
007b315c  00 10 a0 e3                                      mov r1, #0
007b3160  2d fb ff eb                                      bl #0x7b1e1c
007b3164  05 00 a0 e1                                      mov r0, r5
007b3168  00 10 a0 e3                                      mov r1, #0
007b316c  08 fb ff eb                                      bl #0x7b1d94
007b3170  04 00 a0 e1                                      mov r0, r4
007b3174  70 80 bd e8                                      pop {r4, r5, r6, pc}
