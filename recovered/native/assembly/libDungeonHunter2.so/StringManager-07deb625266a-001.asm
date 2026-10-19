; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005074b0, declared_size=44, range_size=44, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager25TranslateGameLangageToIGPEi
; demangled: StringManager::TranslateGameLangageToIGP(int)
; decoder-mode: arm
005074b0  00 00 50 e3                                      cmp r0, #0
005074b4  05 00 00 ba                                      blt #0x5074d0
005074b8  07 00 50 e3                                      cmp r0, #7
005074bc  03 00 00 8a                                      bhi #0x5074d0
005074c0  10 30 9f e5                                      ldr r3, [pc, #0x10]
005074c4  03 30 8f e0                                      add r3, pc, r3
005074c8  00 01 93 e7                                      ldr r0, [r3, r0, lsl #2]
005074cc  1e ff 2f e1                                      bx lr
005074d0  00 00 a0 e3                                      mov r0, #0
005074d4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005074d8  fc 45 3d 00                                      .byte 0xfc, 0x45, 0x3d, 0x00

; FUNCTION 0x005074dc, declared_size=48, range_size=48, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager29TranslateGameLanguageToGLLiveEi
; demangled: StringManager::TranslateGameLanguageToGLLive(int)
; decoder-mode: arm
005074dc  00 00 50 e3                                      cmp r0, #0
005074e0  06 00 00 ba                                      blt #0x507500
005074e4  07 00 50 e3                                      cmp r0, #7
005074e8  04 00 00 8a                                      bhi #0x507500
005074ec  14 30 9f e5                                      ldr r3, [pc, #0x14]
005074f0  03 30 8f e0                                      add r3, pc, r3
005074f4  00 01 83 e0                                      add r0, r3, r0, lsl #2
005074f8  20 00 90 e5                                      ldr r0, [r0, #0x20]
005074fc  1e ff 2f e1                                      bx lr
00507500  00 00 a0 e3                                      mov r0, #0
00507504  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00507508  d0 45 3d 00                                      .byte 0xd0, 0x45, 0x3d, 0x00

; FUNCTION 0x0050750c, declared_size=40, range_size=40, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager8addSpaceEv
; demangled: StringManager::addSpace()
; decoder-mode: arm
0050750c  04 30 90 e5                                      ldr r3, [r0, #4]
00507510  07 00 53 e3                                      cmp r3, #7
00507514  00 00 a0 83                                      movhi r0, #0
00507518  1e ff 2f 81                                      bxhi lr
0050751c  0c 20 9f e5                                      ldr r2, [pc, #0xc]
00507520  02 20 8f e0                                      add r2, pc, r2
00507524  03 30 82 e0                                      add r3, r2, r3
00507528  40 00 d3 e5                                      ldrb r0, [r3, #0x40]
0050752c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00507530  a0 45 3d 00                                      .byte 0xa0, 0x45, 0x3d, 0x00

; FUNCTION 0x00507534, declared_size=28, range_size=28, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager18getNumberOfStringsEi
; demangled: StringManager::getNumberOfStrings(int) const
; decoder-mode: arm
00507534  04 30 90 e5                                      ldr r3, [r0, #4]
00507538  25 20 a0 e3                                      mov r2, #0x25
0050753c  92 13 23 e0                                      mla r3, r2, r3, r1
00507540  a7 3f 83 e2                                      add r3, r3, #0x29c
00507544  83 00 80 e0                                      add r0, r0, r3, lsl #1
00507548  f4 00 d0 e1                                      ldrsh r0, [r0, #4]
0050754c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00507550, declared_size=24, range_size=24, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager18getNumberOfStringsEii
; demangled: StringManager::getNumberOfStrings(int, int) const
; decoder-mode: arm
00507550  25 30 a0 e3                                      mov r3, #0x25
00507554  93 12 23 e0                                      mla r3, r3, r2, r1
00507558  a7 3f 83 e2                                      add r3, r3, #0x29c
0050755c  83 30 80 e0                                      add r3, r0, r3, lsl #1
00507560  f4 00 d3 e1                                      ldrsh r0, [r3, #4]
00507564  1e ff 2f e1                                      bx lr

; FUNCTION 0x00507568, declared_size=72, range_size=72, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager12getSheetNameEj
; demangled: StringManager::getSheetName(unsigned int) const
; decoder-mode: arm
00507568  38 30 9f e5                                      ldr r3, [pc, #0x38]
0050756c  04 20 90 e5                                      ldr r2, [r0, #4]
00507570  34 00 9f e5                                      ldr r0, [pc, #0x34]
00507574  03 30 8f e0                                      add r3, pc, r3
00507578  01 00 72 e3                                      cmn r2, #1
0050757c  00 00 93 e7                                      ldr r0, [r3, r0]
00507580  00 20 a0 03                                      moveq r2, #0
00507584  00 30 90 e5                                      ldr r3, [r0]
00507588  0c 00 a0 13                                      movne r0, #0xc
0050758c  90 02 02 10                                      mulne r2, r0, r2
00507590  02 20 83 e0                                      add r2, r3, r2
00507594  08 30 92 e5                                      ldr r3, [r2, #8]
00507598  14 20 a0 e3                                      mov r2, #0x14
0050759c  92 31 21 e0                                      mla r1, r2, r1, r3
005075a0  10 00 91 e5                                      ldr r0, [r1, #0x10]
005075a4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005075a8  1c d5 48 00 90 3f 00 00                          .byte 0x1c, 0xd5, 0x48, 0x00, 0x90, 0x3f, 0x00, 0x00

; FUNCTION 0x005075b0, declared_size=8, range_size=8, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager13getSymbolPackEv
; demangled: StringManager::getSymbolPack() const
; decoder-mode: arm
005075b0  08 00 a0 e3                                      mov r0, #8
005075b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00507668, declared_size=288, range_size=288, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager17isPackSheetLoadedEjj
; demangled: StringManager::isPackSheetLoaded(unsigned int, unsigned int) const
; decoder-mode: arm
00507668  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0050766c  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
00507670  08 00 51 e3                                      cmp r1, #8
00507674  0c d0 4d e2                                      sub sp, sp, #0xc
00507678  04 40 8f e0                                      add r4, pc, r4
0050767c  01 60 a0 e1                                      mov r6, r1
00507680  00 70 a0 e1                                      mov r7, r0
00507684  02 50 a0 e1                                      mov r5, r2
00507688  08 00 00 9a                                      bls #0x5076b0
0050768c  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
00507690  03 30 94 e7                                      ldr r3, [r4, r3]
00507694  00 30 93 e5                                      ldr r3, [r3]
00507698  02 00 53 e3                                      cmp r3, #2
0050769c  00 30 a0 03                                      moveq r3, #0
005076a0  00 30 83 05                                      streq r3, [r3]
005076a4  01 00 00 0a                                      beq #0x5076b0
005076a8  01 00 53 e3                                      cmp r3, #1
005076ac  1f 00 00 0a                                      beq #0x507730
005076b0  24 00 55 e3                                      cmp r5, #0x24
005076b4  08 00 00 9a                                      bls #0x5076dc
005076b8  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
005076bc  03 30 94 e7                                      ldr r3, [r4, r3]
005076c0  00 30 93 e5                                      ldr r3, [r3]
005076c4  02 00 53 e3                                      cmp r3, #2
005076c8  00 30 a0 03                                      moveq r3, #0
005076cc  00 30 83 05                                      streq r3, [r3]
005076d0  01 00 00 0a                                      beq #0x5076dc
005076d4  01 00 53 e3                                      cmp r3, #1
005076d8  07 00 00 0a                                      beq #0x5076fc
005076dc  25 30 a0 e3                                      mov r3, #0x25
005076e0  93 56 25 e0                                      mla r5, r3, r6, r5
005076e4  02 50 85 e2                                      add r5, r5, #2
005076e8  05 01 97 e7                                      ldr r0, [r7, r5, lsl #2]
005076ec  00 00 50 e2                                      subs r0, r0, #0
005076f0  01 00 a0 13                                      movne r0, #1
005076f4  0c d0 8d e2                                      add sp, sp, #0xc
005076f8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005076fc  68 00 9f e5                                      ldr r0, [pc, #0x68]
00507700  68 10 9f e5                                      ldr r1, [pc, #0x68]
00507704  68 20 9f e5                                      ldr r2, [pc, #0x68]
00507708  00 00 94 e7                                      ldr r0, [r4, r0]
0050770c  64 30 9f e5                                      ldr r3, [pc, #0x64]
00507710  d5 c0 a0 e3                                      mov ip, #0xd5
00507714  01 10 8f e0                                      add r1, pc, r1
00507718  02 20 8f e0                                      add r2, pc, r2
0050771c  03 30 8f e0                                      add r3, pc, r3
00507720  a8 00 80 e2                                      add r0, r0, #0xa8
00507724  00 c0 8d e5                                      str ip, [sp]
00507728  35 1a f8 eb                                      bl #0x30e004
0050772c  ea ff ff ea                                      b #0x5076dc
00507730  34 00 9f e5                                      ldr r0, [pc, #0x34]
00507734  40 10 9f e5                                      ldr r1, [pc, #0x40]
00507738  40 20 9f e5                                      ldr r2, [pc, #0x40]
0050773c  00 00 94 e7                                      ldr r0, [r4, r0]
00507740  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00507744  d3 c0 a0 e3                                      mov ip, #0xd3
00507748  01 10 8f e0                                      add r1, pc, r1
0050774c  02 20 8f e0                                      add r2, pc, r2
00507750  03 30 8f e0                                      add r3, pc, r3
00507754  a8 00 80 e2                                      add r0, r0, #0xa8
00507758  00 c0 8d e5                                      str ip, [sp]
0050775c  28 1a f8 eb                                      bl #0x30e004
00507760  d2 ff ff ea                                      b #0x5076b0
; mapping-symbol data/literal pool
00507764  18 d4 48 00 c0 39 00 00 c0 19 00 00 c4 6c 3b 00  .byte 0x18, 0xd4, 0x48, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc4, 0x6c, 0x3b, 0x00
00507774  78 44 3d 00 2c 44 3d 00 90 6c 3b 00 7c 44 3d 00  .byte 0x78, 0x44, 0x3d, 0x00, 0x2c, 0x44, 0x3d, 0x00, 0x90, 0x6c, 0x3b, 0x00, 0x7c, 0x44, 0x3d, 0x00
00507784  f8 43 3d 00                                      .byte 0xf8, 0x43, 0x3d, 0x00

; FUNCTION 0x00507788, declared_size=308, range_size=308, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager15unloadPackSheetEjj
; demangled: StringManager::unloadPackSheet(unsigned int, unsigned int)
; decoder-mode: arm
00507788  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0050778c  10 31 9f e5                                      ldr r3, [pc, #0x110]
00507790  08 00 51 e3                                      cmp r1, #8
00507794  0c d0 4d e2                                      sub sp, sp, #0xc
00507798  03 30 8f e0                                      add r3, pc, r3
0050779c  01 40 a0 e1                                      mov r4, r1
005077a0  00 50 a0 e1                                      mov r5, r0
005077a4  02 60 a0 e1                                      mov r6, r2
005077a8  08 00 00 9a                                      bls #0x5077d0
005077ac  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
005077b0  02 20 93 e7                                      ldr r2, [r3, r2]
005077b4  00 20 92 e5                                      ldr r2, [r2]
005077b8  02 00 52 e3                                      cmp r2, #2
005077bc  00 30 a0 03                                      moveq r3, #0
005077c0  00 30 83 05                                      streq r3, [r3]
005077c4  01 00 00 0a                                      beq #0x5077d0
005077c8  01 00 52 e3                                      cmp r2, #1
005077cc  27 00 00 0a                                      beq #0x507870
005077d0  05 00 a0 e1                                      mov r0, r5
005077d4  04 10 a0 e1                                      mov r1, r4
005077d8  06 20 a0 e1                                      mov r2, r6
005077dc  a1 ff ff eb                                      bl #0x507668
005077e0  00 00 50 e3                                      cmp r0, #0
005077e4  1f 00 00 0a                                      beq #0x507868
005077e8  25 30 a0 e3                                      mov r3, #0x25
005077ec  93 64 23 e0                                      mla r3, r3, r4, r6
005077f0  02 30 83 e2                                      add r3, r3, #2
005077f4  03 71 95 e7                                      ldr r7, [r5, r3, lsl #2]
005077f8  00 00 97 e5                                      ldr r0, [r7]
005077fc  00 00 50 e3                                      cmp r0, #0
00507800  0c 00 00 0a                                      beq #0x507838
00507804  04 80 87 e2                                      add r8, r7, #4
00507808  00 a0 a0 e3                                      mov sl, #0
0050780c  0b 23 f8 eb                                      bl #0x310440
00507810  00 a0 87 e5                                      str sl, [r7]
00507814  00 00 98 e5                                      ldr r0, [r8]
00507818  08 70 a0 e1                                      mov r7, r8
0050781c  04 80 88 e2                                      add r8, r8, #4
00507820  00 00 50 e3                                      cmp r0, #0
00507824  f8 ff ff 1a                                      bne #0x50780c
00507828  25 30 a0 e3                                      mov r3, #0x25
0050782c  93 64 23 e0                                      mla r3, r3, r4, r6
00507830  02 30 83 e2                                      add r3, r3, #2
00507834  03 71 95 e7                                      ldr r7, [r5, r3, lsl #2]
00507838  00 00 57 e3                                      cmp r7, #0
0050783c  01 00 00 0a                                      beq #0x507848
00507840  07 00 a0 e1                                      mov r0, r7
00507844  fd 22 f8 eb                                      bl #0x310440
00507848  25 30 a0 e3                                      mov r3, #0x25
0050784c  93 64 24 e0                                      mla r4, r3, r4, r6
00507850  00 30 a0 e3                                      mov r3, #0
00507854  a7 2f 84 e2                                      add r2, r4, #0x29c
00507858  82 20 85 e0                                      add r2, r5, r2, lsl #1
0050785c  02 40 84 e2                                      add r4, r4, #2
00507860  04 31 85 e7                                      str r3, [r5, r4, lsl #2]
00507864  b4 30 c2 e1                                      strh r3, [r2, #4]
00507868  0c d0 8d e2                                      add sp, sp, #0xc
0050786c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00507870  34 00 9f e5                                      ldr r0, [pc, #0x34]
00507874  34 10 9f e5                                      ldr r1, [pc, #0x34]
00507878  34 20 9f e5                                      ldr r2, [pc, #0x34]
0050787c  00 00 93 e7                                      ldr r0, [r3, r0]
00507880  30 30 9f e5                                      ldr r3, [pc, #0x30]
00507884  67 cf a0 e3                                      mov ip, #0x19c
00507888  01 10 8f e0                                      add r1, pc, r1
0050788c  02 20 8f e0                                      add r2, pc, r2
00507890  03 30 8f e0                                      add r3, pc, r3
00507894  a8 00 80 e2                                      add r0, r0, #0xa8
00507898  00 c0 8d e5                                      str ip, [sp]
0050789c  d8 19 f8 eb                                      bl #0x30e004
005078a0  ca ff ff ea                                      b #0x5077d0
; mapping-symbol data/literal pool
005078a4  f8 d2 48 00 c0 39 00 00 c0 19 00 00 50 6b 3b 00  .byte 0xf8, 0xd2, 0x48, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x50, 0x6b, 0x3b, 0x00
005078b4  3c 43 3d 00 b8 42 3d 00                          .byte 0x3c, 0x43, 0x3d, 0x00, 0xb8, 0x42, 0x3d, 0x00

; FUNCTION 0x005078bc, declared_size=208, range_size=208, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager12isPackLoadedEj
; demangled: StringManager::isPackLoaded(unsigned int) const
; decoder-mode: arm
005078bc  70 40 2d e9                                      push {r4, r5, r6, lr}
005078c0  ac 30 9f e5                                      ldr r3, [pc, #0xac]
005078c4  09 20 41 e2                                      sub r2, r1, #9
005078c8  0b 00 72 e3                                      cmn r2, #0xb
005078cc  08 d0 4d e2                                      sub sp, sp, #8
005078d0  01 40 a0 e1                                      mov r4, r1
005078d4  03 30 8f e0                                      add r3, pc, r3
005078d8  00 50 a0 e1                                      mov r5, r0
005078dc  06 00 00 8a                                      bhi #0x5078fc
005078e0  90 20 9f e5                                      ldr r2, [pc, #0x90]
005078e4  02 20 93 e7                                      ldr r2, [r3, r2]
005078e8  00 20 92 e5                                      ldr r2, [r2]
005078ec  02 00 52 e3                                      cmp r2, #2
005078f0  0f 00 00 0a                                      beq #0x507934
005078f4  01 00 52 e3                                      cmp r2, #1
005078f8  10 00 00 0a                                      beq #0x507940
005078fc  00 60 a0 e3                                      mov r6, #0
00507900  06 20 a0 e1                                      mov r2, r6
00507904  05 00 a0 e1                                      mov r0, r5
00507908  04 10 a0 e1                                      mov r1, r4
0050790c  55 ff ff eb                                      bl #0x507668
00507910  00 00 50 e3                                      cmp r0, #0
00507914  01 60 86 e2                                      add r6, r6, #1
00507918  03 00 00 1a                                      bne #0x50792c
0050791c  25 00 56 e3                                      cmp r6, #0x25
00507920  f6 ff ff 1a                                      bne #0x507900
00507924  08 d0 8d e2                                      add sp, sp, #8
00507928  70 80 bd e8                                      pop {r4, r5, r6, pc}
0050792c  01 00 a0 e3                                      mov r0, #1
00507930  fb ff ff ea                                      b #0x507924
00507934  00 30 a0 e3                                      mov r3, #0
00507938  00 30 83 e5                                      str r3, [r3]
0050793c  ee ff ff ea                                      b #0x5078fc
00507940  34 00 9f e5                                      ldr r0, [pc, #0x34]
00507944  34 10 9f e5                                      ldr r1, [pc, #0x34]
00507948  34 20 9f e5                                      ldr r2, [pc, #0x34]
0050794c  00 00 93 e7                                      ldr r0, [r3, r0]
00507950  30 30 9f e5                                      ldr r3, [pc, #0x30]
00507954  bf c0 a0 e3                                      mov ip, #0xbf
00507958  01 10 8f e0                                      add r1, pc, r1
0050795c  02 20 8f e0                                      add r2, pc, r2
00507960  03 30 8f e0                                      add r3, pc, r3
00507964  a8 00 80 e2                                      add r0, r0, #0xa8
00507968  00 c0 8d e5                                      str ip, [sp]
0050796c  a4 19 f8 eb                                      bl #0x30e004
00507970  e1 ff ff ea                                      b #0x5078fc
; mapping-symbol data/literal pool
00507974  bc d1 48 00 c0 39 00 00 c0 19 00 00 80 6a 3b 00  .byte 0xbc, 0xd1, 0x48, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x80, 0x6a, 0x3b, 0x00
00507984  54 42 3d 00 e8 41 3d 00                          .byte 0x54, 0x42, 0x3d, 0x00, 0xe8, 0x41, 0x3d, 0x00

; FUNCTION 0x0050798c, declared_size=52, range_size=52, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager21getNumberOfLoadedPackEv
; demangled: StringManager::getNumberOfLoadedPack() const
; decoder-mode: arm
0050798c  70 40 2d e9                                      push {r4, r5, r6, lr}
00507990  00 40 a0 e3                                      mov r4, #0
00507994  00 60 a0 e1                                      mov r6, r0
00507998  04 50 a0 e1                                      mov r5, r4
0050799c  04 10 a0 e1                                      mov r1, r4
005079a0  06 00 a0 e1                                      mov r0, r6
005079a4  c4 ff ff eb                                      bl #0x5078bc
005079a8  01 40 84 e2                                      add r4, r4, #1
005079ac  09 00 54 e3                                      cmp r4, #9
005079b0  00 50 85 e0                                      add r5, r5, r0
005079b4  f8 ff ff 1a                                      bne #0x50799c
005079b8  05 00 a0 e1                                      mov r0, r5
005079bc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005079c0, declared_size=212, range_size=212, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager10unloadPackEj
; demangled: StringManager::unloadPack(unsigned int)
; decoder-mode: arm
005079c0  70 40 2d e9                                      push {r4, r5, r6, lr}
005079c4  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
005079c8  01 00 71 e3                                      cmn r1, #1
005079cc  08 d0 4d e2                                      sub sp, sp, #8
005079d0  01 40 a0 e1                                      mov r4, r1
005079d4  03 30 8f e0                                      add r3, pc, r3
005079d8  00 50 a0 e1                                      mov r5, r0
005079dc  17 00 00 0a                                      beq #0x507a40
005079e0  08 00 51 e3                                      cmp r1, #8
005079e4  08 00 00 9a                                      bls #0x507a0c
005079e8  90 20 9f e5                                      ldr r2, [pc, #0x90]
005079ec  02 20 93 e7                                      ldr r2, [r3, r2]
005079f0  00 20 92 e5                                      ldr r2, [r2]
005079f4  02 00 52 e3                                      cmp r2, #2
005079f8  00 30 a0 03                                      moveq r3, #0
005079fc  00 30 83 05                                      streq r3, [r3]
00507a00  01 00 00 0a                                      beq #0x507a0c
00507a04  01 00 52 e3                                      cmp r2, #1
00507a08  0e 00 00 0a                                      beq #0x507a48
00507a0c  05 00 a0 e1                                      mov r0, r5
00507a10  04 10 a0 e1                                      mov r1, r4
00507a14  a8 ff ff eb                                      bl #0x5078bc
00507a18  00 00 50 e3                                      cmp r0, #0
00507a1c  07 00 00 0a                                      beq #0x507a40
00507a20  00 60 a0 e3                                      mov r6, #0
00507a24  06 20 a0 e1                                      mov r2, r6
00507a28  05 00 a0 e1                                      mov r0, r5
00507a2c  01 60 86 e2                                      add r6, r6, #1
00507a30  04 10 a0 e1                                      mov r1, r4
00507a34  53 ff ff eb                                      bl #0x507788
00507a38  25 00 56 e3                                      cmp r6, #0x25
00507a3c  f8 ff ff 1a                                      bne #0x507a24
00507a40  08 d0 8d e2                                      add sp, sp, #8
00507a44  70 80 bd e8                                      pop {r4, r5, r6, pc}
00507a48  34 00 9f e5                                      ldr r0, [pc, #0x34]
00507a4c  34 10 9f e5                                      ldr r1, [pc, #0x34]
00507a50  34 20 9f e5                                      ldr r2, [pc, #0x34]
00507a54  00 00 93 e7                                      ldr r0, [r3, r0]
00507a58  30 30 9f e5                                      ldr r3, [pc, #0x30]
00507a5c  8a c1 00 e3                                      movw ip, #0x18a
00507a60  01 10 8f e0                                      add r1, pc, r1
00507a64  02 20 8f e0                                      add r2, pc, r2
00507a68  03 30 8f e0                                      add r3, pc, r3
00507a6c  a8 00 80 e2                                      add r0, r0, #0xa8
00507a70  00 c0 8d e5                                      str ip, [sp]
00507a74  62 19 f8 eb                                      bl #0x30e004
00507a78  e3 ff ff ea                                      b #0x507a0c
; mapping-symbol data/literal pool
00507a7c  bc d0 48 00 c0 39 00 00 c0 19 00 00 78 69 3b 00  .byte 0xbc, 0xd0, 0x48, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x78, 0x69, 0x3b, 0x00
00507a8c  64 41 3d 00 e0 40 3d 00                          .byte 0x64, 0x41, 0x3d, 0x00, 0xe0, 0x40, 0x3d, 0x00

; FUNCTION 0x00507a94, declared_size=76, range_size=76, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager10switchPackEjb
; demangled: StringManager::switchPack(unsigned int, bool)
; decoder-mode: arm
00507a94  00 00 52 e3                                      cmp r2, #0
00507a98  70 40 2d e9                                      push {r4, r5, r6, lr}
00507a9c  01 40 a0 e1                                      mov r4, r1
00507aa0  00 50 a0 e1                                      mov r5, r0
00507aa4  05 00 00 0a                                      beq #0x507ac0
00507aa8  04 10 90 e5                                      ldr r1, [r0, #4]
00507aac  04 00 51 e1                                      cmp r1, r4
00507ab0  08 00 00 0a                                      beq #0x507ad8
00507ab4  01 00 71 e3                                      cmn r1, #1
00507ab8  01 00 00 0a                                      beq #0x507ac4
00507abc  bf ff ff eb                                      bl #0x5079c0
00507ac0  04 10 95 e5                                      ldr r1, [r5, #4]
00507ac4  01 00 54 e1                                      cmp r4, r1
00507ac8  02 00 00 0a                                      beq #0x507ad8
00507acc  04 40 85 e5                                      str r4, [r5, #4]
00507ad0  01 00 a0 e3                                      mov r0, #1
00507ad4  70 80 bd e8                                      pop {r4, r5, r6, pc}
00507ad8  00 00 a0 e3                                      mov r0, #0
00507adc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00507ae0, declared_size=40, range_size=40, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager14unloadAllPacksEv
; demangled: StringManager::unloadAllPacks()
; decoder-mode: arm
00507ae0  70 40 2d e9                                      push {r4, r5, r6, lr}
00507ae4  00 50 a0 e1                                      mov r5, r0
00507ae8  00 40 a0 e3                                      mov r4, #0
00507aec  04 10 a0 e1                                      mov r1, r4
00507af0  05 00 a0 e1                                      mov r0, r5
00507af4  01 40 84 e2                                      add r4, r4, #1
00507af8  b0 ff ff eb                                      bl #0x5079c0
00507afc  09 00 54 e3                                      cmp r4, #9
00507b00  f9 ff ff 1a                                      bne #0x507aec
00507b04  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00507b08, declared_size=76, range_size=76, mode=arm
; class-group: StringManager
; alias: _ZN13StringManagerD1Ev
; demangled: StringManager::~StringManager()
; decoder-mode: arm
00507b08  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00507b0c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00507b10  70 40 2d e9                                      push {r4, r5, r6, lr}
00507b14  03 30 8f e0                                      add r3, pc, r3
00507b18  02 20 93 e7                                      ldr r2, [r3, r2]
00507b1c  00 50 a0 e1                                      mov r5, r0
00507b20  00 40 a0 e3                                      mov r4, #0
00507b24  08 20 82 e2                                      add r2, r2, #8
00507b28  00 20 80 e5                                      str r2, [r0]
00507b2c  04 10 a0 e1                                      mov r1, r4
00507b30  05 00 a0 e1                                      mov r0, r5
00507b34  01 40 84 e2                                      add r4, r4, #1
00507b38  a0 ff ff eb                                      bl #0x5079c0
00507b3c  09 00 54 e3                                      cmp r4, #9
00507b40  f9 ff ff 1a                                      bne #0x507b2c
00507b44  05 00 a0 e1                                      mov r0, r5
00507b48  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00507b4c  7c cf 48 00 88 0a 00 00                          .byte 0x7c, 0xcf, 0x48, 0x00, 0x88, 0x0a, 0x00, 0x00

; FUNCTION 0x00507b54, declared_size=28, range_size=28, mode=arm
; class-group: StringManager
; alias: _ZN13StringManagerD0Ev
; demangled: StringManager::~StringManager()
; decoder-mode: arm
00507b54  10 40 2d e9                                      push {r4, lr}
00507b58  00 40 a0 e1                                      mov r4, r0
00507b5c  e9 ff ff eb                                      bl #0x507b08
00507b60  04 00 a0 e1                                      mov r0, r4
00507b64  35 22 f8 eb                                      bl #0x310440
00507b68  04 00 a0 e1                                      mov r0, r4
00507b6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00507b70, declared_size=76, range_size=76, mode=arm
; class-group: StringManager
; alias: _ZN13StringManagerD2Ev
; demangled: StringManager::~StringManager()
; decoder-mode: arm
00507b70  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00507b74  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00507b78  70 40 2d e9                                      push {r4, r5, r6, lr}
00507b7c  03 30 8f e0                                      add r3, pc, r3
00507b80  02 20 93 e7                                      ldr r2, [r3, r2]
00507b84  00 50 a0 e1                                      mov r5, r0
00507b88  00 40 a0 e3                                      mov r4, #0
00507b8c  08 20 82 e2                                      add r2, r2, #8
00507b90  00 20 80 e5                                      str r2, [r0]
00507b94  04 10 a0 e1                                      mov r1, r4
00507b98  05 00 a0 e1                                      mov r0, r5
00507b9c  01 40 84 e2                                      add r4, r4, #1
00507ba0  86 ff ff eb                                      bl #0x5079c0
00507ba4  09 00 54 e3                                      cmp r4, #9
00507ba8  f9 ff ff 1a                                      bne #0x507b94
00507bac  05 00 a0 e1                                      mov r0, r5
00507bb0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00507bb4  14 cf 48 00 88 0a 00 00                          .byte 0x14, 0xcf, 0x48, 0x00, 0x88, 0x0a, 0x00, 0x00

; FUNCTION 0x00507bbc, declared_size=80, range_size=80, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager16getSheetFilenameEjjPci
; demangled: StringManager::getSheetFilename(unsigned int, unsigned int, char*, int) const
; decoder-mode: arm
00507bbc  3c c0 9f e5                                      ldr ip, [pc, #0x3c]
00507bc0  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00507bc4  04 40 2d e5                                      str r4, [sp, #-4]!
00507bc8  0c c0 8f e0                                      add ip, pc, ip
00507bcc  00 00 9c e7                                      ldr r0, [ip, r0]
00507bd0  14 c0 a0 e3                                      mov ip, #0x14
00507bd4  00 40 90 e5                                      ldr r4, [r0]
00507bd8  03 00 a0 e1                                      mov r0, r3
00507bdc  0c 30 a0 e3                                      mov r3, #0xc
00507be0  93 41 24 e0                                      mla r4, r3, r1, r4
00507be4  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00507be8  08 30 94 e5                                      ldr r3, [r4, #8]
00507bec  01 10 8f e0                                      add r1, pc, r1
00507bf0  9c 32 23 e0                                      mla r3, ip, r2, r3
00507bf4  08 20 93 e5                                      ldr r2, [r3, #8]
00507bf8  10 00 bd e8                                      ldm sp!, {r4}
00507bfc  b8 1b f8 ea                                      b #0x30eae4
; mapping-symbol data/literal pool
00507c00  c8 ce 48 00 90 3f 00 00 fc 3f 3d 00              .byte 0xc8, 0xce, 0x48, 0x00, 0x90, 0x3f, 0x00, 0x00, 0xfc, 0x3f, 0x3d, 0x00

; FUNCTION 0x00507c0c, declared_size=260, range_size=260, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager14formatForMultiESsb
; demangled: StringManager::formatForMulti(std::basic_string<char, std::char_traits<char>, std::allocator<char> >, bool)
; decoder-mode: arm
00507c0c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00507c10  e4 40 9f e5                                      ldr r4, [pc, #0xe4]
00507c14  e4 60 9f e5                                      ldr r6, [pc, #0xe4]
00507c18  14 c0 92 e5                                      ldr ip, [r2, #0x14]
00507c1c  04 40 8f e0                                      add r4, pc, r4
00507c20  06 e0 94 e7                                      ldr lr, [r4, r6]
00507c24  02 10 a0 e1                                      mov r1, r2
00507c28  10 20 92 e5                                      ldr r2, [r2, #0x10]
00507c2c  00 e0 9e e5                                      ldr lr, [lr]
00507c30  54 d0 4d e2                                      sub sp, sp, #0x54
00507c34  0c 20 52 e0                                      subs r2, r2, ip
00507c38  00 50 a0 e1                                      mov r5, r0
00507c3c  4c e0 8d e5                                      str lr, [sp, #0x4c]
00507c40  0a 00 00 0a                                      beq #0x507c70
00507c44  00 00 dc e5                                      ldrb r0, [ip]
00507c48  df 00 50 e3                                      cmp r0, #0xdf
00507c4c  00 00 a0 93                                      movls r0, #0
00507c50  03 00 00 9a                                      bls #0x507c64
00507c54  13 00 00 ea                                      b #0x507ca8
00507c58  00 e0 dc e7                                      ldrb lr, [ip, r0]
00507c5c  df 00 5e e3                                      cmp lr, #0xdf
00507c60  10 00 00 8a                                      bhi #0x507ca8
00507c64  01 00 80 e2                                      add r0, r0, #1
00507c68  02 00 50 e1                                      cmp r0, r2
00507c6c  f9 ff ff 1a                                      bne #0x507c58
00507c70  10 50 85 e5                                      str r5, [r5, #0x10]
00507c74  14 50 85 e5                                      str r5, [r5, #0x14]
00507c78  10 20 91 e5                                      ldr r2, [r1, #0x10]
00507c7c  05 00 a0 e1                                      mov r0, r5
00507c80  14 10 91 e5                                      ldr r1, [r1, #0x14]
00507c84  97 26 f8 eb                                      bl #0x3116e8
00507c88  06 30 94 e7                                      ldr r3, [r4, r6]
00507c8c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00507c90  05 00 a0 e1                                      mov r0, r5
00507c94  00 30 93 e5                                      ldr r3, [r3]
00507c98  03 00 52 e1                                      cmp r2, r3
00507c9c  15 00 00 1a                                      bne #0x507cf8
00507ca0  54 d0 8d e2                                      add sp, sp, #0x54
00507ca4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00507ca8  00 00 53 e3                                      cmp r3, #0
00507cac  0e 00 00 1a                                      bne #0x507cec
00507cb0  4c e0 9f e5                                      ldr lr, [pc, #0x4c]
00507cb4  0e e0 8f e0                                      add lr, pc, lr
00507cb8  48 10 9f e5                                      ldr r1, [pc, #0x48]
00507cbc  10 70 8d e2                                      add r7, sp, #0x10
00507cc0  0e 20 a0 e1                                      mov r2, lr
00507cc4  01 10 8f e0                                      add r1, pc, r1
00507cc8  0c 30 a0 e1                                      mov r3, ip
00507ccc  07 00 a0 e1                                      mov r0, r7
00507cd0  00 e0 8d e5                                      str lr, [sp]
00507cd4  82 1b f8 eb                                      bl #0x30eae4
00507cd8  05 00 a0 e1                                      mov r0, r5
00507cdc  07 10 a0 e1                                      mov r1, r7
00507ce0  0c 20 8d e2                                      add r2, sp, #0xc
00507ce4  00 31 f8 eb                                      bl #0x3140ec
00507ce8  e6 ff ff ea                                      b #0x507c88
00507cec  18 e0 9f e5                                      ldr lr, [pc, #0x18]
00507cf0  0e e0 8f e0                                      add lr, pc, lr
00507cf4  ef ff ff ea                                      b #0x507cb8
00507cf8  84 19 f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00507cfc  74 ce 48 00 ac 40 00 00 54 3b 3c 00 2c 3f 3d 00  .byte 0x74, 0xce, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x3b, 0x3c, 0x00, 0x2c, 0x3f, 0x3d, 0x00
00507d0c  00 3d 3c 00                                      .byte 0x00, 0x3d, 0x3c, 0x00

; FUNCTION 0x00507d10, declared_size=92, range_size=92, mode=arm
; class-group: StringManager
; alias: _ZN13StringManagerC1Ev
; demangled: StringManager::StringManager()
; decoder-mode: arm
00507d10  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00507d14  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00507d18  00 10 e0 e3                                      mvn r1, #0
00507d1c  03 30 8f e0                                      add r3, pc, r3
00507d20  02 20 93 e7                                      ldr r2, [r3, r2]
00507d24  10 40 2d e9                                      push {r4, lr}
00507d28  08 20 82 e2                                      add r2, r2, #8
00507d2c  00 40 a0 e1                                      mov r4, r0
00507d30  04 10 80 e5                                      str r1, [r0, #4]
00507d34  00 20 80 e5                                      str r2, [r0]
00507d38  00 10 a0 e3                                      mov r1, #0
00507d3c  34 25 00 e3                                      movw r2, #0x534
00507d40  08 00 80 e2                                      add r0, r0, #8
00507d44  c5 19 f8 eb                                      bl #0x30e460
00507d48  53 0e 84 e2                                      add r0, r4, #0x530
00507d4c  00 10 a0 e3                                      mov r1, #0
00507d50  9a 22 00 e3                                      movw r2, #0x29a
00507d54  0c 00 80 e2                                      add r0, r0, #0xc
00507d58  c0 19 f8 eb                                      bl #0x30e460
00507d5c  04 00 a0 e1                                      mov r0, r4
00507d60  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00507d64  74 cd 48 00 88 0a 00 00                          .byte 0x74, 0xcd, 0x48, 0x00, 0x88, 0x0a, 0x00, 0x00

; FUNCTION 0x00507d6c, declared_size=92, range_size=92, mode=arm
; class-group: StringManager
; alias: _ZN13StringManagerC2Ev
; demangled: StringManager::StringManager()
; decoder-mode: arm
00507d6c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00507d70  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
00507d74  00 10 e0 e3                                      mvn r1, #0
00507d78  03 30 8f e0                                      add r3, pc, r3
00507d7c  02 20 93 e7                                      ldr r2, [r3, r2]
00507d80  10 40 2d e9                                      push {r4, lr}
00507d84  08 20 82 e2                                      add r2, r2, #8
00507d88  00 40 a0 e1                                      mov r4, r0
00507d8c  04 10 80 e5                                      str r1, [r0, #4]
00507d90  00 20 80 e5                                      str r2, [r0]
00507d94  00 10 a0 e3                                      mov r1, #0
00507d98  34 25 00 e3                                      movw r2, #0x534
00507d9c  08 00 80 e2                                      add r0, r0, #8
00507da0  ae 19 f8 eb                                      bl #0x30e460
00507da4  53 0e 84 e2                                      add r0, r4, #0x530
00507da8  00 10 a0 e3                                      mov r1, #0
00507dac  9a 22 00 e3                                      movw r2, #0x29a
00507db0  0c 00 80 e2                                      add r0, r0, #0xc
00507db4  a9 19 f8 eb                                      bl #0x30e460
00507db8  04 00 a0 e1                                      mov r0, r4
00507dbc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00507dc0  18 cd 48 00 88 0a 00 00                          .byte 0x18, 0xcd, 0x48, 0x00, 0x88, 0x0a, 0x00, 0x00

; FUNCTION 0x00507ea4, declared_size=1656, range_size=1656, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager11parseColorsERSsPKc
; demangled: StringManager::parseColors(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&, char const*)
; decoder-mode: arm
00507ea4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00507ea8  d8 65 9f e5                                      ldr r6, [pc, #0x5d8]
00507eac  d8 95 9f e5                                      ldr sb, [pc, #0x5d8]
00507eb0  44 d0 4d e2                                      sub sp, sp, #0x44
00507eb4  06 60 8f e0                                      add r6, pc, r6
00507eb8  09 30 96 e7                                      ldr r3, [r6, sb]
00507ebc  00 00 52 e3                                      cmp r2, #0
00507ec0  00 b0 a0 e1                                      mov fp, r0
00507ec4  00 30 93 e5                                      ldr r3, [r3]
00507ec8  01 70 a0 e1                                      mov r7, r1
00507ecc  3c 30 8d e5                                      str r3, [sp, #0x3c]
00507ed0  7e 00 00 0a                                      beq #0x5080d0
00507ed4  00 10 d2 e5                                      ldrb r1, [r2]
00507ed8  00 00 51 e3                                      cmp r1, #0
00507edc  7b 00 00 0a                                      beq #0x5080d0
00507ee0  a8 35 9f e5                                      ldr r3, [pc, #0x5a8]
00507ee4  00 80 a0 e3                                      mov r8, #0
00507ee8  01 40 82 e2                                      add r4, r2, #1
00507eec  03 30 8f e0                                      add r3, pc, r3
00507ef0  04 30 8d e5                                      str r3, [sp, #4]
00507ef4  98 35 9f e5                                      ldr r3, [pc, #0x598]
00507ef8  08 50 a0 e1                                      mov r5, r8
00507efc  03 30 8f e0                                      add r3, pc, r3
00507f00  0c 30 8d e5                                      str r3, [sp, #0xc]
00507f04  8c 35 9f e5                                      ldr r3, [pc, #0x58c]
00507f08  03 30 8f e0                                      add r3, pc, r3
00507f0c  10 30 8d e5                                      str r3, [sp, #0x10]
00507f10  84 35 9f e5                                      ldr r3, [pc, #0x584]
00507f14  03 30 8f e0                                      add r3, pc, r3
00507f18  14 30 8d e5                                      str r3, [sp, #0x14]
00507f1c  04 30 9d e5                                      ldr r3, [sp, #4]
00507f20  01 30 83 e2                                      add r3, r3, #1
00507f24  08 30 8d e5                                      str r3, [sp, #8]
00507f28  0c 00 00 ea                                      b #0x507f60
00507f2c  71 10 af e6                                      sxtb r1, r1
00507f30  5e 00 51 e3                                      cmp r1, #0x5e
00507f34  01 50 a0 03                                      moveq r5, #1
00507f38  05 00 00 0a                                      beq #0x507f54
00507f3c  7c 00 51 e3                                      cmp r1, #0x7c
00507f40  8d 00 00 0a                                      beq #0x50817c
00507f44  0a 10 a0 e1                                      mov r1, sl
00507f48  07 00 a0 e1                                      mov r0, r7
00507f4c  04 20 a0 e1                                      mov r2, r4
00507f50  2b 22 f8 eb                                      bl #0x310804
00507f54  01 10 d4 e4                                      ldrb r1, [r4], #1
00507f58  00 00 51 e3                                      cmp r1, #0
00507f5c  64 00 00 0a                                      beq #0x5080f4
00507f60  00 00 55 e3                                      cmp r5, #0
00507f64  01 a0 44 e2                                      sub sl, r4, #1
00507f68  ef ff ff 0a                                      beq #0x507f2c
00507f6c  71 10 af e6                                      sxtb r1, r1
00507f70  23 10 41 e2                                      sub r1, r1, #0x23
00507f74  53 00 51 e3                                      cmp r1, #0x53
00507f78  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
00507f7c  7c 00 00 ea                                      b #0x508174
00507f80  74 00 00 ea                                      b #0x508158
00507f84  7a 00 00 ea                                      b #0x508174
00507f88  79 00 00 ea                                      b #0x508174
00507f8c  78 00 00 ea                                      b #0x508174
00507f90  77 00 00 ea                                      b #0x508174
00507f94  76 00 00 ea                                      b #0x508174
00507f98  75 00 00 ea                                      b #0x508174
00507f9c  6d 00 00 ea                                      b #0x508158
00507fa0  73 00 00 ea                                      b #0x508174
00507fa4  72 00 00 ea                                      b #0x508174
00507fa8  71 00 00 ea                                      b #0x508174
00507fac  70 00 00 ea                                      b #0x508174
00507fb0  6f 00 00 ea                                      b #0x508174
00507fb4  7f 00 00 ea                                      b #0x5081b8
00507fb8  f1 00 00 ea                                      b #0x508384
00507fbc  00 01 00 ea                                      b #0x5083c4
00507fc0  0f 01 00 ea                                      b #0x508404
00507fc4  1e 01 00 ea                                      b #0x508444
00507fc8  92 00 00 ea                                      b #0x508218
00507fcc  a1 00 00 ea                                      b #0x508258
00507fd0  b0 00 00 ea                                      b #0x508298
00507fd4  bf 00 00 ea                                      b #0x5082d8
00507fd8  ce 00 00 ea                                      b #0x508318
00507fdc  64 00 00 ea                                      b #0x508174
00507fe0  63 00 00 ea                                      b #0x508174
00507fe4  62 00 00 ea                                      b #0x508174
00507fe8  61 00 00 ea                                      b #0x508174
00507fec  60 00 00 ea                                      b #0x508174
00507ff0  5f 00 00 ea                                      b #0x508174
00507ff4  5e 00 00 ea                                      b #0x508174
00507ff8  5d 00 00 ea                                      b #0x508174
00507ffc  5c 00 00 ea                                      b #0x508174
00508000  5b 00 00 ea                                      b #0x508174
00508004  5a 00 00 ea                                      b #0x508174
00508008  59 00 00 ea                                      b #0x508174
0050800c  58 00 00 ea                                      b #0x508174
00508010  57 00 00 ea                                      b #0x508174
00508014  56 00 00 ea                                      b #0x508174
00508018  55 00 00 ea                                      b #0x508174
0050801c  54 00 00 ea                                      b #0x508174
00508020  53 00 00 ea                                      b #0x508174
00508024  52 00 00 ea                                      b #0x508174
00508028  51 00 00 ea                                      b #0x508174
0050802c  50 00 00 ea                                      b #0x508174
00508030  4f 00 00 ea                                      b #0x508174
00508034  4e 00 00 ea                                      b #0x508174
00508038  4d 00 00 ea                                      b #0x508174
0050803c  4c 00 00 ea                                      b #0x508174
00508040  4b 00 00 ea                                      b #0x508174
00508044  4a 00 00 ea                                      b #0x508174
00508048  49 00 00 ea                                      b #0x508174
0050804c  48 00 00 ea                                      b #0x508174
00508050  47 00 00 ea                                      b #0x508174
00508054  46 00 00 ea                                      b #0x508174
00508058  45 00 00 ea                                      b #0x508174
0050805c  44 00 00 ea                                      b #0x508174
00508060  43 00 00 ea                                      b #0x508174
00508064  42 00 00 ea                                      b #0x508174
00508068  41 00 00 ea                                      b #0x508174
0050806c  39 00 00 ea                                      b #0x508158
00508070  3f 00 00 ea                                      b #0x508174
00508074  3e 00 00 ea                                      b #0x508174
00508078  3d 00 00 ea                                      b #0x508174
0050807c  3c 00 00 ea                                      b #0x508174
00508080  3b 00 00 ea                                      b #0x508174
00508084  33 00 00 ea                                      b #0x508158
00508088  39 00 00 ea                                      b #0x508174
0050808c  31 00 00 ea                                      b #0x508158
00508090  30 00 00 ea                                      b #0x508158
00508094  2f 00 00 ea                                      b #0x508158
00508098  2e 00 00 ea                                      b #0x508158
0050809c  34 00 00 ea                                      b #0x508174
005080a0  2c 00 00 ea                                      b #0x508158
005080a4  32 00 00 ea                                      b #0x508174
005080a8  31 00 00 ea                                      b #0x508174
005080ac  a8 00 00 ea                                      b #0x508354
005080b0  2f 00 00 ea                                      b #0x508174
005080b4  27 00 00 ea                                      b #0x508158
005080b8  2d 00 00 ea                                      b #0x508174
005080bc  aa 00 00 ea                                      b #0x50836c
005080c0  24 00 00 ea                                      b #0x508158
005080c4  23 00 00 ea                                      b #0x508158
005080c8  29 00 00 ea                                      b #0x508174
005080cc  21 00 00 ea                                      b #0x508158
005080d0  00 80 a0 e3                                      mov r8, #0
005080d4  09 30 96 e7                                      ldr r3, [r6, sb]
005080d8  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
005080dc  08 00 a0 e1                                      mov r0, r8
005080e0  00 30 93 e5                                      ldr r3, [r3]
005080e4  03 00 52 e1                                      cmp r2, r3
005080e8  e5 00 00 1a                                      bne #0x508484
005080ec  44 d0 8d e2                                      add sp, sp, #0x44
005080f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005080f4  14 30 97 e5                                      ldr r3, [r7, #0x14]
005080f8  10 00 97 e5                                      ldr r0, [r7, #0x10]
005080fc  00 00 63 e0                                      rsb r0, r3, r0
00508100  80 00 80 e2                                      add r0, r0, #0x80
00508104  18 21 f8 eb                                      bl #0x31056c
00508108  00 40 a0 e1                                      mov r4, r0
0050810c  0b 00 a0 e1                                      mov r0, fp
00508110  14 50 97 e5                                      ldr r5, [r7, #0x14]
00508114  fc fc ff eb                                      bl #0x50750c
00508118  04 10 a0 e1                                      mov r1, r4
0050811c  00 30 a0 e1                                      mov r3, r0
00508120  00 20 e0 e3                                      mvn r2, #0
00508124  05 00 a0 e1                                      mov r0, r5
00508128  3a 2a 09 eb                                      bl #0x752a18
0050812c  04 00 a0 e1                                      mov r0, r4
00508130  47 17 f8 eb                                      bl #0x30de54
00508134  04 10 a0 e1                                      mov r1, r4
00508138  00 20 84 e0                                      add r2, r4, r0
0050813c  07 00 a0 e1                                      mov r0, r7
00508140  26 22 f8 eb                                      bl #0x3109e0
00508144  00 00 54 e3                                      cmp r4, #0
00508148  e1 ff ff 0a                                      beq #0x5080d4
0050814c  04 00 a0 e1                                      mov r0, r4
00508150  ba 20 f8 eb                                      bl #0x310440
00508154  de ff ff ea                                      b #0x5080d4
00508158  06 00 9d e9                                      ldmib sp, {r1, r2}
0050815c  07 00 a0 e1                                      mov r0, r7
00508160  a7 21 f8 eb                                      bl #0x310804
00508164  07 00 a0 e1                                      mov r0, r7
00508168  0a 10 a0 e1                                      mov r1, sl
0050816c  04 20 a0 e1                                      mov r2, r4
00508170  a3 21 f8 eb                                      bl #0x310804
00508174  00 50 a0 e3                                      mov r5, #0
00508178  75 ff ff ea                                      b #0x507f54
0050817c  1c 23 9f e5                                      ldr r2, [pc, #0x31c]
00508180  1c 80 8d e2                                      add r8, sp, #0x1c
00508184  20 10 a0 e3                                      mov r1, #0x20
00508188  02 20 8f e0                                      add r2, pc, r2
0050818c  11 30 a0 e3                                      mov r3, #0x11
00508190  08 00 a0 e1                                      mov r0, r8
00508194  2a 18 f8 eb                                      bl #0x30e244
00508198  08 00 a0 e1                                      mov r0, r8
0050819c  2c 17 f8 eb                                      bl #0x30de54
005081a0  08 10 a0 e1                                      mov r1, r8
005081a4  00 20 88 e0                                      add r2, r8, r0
005081a8  07 00 a0 e1                                      mov r0, r7
005081ac  94 21 f8 eb                                      bl #0x310804
005081b0  01 80 a0 e3                                      mov r8, #1
005081b4  66 ff ff ea                                      b #0x507f54
005081b8  e4 32 9f e5                                      ldr r3, [pc, #0x2e4]
005081bc  e4 12 9f e5                                      ldr r1, [pc, #0x2e4]
005081c0  e4 22 9f e5                                      ldr r2, [pc, #0x2e4]
005081c4  03 30 96 e7                                      ldr r3, [r6, r3]
005081c8  01 10 8f e0                                      add r1, pc, r1
005081cc  02 20 8f e0                                      add r2, pc, r2
005081d0  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
005081d4  80 f2 fe eb                                      bl #0x4c4bdc
005081d8  d0 22 9f e5                                      ldr r2, [pc, #0x2d0]
005081dc  1c 50 8d e2                                      add r5, sp, #0x1c
005081e0  ff 34 c0 e3                                      bic r3, r0, #0xff000000
005081e4  02 20 8f e0                                      add r2, pc, r2
005081e8  20 10 a0 e3                                      mov r1, #0x20
005081ec  05 00 a0 e1                                      mov r0, r5
005081f0  13 18 f8 eb                                      bl #0x30e244
005081f4  05 00 a0 e1                                      mov r0, r5
005081f8  15 17 f8 eb                                      bl #0x30de54
005081fc  05 10 a0 e1                                      mov r1, r5
00508200  00 20 85 e0                                      add r2, r5, r0
00508204  07 00 a0 e1                                      mov r0, r7
00508208  7d 21 f8 eb                                      bl #0x310804
0050820c  01 80 a0 e3                                      mov r8, #1
00508210  00 50 a0 e3                                      mov r5, #0
00508214  4e ff ff ea                                      b #0x507f54
00508218  84 32 9f e5                                      ldr r3, [pc, #0x284]
0050821c  90 12 9f e5                                      ldr r1, [pc, #0x290]
00508220  90 22 9f e5                                      ldr r2, [pc, #0x290]
00508224  03 30 96 e7                                      ldr r3, [r6, r3]
00508228  01 10 8f e0                                      add r1, pc, r1
0050822c  02 20 8f e0                                      add r2, pc, r2
00508230  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00508234  68 f2 fe eb                                      bl #0x4c4bdc
00508238  7c 22 9f e5                                      ldr r2, [pc, #0x27c]
0050823c  1c 50 8d e2                                      add r5, sp, #0x1c
00508240  ff 34 c0 e3                                      bic r3, r0, #0xff000000
00508244  02 20 8f e0                                      add r2, pc, r2
00508248  20 10 a0 e3                                      mov r1, #0x20
0050824c  05 00 a0 e1                                      mov r0, r5
00508250  fb 17 f8 eb                                      bl #0x30e244
00508254  e6 ff ff ea                                      b #0x5081f4
00508258  44 32 9f e5                                      ldr r3, [pc, #0x244]
0050825c  5c 12 9f e5                                      ldr r1, [pc, #0x25c]
00508260  5c 22 9f e5                                      ldr r2, [pc, #0x25c]
00508264  03 30 96 e7                                      ldr r3, [r6, r3]
00508268  01 10 8f e0                                      add r1, pc, r1
0050826c  02 20 8f e0                                      add r2, pc, r2
00508270  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00508274  58 f2 fe eb                                      bl #0x4c4bdc
00508278  48 22 9f e5                                      ldr r2, [pc, #0x248]
0050827c  1c 50 8d e2                                      add r5, sp, #0x1c
00508280  ff 34 c0 e3                                      bic r3, r0, #0xff000000
00508284  02 20 8f e0                                      add r2, pc, r2
00508288  20 10 a0 e3                                      mov r1, #0x20
0050828c  05 00 a0 e1                                      mov r0, r5
00508290  eb 17 f8 eb                                      bl #0x30e244
00508294  d6 ff ff ea                                      b #0x5081f4
00508298  04 32 9f e5                                      ldr r3, [pc, #0x204]
0050829c  28 12 9f e5                                      ldr r1, [pc, #0x228]
005082a0  28 22 9f e5                                      ldr r2, [pc, #0x228]
005082a4  03 30 96 e7                                      ldr r3, [r6, r3]
005082a8  01 10 8f e0                                      add r1, pc, r1
005082ac  02 20 8f e0                                      add r2, pc, r2
005082b0  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
005082b4  48 f2 fe eb                                      bl #0x4c4bdc
005082b8  14 22 9f e5                                      ldr r2, [pc, #0x214]
005082bc  1c 50 8d e2                                      add r5, sp, #0x1c
005082c0  ff 34 c0 e3                                      bic r3, r0, #0xff000000
005082c4  02 20 8f e0                                      add r2, pc, r2
005082c8  20 10 a0 e3                                      mov r1, #0x20
005082cc  05 00 a0 e1                                      mov r0, r5
005082d0  db 17 f8 eb                                      bl #0x30e244
005082d4  c6 ff ff ea                                      b #0x5081f4
005082d8  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
005082dc  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
005082e0  f4 21 9f e5                                      ldr r2, [pc, #0x1f4]
005082e4  03 30 96 e7                                      ldr r3, [r6, r3]
005082e8  01 10 8f e0                                      add r1, pc, r1
005082ec  02 20 8f e0                                      add r2, pc, r2
005082f0  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
005082f4  38 f2 fe eb                                      bl #0x4c4bdc
005082f8  e0 21 9f e5                                      ldr r2, [pc, #0x1e0]
005082fc  1c 50 8d e2                                      add r5, sp, #0x1c
00508300  ff 34 c0 e3                                      bic r3, r0, #0xff000000
00508304  02 20 8f e0                                      add r2, pc, r2
00508308  20 10 a0 e3                                      mov r1, #0x20
0050830c  05 00 a0 e1                                      mov r0, r5
00508310  cb 17 f8 eb                                      bl #0x30e244
00508314  b6 ff ff ea                                      b #0x5081f4
00508318  84 31 9f e5                                      ldr r3, [pc, #0x184]
0050831c  c0 21 9f e5                                      ldr r2, [pc, #0x1c0]
00508320  14 10 9d e5                                      ldr r1, [sp, #0x14]
00508324  03 30 96 e7                                      ldr r3, [r6, r3]
00508328  02 20 8f e0                                      add r2, pc, r2
0050832c  1c 50 8d e2                                      add r5, sp, #0x1c
00508330  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00508334  28 f2 fe eb                                      bl #0x4c4bdc
00508338  a8 21 9f e5                                      ldr r2, [pc, #0x1a8]
0050833c  ff 34 c0 e3                                      bic r3, r0, #0xff000000
00508340  20 10 a0 e3                                      mov r1, #0x20
00508344  02 20 8f e0                                      add r2, pc, r2
00508348  05 00 a0 e1                                      mov r0, r5
0050834c  bc 17 f8 eb                                      bl #0x30e244
00508350  a7 ff ff ea                                      b #0x5081f4
00508354  1c 50 8d e2                                      add r5, sp, #0x1c
00508358  20 10 a0 e3                                      mov r1, #0x20
0050835c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00508360  05 00 a0 e1                                      mov r0, r5
00508364  b6 17 f8 eb                                      bl #0x30e244
00508368  a1 ff ff ea                                      b #0x5081f4
0050836c  1c 50 8d e2                                      add r5, sp, #0x1c
00508370  20 10 a0 e3                                      mov r1, #0x20
00508374  10 20 9d e5                                      ldr r2, [sp, #0x10]
00508378  05 00 a0 e1                                      mov r0, r5
0050837c  b0 17 f8 eb                                      bl #0x30e244
00508380  9b ff ff ea                                      b #0x5081f4
00508384  18 31 9f e5                                      ldr r3, [pc, #0x118]
00508388  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
0050838c  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
00508390  03 30 96 e7                                      ldr r3, [r6, r3]
00508394  01 10 8f e0                                      add r1, pc, r1
00508398  02 20 8f e0                                      add r2, pc, r2
0050839c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
005083a0  0d f2 fe eb                                      bl #0x4c4bdc
005083a4  48 21 9f e5                                      ldr r2, [pc, #0x148]
005083a8  1c 50 8d e2                                      add r5, sp, #0x1c
005083ac  ff 34 c0 e3                                      bic r3, r0, #0xff000000
005083b0  02 20 8f e0                                      add r2, pc, r2
005083b4  20 10 a0 e3                                      mov r1, #0x20
005083b8  05 00 a0 e1                                      mov r0, r5
005083bc  a0 17 f8 eb                                      bl #0x30e244
005083c0  8b ff ff ea                                      b #0x5081f4
005083c4  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
005083c8  28 11 9f e5                                      ldr r1, [pc, #0x128]
005083cc  28 21 9f e5                                      ldr r2, [pc, #0x128]
005083d0  03 30 96 e7                                      ldr r3, [r6, r3]
005083d4  01 10 8f e0                                      add r1, pc, r1
005083d8  02 20 8f e0                                      add r2, pc, r2
005083dc  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
005083e0  fd f1 fe eb                                      bl #0x4c4bdc
005083e4  14 21 9f e5                                      ldr r2, [pc, #0x114]
005083e8  1c 50 8d e2                                      add r5, sp, #0x1c
005083ec  ff 34 c0 e3                                      bic r3, r0, #0xff000000
005083f0  02 20 8f e0                                      add r2, pc, r2
005083f4  20 10 a0 e3                                      mov r1, #0x20
005083f8  05 00 a0 e1                                      mov r0, r5
005083fc  90 17 f8 eb                                      bl #0x30e244
00508400  7b ff ff ea                                      b #0x5081f4
00508404  98 30 9f e5                                      ldr r3, [pc, #0x98]
00508408  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
0050840c  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
00508410  03 30 96 e7                                      ldr r3, [r6, r3]
00508414  01 10 8f e0                                      add r1, pc, r1
00508418  02 20 8f e0                                      add r2, pc, r2
0050841c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00508420  ed f1 fe eb                                      bl #0x4c4bdc
00508424  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
00508428  1c 50 8d e2                                      add r5, sp, #0x1c
0050842c  ff 34 c0 e3                                      bic r3, r0, #0xff000000
00508430  02 20 8f e0                                      add r2, pc, r2
00508434  20 10 a0 e3                                      mov r1, #0x20
00508438  05 00 a0 e1                                      mov r0, r5
0050843c  80 17 f8 eb                                      bl #0x30e244
00508440  6b ff ff ea                                      b #0x5081f4
00508444  58 30 9f e5                                      ldr r3, [pc, #0x58]
00508448  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0050844c  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
00508450  03 30 96 e7                                      ldr r3, [r6, r3]
00508454  01 10 8f e0                                      add r1, pc, r1
00508458  02 20 8f e0                                      add r2, pc, r2
0050845c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00508460  dd f1 fe eb                                      bl #0x4c4bdc
00508464  ac 20 9f e5                                      ldr r2, [pc, #0xac]
00508468  1c 50 8d e2                                      add r5, sp, #0x1c
0050846c  ff 34 c0 e3                                      bic r3, r0, #0xff000000
00508470  02 20 8f e0                                      add r2, pc, r2
00508474  20 10 a0 e3                                      mov r1, #0x20
00508478  05 00 a0 e1                                      mov r0, r5
0050847c  70 17 f8 eb                                      bl #0x30e244
00508480  5b ff ff ea                                      b #0x5081f4
00508484  a1 17 f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00508488  dc cb 48 00 ac 40 00 00 74 3d 3d 00 f4 3a 3c 00  .byte 0xdc, 0xcb, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0x74, 0x3d, 0x3d, 0x00, 0xf4, 0x3a, 0x3c, 0x00
00508498  40 e4 3b 00 04 11 3c 00 90 3a 3d 00 f4 37 00 00  .byte 0x40, 0xe4, 0x3b, 0x00, 0x04, 0x11, 0x3c, 0x00, 0x90, 0x3a, 0x3d, 0x00, 0xf4, 0x37, 0x00, 0x00
005084a8  50 0e 3c 00 bc ee 3b 00 3c 3a 3d 00 f0 0d 3c 00  .byte 0x50, 0x0e, 0x3c, 0x00, 0xbc, 0xee, 0x3b, 0x00, 0x3c, 0x3a, 0x3d, 0x00, 0xf0, 0x0d, 0x3c, 0x00
005084b8  0c 3a 3d 00 dc 39 3d 00 b0 0d 3c 00 d4 39 3d 00  .byte 0x0c, 0x3a, 0x3d, 0x00, 0xdc, 0x39, 0x3d, 0x00, 0xb0, 0x0d, 0x3c, 0x00, 0xd4, 0x39, 0x3d, 0x00
005084c8  9c 39 3d 00 70 0d 3c 00 9c 39 3d 00 5c 39 3d 00  .byte 0x9c, 0x39, 0x3d, 0x00, 0x70, 0x0d, 0x3c, 0x00, 0x9c, 0x39, 0x3d, 0x00, 0x5c, 0x39, 0x3d, 0x00
005084d8  30 0d 3c 00 64 39 3d 00 1c 39 3d 00 30 39 3d 00  .byte 0x30, 0x0d, 0x3c, 0x00, 0x64, 0x39, 0x3d, 0x00, 0x1c, 0x39, 0x3d, 0x00, 0x30, 0x39, 0x3d, 0x00
005084e8  dc 38 3d 00 84 0c 3c 00 78 81 3b 00 70 38 3d 00  .byte 0xdc, 0x38, 0x3d, 0x00, 0x84, 0x0c, 0x3c, 0x00, 0x78, 0x81, 0x3b, 0x00, 0x70, 0x38, 0x3d, 0x00
005084f8  44 0c 3c 00 b8 ec 3b 00 30 38 3d 00 04 0c 3c 00  .byte 0x44, 0x0c, 0x3c, 0x00, 0xb8, 0xec, 0x3b, 0x00, 0x30, 0x38, 0x3d, 0x00, 0x04, 0x0c, 0x3c, 0x00
00508508  80 ec 3b 00 f0 37 3d 00 c4 0b 3c 00 48 ec 3b 00  .byte 0x80, 0xec, 0x3b, 0x00, 0xf0, 0x37, 0x3d, 0x00, 0xc4, 0x0b, 0x3c, 0x00, 0x48, 0xec, 0x3b, 0x00
00508518  b0 37 3d 00                                      .byte 0xb0, 0x37, 0x3d, 0x00

; FUNCTION 0x0050851c, declared_size=936, range_size=936, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager16preloadPackSheetEjjb
; demangled: StringManager::preloadPackSheet(unsigned int, unsigned int, bool)
; decoder-mode: arm
0050851c  8c c3 9f e5                                      ldr ip, [pc, #0x38c]
00508520  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00508524  88 e3 9f e5                                      ldr lr, [pc, #0x388]
00508528  0c c0 8f e0                                      add ip, pc, ip
0050852c  03 40 a0 e1                                      mov r4, r3
00508530  0e 30 9c e7                                      ldr r3, [ip, lr]
00508534  d4 d0 4d e2                                      sub sp, sp, #0xd4
00508538  0c c0 8d e5                                      str ip, [sp, #0xc]
0050853c  00 30 93 e5                                      ldr r3, [r3]
00508540  14 e0 8d e5                                      str lr, [sp, #0x14]
00508544  00 90 a0 e1                                      mov sb, r0
00508548  1c 10 8d e5                                      str r1, [sp, #0x1c]
0050854c  20 20 8d e5                                      str r2, [sp, #0x20]
00508550  cc 30 8d e5                                      str r3, [sp, #0xcc]
00508554  43 fc ff eb                                      bl #0x507668
00508558  00 00 50 e3                                      cmp r0, #0
0050855c  0f 00 00 0a                                      beq #0x5085a0
00508560  00 00 54 e3                                      cmp r4, #0
00508564  09 00 00 1a                                      bne #0x508590
00508568  01 00 a0 e3                                      mov r0, #1
0050856c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00508570  14 20 9d e5                                      ldr r2, [sp, #0x14]
00508574  02 10 93 e7                                      ldr r1, [r3, r2]
00508578  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
0050857c  00 30 91 e5                                      ldr r3, [r1]
00508580  03 00 52 e1                                      cmp r2, r3
00508584  c8 00 00 1a                                      bne #0x5088ac
00508588  d4 d0 8d e2                                      add sp, sp, #0xd4
0050858c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00508590  09 00 a0 e1                                      mov r0, sb
00508594  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00508598  20 20 9d e5                                      ldr r2, [sp, #0x20]
0050859c  79 fc ff eb                                      bl #0x507788
005085a0  10 03 9f e5                                      ldr r0, [pc, #0x310]
005085a4  38 40 8d e2                                      add r4, sp, #0x38
005085a8  64 c0 a0 e3                                      mov ip, #0x64
005085ac  24 00 8d e5                                      str r0, [sp, #0x24]
005085b0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005085b4  09 00 a0 e1                                      mov r0, sb
005085b8  20 20 9d e5                                      ldr r2, [sp, #0x20]
005085bc  04 30 a0 e1                                      mov r3, r4
005085c0  00 c0 8d e5                                      str ip, [sp]
005085c4  7c fd ff eb                                      bl #0x507bbc
005085c8  24 10 9d e5                                      ldr r1, [sp, #0x24]
005085cc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005085d0  01 30 92 e7                                      ldr r3, [r2, r1]
005085d4  04 10 a0 e1                                      mov r1, r4
005085d8  10 30 93 e5                                      ldr r3, [r3, #0x10]
005085dc  34 30 93 e5                                      ldr r3, [r3, #0x34]
005085e0  03 00 a0 e1                                      mov r0, r3
005085e4  00 30 93 e5                                      ldr r3, [r3]
005085e8  0f e0 a0 e1                                      mov lr, pc
005085ec  90 f0 93 e5                                      ldr pc, [r3, #0x90]
005085f0  00 30 50 e2                                      subs r3, r0, #0
005085f4  03 00 a0 01                                      moveq r0, r3
005085f8  db ff ff 0a                                      beq #0x50856c
005085fc  32 40 8d e2                                      add r4, sp, #0x32
00508600  04 10 a0 e1                                      mov r1, r4
00508604  2c 30 8d e5                                      str r3, [sp, #0x2c]
00508608  ea fb ff eb                                      bl #0x5075b8
0050860c  01 30 a0 e3                                      mov r3, #1
00508610  00 00 53 e3                                      cmp r3, #0
00508614  28 30 8d e5                                      str r3, [sp, #0x28]
00508618  0f 00 00 1a                                      bne #0x50865c
0050861c  04 30 a0 e1                                      mov r3, r4
00508620  01 40 84 e2                                      add r4, r4, #1
00508624  01 10 d3 e5                                      ldrb r1, [r3, #1]
00508628  01 20 54 e5                                      ldrb r2, [r4, #-1]
0050862c  03 00 54 e1                                      cmp r4, r3
00508630  02 20 21 e0                                      eor r2, r1, r2
00508634  01 20 44 e5                                      strb r2, [r4, #-1]
00508638  01 10 d3 e5                                      ldrb r1, [r3, #1]
0050863c  01 20 22 e0                                      eor r2, r2, r1
00508640  01 20 c3 e5                                      strb r2, [r3, #1]
00508644  01 10 54 e5                                      ldrb r1, [r4, #-1]
00508648  01 30 43 e2                                      sub r3, r3, #1
0050864c  01 20 22 e0                                      eor r2, r2, r1
00508650  01 20 44 e5                                      strb r2, [r4, #-1]
00508654  01 40 84 e2                                      add r4, r4, #1
00508658  f1 ff ff 3a                                      blo #0x508624
0050865c  b2 03 dd e1                                      ldrh r0, [sp, #0x32]
00508660  b4 30 8d e2                                      add r3, sp, #0xb4
00508664  00 10 a0 e3                                      mov r1, #0
00508668  01 00 80 e2                                      add r0, r0, #1
0050866c  00 01 a0 e1                                      lsl r0, r0, #2
00508670  10 30 8d e5                                      str r3, [sp, #0x10]
00508674  bc 1f f8 eb                                      bl #0x31056c
00508678  00 50 a0 e1                                      mov r5, r0
0050867c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00508680  10 10 a0 e3                                      mov r1, #0x10
00508684  00 40 a0 e3                                      mov r4, #0
00508688  c4 00 8d e5                                      str r0, [sp, #0xc4]
0050868c  c8 00 8d e5                                      str r0, [sp, #0xc8]
00508690  f9 23 f8 eb                                      bl #0x31167c
00508694  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
00508698  00 40 c3 e5                                      strb r4, [r3]
0050869c  b2 33 dd e1                                      ldrh r3, [sp, #0x32]
005086a0  04 00 53 e1                                      cmp r3, r4
005086a4  40 00 00 0a                                      beq #0x5087ac
005086a8  30 a0 8d e2                                      add sl, sp, #0x30
005086ac  01 80 a0 e3                                      mov r8, #1
005086b0  08 e0 8a e0                                      add lr, sl, r8
005086b4  18 e0 8d e5                                      str lr, [sp, #0x18]
005086b8  04 70 a0 e1                                      mov r7, r4
005086bc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005086c0  0a 10 a0 e1                                      mov r1, sl
005086c4  bb fb ff eb                                      bl #0x5075b8
005086c8  00 00 58 e3                                      cmp r8, #0
005086cc  28 80 8d e5                                      str r8, [sp, #0x28]
005086d0  0f 00 00 1a                                      bne #0x508714
005086d4  18 30 9d e5                                      ldr r3, [sp, #0x18]
005086d8  0a 20 a0 e1                                      mov r2, sl
005086dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
005086e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
005086e4  02 00 53 e1                                      cmp r3, r2
005086e8  01 10 20 e0                                      eor r1, r0, r1
005086ec  01 10 43 e5                                      strb r1, [r3, #-1]
005086f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005086f4  00 10 21 e0                                      eor r1, r1, r0
005086f8  01 10 c2 e5                                      strb r1, [r2, #1]
005086fc  01 00 53 e5                                      ldrb r0, [r3, #-1]
00508700  01 20 42 e2                                      sub r2, r2, #1
00508704  00 10 21 e0                                      eor r1, r1, r0
00508708  01 10 43 e5                                      strb r1, [r3, #-1]
0050870c  01 30 83 e2                                      add r3, r3, #1
00508710  f1 ff ff 3a                                      blo #0x5086dc
00508714  b0 03 dd e1                                      ldrh r0, [sp, #0x30]
00508718  00 10 a0 e3                                      mov r1, #0
0050871c  04 61 a0 e1                                      lsl r6, r4, #2
00508720  01 00 80 e2                                      add r0, r0, #1
00508724  90 1f f8 eb                                      bl #0x31056c
00508728  04 01 85 e7                                      str r0, [r5, r4, lsl #2]
0050872c  00 10 a0 e1                                      mov r1, r0
00508730  b0 23 dd e1                                      ldrh r2, [sp, #0x30]
00508734  00 30 a0 e3                                      mov r3, #0
00508738  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0050873c  44 3b f8 eb                                      bl #0x317454
00508740  b0 33 dd e1                                      ldrh r3, [sp, #0x30]
00508744  04 21 95 e7                                      ldr r2, [r5, r4, lsl #2]
00508748  5e 10 a0 e3                                      mov r1, #0x5e
0050874c  03 70 c2 e7                                      strb r7, [r2, r3]
00508750  04 b1 95 e7                                      ldr fp, [r5, r4, lsl #2]
00508754  0b 00 a0 e1                                      mov r0, fp
00508758  32 19 f8 eb                                      bl #0x30ec28
0050875c  00 00 50 e3                                      cmp r0, #0
00508760  4b 00 00 0a                                      beq #0x508894
00508764  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
00508768  c4 20 9d e5                                      ldr r2, [sp, #0xc4]
0050876c  09 00 a0 e1                                      mov r0, sb
00508770  02 00 53 e1                                      cmp r3, r2
00508774  00 70 c3 15                                      strbne r7, [r3]
00508778  c8 30 9d 15                                      ldrne r3, [sp, #0xc8]
0050877c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00508780  c4 30 8d 15                                      strne r3, [sp, #0xc4]
00508784  06 b0 95 17                                      ldrne fp, [r5, r6]
00508788  0b 20 a0 e1                                      mov r2, fp
0050878c  c4 fd ff eb                                      bl #0x507ea4
00508790  00 00 50 e3                                      cmp r0, #0
00508794  2d 00 00 1a                                      bne #0x508850
00508798  b2 33 dd e1                                      ldrh r3, [sp, #0x32]
0050879c  01 40 84 e2                                      add r4, r4, #1
005087a0  74 40 ff e6                                      uxth r4, r4
005087a4  04 00 53 e1                                      cmp r3, r4
005087a8  c3 ff ff 8a                                      bhi #0x5086bc
005087ac  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005087b0  20 10 9d e5                                      ldr r1, [sp, #0x20]
005087b4  25 20 a0 e3                                      mov r2, #0x25
005087b8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005087bc  92 10 22 e0                                      mla r2, r2, r0, r1
005087c0  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
005087c4  00 00 a0 e3                                      mov r0, #0
005087c8  03 01 85 e7                                      str r0, [r5, r3, lsl #2]
005087cc  01 40 9c e7                                      ldr r4, [ip, r1]
005087d0  a7 1f 82 e2                                      add r1, r2, #0x29c
005087d4  02 20 82 e2                                      add r2, r2, #2
005087d8  02 51 89 e7                                      str r5, [sb, r2, lsl #2]
005087dc  b2 e3 dd e1                                      ldrh lr, [sp, #0x32]
005087e0  81 30 89 e0                                      add r3, sb, r1, lsl #1
005087e4  04 00 a0 e1                                      mov r0, r4
005087e8  b4 e0 c3 e1                                      strh lr, [r3, #4]
005087ec  25 bc f8 eb                                      bl #0x337888
005087f0  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
005087f4  9c 50 8d e2                                      add r5, sp, #0x9c
005087f8  34 20 8d e2                                      add r2, sp, #0x34
005087fc  01 10 8f e0                                      add r1, pc, r1
00508800  05 00 a0 e1                                      mov r0, r5
00508804  38 2e f8 eb                                      bl #0x3140ec
00508808  05 10 a0 e1                                      mov r1, r5
0050880c  04 00 a0 e1                                      mov r0, r4
00508810  9c bc f8 eb                                      bl #0x337a88
00508814  05 00 a0 e1                                      mov r0, r5
00508818  63 2c f8 eb                                      bl #0x3139ac
0050881c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00508820  24 00 9d e5                                      ldr r0, [sp, #0x24]
00508824  00 30 91 e7                                      ldr r3, [r1, r0]
00508828  2c 10 8d e2                                      add r1, sp, #0x2c
0050882c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00508830  34 30 93 e5                                      ldr r3, [r3, #0x34]
00508834  03 00 a0 e1                                      mov r0, r3
00508838  00 30 93 e5                                      ldr r3, [r3]
0050883c  0f e0 a0 e1                                      mov lr, pc
00508840  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00508844  10 00 9d e5                                      ldr r0, [sp, #0x10]
00508848  57 2c f8 eb                                      bl #0x3139ac
0050884c  45 ff ff ea                                      b #0x508568
00508850  06 00 95 e7                                      ldr r0, [r5, r6]
00508854  f9 1e f8 eb                                      bl #0x310440
00508858  c4 20 9d e5                                      ldr r2, [sp, #0xc4]
0050885c  c8 30 9d e5                                      ldr r3, [sp, #0xc8]
00508860  00 10 a0 e3                                      mov r1, #0
00508864  02 30 63 e0                                      rsb r3, r3, r2
00508868  73 30 ff e6                                      uxth r3, r3
0050886c  01 00 83 e2                                      add r0, r3, #1
00508870  b0 33 cd e1                                      strh r3, [sp, #0x30]
00508874  3c 1f f8 eb                                      bl #0x31056c
00508878  06 00 85 e7                                      str r0, [r5, r6]
0050887c  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
00508880  26 17 f8 eb                                      bl #0x30e520
00508884  06 20 95 e7                                      ldr r2, [r5, r6]
00508888  b0 33 dd e1                                      ldrh r3, [sp, #0x30]
0050888c  03 70 c2 e7                                      strb r7, [r2, r3]
00508890  c0 ff ff ea                                      b #0x508798
00508894  0b 00 a0 e1                                      mov r0, fp
00508898  7c 10 a0 e3                                      mov r1, #0x7c
0050889c  e1 18 f8 eb                                      bl #0x30ec28
005088a0  00 00 50 e3                                      cmp r0, #0
005088a4  ae ff ff 1a                                      bne #0x508764
005088a8  ba ff ff ea                                      b #0x508798
005088ac  97 16 f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005088b0  68 c5 48 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0x68, 0xc5, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
005088c0  6c 34 3d 00                                      .byte 0x6c, 0x34, 0x3d, 0x00

; FUNCTION 0x005088c4, declared_size=936, range_size=936, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager12getStringIdxEiij
; demangled: StringManager::getStringIdx(int, int, unsigned int) const
; decoder-mode: arm
005088c4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005088c8  3c 63 9f e5                                      ldr r6, [pc, #0x33c]
005088cc  01 00 73 e3                                      cmn r3, #1
005088d0  03 40 a0 e1                                      mov r4, r3
005088d4  06 60 8f e0                                      add r6, pc, r6
005088d8  0c d0 4d e2                                      sub sp, sp, #0xc
005088dc  00 70 a0 e1                                      mov r7, r0
005088e0  01 50 a0 e1                                      mov r5, r1
005088e4  02 80 a0 e1                                      mov r8, r2
005088e8  00 40 a0 03                                      moveq r4, #0
005088ec  0a 00 00 0a                                      beq #0x50891c
005088f0  08 00 54 e3                                      cmp r4, #8
005088f4  08 00 00 9a                                      bls #0x50891c
005088f8  10 33 9f e5                                      ldr r3, [pc, #0x310]
005088fc  03 30 96 e7                                      ldr r3, [r6, r3]
00508900  00 30 93 e5                                      ldr r3, [r3]
00508904  02 00 53 e3                                      cmp r3, #2
00508908  00 30 a0 03                                      moveq r3, #0
0050890c  00 30 83 05                                      streq r3, [r3]
00508910  01 00 00 0a                                      beq #0x50891c
00508914  01 00 53 e3                                      cmp r3, #1
00508918  93 00 00 0a                                      beq #0x508b6c
0050891c  00 00 55 e3                                      cmp r5, #0
00508920  51 00 00 ba                                      blt #0x508a6c
00508924  24 00 55 e3                                      cmp r5, #0x24
00508928  06 00 00 da                                      ble #0x508948
0050892c  dc 32 9f e5                                      ldr r3, [pc, #0x2dc]
00508930  03 30 96 e7                                      ldr r3, [r6, r3]
00508934  00 30 93 e5                                      ldr r3, [r3]
00508938  02 00 53 e3                                      cmp r3, #2
0050893c  4f 00 00 0a                                      beq #0x508a80
00508940  01 00 53 e3                                      cmp r3, #1
00508944  a3 00 00 0a                                      beq #0x508bd8
00508948  07 00 a0 e1                                      mov r0, r7
0050894c  04 10 a0 e1                                      mov r1, r4
00508950  05 20 a0 e1                                      mov r2, r5
00508954  43 fb ff eb                                      bl #0x507668
00508958  00 30 50 e2                                      subs r3, r0, #0
0050895c  4f 00 00 0a                                      beq #0x508aa0
00508960  25 30 a0 e3                                      mov r3, #0x25
00508964  93 54 23 e0                                      mla r3, r3, r4, r5
00508968  02 30 83 e2                                      add r3, r3, #2
0050896c  03 31 97 e7                                      ldr r3, [r7, r3, lsl #2]
00508970  00 00 53 e3                                      cmp r3, #0
00508974  53 00 00 0a                                      beq #0x508ac8
00508978  25 a0 a0 e3                                      mov sl, #0x25
0050897c  9a 54 2a e0                                      mla sl, sl, r4, r5
00508980  a7 af 8a e2                                      add sl, sl, #0x29c
00508984  8a a0 87 e0                                      add sl, r7, sl, lsl #1
00508988  b4 30 da e1                                      ldrh r3, [sl, #4]
0050898c  00 00 53 e3                                      cmp r3, #0
00508990  07 00 00 1a                                      bne #0x5089b4
00508994  74 22 9f e5                                      ldr r2, [pc, #0x274]
00508998  02 20 96 e7                                      ldr r2, [r6, r2]
0050899c  00 20 92 e5                                      ldr r2, [r2]
005089a0  02 00 52 e3                                      cmp r2, #2
005089a4  00 30 83 05                                      streq r3, [r3]
005089a8  01 00 00 0a                                      beq #0x5089b4
005089ac  01 00 52 e3                                      cmp r2, #1
005089b0  7a 00 00 0a                                      beq #0x508ba0
005089b4  73 30 bf e6                                      sxth r3, r3
005089b8  08 00 53 e1                                      cmp r3, r8
005089bc  1d 00 00 ca                                      bgt #0x508a38
005089c0  48 32 9f e5                                      ldr r3, [pc, #0x248]
005089c4  03 30 96 e7                                      ldr r3, [r6, r3]
005089c8  00 30 93 e5                                      ldr r3, [r3]
005089cc  02 00 53 e3                                      cmp r3, #2
005089d0  60 00 00 0a                                      beq #0x508b58
005089d4  01 00 53 e3                                      cmp r3, #1
005089d8  03 00 00 0a                                      beq #0x5089ec
005089dc  30 02 9f e5                                      ldr r0, [pc, #0x230]
005089e0  00 00 8f e0                                      add r0, pc, r0
005089e4  0c d0 8d e2                                      add sp, sp, #0xc
005089e8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005089ec  24 02 9f e5                                      ldr r0, [pc, #0x224]
005089f0  24 12 9f e5                                      ldr r1, [pc, #0x224]
005089f4  24 22 9f e5                                      ldr r2, [pc, #0x224]
005089f8  00 00 96 e7                                      ldr r0, [r6, r0]
005089fc  20 32 9f e5                                      ldr r3, [pc, #0x220]
00508a00  7e cf a0 e3                                      mov ip, #0x1f8
00508a04  01 10 8f e0                                      add r1, pc, r1
00508a08  03 30 8f e0                                      add r3, pc, r3
00508a0c  a8 00 80 e2                                      add r0, r0, #0xa8
00508a10  02 20 8f e0                                      add r2, pc, r2
00508a14  00 c0 8d e5                                      str ip, [sp]
00508a18  79 15 f8 eb                                      bl #0x30e004
00508a1c  25 30 a0 e3                                      mov r3, #0x25
00508a20  93 54 23 e0                                      mla r3, r3, r4, r5
00508a24  a7 3f 83 e2                                      add r3, r3, #0x29c
00508a28  83 30 87 e0                                      add r3, r7, r3, lsl #1
00508a2c  f4 30 d3 e1                                      ldrsh r3, [r3, #4]
00508a30  03 00 58 e1                                      cmp r8, r3
00508a34  e8 ff ff aa                                      bge #0x5089dc
00508a38  25 30 a0 e3                                      mov r3, #0x25
00508a3c  93 54 24 e0                                      mla r4, r3, r4, r5
00508a40  02 40 84 e2                                      add r4, r4, #2
00508a44  04 31 97 e7                                      ldr r3, [r7, r4, lsl #2]
00508a48  08 01 93 e7                                      ldr r0, [r3, r8, lsl #2]
00508a4c  00 00 50 e3                                      cmp r0, #0
00508a50  02 00 00 0a                                      beq #0x508a60
00508a54  d0 30 d0 e1                                      ldrsb r3, [r0]
00508a58  00 00 53 e3                                      cmp r3, #0
00508a5c  e0 ff ff 1a                                      bne #0x5089e4
00508a60  c0 01 9f e5                                      ldr r0, [pc, #0x1c0]
00508a64  00 00 8f e0                                      add r0, pc, r0
00508a68  dd ff ff ea                                      b #0x5089e4
00508a6c  9c 31 9f e5                                      ldr r3, [pc, #0x19c]
00508a70  03 30 96 e7                                      ldr r3, [r6, r3]
00508a74  00 30 93 e5                                      ldr r3, [r3]
00508a78  02 00 53 e3                                      cmp r3, #2
00508a7c  26 00 00 1a                                      bne #0x508b1c
00508a80  00 30 a0 e3                                      mov r3, #0
00508a84  00 30 83 e5                                      str r3, [r3]
00508a88  07 00 a0 e1                                      mov r0, r7
00508a8c  04 10 a0 e1                                      mov r1, r4
00508a90  05 20 a0 e1                                      mov r2, r5
00508a94  f3 fa ff eb                                      bl #0x507668
00508a98  00 30 50 e2                                      subs r3, r0, #0
00508a9c  af ff ff 1a                                      bne #0x508960
00508aa0  07 00 a0 e1                                      mov r0, r7
00508aa4  04 10 a0 e1                                      mov r1, r4
00508aa8  05 20 a0 e1                                      mov r2, r5
00508aac  9a fe ff eb                                      bl #0x50851c
00508ab0  25 30 a0 e3                                      mov r3, #0x25
00508ab4  93 54 23 e0                                      mla r3, r3, r4, r5
00508ab8  02 30 83 e2                                      add r3, r3, #2
00508abc  03 31 97 e7                                      ldr r3, [r7, r3, lsl #2]
00508ac0  00 00 53 e3                                      cmp r3, #0
00508ac4  ab ff ff 1a                                      bne #0x508978
00508ac8  40 21 9f e5                                      ldr r2, [pc, #0x140]
00508acc  02 20 96 e7                                      ldr r2, [r6, r2]
00508ad0  00 20 92 e5                                      ldr r2, [r2]
00508ad4  02 00 52 e3                                      cmp r2, #2
00508ad8  00 30 83 05                                      streq r3, [r3]
00508adc  a5 ff ff 0a                                      beq #0x508978
00508ae0  01 00 52 e3                                      cmp r2, #1
00508ae4  a3 ff ff 1a                                      bne #0x508978
00508ae8  28 01 9f e5                                      ldr r0, [pc, #0x128]
00508aec  38 11 9f e5                                      ldr r1, [pc, #0x138]
00508af0  38 21 9f e5                                      ldr r2, [pc, #0x138]
00508af4  00 00 96 e7                                      ldr r0, [r6, r0]
00508af8  34 31 9f e5                                      ldr r3, [pc, #0x134]
00508afc  f5 c1 00 e3                                      movw ip, #0x1f5
00508b00  01 10 8f e0                                      add r1, pc, r1
00508b04  02 20 8f e0                                      add r2, pc, r2
00508b08  03 30 8f e0                                      add r3, pc, r3
00508b0c  a8 00 80 e2                                      add r0, r0, #0xa8
00508b10  00 c0 8d e5                                      str ip, [sp]
00508b14  3a 15 f8 eb                                      bl #0x30e004
00508b18  96 ff ff ea                                      b #0x508978
00508b1c  01 00 53 e3                                      cmp r3, #1
00508b20  88 ff ff 1a                                      bne #0x508948
00508b24  ec 00 9f e5                                      ldr r0, [pc, #0xec]
00508b28  08 11 9f e5                                      ldr r1, [pc, #0x108]
00508b2c  08 21 9f e5                                      ldr r2, [pc, #0x108]
00508b30  00 00 96 e7                                      ldr r0, [r6, r0]
00508b34  04 31 9f e5                                      ldr r3, [pc, #0x104]
00508b38  ea c1 00 e3                                      movw ip, #0x1ea
00508b3c  01 10 8f e0                                      add r1, pc, r1
00508b40  02 20 8f e0                                      add r2, pc, r2
00508b44  03 30 8f e0                                      add r3, pc, r3
00508b48  a8 00 80 e2                                      add r0, r0, #0xa8
00508b4c  00 c0 8d e5                                      str ip, [sp]
00508b50  2b 15 f8 eb                                      bl #0x30e004
00508b54  7b ff ff ea                                      b #0x508948
00508b58  e4 00 9f e5                                      ldr r0, [pc, #0xe4]
00508b5c  00 30 a0 e3                                      mov r3, #0
00508b60  00 30 83 e5                                      str r3, [r3]
00508b64  00 00 8f e0                                      add r0, pc, r0
00508b68  9d ff ff ea                                      b #0x5089e4
00508b6c  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
00508b70  d0 10 9f e5                                      ldr r1, [pc, #0xd0]
00508b74  d0 20 9f e5                                      ldr r2, [pc, #0xd0]
00508b78  00 00 96 e7                                      ldr r0, [r6, r0]
00508b7c  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00508b80  e9 c1 00 e3                                      movw ip, #0x1e9
00508b84  01 10 8f e0                                      add r1, pc, r1
00508b88  02 20 8f e0                                      add r2, pc, r2
00508b8c  03 30 8f e0                                      add r3, pc, r3
00508b90  a8 00 80 e2                                      add r0, r0, #0xa8
00508b94  00 c0 8d e5                                      str ip, [sp]
00508b98  19 15 f8 eb                                      bl #0x30e004
00508b9c  5e ff ff ea                                      b #0x50891c
00508ba0  70 00 9f e5                                      ldr r0, [pc, #0x70]
00508ba4  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
00508ba8  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00508bac  00 00 96 e7                                      ldr r0, [r6, r0]
00508bb0  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00508bb4  f7 c1 00 e3                                      movw ip, #0x1f7
00508bb8  01 10 8f e0                                      add r1, pc, r1
00508bbc  03 30 8f e0                                      add r3, pc, r3
00508bc0  a8 00 80 e2                                      add r0, r0, #0xa8
00508bc4  02 20 8f e0                                      add r2, pc, r2
00508bc8  00 c0 8d e5                                      str ip, [sp]
00508bcc  0c 15 f8 eb                                      bl #0x30e004
00508bd0  b4 30 da e1                                      ldrh r3, [sl, #4]
00508bd4  76 ff ff ea                                      b #0x5089b4
00508bd8  38 00 9f e5                                      ldr r0, [pc, #0x38]
00508bdc  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00508be0  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00508be4  00 00 96 e7                                      ldr r0, [r6, r0]
00508be8  78 30 9f e5                                      ldr r3, [pc, #0x78]
00508bec  eb c1 00 e3                                      movw ip, #0x1eb
00508bf0  01 10 8f e0                                      add r1, pc, r1
00508bf4  02 20 8f e0                                      add r2, pc, r2
00508bf8  03 30 8f e0                                      add r3, pc, r3
00508bfc  a8 00 80 e2                                      add r0, r0, #0xa8
00508c00  00 c0 8d e5                                      str ip, [sp]
00508c04  fe 14 f8 eb                                      bl #0x30e004
00508c08  4e ff ff ea                                      b #0x508948
; mapping-symbol data/literal pool
00508c0c  bc c1 48 00 c0 39 00 00 30 33 3d 00 c0 19 00 00  .byte 0xbc, 0xc1, 0x48, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x30, 0x33, 0x3d, 0x00, 0xc0, 0x19, 0x00, 0x00
00508c1c  d4 59 3b 00 08 33 3d 00 40 31 3d 00 e4 32 3d 00  .byte 0xd4, 0x59, 0x3b, 0x00, 0x08, 0x33, 0x3d, 0x00, 0x40, 0x31, 0x3d, 0x00, 0xe4, 0x32, 0x3d, 0x00
00508c2c  d8 58 3b 00 cc 31 3d 00 40 30 3d 00 9c 58 3b 00  .byte 0xd8, 0x58, 0x3b, 0x00, 0xcc, 0x31, 0x3d, 0x00, 0x40, 0x30, 0x3d, 0x00, 0x9c, 0x58, 0x3b, 0x00
00508c3c  60 31 3d 00 04 30 3d 00 ac 31 3d 00 54 58 3b 00  .byte 0x60, 0x31, 0x3d, 0x00, 0x04, 0x30, 0x3d, 0x00, 0xac, 0x31, 0x3d, 0x00, 0x54, 0x58, 0x3b, 0x00
00508c4c  f8 30 3d 00 bc 2f 3d 00 20 58 3b 00 2c 31 3d 00  .byte 0xf8, 0x30, 0x3d, 0x00, 0xbc, 0x2f, 0x3d, 0x00, 0x20, 0x58, 0x3b, 0x00, 0x2c, 0x31, 0x3d, 0x00
00508c5c  8c 2f 3d 00 e8 57 3b 00 bc 30 3d 00 50 2f 3d 00  .byte 0x8c, 0x2f, 0x3d, 0x00, 0xe8, 0x57, 0x3b, 0x00, 0xbc, 0x30, 0x3d, 0x00, 0x50, 0x2f, 0x3d, 0x00

; FUNCTION 0x00508c6c, declared_size=8, range_size=8, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager12getStringIdxEii
; demangled: StringManager::getStringIdx(int, int) const
; decoder-mode: arm
00508c6c  04 30 90 e5                                      ldr r3, [r0, #4]
00508c70  13 ff ff ea                                      b #0x5088c4

; FUNCTION 0x00508c74, declared_size=424, range_size=424, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager19getStringFromSymbolEPKc
; demangled: StringManager::getStringFromSymbol(char const*) const
; decoder-mode: arm
00508c74  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00508c78  88 81 9f e5                                      ldr r8, [pc, #0x188]
00508c7c  88 91 9f e5                                      ldr sb, [pc, #0x188]
00508c80  88 b1 9f e5                                      ldr fp, [pc, #0x188]
00508c84  08 80 8f e0                                      add r8, pc, r8
00508c88  09 30 98 e7                                      ldr r3, [r8, sb]
00508c8c  0b 60 98 e7                                      ldr r6, [r8, fp]
00508c90  44 d0 4d e2                                      sub sp, sp, #0x44
00508c94  00 30 93 e5                                      ldr r3, [r3]
00508c98  00 40 a0 e1                                      mov r4, r0
00508c9c  06 00 a0 e1                                      mov r0, r6
00508ca0  3c 30 8d e5                                      str r3, [sp, #0x3c]
00508ca4  01 70 a0 e1                                      mov r7, r1
00508ca8  f6 ba f8 eb                                      bl #0x337888
00508cac  60 11 9f e5                                      ldr r1, [pc, #0x160]
00508cb0  24 50 8d e2                                      add r5, sp, #0x24
00508cb4  08 20 8d e2                                      add r2, sp, #8
00508cb8  01 10 8f e0                                      add r1, pc, r1
00508cbc  05 00 a0 e1                                      mov r0, r5
00508cc0  09 2d f8 eb                                      bl #0x3140ec
00508cc4  05 10 a0 e1                                      mov r1, r5
00508cc8  06 00 a0 e1                                      mov r0, r6
00508ccc  6d bb f8 eb                                      bl #0x337a88
00508cd0  05 00 a0 e1                                      mov r0, r5
00508cd4  34 2b f8 eb                                      bl #0x3139ac
00508cd8  07 00 a0 e1                                      mov r0, r7
00508cdc  5f 10 a0 e3                                      mov r1, #0x5f
00508ce0  d0 17 f8 eb                                      bl #0x30ec28
00508ce4  00 60 a0 e3                                      mov r6, #0
00508ce8  00 a0 67 e0                                      rsb sl, r7, r0
00508cec  06 10 a0 e1                                      mov r1, r6
00508cf0  04 00 a0 e1                                      mov r0, r4
00508cf4  1b fa ff eb                                      bl #0x507568
00508cf8  0a 20 a0 e1                                      mov r2, sl
00508cfc  00 10 a0 e1                                      mov r1, r0
00508d00  07 00 a0 e1                                      mov r0, r7
00508d04  2e 14 f8 eb                                      bl #0x30ddc4
00508d08  00 50 50 e2                                      subs r5, r0, #0
00508d0c  1c 00 00 1a                                      bne #0x508d84
00508d10  04 00 a0 e1                                      mov r0, r4
00508d14  25 fa ff eb                                      bl #0x5075b0
00508d18  06 10 a0 e1                                      mov r1, r6
00508d1c  00 30 a0 e1                                      mov r3, r0
00508d20  05 20 a0 e1                                      mov r2, r5
00508d24  04 00 a0 e1                                      mov r0, r4
00508d28  e5 fe ff eb                                      bl #0x5088c4
00508d2c  0c 00 00 ea                                      b #0x508d64
00508d30  04 00 a0 e1                                      mov r0, r4
00508d34  1d fa ff eb                                      bl #0x5075b0
00508d38  06 10 a0 e1                                      mov r1, r6
00508d3c  00 30 a0 e1                                      mov r3, r0
00508d40  05 20 a0 e1                                      mov r2, r5
00508d44  04 00 a0 e1                                      mov r0, r4
00508d48  dd fe ff eb                                      bl #0x5088c4
00508d4c  00 10 a0 e1                                      mov r1, r0
00508d50  07 00 a0 e1                                      mov r0, r7
00508d54  63 16 f8 eb                                      bl #0x30e6e8
00508d58  00 00 50 e3                                      cmp r0, #0
00508d5c  0d 00 00 0a                                      beq #0x508d98
00508d60  01 50 85 e2                                      add r5, r5, #1
00508d64  04 00 a0 e1                                      mov r0, r4
00508d68  10 fa ff eb                                      bl #0x5075b0
00508d6c  06 10 a0 e1                                      mov r1, r6
00508d70  00 20 a0 e1                                      mov r2, r0
00508d74  04 00 a0 e1                                      mov r0, r4
00508d78  f4 f9 ff eb                                      bl #0x507550
00508d7c  00 00 55 e1                                      cmp r5, r0
00508d80  ea ff ff ba                                      blt #0x508d30
00508d84  01 60 86 e2                                      add r6, r6, #1
00508d88  25 00 56 e3                                      cmp r6, #0x25
00508d8c  d6 ff ff 1a                                      bne #0x508cec
00508d90  00 60 a0 e3                                      mov r6, #0
00508d94  12 00 00 ea                                      b #0x508de4
00508d98  06 10 a0 e1                                      mov r1, r6
00508d9c  05 20 a0 e1                                      mov r2, r5
00508da0  04 00 a0 e1                                      mov r0, r4
00508da4  b0 ff ff eb                                      bl #0x508c6c
00508da8  0b 50 98 e7                                      ldr r5, [r8, fp]
00508dac  00 60 a0 e1                                      mov r6, r0
00508db0  0c 40 8d e2                                      add r4, sp, #0xc
00508db4  05 00 a0 e1                                      mov r0, r5
00508db8  b2 ba f8 eb                                      bl #0x337888
00508dbc  54 10 9f e5                                      ldr r1, [pc, #0x54]
00508dc0  04 20 8d e2                                      add r2, sp, #4
00508dc4  04 00 a0 e1                                      mov r0, r4
00508dc8  01 10 8f e0                                      add r1, pc, r1
00508dcc  c6 2c f8 eb                                      bl #0x3140ec
00508dd0  05 00 a0 e1                                      mov r0, r5
00508dd4  04 10 a0 e1                                      mov r1, r4
00508dd8  2a bb f8 eb                                      bl #0x337a88
00508ddc  04 00 a0 e1                                      mov r0, r4
00508de0  f1 2a f8 eb                                      bl #0x3139ac
00508de4  09 30 98 e7                                      ldr r3, [r8, sb]
00508de8  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00508dec  06 00 a0 e1                                      mov r0, r6
00508df0  00 30 93 e5                                      ldr r3, [r3]
00508df4  03 00 52 e1                                      cmp r2, r3
00508df8  01 00 00 1a                                      bne #0x508e04
00508dfc  44 d0 8d e2                                      add sp, sp, #0x44
00508e00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00508e04  41 15 f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00508e08  0c be 48 00 ac 40 00 00 84 08 00 00 b0 2f 3d 00  .byte 0x0c, 0xbe, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xb0, 0x2f, 0x3d, 0x00
00508e18  a0 2e 3d 00                                      .byte 0xa0, 0x2e, 0x3d, 0x00

; FUNCTION 0x00508e1c, declared_size=192, range_size=192, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager9getStringEij
; demangled: StringManager::getString(int, unsigned int) const
; decoder-mode: arm
00508e1c  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00508e20  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
00508e24  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00508e28  03 30 8f e0                                      add r3, pc, r3
00508e2c  94 40 9f e5                                      ldr r4, [pc, #0x94]
00508e30  0c 50 93 e7                                      ldr r5, [r3, ip]
00508e34  02 b0 a0 e1                                      mov fp, r2
00508e38  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
00508e3c  04 40 8f e0                                      add r4, pc, r4
00508e40  04 d0 4d e2                                      sub sp, sp, #4
00508e44  01 60 a0 e1                                      mov r6, r1
00508e48  00 90 a0 e1                                      mov sb, r0
00508e4c  04 10 a0 e1                                      mov r1, r4
00508e50  02 20 8f e0                                      add r2, pc, r2
00508e54  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00508e58  5f ef fe eb                                      bl #0x4c4bdc
00508e5c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00508e60  00 80 a0 e1                                      mov r8, r0
00508e64  04 10 a0 e1                                      mov r1, r4
00508e68  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00508e6c  02 20 8f e0                                      add r2, pc, r2
00508e70  59 ef fe eb                                      bl #0x4c4bdc
00508e74  58 20 9f e5                                      ldr r2, [pc, #0x58]
00508e78  00 70 a0 e1                                      mov r7, r0
00508e7c  04 10 a0 e1                                      mov r1, r4
00508e80  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00508e84  02 20 8f e0                                      add r2, pc, r2
00508e88  53 ef fe eb                                      bl #0x4c4bdc
00508e8c  44 20 9f e5                                      ldr r2, [pc, #0x44]
00508e90  00 a0 a0 e1                                      mov sl, r0
00508e94  04 10 a0 e1                                      mov r1, r4
00508e98  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00508e9c  02 20 8f e0                                      add r2, pc, r2
00508ea0  4d ef fe eb                                      bl #0x4c4bdc
00508ea4  56 18 07 e0                                      and r1, r7, r6, asr r8
00508ea8  56 2a 00 e0                                      and r2, r0, r6, asr sl
00508eac  0b 30 a0 e1                                      mov r3, fp
00508eb0  09 00 a0 e1                                      mov r0, sb
00508eb4  04 d0 8d e2                                      add sp, sp, #4
00508eb8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00508ebc  80 fe ff ea                                      b #0x5088c4
; mapping-symbol data/literal pool
00508ec0  68 bc 48 00 f4 37 00 00 14 2f 3d 00 10 2f 3d 00  .byte 0x68, 0xbc, 0x48, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x14, 0x2f, 0x3d, 0x00, 0x10, 0x2f, 0x3d, 0x00
00508ed0  04 2f 3d 00 fc 2e 3d 00 f4 2e 3d 00              .byte 0x04, 0x2f, 0x3d, 0x00, 0xfc, 0x2e, 0x3d, 0x00, 0xf4, 0x2e, 0x3d, 0x00

; FUNCTION 0x00508edc, declared_size=24, range_size=24, mode=arm
; class-group: StringManager
; alias: _ZNK13StringManager9getStringEi
; demangled: StringManager::getString(int) const
; decoder-mode: arm
00508edc  00 00 51 e3                                      cmp r1, #0
00508ee0  01 00 00 ba                                      blt #0x508eec
00508ee4  04 20 90 e5                                      ldr r2, [r0, #4]
00508ee8  cb ff ff ea                                      b #0x508e1c
00508eec  00 00 a0 e3                                      mov r0, #0
00508ef0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00508ef4, declared_size=2836, range_size=2836, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager5parseERSsPKcz
; demangled: StringManager::parse(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&, char const*, ...)
; decoder-mode: arm
00508ef4  0c 00 2d e9                                      push {r2, r3}
00508ef8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00508efc  b4 5a 9f e5                                      ldr r5, [pc, #0xab4]
00508f00  b4 2a 9f e5                                      ldr r2, [pc, #0xab4]
00508f04  ac d0 4d e2                                      sub sp, sp, #0xac
00508f08  05 50 8f e0                                      add r5, pc, r5
00508f0c  02 30 95 e7                                      ldr r3, [r5, r2]
00508f10  d0 40 9d e5                                      ldr r4, [sp, #0xd0]
00508f14  14 20 8d e5                                      str r2, [sp, #0x14]
00508f18  00 30 93 e5                                      ldr r3, [r3]
00508f1c  d4 20 8d e2                                      add r2, sp, #0xd4
00508f20  00 00 54 e3                                      cmp r4, #0
00508f24  54 20 8d e5                                      str r2, [sp, #0x54]
00508f28  18 00 8d e5                                      str r0, [sp, #0x18]
00508f2c  a4 30 8d e5                                      str r3, [sp, #0xa4]
00508f30  01 70 a0 e1                                      mov r7, r1
00508f34  02 00 00 0a                                      beq #0x508f44
00508f38  d0 30 d4 e1                                      ldrsb r3, [r4]
00508f3c  00 00 53 e3                                      cmp r3, #0
00508f40  0b 00 00 1a                                      bne #0x508f74
00508f44  00 80 a0 e3                                      mov r8, #0
00508f48  14 20 9d e5                                      ldr r2, [sp, #0x14]
00508f4c  08 00 a0 e1                                      mov r0, r8
00508f50  02 30 95 e7                                      ldr r3, [r5, r2]
00508f54  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
00508f58  00 30 93 e5                                      ldr r3, [r3]
00508f5c  03 00 52 e1                                      cmp r2, r3
00508f60  93 02 00 1a                                      bne #0x5099b4
00508f64  ac d0 8d e2                                      add sp, sp, #0xac
00508f68  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00508f6c  08 d0 8d e2                                      add sp, sp, #8
00508f70  1e ff 2f e1                                      bx lr
00508f74  44 3a 9f e5                                      ldr r3, [pc, #0xa44]
00508f78  44 6a 9f e5                                      ldr r6, [pc, #0xa44]
00508f7c  44 2a 9f e5                                      ldr r2, [pc, #0xa44]
00508f80  03 80 95 e7                                      ldr r8, [r5, r3]
00508f84  06 60 8f e0                                      add r6, pc, r6
00508f88  02 20 8f e0                                      add r2, pc, r2
00508f8c  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
00508f90  06 10 a0 e1                                      mov r1, r6
00508f94  24 30 8d e5                                      str r3, [sp, #0x24]
00508f98  0f ef fe eb                                      bl #0x4c4bdc
00508f9c  00 10 a0 e1                                      mov r1, r0
00508fa0  18 00 9d e5                                      ldr r0, [sp, #0x18]
00508fa4  cc ff ff eb                                      bl #0x508edc
00508fa8  1c 2a 9f e5                                      ldr r2, [pc, #0xa1c]
00508fac  40 00 8d e5                                      str r0, [sp, #0x40]
00508fb0  06 10 a0 e1                                      mov r1, r6
00508fb4  02 20 8f e0                                      add r2, pc, r2
00508fb8  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
00508fbc  06 ef fe eb                                      bl #0x4c4bdc
00508fc0  00 10 a0 e1                                      mov r1, r0
00508fc4  18 00 9d e5                                      ldr r0, [sp, #0x18]
00508fc8  c3 ff ff eb                                      bl #0x508edc
00508fcc  fc 29 9f e5                                      ldr r2, [pc, #0x9fc]
00508fd0  38 00 8d e5                                      str r0, [sp, #0x38]
00508fd4  06 10 a0 e1                                      mov r1, r6
00508fd8  02 20 8f e0                                      add r2, pc, r2
00508fdc  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
00508fe0  fd ee fe eb                                      bl #0x4c4bdc
00508fe4  00 10 a0 e1                                      mov r1, r0
00508fe8  18 00 9d e5                                      ldr r0, [sp, #0x18]
00508fec  ba ff ff eb                                      bl #0x508edc
00508ff0  27 14 f8 eb                                      bl #0x30e094
00508ff4  2c 00 8d e5                                      str r0, [sp, #0x2c]
00508ff8  00 30 d4 e5                                      ldrb r3, [r4]
00508ffc  00 00 53 e3                                      cmp r3, #0
00509000  03 80 a0 01                                      moveq r8, r3
00509004  8f 00 00 0a                                      beq #0x509248
00509008  c4 29 9f e5                                      ldr r2, [pc, #0x9c4]
0050900c  00 80 a0 e3                                      mov r8, #0
00509010  01 40 84 e2                                      add r4, r4, #1
00509014  02 20 8f e0                                      add r2, pc, r2
00509018  34 20 8d e5                                      str r2, [sp, #0x34]
0050901c  b4 29 9f e5                                      ldr r2, [pc, #0x9b4]
00509020  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00509024  08 60 a0 e1                                      mov r6, r8
00509028  02 20 8f e0                                      add r2, pc, r2
0050902c  3c 20 8d e5                                      str r2, [sp, #0x3c]
00509030  a4 29 9f e5                                      ldr r2, [pc, #0x9a4]
00509034  06 c0 8c e2                                      add ip, ip, #6
00509038  48 c0 8d e5                                      str ip, [sp, #0x48]
0050903c  02 20 8f e0                                      add r2, pc, r2
00509040  4c 20 8d e5                                      str r2, [sp, #0x4c]
00509044  94 29 9f e5                                      ldr r2, [pc, #0x994]
00509048  28 50 8d e5                                      str r5, [sp, #0x28]
0050904c  02 20 8f e0                                      add r2, pc, r2
00509050  44 20 8d e5                                      str r2, [sp, #0x44]
00509054  0b 00 00 ea                                      b #0x509088
00509058  73 30 af e6                                      sxtb r3, r3
0050905c  5e 00 53 e3                                      cmp r3, #0x5e
00509060  01 60 a0 03                                      moveq r6, #1
00509064  04 00 00 0a                                      beq #0x50907c
00509068  7c 00 53 e3                                      cmp r3, #0x7c
0050906c  8f 00 00 0a                                      beq #0x5092b0
00509070  07 00 a0 e1                                      mov r0, r7
00509074  04 20 a0 e1                                      mov r2, r4
00509078  e1 1d f8 eb                                      bl #0x310804
0050907c  01 30 d4 e4                                      ldrb r3, [r4], #1
00509080  00 00 53 e3                                      cmp r3, #0
00509084  6e 00 00 0a                                      beq #0x509244
00509088  00 00 56 e3                                      cmp r6, #0
0050908c  01 10 44 e2                                      sub r1, r4, #1
00509090  f0 ff ff 0a                                      beq #0x509058
00509094  73 30 af e6                                      sxtb r3, r3
00509098  23 20 43 e2                                      sub r2, r3, #0x23
0050909c  53 00 52 e3                                      cmp r2, #0x53
005090a0  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
005090a4  61 00 00 ea                                      b #0x509230
005090a8  91 01 00 ea                                      b #0x5096f4
005090ac  52 01 00 ea                                      b #0x5095fc
005090b0  5e 00 00 ea                                      b #0x509230
005090b4  5d 00 00 ea                                      b #0x509230
005090b8  5c 00 00 ea                                      b #0x509230
005090bc  5b 00 00 ea                                      b #0x509230
005090c0  5a 00 00 ea                                      b #0x509230
005090c4  8a 01 00 ea                                      b #0x5096f4
005090c8  58 00 00 ea                                      b #0x509230
005090cc  57 00 00 ea                                      b #0x509230
005090d0  56 00 00 ea                                      b #0x509230
005090d4  55 00 00 ea                                      b #0x509230
005090d8  54 00 00 ea                                      b #0x509230
005090dc  53 00 00 ea                                      b #0x509230
005090e0  52 00 00 ea                                      b #0x509230
005090e4  51 00 00 ea                                      b #0x509230
005090e8  50 00 00 ea                                      b #0x509230
005090ec  4f 00 00 ea                                      b #0x509230
005090f0  4e 00 00 ea                                      b #0x509230
005090f4  4d 00 00 ea                                      b #0x509230
005090f8  4c 00 00 ea                                      b #0x509230
005090fc  4b 00 00 ea                                      b #0x509230
00509100  4a 00 00 ea                                      b #0x509230
00509104  49 00 00 ea                                      b #0x509230
00509108  48 00 00 ea                                      b #0x509230
0050910c  47 00 00 ea                                      b #0x509230
00509110  46 00 00 ea                                      b #0x509230
00509114  45 00 00 ea                                      b #0x509230
00509118  44 00 00 ea                                      b #0x509230
0050911c  43 00 00 ea                                      b #0x509230
00509120  42 00 00 ea                                      b #0x509230
00509124  41 00 00 ea                                      b #0x509230
00509128  40 00 00 ea                                      b #0x509230
0050912c  3f 00 00 ea                                      b #0x509230
00509130  3e 00 00 ea                                      b #0x509230
00509134  3d 00 00 ea                                      b #0x509230
00509138  3c 00 00 ea                                      b #0x509230
0050913c  3b 00 00 ea                                      b #0x509230
00509140  3a 00 00 ea                                      b #0x509230
00509144  39 00 00 ea                                      b #0x509230
00509148  38 00 00 ea                                      b #0x509230
0050914c  37 00 00 ea                                      b #0x509230
00509150  36 00 00 ea                                      b #0x509230
00509154  35 00 00 ea                                      b #0x509230
00509158  34 00 00 ea                                      b #0x509230
0050915c  33 00 00 ea                                      b #0x509230
00509160  32 00 00 ea                                      b #0x509230
00509164  31 00 00 ea                                      b #0x509230
00509168  30 00 00 ea                                      b #0x509230
0050916c  2f 00 00 ea                                      b #0x509230
00509170  2e 00 00 ea                                      b #0x509230
00509174  2d 00 00 ea                                      b #0x509230
00509178  2c 00 00 ea                                      b #0x509230
0050917c  2b 00 00 ea                                      b #0x509230
00509180  2a 00 00 ea                                      b #0x509230
00509184  29 00 00 ea                                      b #0x509230
00509188  28 00 00 ea                                      b #0x509230
0050918c  27 00 00 ea                                      b #0x509230
00509190  26 00 00 ea                                      b #0x509230
00509194  56 01 00 ea                                      b #0x5096f4
00509198  24 00 00 ea                                      b #0x509230
0050919c  23 00 00 ea                                      b #0x509230
005091a0  22 00 00 ea                                      b #0x509230
005091a4  21 00 00 ea                                      b #0x509230
005091a8  20 00 00 ea                                      b #0x509230
005091ac  e3 00 00 ea                                      b #0x509540
005091b0  1e 00 00 ea                                      b #0x509230
005091b4  73 00 00 ea                                      b #0x509388
005091b8  72 00 00 ea                                      b #0x509388
005091bc  71 00 00 ea                                      b #0x509388
005091c0  70 00 00 ea                                      b #0x509388
005091c4  19 00 00 ea                                      b #0x509230
005091c8  dc 00 00 ea                                      b #0x509540
005091cc  17 00 00 ea                                      b #0x509230
005091d0  6c 00 00 ea                                      b #0x509388
005091d4  5d 00 00 ea                                      b #0x509350
005091d8  14 00 00 ea                                      b #0x509230
005091dc  d7 00 00 ea                                      b #0x509540
005091e0  12 00 00 ea                                      b #0x509230
005091e4  11 00 00 ea                                      b #0x509230
005091e8  4f 00 00 ea                                      b #0x50932c
005091ec  3e 00 00 ea                                      b #0x5092ec
005091f0  0e 00 00 ea                                      b #0x509230
005091f4  ff ff ff ea                                      b #0x5091f8
005091f8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
005091fc  24 e0 9d e5                                      ldr lr, [sp, #0x24]
00509200  98 50 8d e2                                      add r5, sp, #0x98
00509204  05 10 a0 e1                                      mov r1, r5
00509208  0a 20 a0 e3                                      mov r2, #0xa
0050920c  01 30 a0 e3                                      mov r3, #1
00509210  0e 00 9c e7                                      ldr r0, [ip, lr]
00509214  25 59 f8 eb                                      bl #0x31f6b0
00509218  05 00 a0 e1                                      mov r0, r5
0050921c  0c 13 f8 eb                                      bl #0x30de54
00509220  00 20 85 e0                                      add r2, r5, r0
00509224  05 10 a0 e1                                      mov r1, r5
00509228  07 00 a0 e1                                      mov r0, r7
0050922c  74 1d f8 eb                                      bl #0x310804
00509230  01 80 a0 e3                                      mov r8, #1
00509234  00 60 a0 e3                                      mov r6, #0
00509238  01 30 d4 e4                                      ldrb r3, [r4], #1
0050923c  00 00 53 e3                                      cmp r3, #0
00509240  90 ff ff 1a                                      bne #0x509088
00509244  28 50 9d e5                                      ldr r5, [sp, #0x28]
00509248  14 30 97 e5                                      ldr r3, [r7, #0x14]
0050924c  10 00 97 e5                                      ldr r0, [r7, #0x10]
00509250  00 10 a0 e3                                      mov r1, #0
00509254  00 00 63 e0                                      rsb r0, r3, r0
00509258  80 00 80 e2                                      add r0, r0, #0x80
0050925c  c2 1c f8 eb                                      bl #0x31056c
00509260  00 40 a0 e1                                      mov r4, r0
00509264  18 00 9d e5                                      ldr r0, [sp, #0x18]
00509268  14 60 97 e5                                      ldr r6, [r7, #0x14]
0050926c  a6 f8 ff eb                                      bl #0x50750c
00509270  04 10 a0 e1                                      mov r1, r4
00509274  00 30 a0 e1                                      mov r3, r0
00509278  00 20 e0 e3                                      mvn r2, #0
0050927c  06 00 a0 e1                                      mov r0, r6
00509280  e4 25 09 eb                                      bl #0x752a18
00509284  04 00 a0 e1                                      mov r0, r4
00509288  f1 12 f8 eb                                      bl #0x30de54
0050928c  04 10 a0 e1                                      mov r1, r4
00509290  00 20 84 e0                                      add r2, r4, r0
00509294  07 00 a0 e1                                      mov r0, r7
00509298  d0 1d f8 eb                                      bl #0x3109e0
0050929c  00 00 54 e3                                      cmp r4, #0
005092a0  28 ff ff 0a                                      beq #0x508f48
005092a4  04 00 a0 e1                                      mov r0, r4
005092a8  64 1c f8 eb                                      bl #0x310440
005092ac  25 ff ff ea                                      b #0x508f48
005092b0  2c 27 9f e5                                      ldr r2, [pc, #0x72c]
005092b4  78 50 8d e2                                      add r5, sp, #0x78
005092b8  20 10 a0 e3                                      mov r1, #0x20
005092bc  02 20 8f e0                                      add r2, pc, r2
005092c0  11 30 a0 e3                                      mov r3, #0x11
005092c4  05 00 a0 e1                                      mov r0, r5
005092c8  dd 13 f8 eb                                      bl #0x30e244
005092cc  05 00 a0 e1                                      mov r0, r5
005092d0  df 12 f8 eb                                      bl #0x30de54
005092d4  05 10 a0 e1                                      mov r1, r5
005092d8  00 20 85 e0                                      add r2, r5, r0
005092dc  07 00 a0 e1                                      mov r0, r7
005092e0  47 1d f8 eb                                      bl #0x310804
005092e4  01 80 a0 e3                                      mov r8, #1
005092e8  63 ff ff ea                                      b #0x50907c
005092ec  28 30 9d e5                                      ldr r3, [sp, #0x28]
005092f0  24 e0 9d e5                                      ldr lr, [sp, #0x24]
005092f4  58 50 8d e2                                      add r5, sp, #0x58
005092f8  05 10 a0 e1                                      mov r1, r5
005092fc  0e 00 93 e7                                      ldr r0, [r3, lr]
00509300  20 20 a0 e3                                      mov r2, #0x20
00509304  f1 5c f8 eb                                      bl #0x3206d0
00509308  05 00 a0 e1                                      mov r0, r5
0050930c  d0 12 f8 eb                                      bl #0x30de54
00509310  05 10 a0 e1                                      mov r1, r5
00509314  00 20 85 e0                                      add r2, r5, r0
00509318  07 00 a0 e1                                      mov r0, r7
0050931c  38 1d f8 eb                                      bl #0x310804
00509320  01 80 a0 e3                                      mov r8, #1
00509324  00 60 a0 e3                                      mov r6, #0
00509328  53 ff ff ea                                      b #0x50907c
0050932c  54 30 9d e5                                      ldr r3, [sp, #0x54]
00509330  04 20 83 e2                                      add r2, r3, #4
00509334  54 20 8d e5                                      str r2, [sp, #0x54]
00509338  00 50 93 e5                                      ldr r5, [r3]
0050933c  00 00 55 e3                                      cmp r5, #0
00509340  b4 ff ff 1a                                      bne #0x509218
00509344  48 20 9d e5                                      ldr r2, [sp, #0x48]
00509348  34 50 9d e5                                      ldr r5, [sp, #0x34]
0050934c  b4 ff ff ea                                      b #0x509224
00509350  78 50 8d e2                                      add r5, sp, #0x78
00509354  20 10 a0 e3                                      mov r1, #0x20
00509358  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0050935c  05 00 a0 e1                                      mov r0, r5
00509360  b7 13 f8 eb                                      bl #0x30e244
00509364  05 00 a0 e1                                      mov r0, r5
00509368  b9 12 f8 eb                                      bl #0x30de54
0050936c  05 10 a0 e1                                      mov r1, r5
00509370  00 20 85 e0                                      add r2, r5, r0
00509374  07 00 a0 e1                                      mov r0, r7
00509378  21 1d f8 eb                                      bl #0x310804
0050937c  01 80 a0 e3                                      mov r8, #1
00509380  00 60 a0 e3                                      mov r6, #0
00509384  ab ff ff ea                                      b #0x509238
00509388  66 00 53 e3                                      cmp r3, #0x66
0050938c  ff 00 00 0a                                      beq #0x509790
00509390  67 00 53 e3                                      cmp r3, #0x67
00509394  5a 01 00 0a                                      beq #0x509904
00509398  68 00 53 e3                                      cmp r3, #0x68
0050939c  6c 01 00 0a                                      beq #0x509954
005093a0  69 00 53 e3                                      cmp r3, #0x69
005093a4  76 01 00 0a                                      beq #0x509984
005093a8  6d 00 53 e3                                      cmp r3, #0x6d
005093ac  17 01 00 0a                                      beq #0x509810
005093b0  d1 30 54 e1                                      ldrsb r3, [r4, #-1]
005093b4  6d 00 53 e3                                      cmp r3, #0x6d
005093b8  03 01 00 0a                                      beq #0x5097cc
005093bc  00 10 a0 e3                                      mov r1, #0
005093c0  20 00 9d e5                                      ldr r0, [sp, #0x20]
005093c4  d0 14 f8 eb                                      bl #0x30e70c
005093c8  00 00 50 e3                                      cmp r0, #0
005093cc  0a 17 0d 03                                      movweq r1, #0xd70a
005093d0  0a 17 0d 13                                      movwne r1, #0xd70a
005093d4  a3 1b 43 03                                      movteq r1, #0x3ba3
005093d8  a3 1b 4b 13                                      movtne r1, #0xbba3
005093dc  20 00 9d e5                                      ldr r0, [sp, #0x20]
005093e0  ef 15 f8 eb                                      bl #0x30eba4
005093e4  20 00 8d e5                                      str r0, [sp, #0x20]
005093e8  50 10 8d e2                                      add r1, sp, #0x50
005093ec  20 00 9d e5                                      ldr r0, [sp, #0x20]
005093f0  8e 15 f8 eb                                      bl #0x30ea30
005093f4  00 10 a0 e3                                      mov r1, #0
005093f8  00 50 a0 e1                                      mov r5, r0
005093fc  20 00 9d e5                                      ldr r0, [sp, #0x20]
00509400  c1 14 f8 eb                                      bl #0x30e70c
00509404  00 00 50 e3                                      cmp r0, #0
00509408  0a 17 0d 03                                      movweq r1, #0xd70a
0050940c  0a 17 0d 13                                      movwne r1, #0xd70a
00509410  a3 1b 43 03                                      movteq r1, #0x3ba3
00509414  a3 1b 4b 13                                      movtne r1, #0xbba3
00509418  05 00 a0 e1                                      mov r0, r5
0050941c  e2 13 f8 eb                                      bl #0x30e3ac
00509420  00 60 a0 e1                                      mov r6, r0
00509424  50 00 9d e5                                      ldr r0, [sp, #0x50]
00509428  27 14 f8 eb                                      bl #0x30e4cc
0050942c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00509430  1c 00 8d e5                                      str r0, [sp, #0x1c]
00509434  00 00 51 e1                                      cmp r1, r0
00509438  cc 00 00 ca                                      bgt #0x509770
0050943c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00509440  83 3e 0d e3                                      movw r3, #0xde83
00509444  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00509448  1b 33 44 e3                                      movt r3, #0x431b
0050944c  93 22 c3 e0                                      smull r2, r3, r3, r2
00509450  cc 1f a0 e1                                      asr r1, ip, #0x1f
00509454  3d 29 a0 e3                                      mov r2, #0xf4000
00509458  43 39 61 e0                                      rsb r3, r1, r3, asr #18
0050945c  09 2d 82 e2                                      add r2, r2, #0x240
00509460  92 c3 62 e0                                      mls r2, r2, r3, ip
00509464  d3 0d 04 e3                                      movw r0, #0x4dd3
00509468  0c e0 a0 e1                                      mov lr, ip
0050946c  62 00 41 e3                                      movt r0, #0x1062
00509470  90 ee cc e0                                      smull lr, ip, r0, lr
00509474  90 e2 c0 e0                                      smull lr, r0, r0, r2
00509478  c2 2f a0 e1                                      asr r2, r2, #0x1f
0050947c  40 e3 62 e0                                      rsb lr, r2, r0, asr #6
00509480  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00509484  4c c3 61 e0                                      rsb ip, r1, ip, asr #6
00509488  fa 2f a0 e3                                      mov r2, #0x3e8
0050948c  00 00 53 e3                                      cmp r3, #0
00509490  92 0c 6c e0                                      mls ip, r2, ip, r0
00509494  04 01 00 1a                                      bne #0x5098ac
00509498  00 00 5e e3                                      cmp lr, #0
0050949c  e7 00 00 0a                                      beq #0x509840
005094a0  40 25 9f e5                                      ldr r2, [pc, #0x540]
005094a4  0e 30 a0 e1                                      mov r3, lr
005094a8  38 e0 9d e5                                      ldr lr, [sp, #0x38]
005094ac  78 50 8d e2                                      add r5, sp, #0x78
005094b0  02 20 8f e0                                      add r2, pc, r2
005094b4  05 00 a0 e1                                      mov r0, r5
005094b8  20 10 a0 e3                                      mov r1, #0x20
005094bc  04 c0 8d e5                                      str ip, [sp, #4]
005094c0  00 e0 8d e5                                      str lr, [sp]
005094c4  5e 13 f8 eb                                      bl #0x30e244
005094c8  05 00 a0 e1                                      mov r0, r5
005094cc  60 12 f8 eb                                      bl #0x30de54
005094d0  05 10 a0 e1                                      mov r1, r5
005094d4  00 20 85 e0                                      add r2, r5, r0
005094d8  07 00 a0 e1                                      mov r0, r7
005094dc  c8 1c f8 eb                                      bl #0x310804
005094e0  02 61 c6 e3                                      bic r6, r6, #0x80000000
005094e4  17 17 0b e3                                      movw r1, #0xb717
005094e8  06 00 a0 e1                                      mov r0, r6
005094ec  d1 18 43 e3                                      movt r1, #0x38d1
005094f0  85 14 f8 eb                                      bl #0x30e70c
005094f4  00 00 50 e3                                      cmp r0, #0
005094f8  4c ff ff 1a                                      bne #0x509230
005094fc  07 00 a0 e1                                      mov r0, r7
00509500  40 10 9d e5                                      ldr r1, [sp, #0x40]
00509504  9d a1 fb eb                                      bl #0x3f1b80
00509508  d1 30 54 e1                                      ldrsb r3, [r4, #-1]
0050950c  6d 00 53 e3                                      cmp r3, #0x6d
00509510  b6 00 00 0a                                      beq #0x5097f0
00509514  06 00 a0 e1                                      mov r0, r6
00509518  e1 14 f8 eb                                      bl #0x30e8a4
0050951c  44 20 9d e5                                      ldr r2, [sp, #0x44]
00509520  f0 00 cd e1                                      strd r0, r1, [sp]
00509524  05 00 a0 e1                                      mov r0, r5
00509528  10 10 a0 e3                                      mov r1, #0x10
0050952c  44 13 f8 eb                                      bl #0x30e244
00509530  02 10 85 e2                                      add r1, r5, #2
00509534  07 00 a0 e1                                      mov r0, r7
00509538  90 a1 fb eb                                      bl #0x3f1b80
0050953c  3b ff ff ea                                      b #0x509230
00509540  64 00 53 e3                                      cmp r3, #0x64
00509544  9a 00 00 0a                                      beq #0x5097b4
00509548  6b 00 53 e3                                      cmp r3, #0x6b
0050954c  e1 00 00 0a                                      beq #0x5098d8
00509550  70 00 53 e3                                      cmp r3, #0x70
00509554  f6 00 00 0a                                      beq #0x509934
00509558  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
0050955c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00509560  00 00 5e e1                                      cmp lr, r0
00509564  79 00 00 ba                                      blt #0x509750
00509568  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0050956c  83 3e 0d e3                                      movw r3, #0xde83
00509570  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00509574  1b 33 44 e3                                      movt r3, #0x431b
00509578  93 11 c3 e0                                      smull r1, r3, r3, r1
0050957c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00509580  c2 1f a0 e1                                      asr r1, r2, #0x1f
00509584  3d 29 a0 e3                                      mov r2, #0xf4000
00509588  43 39 61 e0                                      rsb r3, r1, r3, asr #18
0050958c  09 2d 82 e2                                      add r2, r2, #0x240
00509590  92 c3 62 e0                                      mls r2, r2, r3, ip
00509594  d3 0d 04 e3                                      movw r0, #0x4dd3
00509598  0c e0 a0 e1                                      mov lr, ip
0050959c  62 00 41 e3                                      movt r0, #0x1062
005095a0  90 ee cc e0                                      smull lr, ip, r0, lr
005095a4  90 e2 c0 e0                                      smull lr, r0, r0, r2
005095a8  c2 2f a0 e1                                      asr r2, r2, #0x1f
005095ac  40 e3 62 e0                                      rsb lr, r2, r0, asr #6
005095b0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005095b4  4c c3 61 e0                                      rsb ip, r1, ip, asr #6
005095b8  fa 2f a0 e3                                      mov r2, #0x3e8
005095bc  00 00 53 e3                                      cmp r3, #0
005095c0  92 0c 6c e0                                      mls ip, r2, ip, r0
005095c4  ad 00 00 1a                                      bne #0x509880
005095c8  00 00 5e e3                                      cmp lr, #0
005095cc  a3 00 00 0a                                      beq #0x509860
005095d0  14 24 9f e5                                      ldr r2, [pc, #0x414]
005095d4  0e 30 a0 e1                                      mov r3, lr
005095d8  38 e0 9d e5                                      ldr lr, [sp, #0x38]
005095dc  78 50 8d e2                                      add r5, sp, #0x78
005095e0  02 20 8f e0                                      add r2, pc, r2
005095e4  05 00 a0 e1                                      mov r0, r5
005095e8  20 10 a0 e3                                      mov r1, #0x20
005095ec  04 c0 8d e5                                      str ip, [sp, #4]
005095f0  00 e0 8d e5                                      str lr, [sp]
005095f4  12 13 f8 eb                                      bl #0x30e244
005095f8  59 ff ff ea                                      b #0x509364
005095fc  54 20 9d e5                                      ldr r2, [sp, #0x54]
00509600  04 30 82 e2                                      add r3, r2, #4
00509604  54 30 8d e5                                      str r3, [sp, #0x54]
00509608  00 80 92 e5                                      ldr r8, [r2]
0050960c  04 30 83 e2                                      add r3, r3, #4
00509610  54 30 8d e5                                      str r3, [sp, #0x54]
00509614  00 30 d8 e5                                      ldrb r3, [r8]
00509618  04 90 92 e5                                      ldr sb, [r2, #4]
0050961c  00 00 53 e3                                      cmp r3, #0
00509620  30 00 00 0a                                      beq #0x5096e8
00509624  78 50 8d e2                                      add r5, sp, #0x78
00509628  00 60 a0 e3                                      mov r6, #0
0050962c  01 00 85 e2                                      add r0, r5, #1
00509630  01 80 88 e2                                      add r8, r8, #1
00509634  05 b0 a0 e1                                      mov fp, r5
00509638  06 a0 a0 e1                                      mov sl, r6
0050963c  30 00 8d e5                                      str r0, [sp, #0x30]
00509640  19 00 00 ea                                      b #0x5096ac
00509644  00 00 56 e3                                      cmp r6, #0
00509648  2f 00 00 1a                                      bne #0x50970c
0050964c  00 20 d9 e5                                      ldrb r2, [sb]
00509650  00 00 52 e3                                      cmp r2, #0
00509654  03 00 00 0a                                      beq #0x509668
00509658  03 00 52 e1                                      cmp r2, r3
0050965c  01 30 cb 04                                      strbeq r3, [fp], #1
00509660  01 90 89 02                                      addeq sb, sb, #1
00509664  0a 00 00 0a                                      beq #0x509694
00509668  00 10 a0 e3                                      mov r1, #0
0050966c  00 30 cb e5                                      strb r3, [fp]
00509670  01 10 cb e5                                      strb r1, [fp, #1]
00509674  05 00 a0 e1                                      mov r0, r5
00509678  f5 11 f8 eb                                      bl #0x30de54
0050967c  05 10 a0 e1                                      mov r1, r5
00509680  00 20 85 e0                                      add r2, r5, r0
00509684  07 00 a0 e1                                      mov r0, r7
00509688  5d 1c f8 eb                                      bl #0x310804
0050968c  05 b0 a0 e1                                      mov fp, r5
00509690  00 a0 a0 e3                                      mov sl, #0
00509694  d0 30 d9 e1                                      ldrsb r3, [sb]
00509698  00 00 53 e3                                      cmp r3, #0
0050969c  1e 00 00 0a                                      beq #0x50971c
005096a0  01 30 d8 e4                                      ldrb r3, [r8], #1
005096a4  00 00 53 e3                                      cmp r3, #0
005096a8  0e 00 00 0a                                      beq #0x5096e8
005096ac  00 00 5a e3                                      cmp sl, #0
005096b0  01 10 48 e2                                      sub r1, r8, #1
005096b4  e2 ff ff 1a                                      bne #0x509644
005096b8  73 30 af e6                                      sxtb r3, r3
005096bc  24 00 53 e3                                      cmp r3, #0x24
005096c0  11 00 00 1a                                      bne #0x50970c
005096c4  78 30 cd e5                                      strb r3, [sp, #0x78]
005096c8  d0 30 d9 e1                                      ldrsb r3, [sb]
005096cc  30 b0 9d e5                                      ldr fp, [sp, #0x30]
005096d0  01 a0 a0 e3                                      mov sl, #1
005096d4  24 00 53 e3                                      cmp r3, #0x24
005096d8  01 30 d8 e4                                      ldrb r3, [r8], #1
005096dc  01 90 89 02                                      addeq sb, sb, #1
005096e0  00 00 53 e3                                      cmp r3, #0
005096e4  f0 ff ff 1a                                      bne #0x5096ac
005096e8  03 60 a0 e1                                      mov r6, r3
005096ec  01 80 a0 e3                                      mov r8, #1
005096f0  61 fe ff ea                                      b #0x50907c
005096f4  07 00 a0 e1                                      mov r0, r7
005096f8  04 20 a0 e1                                      mov r2, r4
005096fc  40 1c f8 eb                                      bl #0x310804
00509700  01 80 a0 e3                                      mov r8, #1
00509704  00 60 a0 e3                                      mov r6, #0
00509708  ca fe ff ea                                      b #0x509238
0050970c  07 00 a0 e1                                      mov r0, r7
00509710  08 20 a0 e1                                      mov r2, r8
00509714  3a 1c f8 eb                                      bl #0x310804
00509718  e0 ff ff ea                                      b #0x5096a0
0050971c  54 30 9d e5                                      ldr r3, [sp, #0x54]
00509720  01 60 a0 e3                                      mov r6, #1
00509724  04 20 83 e2                                      add r2, r3, #4
00509728  54 20 8d e5                                      str r2, [sp, #0x54]
0050972c  00 10 93 e5                                      ldr r1, [r3]
00509730  01 00 a0 e1                                      mov r0, r1
00509734  10 10 8d e5                                      str r1, [sp, #0x10]
00509738  c5 11 f8 eb                                      bl #0x30de54
0050973c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00509740  00 20 81 e0                                      add r2, r1, r0
00509744  07 00 a0 e1                                      mov r0, r7
00509748  2d 1c f8 eb                                      bl #0x310804
0050974c  d3 ff ff ea                                      b #0x5096a0
00509750  98 22 9f e5                                      ldr r2, [pc, #0x298]
00509754  78 50 8d e2                                      add r5, sp, #0x78
00509758  05 00 a0 e1                                      mov r0, r5
0050975c  02 20 8f e0                                      add r2, pc, r2
00509760  20 10 a0 e3                                      mov r1, #0x20
00509764  0e 30 a0 e1                                      mov r3, lr
00509768  b5 12 f8 eb                                      bl #0x30e244
0050976c  fc fe ff ea                                      b #0x509364
00509770  7c 22 9f e5                                      ldr r2, [pc, #0x27c]
00509774  78 50 8d e2                                      add r5, sp, #0x78
00509778  05 00 a0 e1                                      mov r0, r5
0050977c  02 20 8f e0                                      add r2, pc, r2
00509780  20 10 a0 e3                                      mov r1, #0x20
00509784  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00509788  ad 12 f8 eb                                      bl #0x30e244
0050978c  4d ff ff ea                                      b #0x5094c8
00509790  54 30 9d e5                                      ldr r3, [sp, #0x54]
00509794  07 30 83 e2                                      add r3, r3, #7
00509798  07 30 c3 e3                                      bic r3, r3, #7
0050979c  08 20 83 e2                                      add r2, r3, #8
005097a0  54 20 8d e5                                      str r2, [sp, #0x54]
005097a4  d0 00 c3 e1                                      ldrd r0, r1, [r3]
005097a8  bc 13 f8 eb                                      bl #0x30e6a0
005097ac  20 00 8d e5                                      str r0, [sp, #0x20]
005097b0  fe fe ff ea                                      b #0x5093b0
005097b4  54 30 9d e5                                      ldr r3, [sp, #0x54]
005097b8  04 20 83 e2                                      add r2, r3, #4
005097bc  54 20 8d e5                                      str r2, [sp, #0x54]
005097c0  00 30 93 e5                                      ldr r3, [r3]
005097c4  1c 30 8d e5                                      str r3, [sp, #0x1c]
005097c8  62 ff ff ea                                      b #0x509558
005097cc  00 10 a0 e3                                      mov r1, #0
005097d0  20 00 9d e5                                      ldr r0, [sp, #0x20]
005097d4  cc 13 f8 eb                                      bl #0x30e70c
005097d8  00 00 50 e3                                      cmp r0, #0
005097dc  cd 1c 0c 03                                      movweq r1, #0xcccd
005097e0  cd 1c 0c 13                                      movwne r1, #0xcccd
005097e4  4c 1d 43 03                                      movteq r1, #0x3d4c
005097e8  4c 1d 4b 13                                      movtne r1, #0xbd4c
005097ec  fa fe ff ea                                      b #0x5093dc
005097f0  06 00 a0 e1                                      mov r0, r6
005097f4  2a 14 f8 eb                                      bl #0x30e8a4
005097f8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005097fc  f0 00 cd e1                                      strd r0, r1, [sp]
00509800  05 00 a0 e1                                      mov r0, r5
00509804  10 10 a0 e3                                      mov r1, #0x10
00509808  8d 12 f8 eb                                      bl #0x30e244
0050980c  47 ff ff ea                                      b #0x509530
00509810  54 30 9d e5                                      ldr r3, [sp, #0x54]
00509814  07 30 83 e2                                      add r3, r3, #7
00509818  07 30 c3 e3                                      bic r3, r3, #7
0050981c  08 20 83 e2                                      add r2, r3, #8
00509820  54 20 8d e5                                      str r2, [sp, #0x54]
00509824  d0 00 c3 e1                                      ldrd r0, r1, [r3]
00509828  9c 13 f8 eb                                      bl #0x30e6a0
0050982c  42 14 a0 e3                                      mov r1, #0x42000000
00509830  32 17 81 e2                                      add r1, r1, #0xc80000
00509834  16 15 f8 eb                                      bl #0x30ec94
00509838  20 00 8d e5                                      str r0, [sp, #0x20]
0050983c  db fe ff ea                                      b #0x5093b0
00509840  b0 21 9f e5                                      ldr r2, [pc, #0x1b0]
00509844  78 50 8d e2                                      add r5, sp, #0x78
00509848  0c 30 a0 e1                                      mov r3, ip
0050984c  02 20 8f e0                                      add r2, pc, r2
00509850  05 00 a0 e1                                      mov r0, r5
00509854  20 10 a0 e3                                      mov r1, #0x20
00509858  79 12 f8 eb                                      bl #0x30e244
0050985c  19 ff ff ea                                      b #0x5094c8
00509860  94 21 9f e5                                      ldr r2, [pc, #0x194]
00509864  78 50 8d e2                                      add r5, sp, #0x78
00509868  0c 30 a0 e1                                      mov r3, ip
0050986c  02 20 8f e0                                      add r2, pc, r2
00509870  05 00 a0 e1                                      mov r0, r5
00509874  20 10 a0 e3                                      mov r1, #0x20
00509878  71 12 f8 eb                                      bl #0x30e244
0050987c  b8 fe ff ea                                      b #0x509364
00509880  78 21 9f e5                                      ldr r2, [pc, #0x178]
00509884  0c c0 8d e5                                      str ip, [sp, #0xc]
00509888  38 c0 9d e5                                      ldr ip, [sp, #0x38]
0050988c  78 50 8d e2                                      add r5, sp, #0x78
00509890  02 20 8f e0                                      add r2, pc, r2
00509894  05 00 a0 e1                                      mov r0, r5
00509898  20 10 a0 e3                                      mov r1, #0x20
0050989c  00 50 8d e8                                      stm sp, {ip, lr}
005098a0  08 c0 8d e5                                      str ip, [sp, #8]
005098a4  66 12 f8 eb                                      bl #0x30e244
005098a8  ad fe ff ea                                      b #0x509364
005098ac  50 21 9f e5                                      ldr r2, [pc, #0x150]
005098b0  0c c0 8d e5                                      str ip, [sp, #0xc]
005098b4  38 c0 9d e5                                      ldr ip, [sp, #0x38]
005098b8  78 50 8d e2                                      add r5, sp, #0x78
005098bc  02 20 8f e0                                      add r2, pc, r2
005098c0  05 00 a0 e1                                      mov r0, r5
005098c4  20 10 a0 e3                                      mov r1, #0x20
005098c8  00 50 8d e8                                      stm sp, {ip, lr}
005098cc  08 c0 8d e5                                      str ip, [sp, #8]
005098d0  5b 12 f8 eb                                      bl #0x30e244
005098d4  fb fe ff ea                                      b #0x5094c8
005098d8  54 20 9d e5                                      ldr r2, [sp, #0x54]
005098dc  d3 3d 04 e3                                      movw r3, #0x4dd3
005098e0  62 30 41 e3                                      movt r3, #0x1062
005098e4  04 10 82 e2                                      add r1, r2, #4
005098e8  54 10 8d e5                                      str r1, [sp, #0x54]
005098ec  00 20 92 e5                                      ldr r2, [r2]
005098f0  93 c2 c3 e0                                      smull ip, r3, r3, r2
005098f4  c2 2f a0 e1                                      asr r2, r2, #0x1f
005098f8  43 23 62 e0                                      rsb r2, r2, r3, asr #6
005098fc  1c 20 8d e5                                      str r2, [sp, #0x1c]
00509900  14 ff ff ea                                      b #0x509558
00509904  54 30 9d e5                                      ldr r3, [sp, #0x54]
00509908  07 30 83 e2                                      add r3, r3, #7
0050990c  07 30 c3 e3                                      bic r3, r3, #7
00509910  08 20 83 e2                                      add r2, r3, #8
00509914  54 20 8d e5                                      str r2, [sp, #0x54]
00509918  d0 00 c3 e1                                      ldrd r0, r1, [r3]
0050991c  5f 13 f8 eb                                      bl #0x30e6a0
00509920  11 13 a0 e3                                      mov r1, #0x44000000
00509924  7a 18 81 e2                                      add r1, r1, #0x7a0000
00509928  d9 14 f8 eb                                      bl #0x30ec94
0050992c  20 00 8d e5                                      str r0, [sp, #0x20]
00509930  9e fe ff ea                                      b #0x5093b0
00509934  54 30 9d e5                                      ldr r3, [sp, #0x54]
00509938  04 20 83 e2                                      add r2, r3, #4
0050993c  54 20 8d e5                                      str r2, [sp, #0x54]
00509940  00 30 93 e5                                      ldr r3, [r3]
00509944  64 20 a0 e3                                      mov r2, #0x64
00509948  92 03 02 e0                                      mul r2, r2, r3
0050994c  1c 20 8d e5                                      str r2, [sp, #0x1c]
00509950  00 ff ff ea                                      b #0x509558
00509954  54 30 9d e5                                      ldr r3, [sp, #0x54]
00509958  07 30 83 e2                                      add r3, r3, #7
0050995c  07 30 c3 e3                                      bic r3, r3, #7
00509960  08 20 83 e2                                      add r2, r3, #8
00509964  54 20 8d e5                                      str r2, [sp, #0x54]
00509968  d0 00 c3 e1                                      ldrd r0, r1, [r3]
0050996c  4b 13 f8 eb                                      bl #0x30e6a0
00509970  42 14 a0 e3                                      mov r1, #0x42000000
00509974  32 17 81 e2                                      add r1, r1, #0xc80000
00509978  fb 14 f8 eb                                      bl #0x30ed6c
0050997c  20 00 8d e5                                      str r0, [sp, #0x20]
00509980  8a fe ff ea                                      b #0x5093b0
00509984  54 30 9d e5                                      ldr r3, [sp, #0x54]
00509988  07 30 83 e2                                      add r3, r3, #7
0050998c  07 30 c3 e3                                      bic r3, r3, #7
00509990  08 20 83 e2                                      add r2, r3, #8
00509994  54 20 8d e5                                      str r2, [sp, #0x54]
00509998  d0 00 c3 e1                                      ldrd r0, r1, [r3]
0050999c  3f 13 f8 eb                                      bl #0x30e6a0
005099a0  01 11 a0 e3                                      mov r1, #0x40000000
005099a4  0a 16 81 e2                                      add r1, r1, #0xa00000
005099a8  b9 14 f8 eb                                      bl #0x30ec94
005099ac  20 00 8d e5                                      str r0, [sp, #0x20]
005099b0  7e fe ff ea                                      b #0x5093b0
005099b4  55 12 f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005099b8  88 bb 48 00 ac 40 00 00 f4 37 00 00 a4 5c 3b 00  .byte 0x88, 0xbb, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x5c, 0x3b, 0x00
005099c8  18 2e 3d 00 0c 2e 3d 00 08 2e 3d 00 ec 2d 3d 00  .byte 0x18, 0x2e, 0x3d, 0x00, 0x0c, 0x2e, 0x3d, 0x00, 0x08, 0x2e, 0x3d, 0x00, 0xec, 0x2d, 0x3d, 0x00
005099d8  c8 29 3c 00 f4 2d 3d 00 dc 2d 3d 00 5c 29 3d 00  .byte 0xc8, 0x29, 0x3c, 0x00, 0xf4, 0x2d, 0x3d, 0x00, 0xdc, 0x2d, 0x3d, 0x00, 0x5c, 0x29, 0x3d, 0x00
005099e8  68 29 3d 00 38 28 3d 00 54 87 3b 00 34 87 3b 00  .byte 0x68, 0x29, 0x3d, 0x00, 0x38, 0x28, 0x3d, 0x00, 0x54, 0x87, 0x3b, 0x00, 0x34, 0x87, 0x3b, 0x00
005099f8  64 86 3b 00 44 86 3b 00 78 25 3d 00 4c 25 3d 00  .byte 0x64, 0x86, 0x3b, 0x00, 0x44, 0x86, 0x3b, 0x00, 0x78, 0x25, 0x3d, 0x00, 0x4c, 0x25, 0x3d, 0x00

; FUNCTION 0x00509a08, declared_size=228, range_size=228, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager11preloadPackEj
; demangled: StringManager::preloadPack(unsigned int)
; decoder-mode: arm
00509a08  70 40 2d e9                                      push {r4, r5, r6, lr}
00509a0c  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00509a10  08 00 51 e3                                      cmp r1, #8
00509a14  08 d0 4d e2                                      sub sp, sp, #8
00509a18  01 50 a0 e1                                      mov r5, r1
00509a1c  03 30 8f e0                                      add r3, pc, r3
00509a20  00 60 a0 e1                                      mov r6, r0
00509a24  08 00 00 9a                                      bls #0x509a4c
00509a28  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00509a2c  02 20 93 e7                                      ldr r2, [r3, r2]
00509a30  00 20 92 e5                                      ldr r2, [r2]
00509a34  02 00 52 e3                                      cmp r2, #2
00509a38  00 30 a0 03                                      moveq r3, #0
00509a3c  00 30 83 05                                      streq r3, [r3]
00509a40  01 00 00 0a                                      beq #0x509a4c
00509a44  01 00 52 e3                                      cmp r2, #1
00509a48  14 00 00 0a                                      beq #0x509aa0
00509a4c  00 40 a0 e3                                      mov r4, #0
00509a50  02 00 00 ea                                      b #0x509a60
00509a54  01 40 84 e2                                      add r4, r4, #1
00509a58  25 00 54 e3                                      cmp r4, #0x25
00509a5c  0c 00 00 0a                                      beq #0x509a94
00509a60  04 20 a0 e1                                      mov r2, r4
00509a64  05 10 a0 e1                                      mov r1, r5
00509a68  06 00 a0 e1                                      mov r0, r6
00509a6c  fd f6 ff eb                                      bl #0x507668
00509a70  00 30 50 e2                                      subs r3, r0, #0
00509a74  f6 ff ff 1a                                      bne #0x509a54
00509a78  04 20 a0 e1                                      mov r2, r4
00509a7c  06 00 a0 e1                                      mov r0, r6
00509a80  05 10 a0 e1                                      mov r1, r5
00509a84  01 40 84 e2                                      add r4, r4, #1
00509a88  a3 fa ff eb                                      bl #0x50851c
00509a8c  25 00 54 e3                                      cmp r4, #0x25
00509a90  f2 ff ff 1a                                      bne #0x509a60
00509a94  01 00 a0 e3                                      mov r0, #1
00509a98  08 d0 8d e2                                      add sp, sp, #8
00509a9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00509aa0  34 00 9f e5                                      ldr r0, [pc, #0x34]
00509aa4  34 10 9f e5                                      ldr r1, [pc, #0x34]
00509aa8  34 20 9f e5                                      ldr r2, [pc, #0x34]
00509aac  00 00 93 e7                                      ldr r0, [r3, r0]
00509ab0  30 30 9f e5                                      ldr r3, [pc, #0x30]
00509ab4  6a c1 00 e3                                      movw ip, #0x16a
00509ab8  01 10 8f e0                                      add r1, pc, r1
00509abc  02 20 8f e0                                      add r2, pc, r2
00509ac0  03 30 8f e0                                      add r3, pc, r3
00509ac4  a8 00 80 e2                                      add r0, r0, #0xa8
00509ac8  00 c0 8d e5                                      str ip, [sp]
00509acc  4c 11 f8 eb                                      bl #0x30e004
00509ad0  dd ff ff ea                                      b #0x509a4c
; mapping-symbol data/literal pool
00509ad4  74 b0 48 00 c0 39 00 00 c0 19 00 00 20 49 3b 00  .byte 0x74, 0xb0, 0x48, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x20, 0x49, 0x3b, 0x00
00509ae4  0c 21 3d 00 88 20 3d 00                          .byte 0x0c, 0x21, 0x3d, 0x00, 0x88, 0x20, 0x3d, 0x00

; FUNCTION 0x00509aec, declared_size=2440, range_size=2440, mode=arm
; class-group: StringManager
; alias: _ZN13StringManager7parseExERSsPKcRK7VarArgs
; demangled: StringManager::parseEx(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&, char const*, VarArgs const&)
; decoder-mode: arm
00509aec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00509af0  30 69 9f e5                                      ldr r6, [pc, #0x930]
00509af4  30 a9 9f e5                                      ldr sl, [pc, #0x930]
00509af8  00 40 52 e2                                      subs r4, r2, #0
00509afc  06 60 8f e0                                      add r6, pc, r6
00509b00  0a 20 96 e7                                      ldr r2, [r6, sl]
00509b04  9c d0 4d e2                                      sub sp, sp, #0x9c
00509b08  10 00 8d e5                                      str r0, [sp, #0x10]
00509b0c  00 20 92 e5                                      ldr r2, [r2]
00509b10  01 80 a0 e1                                      mov r8, r1
00509b14  03 90 a0 e1                                      mov sb, r3
00509b18  94 20 8d e5                                      str r2, [sp, #0x94]
00509b1c  02 00 00 0a                                      beq #0x509b2c
00509b20  d0 30 d4 e1                                      ldrsb r3, [r4]
00509b24  00 00 53 e3                                      cmp r3, #0
00509b28  08 00 00 1a                                      bne #0x509b50
00509b2c  00 b0 a0 e3                                      mov fp, #0
00509b30  0a 30 96 e7                                      ldr r3, [r6, sl]
00509b34  94 20 9d e5                                      ldr r2, [sp, #0x94]
00509b38  0b 00 a0 e1                                      mov r0, fp
00509b3c  00 30 93 e5                                      ldr r3, [r3]
00509b40  03 00 52 e1                                      cmp r2, r3
00509b44  36 02 00 1a                                      bne #0x50a424
00509b48  9c d0 8d e2                                      add sp, sp, #0x9c
00509b4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00509b50  d8 28 9f e5                                      ldr r2, [pc, #0x8d8]
00509b54  d8 58 9f e5                                      ldr r5, [pc, #0x8d8]
00509b58  02 70 96 e7                                      ldr r7, [r6, r2]
00509b5c  14 20 8d e5                                      str r2, [sp, #0x14]
00509b60  d0 28 9f e5                                      ldr r2, [pc, #0x8d0]
00509b64  05 50 8f e0                                      add r5, pc, r5
00509b68  05 10 a0 e1                                      mov r1, r5
00509b6c  02 20 8f e0                                      add r2, pc, r2
00509b70  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
00509b74  18 ec fe eb                                      bl #0x4c4bdc
00509b78  00 10 a0 e1                                      mov r1, r0
00509b7c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00509b80  d5 fc ff eb                                      bl #0x508edc
00509b84  b0 28 9f e5                                      ldr r2, [pc, #0x8b0]
00509b88  2c 00 8d e5                                      str r0, [sp, #0x2c]
00509b8c  05 10 a0 e1                                      mov r1, r5
00509b90  02 20 8f e0                                      add r2, pc, r2
00509b94  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
00509b98  0f ec fe eb                                      bl #0x4c4bdc
00509b9c  00 10 a0 e1                                      mov r1, r0
00509ba0  10 00 9d e5                                      ldr r0, [sp, #0x10]
00509ba4  cc fc ff eb                                      bl #0x508edc
00509ba8  90 28 9f e5                                      ldr r2, [pc, #0x890]
00509bac  28 00 8d e5                                      str r0, [sp, #0x28]
00509bb0  05 10 a0 e1                                      mov r1, r5
00509bb4  02 20 8f e0                                      add r2, pc, r2
00509bb8  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
00509bbc  06 ec fe eb                                      bl #0x4c4bdc
00509bc0  00 10 a0 e1                                      mov r1, r0
00509bc4  10 00 9d e5                                      ldr r0, [sp, #0x10]
00509bc8  c3 fc ff eb                                      bl #0x508edc
00509bcc  30 11 f8 eb                                      bl #0x30e094
00509bd0  20 00 8d e5                                      str r0, [sp, #0x20]
00509bd4  00 30 d4 e5                                      ldrb r3, [r4]
00509bd8  00 00 53 e3                                      cmp r3, #0
00509bdc  03 b0 a0 01                                      moveq fp, r3
00509be0  8b 00 00 0a                                      beq #0x509e14
00509be4  58 28 9f e5                                      ldr r2, [pc, #0x858]
00509be8  58 78 9f e5                                      ldr r7, [pc, #0x858]
00509bec  00 b0 a0 e3                                      mov fp, #0
00509bf0  02 20 8f e0                                      add r2, pc, r2
00509bf4  24 20 8d e5                                      str r2, [sp, #0x24]
00509bf8  4c 28 9f e5                                      ldr r2, [pc, #0x84c]
00509bfc  34 70 8d e5                                      str r7, [sp, #0x34]
00509c00  01 40 84 e2                                      add r4, r4, #1
00509c04  02 20 8f e0                                      add r2, pc, r2
00509c08  3c 20 8d e5                                      str r2, [sp, #0x3c]
00509c0c  3c 28 9f e5                                      ldr r2, [pc, #0x83c]
00509c10  0b 70 a0 e1                                      mov r7, fp
00509c14  0b 50 a0 e1                                      mov r5, fp
00509c18  02 20 8f e0                                      add r2, pc, r2
00509c1c  38 20 8d e5                                      str r2, [sp, #0x38]
00509c20  2c 28 9f e5                                      ldr r2, [pc, #0x82c]
00509c24  1c a0 8d e5                                      str sl, [sp, #0x1c]
00509c28  02 20 8f e0                                      add r2, pc, r2
00509c2c  30 20 8d e5                                      str r2, [sp, #0x30]
00509c30  0b 00 00 ea                                      b #0x509c64
00509c34  73 30 af e6                                      sxtb r3, r3
00509c38  5e 00 53 e3                                      cmp r3, #0x5e
00509c3c  01 70 a0 03                                      moveq r7, #1
00509c40  04 00 00 0a                                      beq #0x509c58
00509c44  7c 00 53 e3                                      cmp r3, #0x7c
00509c48  62 01 00 0a                                      beq #0x50a1d8
00509c4c  08 00 a0 e1                                      mov r0, r8
00509c50  04 20 a0 e1                                      mov r2, r4
00509c54  ea 1a f8 eb                                      bl #0x310804
00509c58  01 30 d4 e4                                      ldrb r3, [r4], #1
00509c5c  00 00 53 e3                                      cmp r3, #0
00509c60  6a 00 00 0a                                      beq #0x509e10
00509c64  00 00 57 e3                                      cmp r7, #0
00509c68  01 10 44 e2                                      sub r1, r4, #1
00509c6c  f0 ff ff 0a                                      beq #0x509c34
00509c70  73 20 af e6                                      sxtb r2, r3
00509c74  23 30 42 e2                                      sub r3, r2, #0x23
00509c78  53 00 53 e3                                      cmp r3, #0x53
00509c7c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00509c80  5e 00 00 ea                                      b #0x509e00
00509c84  4e 01 00 ea                                      b #0x50a1c4
00509c88  5c 00 00 ea                                      b #0x509e00
00509c8c  5b 00 00 ea                                      b #0x509e00
00509c90  5a 00 00 ea                                      b #0x509e00
00509c94  59 00 00 ea                                      b #0x509e00
00509c98  58 00 00 ea                                      b #0x509e00
00509c9c  57 00 00 ea                                      b #0x509e00
00509ca0  47 01 00 ea                                      b #0x50a1c4
00509ca4  55 00 00 ea                                      b #0x509e00
00509ca8  54 00 00 ea                                      b #0x509e00
00509cac  53 00 00 ea                                      b #0x509e00
00509cb0  52 00 00 ea                                      b #0x509e00
00509cb4  51 00 00 ea                                      b #0x509e00
00509cb8  50 00 00 ea                                      b #0x509e00
00509cbc  4f 00 00 ea                                      b #0x509e00
00509cc0  4e 00 00 ea                                      b #0x509e00
00509cc4  4d 00 00 ea                                      b #0x509e00
00509cc8  4c 00 00 ea                                      b #0x509e00
00509ccc  4b 00 00 ea                                      b #0x509e00
00509cd0  4a 00 00 ea                                      b #0x509e00
00509cd4  49 00 00 ea                                      b #0x509e00
00509cd8  48 00 00 ea                                      b #0x509e00
00509cdc  47 00 00 ea                                      b #0x509e00
00509ce0  46 00 00 ea                                      b #0x509e00
00509ce4  45 00 00 ea                                      b #0x509e00
00509ce8  44 00 00 ea                                      b #0x509e00
00509cec  43 00 00 ea                                      b #0x509e00
00509cf0  42 00 00 ea                                      b #0x509e00
00509cf4  41 00 00 ea                                      b #0x509e00
00509cf8  40 00 00 ea                                      b #0x509e00
00509cfc  3f 00 00 ea                                      b #0x509e00
00509d00  3e 00 00 ea                                      b #0x509e00
00509d04  3d 00 00 ea                                      b #0x509e00
00509d08  3c 00 00 ea                                      b #0x509e00
00509d0c  3b 00 00 ea                                      b #0x509e00
00509d10  3a 00 00 ea                                      b #0x509e00
00509d14  39 00 00 ea                                      b #0x509e00
00509d18  38 00 00 ea                                      b #0x509e00
00509d1c  37 00 00 ea                                      b #0x509e00
00509d20  36 00 00 ea                                      b #0x509e00
00509d24  35 00 00 ea                                      b #0x509e00
00509d28  34 00 00 ea                                      b #0x509e00
00509d2c  33 00 00 ea                                      b #0x509e00
00509d30  32 00 00 ea                                      b #0x509e00
00509d34  31 00 00 ea                                      b #0x509e00
00509d38  30 00 00 ea                                      b #0x509e00
00509d3c  2f 00 00 ea                                      b #0x509e00
00509d40  2e 00 00 ea                                      b #0x509e00
00509d44  2d 00 00 ea                                      b #0x509e00
00509d48  2c 00 00 ea                                      b #0x509e00
00509d4c  2b 00 00 ea                                      b #0x509e00
00509d50  2a 00 00 ea                                      b #0x509e00
00509d54  29 00 00 ea                                      b #0x509e00
00509d58  28 00 00 ea                                      b #0x509e00
00509d5c  27 00 00 ea                                      b #0x509e00
00509d60  26 00 00 ea                                      b #0x509e00
00509d64  25 00 00 ea                                      b #0x509e00
00509d68  24 00 00 ea                                      b #0x509e00
00509d6c  23 00 00 ea                                      b #0x509e00
00509d70  13 01 00 ea                                      b #0x50a1c4
00509d74  21 00 00 ea                                      b #0x509e00
00509d78  20 00 00 ea                                      b #0x509e00
00509d7c  1f 00 00 ea                                      b #0x509e00
00509d80  1e 00 00 ea                                      b #0x509e00
00509d84  1d 00 00 ea                                      b #0x509e00
00509d88  d6 00 00 ea                                      b #0x50a0e8
00509d8c  1b 00 00 ea                                      b #0x509e00
00509d90  64 00 00 ea                                      b #0x509f28
00509d94  63 00 00 ea                                      b #0x509f28
00509d98  62 00 00 ea                                      b #0x509f28
00509d9c  61 00 00 ea                                      b #0x509f28
00509da0  16 00 00 ea                                      b #0x509e00
00509da4  cf 00 00 ea                                      b #0x50a0e8
00509da8  14 00 00 ea                                      b #0x509e00
00509dac  5d 00 00 ea                                      b #0x509f28
00509db0  07 00 00 ea                                      b #0x509dd4
00509db4  11 00 00 ea                                      b #0x509e00
00509db8  ca 00 00 ea                                      b #0x50a0e8
00509dbc  0f 00 00 ea                                      b #0x509e00
00509dc0  0e 00 00 ea                                      b #0x509e00
00509dc4  42 00 00 ea                                      b #0x509ed4
00509dc8  3a 00 00 ea                                      b #0x509eb8
00509dcc  0b 00 00 ea                                      b #0x509e00
00509dd0  29 00 00 ea                                      b #0x509e7c
00509dd4  68 70 8d e2                                      add r7, sp, #0x68
00509dd8  20 10 a0 e3                                      mov r1, #0x20
00509ddc  24 20 9d e5                                      ldr r2, [sp, #0x24]
00509de0  07 00 a0 e1                                      mov r0, r7
00509de4  16 11 f8 eb                                      bl #0x30e244
00509de8  07 00 a0 e1                                      mov r0, r7
00509dec  18 10 f8 eb                                      bl #0x30de54
00509df0  07 10 a0 e1                                      mov r1, r7
00509df4  00 20 87 e0                                      add r2, r7, r0
00509df8  08 00 a0 e1                                      mov r0, r8
00509dfc  80 1a f8 eb                                      bl #0x310804
00509e00  01 30 d4 e4                                      ldrb r3, [r4], #1
00509e04  00 70 a0 e3                                      mov r7, #0
00509e08  00 00 53 e3                                      cmp r3, #0
00509e0c  94 ff ff 1a                                      bne #0x509c64
00509e10  1c a0 9d e5                                      ldr sl, [sp, #0x1c]
00509e14  14 30 98 e5                                      ldr r3, [r8, #0x14]
00509e18  10 00 98 e5                                      ldr r0, [r8, #0x10]
00509e1c  00 10 a0 e3                                      mov r1, #0
00509e20  00 00 63 e0                                      rsb r0, r3, r0
00509e24  80 00 80 e2                                      add r0, r0, #0x80
00509e28  cf 19 f8 eb                                      bl #0x31056c
00509e2c  00 40 a0 e1                                      mov r4, r0
00509e30  10 00 9d e5                                      ldr r0, [sp, #0x10]
00509e34  14 50 98 e5                                      ldr r5, [r8, #0x14]
00509e38  b3 f5 ff eb                                      bl #0x50750c
00509e3c  04 10 a0 e1                                      mov r1, r4
00509e40  00 30 a0 e1                                      mov r3, r0
00509e44  00 20 e0 e3                                      mvn r2, #0
00509e48  05 00 a0 e1                                      mov r0, r5
00509e4c  f1 22 09 eb                                      bl #0x752a18
00509e50  04 00 a0 e1                                      mov r0, r4
00509e54  fe 0f f8 eb                                      bl #0x30de54
00509e58  04 10 a0 e1                                      mov r1, r4
00509e5c  00 20 84 e0                                      add r2, r4, r0
00509e60  08 00 a0 e1                                      mov r0, r8
00509e64  dd 1a f8 eb                                      bl #0x3109e0
00509e68  00 00 54 e3                                      cmp r4, #0
00509e6c  2f ff ff 0a                                      beq #0x509b30
00509e70  04 00 a0 e1                                      mov r0, r4
00509e74  71 19 f8 eb                                      bl #0x310440
00509e78  2c ff ff ea                                      b #0x509b30
00509e7c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00509e80  88 70 8d e2                                      add r7, sp, #0x88
00509e84  07 10 a0 e1                                      mov r1, r7
00509e88  0a 20 a0 e3                                      mov r2, #0xa
00509e8c  01 30 a0 e3                                      mov r3, #1
00509e90  0c 00 96 e7                                      ldr r0, [r6, ip]
00509e94  05 56 f8 eb                                      bl #0x31f6b0
00509e98  07 00 a0 e1                                      mov r0, r7
00509e9c  ec 0f f8 eb                                      bl #0x30de54
00509ea0  07 10 a0 e1                                      mov r1, r7
00509ea4  00 20 87 e0                                      add r2, r7, r0
00509ea8  08 00 a0 e1                                      mov r0, r8
00509eac  54 1a f8 eb                                      bl #0x310804
00509eb0  00 70 a0 e3                                      mov r7, #0
00509eb4  67 ff ff ea                                      b #0x509c58
00509eb8  14 e0 9d e5                                      ldr lr, [sp, #0x14]
00509ebc  48 70 8d e2                                      add r7, sp, #0x48
00509ec0  07 10 a0 e1                                      mov r1, r7
00509ec4  20 20 a0 e3                                      mov r2, #0x20
00509ec8  0e 00 96 e7                                      ldr r0, [r6, lr]
00509ecc  ff 59 f8 eb                                      bl #0x3206d0
00509ed0  f0 ff ff ea                                      b #0x509e98
00509ed4  0a 00 99 e9                                      ldmib sb, {r1, r3}
00509ed8  03 30 61 e0                                      rsb r3, r1, r3
00509edc  43 31 a0 e1                                      asr r3, r3, #2
00509ee0  03 21 83 e0                                      add r2, r3, r3, lsl #2
00509ee4  02 22 82 e0                                      add r2, r2, r2, lsl #4
00509ee8  02 24 82 e0                                      add r2, r2, r2, lsl #8
00509eec  02 28 82 e0                                      add r2, r2, r2, lsl #16
00509ef0  82 20 83 e0                                      add r2, r3, r2, lsl #1
00509ef4  05 00 52 e1                                      cmp r2, r5
00509ef8  c0 ff ff 9a                                      bls #0x509e00
00509efc  0c 30 a0 e3                                      mov r3, #0xc
00509f00  93 15 21 e0                                      mla r1, r3, r5, r1
00509f04  01 50 85 e2                                      add r5, r5, #1
00509f08  08 10 91 e5                                      ldr r1, [r1, #8]
00509f0c  00 00 51 e3                                      cmp r1, #0
00509f10  01 70 a0 01                                      moveq r7, r1
00509f14  4f ff ff 0a                                      beq #0x509c58
00509f18  08 00 a0 e1                                      mov r0, r8
00509f1c  17 9f fb eb                                      bl #0x3f1b80
00509f20  00 70 a0 e3                                      mov r7, #0
00509f24  4b ff ff ea                                      b #0x509c58
00509f28  04 30 99 e5                                      ldr r3, [sb, #4]
00509f2c  08 10 99 e5                                      ldr r1, [sb, #8]
00509f30  01 10 63 e0                                      rsb r1, r3, r1
00509f34  41 11 a0 e1                                      asr r1, r1, #2
00509f38  01 01 81 e0                                      add r0, r1, r1, lsl #2
00509f3c  00 02 80 e0                                      add r0, r0, r0, lsl #4
00509f40  00 04 80 e0                                      add r0, r0, r0, lsl #8
00509f44  00 08 80 e0                                      add r0, r0, r0, lsl #16
00509f48  80 00 81 e0                                      add r0, r1, r0, lsl #1
00509f4c  05 00 50 e1                                      cmp r0, r5
00509f50  aa ff ff 9a                                      bls #0x509e00
00509f54  66 00 52 e3                                      cmp r2, #0x66
00509f58  e8 00 00 0a                                      beq #0x50a300
00509f5c  68 00 52 e3                                      cmp r2, #0x68
00509f60  0e 01 00 0a                                      beq #0x50a3a0
00509f64  69 00 52 e3                                      cmp r2, #0x69
00509f68  b1 00 00 0a                                      beq #0x50a234
00509f6c  67 00 52 e3                                      cmp r2, #0x67
00509f70  1a 01 00 0a                                      beq #0x50a3e0
00509f74  6d 00 52 e3                                      cmp r2, #0x6d
00509f78  bd 00 00 0a                                      beq #0x50a274
00509f7c  01 50 85 e2                                      add r5, r5, #1
00509f80  00 10 a0 e3                                      mov r1, #0
00509f84  18 00 9d e5                                      ldr r0, [sp, #0x18]
00509f88  df 11 f8 eb                                      bl #0x30e70c
00509f8c  00 00 50 e3                                      cmp r0, #0
00509f90  0a 17 0d 03                                      movweq r1, #0xd70a
00509f94  0a 17 0d 13                                      movwne r1, #0xd70a
00509f98  18 00 9d e5                                      ldr r0, [sp, #0x18]
00509f9c  a3 1b 43 03                                      movteq r1, #0x3ba3
00509fa0  a3 1b 4b 13                                      movtne r1, #0xbba3
00509fa4  fe 12 f8 eb                                      bl #0x30eba4
00509fa8  18 00 8d e5                                      str r0, [sp, #0x18]
00509fac  44 10 8d e2                                      add r1, sp, #0x44
00509fb0  18 00 9d e5                                      ldr r0, [sp, #0x18]
00509fb4  9d 12 f8 eb                                      bl #0x30ea30
00509fb8  00 10 a0 e3                                      mov r1, #0
00509fbc  00 70 a0 e1                                      mov r7, r0
00509fc0  18 00 9d e5                                      ldr r0, [sp, #0x18]
00509fc4  d0 11 f8 eb                                      bl #0x30e70c
00509fc8  00 00 50 e3                                      cmp r0, #0
00509fcc  0a 17 0d 03                                      movweq r1, #0xd70a
00509fd0  0a 17 0d 13                                      movwne r1, #0xd70a
00509fd4  a3 1b 43 03                                      movteq r1, #0x3ba3
00509fd8  a3 1b 4b 13                                      movtne r1, #0xbba3
00509fdc  07 00 a0 e1                                      mov r0, r7
00509fe0  f1 10 f8 eb                                      bl #0x30e3ac
00509fe4  00 a0 a0 e1                                      mov sl, r0
00509fe8  44 00 9d e5                                      ldr r0, [sp, #0x44]
00509fec  36 11 f8 eb                                      bl #0x30e4cc
00509ff0  20 20 9d e5                                      ldr r2, [sp, #0x20]
00509ff4  00 00 52 e1                                      cmp r2, r0
00509ff8  b0 00 00 ca                                      bgt #0x50a2c0
00509ffc  83 3e 0d e3                                      movw r3, #0xde83
0050a000  1b 33 44 e3                                      movt r3, #0x431b
0050a004  93 70 c3 e0                                      smull r7, r3, r3, r0
0050a008  c0 1f a0 e1                                      asr r1, r0, #0x1f
0050a00c  3d 29 a0 e3                                      mov r2, #0xf4000
0050a010  43 39 61 e0                                      rsb r3, r1, r3, asr #18
0050a014  09 2d 82 e2                                      add r2, r2, #0x240
0050a018  92 03 62 e0                                      mls r2, r2, r3, r0
0050a01c  d3 ed 04 e3                                      movw lr, #0x4dd3
0050a020  62 e0 41 e3                                      movt lr, #0x1062
0050a024  9e 70 cc e0                                      smull r7, ip, lr, r0
0050a028  9e 72 ce e0                                      smull r7, lr, lr, r2
0050a02c  4c c3 61 e0                                      rsb ip, r1, ip, asr #6
0050a030  c2 2f a0 e1                                      asr r2, r2, #0x1f
0050a034  fa 1f a0 e3                                      mov r1, #0x3e8
0050a038  00 00 53 e3                                      cmp r3, #0
0050a03c  91 0c 6c e0                                      mls ip, r1, ip, r0
0050a040  4e e3 62 e0                                      rsb lr, r2, lr, asr #6
0050a044  bf 00 00 1a                                      bne #0x50a348
0050a048  00 00 5e e3                                      cmp lr, #0
0050a04c  b6 00 00 0a                                      beq #0x50a32c
0050a050  0e 30 a0 e1                                      mov r3, lr
0050a054  34 e0 9d e5                                      ldr lr, [sp, #0x34]
0050a058  04 c0 8d e5                                      str ip, [sp, #4]
0050a05c  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0050a060  68 70 8d e2                                      add r7, sp, #0x68
0050a064  07 00 a0 e1                                      mov r0, r7
0050a068  20 10 a0 e3                                      mov r1, #0x20
0050a06c  0e 20 8f e0                                      add r2, pc, lr
0050a070  00 c0 8d e5                                      str ip, [sp]
0050a074  72 10 f8 eb                                      bl #0x30e244
0050a078  07 00 a0 e1                                      mov r0, r7
0050a07c  74 0f f8 eb                                      bl #0x30de54
0050a080  07 10 a0 e1                                      mov r1, r7
0050a084  00 20 87 e0                                      add r2, r7, r0
0050a088  08 00 a0 e1                                      mov r0, r8
0050a08c  dc 19 f8 eb                                      bl #0x310804
0050a090  02 a1 ca e3                                      bic sl, sl, #0x80000000
0050a094  17 17 0b e3                                      movw r1, #0xb717
0050a098  0a 00 a0 e1                                      mov r0, sl
0050a09c  d1 18 43 e3                                      movt r1, #0x38d1
0050a0a0  99 11 f8 eb                                      bl #0x30e70c
0050a0a4  00 00 50 e3                                      cmp r0, #0
0050a0a8  54 ff ff 1a                                      bne #0x509e00
0050a0ac  08 00 a0 e1                                      mov r0, r8
0050a0b0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0050a0b4  b1 9e fb eb                                      bl #0x3f1b80
0050a0b8  d1 30 54 e1                                      ldrsb r3, [r4, #-1]
0050a0bc  6d 00 53 e3                                      cmp r3, #0x6d
0050a0c0  ce 00 00 0a                                      beq #0x50a400
0050a0c4  0a 00 a0 e1                                      mov r0, sl
0050a0c8  f5 11 f8 eb                                      bl #0x30e8a4
0050a0cc  38 20 9d e5                                      ldr r2, [sp, #0x38]
0050a0d0  f0 00 cd e1                                      strd r0, r1, [sp]
0050a0d4  10 10 a0 e3                                      mov r1, #0x10
0050a0d8  07 00 a0 e1                                      mov r0, r7
0050a0dc  58 10 f8 eb                                      bl #0x30e244
0050a0e0  02 10 87 e2                                      add r1, r7, #2
0050a0e4  8b ff ff ea                                      b #0x509f18
0050a0e8  04 30 99 e5                                      ldr r3, [sb, #4]
0050a0ec  08 10 99 e5                                      ldr r1, [sb, #8]
0050a0f0  01 10 63 e0                                      rsb r1, r3, r1
0050a0f4  41 11 a0 e1                                      asr r1, r1, #2
0050a0f8  01 01 81 e0                                      add r0, r1, r1, lsl #2
0050a0fc  00 02 80 e0                                      add r0, r0, r0, lsl #4
0050a100  00 04 80 e0                                      add r0, r0, r0, lsl #8
0050a104  00 08 80 e0                                      add r0, r0, r0, lsl #16
0050a108  80 00 81 e0                                      add r0, r1, r0, lsl #1
0050a10c  05 00 50 e1                                      cmp r0, r5
0050a110  3a ff ff 9a                                      bls #0x509e00
0050a114  64 00 52 e3                                      cmp r2, #0x64
0050a118  7e 00 00 0a                                      beq #0x50a318
0050a11c  6b 00 52 e3                                      cmp r2, #0x6b
0050a120  a6 00 00 0a                                      beq #0x50a3c0
0050a124  70 00 52 e3                                      cmp r2, #0x70
0050a128  49 00 00 0a                                      beq #0x50a254
0050a12c  18 00 9d e5                                      ldr r0, [sp, #0x18]
0050a130  e5 10 f8 eb                                      bl #0x30e4cc
0050a134  20 20 9d e5                                      ldr r2, [sp, #0x20]
0050a138  01 50 85 e2                                      add r5, r5, #1
0050a13c  00 00 52 e1                                      cmp r2, r0
0050a140  66 00 00 ca                                      bgt #0x50a2e0
0050a144  83 3e 0d e3                                      movw r3, #0xde83
0050a148  1b 33 44 e3                                      movt r3, #0x431b
0050a14c  93 70 c3 e0                                      smull r7, r3, r3, r0
0050a150  c0 1f a0 e1                                      asr r1, r0, #0x1f
0050a154  3d 29 a0 e3                                      mov r2, #0xf4000
0050a158  43 39 61 e0                                      rsb r3, r1, r3, asr #18
0050a15c  09 2d 82 e2                                      add r2, r2, #0x240
0050a160  92 03 62 e0                                      mls r2, r2, r3, r0
0050a164  d3 ed 04 e3                                      movw lr, #0x4dd3
0050a168  62 e0 41 e3                                      movt lr, #0x1062
0050a16c  9e 70 cc e0                                      smull r7, ip, lr, r0
0050a170  9e 72 ce e0                                      smull r7, lr, lr, r2
0050a174  4c c3 61 e0                                      rsb ip, r1, ip, asr #6
0050a178  c2 2f a0 e1                                      asr r2, r2, #0x1f
0050a17c  fa 1f a0 e3                                      mov r1, #0x3e8
0050a180  00 00 53 e3                                      cmp r3, #0
0050a184  91 0c 6c e0                                      mls ip, r1, ip, r0
0050a188  4e e3 62 e0                                      rsb lr, r2, lr, asr #6
0050a18c  78 00 00 1a                                      bne #0x50a374
0050a190  00 00 5e e3                                      cmp lr, #0
0050a194  1e 00 00 0a                                      beq #0x50a214
0050a198  b8 22 9f e5                                      ldr r2, [pc, #0x2b8]
0050a19c  0e 30 a0 e1                                      mov r3, lr
0050a1a0  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0050a1a4  68 70 8d e2                                      add r7, sp, #0x68
0050a1a8  02 20 8f e0                                      add r2, pc, r2
0050a1ac  07 00 a0 e1                                      mov r0, r7
0050a1b0  20 10 a0 e3                                      mov r1, #0x20
0050a1b4  04 c0 8d e5                                      str ip, [sp, #4]
0050a1b8  00 e0 8d e5                                      str lr, [sp]
0050a1bc  20 10 f8 eb                                      bl #0x30e244
0050a1c0  34 ff ff ea                                      b #0x509e98
0050a1c4  08 00 a0 e1                                      mov r0, r8
0050a1c8  04 20 a0 e1                                      mov r2, r4
0050a1cc  8c 19 f8 eb                                      bl #0x310804
0050a1d0  00 70 a0 e3                                      mov r7, #0
0050a1d4  9f fe ff ea                                      b #0x509c58
0050a1d8  7c 22 9f e5                                      ldr r2, [pc, #0x27c]
0050a1dc  68 a0 8d e2                                      add sl, sp, #0x68
0050a1e0  20 10 a0 e3                                      mov r1, #0x20
0050a1e4  02 20 8f e0                                      add r2, pc, r2
0050a1e8  11 30 a0 e3                                      mov r3, #0x11
0050a1ec  0a 00 a0 e1                                      mov r0, sl
0050a1f0  13 10 f8 eb                                      bl #0x30e244
0050a1f4  0a 00 a0 e1                                      mov r0, sl
0050a1f8  15 0f f8 eb                                      bl #0x30de54
0050a1fc  0a 10 a0 e1                                      mov r1, sl
0050a200  00 20 8a e0                                      add r2, sl, r0
0050a204  08 00 a0 e1                                      mov r0, r8
0050a208  7d 19 f8 eb                                      bl #0x310804
0050a20c  01 b0 a0 e3                                      mov fp, #1
0050a210  90 fe ff ea                                      b #0x509c58
0050a214  44 22 9f e5                                      ldr r2, [pc, #0x244]
0050a218  68 70 8d e2                                      add r7, sp, #0x68
0050a21c  0c 30 a0 e1                                      mov r3, ip
0050a220  02 20 8f e0                                      add r2, pc, r2
0050a224  07 00 a0 e1                                      mov r0, r7
0050a228  20 10 a0 e3                                      mov r1, #0x20
0050a22c  04 10 f8 eb                                      bl #0x30e244
0050a230  18 ff ff ea                                      b #0x509e98
0050a234  0c 20 a0 e3                                      mov r2, #0xc
0050a238  92 05 02 e0                                      mul r2, r2, r5
0050a23c  01 11 a0 e3                                      mov r1, #0x40000000
0050a240  02 00 93 e7                                      ldr r0, [r3, r2]
0050a244  0a 16 81 e2                                      add r1, r1, #0xa00000
0050a248  91 12 f8 eb                                      bl #0x30ec94
0050a24c  18 00 8d e5                                      str r0, [sp, #0x18]
0050a250  49 ff ff ea                                      b #0x509f7c
0050a254  0c 20 a0 e3                                      mov r2, #0xc
0050a258  92 05 02 e0                                      mul r2, r2, r5
0050a25c  42 14 a0 e3                                      mov r1, #0x42000000
0050a260  02 00 93 e7                                      ldr r0, [r3, r2]
0050a264  32 17 81 e2                                      add r1, r1, #0xc80000
0050a268  bf 12 f8 eb                                      bl #0x30ed6c
0050a26c  18 00 8d e5                                      str r0, [sp, #0x18]
0050a270  ad ff ff ea                                      b #0x50a12c
0050a274  0c 20 a0 e3                                      mov r2, #0xc
0050a278  92 05 02 e0                                      mul r2, r2, r5
0050a27c  42 14 a0 e3                                      mov r1, #0x42000000
0050a280  32 17 81 e2                                      add r1, r1, #0xc80000
0050a284  02 00 93 e7                                      ldr r0, [r3, r2]
0050a288  81 12 f8 eb                                      bl #0x30ec94
0050a28c  00 10 a0 e3                                      mov r1, #0
0050a290  00 70 a0 e1                                      mov r7, r0
0050a294  1c 11 f8 eb                                      bl #0x30e70c
0050a298  00 00 50 e3                                      cmp r0, #0
0050a29c  cd 0c 0c 13                                      movwne r0, #0xcccd
0050a2a0  01 50 85 e2                                      add r5, r5, #1
0050a2a4  4c 0d 4b 13                                      movtne r0, #0xbd4c
0050a2a8  cd 0c 0c 03                                      movweq r0, #0xcccd
0050a2ac  4c 0d 43 03                                      movteq r0, #0x3d4c
0050a2b0  07 10 a0 e1                                      mov r1, r7
0050a2b4  3a 12 f8 eb                                      bl #0x30eba4
0050a2b8  18 00 8d e5                                      str r0, [sp, #0x18]
0050a2bc  3a ff ff ea                                      b #0x509fac
0050a2c0  9c 21 9f e5                                      ldr r2, [pc, #0x19c]
0050a2c4  68 70 8d e2                                      add r7, sp, #0x68
0050a2c8  00 30 a0 e1                                      mov r3, r0
0050a2cc  02 20 8f e0                                      add r2, pc, r2
0050a2d0  07 00 a0 e1                                      mov r0, r7
0050a2d4  20 10 a0 e3                                      mov r1, #0x20
0050a2d8  d9 0f f8 eb                                      bl #0x30e244
0050a2dc  65 ff ff ea                                      b #0x50a078
0050a2e0  80 21 9f e5                                      ldr r2, [pc, #0x180]
0050a2e4  68 70 8d e2                                      add r7, sp, #0x68
0050a2e8  00 30 a0 e1                                      mov r3, r0
0050a2ec  02 20 8f e0                                      add r2, pc, r2
0050a2f0  07 00 a0 e1                                      mov r0, r7
0050a2f4  20 10 a0 e3                                      mov r1, #0x20
0050a2f8  d1 0f f8 eb                                      bl #0x30e244
0050a2fc  e5 fe ff ea                                      b #0x509e98
0050a300  0c 20 a0 e3                                      mov r2, #0xc
0050a304  92 05 02 e0                                      mul r2, r2, r5
0050a308  01 50 85 e2                                      add r5, r5, #1
0050a30c  02 20 93 e7                                      ldr r2, [r3, r2]
0050a310  18 20 8d e5                                      str r2, [sp, #0x18]
0050a314  19 ff ff ea                                      b #0x509f80
0050a318  0c 20 a0 e3                                      mov r2, #0xc
0050a31c  92 05 02 e0                                      mul r2, r2, r5
0050a320  02 20 93 e7                                      ldr r2, [r3, r2]
0050a324  18 20 8d e5                                      str r2, [sp, #0x18]
0050a328  7f ff ff ea                                      b #0x50a12c
0050a32c  68 70 8d e2                                      add r7, sp, #0x68
0050a330  0c 30 a0 e1                                      mov r3, ip
0050a334  07 00 a0 e1                                      mov r0, r7
0050a338  20 10 a0 e3                                      mov r1, #0x20
0050a33c  30 20 9d e5                                      ldr r2, [sp, #0x30]
0050a340  bf 0f f8 eb                                      bl #0x30e244
0050a344  4b ff ff ea                                      b #0x50a078
0050a348  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
0050a34c  0c c0 8d e5                                      str ip, [sp, #0xc]
0050a350  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0050a354  68 70 8d e2                                      add r7, sp, #0x68
0050a358  02 20 8f e0                                      add r2, pc, r2
0050a35c  07 00 a0 e1                                      mov r0, r7
0050a360  20 10 a0 e3                                      mov r1, #0x20
0050a364  00 50 8d e8                                      stm sp, {ip, lr}
0050a368  08 c0 8d e5                                      str ip, [sp, #8]
0050a36c  b4 0f f8 eb                                      bl #0x30e244
0050a370  40 ff ff ea                                      b #0x50a078
0050a374  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
0050a378  0c c0 8d e5                                      str ip, [sp, #0xc]
0050a37c  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0050a380  68 70 8d e2                                      add r7, sp, #0x68
0050a384  02 20 8f e0                                      add r2, pc, r2
0050a388  07 00 a0 e1                                      mov r0, r7
0050a38c  20 10 a0 e3                                      mov r1, #0x20
0050a390  00 50 8d e8                                      stm sp, {ip, lr}
0050a394  08 c0 8d e5                                      str ip, [sp, #8]
0050a398  a9 0f f8 eb                                      bl #0x30e244
0050a39c  bd fe ff ea                                      b #0x509e98
0050a3a0  0c 20 a0 e3                                      mov r2, #0xc
0050a3a4  92 05 02 e0                                      mul r2, r2, r5
0050a3a8  42 14 a0 e3                                      mov r1, #0x42000000
0050a3ac  02 00 93 e7                                      ldr r0, [r3, r2]
0050a3b0  32 17 81 e2                                      add r1, r1, #0xc80000
0050a3b4  6c 12 f8 eb                                      bl #0x30ed6c
0050a3b8  18 00 8d e5                                      str r0, [sp, #0x18]
0050a3bc  ee fe ff ea                                      b #0x509f7c
0050a3c0  0c 20 a0 e3                                      mov r2, #0xc
0050a3c4  92 05 02 e0                                      mul r2, r2, r5
0050a3c8  11 13 a0 e3                                      mov r1, #0x44000000
0050a3cc  02 00 93 e7                                      ldr r0, [r3, r2]
0050a3d0  7a 18 81 e2                                      add r1, r1, #0x7a0000
0050a3d4  2e 12 f8 eb                                      bl #0x30ec94
0050a3d8  18 00 8d e5                                      str r0, [sp, #0x18]
0050a3dc  52 ff ff ea                                      b #0x50a12c
0050a3e0  0c 20 a0 e3                                      mov r2, #0xc
0050a3e4  92 05 02 e0                                      mul r2, r2, r5
0050a3e8  11 13 a0 e3                                      mov r1, #0x44000000
0050a3ec  02 00 93 e7                                      ldr r0, [r3, r2]
0050a3f0  7a 18 81 e2                                      add r1, r1, #0x7a0000
0050a3f4  26 12 f8 eb                                      bl #0x30ec94
0050a3f8  18 00 8d e5                                      str r0, [sp, #0x18]
0050a3fc  de fe ff ea                                      b #0x509f7c
0050a400  0a 00 a0 e1                                      mov r0, sl
0050a404  26 11 f8 eb                                      bl #0x30e8a4
0050a408  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0050a40c  f0 00 cd e1                                      strd r0, r1, [sp]
0050a410  10 10 a0 e3                                      mov r1, #0x10
0050a414  07 00 a0 e1                                      mov r0, r7
0050a418  89 0f f8 eb                                      bl #0x30e244
0050a41c  02 10 87 e2                                      add r1, r7, #2
0050a420  bc fe ff ea                                      b #0x509f18
0050a424  b9 0f f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0050a428  94 af 48 00 ac 40 00 00 f4 37 00 00 c4 50 3b 00  .byte 0x94, 0xaf, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc4, 0x50, 0x3b, 0x00
0050a438  34 22 3d 00 30 22 3d 00 2c 22 3d 00 00 1e 3c 00  .byte 0x34, 0x22, 0x3d, 0x00, 0x30, 0x22, 0x3d, 0x00, 0x2c, 0x22, 0x3d, 0x00, 0x00, 0x1e, 0x3c, 0x00
0050a448  ac 1d 3d 00 2c 22 3d 00 10 22 3d 00 88 82 3b 00  .byte 0xac, 0x1d, 0x3d, 0x00, 0x2c, 0x22, 0x3d, 0x00, 0x10, 0x22, 0x3d, 0x00, 0x88, 0x82, 0x3b, 0x00
0050a458  70 1c 3d 00 34 1a 3d 00 90 7c 3b 00 e4 7b 3b 00  .byte 0x70, 0x1c, 0x3d, 0x00, 0x34, 0x1a, 0x3d, 0x00, 0x90, 0x7c, 0x3b, 0x00, 0xe4, 0x7b, 0x3b, 0x00
0050a468  c4 7b 3b 00 b0 1a 3d 00 84 1a 3d 00              .byte 0xc4, 0x7b, 0x3b, 0x00, 0xb0, 0x1a, 0x3d, 0x00, 0x84, 0x1a, 0x3d, 0x00
