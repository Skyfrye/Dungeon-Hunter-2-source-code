; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00384870, declared_size=304, range_size=304, mode=arm
; class-group: glitch::video::ITexture** std::priv
; alias: _ZNSt4priv6__findIPPN6glitch5video8ITextureES4_EET_S6_S6_RKT0_RKSt26random_access_iterator_tag
; demangled: glitch::video::ITexture** std::priv::__find<glitch::video::ITexture**, glitch::video::ITexture*>(glitch::video::ITexture**, glitch::video::ITexture**, glitch::video::ITexture* const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
00384870  00 30 a0 e1                                      mov r3, r0
00384874  01 00 60 e0                                      rsb r0, r0, r1
00384878  40 c2 a0 e1                                      asr ip, r0, #4
0038487c  00 00 5c e3                                      cmp ip, #0
00384880  30 00 2d e9                                      push {r4, r5}
00384884  40 41 a0 e1                                      asr r4, r0, #2
00384888  03 00 a0 d1                                      movle r0, r3
0038488c  21 00 00 da                                      ble #0x384918
00384890  00 00 93 e5                                      ldr r0, [r3]
00384894  00 40 92 e5                                      ldr r4, [r2]
00384898  04 00 50 e1                                      cmp r0, r4
0038489c  03 00 a0 01                                      moveq r0, r3
003848a0  23 00 00 0a                                      beq #0x384934
003848a4  04 50 93 e5                                      ldr r5, [r3, #4]
003848a8  04 00 83 e2                                      add r0, r3, #4
003848ac  05 00 54 e1                                      cmp r4, r5
003848b0  1f 00 00 0a                                      beq #0x384934
003848b4  04 50 b0 e5                                      ldr r5, [r0, #4]!
003848b8  05 00 54 e1                                      cmp r4, r5
003848bc  1c 00 00 0a                                      beq #0x384934
003848c0  04 50 b0 e5                                      ldr r5, [r0, #4]!
003848c4  05 00 54 e1                                      cmp r4, r5
003848c8  0d 00 00 1a                                      bne #0x384904
003848cc  18 00 00 ea                                      b #0x384934
003848d0  10 00 93 e5                                      ldr r0, [r3, #0x10]
003848d4  04 00 50 e1                                      cmp r0, r4
003848d8  22 00 00 0a                                      beq #0x384968
003848dc  14 00 93 e5                                      ldr r0, [r3, #0x14]
003848e0  04 00 50 e1                                      cmp r0, r4
003848e4  21 00 00 0a                                      beq #0x384970
003848e8  18 00 93 e5                                      ldr r0, [r3, #0x18]
003848ec  04 00 50 e1                                      cmp r0, r4
003848f0  20 00 00 0a                                      beq #0x384978
003848f4  10 30 83 e2                                      add r3, r3, #0x10
003848f8  0c 00 93 e5                                      ldr r0, [r3, #0xc]
003848fc  00 00 54 e1                                      cmp r4, r0
00384900  1e 00 00 0a                                      beq #0x384980
00384904  01 c0 5c e2                                      subs ip, ip, #1
00384908  f0 ff ff 1a                                      bne #0x3848d0
0038490c  10 00 83 e2                                      add r0, r3, #0x10
00384910  01 40 60 e0                                      rsb r4, r0, r1
00384914  44 41 a0 e1                                      asr r4, r4, #2
00384918  02 00 54 e3                                      cmp r4, #2
0038491c  06 00 00 0a                                      beq #0x38493c
00384920  03 00 54 e3                                      cmp r4, #3
00384924  17 00 00 0a                                      beq #0x384988
00384928  01 00 54 e3                                      cmp r4, #1
0038492c  0b 00 00 0a                                      beq #0x384960
00384930  01 00 a0 e1                                      mov r0, r1
00384934  30 00 bd e8                                      pop {r4, r5}
00384938  1e ff 2f e1                                      bx lr
0038493c  00 30 92 e5                                      ldr r3, [r2]
00384940  00 20 90 e5                                      ldr r2, [r0]
00384944  03 00 52 e1                                      cmp r2, r3
00384948  f9 ff ff 0a                                      beq #0x384934
0038494c  04 00 80 e2                                      add r0, r0, #4
00384950  00 20 90 e5                                      ldr r2, [r0]
00384954  03 00 52 e1                                      cmp r2, r3
00384958  01 00 a0 11                                      movne r0, r1
0038495c  f4 ff ff ea                                      b #0x384934
00384960  00 30 92 e5                                      ldr r3, [r2]
00384964  f9 ff ff ea                                      b #0x384950
00384968  10 00 83 e2                                      add r0, r3, #0x10
0038496c  f0 ff ff ea                                      b #0x384934
00384970  14 00 83 e2                                      add r0, r3, #0x14
00384974  ee ff ff ea                                      b #0x384934
00384978  18 00 83 e2                                      add r0, r3, #0x18
0038497c  ec ff ff ea                                      b #0x384934
00384980  0c 00 83 e2                                      add r0, r3, #0xc
00384984  ea ff ff ea                                      b #0x384934
00384988  00 30 92 e5                                      ldr r3, [r2]
0038498c  00 20 90 e5                                      ldr r2, [r0]
00384990  03 00 52 e1                                      cmp r2, r3
00384994  e6 ff ff 0a                                      beq #0x384934
00384998  04 00 80 e2                                      add r0, r0, #4
0038499c  e7 ff ff ea                                      b #0x384940
