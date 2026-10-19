; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0043e364, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::fn_call
; alias: _ZNK7gameswf7fn_call10get_playerEv
; demangled: gameswf::fn_call::get_player() const
; decoder-mode: arm
0043e364  10 40 2d e9                                      push {r4, lr}
0043e368  0c 40 90 e5                                      ldr r4, [r0, #0xc]
0043e36c  68 00 94 e5                                      ldr r0, [r4, #0x68]
0043e370  00 00 50 e3                                      cmp r0, #0
0043e374  03 00 00 0a                                      beq #0x43e388
0043e378  64 30 94 e5                                      ldr r3, [r4, #0x64]
0043e37c  04 20 d3 e5                                      ldrb r2, [r3, #4]
0043e380  00 00 52 e3                                      cmp r2, #0
0043e384  00 00 00 0a                                      beq #0x43e38c
0043e388  10 80 bd e8                                      pop {r4, pc}
0043e38c  00 10 93 e5                                      ldr r1, [r3]
0043e390  01 10 41 e2                                      sub r1, r1, #1
0043e394  00 00 51 e3                                      cmp r1, #0
0043e398  00 10 83 e5                                      str r1, [r3]
0043e39c  01 00 00 1a                                      bne #0x43e3a8
0043e3a0  03 00 a0 e1                                      mov r0, r3
0043e3a4  e3 51 0c eb                                      bl #0x752b38
0043e3a8  00 00 a0 e3                                      mov r0, #0
0043e3ac  68 00 84 e5                                      str r0, [r4, #0x68]
0043e3b0  64 00 84 e5                                      str r0, [r4, #0x64]
0043e3b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007c1e18, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::fn_call
; alias: _ZNK7gameswf7fn_call8get_rootEv
; demangled: gameswf::fn_call::get_root() const
; decoder-mode: arm
007c1e18  10 40 2d e9                                      push {r4, lr}
007c1e1c  0c 40 90 e5                                      ldr r4, [r0, #0xc]
007c1e20  68 00 94 e5                                      ldr r0, [r4, #0x68]
007c1e24  00 00 50 e3                                      cmp r0, #0
007c1e28  03 00 00 0a                                      beq #0x7c1e3c
007c1e2c  64 30 94 e5                                      ldr r3, [r4, #0x64]
007c1e30  04 20 d3 e5                                      ldrb r2, [r3, #4]
007c1e34  00 00 52 e3                                      cmp r2, #0
007c1e38  01 00 00 0a                                      beq #0x7c1e44
007c1e3c  10 40 bd e8                                      pop {r4, lr}
007c1e40  db ad fe ea                                      b #0x76d5b4
007c1e44  00 10 93 e5                                      ldr r1, [r3]
007c1e48  01 10 41 e2                                      sub r1, r1, #1
007c1e4c  00 00 51 e3                                      cmp r1, #0
007c1e50  00 10 83 e5                                      str r1, [r3]
007c1e54  01 00 00 1a                                      bne #0x7c1e60
007c1e58  03 00 a0 e1                                      mov r0, r3
007c1e5c  35 43 fe eb                                      bl #0x752b38
007c1e60  00 00 a0 e3                                      mov r0, #0
007c1e64  68 00 84 e5                                      str r0, [r4, #0x68]
007c1e68  64 00 84 e5                                      str r0, [r4, #0x64]
007c1e6c  f2 ff ff ea                                      b #0x7c1e3c
