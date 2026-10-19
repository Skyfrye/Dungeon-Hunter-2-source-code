; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00538314, declared_size=164, range_size=164, mode=arm
; class-group: int glitch::core
; alias: _ZN6glitch4core13binary_searchINS_3gui15CGUIEnvironment5SFontENS0_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKSA_
; demangled: int glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont, (glitch::memory::E_MEMORY_HINT)0> >(std::vector<glitch::gui::CGUIEnvironment::SFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFont, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::gui::CGUIEnvironment::SFont const&)
; decoder-mode: arm
00538314  70 40 2d e9                                      push {r4, r5, r6, lr}
00538318  00 40 a0 e1                                      mov r4, r0
0053831c  04 30 94 e5                                      ldr r3, [r4, #4]
00538320  00 00 90 e5                                      ldr r0, [r0]
00538324  08 d0 4d e2                                      sub sp, sp, #8
00538328  01 50 a0 e1                                      mov r5, r1
0053832c  03 00 50 e1                                      cmp r0, r3
00538330  02 00 00 1a                                      bne #0x538340
00538334  00 00 e0 e3                                      mvn r0, #0
00538338  08 d0 8d e2                                      add sp, sp, #8
0053833c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00538340  03 10 a0 e1                                      mov r1, r3
00538344  00 c0 a0 e3                                      mov ip, #0
00538348  00 30 a0 e3                                      mov r3, #0
0053834c  05 20 a0 e1                                      mov r2, r5
00538350  00 30 cd e5                                      strb r3, [sp]
00538354  04 c0 8d e5                                      str ip, [sp, #4]
00538358  bf ff ff eb                                      bl #0x53825c
0053835c  04 30 94 e5                                      ldr r3, [r4, #4]
00538360  00 60 a0 e1                                      mov r6, r0
00538364  03 00 50 e1                                      cmp r0, r3
00538368  f1 ff ff 0a                                      beq #0x538334
0053836c  05 10 a0 e1                                      mov r1, r5
00538370  de f7 ff eb                                      bl #0x5362f0
00538374  00 00 50 e3                                      cmp r0, #0
00538378  ed ff ff 1a                                      bne #0x538334
0053837c  05 00 a0 e1                                      mov r0, r5
00538380  06 10 a0 e1                                      mov r1, r6
00538384  d9 f7 ff eb                                      bl #0x5362f0
00538388  00 00 50 e3                                      cmp r0, #0
0053838c  e8 ff ff 1a                                      bne #0x538334
00538390  00 30 94 e5                                      ldr r3, [r4]
00538394  06 30 63 e0                                      rsb r3, r3, r6
00538398  43 31 a0 e1                                      asr r3, r3, #2
0053839c  83 21 83 e0                                      add r2, r3, r3, lsl #3
005383a0  02 23 82 e0                                      add r2, r2, r2, lsl #6
005383a4  82 21 83 e0                                      add r2, r3, r2, lsl #3
005383a8  82 27 82 e0                                      add r2, r2, r2, lsl #15
005383ac  82 31 83 e0                                      add r3, r3, r2, lsl #3
005383b0  00 00 63 e2                                      rsb r0, r3, #0
005383b4  df ff ff ea                                      b #0x538338

; FUNCTION 0x00538470, declared_size=164, range_size=164, mode=arm
; class-group: int glitch::core
; alias: _ZN6glitch4core13binary_searchINS_3gui15CGUIEnvironment11SSpriteBankENS0_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKSA_
; demangled: int glitch::core::binary_search<glitch::gui::CGUIEnvironment::SSpriteBank, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank, (glitch::memory::E_MEMORY_HINT)0> >(std::vector<glitch::gui::CGUIEnvironment::SSpriteBank, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SSpriteBank, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::gui::CGUIEnvironment::SSpriteBank const&)
; decoder-mode: arm
00538470  70 40 2d e9                                      push {r4, r5, r6, lr}
00538474  00 40 a0 e1                                      mov r4, r0
00538478  04 30 94 e5                                      ldr r3, [r4, #4]
0053847c  00 00 90 e5                                      ldr r0, [r0]
00538480  08 d0 4d e2                                      sub sp, sp, #8
00538484  01 50 a0 e1                                      mov r5, r1
00538488  03 00 50 e1                                      cmp r0, r3
0053848c  02 00 00 1a                                      bne #0x53849c
00538490  00 00 e0 e3                                      mvn r0, #0
00538494  08 d0 8d e2                                      add sp, sp, #8
00538498  70 80 bd e8                                      pop {r4, r5, r6, pc}
0053849c  03 10 a0 e1                                      mov r1, r3
005384a0  00 c0 a0 e3                                      mov ip, #0
005384a4  00 30 a0 e3                                      mov r3, #0
005384a8  05 20 a0 e1                                      mov r2, r5
005384ac  00 30 cd e5                                      strb r3, [sp]
005384b0  04 c0 8d e5                                      str ip, [sp, #4]
005384b4  bf ff ff eb                                      bl #0x5383b8
005384b8  04 30 94 e5                                      ldr r3, [r4, #4]
005384bc  00 60 a0 e1                                      mov r6, r0
005384c0  03 00 50 e1                                      cmp r0, r3
005384c4  f1 ff ff 0a                                      beq #0x538490
005384c8  05 10 a0 e1                                      mov r1, r5
005384cc  87 f7 ff eb                                      bl #0x5362f0
005384d0  00 00 50 e3                                      cmp r0, #0
005384d4  ed ff ff 1a                                      bne #0x538490
005384d8  05 00 a0 e1                                      mov r0, r5
005384dc  06 10 a0 e1                                      mov r1, r6
005384e0  82 f7 ff eb                                      bl #0x5362f0
005384e4  00 00 50 e3                                      cmp r0, #0
005384e8  e8 ff ff 1a                                      bne #0x538490
005384ec  00 30 94 e5                                      ldr r3, [r4]
005384f0  06 30 63 e0                                      rsb r3, r3, r6
005384f4  43 31 a0 e1                                      asr r3, r3, #2
005384f8  83 21 83 e0                                      add r2, r3, r3, lsl #3
005384fc  02 23 82 e0                                      add r2, r2, r2, lsl #6
00538500  82 21 83 e0                                      add r2, r3, r2, lsl #3
00538504  82 27 82 e0                                      add r2, r2, r2, lsl #15
00538508  82 31 83 e0                                      add r3, r3, r2, lsl #3
0053850c  00 00 63 e2                                      rsb r0, r3, #0
00538510  df ff ff ea                                      b #0x538494

; FUNCTION 0x005385cc, declared_size=164, range_size=164, mode=arm
; class-group: int glitch::core
; alias: _ZN6glitch4core13binary_searchINS_3gui15CGUIEnvironment5SFaceENS0_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKSA_
; demangled: int glitch::core::binary_search<glitch::gui::CGUIEnvironment::SFace, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace, (glitch::memory::E_MEMORY_HINT)0> >(std::vector<glitch::gui::CGUIEnvironment::SFace, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::SFace, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::gui::CGUIEnvironment::SFace const&)
; decoder-mode: arm
005385cc  70 40 2d e9                                      push {r4, r5, r6, lr}
005385d0  00 40 a0 e1                                      mov r4, r0
005385d4  04 30 94 e5                                      ldr r3, [r4, #4]
005385d8  00 00 90 e5                                      ldr r0, [r0]
005385dc  08 d0 4d e2                                      sub sp, sp, #8
005385e0  01 50 a0 e1                                      mov r5, r1
005385e4  03 00 50 e1                                      cmp r0, r3
005385e8  02 00 00 1a                                      bne #0x5385f8
005385ec  00 00 e0 e3                                      mvn r0, #0
005385f0  08 d0 8d e2                                      add sp, sp, #8
005385f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005385f8  03 10 a0 e1                                      mov r1, r3
005385fc  00 c0 a0 e3                                      mov ip, #0
00538600  00 30 a0 e3                                      mov r3, #0
00538604  05 20 a0 e1                                      mov r2, r5
00538608  00 30 cd e5                                      strb r3, [sp]
0053860c  04 c0 8d e5                                      str ip, [sp, #4]
00538610  bf ff ff eb                                      bl #0x538514
00538614  04 30 94 e5                                      ldr r3, [r4, #4]
00538618  00 60 a0 e1                                      mov r6, r0
0053861c  03 00 50 e1                                      cmp r0, r3
00538620  f1 ff ff 0a                                      beq #0x5385ec
00538624  05 10 a0 e1                                      mov r1, r5
00538628  30 f7 ff eb                                      bl #0x5362f0
0053862c  00 00 50 e3                                      cmp r0, #0
00538630  ed ff ff 1a                                      bne #0x5385ec
00538634  05 00 a0 e1                                      mov r0, r5
00538638  06 10 a0 e1                                      mov r1, r6
0053863c  2b f7 ff eb                                      bl #0x5362f0
00538640  00 00 50 e3                                      cmp r0, #0
00538644  e8 ff ff 1a                                      bne #0x5385ec
00538648  00 30 94 e5                                      ldr r3, [r4]
0053864c  06 30 63 e0                                      rsb r3, r3, r6
00538650  43 31 a0 e1                                      asr r3, r3, #2
00538654  83 21 83 e0                                      add r2, r3, r3, lsl #3
00538658  02 23 82 e0                                      add r2, r2, r2, lsl #6
0053865c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00538660  82 27 82 e0                                      add r2, r2, r2, lsl #15
00538664  82 31 83 e0                                      add r3, r3, r2, lsl #3
00538668  00 00 63 e2                                      rsb r0, r3, #0
0053866c  df ff ff ea                                      b #0x5385f0

; FUNCTION 0x00539e3c, declared_size=140, range_size=140, mode=arm
; class-group: int glitch::core
; alias: _ZN6glitch4core13binary_searchINS_3gui15CGUIEnvironment7STTFontENS0_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKSA_
; demangled: int glitch::core::binary_search<glitch::gui::CGUIEnvironment::STTFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont, (glitch::memory::E_MEMORY_HINT)0> >(std::vector<glitch::gui::CGUIEnvironment::STTFont, glitch::core::SAllocator<glitch::gui::CGUIEnvironment::STTFont, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::gui::CGUIEnvironment::STTFont const&)
; decoder-mode: arm
00539e3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00539e40  00 40 a0 e1                                      mov r4, r0
00539e44  04 30 94 e5                                      ldr r3, [r4, #4]
00539e48  00 00 90 e5                                      ldr r0, [r0]
00539e4c  08 d0 4d e2                                      sub sp, sp, #8
00539e50  01 50 a0 e1                                      mov r5, r1
00539e54  03 00 50 e1                                      cmp r0, r3
00539e58  02 00 00 1a                                      bne #0x539e68
00539e5c  00 00 e0 e3                                      mvn r0, #0
00539e60  08 d0 8d e2                                      add sp, sp, #8
00539e64  70 80 bd e8                                      pop {r4, r5, r6, pc}
00539e68  03 10 a0 e1                                      mov r1, r3
00539e6c  00 c0 a0 e3                                      mov ip, #0
00539e70  00 30 a0 e3                                      mov r3, #0
00539e74  05 20 a0 e1                                      mov r2, r5
00539e78  00 30 cd e5                                      strb r3, [sp]
00539e7c  04 c0 8d e5                                      str ip, [sp, #4]
00539e80  d5 ff ff eb                                      bl #0x539ddc
00539e84  04 30 94 e5                                      ldr r3, [r4, #4]
00539e88  00 60 a0 e1                                      mov r6, r0
00539e8c  03 00 50 e1                                      cmp r0, r3
00539e90  f1 ff ff 0a                                      beq #0x539e5c
00539e94  05 10 a0 e1                                      mov r1, r5
00539e98  a9 ff ff eb                                      bl #0x539d44
00539e9c  00 00 50 e3                                      cmp r0, #0
00539ea0  ed ff ff 1a                                      bne #0x539e5c
00539ea4  05 00 a0 e1                                      mov r0, r5
00539ea8  06 10 a0 e1                                      mov r1, r6
00539eac  a4 ff ff eb                                      bl #0x539d44
00539eb0  00 00 50 e3                                      cmp r0, #0
00539eb4  e8 ff ff 1a                                      bne #0x539e5c
00539eb8  00 00 94 e5                                      ldr r0, [r4]
00539ebc  06 00 60 e0                                      rsb r0, r0, r6
00539ec0  c0 02 a0 e1                                      asr r0, r0, #5
00539ec4  e5 ff ff ea                                      b #0x539e60

; FUNCTION 0x0057015c, declared_size=344, range_size=344, mode=arm
; class-group: int glitch::core
; alias: _ZN6glitch4core13binary_searchINS_2io13SPakFileEntryENS0_10SAllocatorIS3_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKS9_
; demangled: int glitch::core::binary_search<glitch::io::SPakFileEntry, glitch::core::SAllocator<glitch::io::SPakFileEntry, (glitch::memory::E_MEMORY_HINT)0> >(std::vector<glitch::io::SPakFileEntry, glitch::core::SAllocator<glitch::io::SPakFileEntry, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::io::SPakFileEntry const&)
; decoder-mode: arm
0057015c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00570160  00 40 a0 e1                                      mov r4, r0
00570164  04 30 94 e5                                      ldr r3, [r4, #4]
00570168  00 00 90 e5                                      ldr r0, [r0]
0057016c  08 d0 4d e2                                      sub sp, sp, #8
00570170  01 50 a0 e1                                      mov r5, r1
00570174  03 00 50 e1                                      cmp r0, r3
00570178  02 00 00 1a                                      bne #0x570188
0057017c  00 00 e0 e3                                      mvn r0, #0
00570180  08 d0 8d e2                                      add sp, sp, #8
00570184  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00570188  03 10 a0 e1                                      mov r1, r3
0057018c  00 c0 a0 e3                                      mov ip, #0
00570190  00 30 a0 e3                                      mov r3, #0
00570194  05 20 a0 e1                                      mov r2, r5
00570198  00 30 cd e5                                      strb r3, [sp]
0057019c  04 c0 8d e5                                      str ip, [sp, #4]
005701a0  e0 fd ff eb                                      bl #0x56f928
005701a4  04 30 94 e5                                      ldr r3, [r4, #4]
005701a8  03 00 50 e1                                      cmp r0, r3
005701ac  f2 ff ff 0a                                      beq #0x57017c
005701b0  2c 70 90 e5                                      ldr r7, [r0, #0x2c]
005701b4  28 20 90 e5                                      ldr r2, [r0, #0x28]
005701b8  07 20 52 e0                                      subs r2, r2, r7
005701bc  20 00 00 1a                                      bne #0x570244
005701c0  28 80 95 e5                                      ldr r8, [r5, #0x28]
005701c4  2c 60 95 e5                                      ldr r6, [r5, #0x2c]
005701c8  08 50 66 e0                                      rsb r5, r6, r8
005701cc  02 00 55 e1                                      cmp r5, r2
005701d0  00 30 a0 93                                      movls r3, #0
005701d4  01 30 a0 83                                      movhi r3, #1
005701d8  00 00 53 e3                                      cmp r3, #0
005701dc  e6 ff ff 1a                                      bne #0x57017c
005701e0  06 80 58 e0                                      subs r8, r8, r6
005701e4  08 00 00 0a                                      beq #0x57020c
005701e8  00 00 52 e3                                      cmp r2, #0
005701ec  06 00 00 0a                                      beq #0x57020c
005701f0  d0 c0 d6 e1                                      ldrsb ip, [r6]
005701f4  d0 10 d7 e1                                      ldrsb r1, [r7]
005701f8  01 10 5c e0                                      subs r1, ip, r1
005701fc  2a 00 00 1a                                      bne #0x5702ac
00570200  01 30 83 e2                                      add r3, r3, #1
00570204  03 00 58 e1                                      cmp r8, r3
00570208  21 00 00 1a                                      bne #0x570294
0057020c  02 00 58 e1                                      cmp r8, r2
00570210  00 20 a0 23                                      movhs r2, #0
00570214  01 20 a0 33                                      movlo r2, #1
00570218  00 00 52 e3                                      cmp r2, #0
0057021c  d6 ff ff 1a                                      bne #0x57017c
00570220  00 30 94 e5                                      ldr r3, [r4]
00570224  00 30 63 e0                                      rsb r3, r3, r0
00570228  43 32 a0 e1                                      asr r3, r3, #4
0057022c  83 00 83 e0                                      add r0, r3, r3, lsl #1
00570230  00 02 80 e0                                      add r0, r0, r0, lsl #4
00570234  00 04 80 e0                                      add r0, r0, r0, lsl #8
00570238  00 08 80 e0                                      add r0, r0, r0, lsl #16
0057023c  00 01 83 e0                                      add r0, r3, r0, lsl #2
00570240  ce ff ff ea                                      b #0x570180
00570244  28 80 95 e5                                      ldr r8, [r5, #0x28]
00570248  2c 60 95 e5                                      ldr r6, [r5, #0x2c]
0057024c  06 50 58 e0                                      subs r5, r8, r6
00570250  dd ff ff 0a                                      beq #0x5701cc
00570254  d0 30 d6 e1                                      ldrsb r3, [r6]
00570258  d0 10 d7 e1                                      ldrsb r1, [r7]
0057025c  03 10 51 e0                                      subs r1, r1, r3
00570260  01 30 a0 01                                      moveq r3, r1
00570264  08 00 00 1a                                      bne #0x57028c
00570268  01 30 83 e2                                      add r3, r3, #1
0057026c  02 00 53 e1                                      cmp r3, r2
00570270  d5 ff ff 0a                                      beq #0x5701cc
00570274  05 00 53 e1                                      cmp r3, r5
00570278  d3 ff ff 0a                                      beq #0x5701cc
0057027c  d3 c0 97 e1                                      ldrsb ip, [r7, r3]
00570280  d3 10 96 e1                                      ldrsb r1, [r6, r3]
00570284  01 10 5c e0                                      subs r1, ip, r1
00570288  f6 ff ff 0a                                      beq #0x570268
0057028c  a1 3f a0 e1                                      lsr r3, r1, #0x1f
00570290  d0 ff ff ea                                      b #0x5701d8
00570294  02 00 53 e1                                      cmp r3, r2
00570298  db ff ff 0a                                      beq #0x57020c
0057029c  d3 c0 96 e1                                      ldrsb ip, [r6, r3]
005702a0  d3 10 97 e1                                      ldrsb r1, [r7, r3]
005702a4  01 10 5c e0                                      subs r1, ip, r1
005702a8  d4 ff ff 0a                                      beq #0x570200
005702ac  a1 2f a0 e1                                      lsr r2, r1, #0x1f
005702b0  d8 ff ff ea                                      b #0x570218

; FUNCTION 0x005783c4, declared_size=348, range_size=348, mode=arm
; class-group: int glitch::core
; alias: _ZN6glitch4core13binary_searchINS_2io13SZipFileEntryENS0_10SAllocatorIS3_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKS9_
; demangled: int glitch::core::binary_search<glitch::io::SZipFileEntry, glitch::core::SAllocator<glitch::io::SZipFileEntry, (glitch::memory::E_MEMORY_HINT)0> >(std::vector<glitch::io::SZipFileEntry, glitch::core::SAllocator<glitch::io::SZipFileEntry, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::io::SZipFileEntry const&)
; decoder-mode: arm
005783c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005783c8  00 40 a0 e1                                      mov r4, r0
005783cc  04 30 94 e5                                      ldr r3, [r4, #4]
005783d0  00 00 90 e5                                      ldr r0, [r0]
005783d4  08 d0 4d e2                                      sub sp, sp, #8
005783d8  01 50 a0 e1                                      mov r5, r1
005783dc  03 00 50 e1                                      cmp r0, r3
005783e0  02 00 00 1a                                      bne #0x5783f0
005783e4  00 00 e0 e3                                      mvn r0, #0
005783e8  08 d0 8d e2                                      add sp, sp, #8
005783ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005783f0  03 10 a0 e1                                      mov r1, r3
005783f4  00 c0 a0 e3                                      mov ip, #0
005783f8  00 30 a0 e3                                      mov r3, #0
005783fc  05 20 a0 e1                                      mov r2, r5
00578400  00 30 cd e5                                      strb r3, [sp]
00578404  04 c0 8d e5                                      str ip, [sp, #4]
00578408  65 fb ff eb                                      bl #0x5771a4
0057840c  04 30 94 e5                                      ldr r3, [r4, #4]
00578410  03 00 50 e1                                      cmp r0, r3
00578414  f2 ff ff 0a                                      beq #0x5783e4
00578418  2c 70 90 e5                                      ldr r7, [r0, #0x2c]
0057841c  28 20 90 e5                                      ldr r2, [r0, #0x28]
00578420  07 20 52 e0                                      subs r2, r2, r7
00578424  21 00 00 1a                                      bne #0x5784b0
00578428  28 80 95 e5                                      ldr r8, [r5, #0x28]
0057842c  2c 60 95 e5                                      ldr r6, [r5, #0x2c]
00578430  08 50 66 e0                                      rsb r5, r6, r8
00578434  02 00 55 e1                                      cmp r5, r2
00578438  00 30 a0 93                                      movls r3, #0
0057843c  01 30 a0 83                                      movhi r3, #1
00578440  00 00 53 e3                                      cmp r3, #0
00578444  e6 ff ff 1a                                      bne #0x5783e4
00578448  06 80 58 e0                                      subs r8, r8, r6
0057844c  08 00 00 0a                                      beq #0x578474
00578450  00 00 52 e3                                      cmp r2, #0
00578454  06 00 00 0a                                      beq #0x578474
00578458  d0 c0 d6 e1                                      ldrsb ip, [r6]
0057845c  d0 10 d7 e1                                      ldrsb r1, [r7]
00578460  01 10 5c e0                                      subs r1, ip, r1
00578464  2b 00 00 1a                                      bne #0x578518
00578468  01 30 83 e2                                      add r3, r3, #1
0057846c  03 00 58 e1                                      cmp r8, r3
00578470  22 00 00 1a                                      bne #0x578500
00578474  02 00 58 e1                                      cmp r8, r2
00578478  00 20 a0 23                                      movhs r2, #0
0057847c  01 20 a0 33                                      movlo r2, #1
00578480  00 00 52 e3                                      cmp r2, #0
00578484  d6 ff ff 1a                                      bne #0x5783e4
00578488  00 30 94 e5                                      ldr r3, [r4]
0057848c  00 30 63 e0                                      rsb r3, r3, r0
00578490  43 31 a0 e1                                      asr r3, r3, #2
00578494  83 21 83 e0                                      add r2, r3, r3, lsl #3
00578498  82 30 83 e0                                      add r3, r3, r2, lsl #1
0057849c  83 04 a0 e1                                      lsl r0, r3, #9
005784a0  00 00 63 e0                                      rsb r0, r3, r0
005784a4  00 09 80 e0                                      add r0, r0, r0, lsl #18
005784a8  00 00 60 e2                                      rsb r0, r0, #0
005784ac  cd ff ff ea                                      b #0x5783e8
005784b0  28 80 95 e5                                      ldr r8, [r5, #0x28]
005784b4  2c 60 95 e5                                      ldr r6, [r5, #0x2c]
005784b8  06 50 58 e0                                      subs r5, r8, r6
005784bc  dc ff ff 0a                                      beq #0x578434
005784c0  d0 30 d6 e1                                      ldrsb r3, [r6]
005784c4  d0 10 d7 e1                                      ldrsb r1, [r7]
005784c8  03 10 51 e0                                      subs r1, r1, r3
005784cc  01 30 a0 01                                      moveq r3, r1
005784d0  08 00 00 1a                                      bne #0x5784f8
005784d4  01 30 83 e2                                      add r3, r3, #1
005784d8  02 00 53 e1                                      cmp r3, r2
005784dc  d4 ff ff 0a                                      beq #0x578434
005784e0  05 00 53 e1                                      cmp r3, r5
005784e4  d2 ff ff 0a                                      beq #0x578434
005784e8  d3 c0 97 e1                                      ldrsb ip, [r7, r3]
005784ec  d3 10 96 e1                                      ldrsb r1, [r6, r3]
005784f0  01 10 5c e0                                      subs r1, ip, r1
005784f4  f6 ff ff 0a                                      beq #0x5784d4
005784f8  a1 3f a0 e1                                      lsr r3, r1, #0x1f
005784fc  cf ff ff ea                                      b #0x578440
00578500  02 00 53 e1                                      cmp r3, r2
00578504  da ff ff 0a                                      beq #0x578474
00578508  d3 c0 96 e1                                      ldrsb ip, [r6, r3]
0057850c  d3 10 97 e1                                      ldrsb r1, [r7, r3]
00578510  01 10 5c e0                                      subs r1, ip, r1
00578514  d3 ff ff 0a                                      beq #0x578468
00578518  a1 2f a0 e1                                      lsr r2, r1, #0x1f
0057851c  d7 ff ff ea                                      b #0x578480

; FUNCTION 0x006bfa64, declared_size=348, range_size=348, mode=arm
; class-group: int glitch::core
; alias: _ZN6glitch4core13binary_searchINS_5scene10CMeshCache9MeshEntryENS0_10SAllocatorIS4_LNS_6memory13E_MEMORY_HINTE0EEEEEiRKSt6vectorIT_T0_ERKSA_
; demangled: int glitch::core::binary_search<glitch::scene::CMeshCache::MeshEntry, glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry, (glitch::memory::E_MEMORY_HINT)0> >(std::vector<glitch::scene::CMeshCache::MeshEntry, glitch::core::SAllocator<glitch::scene::CMeshCache::MeshEntry, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::scene::CMeshCache::MeshEntry const&)
; decoder-mode: arm
006bfa64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006bfa68  00 40 a0 e1                                      mov r4, r0
006bfa6c  04 30 94 e5                                      ldr r3, [r4, #4]
006bfa70  00 00 90 e5                                      ldr r0, [r0]
006bfa74  08 d0 4d e2                                      sub sp, sp, #8
006bfa78  01 50 a0 e1                                      mov r5, r1
006bfa7c  03 00 50 e1                                      cmp r0, r3
006bfa80  02 00 00 1a                                      bne #0x6bfa90
006bfa84  00 00 e0 e3                                      mvn r0, #0
006bfa88  08 d0 8d e2                                      add sp, sp, #8
006bfa8c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006bfa90  03 10 a0 e1                                      mov r1, r3
006bfa94  00 c0 a0 e3                                      mov ip, #0
006bfa98  00 30 a0 e3                                      mov r3, #0
006bfa9c  05 20 a0 e1                                      mov r2, r5
006bfaa0  00 30 cd e5                                      strb r3, [sp]
006bfaa4  04 c0 8d e5                                      str ip, [sp, #4]
006bfaa8  1f fc ff eb                                      bl #0x6beb2c
006bfaac  04 30 94 e5                                      ldr r3, [r4, #4]
006bfab0  03 00 50 e1                                      cmp r0, r3
006bfab4  f2 ff ff 0a                                      beq #0x6bfa84
006bfab8  14 70 90 e5                                      ldr r7, [r0, #0x14]
006bfabc  10 20 90 e5                                      ldr r2, [r0, #0x10]
006bfac0  07 20 52 e0                                      subs r2, r2, r7
006bfac4  21 00 00 1a                                      bne #0x6bfb50
006bfac8  10 80 95 e5                                      ldr r8, [r5, #0x10]
006bfacc  14 60 95 e5                                      ldr r6, [r5, #0x14]
006bfad0  08 50 66 e0                                      rsb r5, r6, r8
006bfad4  02 00 55 e1                                      cmp r5, r2
006bfad8  00 30 a0 93                                      movls r3, #0
006bfadc  01 30 a0 83                                      movhi r3, #1
006bfae0  00 00 53 e3                                      cmp r3, #0
006bfae4  e6 ff ff 1a                                      bne #0x6bfa84
006bfae8  06 80 58 e0                                      subs r8, r8, r6
006bfaec  08 00 00 0a                                      beq #0x6bfb14
006bfaf0  00 00 52 e3                                      cmp r2, #0
006bfaf4  06 00 00 0a                                      beq #0x6bfb14
006bfaf8  d0 c0 d6 e1                                      ldrsb ip, [r6]
006bfafc  d0 10 d7 e1                                      ldrsb r1, [r7]
006bfb00  01 10 5c e0                                      subs r1, ip, r1
006bfb04  2b 00 00 1a                                      bne #0x6bfbb8
006bfb08  01 30 83 e2                                      add r3, r3, #1
006bfb0c  03 00 58 e1                                      cmp r8, r3
006bfb10  22 00 00 1a                                      bne #0x6bfba0
006bfb14  02 00 58 e1                                      cmp r8, r2
006bfb18  00 20 a0 23                                      movhs r2, #0
006bfb1c  01 20 a0 33                                      movlo r2, #1
006bfb20  00 00 52 e3                                      cmp r2, #0
006bfb24  d6 ff ff 1a                                      bne #0x6bfa84
006bfb28  00 30 94 e5                                      ldr r3, [r4]
006bfb2c  00 30 63 e0                                      rsb r3, r3, r0
006bfb30  43 31 a0 e1                                      asr r3, r3, #2
006bfb34  83 21 83 e0                                      add r2, r3, r3, lsl #3
006bfb38  02 23 82 e0                                      add r2, r2, r2, lsl #6
006bfb3c  82 21 83 e0                                      add r2, r3, r2, lsl #3
006bfb40  82 27 82 e0                                      add r2, r2, r2, lsl #15
006bfb44  82 31 83 e0                                      add r3, r3, r2, lsl #3
006bfb48  00 00 63 e2                                      rsb r0, r3, #0
006bfb4c  cd ff ff ea                                      b #0x6bfa88
006bfb50  10 80 95 e5                                      ldr r8, [r5, #0x10]
006bfb54  14 60 95 e5                                      ldr r6, [r5, #0x14]
006bfb58  06 50 58 e0                                      subs r5, r8, r6
006bfb5c  dc ff ff 0a                                      beq #0x6bfad4
006bfb60  d0 30 d6 e1                                      ldrsb r3, [r6]
006bfb64  d0 10 d7 e1                                      ldrsb r1, [r7]
006bfb68  03 10 51 e0                                      subs r1, r1, r3
006bfb6c  01 30 a0 01                                      moveq r3, r1
006bfb70  08 00 00 1a                                      bne #0x6bfb98
006bfb74  01 30 83 e2                                      add r3, r3, #1
006bfb78  02 00 53 e1                                      cmp r3, r2
006bfb7c  d4 ff ff 0a                                      beq #0x6bfad4
006bfb80  05 00 53 e1                                      cmp r3, r5
006bfb84  d2 ff ff 0a                                      beq #0x6bfad4
006bfb88  d3 c0 97 e1                                      ldrsb ip, [r7, r3]
006bfb8c  d3 10 96 e1                                      ldrsb r1, [r6, r3]
006bfb90  01 10 5c e0                                      subs r1, ip, r1
006bfb94  f6 ff ff 0a                                      beq #0x6bfb74
006bfb98  a1 3f a0 e1                                      lsr r3, r1, #0x1f
006bfb9c  cf ff ff ea                                      b #0x6bfae0
006bfba0  02 00 53 e1                                      cmp r3, r2
006bfba4  da ff ff 0a                                      beq #0x6bfb14
006bfba8  d3 c0 96 e1                                      ldrsb ip, [r6, r3]
006bfbac  d3 10 97 e1                                      ldrsb r1, [r7, r3]
006bfbb0  01 10 5c e0                                      subs r1, ip, r1
006bfbb4  d3 ff ff 0a                                      beq #0x6bfb08
006bfbb8  a1 2f a0 e1                                      lsr r2, r1, #0x1f
006bfbbc  d7 ff ff ea                                      b #0x6bfb20
