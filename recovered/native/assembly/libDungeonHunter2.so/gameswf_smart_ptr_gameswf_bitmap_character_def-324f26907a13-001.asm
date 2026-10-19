; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007617dc, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::bitmap_character_def>
; alias: _ZN7gameswf9smart_ptrINS_20bitmap_character_defEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::bitmap_character_def>::set_ref(gameswf::bitmap_character_def*)
; decoder-mode: arm
007617dc  70 40 2d e9                                      push {r4, r5, r6, lr}
007617e0  00 40 a0 e1                                      mov r4, r0
007617e4  00 00 90 e5                                      ldr r0, [r0]
007617e8  01 50 a0 e1                                      mov r5, r1
007617ec  01 00 50 e1                                      cmp r0, r1
007617f0  08 00 00 0a                                      beq #0x761818
007617f4  00 00 50 e3                                      cmp r0, #0
007617f8  00 00 00 0a                                      beq #0x761800
007617fc  8f e2 ff eb                                      bl #0x75a240
00761800  00 00 55 e3                                      cmp r5, #0
00761804  00 50 84 e5                                      str r5, [r4]
00761808  02 00 00 0a                                      beq #0x761818
0076180c  05 00 a0 e1                                      mov r0, r5
00761810  70 40 bd e8                                      pop {r4, r5, r6, lr}
00761814  12 e1 ff ea                                      b #0x759c64
00761818  70 80 bd e8                                      pop {r4, r5, r6, pc}
