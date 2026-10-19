; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a15e0, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::as_matrix>
; alias: _ZN7gameswf9smart_ptrINS_9as_matrixEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::as_matrix>::set_ref(gameswf::as_matrix*)
; decoder-mode: arm
007a15e0  70 40 2d e9                                      push {r4, r5, r6, lr}
007a15e4  00 40 a0 e1                                      mov r4, r0
007a15e8  00 00 90 e5                                      ldr r0, [r0]
007a15ec  01 50 a0 e1                                      mov r5, r1
007a15f0  01 00 50 e1                                      cmp r0, r1
007a15f4  08 00 00 0a                                      beq #0x7a161c
007a15f8  00 00 50 e3                                      cmp r0, #0
007a15fc  00 00 00 0a                                      beq #0x7a1604
007a1600  0e e3 fe eb                                      bl #0x75a240
007a1604  00 00 55 e3                                      cmp r5, #0
007a1608  00 50 84 e5                                      str r5, [r4]
007a160c  02 00 00 0a                                      beq #0x7a161c
007a1610  05 00 a0 e1                                      mov r0, r5
007a1614  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a1618  91 e1 fe ea                                      b #0x759c64
007a161c  70 80 bd e8                                      pop {r4, r5, r6, pc}
