; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007a87bc, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::player>
; alias: _ZN7gameswf9smart_ptrINS_6playerEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::player>::set_ref(gameswf::player*)
; decoder-mode: arm
007a87bc  70 40 2d e9                                      push {r4, r5, r6, lr}
007a87c0  00 40 a0 e1                                      mov r4, r0
007a87c4  00 00 90 e5                                      ldr r0, [r0]
007a87c8  01 50 a0 e1                                      mov r5, r1
007a87cc  01 00 50 e1                                      cmp r0, r1
007a87d0  08 00 00 0a                                      beq #0x7a87f8
007a87d4  00 00 50 e3                                      cmp r0, #0
007a87d8  00 00 00 0a                                      beq #0x7a87e0
007a87dc  97 c6 fe eb                                      bl #0x75a240
007a87e0  00 00 55 e3                                      cmp r5, #0
007a87e4  00 50 84 e5                                      str r5, [r4]
007a87e8  02 00 00 0a                                      beq #0x7a87f8
007a87ec  05 00 a0 e1                                      mov r0, r5
007a87f0  70 40 bd e8                                      pop {r4, r5, r6, lr}
007a87f4  1a c5 fe ea                                      b #0x759c64
007a87f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
