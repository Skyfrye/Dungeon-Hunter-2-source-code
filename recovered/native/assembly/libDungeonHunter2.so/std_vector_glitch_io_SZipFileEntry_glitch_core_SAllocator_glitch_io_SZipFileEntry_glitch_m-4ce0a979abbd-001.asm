; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00577444, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::io::SZipFileEntry, glitch::core::SAllocator<glitch::io::SZipFileEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2io13SZipFileEntryENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::io::SZipFileEntry, glitch::core::SAllocator<glitch::io::SZipFileEntry, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00577444  70 40 2d e9                                      push {r4, r5, r6, lr}
00577448  04 40 90 e5                                      ldr r4, [r0, #4]
0057744c  00 50 90 e5                                      ldr r5, [r0]
00577450  00 60 a0 e1                                      mov r6, r0
00577454  05 00 54 e1                                      cmp r4, r5
00577458  04 00 00 0a                                      beq #0x577470
0057745c  6c 40 44 e2                                      sub r4, r4, #0x6c
00577460  04 00 a0 e1                                      mov r0, r4
00577464  de ff ff eb                                      bl #0x5773e4
00577468  04 00 55 e1                                      cmp r5, r4
0057746c  fa ff ff 1a                                      bne #0x57745c
00577470  00 00 96 e5                                      ldr r0, [r6]
00577474  00 00 50 e3                                      cmp r0, #0
00577478  00 00 00 0a                                      beq #0x577480
0057747c  f3 63 f6 eb                                      bl #0x310450
00577480  06 00 a0 e1                                      mov r0, r6
00577484  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0057788c, declared_size=320, range_size=320, mode=arm
; class-group: std::vector<glitch::io::SZipFileEntry, glitch::core::SAllocator<glitch::io::SZipFileEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2io13SZipFileEntryENS0_4core10SAllocatorIS2_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS2_
; demangled: std::vector<glitch::io::SZipFileEntry, glitch::core::SAllocator<glitch::io::SZipFileEntry, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::io::SZipFileEntry const&)
; decoder-mode: arm
0057788c  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
00577890  00 60 a0 e1                                      mov r6, r0
00577894  08 40 96 e5                                      ldr r4, [r6, #8]
00577898  04 00 90 e5                                      ldr r0, [r0, #4]
0057789c  01 a0 a0 e1                                      mov sl, r1
005778a0  04 00 50 e1                                      cmp r0, r4
005778a4  04 00 00 0a                                      beq #0x5778bc
005778a8  72 fd ff eb                                      bl #0x576e78
005778ac  04 30 96 e5                                      ldr r3, [r6, #4]
005778b0  6c 30 83 e2                                      add r3, r3, #0x6c
005778b4  04 30 86 e5                                      str r3, [r6, #4]
005778b8  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005778bc  00 20 96 e5                                      ldr r2, [r6]
005778c0  97 30 0d e3                                      movw r3, #0xd097
005778c4  5e 32 40 e3                                      movt r3, #0x25e
005778c8  04 20 62 e0                                      rsb r2, r2, r4
005778cc  42 21 a0 e1                                      asr r2, r2, #2
005778d0  82 11 82 e0                                      add r1, r2, r2, lsl #3
005778d4  81 20 82 e0                                      add r2, r2, r1, lsl #1
005778d8  82 14 a0 e1                                      lsl r1, r2, #9
005778dc  01 20 62 e0                                      rsb r2, r2, r1
005778e0  02 29 82 e0                                      add r2, r2, r2, lsl #18
005778e4  00 20 62 e2                                      rsb r2, r2, #0
005778e8  01 00 52 e3                                      cmp r2, #1
005778ec  02 10 82 20                                      addhs r1, r2, r2
005778f0  01 10 82 32                                      addlo r1, r2, #1
005778f4  03 00 51 e1                                      cmp r1, r3
005778f8  2e 00 00 9a                                      bls #0x5779b8
005778fc  4b 90 e0 e3                                      mvn sb, #0x4b
00577900  09 00 a0 e1                                      mov r0, sb
00577904  00 10 a0 e3                                      mov r1, #0
00577908  16 63 f6 eb                                      bl #0x310568
0057790c  00 80 96 e5                                      ldr r8, [r6]
00577910  00 70 a0 e1                                      mov r7, r0
00577914  04 40 68 e0                                      rsb r4, r8, r4
00577918  44 41 a0 e1                                      asr r4, r4, #2
0057791c  84 b1 84 e0                                      add fp, r4, r4, lsl #3
00577920  8b 40 84 e0                                      add r4, r4, fp, lsl #1
00577924  84 b4 a0 e1                                      lsl fp, r4, #9
00577928  0b b0 64 e0                                      rsb fp, r4, fp
0057792c  0b b9 8b e0                                      add fp, fp, fp, lsl #18
00577930  00 b0 6b e2                                      rsb fp, fp, #0
00577934  00 00 5b e3                                      cmp fp, #0
00577938  00 b0 a0 d1                                      movle fp, r0
0057793c  09 00 00 da                                      ble #0x577968
00577940  0b 50 a0 e1                                      mov r5, fp
00577944  00 40 a0 e3                                      mov r4, #0
00577948  04 00 87 e0                                      add r0, r7, r4
0057794c  04 10 88 e0                                      add r1, r8, r4
00577950  48 fd ff eb                                      bl #0x576e78
00577954  01 50 55 e2                                      subs r5, r5, #1
00577958  6c 40 84 e2                                      add r4, r4, #0x6c
0057795c  f9 ff ff 1a                                      bne #0x577948
00577960  6c 30 a0 e3                                      mov r3, #0x6c
00577964  93 7b 2b e0                                      mla fp, r3, fp, r7
00577968  0b 00 a0 e1                                      mov r0, fp
0057796c  0a 10 a0 e1                                      mov r1, sl
00577970  40 fd ff eb                                      bl #0x576e78
00577974  04 40 96 e5                                      ldr r4, [r6, #4]
00577978  00 50 96 e5                                      ldr r5, [r6]
0057797c  6c b0 8b e2                                      add fp, fp, #0x6c
00577980  05 00 54 e1                                      cmp r4, r5
00577984  05 00 00 0a                                      beq #0x5779a0
00577988  6c 40 44 e2                                      sub r4, r4, #0x6c
0057798c  04 00 a0 e1                                      mov r0, r4
00577990  93 fe ff eb                                      bl #0x5773e4
00577994  04 00 55 e1                                      cmp r5, r4
00577998  fa ff ff 1a                                      bne #0x577988
0057799c  00 50 96 e5                                      ldr r5, [r6]
005779a0  05 00 a0 e1                                      mov r0, r5
005779a4  09 90 87 e0                                      add sb, r7, sb
005779a8  a8 62 f6 eb                                      bl #0x310450
005779ac  08 90 86 e5                                      str sb, [r6, #8]
005779b0  80 08 86 e8                                      stm r6, {r7, fp}
005779b4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
005779b8  01 00 52 e1                                      cmp r2, r1
005779bc  ce ff ff 8a                                      bhi #0x5778fc
005779c0  6c 90 a0 e3                                      mov sb, #0x6c
005779c4  99 01 09 e0                                      mul sb, sb, r1
005779c8  cc ff ff ea                                      b #0x577900
