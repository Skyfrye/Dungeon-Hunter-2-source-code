; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b50ec, declared_size=220, range_size=220, mode=arm
; class-group: boost::detail::crc_table_t<32u, 79764919u, true>
; alias: _ZN5boost6detail11crc_table_tILj32ELj79764919ELb1EE10init_tableEv
; demangled: boost::detail::crc_table_t<32u, 79764919u, true>::init_table()
; decoder-mode: arm
006b50ec  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
006b50f0  c4 60 9f e5                                      ldr r6, [pc, #0xc4]
006b50f4  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
006b50f8  06 60 8f e0                                      add r6, pc, r6
006b50fc  07 30 96 e7                                      ldr r3, [r6, r7]
006b5100  00 c0 d3 e5                                      ldrb ip, [r3]
006b5104  00 00 5c e3                                      cmp ip, #0
006b5108  29 00 00 1a                                      bne #0x6b51b4
006b510c  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
006b5110  b7 4d 01 e3                                      movw r4, #0x1db7
006b5114  c1 44 40 e3                                      movt r4, #0x4c1
006b5118  03 50 96 e7                                      ldr r5, [r6, r3]
006b511c  01 00 a0 e3                                      mov r0, #1
006b5120  00 10 a0 e3                                      mov r1, #0
006b5124  7c 20 ef e6                                      uxtb r2, ip
006b5128  80 80 a0 e3                                      mov r8, #0x80
006b512c  01 30 a0 e1                                      mov r3, r1
006b5130  08 00 12 e1                                      tst r2, r8
006b5134  02 31 83 12                                      addne r3, r3, #0x80000000
006b5138  00 00 53 e3                                      cmp r3, #0
006b513c  01 10 81 e2                                      add r1, r1, #1
006b5140  83 30 24 b0                                      eorlt r3, r4, r3, lsl #1
006b5144  83 30 a0 a1                                      lslge r3, r3, #1
006b5148  08 00 51 e3                                      cmp r1, #8
006b514c  a8 80 a0 e1                                      lsr r8, r8, #1
006b5150  f6 ff ff 1a                                      bne #0x6b5130
006b5154  07 10 a0 e3                                      mov r1, #7
006b5158  00 80 a0 e3                                      mov r8, #0
006b515c  00 00 00 ea                                      b #0x6b5164
006b5160  a2 20 a0 e1                                      lsr r2, r2, #1
006b5164  01 00 12 e3                                      tst r2, #1
006b5168  10 81 88 11                                      orrne r8, r8, r0, lsl r1
006b516c  78 80 ef 16                                      uxtbne r8, r8
006b5170  01 10 51 e2                                      subs r1, r1, #1
006b5174  f9 ff ff 2a                                      bhs #0x6b5160
006b5178  1f 20 a0 e3                                      mov r2, #0x1f
006b517c  00 10 a0 e3                                      mov r1, #0
006b5180  00 00 00 ea                                      b #0x6b5188
006b5184  a3 30 a0 e1                                      lsr r3, r3, #1
006b5188  01 00 13 e3                                      tst r3, #1
006b518c  10 12 81 11                                      orrne r1, r1, r0, lsl r2
006b5190  01 20 52 e2                                      subs r2, r2, #1
006b5194  fa ff ff 2a                                      bhs #0x6b5184
006b5198  01 c0 8c e2                                      add ip, ip, #1
006b519c  01 0c 5c e3                                      cmp ip, #0x100
006b51a0  08 11 85 e7                                      str r1, [r5, r8, lsl #2]
006b51a4  dd ff ff 1a                                      bne #0x6b5120
006b51a8  07 30 96 e7                                      ldr r3, [r6, r7]
006b51ac  01 20 a0 e3                                      mov r2, #1
006b51b0  00 20 c3 e5                                      strb r2, [r3]
006b51b4  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
006b51b8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006b51bc  98 f9 2d 00 68 4b 00 00 0c 41 00 00              .byte 0x98, 0xf9, 0x2d, 0x00, 0x68, 0x4b, 0x00, 0x00, 0x0c, 0x41, 0x00, 0x00
