; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b802c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<unsigned int>
; alias: _ZN7gameswf5arrayIjE7reserveEi
; demangled: gameswf::array<unsigned int>::reserve(int)
; decoder-mode: arm
007b802c  10 40 2d e9                                      push {r4, lr}
007b8030  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b8034  00 40 a0 e1                                      mov r4, r0
007b8038  00 00 53 e3                                      cmp r3, #0
007b803c  0f 00 00 1a                                      bne #0x7b8080
007b8040  00 00 51 e3                                      cmp r1, #0
007b8044  08 20 90 e5                                      ldr r2, [r0, #8]
007b8048  08 10 80 e5                                      str r1, [r0, #8]
007b804c  0c 00 00 1a                                      bne #0x7b8084
007b8050  00 00 90 e5                                      ldr r0, [r0]
007b8054  00 00 50 e3                                      cmp r0, #0
007b8058  01 00 00 0a                                      beq #0x7b8064
007b805c  02 11 a0 e1                                      lsl r1, r2, #2
007b8060  b4 6a fe eb                                      bl #0x752b38
007b8064  00 30 a0 e3                                      mov r3, #0
007b8068  00 30 84 e5                                      str r3, [r4]
007b806c  10 80 bd e8                                      pop {r4, pc}
007b8070  01 01 a0 e1                                      lsl r0, r1, #2
007b8074  0c 10 a0 e1                                      mov r1, ip
007b8078  c7 6a fe eb                                      bl #0x752b9c
007b807c  00 00 84 e5                                      str r0, [r4]
007b8080  10 80 bd e8                                      pop {r4, pc}
007b8084  00 c0 90 e5                                      ldr ip, [r0]
007b8088  00 00 5c e3                                      cmp ip, #0
007b808c  f7 ff ff 0a                                      beq #0x7b8070
007b8090  0c 00 a0 e1                                      mov r0, ip
007b8094  01 11 a0 e1                                      lsl r1, r1, #2
007b8098  02 21 a0 e1                                      lsl r2, r2, #2
007b809c  c2 6a fe eb                                      bl #0x752bac
007b80a0  00 00 84 e5                                      str r0, [r4]
007b80a4  10 80 bd e8                                      pop {r4, pc}
