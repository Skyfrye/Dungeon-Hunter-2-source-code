; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00764304, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::abc_def>
; alias: _ZN7gameswf9smart_ptrINS_7abc_defEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::abc_def>::set_ref(gameswf::abc_def*)
; decoder-mode: arm
00764304  70 40 2d e9                                      push {r4, r5, r6, lr}
00764308  00 40 a0 e1                                      mov r4, r0
0076430c  00 00 90 e5                                      ldr r0, [r0]
00764310  01 50 a0 e1                                      mov r5, r1
00764314  01 00 50 e1                                      cmp r0, r1
00764318  08 00 00 0a                                      beq #0x764340
0076431c  00 00 50 e3                                      cmp r0, #0
00764320  00 00 00 0a                                      beq #0x764328
00764324  c5 d7 ff eb                                      bl #0x75a240
00764328  00 00 55 e3                                      cmp r5, #0
0076432c  00 50 84 e5                                      str r5, [r4]
00764330  02 00 00 0a                                      beq #0x764340
00764334  05 00 a0 e1                                      mov r0, r5
00764338  70 40 bd e8                                      pop {r4, r5, r6, lr}
0076433c  48 d6 ff ea                                      b #0x759c64
00764340  70 80 bd e8                                      pop {r4, r5, r6, pc}
