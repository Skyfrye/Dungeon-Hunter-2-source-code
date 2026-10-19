; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b8d04, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::instance_info>
; alias: _ZN7gameswf9smart_ptrINS_13instance_infoEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::instance_info>::set_ref(gameswf::instance_info*)
; decoder-mode: arm
007b8d04  70 40 2d e9                                      push {r4, r5, r6, lr}
007b8d08  00 40 a0 e1                                      mov r4, r0
007b8d0c  00 00 90 e5                                      ldr r0, [r0]
007b8d10  01 50 a0 e1                                      mov r5, r1
007b8d14  01 00 50 e1                                      cmp r0, r1
007b8d18  08 00 00 0a                                      beq #0x7b8d40
007b8d1c  00 00 50 e3                                      cmp r0, #0
007b8d20  00 00 00 0a                                      beq #0x7b8d28
007b8d24  45 85 fe eb                                      bl #0x75a240
007b8d28  00 00 55 e3                                      cmp r5, #0
007b8d2c  00 50 84 e5                                      str r5, [r4]
007b8d30  02 00 00 0a                                      beq #0x7b8d40
007b8d34  05 00 a0 e1                                      mov r0, r5
007b8d38  70 40 bd e8                                      pop {r4, r5, r6, lr}
007b8d3c  c8 83 fe ea                                      b #0x759c64
007b8d40  70 80 bd e8                                      pop {r4, r5, r6, pc}
