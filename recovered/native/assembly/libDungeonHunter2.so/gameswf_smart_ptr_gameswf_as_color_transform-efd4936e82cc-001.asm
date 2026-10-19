; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d9908, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::as_color_transform>
; alias: _ZN7gameswf9smart_ptrINS_18as_color_transformEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::as_color_transform>::set_ref(gameswf::as_color_transform*)
; decoder-mode: arm
007d9908  70 40 2d e9                                      push {r4, r5, r6, lr}
007d990c  00 40 a0 e1                                      mov r4, r0
007d9910  00 00 90 e5                                      ldr r0, [r0]
007d9914  01 50 a0 e1                                      mov r5, r1
007d9918  01 00 50 e1                                      cmp r0, r1
007d991c  08 00 00 0a                                      beq #0x7d9944
007d9920  00 00 50 e3                                      cmp r0, #0
007d9924  00 00 00 0a                                      beq #0x7d992c
007d9928  44 02 fe eb                                      bl #0x75a240
007d992c  00 00 55 e3                                      cmp r5, #0
007d9930  00 50 84 e5                                      str r5, [r4]
007d9934  02 00 00 0a                                      beq #0x7d9944
007d9938  05 00 a0 e1                                      mov r0, r5
007d993c  70 40 bd e8                                      pop {r4, r5, r6, lr}
007d9940  c7 00 fe ea                                      b #0x759c64
007d9944  70 80 bd e8                                      pop {r4, r5, r6, pc}
