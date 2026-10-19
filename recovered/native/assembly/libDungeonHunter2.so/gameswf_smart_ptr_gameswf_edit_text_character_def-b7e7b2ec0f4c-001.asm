; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076ca84, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::edit_text_character_def>
; alias: _ZN7gameswf9smart_ptrINS_23edit_text_character_defEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::edit_text_character_def>::set_ref(gameswf::edit_text_character_def*)
; decoder-mode: arm
0076ca84  70 40 2d e9                                      push {r4, r5, r6, lr}
0076ca88  00 40 a0 e1                                      mov r4, r0
0076ca8c  00 00 90 e5                                      ldr r0, [r0]
0076ca90  01 50 a0 e1                                      mov r5, r1
0076ca94  01 00 50 e1                                      cmp r0, r1
0076ca98  08 00 00 0a                                      beq #0x76cac0
0076ca9c  00 00 50 e3                                      cmp r0, #0
0076caa0  00 00 00 0a                                      beq #0x76caa8
0076caa4  e5 b5 ff eb                                      bl #0x75a240
0076caa8  00 00 55 e3                                      cmp r5, #0
0076caac  00 50 84 e5                                      str r5, [r4]
0076cab0  02 00 00 0a                                      beq #0x76cac0
0076cab4  05 00 a0 e1                                      mov r0, r5
0076cab8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0076cabc  68 b4 ff ea                                      b #0x759c64
0076cac0  70 80 bd e8                                      pop {r4, r5, r6, pc}
