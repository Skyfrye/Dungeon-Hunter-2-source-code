; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008191fc, declared_size=64, range_size=64, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilterC2Ev
; demangled: CRoomSearchFilter::CRoomSearchFilter()
; decoder-mode: arm
008191fc  30 10 9f e5                                      ldr r1, [pc, #0x30]
00819200  30 c0 9f e5                                      ldr ip, [pc, #0x30]
00819204  00 20 a0 e3                                      mov r2, #0
00819208  01 10 8f e0                                      add r1, pc, r1
0081920c  0c c0 91 e7                                      ldr ip, [r1, ip]
00819210  18 20 80 e5                                      str r2, [r0, #0x18]
00819214  04 20 80 e5                                      str r2, [r0, #4]
00819218  08 c0 8c e2                                      add ip, ip, #8
0081921c  00 c0 80 e5                                      str ip, [r0]
00819220  08 20 80 e5                                      str r2, [r0, #8]
00819224  0c 20 80 e5                                      str r2, [r0, #0xc]
00819228  10 20 80 e5                                      str r2, [r0, #0x10]
0081922c  14 20 80 e5                                      str r2, [r0, #0x14]
00819230  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00819234  88 b8 17 00 b4 36 00 00                          .byte 0x88, 0xb8, 0x17, 0x00, 0xb4, 0x36, 0x00, 0x00

; FUNCTION 0x0081923c, declared_size=64, range_size=64, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilterC1Ev
; demangled: CRoomSearchFilter::CRoomSearchFilter()
; decoder-mode: arm
0081923c  30 10 9f e5                                      ldr r1, [pc, #0x30]
00819240  30 c0 9f e5                                      ldr ip, [pc, #0x30]
00819244  00 20 a0 e3                                      mov r2, #0
00819248  01 10 8f e0                                      add r1, pc, r1
0081924c  0c c0 91 e7                                      ldr ip, [r1, ip]
00819250  18 20 80 e5                                      str r2, [r0, #0x18]
00819254  04 20 80 e5                                      str r2, [r0, #4]
00819258  08 c0 8c e2                                      add ip, ip, #8
0081925c  00 c0 80 e5                                      str ip, [r0]
00819260  08 20 80 e5                                      str r2, [r0, #8]
00819264  0c 20 80 e5                                      str r2, [r0, #0xc]
00819268  10 20 80 e5                                      str r2, [r0, #0x10]
0081926c  14 20 80 e5                                      str r2, [r0, #0x14]
00819270  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00819274  48 b8 17 00 b4 36 00 00                          .byte 0x48, 0xb8, 0x17, 0x00, 0xb4, 0x36, 0x00, 0x00

; FUNCTION 0x0081927c, declared_size=36, range_size=36, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilter5ClearEv
; demangled: CRoomSearchFilter::Clear()
; decoder-mode: arm
0081927c  04 30 90 e5                                      ldr r3, [r0, #4]
00819280  08 20 90 e5                                      ldr r2, [r0, #8]
00819284  02 00 53 e1                                      cmp r3, r2
00819288  08 30 80 15                                      strne r3, [r0, #8]
0081928c  14 20 90 e5                                      ldr r2, [r0, #0x14]
00819290  10 30 90 e5                                      ldr r3, [r0, #0x10]
00819294  02 00 53 e1                                      cmp r3, r2
00819298  14 30 80 15                                      strne r3, [r0, #0x14]
0081929c  1e ff 2f e1                                      bx lr

; FUNCTION 0x008192a0, declared_size=24, range_size=24, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilter14IsFilterActiveE20tROOM_ATTRIBUTES_INT
; demangled: CRoomSearchFilter::IsFilterActive(tROOM_ATTRIBUTES_INT)
; decoder-mode: arm
008192a0  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
008192a4  01 20 a0 e3                                      mov r2, #1
008192a8  12 31 13 e0                                      ands r3, r3, r2, lsl r1
008192ac  00 00 a0 03                                      moveq r0, #0
008192b0  01 00 a0 13                                      movne r0, #1
008192b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x008192b8, declared_size=24, range_size=24, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilter14IsFilterActiveE20tROOM_ATTRIBUTES_BIN
; demangled: CRoomSearchFilter::IsFilterActive(tROOM_ATTRIBUTES_BIN)
; decoder-mode: arm
008192b8  20 30 90 e5                                      ldr r3, [r0, #0x20]
008192bc  01 20 a0 e3                                      mov r2, #1
008192c0  12 31 13 e0                                      ands r3, r3, r2, lsl r1
008192c4  00 00 a0 03                                      moveq r0, #0
008192c8  01 00 a0 13                                      movne r0, #1
008192cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x008192d0, declared_size=220, range_size=220, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilter23EraseSearchAttributeIntE20tROOM_ATTRIBUTES_INT
; demangled: CRoomSearchFilter::EraseSearchAttributeInt(tROOM_ATTRIBUTES_INT)
; decoder-mode: arm
008192d0  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
008192d4  01 20 a0 e3                                      mov r2, #1
008192d8  30 00 2d e9                                      push {r4, r5}
008192dc  12 31 c3 e1                                      bic r3, r3, r2, lsl r1
008192e0  24 00 90 e9                                      ldmib r0, {r2, r5}
008192e4  1c 30 80 e5                                      str r3, [r0, #0x1c]
008192e8  05 30 62 e0                                      rsb r3, r2, r5
008192ec  43 31 a0 e1                                      asr r3, r3, #2
008192f0  03 41 83 e0                                      add r4, r3, r3, lsl #2
008192f4  04 42 84 e0                                      add r4, r4, r4, lsl #4
008192f8  04 44 84 e0                                      add r4, r4, r4, lsl #8
008192fc  04 48 84 e0                                      add r4, r4, r4, lsl #16
00819300  84 40 93 e0                                      adds r4, r3, r4, lsl #1
00819304  0a 00 00 0a                                      beq #0x819334
00819308  00 30 92 e5                                      ldr r3, [r2]
0081930c  03 00 51 e1                                      cmp r1, r3
00819310  00 30 a0 13                                      movne r3, #0
00819314  03 00 00 1a                                      bne #0x819328
00819318  07 00 00 ea                                      b #0x81933c
0081931c  0c c0 b2 e5                                      ldr ip, [r2, #0xc]!
00819320  0c 00 51 e1                                      cmp r1, ip
00819324  04 00 00 0a                                      beq #0x81933c
00819328  01 30 83 e2                                      add r3, r3, #1
0081932c  04 00 53 e1                                      cmp r3, r4
00819330  f9 ff ff 1a                                      bne #0x81931c
00819334  30 00 bd e8                                      pop {r4, r5}
00819338  1e ff 2f e1                                      bx lr
0081933c  0c 30 82 e2                                      add r3, r2, #0xc
00819340  05 00 53 e1                                      cmp r3, r5
00819344  15 00 00 0a                                      beq #0x8193a0
00819348  05 c0 63 e0                                      rsb ip, r3, r5
0081934c  4c c1 a0 e1                                      asr ip, ip, #2
00819350  0c 11 8c e0                                      add r1, ip, ip, lsl #2
00819354  01 12 81 e0                                      add r1, r1, r1, lsl #4
00819358  01 14 81 e0                                      add r1, r1, r1, lsl #8
0081935c  01 18 81 e0                                      add r1, r1, r1, lsl #16
00819360  81 10 8c e0                                      add r1, ip, r1, lsl #1
00819364  00 00 51 e3                                      cmp r1, #0
00819368  01 00 00 ca                                      bgt #0x819374
0081936c  0b 00 00 ea                                      b #0x8193a0
00819370  0c 30 82 e2                                      add r3, r2, #0xc
00819374  00 c0 93 e5                                      ldr ip, [r3]
00819378  02 30 a0 e1                                      mov r3, r2
0081937c  01 10 51 e2                                      subs r1, r1, #1
00819380  04 c0 83 e4                                      str ip, [r3], #4
00819384  10 40 92 e5                                      ldr r4, [r2, #0x10]
00819388  14 c0 92 e5                                      ldr ip, [r2, #0x14]
0081938c  04 40 82 e5                                      str r4, [r2, #4]
00819390  04 c0 83 e5                                      str ip, [r3, #4]
00819394  0c 20 82 e2                                      add r2, r2, #0xc
00819398  f4 ff ff 1a                                      bne #0x819370
0081939c  08 50 90 e5                                      ldr r5, [r0, #8]
008193a0  0c 50 45 e2                                      sub r5, r5, #0xc
008193a4  08 50 80 e5                                      str r5, [r0, #8]
008193a8  e1 ff ff ea                                      b #0x819334

; FUNCTION 0x008193ac, declared_size=220, range_size=220, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilter23EraseSearchAttributeBinE20tROOM_ATTRIBUTES_BIN
; demangled: CRoomSearchFilter::EraseSearchAttributeBin(tROOM_ATTRIBUTES_BIN)
; decoder-mode: arm
008193ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008193b0  20 30 90 e5                                      ldr r3, [r0, #0x20]
008193b4  01 20 a0 e3                                      mov r2, #1
008193b8  14 70 90 e5                                      ldr r7, [r0, #0x14]
008193bc  12 31 c3 e1                                      bic r3, r3, r2, lsl r1
008193c0  00 60 a0 e1                                      mov r6, r0
008193c4  10 00 90 e5                                      ldr r0, [r0, #0x10]
008193c8  20 30 86 e5                                      str r3, [r6, #0x20]
008193cc  07 c0 60 e0                                      rsb ip, r0, r7
008193d0  4c c1 a0 e1                                      asr ip, ip, #2
008193d4  8c c0 8c e0                                      add ip, ip, ip, lsl #1
008193d8  8c c1 8c e0                                      add ip, ip, ip, lsl #3
008193dc  8c 34 a0 e1                                      lsl r3, ip, #9
008193e0  03 c0 6c e0                                      rsb ip, ip, r3
008193e4  0c c9 8c e0                                      add ip, ip, ip, lsl #18
008193e8  00 c0 6c e2                                      rsb ip, ip, #0
008193ec  00 00 5c e3                                      cmp ip, #0
008193f0  0a 00 00 0a                                      beq #0x819420
008193f4  00 30 90 e5                                      ldr r3, [r0]
008193f8  03 00 51 e1                                      cmp r1, r3
008193fc  00 30 a0 13                                      movne r3, #0
00819400  03 00 00 1a                                      bne #0x819414
00819404  06 00 00 ea                                      b #0x819424
00819408  4c 20 b0 e5                                      ldr r2, [r0, #0x4c]!
0081940c  02 00 51 e1                                      cmp r1, r2
00819410  03 00 00 0a                                      beq #0x819424
00819414  01 30 83 e2                                      add r3, r3, #1
00819418  0c 00 53 e1                                      cmp r3, ip
0081941c  f9 ff ff 1a                                      bne #0x819408
00819420  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00819424  4c 40 80 e2                                      add r4, r0, #0x4c
00819428  07 00 54 e1                                      cmp r4, r7
0081942c  12 00 00 0a                                      beq #0x81947c
00819430  07 50 64 e0                                      rsb r5, r4, r7
00819434  45 51 a0 e1                                      asr r5, r5, #2
00819438  85 50 85 e0                                      add r5, r5, r5, lsl #1
0081943c  85 51 85 e0                                      add r5, r5, r5, lsl #3
00819440  85 34 a0 e1                                      lsl r3, r5, #9
00819444  03 50 65 e0                                      rsb r5, r5, r3
00819448  05 59 85 e0                                      add r5, r5, r5, lsl #18
0081944c  00 50 65 e2                                      rsb r5, r5, #0
00819450  00 00 55 e3                                      cmp r5, #0
00819454  01 00 00 ca                                      bgt #0x819460
00819458  07 00 00 ea                                      b #0x81947c
0081945c  4c 40 84 e2                                      add r4, r4, #0x4c
00819460  04 10 a0 e1                                      mov r1, r4
00819464  4c 20 a0 e3                                      mov r2, #0x4c
00819468  fe d4 eb eb                                      bl #0x30e868
0081946c  01 50 55 e2                                      subs r5, r5, #1
00819470  04 00 a0 e1                                      mov r0, r4
00819474  f8 ff ff 1a                                      bne #0x81945c
00819478  14 70 96 e5                                      ldr r7, [r6, #0x14]
0081947c  4c 70 47 e2                                      sub r7, r7, #0x4c
00819480  14 70 86 e5                                      str r7, [r6, #0x14]
00819484  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00819488, declared_size=136, range_size=136, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilter13TestIntValuesEii20ROOM_SEARCH_OPERATOR
; demangled: CRoomSearchFilter::TestIntValues(int, int, ROOM_SEARCH_OPERATOR)
; decoder-mode: arm
00819488  05 00 53 e3                                      cmp r3, #5
0081948c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00819490  09 00 00 ea                                      b #0x8194bc
00819494  0a 00 00 ea                                      b #0x8194c4
00819498  0d 00 00 ea                                      b #0x8194d4
0081949c  0f 00 00 ea                                      b #0x8194e0
008194a0  12 00 00 ea                                      b #0x8194f0
008194a4  15 00 00 ea                                      b #0x819500
008194a8  ff ff ff ea                                      b #0x8194ac
008194ac  02 00 51 e1                                      cmp r1, r2
008194b0  00 00 a0 b3                                      movlt r0, #0
008194b4  01 00 a0 a3                                      movge r0, #1
008194b8  1e ff 2f e1                                      bx lr
008194bc  00 00 a0 e3                                      mov r0, #0
008194c0  1e ff 2f e1                                      bx lr
008194c4  02 00 51 e1                                      cmp r1, r2
008194c8  00 00 a0 13                                      movne r0, #0
008194cc  01 00 a0 03                                      moveq r0, #1
008194d0  1e ff 2f e1                                      bx lr
008194d4  02 00 51 e0                                      subs r0, r1, r2
008194d8  01 00 a0 13                                      movne r0, #1
008194dc  1e ff 2f e1                                      bx lr
008194e0  02 00 51 e1                                      cmp r1, r2
008194e4  00 00 a0 a3                                      movge r0, #0
008194e8  01 00 a0 b3                                      movlt r0, #1
008194ec  1e ff 2f e1                                      bx lr
008194f0  02 00 51 e1                                      cmp r1, r2
008194f4  00 00 a0 c3                                      movgt r0, #0
008194f8  01 00 a0 d3                                      movle r0, #1
008194fc  1e ff 2f e1                                      bx lr
00819500  02 00 51 e1                                      cmp r1, r2
00819504  00 00 a0 d3                                      movle r0, #0
00819508  01 00 a0 c3                                      movgt r0, #1
0081950c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00819510, declared_size=56, range_size=56, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilter13TestBinValuesEPciS0_i20ROOM_SEARCH_OPERATOR
; demangled: CRoomSearchFilter::TestBinValues(char*, int, char*, int, ROOM_SEARCH_OPERATOR)
; decoder-mode: arm
00819510  10 40 2d e9                                      push {r4, lr}
00819514  08 00 9d e5                                      ldr r0, [sp, #8]
00819518  00 00 52 e1                                      cmp r2, r0
0081951c  00 00 a0 13                                      movne r0, #0
00819520  04 00 00 1a                                      bne #0x819538
00819524  01 00 a0 e1                                      mov r0, r1
00819528  03 10 a0 e1                                      mov r1, r3
0081952c  2b d4 eb eb                                      bl #0x30e5e0
00819530  01 00 70 e2                                      rsbs r0, r0, #1
00819534  00 00 a0 33                                      movlo r0, #0
00819538  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0081953c  00 00 53 e3                                      cmp r3, #0
00819540  01 00 20 12                                      eorne r0, r0, #1
00819544  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00819548, declared_size=488, range_size=488, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilter18TestRoomAttributesER15CRoomAttributes
; demangled: CRoomSearchFilter::TestRoomAttributes(CRoomAttributes&)
; decoder-mode: arm
00819548  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0081954c  04 30 90 e5                                      ldr r3, [r0, #4]
00819550  08 20 90 e5                                      ldr r2, [r0, #8]
00819554  00 40 a0 e1                                      mov r4, r0
00819558  c8 a1 9f e5                                      ldr sl, [pc, #0x1c8]
0081955c  02 20 63 e0                                      rsb r2, r3, r2
00819560  42 21 a0 e1                                      asr r2, r2, #2
00819564  c0 91 9f e5                                      ldr sb, [pc, #0x1c0]
00819568  02 01 82 e0                                      add r0, r2, r2, lsl #2
0081956c  0a a0 8f e0                                      add sl, pc, sl
00819570  00 02 80 e0                                      add r0, r0, r0, lsl #4
00819574  09 c0 9a e7                                      ldr ip, [sl, sb]
00819578  00 04 80 e0                                      add r0, r0, r0, lsl #8
0081957c  01 50 a0 e1                                      mov r5, r1
00819580  00 08 80 e0                                      add r0, r0, r0, lsl #16
00819584  00 10 9c e5                                      ldr r1, [ip]
00819588  80 20 82 e0                                      add r2, r2, r0, lsl #1
0081958c  11 de 4d e2                                      sub sp, sp, #0x110
00819590  00 00 52 e3                                      cmp r2, #0
00819594  0c 11 8d e5                                      str r1, [sp, #0x10c]
00819598  29 00 00 0a                                      beq #0x819644
0081959c  00 60 a0 e3                                      mov r6, #0
008195a0  06 70 a0 e1                                      mov r7, r6
008195a4  19 00 00 ea                                      b #0x819610
008195a8  04 30 94 e5                                      ldr r3, [r4, #4]
008195ac  05 00 a0 e1                                      mov r0, r5
008195b0  06 10 93 e7                                      ldr r1, [r3, r6]
008195b4  fc f9 ff eb                                      bl #0x817dac
008195b8  04 20 94 e5                                      ldr r2, [r4, #4]
008195bc  00 10 a0 e1                                      mov r1, r0
008195c0  04 00 a0 e1                                      mov r0, r4
008195c4  06 20 82 e0                                      add r2, r2, r6
008195c8  04 30 92 e5                                      ldr r3, [r2, #4]
008195cc  08 20 92 e5                                      ldr r2, [r2, #8]
008195d0  ac ff ff eb                                      bl #0x819488
008195d4  00 00 50 e3                                      cmp r0, #0
008195d8  11 00 00 0a                                      beq #0x819624
008195dc  04 30 94 e5                                      ldr r3, [r4, #4]
008195e0  08 20 94 e5                                      ldr r2, [r4, #8]
008195e4  01 70 87 e2                                      add r7, r7, #1
008195e8  0c 60 86 e2                                      add r6, r6, #0xc
008195ec  02 20 63 e0                                      rsb r2, r3, r2
008195f0  42 21 a0 e1                                      asr r2, r2, #2
008195f4  02 11 82 e0                                      add r1, r2, r2, lsl #2
008195f8  01 12 81 e0                                      add r1, r1, r1, lsl #4
008195fc  01 14 81 e0                                      add r1, r1, r1, lsl #8
00819600  01 18 81 e0                                      add r1, r1, r1, lsl #16
00819604  81 20 82 e0                                      add r2, r2, r1, lsl #1
00819608  02 00 57 e1                                      cmp r7, r2
0081960c  0c 00 00 2a                                      bhs #0x819644
00819610  06 10 93 e7                                      ldr r1, [r3, r6]
00819614  05 00 a0 e1                                      mov r0, r5
00819618  d7 f9 ff eb                                      bl #0x817d7c
0081961c  00 00 50 e3                                      cmp r0, #0
00819620  e0 ff ff 1a                                      bne #0x8195a8
00819624  00 00 a0 e3                                      mov r0, #0
00819628  09 30 9a e7                                      ldr r3, [sl, sb]
0081962c  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
00819630  00 30 93 e5                                      ldr r3, [r3]
00819634  03 00 52 e1                                      cmp r2, r3
00819638  39 00 00 1a                                      bne #0x819724
0081963c  11 de 8d e2                                      add sp, sp, #0x110
00819640  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00819644  10 30 94 e5                                      ldr r3, [r4, #0x10]
00819648  14 20 94 e5                                      ldr r2, [r4, #0x14]
0081964c  02 20 63 e0                                      rsb r2, r3, r2
00819650  42 21 a0 e1                                      asr r2, r2, #2
00819654  82 20 82 e0                                      add r2, r2, r2, lsl #1
00819658  82 21 82 e0                                      add r2, r2, r2, lsl #3
0081965c  82 14 a0 e1                                      lsl r1, r2, #9
00819660  01 20 62 e0                                      rsb r2, r2, r1
00819664  02 29 82 e0                                      add r2, r2, r2, lsl #18
00819668  00 00 52 e3                                      cmp r2, #0
0081966c  2a 00 00 0a                                      beq #0x81971c
00819670  00 60 a0 e3                                      mov r6, #0
00819674  06 70 a0 e1                                      mov r7, r6
00819678  0c 80 8d e2                                      add r8, sp, #0xc
0081967c  20 00 00 ea                                      b #0x819704
00819680  10 10 94 e5                                      ldr r1, [r4, #0x10]
00819684  08 20 a0 e1                                      mov r2, r8
00819688  01 3c a0 e3                                      mov r3, #0x100
0081968c  06 10 91 e7                                      ldr r1, [r1, r6]
00819690  05 00 a0 e1                                      mov r0, r5
00819694  c8 f9 ff eb                                      bl #0x817dbc
00819698  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0081969c  00 20 a0 e1                                      mov r2, r0
008196a0  08 10 a0 e1                                      mov r1, r8
008196a4  06 c0 8c e0                                      add ip, ip, r6
008196a8  48 e0 9c e5                                      ldr lr, [ip, #0x48]
008196ac  08 30 8c e2                                      add r3, ip, #8
008196b0  04 00 a0 e1                                      mov r0, r4
008196b4  00 e0 8d e5                                      str lr, [sp]
008196b8  04 c0 9c e5                                      ldr ip, [ip, #4]
008196bc  04 c0 8d e5                                      str ip, [sp, #4]
008196c0  92 ff ff eb                                      bl #0x819510
008196c4  00 00 50 e3                                      cmp r0, #0
008196c8  d5 ff ff 0a                                      beq #0x819624
008196cc  10 30 94 e5                                      ldr r3, [r4, #0x10]
008196d0  14 20 94 e5                                      ldr r2, [r4, #0x14]
008196d4  01 70 87 e2                                      add r7, r7, #1
008196d8  4c 60 86 e2                                      add r6, r6, #0x4c
008196dc  02 20 63 e0                                      rsb r2, r3, r2
008196e0  42 21 a0 e1                                      asr r2, r2, #2
008196e4  82 20 82 e0                                      add r2, r2, r2, lsl #1
008196e8  82 21 82 e0                                      add r2, r2, r2, lsl #3
008196ec  82 14 a0 e1                                      lsl r1, r2, #9
008196f0  01 20 62 e0                                      rsb r2, r2, r1
008196f4  02 29 82 e0                                      add r2, r2, r2, lsl #18
008196f8  00 20 62 e2                                      rsb r2, r2, #0
008196fc  02 00 57 e1                                      cmp r7, r2
00819700  05 00 00 2a                                      bhs #0x81971c
00819704  06 10 93 e7                                      ldr r1, [r3, r6]
00819708  05 00 a0 e1                                      mov r0, r5
0081970c  a0 f9 ff eb                                      bl #0x817d94
00819710  00 00 50 e3                                      cmp r0, #0
00819714  d9 ff ff 1a                                      bne #0x819680
00819718  c1 ff ff ea                                      b #0x819624
0081971c  01 00 a0 e3                                      mov r0, #1
00819720  c0 ff ff ea                                      b #0x819628
00819724  f9 d2 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00819728  24 b5 17 00 ac 40 00 00                          .byte 0x24, 0xb5, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00819c64, declared_size=60, range_size=60, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilterD1Ev
; demangled: CRoomSearchFilter::~CRoomSearchFilter()
; decoder-mode: arm
00819c64  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00819c68  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00819c6c  10 40 2d e9                                      push {r4, lr}
00819c70  03 30 8f e0                                      add r3, pc, r3
00819c74  02 20 93 e7                                      ldr r2, [r3, r2]
00819c78  00 40 a0 e1                                      mov r4, r0
00819c7c  08 20 82 e2                                      add r2, r2, #8
00819c80  10 20 80 e4                                      str r2, [r0], #0x10
00819c84  c7 ff ff eb                                      bl #0x819ba8
00819c88  04 00 84 e2                                      add r0, r4, #4
00819c8c  dd ff ff eb                                      bl #0x819c08
00819c90  04 00 a0 e1                                      mov r0, r4
00819c94  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00819c98  20 ae 17 00 b4 36 00 00                          .byte 0x20, 0xae, 0x17, 0x00, 0xb4, 0x36, 0x00, 0x00

; FUNCTION 0x00819ca0, declared_size=28, range_size=28, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilterD0Ev
; demangled: CRoomSearchFilter::~CRoomSearchFilter()
; decoder-mode: arm
00819ca0  10 40 2d e9                                      push {r4, lr}
00819ca4  00 40 a0 e1                                      mov r4, r0
00819ca8  ed ff ff eb                                      bl #0x819c64
00819cac  04 00 a0 e1                                      mov r0, r4
00819cb0  e2 d9 eb eb                                      bl #0x310440
00819cb4  04 00 a0 e1                                      mov r0, r4
00819cb8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00819cbc, declared_size=60, range_size=60, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilterD2Ev
; demangled: CRoomSearchFilter::~CRoomSearchFilter()
; decoder-mode: arm
00819cbc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00819cc0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00819cc4  10 40 2d e9                                      push {r4, lr}
00819cc8  03 30 8f e0                                      add r3, pc, r3
00819ccc  02 20 93 e7                                      ldr r2, [r3, r2]
00819cd0  00 40 a0 e1                                      mov r4, r0
00819cd4  08 20 82 e2                                      add r2, r2, #8
00819cd8  10 20 80 e4                                      str r2, [r0], #0x10
00819cdc  b1 ff ff eb                                      bl #0x819ba8
00819ce0  04 00 84 e2                                      add r0, r4, #4
00819ce4  c7 ff ff eb                                      bl #0x819c08
00819ce8  04 00 a0 e1                                      mov r0, r4
00819cec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00819cf0  c8 ad 17 00 b4 36 00 00                          .byte 0xc8, 0xad, 0x17, 0x00, 0xb4, 0x36, 0x00, 0x00

; FUNCTION 0x00819cf8, declared_size=484, range_size=484, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilter21SetSearchAttributeIntE20tROOM_ATTRIBUTES_INT20ROOM_SEARCH_OPERATORi
; demangled: CRoomSearchFilter::SetSearchAttributeInt(tROOM_ATTRIBUTES_INT, ROOM_SEARCH_OPERATOR, int)
; decoder-mode: arm
00819cf8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00819cfc  00 40 a0 e1                                      mov r4, r0
00819d00  08 d0 4d e2                                      sub sp, sp, #8
00819d04  02 50 a0 e1                                      mov r5, r2
00819d08  03 80 a0 e1                                      mov r8, r3
00819d0c  01 70 a0 e1                                      mov r7, r1
00819d10  6e fd ff eb                                      bl #0x8192d0
00819d14  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00819d18  01 20 a0 e3                                      mov r2, #1
00819d1c  08 60 94 e5                                      ldr r6, [r4, #8]
00819d20  12 27 83 e1                                      orr r2, r3, r2, lsl r7
00819d24  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00819d28  1c 20 84 e5                                      str r2, [r4, #0x1c]
00819d2c  03 00 56 e1                                      cmp r6, r3
00819d30  06 00 00 0a                                      beq #0x819d50
00819d34  20 01 86 e9                                      stmib r6, {r5, r8}
00819d38  00 70 86 e5                                      str r7, [r6]
00819d3c  08 30 94 e5                                      ldr r3, [r4, #8]
00819d40  0c 30 83 e2                                      add r3, r3, #0xc
00819d44  08 30 84 e5                                      str r3, [r4, #8]
00819d48  08 d0 8d e2                                      add sp, sp, #8
00819d4c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00819d50  04 20 94 e5                                      ldr r2, [r4, #4]
00819d54  55 35 05 e3                                      movw r3, #0x5555
00819d58  03 37 83 e1                                      orr r3, r3, r3, lsl #14
00819d5c  06 20 62 e0                                      rsb r2, r2, r6
00819d60  42 21 a0 e1                                      asr r2, r2, #2
00819d64  02 11 82 e0                                      add r1, r2, r2, lsl #2
00819d68  01 12 81 e0                                      add r1, r1, r1, lsl #4
00819d6c  01 14 81 e0                                      add r1, r1, r1, lsl #8
00819d70  01 18 81 e0                                      add r1, r1, r1, lsl #16
00819d74  81 20 82 e0                                      add r2, r2, r1, lsl #1
00819d78  01 00 52 e3                                      cmp r2, #1
00819d7c  02 10 82 20                                      addhs r1, r2, r2
00819d80  01 10 82 32                                      addlo r1, r2, #1
00819d84  03 00 51 e1                                      cmp r1, r3
00819d88  4e 00 00 8a                                      bhi #0x819ec8
00819d8c  01 00 52 e1                                      cmp r2, r1
00819d90  4c 00 00 8a                                      bhi #0x819ec8
00819d94  08 20 8d e2                                      add r2, sp, #8
00819d98  04 10 22 e5                                      str r1, [r2, #-4]!
00819d9c  0c 00 84 e2                                      add r0, r4, #0xc
00819da0  3f ff ff eb                                      bl #0x819aa4
00819da4  04 c0 94 e5                                      ldr ip, [r4, #4]
00819da8  00 a0 a0 e1                                      mov sl, r0
00819dac  06 60 6c e0                                      rsb r6, ip, r6
00819db0  46 31 a0 e1                                      asr r3, r6, #2
00819db4  03 61 83 e0                                      add r6, r3, r3, lsl #2
00819db8  06 62 86 e0                                      add r6, r6, r6, lsl #4
00819dbc  06 64 86 e0                                      add r6, r6, r6, lsl #8
00819dc0  06 68 86 e0                                      add r6, r6, r6, lsl #16
00819dc4  86 60 83 e0                                      add r6, r3, r6, lsl #1
00819dc8  00 00 56 e3                                      cmp r6, #0
00819dcc  00 60 a0 d1                                      movle r6, r0
00819dd0  10 00 00 da                                      ble #0x819e18
00819dd4  06 00 a0 e1                                      mov r0, r6
00819dd8  00 30 a0 e3                                      mov r3, #0
00819ddc  03 20 9c e7                                      ldr r2, [ip, r3]
00819de0  03 10 8c e0                                      add r1, ip, r3
00819de4  04 10 81 e2                                      add r1, r1, #4
00819de8  03 20 8a e7                                      str r2, [sl, r3]
00819dec  04 90 91 e4                                      ldr sb, [r1], #4
00819df0  03 20 8a e0                                      add r2, sl, r3
00819df4  04 20 82 e2                                      add r2, r2, #4
00819df8  04 90 82 e4                                      str sb, [r2], #4
00819dfc  00 10 91 e5                                      ldr r1, [r1]
00819e00  01 00 50 e2                                      subs r0, r0, #1
00819e04  0c 30 83 e2                                      add r3, r3, #0xc
00819e08  00 10 82 e5                                      str r1, [r2]
00819e0c  f2 ff ff 1a                                      bne #0x819ddc
00819e10  0c 30 a0 e3                                      mov r3, #0xc
00819e14  93 a6 26 e0                                      mla r6, r3, r6, sl
00819e18  04 50 86 e5                                      str r5, [r6, #4]
00819e1c  00 70 86 e5                                      str r7, [r6]
00819e20  08 80 86 e5                                      str r8, [r6, #8]
00819e24  09 00 94 e9                                      ldmib r4, {r0, r3}
00819e28  0c 50 86 e2                                      add r5, r6, #0xc
00819e2c  00 00 53 e1                                      cmp r3, r0
00819e30  0e 00 00 0a                                      beq #0x819e70
00819e34  0c 20 43 e2                                      sub r2, r3, #0xc
00819e38  02 20 60 e0                                      rsb r2, r0, r2
00819e3c  22 21 a0 e1                                      lsr r2, r2, #2
00819e40  02 11 82 e0                                      add r1, r2, r2, lsl #2
00819e44  81 12 81 e0                                      add r1, r1, r1, lsl #5
00819e48  81 10 82 e0                                      add r1, r2, r1, lsl #1
00819e4c  81 12 81 e0                                      add r1, r1, r1, lsl #5
00819e50  81 c7 a0 e1                                      lsl ip, r1, #0xf
00819e54  0c 10 61 e0                                      rsb r1, r1, ip
00819e58  81 20 82 e0                                      add r2, r2, r1, lsl #1
00819e5c  03 21 c2 e3                                      bic r2, r2, #0xc0000000
00819e60  0b 10 e0 e3                                      mvn r1, #0xb
00819e64  91 02 02 e0                                      mul r2, r1, r2
00819e68  01 20 82 e0                                      add r2, r2, r1
00819e6c  02 30 83 e0                                      add r3, r3, r2
00819e70  00 00 53 e3                                      cmp r3, #0
00819e74  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00819e78  0b 00 00 0a                                      beq #0x819eac
00819e7c  02 30 63 e0                                      rsb r3, r3, r2
00819e80  43 31 a0 e1                                      asr r3, r3, #2
00819e84  03 11 83 e0                                      add r1, r3, r3, lsl #2
00819e88  01 12 81 e0                                      add r1, r1, r1, lsl #4
00819e8c  01 14 81 e0                                      add r1, r1, r1, lsl #8
00819e90  01 18 81 e0                                      add r1, r1, r1, lsl #16
00819e94  81 30 83 e0                                      add r3, r3, r1, lsl #1
00819e98  0c 10 a0 e3                                      mov r1, #0xc
00819e9c  91 03 01 e0                                      mul r1, r1, r3
00819ea0  80 00 51 e3                                      cmp r1, #0x80
00819ea4  0a 00 00 8a                                      bhi #0x819ed4
00819ea8  22 91 02 eb                                      bl #0x8be338
00819eac  04 30 9d e5                                      ldr r3, [sp, #4]
00819eb0  0c 20 a0 e3                                      mov r2, #0xc
00819eb4  04 a0 84 e5                                      str sl, [r4, #4]
00819eb8  92 a3 2a e0                                      mla sl, r2, r3, sl
00819ebc  08 50 84 e5                                      str r5, [r4, #8]
00819ec0  0c a0 84 e5                                      str sl, [r4, #0xc]
00819ec4  9f ff ff ea                                      b #0x819d48
00819ec8  55 15 05 e3                                      movw r1, #0x5555
00819ecc  01 17 81 e1                                      orr r1, r1, r1, lsl #14
00819ed0  af ff ff ea                                      b #0x819d94
00819ed4  59 d9 eb eb                                      bl #0x310440
00819ed8  f3 ff ff ea                                      b #0x819eac

; FUNCTION 0x00819edc, declared_size=616, range_size=616, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilter21SetSearchAttributeBinE20tROOM_ATTRIBUTES_BIN20ROOM_SEARCH_OPERATORPvj
; demangled: CRoomSearchFilter::SetSearchAttributeBin(tROOM_ATTRIBUTES_BIN, ROOM_SEARCH_OPERATOR, void*, unsigned int)
; decoder-mode: arm
00819edc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00819ee0  54 52 9f e5                                      ldr r5, [pc, #0x254]
00819ee4  54 62 9f e5                                      ldr r6, [pc, #0x254]
00819ee8  6c d0 4d e2                                      sub sp, sp, #0x6c
00819eec  05 50 8f e0                                      add r5, pc, r5
00819ef0  06 c0 95 e7                                      ldr ip, [r5, r6]
00819ef4  03 90 a0 e1                                      mov sb, r3
00819ef8  02 b0 a0 e1                                      mov fp, r2
00819efc  90 30 9d e5                                      ldr r3, [sp, #0x90]
00819f00  00 20 9c e5                                      ldr r2, [ip]
00819f04  00 40 a0 e1                                      mov r4, r0
00819f08  01 70 a0 e1                                      mov r7, r1
00819f0c  04 30 8d e5                                      str r3, [sp, #4]
00819f10  64 20 8d e5                                      str r2, [sp, #0x64]
00819f14  24 fd ff eb                                      bl #0x8193ac
00819f18  20 20 94 e5                                      ldr r2, [r4, #0x20]
00819f1c  01 10 a0 e3                                      mov r1, #1
00819f20  18 a0 8d e2                                      add sl, sp, #0x18
00819f24  11 27 82 e1                                      orr r2, r2, r1, lsl r7
00819f28  08 80 8a e2                                      add r8, sl, #8
00819f2c  20 20 84 e5                                      str r2, [r4, #0x20]
00819f30  00 10 a0 e3                                      mov r1, #0
00819f34  40 20 a0 e3                                      mov r2, #0x40
00819f38  08 00 a0 e1                                      mov r0, r8
00819f3c  47 d1 eb eb                                      bl #0x30e460
00819f40  04 30 9d e5                                      ldr r3, [sp, #4]
00819f44  08 00 a0 e1                                      mov r0, r8
00819f48  09 10 a0 e1                                      mov r1, sb
00819f4c  03 20 a0 e1                                      mov r2, r3
00819f50  18 70 8d e5                                      str r7, [sp, #0x18]
00819f54  1c b0 8d e5                                      str fp, [sp, #0x1c]
00819f58  60 30 8d e5                                      str r3, [sp, #0x60]
00819f5c  41 d2 eb eb                                      bl #0x30e868
00819f60  14 00 94 e5                                      ldr r0, [r4, #0x14]
00819f64  18 70 94 e5                                      ldr r7, [r4, #0x18]
00819f68  07 00 50 e1                                      cmp r0, r7
00819f6c  0c 00 00 0a                                      beq #0x819fa4
00819f70  0a 10 a0 e1                                      mov r1, sl
00819f74  4c 20 a0 e3                                      mov r2, #0x4c
00819f78  3a d2 eb eb                                      bl #0x30e868
00819f7c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00819f80  4c 30 83 e2                                      add r3, r3, #0x4c
00819f84  14 30 84 e5                                      str r3, [r4, #0x14]
00819f88  06 30 95 e7                                      ldr r3, [r5, r6]
00819f8c  64 20 9d e5                                      ldr r2, [sp, #0x64]
00819f90  00 30 93 e5                                      ldr r3, [r3]
00819f94  03 00 52 e1                                      cmp r2, r3
00819f98  66 00 00 1a                                      bne #0x81a138
00819f9c  6c d0 8d e2                                      add sp, sp, #0x6c
00819fa0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00819fa4  10 20 94 e5                                      ldr r2, [r4, #0x10]
00819fa8  d7 30 05 e3                                      movw r3, #0x50d7
00819fac  5e 33 40 e3                                      movt r3, #0x35e
00819fb0  07 20 62 e0                                      rsb r2, r2, r7
00819fb4  42 21 a0 e1                                      asr r2, r2, #2
00819fb8  82 20 82 e0                                      add r2, r2, r2, lsl #1
00819fbc  82 21 82 e0                                      add r2, r2, r2, lsl #3
00819fc0  82 14 a0 e1                                      lsl r1, r2, #9
00819fc4  01 20 62 e0                                      rsb r2, r2, r1
00819fc8  02 29 82 e0                                      add r2, r2, r2, lsl #18
00819fcc  00 20 62 e2                                      rsb r2, r2, #0
00819fd0  01 00 52 e3                                      cmp r2, #1
00819fd4  02 10 82 20                                      addhs r1, r2, r2
00819fd8  01 10 82 32                                      addlo r1, r2, #1
00819fdc  03 00 51 e1                                      cmp r1, r3
00819fe0  4f 00 00 8a                                      bhi #0x81a124
00819fe4  01 00 52 e1                                      cmp r2, r1
00819fe8  4d 00 00 8a                                      bhi #0x81a124
00819fec  68 20 8d e2                                      add r2, sp, #0x68
00819ff0  54 10 22 e5                                      str r1, [r2, #-0x54]!
00819ff4  18 00 84 e2                                      add r0, r4, #0x18
00819ff8  cc fd ff eb                                      bl #0x819730
00819ffc  10 20 94 e5                                      ldr r2, [r4, #0x10]
0081a000  00 b0 a0 e1                                      mov fp, r0
0081a004  07 30 62 e0                                      rsb r3, r2, r7
0081a008  43 31 a0 e1                                      asr r3, r3, #2
0081a00c  08 20 8d e5                                      str r2, [sp, #8]
0081a010  83 30 83 e0                                      add r3, r3, r3, lsl #1
0081a014  83 31 83 e0                                      add r3, r3, r3, lsl #3
0081a018  83 24 a0 e1                                      lsl r2, r3, #9
0081a01c  02 30 63 e0                                      rsb r3, r3, r2
0081a020  03 39 83 e0                                      add r3, r3, r3, lsl #18
0081a024  00 30 63 e2                                      rsb r3, r3, #0
0081a028  00 00 53 e3                                      cmp r3, #0
0081a02c  0c 30 8d e5                                      str r3, [sp, #0xc]
0081a030  00 90 a0 d1                                      movle sb, r0
0081a034  0c 00 00 da                                      ble #0x81a06c
0081a038  0c 80 9d e5                                      ldr r8, [sp, #0xc]
0081a03c  00 70 a0 e3                                      mov r7, #0
0081a040  08 30 9d e5                                      ldr r3, [sp, #8]
0081a044  4c 90 a0 e3                                      mov sb, #0x4c
0081a048  07 00 8b e0                                      add r0, fp, r7
0081a04c  07 10 83 e0                                      add r1, r3, r7
0081a050  09 20 a0 e1                                      mov r2, sb
0081a054  03 d2 eb eb                                      bl #0x30e868
0081a058  01 80 58 e2                                      subs r8, r8, #1
0081a05c  09 70 87 e0                                      add r7, r7, sb
0081a060  f6 ff ff 1a                                      bne #0x81a040
0081a064  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0081a068  99 b2 29 e0                                      mla sb, sb, r2, fp
0081a06c  09 00 a0 e1                                      mov r0, sb
0081a070  0a 10 a0 e1                                      mov r1, sl
0081a074  4c 20 a0 e3                                      mov r2, #0x4c
0081a078  fa d1 eb eb                                      bl #0x30e868
0081a07c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0081a080  10 00 94 e5                                      ldr r0, [r4, #0x10]
0081a084  4c 90 89 e2                                      add sb, sb, #0x4c
0081a088  00 00 53 e1                                      cmp r3, r0
0081a08c  0d 00 00 0a                                      beq #0x81a0c8
0081a090  4c 20 43 e2                                      sub r2, r3, #0x4c
0081a094  02 20 60 e0                                      rsb r2, r0, r2
0081a098  22 21 a0 e1                                      lsr r2, r2, #2
0081a09c  82 20 82 e0                                      add r2, r2, r2, lsl #1
0081a0a0  82 21 82 e0                                      add r2, r2, r2, lsl #3
0081a0a4  82 14 a0 e1                                      lsl r1, r2, #9
0081a0a8  01 20 62 e0                                      rsb r2, r2, r1
0081a0ac  02 29 82 e0                                      add r2, r2, r2, lsl #18
0081a0b0  00 20 62 e2                                      rsb r2, r2, #0
0081a0b4  4b 10 e0 e3                                      mvn r1, #0x4b
0081a0b8  03 21 c2 e3                                      bic r2, r2, #0xc0000000
0081a0bc  91 02 02 e0                                      mul r2, r1, r2
0081a0c0  01 20 82 e0                                      add r2, r2, r1
0081a0c4  02 30 83 e0                                      add r3, r3, r2
0081a0c8  00 00 53 e3                                      cmp r3, #0
0081a0cc  18 20 94 e5                                      ldr r2, [r4, #0x18]
0081a0d0  0c 00 00 0a                                      beq #0x81a108
0081a0d4  02 10 63 e0                                      rsb r1, r3, r2
0081a0d8  41 11 a0 e1                                      asr r1, r1, #2
0081a0dc  81 10 81 e0                                      add r1, r1, r1, lsl #1
0081a0e0  81 11 81 e0                                      add r1, r1, r1, lsl #3
0081a0e4  81 34 a0 e1                                      lsl r3, r1, #9
0081a0e8  03 10 61 e0                                      rsb r1, r1, r3
0081a0ec  01 19 81 e0                                      add r1, r1, r1, lsl #18
0081a0f0  00 10 61 e2                                      rsb r1, r1, #0
0081a0f4  4c 30 a0 e3                                      mov r3, #0x4c
0081a0f8  93 01 01 e0                                      mul r1, r3, r1
0081a0fc  80 00 51 e3                                      cmp r1, #0x80
0081a100  0a 00 00 8a                                      bhi #0x81a130
0081a104  8b 90 02 eb                                      bl #0x8be338
0081a108  14 30 9d e5                                      ldr r3, [sp, #0x14]
0081a10c  4c 20 a0 e3                                      mov r2, #0x4c
0081a110  10 b0 84 e5                                      str fp, [r4, #0x10]
0081a114  92 b3 2b e0                                      mla fp, r2, r3, fp
0081a118  14 90 84 e5                                      str sb, [r4, #0x14]
0081a11c  18 b0 84 e5                                      str fp, [r4, #0x18]
0081a120  98 ff ff ea                                      b #0x819f88
0081a124  d7 10 05 e3                                      movw r1, #0x50d7
0081a128  5e 13 40 e3                                      movt r1, #0x35e
0081a12c  ae ff ff ea                                      b #0x819fec
0081a130  c2 d8 eb eb                                      bl #0x310440
0081a134  f3 ff ff ea                                      b #0x81a108
0081a138  74 d0 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081a13c  a4 ab 17 00 ac 40 00 00                          .byte 0xa4, 0xab, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0081a3e4, declared_size=40, range_size=40, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilter4CopyERKS_
; demangled: CRoomSearchFilter::Copy(CRoomSearchFilter const&)
; decoder-mode: arm
0081a3e4  70 40 2d e9                                      push {r4, r5, r6, lr}
0081a3e8  00 50 a0 e1                                      mov r5, r0
0081a3ec  01 40 a0 e1                                      mov r4, r1
0081a3f0  04 00 80 e2                                      add r0, r0, #4
0081a3f4  04 10 81 e2                                      add r1, r1, #4
0081a3f8  51 ff ff eb                                      bl #0x81a144
0081a3fc  10 00 85 e2                                      add r0, r5, #0x10
0081a400  10 10 84 e2                                      add r1, r4, #0x10
0081a404  70 40 bd e8                                      pop {r4, r5, r6, lr}
0081a408  07 fd ff ea                                      b #0x81982c

; FUNCTION 0x0081a40c, declared_size=28, range_size=28, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilteraSERKS_
; demangled: CRoomSearchFilter::operator=(CRoomSearchFilter const&)
; decoder-mode: arm
0081a40c  01 00 50 e1                                      cmp r0, r1
0081a410  10 40 2d e9                                      push {r4, lr}
0081a414  00 40 a0 e1                                      mov r4, r0
0081a418  00 00 00 0a                                      beq #0x81a420
0081a41c  f0 ff ff eb                                      bl #0x81a3e4
0081a420  04 00 a0 e1                                      mov r0, r4
0081a424  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081a428, declared_size=80, range_size=80, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilterC1ERKS_
; demangled: CRoomSearchFilter::CRoomSearchFilter(CRoomSearchFilter const&)
; decoder-mode: arm
0081a428  40 20 9f e5                                      ldr r2, [pc, #0x40]
0081a42c  40 c0 9f e5                                      ldr ip, [pc, #0x40]
0081a430  00 30 a0 e3                                      mov r3, #0
0081a434  02 20 8f e0                                      add r2, pc, r2
0081a438  0c c0 92 e7                                      ldr ip, [r2, ip]
0081a43c  10 40 2d e9                                      push {r4, lr}
0081a440  08 c0 8c e2                                      add ip, ip, #8
0081a444  00 40 a0 e1                                      mov r4, r0
0081a448  18 30 80 e5                                      str r3, [r0, #0x18]
0081a44c  00 c0 80 e5                                      str ip, [r0]
0081a450  04 30 80 e5                                      str r3, [r0, #4]
0081a454  08 30 80 e5                                      str r3, [r0, #8]
0081a458  0c 30 80 e5                                      str r3, [r0, #0xc]
0081a45c  10 30 80 e5                                      str r3, [r0, #0x10]
0081a460  14 30 80 e5                                      str r3, [r0, #0x14]
0081a464  de ff ff eb                                      bl #0x81a3e4
0081a468  04 00 a0 e1                                      mov r0, r4
0081a46c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081a470  5c a6 17 00 b4 36 00 00                          .byte 0x5c, 0xa6, 0x17, 0x00, 0xb4, 0x36, 0x00, 0x00

; FUNCTION 0x0081a478, declared_size=80, range_size=80, mode=arm
; class-group: CRoomSearchFilter
; alias: _ZN17CRoomSearchFilterC2ERKS_
; demangled: CRoomSearchFilter::CRoomSearchFilter(CRoomSearchFilter const&)
; decoder-mode: arm
0081a478  40 20 9f e5                                      ldr r2, [pc, #0x40]
0081a47c  40 c0 9f e5                                      ldr ip, [pc, #0x40]
0081a480  00 30 a0 e3                                      mov r3, #0
0081a484  02 20 8f e0                                      add r2, pc, r2
0081a488  0c c0 92 e7                                      ldr ip, [r2, ip]
0081a48c  10 40 2d e9                                      push {r4, lr}
0081a490  08 c0 8c e2                                      add ip, ip, #8
0081a494  00 40 a0 e1                                      mov r4, r0
0081a498  18 30 80 e5                                      str r3, [r0, #0x18]
0081a49c  00 c0 80 e5                                      str ip, [r0]
0081a4a0  04 30 80 e5                                      str r3, [r0, #4]
0081a4a4  08 30 80 e5                                      str r3, [r0, #8]
0081a4a8  0c 30 80 e5                                      str r3, [r0, #0xc]
0081a4ac  10 30 80 e5                                      str r3, [r0, #0x10]
0081a4b0  14 30 80 e5                                      str r3, [r0, #0x14]
0081a4b4  ca ff ff eb                                      bl #0x81a3e4
0081a4b8  04 00 a0 e1                                      mov r0, r4
0081a4bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0081a4c0  0c a6 17 00 b4 36 00 00                          .byte 0x0c, 0xa6, 0x17, 0x00, 0xb4, 0x36, 0x00, 0x00
