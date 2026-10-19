; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00783d60, declared_size=116, range_size=116, mode=arm
; class-group: gameswf::array<char>
; alias: _ZN7gameswf5arrayIcE7reserveEi
; demangled: gameswf::array<char>::reserve(int)
; decoder-mode: arm
00783d60  10 40 2d e9                                      push {r4, lr}
00783d64  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00783d68  00 40 a0 e1                                      mov r4, r0
00783d6c  00 00 53 e3                                      cmp r3, #0
00783d70  0f 00 00 1a                                      bne #0x783db4
00783d74  00 00 51 e3                                      cmp r1, #0
00783d78  08 20 90 e5                                      ldr r2, [r0, #8]
00783d7c  08 10 84 e5                                      str r1, [r4, #8]
00783d80  0c 00 00 1a                                      bne #0x783db8
00783d84  00 00 90 e5                                      ldr r0, [r0]
00783d88  00 00 50 e3                                      cmp r0, #0
00783d8c  01 00 00 0a                                      beq #0x783d98
00783d90  02 10 a0 e1                                      mov r1, r2
00783d94  67 3b ff eb                                      bl #0x752b38
00783d98  00 30 a0 e3                                      mov r3, #0
00783d9c  00 30 84 e5                                      str r3, [r4]
00783da0  10 80 bd e8                                      pop {r4, pc}
00783da4  01 00 a0 e1                                      mov r0, r1
00783da8  0e 10 a0 e1                                      mov r1, lr
00783dac  7a 3b ff eb                                      bl #0x752b9c
00783db0  00 00 84 e5                                      str r0, [r4]
00783db4  10 80 bd e8                                      pop {r4, pc}
00783db8  00 e0 90 e5                                      ldr lr, [r0]
00783dbc  00 00 5e e3                                      cmp lr, #0
00783dc0  f7 ff ff 0a                                      beq #0x783da4
00783dc4  0e 00 a0 e1                                      mov r0, lr
00783dc8  77 3b ff eb                                      bl #0x752bac
00783dcc  00 00 84 e5                                      str r0, [r4]
00783dd0  10 80 bd e8                                      pop {r4, pc}
