; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d4180, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::vector3df>
; alias: _ZN7gameswf5arrayINS_9vector3dfEE7reserveEi
; demangled: gameswf::array<gameswf::vector3df>::reserve(int)
; decoder-mode: arm
007d4180  10 40 2d e9                                      push {r4, lr}
007d4184  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007d4188  00 40 a0 e1                                      mov r4, r0
007d418c  00 00 53 e3                                      cmp r3, #0
007d4190  11 00 00 1a                                      bne #0x7d41dc
007d4194  00 00 51 e3                                      cmp r1, #0
007d4198  08 20 90 e5                                      ldr r2, [r0, #8]
007d419c  08 10 80 e5                                      str r1, [r0, #8]
007d41a0  0e 00 00 1a                                      bne #0x7d41e0
007d41a4  00 00 90 e5                                      ldr r0, [r0]
007d41a8  00 00 50 e3                                      cmp r0, #0
007d41ac  02 00 00 0a                                      beq #0x7d41bc
007d41b0  0c 10 a0 e3                                      mov r1, #0xc
007d41b4  91 02 01 e0                                      mul r1, r1, r2
007d41b8  5e fa fd eb                                      bl #0x752b38
007d41bc  00 30 a0 e3                                      mov r3, #0
007d41c0  00 30 84 e5                                      str r3, [r4]
007d41c4  10 80 bd e8                                      pop {r4, pc}
007d41c8  0c 00 a0 e3                                      mov r0, #0xc
007d41cc  90 01 00 e0                                      mul r0, r0, r1
007d41d0  0c 10 a0 e1                                      mov r1, ip
007d41d4  70 fa fd eb                                      bl #0x752b9c
007d41d8  00 00 84 e5                                      str r0, [r4]
007d41dc  10 80 bd e8                                      pop {r4, pc}
007d41e0  00 c0 90 e5                                      ldr ip, [r0]
007d41e4  00 00 5c e3                                      cmp ip, #0
007d41e8  f6 ff ff 0a                                      beq #0x7d41c8
007d41ec  0c e0 a0 e3                                      mov lr, #0xc
007d41f0  9e 02 02 e0                                      mul r2, lr, r2
007d41f4  0c 00 a0 e1                                      mov r0, ip
007d41f8  9e 01 01 e0                                      mul r1, lr, r1
007d41fc  6a fa fd eb                                      bl #0x752bac
007d4200  00 00 84 e5                                      str r0, [r4]
007d4204  10 80 bd e8                                      pop {r4, pc}
