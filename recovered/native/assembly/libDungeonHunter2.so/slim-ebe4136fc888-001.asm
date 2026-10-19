; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00844190, declared_size=224, range_size=224, mode=arm
; class-group: slim
; alias: _ZN4slim11utf8toutf16EPKcjPwj
; demangled: slim::utf8toutf16(char const*, unsigned int, wchar_t*, unsigned int)
; decoder-mode: arm
00844190  00 00 51 e3                                      cmp r1, #0
00844194  70 00 2d e9                                      push {r4, r5, r6}
00844198  01 40 a0 01                                      moveq r4, r1
0084419c  24 00 00 0a                                      beq #0x844234
008441a0  04 20 82 e2                                      add r2, r2, #4
008441a4  01 40 a0 e3                                      mov r4, #1
008441a8  06 00 00 ea                                      b #0x8441c8
008441ac  04 00 53 e1                                      cmp r3, r4
008441b0  1f 00 00 0a                                      beq #0x844234
008441b4  00 00 51 e3                                      cmp r1, #0
008441b8  04 20 82 e2                                      add r2, r2, #4
008441bc  01 c0 84 e2                                      add ip, r4, #1
008441c0  1b 00 00 0a                                      beq #0x844234
008441c4  0c 40 a0 e1                                      mov r4, ip
008441c8  00 50 d0 e5                                      ldrb r5, [r0]
008441cc  75 c0 af e6                                      sxtb ip, r5
008441d0  00 00 5c e3                                      cmp ip, #0
008441d4  04 c0 02 a5                                      strge ip, [r2, #-4]
008441d8  01 00 80 a2                                      addge r0, r0, #1
008441dc  01 10 41 a2                                      subge r1, r1, #1
008441e0  f1 ff ff aa                                      bge #0x8441ac
008441e4  e0 60 0c e2                                      and r6, ip, #0xe0
008441e8  c0 00 56 e3                                      cmp r6, #0xc0
008441ec  13 00 00 0a                                      beq #0x844240
008441f0  f0 c0 0c e2                                      and ip, ip, #0xf0
008441f4  e0 00 5c e3                                      cmp ip, #0xe0
008441f8  1a 00 00 1a                                      bne #0x844268
008441fc  02 00 51 e3                                      cmp r1, #2
00844200  18 00 00 9a                                      bls #0x844268
00844204  02 60 d0 e5                                      ldrb r6, [r0, #2]
00844208  01 c0 d0 e5                                      ldrb ip, [r0, #1]
0084420c  05 5e a0 e1                                      lsl r5, r5, #0x1c
00844210  3f 60 06 e2                                      and r6, r6, #0x3f
00844214  25 58 86 e1                                      orr r5, r6, r5, lsr #16
00844218  3f c0 0c e2                                      and ip, ip, #0x3f
0084421c  0c 53 85 e1                                      orr r5, r5, ip, lsl #6
00844220  04 00 53 e1                                      cmp r3, r4
00844224  04 50 02 e5                                      str r5, [r2, #-4]
00844228  03 00 80 e2                                      add r0, r0, #3
0084422c  03 10 41 e2                                      sub r1, r1, #3
00844230  df ff ff 1a                                      bne #0x8441b4
00844234  04 00 a0 e1                                      mov r0, r4
00844238  70 00 bd e8                                      pop {r4, r5, r6}
0084423c  1e ff 2f e1                                      bx lr
00844240  01 00 51 e3                                      cmp r1, #1
00844244  07 00 00 9a                                      bls #0x844268
00844248  01 c0 d0 e5                                      ldrb ip, [r0, #1]
0084424c  1f 50 05 e2                                      and r5, r5, #0x1f
00844250  02 00 80 e2                                      add r0, r0, #2
00844254  3f c0 0c e2                                      and ip, ip, #0x3f
00844258  8c 52 85 e1                                      orr r5, r5, ip, lsl #5
0084425c  04 50 02 e5                                      str r5, [r2, #-4]
00844260  02 10 41 e2                                      sub r1, r1, #2
00844264  d0 ff ff ea                                      b #0x8441ac
00844268  01 40 44 e2                                      sub r4, r4, #1
0084426c  f0 ff ff ea                                      b #0x844234

; FUNCTION 0x00844270, declared_size=248, range_size=248, mode=arm
; class-group: slim
; alias: _ZN4slim11utf16toutf8EPKwjPcj
; demangled: slim::utf16toutf8(wchar_t const*, unsigned int, char*, unsigned int)
; decoder-mode: arm
00844270  00 00 51 e3                                      cmp r1, #0
00844274  f0 00 2d e9                                      push {r4, r5, r6, r7}
00844278  01 00 a0 01                                      moveq r0, r1
0084427c  24 00 00 0a                                      beq #0x844314
00844280  04 c0 80 e2                                      add ip, r0, #4
00844284  01 10 41 e2                                      sub r1, r1, #1
00844288  00 00 a0 e3                                      mov r0, #0
0084428c  ff 77 00 e3                                      movw r7, #0x7ff
00844290  07 00 00 ea                                      b #0x8442b4
00844294  03 00 50 e1                                      cmp r0, r3
00844298  1d 00 00 0a                                      beq #0x844314
0084429c  01 40 c2 e4                                      strb r4, [r2], #1
008442a0  01 00 80 e2                                      add r0, r0, #1
008442a4  00 00 51 e3                                      cmp r1, #0
008442a8  04 c0 8c e2                                      add ip, ip, #4
008442ac  01 10 41 e2                                      sub r1, r1, #1
008442b0  17 00 00 0a                                      beq #0x844314
008442b4  04 40 1c e5                                      ldr r4, [ip, #-4]
008442b8  7f 00 54 e3                                      cmp r4, #0x7f
008442bc  f4 ff ff 9a                                      bls #0x844294
008442c0  07 00 54 e1                                      cmp r4, r7
008442c4  02 60 80 e2                                      add r6, r0, #2
008442c8  03 50 80 e2                                      add r5, r0, #3
008442cc  12 00 00 8a                                      bhi #0x84431c
008442d0  06 00 53 e1                                      cmp r3, r6
008442d4  0e 00 00 3a                                      blo #0x844314
008442d8  24 43 a0 e1                                      lsr r4, r4, #6
008442dc  00 00 51 e3                                      cmp r1, #0
008442e0  04 4d e0 e1                                      mvn r4, r4, lsl #26
008442e4  06 00 a0 e1                                      mov r0, r6
008442e8  24 4d e0 e1                                      mvn r4, r4, lsr #26
008442ec  00 40 c2 e5                                      strb r4, [r2]
008442f0  04 40 1c e5                                      ldr r4, [ip, #-4]
008442f4  01 10 41 e2                                      sub r1, r1, #1
008442f8  04 c0 8c e2                                      add ip, ip, #4
008442fc  3f 40 04 e2                                      and r4, r4, #0x3f
00844300  84 4c e0 e1                                      mvn r4, r4, lsl #25
00844304  a4 4c e0 e1                                      mvn r4, r4, lsr #25
00844308  01 40 c2 e5                                      strb r4, [r2, #1]
0084430c  02 20 82 e2                                      add r2, r2, #2
00844310  e7 ff ff 1a                                      bne #0x8442b4
00844314  f0 00 bd e8                                      pop {r4, r5, r6, r7}
00844318  1e ff 2f e1                                      bx lr
0084431c  05 00 53 e1                                      cmp r3, r5
00844320  fb ff ff 3a                                      blo #0x844314
00844324  24 46 a0 e1                                      lsr r4, r4, #0xc
00844328  05 00 a0 e1                                      mov r0, r5
0084432c  84 4d e0 e1                                      mvn r4, r4, lsl #27
00844330  a4 4d e0 e1                                      mvn r4, r4, lsr #27
00844334  00 40 c2 e5                                      strb r4, [r2]
00844338  04 40 1c e5                                      ldr r4, [ip, #-4]
0084433c  54 43 e5 e7                                      ubfx r4, r4, #6, #6
00844340  84 4c e0 e1                                      mvn r4, r4, lsl #25
00844344  a4 4c e0 e1                                      mvn r4, r4, lsr #25
00844348  01 40 c2 e5                                      strb r4, [r2, #1]
0084434c  04 40 1c e5                                      ldr r4, [ip, #-4]
00844350  3f 40 04 e2                                      and r4, r4, #0x3f
00844354  84 4c e0 e1                                      mvn r4, r4, lsl #25
00844358  a4 4c e0 e1                                      mvn r4, r4, lsr #25
0084435c  02 40 c2 e5                                      strb r4, [r2, #2]
00844360  03 20 82 e2                                      add r2, r2, #3
00844364  ce ff ff ea                                      b #0x8442a4

; FUNCTION 0x00844368, declared_size=252, range_size=252, mode=arm
; class-group: slim
; alias: _ZN4slim10detectUtf8EPKcj
; demangled: slim::detectUtf8(char const*, unsigned int)
; decoder-mode: arm
00844368  00 00 51 e3                                      cmp r1, #0
0084436c  02 00 00 1a                                      bne #0x84437c
00844370  21 00 00 ea                                      b #0x8443fc
00844374  00 00 51 e3                                      cmp r1, #0
00844378  1f 00 00 0a                                      beq #0x8443fc
0084437c  d0 30 d0 e1                                      ldrsb r3, [r0]
00844380  00 00 53 e3                                      cmp r3, #0
00844384  01 00 80 a2                                      addge r0, r0, #1
00844388  01 10 41 a2                                      subge r1, r1, #1
0084438c  f8 ff ff aa                                      bge #0x844374
00844390  f0 20 03 e2                                      and r2, r3, #0xf0
00844394  e0 00 52 e3                                      cmp r2, #0xe0
00844398  19 00 00 0a                                      beq #0x844404
0084439c  e0 20 03 e2                                      and r2, r3, #0xe0
008443a0  c0 00 52 e3                                      cmp r2, #0xc0
008443a4  23 00 00 0a                                      beq #0x844438
008443a8  f8 30 03 e2                                      and r3, r3, #0xf8
008443ac  f0 00 53 e3                                      cmp r3, #0xf0
008443b0  29 00 00 1a                                      bne #0x84445c
008443b4  03 00 51 e3                                      cmp r1, #3
008443b8  27 00 00 9a                                      bls #0x84445c
008443bc  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
008443c0  c0 30 03 e2                                      and r3, r3, #0xc0
008443c4  80 00 53 e3                                      cmp r3, #0x80
008443c8  23 00 00 1a                                      bne #0x84445c
008443cc  d2 30 d0 e1                                      ldrsb r3, [r0, #2]
008443d0  c0 30 03 e2                                      and r3, r3, #0xc0
008443d4  80 00 53 e3                                      cmp r3, #0x80
008443d8  1f 00 00 1a                                      bne #0x84445c
008443dc  d3 30 d0 e1                                      ldrsb r3, [r0, #3]
008443e0  c0 30 03 e2                                      and r3, r3, #0xc0
008443e4  80 00 53 e3                                      cmp r3, #0x80
008443e8  1b 00 00 1a                                      bne #0x84445c
008443ec  04 10 41 e2                                      sub r1, r1, #4
008443f0  00 00 51 e3                                      cmp r1, #0
008443f4  04 00 80 e2                                      add r0, r0, #4
008443f8  df ff ff 1a                                      bne #0x84437c
008443fc  01 00 a0 e3                                      mov r0, #1
00844400  1e ff 2f e1                                      bx lr
00844404  02 00 51 e3                                      cmp r1, #2
00844408  13 00 00 9a                                      bls #0x84445c
0084440c  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00844410  c0 30 03 e2                                      and r3, r3, #0xc0
00844414  80 00 53 e3                                      cmp r3, #0x80
00844418  0f 00 00 1a                                      bne #0x84445c
0084441c  d2 30 d0 e1                                      ldrsb r3, [r0, #2]
00844420  c0 30 03 e2                                      and r3, r3, #0xc0
00844424  80 00 53 e3                                      cmp r3, #0x80
00844428  0b 00 00 1a                                      bne #0x84445c
0084442c  03 00 80 e2                                      add r0, r0, #3
00844430  03 10 41 e2                                      sub r1, r1, #3
00844434  ce ff ff ea                                      b #0x844374
00844438  01 00 51 e3                                      cmp r1, #1
0084443c  06 00 00 9a                                      bls #0x84445c
00844440  d1 30 d0 e1                                      ldrsb r3, [r0, #1]
00844444  c0 30 03 e2                                      and r3, r3, #0xc0
00844448  80 00 53 e3                                      cmp r3, #0x80
0084444c  02 00 00 1a                                      bne #0x84445c
00844450  02 00 80 e2                                      add r0, r0, #2
00844454  02 10 41 e2                                      sub r1, r1, #2
00844458  c5 ff ff ea                                      b #0x844374
0084445c  00 00 a0 e3                                      mov r0, #0
00844460  1e ff 2f e1                                      bx lr
