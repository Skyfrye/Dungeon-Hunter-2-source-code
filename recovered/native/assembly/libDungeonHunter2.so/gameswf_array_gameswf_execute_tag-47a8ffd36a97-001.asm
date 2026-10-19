; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076443c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::execute_tag*>
; alias: _ZN7gameswf5arrayIPNS_11execute_tagEE7reserveEi
; demangled: gameswf::array<gameswf::execute_tag*>::reserve(int)
; decoder-mode: arm
0076443c  10 40 2d e9                                      push {r4, lr}
00764440  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00764444  00 40 a0 e1                                      mov r4, r0
00764448  00 00 53 e3                                      cmp r3, #0
0076444c  0f 00 00 1a                                      bne #0x764490
00764450  00 00 51 e3                                      cmp r1, #0
00764454  08 20 90 e5                                      ldr r2, [r0, #8]
00764458  08 10 80 e5                                      str r1, [r0, #8]
0076445c  0c 00 00 1a                                      bne #0x764494
00764460  00 00 90 e5                                      ldr r0, [r0]
00764464  00 00 50 e3                                      cmp r0, #0
00764468  01 00 00 0a                                      beq #0x764474
0076446c  02 11 a0 e1                                      lsl r1, r2, #2
00764470  b0 b9 ff eb                                      bl #0x752b38
00764474  00 30 a0 e3                                      mov r3, #0
00764478  00 30 84 e5                                      str r3, [r4]
0076447c  10 80 bd e8                                      pop {r4, pc}
00764480  01 01 a0 e1                                      lsl r0, r1, #2
00764484  0c 10 a0 e1                                      mov r1, ip
00764488  c3 b9 ff eb                                      bl #0x752b9c
0076448c  00 00 84 e5                                      str r0, [r4]
00764490  10 80 bd e8                                      pop {r4, pc}
00764494  00 c0 90 e5                                      ldr ip, [r0]
00764498  00 00 5c e3                                      cmp ip, #0
0076449c  f7 ff ff 0a                                      beq #0x764480
007644a0  0c 00 a0 e1                                      mov r0, ip
007644a4  01 11 a0 e1                                      lsl r1, r1, #2
007644a8  02 21 a0 e1                                      lsl r2, r2, #2
007644ac  be b9 ff eb                                      bl #0x752bac
007644b0  00 00 84 e5                                      str r0, [r4]
007644b4  10 80 bd e8                                      pop {r4, pc}
