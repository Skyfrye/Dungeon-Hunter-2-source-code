; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0083faac, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<channel, std::allocator<channel> >
; alias: _ZNSt6vectorI7channelSaIS0_EED1Ev
; demangled: std::vector<channel, std::allocator<channel> >::~vector()
; decoder-mode: arm
0083faac  70 40 2d e9                                      push {r4, r5, r6, lr}
0083fab0  04 50 90 e5                                      ldr r5, [r0, #4]
0083fab4  00 60 90 e5                                      ldr r6, [r0]
0083fab8  00 40 a0 e1                                      mov r4, r0
0083fabc  06 00 55 e1                                      cmp r5, r6
0083fac0  04 00 00 0a                                      beq #0x83fad8
0083fac4  54 50 45 e2                                      sub r5, r5, #0x54
0083fac8  05 00 a0 e1                                      mov r0, r5
0083facc  ea ff ff eb                                      bl #0x83fa7c
0083fad0  05 00 56 e1                                      cmp r6, r5
0083fad4  fa ff ff 1a                                      bne #0x83fac4
0083fad8  00 00 94 e5                                      ldr r0, [r4]
0083fadc  00 00 50 e3                                      cmp r0, #0
0083fae0  0a 00 00 0a                                      beq #0x83fb10
0083fae4  08 10 94 e5                                      ldr r1, [r4, #8]
0083fae8  3d 3f 0c e3                                      movw r3, #0xcf3d
0083faec  f3 3c 43 e3                                      movt r3, #0x3cf3
0083faf0  01 10 60 e0                                      rsb r1, r0, r1
0083faf4  41 11 a0 e1                                      asr r1, r1, #2
0083faf8  93 01 03 e0                                      mul r3, r3, r1
0083fafc  54 10 a0 e3                                      mov r1, #0x54
0083fb00  91 03 01 e0                                      mul r1, r1, r3
0083fb04  80 00 51 e3                                      cmp r1, #0x80
0083fb08  02 00 00 8a                                      bhi #0x83fb18
0083fb0c  09 fa 01 eb                                      bl #0x8be338
0083fb10  04 00 a0 e1                                      mov r0, r4
0083fb14  70 80 bd e8                                      pop {r4, r5, r6, pc}
0083fb18  e4 39 eb eb                                      bl #0x30e2b0
0083fb1c  04 00 a0 e1                                      mov r0, r4
0083fb20  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008424f8, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<channel, std::allocator<channel> >
; alias: _ZNSt6vectorI7channelSaIS0_EE20_M_compute_next_sizeEj
; demangled: std::vector<channel, std::allocator<channel> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
008424f8  70 40 2d e9                                      push {r4, r5, r6, lr}
008424fc  14 00 90 e8                                      ldm r0, {r2, r4}
00842500  3d 3f 0c e3                                      movw r3, #0xcf3d
00842504  f3 3c 43 e3                                      movt r3, #0x3cf3
00842508  04 40 62 e0                                      rsb r4, r2, r4
0084250c  44 41 a0 e1                                      asr r4, r4, #2
00842510  93 04 04 e0                                      mul r4, r3, r4
00842514  01 50 a0 e1                                      mov r5, r1
00842518  c3 37 64 e2                                      rsb r3, r4, #0x30c0000
0084251c  c3 3d 83 e2                                      add r3, r3, #0x30c0
00842520  03 30 83 e2                                      add r3, r3, #3
00842524  01 00 53 e1                                      cmp r3, r1
00842528  0b 00 00 3a                                      blo #0x84255c
0084252c  c3 30 03 e3                                      movw r3, #0x30c3
00842530  05 00 54 e1                                      cmp r4, r5
00842534  04 00 84 20                                      addhs r0, r4, r4
00842538  05 00 84 30                                      addlo r0, r4, r5
0084253c  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00842540  03 00 50 e1                                      cmp r0, r3
00842544  01 00 00 8a                                      bhi #0x842550
00842548  04 00 50 e1                                      cmp r0, r4
0084254c  01 00 00 2a                                      bhs #0x842558
00842550  c3 00 03 e3                                      movw r0, #0x30c3
00842554  00 06 80 e1                                      orr r0, r0, r0, lsl #12
00842558  70 80 bd e8                                      pop {r4, r5, r6, pc}
0084255c  08 00 9f e5                                      ldr r0, [pc, #8]
00842560  00 00 8f e0                                      add r0, pc, r0
00842564  67 ef 01 eb                                      bl #0x8be308
00842568  ef ff ff ea                                      b #0x84252c
; mapping-symbol data/literal pool
0084256c  08 bf 07 00                                      .byte 0x08, 0xbf, 0x07, 0x00

; FUNCTION 0x00842918, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<channel, std::allocator<channel> >
; alias: _ZNSt6vectorI7channelSaIS0_EE19_M_clear_after_moveEv
; demangled: std::vector<channel, std::allocator<channel> >::_M_clear_after_move()
; decoder-mode: arm
00842918  70 40 2d e9                                      push {r4, r5, r6, lr}
0084291c  04 40 90 e5                                      ldr r4, [r0, #4]
00842920  00 50 90 e5                                      ldr r5, [r0]
00842924  00 60 a0 e1                                      mov r6, r0
00842928  05 00 54 e1                                      cmp r4, r5
0084292c  05 00 00 0a                                      beq #0x842948
00842930  54 40 44 e2                                      sub r4, r4, #0x54
00842934  04 00 a0 e1                                      mov r0, r4
00842938  4f f4 ff eb                                      bl #0x83fa7c
0084293c  04 00 55 e1                                      cmp r5, r4
00842940  fa ff ff 1a                                      bne #0x842930
00842944  00 40 96 e5                                      ldr r4, [r6]
00842948  00 00 54 e3                                      cmp r4, #0
0084294c  08 30 96 e5                                      ldr r3, [r6, #8]
00842950  0e 00 00 0a                                      beq #0x842990
00842954  03 10 64 e0                                      rsb r1, r4, r3
00842958  3d 3f 0c e3                                      movw r3, #0xcf3d
0084295c  41 11 a0 e1                                      asr r1, r1, #2
00842960  f3 3c 43 e3                                      movt r3, #0x3cf3
00842964  93 01 03 e0                                      mul r3, r3, r1
00842968  54 10 a0 e3                                      mov r1, #0x54
0084296c  91 03 01 e0                                      mul r1, r1, r3
00842970  80 00 51 e3                                      cmp r1, #0x80
00842974  02 00 00 8a                                      bhi #0x842984
00842978  04 00 a0 e1                                      mov r0, r4
0084297c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00842980  6c ee 01 ea                                      b #0x8be338
00842984  04 00 a0 e1                                      mov r0, r4
00842988  70 40 bd e8                                      pop {r4, r5, r6, lr}
0084298c  47 2e eb ea                                      b #0x30e2b0
00842990  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00843658, declared_size=140, range_size=140, mode=arm
; class-group: std::vector<channel, std::allocator<channel> >
; alias: _ZNSt6vectorI7channelSaIS0_EE8_M_eraseEPS0_S3_RKSt12__false_type
; demangled: std::vector<channel, std::allocator<channel> >::_M_erase(channel*, channel*, std::__false_type const&)
; decoder-mode: arm
00843658  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0084365c  04 40 90 e5                                      ldr r4, [r0, #4]
00843660  3d 3f 0c e3                                      movw r3, #0xcf3d
00843664  f3 3c 43 e3                                      movt r3, #0x3cf3
00843668  04 a0 62 e0                                      rsb sl, r2, r4
0084366c  4a a1 a0 e1                                      asr sl, sl, #2
00843670  93 0a 0a e0                                      mul sl, r3, sl
00843674  00 50 a0 e1                                      mov r5, r0
00843678  00 00 5a e3                                      cmp sl, #0
0084367c  02 80 a0 e1                                      mov r8, r2
00843680  01 70 a0 e1                                      mov r7, r1
00843684  01 a0 a0 d1                                      movle sl, r1
00843688  0a 00 00 da                                      ble #0x8436b8
0084368c  0a 60 a0 e1                                      mov r6, sl
00843690  00 40 a0 e3                                      mov r4, #0
00843694  04 00 87 e0                                      add r0, r7, r4
00843698  04 10 88 e0                                      add r1, r8, r4
0084369c  d2 ff ff eb                                      bl #0x8435ec
008436a0  01 60 56 e2                                      subs r6, r6, #1
008436a4  54 40 84 e2                                      add r4, r4, #0x54
008436a8  f9 ff ff 1a                                      bne #0x843694
008436ac  54 30 a0 e3                                      mov r3, #0x54
008436b0  93 7a 2a e0                                      mla sl, r3, sl, r7
008436b4  04 40 95 e5                                      ldr r4, [r5, #4]
008436b8  0a 00 54 e1                                      cmp r4, sl
008436bc  05 00 00 0a                                      beq #0x8436d8
008436c0  0a 60 a0 e1                                      mov r6, sl
008436c4  06 00 a0 e1                                      mov r0, r6
008436c8  54 60 86 e2                                      add r6, r6, #0x54
008436cc  ea f0 ff eb                                      bl #0x83fa7c
008436d0  06 00 54 e1                                      cmp r4, r6
008436d4  fa ff ff 1a                                      bne #0x8436c4
008436d8  04 a0 85 e5                                      str sl, [r5, #4]
008436dc  07 00 a0 e1                                      mov r0, r7
008436e0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00843720, declared_size=556, range_size=556, mode=arm
; class-group: std::vector<channel, std::allocator<channel> >
; alias: _ZNSt6vectorI7channelSaIS0_EE18_M_fill_insert_auxEPS0_jRKS0_RKSt12__false_type
; demangled: std::vector<channel, std::allocator<channel> >::_M_fill_insert_aux(channel*, unsigned int, channel const&, std::__false_type const&)
; decoder-mode: arm
00843720  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00843724  18 42 9f e5                                      ldr r4, [pc, #0x218]
00843728  18 c2 9f e5                                      ldr ip, [pc, #0x218]
0084372c  7c d0 4d e2                                      sub sp, sp, #0x7c
00843730  04 40 8f e0                                      add r4, pc, r4
00843734  10 c0 8d e5                                      str ip, [sp, #0x10]
00843738  0c c0 94 e7                                      ldr ip, [r4, ip]
0084373c  00 50 a0 e1                                      mov r5, r0
00843740  03 70 a0 e1                                      mov r7, r3
00843744  00 00 90 e5                                      ldr r0, [r0]
00843748  00 30 9c e5                                      ldr r3, [ip]
0084374c  01 60 a0 e1                                      mov r6, r1
00843750  00 00 57 e1                                      cmp r7, r0
00843754  74 30 8d e5                                      str r3, [sp, #0x74]
00843758  04 80 95 35                                      ldrlo r8, [r5, #4]
0084375c  18 00 00 3a                                      blo #0x8437c4
00843760  04 80 95 e5                                      ldr r8, [r5, #4]
00843764  08 00 57 e1                                      cmp r7, r8
00843768  15 00 00 2a                                      bhs #0x8437c4
0084376c  20 80 8d e2                                      add r8, sp, #0x20
00843770  07 10 a0 e1                                      mov r1, r7
00843774  08 00 a0 e1                                      mov r0, r8
00843778  0c 20 8d e5                                      str r2, [sp, #0xc]
0084377c  d8 ff ff eb                                      bl #0x8436e4
00843780  05 00 a0 e1                                      mov r0, r5
00843784  1c c0 8d e2                                      add ip, sp, #0x1c
00843788  06 10 a0 e1                                      mov r1, r6
0084378c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00843790  08 30 a0 e1                                      mov r3, r8
00843794  00 c0 8d e5                                      str ip, [sp]
00843798  e0 ff ff eb                                      bl #0x843720
0084379c  08 00 a0 e1                                      mov r0, r8
008437a0  b5 f0 ff eb                                      bl #0x83fa7c
008437a4  10 20 9d e5                                      ldr r2, [sp, #0x10]
008437a8  02 30 94 e7                                      ldr r3, [r4, r2]
008437ac  74 20 9d e5                                      ldr r2, [sp, #0x74]
008437b0  00 30 93 e5                                      ldr r3, [r3]
008437b4  03 00 52 e1                                      cmp r2, r3
008437b8  60 00 00 1a                                      bne #0x843940
008437bc  7c d0 8d e2                                      add sp, sp, #0x7c
008437c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008437c4  08 a0 66 e0                                      rsb sl, r6, r8
008437c8  3d 3f 0c e3                                      movw r3, #0xcf3d
008437cc  4a a1 a0 e1                                      asr sl, sl, #2
008437d0  f3 3c 43 e3                                      movt r3, #0x3cf3
008437d4  93 0a 0a e0                                      mul sl, r3, sl
008437d8  0a 00 52 e1                                      cmp r2, sl
008437dc  2f 00 00 2a                                      bhs #0x8438a0
008437e0  54 10 a0 e3                                      mov r1, #0x54
008437e4  91 02 01 e0                                      mul r1, r1, r2
008437e8  41 b1 a0 e1                                      asr fp, r1, #2
008437ec  93 0b 0b e0                                      mul fp, r3, fp
008437f0  14 10 8d e5                                      str r1, [sp, #0x14]
008437f4  00 00 5b e3                                      cmp fp, #0
008437f8  08 a0 61 e0                                      rsb sl, r1, r8
008437fc  08 20 a0 d1                                      movle r2, r8
00843800  07 00 00 da                                      ble #0x843824
00843804  00 90 a0 e3                                      mov sb, #0
00843808  09 00 88 e0                                      add r0, r8, sb
0084380c  09 10 8a e0                                      add r1, sl, sb
00843810  b3 ff ff eb                                      bl #0x8436e4
00843814  01 b0 5b e2                                      subs fp, fp, #1
00843818  54 90 89 e2                                      add sb, sb, #0x54
0084381c  f9 ff ff 1a                                      bne #0x843808
00843820  04 20 95 e5                                      ldr r2, [r5, #4]
00843824  0a 90 66 e0                                      rsb sb, r6, sl
00843828  3d 3f 0c e3                                      movw r3, #0xcf3d
0084382c  f3 3c 43 e3                                      movt r3, #0x3cf3
00843830  49 91 a0 e1                                      asr sb, sb, #2
00843834  93 09 09 e0                                      mul sb, r3, sb
00843838  14 00 9d e5                                      ldr r0, [sp, #0x14]
0084383c  00 00 59 e3                                      cmp sb, #0
00843840  00 30 82 e0                                      add r3, r2, r0
00843844  04 30 85 e5                                      str r3, [r5, #4]
00843848  06 00 00 da                                      ble #0x843868
0084384c  54 80 48 e2                                      sub r8, r8, #0x54
00843850  54 a0 4a e2                                      sub sl, sl, #0x54
00843854  08 00 a0 e1                                      mov r0, r8
00843858  0a 10 a0 e1                                      mov r1, sl
0084385c  62 ff ff eb                                      bl #0x8435ec
00843860  01 90 59 e2                                      subs sb, sb, #1
00843864  f8 ff ff 1a                                      bne #0x84384c
00843868  14 10 9d e5                                      ldr r1, [sp, #0x14]
0084386c  3d 3f 0c e3                                      movw r3, #0xcf3d
00843870  f3 3c 43 e3                                      movt r3, #0x3cf3
00843874  41 51 a0 e1                                      asr r5, r1, #2
00843878  93 05 05 e0                                      mul r5, r3, r5
0084387c  00 00 55 e3                                      cmp r5, #0
00843880  c7 ff ff da                                      ble #0x8437a4
00843884  06 00 a0 e1                                      mov r0, r6
00843888  07 10 a0 e1                                      mov r1, r7
0084388c  56 ff ff eb                                      bl #0x8435ec
00843890  01 50 55 e2                                      subs r5, r5, #1
00843894  54 60 86 e2                                      add r6, r6, #0x54
00843898  f9 ff ff 1a                                      bne #0x843884
0084389c  c0 ff ff ea                                      b #0x8437a4
008438a0  02 20 6a e0                                      rsb r2, sl, r2
008438a4  54 90 a0 e3                                      mov sb, #0x54
008438a8  99 82 29 e0                                      mla sb, sb, r2, r8
008438ac  09 b0 68 e0                                      rsb fp, r8, sb
008438b0  4b b1 a0 e1                                      asr fp, fp, #2
008438b4  93 0b 0b e0                                      mul fp, r3, fp
008438b8  00 00 5b e3                                      cmp fp, #0
008438bc  05 00 00 da                                      ble #0x8438d8
008438c0  08 00 a0 e1                                      mov r0, r8
008438c4  07 10 a0 e1                                      mov r1, r7
008438c8  85 ff ff eb                                      bl #0x8436e4
008438cc  01 b0 5b e2                                      subs fp, fp, #1
008438d0  54 80 88 e2                                      add r8, r8, #0x54
008438d4  f9 ff ff 1a                                      bne #0x8438c0
008438d8  00 00 5a e3                                      cmp sl, #0
008438dc  04 90 85 e5                                      str sb, [r5, #4]
008438e0  12 00 00 da                                      ble #0x843930
008438e4  0a b0 a0 e1                                      mov fp, sl
008438e8  00 80 a0 e3                                      mov r8, #0
008438ec  08 00 89 e0                                      add r0, sb, r8
008438f0  08 10 86 e0                                      add r1, r6, r8
008438f4  7a ff ff eb                                      bl #0x8436e4
008438f8  01 b0 5b e2                                      subs fp, fp, #1
008438fc  54 80 88 e2                                      add r8, r8, #0x54
00843900  f9 ff ff 1a                                      bne #0x8438ec
00843904  04 30 95 e5                                      ldr r3, [r5, #4]
00843908  54 20 a0 e3                                      mov r2, #0x54
0084390c  92 3a 23 e0                                      mla r3, r2, sl, r3
00843910  04 30 85 e5                                      str r3, [r5, #4]
00843914  06 00 a0 e1                                      mov r0, r6
00843918  07 10 a0 e1                                      mov r1, r7
0084391c  32 ff ff eb                                      bl #0x8435ec
00843920  01 a0 5a e2                                      subs sl, sl, #1
00843924  54 60 86 e2                                      add r6, r6, #0x54
00843928  f9 ff ff 1a                                      bne #0x843914
0084392c  9c ff ff ea                                      b #0x8437a4
00843930  54 30 a0 e3                                      mov r3, #0x54
00843934  93 9a 2a e0                                      mla sl, r3, sl, sb
00843938  04 a0 85 e5                                      str sl, [r5, #4]
0084393c  98 ff ff ea                                      b #0x8437a4
00843940  72 2a eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00843944  60 13 15 00 ac 40 00 00                          .byte 0x60, 0x13, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0084394c, declared_size=384, range_size=384, mode=arm
; class-group: std::vector<channel, std::allocator<channel> >
; alias: _ZNSt6vectorI7channelSaIS0_EE14_M_fill_insertEPS0_jRKS0_
; demangled: std::vector<channel, std::allocator<channel> >::_M_fill_insert(channel*, unsigned int, channel const&)
; decoder-mode: arm
0084394c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00843950  00 80 52 e2                                      subs r8, r2, #0
00843954  1c d0 4d e2                                      sub sp, sp, #0x1c
00843958  00 50 a0 e1                                      mov r5, r0
0084395c  01 40 a0 e1                                      mov r4, r1
00843960  03 60 a0 e1                                      mov r6, r3
00843964  4d 00 00 0a                                      beq #0x843aa0
00843968  08 c0 90 e5                                      ldr ip, [r0, #8]
0084396c  04 e0 90 e5                                      ldr lr, [r0, #4]
00843970  3d 7f 0c e3                                      movw r7, #0xcf3d
00843974  f3 7c 43 e3                                      movt r7, #0x3cf3
00843978  0c c0 6e e0                                      rsb ip, lr, ip
0084397c  4c c1 a0 e1                                      asr ip, ip, #2
00843980  97 0c 0c e0                                      mul ip, r7, ip
00843984  0c 00 58 e1                                      cmp r8, ip
00843988  46 00 00 9a                                      bls #0x843aa8
0084398c  08 10 a0 e1                                      mov r1, r8
00843990  d8 fa ff eb                                      bl #0x8424f8
00843994  18 20 8d e2                                      add r2, sp, #0x18
00843998  00 10 a0 e1                                      mov r1, r0
0084399c  08 00 22 e5                                      str r0, [r2, #-8]!
008439a0  08 00 85 e2                                      add r0, r5, #8
008439a4  14 fc ff eb                                      bl #0x8429fc
008439a8  00 90 95 e5                                      ldr sb, [r5]
008439ac  00 a0 a0 e1                                      mov sl, r0
008439b0  04 30 69 e0                                      rsb r3, sb, r4
008439b4  43 31 a0 e1                                      asr r3, r3, #2
008439b8  97 03 03 e0                                      mul r3, r7, r3
008439bc  00 00 53 e3                                      cmp r3, #0
008439c0  0c 30 8d e5                                      str r3, [sp, #0xc]
008439c4  00 70 a0 d1                                      movle r7, r0
008439c8  0a 00 00 da                                      ble #0x8439f8
008439cc  0c b0 9d e5                                      ldr fp, [sp, #0xc]
008439d0  00 70 a0 e3                                      mov r7, #0
008439d4  07 00 8a e0                                      add r0, sl, r7
008439d8  07 10 89 e0                                      add r1, sb, r7
008439dc  40 ff ff eb                                      bl #0x8436e4
008439e0  01 b0 5b e2                                      subs fp, fp, #1
008439e4  54 70 87 e2                                      add r7, r7, #0x54
008439e8  f9 ff ff 1a                                      bne #0x8439d4
008439ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
008439f0  54 70 a0 e3                                      mov r7, #0x54
008439f4  97 a3 27 e0                                      mla r7, r7, r3, sl
008439f8  01 00 58 e3                                      cmp r8, #1
008439fc  2d 00 00 0a                                      beq #0x843ab8
00843a00  54 30 a0 e3                                      mov r3, #0x54
00843a04  93 78 28 e0                                      mla r8, r3, r8, r7
00843a08  3d 3f 0c e3                                      movw r3, #0xcf3d
00843a0c  08 90 67 e0                                      rsb sb, r7, r8
00843a10  49 91 a0 e1                                      asr sb, sb, #2
00843a14  f3 3c 43 e3                                      movt r3, #0x3cf3
00843a18  93 09 09 e0                                      mul sb, r3, sb
00843a1c  00 00 59 e3                                      cmp sb, #0
00843a20  05 00 00 da                                      ble #0x843a3c
00843a24  07 00 a0 e1                                      mov r0, r7
00843a28  06 10 a0 e1                                      mov r1, r6
00843a2c  2c ff ff eb                                      bl #0x8436e4
00843a30  01 90 59 e2                                      subs sb, sb, #1
00843a34  54 70 87 e2                                      add r7, r7, #0x54
00843a38  f9 ff ff 1a                                      bne #0x843a24
00843a3c  04 90 95 e5                                      ldr sb, [r5, #4]
00843a40  3d 3f 0c e3                                      movw r3, #0xcf3d
00843a44  f3 3c 43 e3                                      movt r3, #0x3cf3
00843a48  09 90 64 e0                                      rsb sb, r4, sb
00843a4c  49 91 a0 e1                                      asr sb, sb, #2
00843a50  93 09 09 e0                                      mul sb, r3, sb
00843a54  00 00 59 e3                                      cmp sb, #0
00843a58  09 00 00 da                                      ble #0x843a84
00843a5c  09 70 a0 e1                                      mov r7, sb
00843a60  00 60 a0 e3                                      mov r6, #0
00843a64  06 00 88 e0                                      add r0, r8, r6
00843a68  06 10 84 e0                                      add r1, r4, r6
00843a6c  1c ff ff eb                                      bl #0x8436e4
00843a70  01 70 57 e2                                      subs r7, r7, #1
00843a74  54 60 86 e2                                      add r6, r6, #0x54
00843a78  f9 ff ff 1a                                      bne #0x843a64
00843a7c  54 30 a0 e3                                      mov r3, #0x54
00843a80  93 89 28 e0                                      mla r8, r3, sb, r8
00843a84  05 00 a0 e1                                      mov r0, r5
00843a88  a2 fb ff eb                                      bl #0x842918
00843a8c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00843a90  54 20 a0 e3                                      mov r2, #0x54
00843a94  00 a0 85 e5                                      str sl, [r5]
00843a98  92 a3 2a e0                                      mla sl, r2, r3, sl
00843a9c  00 05 85 e9                                      stmib r5, {r8, sl}
00843aa0  1c d0 8d e2                                      add sp, sp, #0x1c
00843aa4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00843aa8  14 c0 8d e2                                      add ip, sp, #0x14
00843aac  00 c0 8d e5                                      str ip, [sp]
00843ab0  1a ff ff eb                                      bl #0x843720
00843ab4  f9 ff ff ea                                      b #0x843aa0
00843ab8  06 10 a0 e1                                      mov r1, r6
00843abc  07 00 a0 e1                                      mov r0, r7
00843ac0  07 ff ff eb                                      bl #0x8436e4
00843ac4  54 80 87 e2                                      add r8, r7, #0x54
00843ac8  db ff ff ea                                      b #0x843a3c

; FUNCTION 0x00843acc, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<channel, std::allocator<channel> >
; alias: _ZNSt6vectorI7channelSaIS0_EE6resizeEjRKS0_
; demangled: std::vector<channel, std::allocator<channel> >::resize(unsigned int, channel const&)
; decoder-mode: arm
00843acc  30 40 2d e9                                      push {r4, r5, lr}
00843ad0  10 10 90 e8                                      ldm r0, {r4, ip}
00843ad4  3d 3f 0c e3                                      movw r3, #0xcf3d
00843ad8  f3 3c 43 e3                                      movt r3, #0x3cf3
00843adc  0c 50 64 e0                                      rsb r5, r4, ip
00843ae0  45 51 a0 e1                                      asr r5, r5, #2
00843ae4  93 05 05 e0                                      mul r5, r3, r5
00843ae8  0c d0 4d e2                                      sub sp, sp, #0xc
00843aec  05 00 51 e1                                      cmp r1, r5
00843af0  02 30 a0 e1                                      mov r3, r2
00843af4  08 00 00 2a                                      bhs #0x843b1c
00843af8  54 30 a0 e3                                      mov r3, #0x54
00843afc  93 41 21 e0                                      mla r1, r3, r1, r4
00843b00  0c 00 51 e1                                      cmp r1, ip
00843b04  02 00 00 0a                                      beq #0x843b14
00843b08  0c 20 a0 e1                                      mov r2, ip
00843b0c  04 30 8d e2                                      add r3, sp, #4
00843b10  d0 fe ff eb                                      bl #0x843658
00843b14  0c d0 8d e2                                      add sp, sp, #0xc
00843b18  30 80 bd e8                                      pop {r4, r5, pc}
00843b1c  01 20 65 e0                                      rsb r2, r5, r1
00843b20  0c 10 a0 e1                                      mov r1, ip
00843b24  88 ff ff eb                                      bl #0x84394c
00843b28  f9 ff ff ea                                      b #0x843b14
