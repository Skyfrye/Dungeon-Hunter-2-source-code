; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007938ec, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::texture_cache::region*>
; alias: _ZN7gameswf5arrayIPNS_13texture_cache6regionEE7reserveEi
; demangled: gameswf::array<gameswf::texture_cache::region*>::reserve(int)
; decoder-mode: arm
007938ec  10 40 2d e9                                      push {r4, lr}
007938f0  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007938f4  00 40 a0 e1                                      mov r4, r0
007938f8  00 00 53 e3                                      cmp r3, #0
007938fc  0f 00 00 1a                                      bne #0x793940
00793900  00 00 51 e3                                      cmp r1, #0
00793904  08 20 90 e5                                      ldr r2, [r0, #8]
00793908  08 10 80 e5                                      str r1, [r0, #8]
0079390c  0c 00 00 1a                                      bne #0x793944
00793910  00 00 90 e5                                      ldr r0, [r0]
00793914  00 00 50 e3                                      cmp r0, #0
00793918  01 00 00 0a                                      beq #0x793924
0079391c  02 11 a0 e1                                      lsl r1, r2, #2
00793920  84 fc fe eb                                      bl #0x752b38
00793924  00 30 a0 e3                                      mov r3, #0
00793928  00 30 84 e5                                      str r3, [r4]
0079392c  10 80 bd e8                                      pop {r4, pc}
00793930  01 01 a0 e1                                      lsl r0, r1, #2
00793934  0c 10 a0 e1                                      mov r1, ip
00793938  97 fc fe eb                                      bl #0x752b9c
0079393c  00 00 84 e5                                      str r0, [r4]
00793940  10 80 bd e8                                      pop {r4, pc}
00793944  00 c0 90 e5                                      ldr ip, [r0]
00793948  00 00 5c e3                                      cmp ip, #0
0079394c  f7 ff ff 0a                                      beq #0x793930
00793950  0c 00 a0 e1                                      mov r0, ip
00793954  01 11 a0 e1                                      lsl r1, r1, #2
00793958  02 21 a0 e1                                      lsl r2, r2, #2
0079395c  92 fc fe eb                                      bl #0x752bac
00793960  00 00 84 e5                                      str r0, [r4]
00793964  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00793d24, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::array<gameswf::texture_cache::region*>
; alias: _ZN7gameswf5arrayIPNS_13texture_cache6regionEE6removeEi
; demangled: gameswf::array<gameswf::texture_cache::region*>::remove(int)
; decoder-mode: arm
00793d24  10 40 2d e9                                      push {r4, lr}
00793d28  04 20 90 e5                                      ldr r2, [r0, #4]
00793d2c  00 40 a0 e1                                      mov r4, r0
00793d30  01 30 a0 e1                                      mov r3, r1
00793d34  01 00 52 e3                                      cmp r2, #1
00793d38  0b 00 00 0a                                      beq #0x793d6c
00793d3c  00 00 90 e5                                      ldr r0, [r0]
00793d40  01 20 42 e2                                      sub r2, r2, #1
00793d44  02 20 61 e0                                      rsb r2, r1, r2
00793d48  01 10 81 e2                                      add r1, r1, #1
00793d4c  01 11 80 e0                                      add r1, r0, r1, lsl #2
00793d50  02 21 a0 e1                                      lsl r2, r2, #2
00793d54  03 01 80 e0                                      add r0, r0, r3, lsl #2
00793d58  76 e8 ed eb                                      bl #0x30df38
00793d5c  04 30 94 e5                                      ldr r3, [r4, #4]
00793d60  01 30 43 e2                                      sub r3, r3, #1
00793d64  04 30 84 e5                                      str r3, [r4, #4]
00793d68  10 80 bd e8                                      pop {r4, pc}
00793d6c  00 30 a0 e3                                      mov r3, #0
00793d70  04 30 80 e5                                      str r3, [r0, #4]
00793d74  10 80 bd e8                                      pop {r4, pc}
