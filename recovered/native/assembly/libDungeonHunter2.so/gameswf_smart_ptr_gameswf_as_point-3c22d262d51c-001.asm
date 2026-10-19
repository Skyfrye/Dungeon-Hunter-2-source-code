; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a1454, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::as_point>
; alias: _ZN7gameswf9smart_ptrINS_8as_pointEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::as_point>::set_ref(gameswf::as_point*)
; decoder-mode: arm
007a1454  70 40 2d e9                                      push {r4, r5, r6, lr}
007a1458  00 40 a0 e1                                      mov r4, r0
007a145c  00 00 90 e5                                      ldr r0, [r0]
007a1460  01 50 a0 e1                                      mov r5, r1
007a1464  01 00 50 e1                                      cmp r0, r1
007a1468  08 00 00 0a                                      beq #0x7a1490
007a146c  00 00 50 e3                                      cmp r0, #0
007a1470  00 00 00 0a                                      beq #0x7a1478
007a1474  71 e3 fe eb                                      bl #0x75a240
007a1478  00 00 55 e3                                      cmp r5, #0
007a147c  00 50 84 e5                                      str r5, [r4]
007a1480  02 00 00 0a                                      beq #0x7a1490
007a1484  05 00 a0 e1                                      mov r0, r5
007a1488  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a148c  f4 e1 fe ea                                      b #0x759c64
007a1490  70 80 bd e8                                      pop {r4, r5, r6, pc}
