; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0076d454, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::array<gameswf::blend_mode::id>
; alias: _ZN7gameswf5arrayINS_10blend_mode2idEE7reserveEi.clone.5
; demangled: gameswf::array<gameswf::blend_mode::id>::reserve(int) [clone .clone.5]
; decoder-mode: arm
0076d454  10 40 2d e9                                      push {r4, lr}
0076d458  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0076d45c  00 40 a0 e1                                      mov r4, r0
0076d460  00 00 53 e3                                      cmp r3, #0
0076d464  08 00 00 1a                                      bne #0x76d48c
0076d468  00 00 90 e5                                      ldr r0, [r0]
0076d46c  08 10 94 e5                                      ldr r1, [r4, #8]
0076d470  08 30 84 e5                                      str r3, [r4, #8]
0076d474  00 00 50 e3                                      cmp r0, #0
0076d478  01 00 00 0a                                      beq #0x76d484
0076d47c  01 11 a0 e1                                      lsl r1, r1, #2
0076d480  ac 95 ff eb                                      bl #0x752b38
0076d484  00 30 a0 e3                                      mov r3, #0
0076d488  00 30 84 e5                                      str r3, [r4]
0076d48c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0077e8b4, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::blend_mode::id>
; alias: _ZN7gameswf5arrayINS_10blend_mode2idEE7reserveEi
; demangled: gameswf::array<gameswf::blend_mode::id>::reserve(int)
; decoder-mode: arm
0077e8b4  10 40 2d e9                                      push {r4, lr}
0077e8b8  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0077e8bc  00 40 a0 e1                                      mov r4, r0
0077e8c0  00 00 53 e3                                      cmp r3, #0
0077e8c4  0f 00 00 1a                                      bne #0x77e908
0077e8c8  00 00 51 e3                                      cmp r1, #0
0077e8cc  08 20 90 e5                                      ldr r2, [r0, #8]
0077e8d0  08 10 80 e5                                      str r1, [r0, #8]
0077e8d4  0c 00 00 1a                                      bne #0x77e90c
0077e8d8  00 00 90 e5                                      ldr r0, [r0]
0077e8dc  00 00 50 e3                                      cmp r0, #0
0077e8e0  01 00 00 0a                                      beq #0x77e8ec
0077e8e4  02 11 a0 e1                                      lsl r1, r2, #2
0077e8e8  92 50 ff eb                                      bl #0x752b38
0077e8ec  00 30 a0 e3                                      mov r3, #0
0077e8f0  00 30 84 e5                                      str r3, [r4]
0077e8f4  10 80 bd e8                                      pop {r4, pc}
0077e8f8  01 01 a0 e1                                      lsl r0, r1, #2
0077e8fc  0c 10 a0 e1                                      mov r1, ip
0077e900  a5 50 ff eb                                      bl #0x752b9c
0077e904  00 00 84 e5                                      str r0, [r4]
0077e908  10 80 bd e8                                      pop {r4, pc}
0077e90c  00 c0 90 e5                                      ldr ip, [r0]
0077e910  00 00 5c e3                                      cmp ip, #0
0077e914  f7 ff ff 0a                                      beq #0x77e8f8
0077e918  0c 00 a0 e1                                      mov r0, ip
0077e91c  01 11 a0 e1                                      lsl r1, r1, #2
0077e920  02 21 a0 e1                                      lsl r2, r2, #2
0077e924  a0 50 ff eb                                      bl #0x752bac
0077e928  00 00 84 e5                                      str r0, [r4]
0077e92c  10 80 bd e8                                      pop {r4, pc}
