; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c2950, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::except_info>
; alias: _ZN7gameswf9smart_ptrINS_11except_infoEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::except_info>::set_ref(gameswf::except_info*)
; decoder-mode: arm
007c2950  70 40 2d e9                                      push {r4, r5, r6, lr}
007c2954  00 40 a0 e1                                      mov r4, r0
007c2958  00 00 90 e5                                      ldr r0, [r0]
007c295c  01 50 a0 e1                                      mov r5, r1
007c2960  01 00 50 e1                                      cmp r0, r1
007c2964  08 00 00 0a                                      beq #0x7c298c
007c2968  00 00 50 e3                                      cmp r0, #0
007c296c  00 00 00 0a                                      beq #0x7c2974
007c2970  32 5e fe eb                                      bl #0x75a240
007c2974  00 00 55 e3                                      cmp r5, #0
007c2978  00 50 84 e5                                      str r5, [r4]
007c297c  02 00 00 0a                                      beq #0x7c298c
007c2980  05 00 a0 e1                                      mov r0, r5
007c2984  70 40 bd e8                                      pop {r4, r5, r6, lr}
007c2988  b5 5c fe ea                                      b #0x759c64
007c298c  70 80 bd e8                                      pop {r4, r5, r6, pc}
