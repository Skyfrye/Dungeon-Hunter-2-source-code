; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075518c, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::character>
; alias: _ZN7gameswf9smart_ptrINS_9characterEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::character>::set_ref(gameswf::character*)
; decoder-mode: arm
0075518c  70 40 2d e9                                      push {r4, r5, r6, lr}
00755190  00 40 a0 e1                                      mov r4, r0
00755194  00 00 90 e5                                      ldr r0, [r0]
00755198  01 50 a0 e1                                      mov r5, r1
0075519c  01 00 50 e1                                      cmp r0, r1
007551a0  08 00 00 0a                                      beq #0x7551c8
007551a4  00 00 50 e3                                      cmp r0, #0
007551a8  00 00 00 0a                                      beq #0x7551b0
007551ac  23 14 00 eb                                      bl #0x75a240
007551b0  00 00 55 e3                                      cmp r5, #0
007551b4  00 50 84 e5                                      str r5, [r4]
007551b8  02 00 00 0a                                      beq #0x7551c8
007551bc  05 00 a0 e1                                      mov r0, r5
007551c0  70 40 bd e8                                      pop {r4, r5, r6, lr}
007551c4  a6 12 00 ea                                      b #0x759c64
007551c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
