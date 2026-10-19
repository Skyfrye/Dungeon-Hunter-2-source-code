; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d2838, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::as_array>
; alias: _ZN7gameswf9smart_ptrINS_8as_arrayEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::as_array>::set_ref(gameswf::as_array*)
; decoder-mode: arm
007d2838  70 40 2d e9                                      push {r4, r5, r6, lr}
007d283c  00 40 a0 e1                                      mov r4, r0
007d2840  00 00 90 e5                                      ldr r0, [r0]
007d2844  01 50 a0 e1                                      mov r5, r1
007d2848  01 00 50 e1                                      cmp r0, r1
007d284c  08 00 00 0a                                      beq #0x7d2874
007d2850  00 00 50 e3                                      cmp r0, #0
007d2854  00 00 00 0a                                      beq #0x7d285c
007d2858  78 1e fe eb                                      bl #0x75a240
007d285c  00 00 55 e3                                      cmp r5, #0
007d2860  00 50 84 e5                                      str r5, [r4]
007d2864  02 00 00 0a                                      beq #0x7d2874
007d2868  05 00 a0 e1                                      mov r0, r5
007d286c  70 40 bd e8                                      pop {r4, r5, r6, lr}
007d2870  fb 1c fe ea                                      b #0x759c64
007d2874  70 80 bd e8                                      pop {r4, r5, r6, pc}
