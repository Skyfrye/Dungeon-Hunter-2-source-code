; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005771a4, declared_size=224, range_size=224, mode=arm
; class-group: glitch::io::SZipFileEntry const* std::priv
; alias: _ZNSt4priv13__lower_boundIPKN6glitch2io13SZipFileEntryES3_NS_8__less_2IS3_S3_EES7_iEET_S8_S8_RKT0_T1_T2_PT3_
; demangled: glitch::io::SZipFileEntry const* std::priv::__lower_bound<glitch::io::SZipFileEntry const*, glitch::io::SZipFileEntry, std::priv::__less_2<glitch::io::SZipFileEntry, glitch::io::SZipFileEntry>, std::priv::__less_2<glitch::io::SZipFileEntry, glitch::io::SZipFileEntry>, int>(glitch::io::SZipFileEntry const*, glitch::io::SZipFileEntry const*, glitch::io::SZipFileEntry const&, std::priv::__less_2<glitch::io::SZipFileEntry, glitch::io::SZipFileEntry>, std::priv::__less_2<glitch::io::SZipFileEntry, glitch::io::SZipFileEntry>, int*)
; decoder-mode: arm
005771a4  01 30 60 e0                                      rsb r3, r0, r1
005771a8  43 31 a0 e1                                      asr r3, r3, #2
005771ac  f0 0f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp}
005771b0  02 b0 a0 e1                                      mov fp, r2
005771b4  83 21 83 e0                                      add r2, r3, r3, lsl #3
005771b8  6c 90 a0 e3                                      mov sb, #0x6c
005771bc  82 30 83 e0                                      add r3, r3, r2, lsl #1
005771c0  83 a4 a0 e1                                      lsl sl, r3, #9
005771c4  0a a0 63 e0                                      rsb sl, r3, sl
005771c8  0a a9 8a e0                                      add sl, sl, sl, lsl #18
005771cc  00 a0 6a e2                                      rsb sl, sl, #0
005771d0  00 00 5a e3                                      cmp sl, #0
005771d4  28 00 00 da                                      ble #0x57727c
005771d8  2c 70 9b e5                                      ldr r7, [fp, #0x2c]
005771dc  28 40 9b e5                                      ldr r4, [fp, #0x28]
005771e0  04 40 67 e0                                      rsb r4, r7, r4
005771e4  06 00 00 ea                                      b #0x577204
005771e8  04 00 52 e1                                      cmp r2, r4
005771ec  00 10 a0 23                                      movhs r1, #0
005771f0  01 10 a0 33                                      movlo r1, #1
005771f4  00 00 51 e3                                      cmp r1, #0
005771f8  1a 00 00 1a                                      bne #0x577268
005771fc  00 a0 56 e2                                      subs sl, r6, #0
00577200  1d 00 00 0a                                      beq #0x57727c
00577204  ca 60 a0 e1                                      asr r6, sl, #1
00577208  99 06 28 e0                                      mla r8, sb, r6, r0
0057720c  2c 50 98 e5                                      ldr r5, [r8, #0x2c]
00577210  28 20 98 e5                                      ldr r2, [r8, #0x28]
00577214  05 20 52 e0                                      subs r2, r2, r5
00577218  f2 ff ff 0a                                      beq #0x5771e8
0057721c  00 00 54 e3                                      cmp r4, #0
00577220  f0 ff ff 0a                                      beq #0x5771e8
00577224  d0 30 d7 e1                                      ldrsb r3, [r7]
00577228  d0 10 d5 e1                                      ldrsb r1, [r5]
0057722c  03 10 51 e0                                      subs r1, r1, r3
00577230  01 30 a0 01                                      moveq r3, r1
00577234  08 00 00 1a                                      bne #0x57725c
00577238  01 30 83 e2                                      add r3, r3, #1
0057723c  02 00 53 e1                                      cmp r3, r2
00577240  e8 ff ff 0a                                      beq #0x5771e8
00577244  04 00 53 e1                                      cmp r3, r4
00577248  e6 ff ff 0a                                      beq #0x5771e8
0057724c  d3 c0 95 e1                                      ldrsb ip, [r5, r3]
00577250  d3 10 97 e1                                      ldrsb r1, [r7, r3]
00577254  01 10 5c e0                                      subs r1, ip, r1
00577258  f6 ff ff 0a                                      beq #0x577238
0057725c  a1 1f a0 e1                                      lsr r1, r1, #0x1f
00577260  00 00 51 e3                                      cmp r1, #0
00577264  e4 ff ff 0a                                      beq #0x5771fc
00577268  01 a0 4a e2                                      sub sl, sl, #1
0057726c  0a a0 66 e0                                      rsb sl, r6, sl
00577270  00 00 5a e3                                      cmp sl, #0
00577274  6c 00 88 e2                                      add r0, r8, #0x6c
00577278  d6 ff ff ca                                      bgt #0x5771d8
0057727c  f0 0f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp}
00577280  1e ff 2f e1                                      bx lr
