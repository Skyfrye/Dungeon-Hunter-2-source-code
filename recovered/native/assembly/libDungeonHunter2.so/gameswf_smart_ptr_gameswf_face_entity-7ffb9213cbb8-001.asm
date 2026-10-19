; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d07dc, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::face_entity>
; alias: _ZN7gameswf9smart_ptrINS_11face_entityEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::face_entity>::set_ref(gameswf::face_entity*)
; decoder-mode: arm
007d07dc  70 40 2d e9                                      push {r4, r5, r6, lr}
007d07e0  00 40 a0 e1                                      mov r4, r0
007d07e4  00 00 90 e5                                      ldr r0, [r0]
007d07e8  01 50 a0 e1                                      mov r5, r1
007d07ec  01 00 50 e1                                      cmp r0, r1
007d07f0  08 00 00 0a                                      beq #0x7d0818
007d07f4  00 00 50 e3                                      cmp r0, #0
007d07f8  00 00 00 0a                                      beq #0x7d0800
007d07fc  8f 26 fe eb                                      bl #0x75a240
007d0800  00 00 55 e3                                      cmp r5, #0
007d0804  00 50 84 e5                                      str r5, [r4]
007d0808  02 00 00 0a                                      beq #0x7d0818
007d080c  05 00 a0 e1                                      mov r0, r5
007d0810  70 40 bd e8                                      pop {r4, r5, r6, lr}
007d0814  12 25 fe ea                                      b #0x759c64
007d0818  70 80 bd e8                                      pop {r4, r5, r6, pc}
