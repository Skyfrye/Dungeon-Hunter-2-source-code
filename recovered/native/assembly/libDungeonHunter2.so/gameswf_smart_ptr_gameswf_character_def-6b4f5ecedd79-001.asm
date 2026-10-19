; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00764048, declared_size=64, range_size=64, mode=arm
; class-group: gameswf::smart_ptr<gameswf::character_def>
; alias: _ZN7gameswf9smart_ptrINS_13character_defEE7set_refEPS1_
; demangled: gameswf::smart_ptr<gameswf::character_def>::set_ref(gameswf::character_def*)
; decoder-mode: arm
00764048  70 40 2d e9                                      push {r4, r5, r6, lr}
0076404c  00 40 a0 e1                                      mov r4, r0
00764050  00 00 90 e5                                      ldr r0, [r0]
00764054  01 50 a0 e1                                      mov r5, r1
00764058  01 00 50 e1                                      cmp r0, r1
0076405c  08 00 00 0a                                      beq #0x764084
00764060  00 00 50 e3                                      cmp r0, #0
00764064  00 00 00 0a                                      beq #0x76406c
00764068  74 d8 ff eb                                      bl #0x75a240
0076406c  00 00 55 e3                                      cmp r5, #0
00764070  00 50 84 e5                                      str r5, [r4]
00764074  02 00 00 0a                                      beq #0x764084
00764078  05 00 a0 e1                                      mov r0, r5
0076407c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00764080  f7 d6 ff ea                                      b #0x759c64
00764084  70 80 bd e8                                      pop {r4, r5, r6, pc}
