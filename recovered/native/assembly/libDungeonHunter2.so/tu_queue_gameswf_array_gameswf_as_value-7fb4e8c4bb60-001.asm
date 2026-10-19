; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0079b374, declared_size=88, range_size=88, mode=arm
; class-group: tu_queue<gameswf::array<gameswf::as_value> >
; alias: _ZN8tu_queueIN7gameswf5arrayINS0_8as_valueEEEE3popEv
; demangled: tu_queue<gameswf::array<gameswf::as_value> >::pop()
; decoder-mode: arm
0079b374  70 40 2d e9                                      push {r4, r5, r6, lr}
0079b378  04 50 90 e5                                      ldr r5, [r0, #4]
0079b37c  08 20 90 e5                                      ldr r2, [r0, #8]
0079b380  00 40 a0 e1                                      mov r4, r0
0079b384  10 30 95 e5                                      ldr r3, [r5, #0x10]
0079b388  01 20 42 e2                                      sub r2, r2, #1
0079b38c  08 20 80 e5                                      str r2, [r0, #8]
0079b390  04 30 80 e5                                      str r3, [r0, #4]
0079b394  00 10 a0 e3                                      mov r1, #0
0079b398  05 00 a0 e1                                      mov r0, r5
0079b39c  00 8e ff eb                                      bl #0x77eba4
0079b3a0  05 00 a0 e1                                      mov r0, r5
0079b3a4  00 10 a0 e3                                      mov r1, #0
0079b3a8  17 fc fe eb                                      bl #0x75a40c
0079b3ac  05 00 a0 e1                                      mov r0, r5
0079b3b0  00 10 a0 e3                                      mov r1, #0
0079b3b4  df dd fe eb                                      bl #0x752b38
0079b3b8  00 30 94 e5                                      ldr r3, [r4]
0079b3bc  05 00 53 e1                                      cmp r3, r5
0079b3c0  00 30 a0 03                                      moveq r3, #0
0079b3c4  00 30 84 05                                      streq r3, [r4]
0079b3c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0079b3cc, declared_size=176, range_size=176, mode=arm
; class-group: tu_queue<gameswf::array<gameswf::as_value> >
; alias: _ZN8tu_queueIN7gameswf5arrayINS0_8as_valueEEEE4pushERKS3_
; demangled: tu_queue<gameswf::array<gameswf::as_value> >::push(gameswf::array<gameswf::as_value> const&)
; decoder-mode: arm
0079b3cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0079b3d0  00 50 90 e5                                      ldr r5, [r0]
0079b3d4  00 40 a0 e1                                      mov r4, r0
0079b3d8  01 70 a0 e1                                      mov r7, r1
0079b3dc  00 00 55 e3                                      cmp r5, #0
0079b3e0  14 00 00 0a                                      beq #0x79b438
0079b3e4  00 10 a0 e3                                      mov r1, #0
0079b3e8  14 00 a0 e3                                      mov r0, #0x14
0079b3ec  ed dd fe eb                                      bl #0x752ba8
0079b3f0  00 60 a0 e3                                      mov r6, #0
0079b3f4  00 50 a0 e1                                      mov r5, r0
0079b3f8  00 60 80 e5                                      str r6, [r0]
0079b3fc  04 60 80 e5                                      str r6, [r0, #4]
0079b400  08 60 80 e5                                      str r6, [r0, #8]
0079b404  0c 60 c0 e5                                      strb r6, [r0, #0xc]
0079b408  07 10 a0 e1                                      mov r1, r7
0079b40c  67 f3 ff eb                                      bl #0x7981b0
0079b410  10 60 85 e5                                      str r6, [r5, #0x10]
0079b414  00 30 94 e5                                      ldr r3, [r4]
0079b418  10 50 83 e5                                      str r5, [r3, #0x10]
0079b41c  00 30 94 e5                                      ldr r3, [r4]
0079b420  10 30 93 e5                                      ldr r3, [r3, #0x10]
0079b424  00 30 84 e5                                      str r3, [r4]
0079b428  08 30 94 e5                                      ldr r3, [r4, #8]
0079b42c  01 30 83 e2                                      add r3, r3, #1
0079b430  08 30 84 e5                                      str r3, [r4, #8]
0079b434  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0079b438  05 10 a0 e1                                      mov r1, r5
0079b43c  14 00 a0 e3                                      mov r0, #0x14
0079b440  d8 dd fe eb                                      bl #0x752ba8
0079b444  07 10 a0 e1                                      mov r1, r7
0079b448  00 60 a0 e1                                      mov r6, r0
0079b44c  00 50 80 e5                                      str r5, [r0]
0079b450  04 50 80 e5                                      str r5, [r0, #4]
0079b454  08 50 80 e5                                      str r5, [r0, #8]
0079b458  0c 50 c0 e5                                      strb r5, [r0, #0xc]
0079b45c  53 f3 ff eb                                      bl #0x7981b0
0079b460  10 50 86 e5                                      str r5, [r6, #0x10]
0079b464  08 30 94 e5                                      ldr r3, [r4, #8]
0079b468  04 60 84 e5                                      str r6, [r4, #4]
0079b46c  00 60 84 e5                                      str r6, [r4]
0079b470  01 30 83 e2                                      add r3, r3, #1
0079b474  08 30 84 e5                                      str r3, [r4, #8]
0079b478  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
