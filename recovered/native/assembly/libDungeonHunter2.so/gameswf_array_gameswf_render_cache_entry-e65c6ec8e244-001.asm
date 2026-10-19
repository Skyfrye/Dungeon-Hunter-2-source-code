; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0078a6f8, declared_size=136, range_size=136, mode=arm
; class-group: gameswf::array<gameswf::render_cache::entry>
; alias: _ZN7gameswf5arrayINS_12render_cache5entryEE7reserveEi
; demangled: gameswf::array<gameswf::render_cache::entry>::reserve(int)
; decoder-mode: arm
0078a6f8  10 40 2d e9                                      push {r4, lr}
0078a6fc  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0078a700  00 40 a0 e1                                      mov r4, r0
0078a704  00 00 53 e3                                      cmp r3, #0
0078a708  11 00 00 1a                                      bne #0x78a754
0078a70c  00 00 51 e3                                      cmp r1, #0
0078a710  08 20 90 e5                                      ldr r2, [r0, #8]
0078a714  08 10 80 e5                                      str r1, [r0, #8]
0078a718  0e 00 00 1a                                      bne #0x78a758
0078a71c  00 00 90 e5                                      ldr r0, [r0]
0078a720  00 00 50 e3                                      cmp r0, #0
0078a724  02 00 00 0a                                      beq #0x78a734
0078a728  18 10 a0 e3                                      mov r1, #0x18
0078a72c  91 02 01 e0                                      mul r1, r1, r2
0078a730  00 21 ff eb                                      bl #0x752b38
0078a734  00 30 a0 e3                                      mov r3, #0
0078a738  00 30 84 e5                                      str r3, [r4]
0078a73c  10 80 bd e8                                      pop {r4, pc}
0078a740  18 00 a0 e3                                      mov r0, #0x18
0078a744  90 01 00 e0                                      mul r0, r0, r1
0078a748  0c 10 a0 e1                                      mov r1, ip
0078a74c  12 21 ff eb                                      bl #0x752b9c
0078a750  00 00 84 e5                                      str r0, [r4]
0078a754  10 80 bd e8                                      pop {r4, pc}
0078a758  00 c0 90 e5                                      ldr ip, [r0]
0078a75c  00 00 5c e3                                      cmp ip, #0
0078a760  f6 ff ff 0a                                      beq #0x78a740
0078a764  18 e0 a0 e3                                      mov lr, #0x18
0078a768  9e 02 02 e0                                      mul r2, lr, r2
0078a76c  0c 00 a0 e1                                      mov r0, ip
0078a770  9e 01 01 e0                                      mul r1, lr, r1
0078a774  0c 21 ff eb                                      bl #0x752bac
0078a778  00 00 84 e5                                      str r0, [r4]
0078a77c  10 80 bd e8                                      pop {r4, pc}
