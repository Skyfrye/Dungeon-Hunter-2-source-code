; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00412340, declared_size=104, range_size=104, mode=arm
; class-group: std::vector<Dropable, std::allocator<Dropable> >
; alias: _ZNSt6vectorI8DropableSaIS0_EE19_M_clear_after_moveEv
; demangled: std::vector<Dropable, std::allocator<Dropable> >::_M_clear_after_move()
; decoder-mode: arm
00412340  70 40 2d e9                                      push {r4, r5, r6, lr}
00412344  04 40 90 e5                                      ldr r4, [r0, #4]
00412348  00 50 90 e5                                      ldr r5, [r0]
0041234c  00 60 a0 e1                                      mov r6, r0
00412350  05 00 54 e1                                      cmp r4, r5
00412354  05 00 00 0a                                      beq #0x412370
00412358  20 40 44 e2                                      sub r4, r4, #0x20
0041235c  04 00 a0 e1                                      mov r0, r4
00412360  d4 fe ff eb                                      bl #0x411eb8
00412364  04 00 55 e1                                      cmp r5, r4
00412368  fa ff ff 1a                                      bne #0x412358
0041236c  00 40 96 e5                                      ldr r4, [r6]
00412370  00 00 54 e3                                      cmp r4, #0
00412374  08 10 96 e5                                      ldr r1, [r6, #8]
00412378  09 00 00 0a                                      beq #0x4123a4
0041237c  01 10 64 e0                                      rsb r1, r4, r1
00412380  1f 10 c1 e3                                      bic r1, r1, #0x1f
00412384  80 00 51 e3                                      cmp r1, #0x80
00412388  02 00 00 8a                                      bhi #0x412398
0041238c  04 00 a0 e1                                      mov r0, r4
00412390  70 40 bd e8                                      pop {r4, r5, r6, lr}
00412394  d9 da 0b ea                                      b #0x708f00
00412398  04 00 a0 e1                                      mov r0, r4
0041239c  70 40 bd e8                                      pop {r4, r5, r6, lr}
004123a0  26 f8 fb ea                                      b #0x310440
004123a4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00412420, declared_size=100, range_size=100, mode=arm
; class-group: std::vector<Dropable, std::allocator<Dropable> >
; alias: _ZNSt6vectorI8DropableSaIS0_EED1Ev
; demangled: std::vector<Dropable, std::allocator<Dropable> >::~vector()
; decoder-mode: arm
00412420  70 40 2d e9                                      push {r4, r5, r6, lr}
00412424  04 50 90 e5                                      ldr r5, [r0, #4]
00412428  00 60 90 e5                                      ldr r6, [r0]
0041242c  00 40 a0 e1                                      mov r4, r0
00412430  06 00 55 e1                                      cmp r5, r6
00412434  04 00 00 0a                                      beq #0x41244c
00412438  20 50 45 e2                                      sub r5, r5, #0x20
0041243c  05 00 a0 e1                                      mov r0, r5
00412440  9c fe ff eb                                      bl #0x411eb8
00412444  05 00 56 e1                                      cmp r6, r5
00412448  fa ff ff 1a                                      bne #0x412438
0041244c  00 00 94 e5                                      ldr r0, [r4]
00412450  00 00 50 e3                                      cmp r0, #0
00412454  05 00 00 0a                                      beq #0x412470
00412458  08 10 94 e5                                      ldr r1, [r4, #8]
0041245c  01 10 60 e0                                      rsb r1, r0, r1
00412460  1f 10 c1 e3                                      bic r1, r1, #0x1f
00412464  80 00 51 e3                                      cmp r1, #0x80
00412468  02 00 00 8a                                      bhi #0x412478
0041246c  a3 da 0b eb                                      bl #0x708f00
00412470  04 00 a0 e1                                      mov r0, r4
00412474  70 80 bd e8                                      pop {r4, r5, r6, pc}
00412478  f0 f7 fb eb                                      bl #0x310440
0041247c  04 00 a0 e1                                      mov r0, r4
00412480  70 80 bd e8                                      pop {r4, r5, r6, pc}
