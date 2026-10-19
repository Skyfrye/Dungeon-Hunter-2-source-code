; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0077e930, declared_size=116, range_size=116, mode=arm
; class-group: gameswf::array<bool>
; alias: _ZN7gameswf5arrayIbE7reserveEi
; demangled: gameswf::array<bool>::reserve(int)
; decoder-mode: arm
0077e930  10 40 2d e9                                      push {r4, lr}
0077e934  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0077e938  00 40 a0 e1                                      mov r4, r0
0077e93c  00 00 53 e3                                      cmp r3, #0
0077e940  0f 00 00 1a                                      bne #0x77e984
0077e944  00 00 51 e3                                      cmp r1, #0
0077e948  08 20 90 e5                                      ldr r2, [r0, #8]
0077e94c  08 10 84 e5                                      str r1, [r4, #8]
0077e950  0c 00 00 1a                                      bne #0x77e988
0077e954  00 00 90 e5                                      ldr r0, [r0]
0077e958  00 00 50 e3                                      cmp r0, #0
0077e95c  01 00 00 0a                                      beq #0x77e968
0077e960  02 10 a0 e1                                      mov r1, r2
0077e964  73 50 ff eb                                      bl #0x752b38
0077e968  00 30 a0 e3                                      mov r3, #0
0077e96c  00 30 84 e5                                      str r3, [r4]
0077e970  10 80 bd e8                                      pop {r4, pc}
0077e974  01 00 a0 e1                                      mov r0, r1
0077e978  0e 10 a0 e1                                      mov r1, lr
0077e97c  86 50 ff eb                                      bl #0x752b9c
0077e980  00 00 84 e5                                      str r0, [r4]
0077e984  10 80 bd e8                                      pop {r4, pc}
0077e988  00 e0 90 e5                                      ldr lr, [r0]
0077e98c  00 00 5e e3                                      cmp lr, #0
0077e990  f7 ff ff 0a                                      beq #0x77e974
0077e994  0e 00 a0 e1                                      mov r0, lr
0077e998  83 50 ff eb                                      bl #0x752bac
0077e99c  00 00 84 e5                                      str r0, [r4]
0077e9a0  10 80 bd e8                                      pop {r4, pc}
