; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007c4c04, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::bitmap_font_entity>
; alias: _ZN7gameswf9smart_ptrINS_18bitmap_font_entityEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::bitmap_font_entity>::set_ref(gameswf::bitmap_font_entity*)
; decoder-mode: arm
007c4c04  70 40 2d e9                                      push {r4, r5, r6, lr}
007c4c08  00 40 a0 e1                                      mov r4, r0
007c4c0c  00 00 90 e5                                      ldr r0, [r0]
007c4c10  01 50 a0 e1                                      mov r5, r1
007c4c14  01 00 50 e1                                      cmp r0, r1
007c4c18  08 00 00 0a                                      beq #0x7c4c40
007c4c1c  00 00 50 e3                                      cmp r0, #0
007c4c20  00 00 00 0a                                      beq #0x7c4c28
007c4c24  85 55 fe eb                                      bl #0x75a240
007c4c28  00 00 55 e3                                      cmp r5, #0
007c4c2c  00 50 84 e5                                      str r5, [r4]
007c4c30  02 00 00 0a                                      beq #0x7c4c40
007c4c34  05 00 a0 e1                                      mov r0, r5
007c4c38  70 40 bd e8                                      pop {r4, r5, r6, lr}
007c4c3c  08 54 fe ea                                      b #0x759c64
007c4c40  70 80 bd e8                                      pop {r4, r5, r6, pc}
