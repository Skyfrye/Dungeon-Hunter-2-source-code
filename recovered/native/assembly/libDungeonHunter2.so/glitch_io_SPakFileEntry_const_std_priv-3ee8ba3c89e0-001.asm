; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056f928, declared_size=220, range_size=220, mode=arm
; class-group: glitch::io::SPakFileEntry const* std::priv
; alias: _ZNSt4priv13__lower_boundIPKN6glitch2io13SPakFileEntryES3_NS_8__less_2IS3_S3_EES7_iEET_S8_S8_RKT0_T1_T2_PT3_
; demangled: glitch::io::SPakFileEntry const* std::priv::__lower_bound<glitch::io::SPakFileEntry const*, glitch::io::SPakFileEntry, std::priv::__less_2<glitch::io::SPakFileEntry, glitch::io::SPakFileEntry>, std::priv::__less_2<glitch::io::SPakFileEntry, glitch::io::SPakFileEntry>, int>(glitch::io::SPakFileEntry const*, glitch::io::SPakFileEntry const*, glitch::io::SPakFileEntry const&, std::priv::__less_2<glitch::io::SPakFileEntry, glitch::io::SPakFileEntry>, std::priv::__less_2<glitch::io::SPakFileEntry, glitch::io::SPakFileEntry>, int*)
; decoder-mode: arm
0056f928  01 30 60 e0                                      rsb r3, r0, r1
0056f92c  43 32 a0 e1                                      asr r3, r3, #4
0056f930  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
0056f934  83 a0 83 e0                                      add sl, r3, r3, lsl #1
0056f938  02 b0 a0 e1                                      mov fp, r2
0056f93c  0a a2 8a e0                                      add sl, sl, sl, lsl #4
0056f940  50 90 a0 e3                                      mov sb, #0x50
0056f944  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0056f948  0a a8 8a e0                                      add sl, sl, sl, lsl #16
0056f94c  0a a1 83 e0                                      add sl, r3, sl, lsl #2
0056f950  00 00 5a e3                                      cmp sl, #0
0056f954  28 00 00 da                                      ble #0x56f9fc
0056f958  2c 70 9b e5                                      ldr r7, [fp, #0x2c]
0056f95c  28 40 9b e5                                      ldr r4, [fp, #0x28]
0056f960  04 40 67 e0                                      rsb r4, r7, r4
0056f964  06 00 00 ea                                      b #0x56f984
0056f968  04 00 52 e1                                      cmp r2, r4
0056f96c  00 10 a0 23                                      movhs r1, #0
0056f970  01 10 a0 33                                      movlo r1, #1
0056f974  00 00 51 e3                                      cmp r1, #0
0056f978  1a 00 00 1a                                      bne #0x56f9e8
0056f97c  00 a0 56 e2                                      subs sl, r6, #0
0056f980  1d 00 00 0a                                      beq #0x56f9fc
0056f984  ca 60 a0 e1                                      asr r6, sl, #1
0056f988  99 06 28 e0                                      mla r8, sb, r6, r0
0056f98c  2c 50 98 e5                                      ldr r5, [r8, #0x2c]
0056f990  28 20 98 e5                                      ldr r2, [r8, #0x28]
0056f994  05 20 52 e0                                      subs r2, r2, r5
0056f998  f2 ff ff 0a                                      beq #0x56f968
0056f99c  00 00 54 e3                                      cmp r4, #0
0056f9a0  f0 ff ff 0a                                      beq #0x56f968
0056f9a4  d0 30 d7 e1                                      ldrsb r3, [r7]
0056f9a8  d0 10 d5 e1                                      ldrsb r1, [r5]
0056f9ac  03 10 51 e0                                      subs r1, r1, r3
0056f9b0  01 30 a0 01                                      moveq r3, r1
0056f9b4  08 00 00 1a                                      bne #0x56f9dc
0056f9b8  01 30 83 e2                                      add r3, r3, #1
0056f9bc  02 00 53 e1                                      cmp r3, r2
0056f9c0  e8 ff ff 0a                                      beq #0x56f968
0056f9c4  04 00 53 e1                                      cmp r3, r4
0056f9c8  e6 ff ff 0a                                      beq #0x56f968
0056f9cc  d3 c0 95 e1                                      ldrsb ip, [r5, r3]
0056f9d0  d3 10 97 e1                                      ldrsb r1, [r7, r3]
0056f9d4  01 10 5c e0                                      subs r1, ip, r1
0056f9d8  f6 ff ff 0a                                      beq #0x56f9b8
0056f9dc  a1 1f a0 e1                                      lsr r1, r1, #0x1f
0056f9e0  00 00 51 e3                                      cmp r1, #0
0056f9e4  e4 ff ff 0a                                      beq #0x56f97c
0056f9e8  01 a0 4a e2                                      sub sl, sl, #1
0056f9ec  0a a0 66 e0                                      rsb sl, r6, sl
0056f9f0  00 00 5a e3                                      cmp sl, #0
0056f9f4  50 00 88 e2                                      add r0, r8, #0x50
0056f9f8  d6 ff ff ca                                      bgt #0x56f958
0056f9fc  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
0056fa00  1e ff 2f e1                                      bx lr
