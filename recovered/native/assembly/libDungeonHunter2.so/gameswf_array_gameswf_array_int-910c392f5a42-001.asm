; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007b8308, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::array<int> >
; alias: _ZN7gameswf5arrayINS0_IiEEE7reserveEi
; demangled: gameswf::array<gameswf::array<int> >::reserve(int)
; decoder-mode: arm
007b8308  10 40 2d e9                                      push {r4, lr}
007b830c  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
007b8310  00 40 a0 e1                                      mov r4, r0
007b8314  00 00 53 e3                                      cmp r3, #0
007b8318  0f 00 00 1a                                      bne #0x7b835c
007b831c  00 00 51 e3                                      cmp r1, #0
007b8320  08 20 90 e5                                      ldr r2, [r0, #8]
007b8324  08 10 80 e5                                      str r1, [r0, #8]
007b8328  0c 00 00 1a                                      bne #0x7b8360
007b832c  00 00 90 e5                                      ldr r0, [r0]
007b8330  00 00 50 e3                                      cmp r0, #0
007b8334  01 00 00 0a                                      beq #0x7b8340
007b8338  02 12 a0 e1                                      lsl r1, r2, #4
007b833c  fd 69 fe eb                                      bl #0x752b38
007b8340  00 30 a0 e3                                      mov r3, #0
007b8344  00 30 84 e5                                      str r3, [r4]
007b8348  10 80 bd e8                                      pop {r4, pc}
007b834c  01 02 a0 e1                                      lsl r0, r1, #4
007b8350  0c 10 a0 e1                                      mov r1, ip
007b8354  10 6a fe eb                                      bl #0x752b9c
007b8358  00 00 84 e5                                      str r0, [r4]
007b835c  10 80 bd e8                                      pop {r4, pc}
007b8360  00 c0 90 e5                                      ldr ip, [r0]
007b8364  00 00 5c e3                                      cmp ip, #0
007b8368  f7 ff ff 0a                                      beq #0x7b834c
007b836c  0c 00 a0 e1                                      mov r0, ip
007b8370  01 12 a0 e1                                      lsl r1, r1, #4
007b8374  02 22 a0 e1                                      lsl r2, r2, #4
007b8378  0b 6a fe eb                                      bl #0x752bac
007b837c  00 00 84 e5                                      str r0, [r4]
007b8380  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007b93cc, declared_size=248, range_size=248, mode=arm
; class-group: gameswf::array<gameswf::array<int> >
; alias: _ZN7gameswf5arrayINS0_IiEEE6resizeEi
; demangled: gameswf::array<gameswf::array<int> >::resize(int)
; decoder-mode: arm
007b93cc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007b93d0  04 a0 90 e5                                      ldr sl, [r0, #4]
007b93d4  00 70 a0 e1                                      mov r7, r0
007b93d8  01 80 a0 e1                                      mov r8, r1
007b93dc  01 00 5a e1                                      cmp sl, r1
007b93e0  1d 00 00 da                                      ble #0x7b945c
007b93e4  01 62 a0 e1                                      lsl r6, r1, #4
007b93e8  01 50 a0 e1                                      mov r5, r1
007b93ec  00 40 a0 e3                                      mov r4, #0
007b93f0  06 00 00 ea                                      b #0x7b9410
007b93f4  04 40 80 e5                                      str r4, [r0, #4]
007b93f8  01 50 85 e2                                      add r5, r5, #1
007b93fc  04 10 a0 e1                                      mov r1, r4
007b9400  ee ab fe eb                                      bl #0x7643c0
007b9404  0a 00 55 e1                                      cmp r5, sl
007b9408  10 60 86 e2                                      add r6, r6, #0x10
007b940c  12 00 00 0a                                      beq #0x7b945c
007b9410  00 00 97 e5                                      ldr r0, [r7]
007b9414  06 00 80 e0                                      add r0, r0, r6
007b9418  04 30 90 e5                                      ldr r3, [r0, #4]
007b941c  00 00 53 e3                                      cmp r3, #0
007b9420  f3 ff ff ca                                      bgt #0x7b93f4
007b9424  f2 ff ff aa                                      bge #0x7b93f4
007b9428  03 21 a0 e1                                      lsl r2, r3, #2
007b942c  00 10 90 e5                                      ldr r1, [r0]
007b9430  01 30 93 e2                                      adds r3, r3, #1
007b9434  02 40 81 e7                                      str r4, [r1, r2]
007b9438  04 20 82 e2                                      add r2, r2, #4
007b943c  fa ff ff 1a                                      bne #0x7b942c
007b9440  04 40 80 e5                                      str r4, [r0, #4]
007b9444  01 50 85 e2                                      add r5, r5, #1
007b9448  04 10 a0 e1                                      mov r1, r4
007b944c  db ab fe eb                                      bl #0x7643c0
007b9450  0a 00 55 e1                                      cmp r5, sl
007b9454  10 60 86 e2                                      add r6, r6, #0x10
007b9458  ec ff ff 1a                                      bne #0x7b9410
007b945c  00 00 58 e3                                      cmp r8, #0
007b9460  02 00 00 0a                                      beq #0x7b9470
007b9464  08 30 97 e5                                      ldr r3, [r7, #8]
007b9468  03 00 58 e1                                      cmp r8, r3
007b946c  10 00 00 ca                                      bgt #0x7b94b4
007b9470  08 00 5a e1                                      cmp sl, r8
007b9474  0c 00 00 aa                                      bge #0x7b94ac
007b9478  0a 10 a0 e1                                      mov r1, sl
007b947c  00 30 a0 e3                                      mov r3, #0
007b9480  0a a2 a0 e1                                      lsl sl, sl, #4
007b9484  00 00 97 e5                                      ldr r0, [r7]
007b9488  01 10 81 e2                                      add r1, r1, #1
007b948c  08 00 51 e1                                      cmp r1, r8
007b9490  0a 20 80 e0                                      add r2, r0, sl
007b9494  0a 30 80 e7                                      str r3, [r0, sl]
007b9498  0c 30 c2 e5                                      strb r3, [r2, #0xc]
007b949c  04 30 82 e5                                      str r3, [r2, #4]
007b94a0  08 30 82 e5                                      str r3, [r2, #8]
007b94a4  10 a0 8a e2                                      add sl, sl, #0x10
007b94a8  f5 ff ff 1a                                      bne #0x7b9484
007b94ac  04 80 87 e5                                      str r8, [r7, #4]
007b94b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007b94b4  07 00 a0 e1                                      mov r0, r7
007b94b8  c8 10 88 e0                                      add r1, r8, r8, asr #1
007b94bc  91 fb ff eb                                      bl #0x7b8308
007b94c0  ea ff ff ea                                      b #0x7b9470
