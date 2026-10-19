; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cc760, declared_size=636, range_size=636, mode=arm
; class-group: std::deque<CharAI*, std::allocator<CharAI*> >
; alias: _ZNSt5dequeIP6CharAISaIS1_EE8_M_eraseENSt4priv15_Deque_iteratorIS1_St16_Nonconst_traitsIS1_EEERKSt12__false_type.clone.12
; demangled: std::deque<CharAI*, std::allocator<CharAI*> >::_M_erase(std::priv::_Deque_iterator<CharAI*, std::_Nonconst_traits<CharAI*> >, std::__false_type const&) [clone .clone.12]
; decoder-mode: arm
003cc760  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003cc764  04 20 91 e5                                      ldr r2, [r1, #4]
003cc768  d4 d0 4d e2                                      sub sp, sp, #0xd4
003cc76c  08 80 91 e5                                      ldr r8, [r1, #8]
003cc770  00 90 91 e5                                      ldr sb, [r1]
003cc774  0c 20 8d e5                                      str r2, [sp, #0xc]
003cc778  0c 30 91 e5                                      ldr r3, [r1, #0xc]
003cc77c  50 62 9f e5                                      ldr r6, [pc, #0x250]
003cc780  04 90 89 e2                                      add sb, sb, #4
003cc784  4c 72 9f e5                                      ldr r7, [pc, #0x24c]
003cc788  09 00 58 e1                                      cmp r8, sb
003cc78c  10 30 8d e5                                      str r3, [sp, #0x10]
003cc790  04 c0 b3 05                                      ldreq ip, [r3, #4]!
003cc794  06 60 8f e0                                      add r6, pc, r6
003cc798  07 40 96 e7                                      ldr r4, [r6, r7]
003cc79c  0c c0 8d 05                                      streq ip, [sp, #0xc]
003cc7a0  80 80 8c 02                                      addeq r8, ip, #0x80
003cc7a4  0c 90 a0 01                                      moveq sb, ip
003cc7a8  01 50 a0 e1                                      mov r5, r1
003cc7ac  28 c0 8d e2                                      add ip, sp, #0x28
003cc7b0  10 30 8d 05                                      streq r3, [sp, #0x10]
003cc7b4  00 b0 a0 e1                                      mov fp, r0
003cc7b8  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
003cc7bc  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003cc7c0  0c 10 a0 e1                                      mov r1, ip
003cc7c4  05 00 a0 e1                                      mov r0, r5
003cc7c8  33 fb ff eb                                      bl #0x3cb49c
003cc7cc  18 c0 8d e2                                      add ip, sp, #0x18
003cc7d0  00 a0 a0 e1                                      mov sl, r0
003cc7d4  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
003cc7d8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003cc7dc  0c 10 a0 e1                                      mov r1, ip
003cc7e0  10 00 84 e2                                      add r0, r4, #0x10
003cc7e4  2c fb ff eb                                      bl #0x3cb49c
003cc7e8  a0 00 5a e1                                      cmp sl, r0, lsr #1
003cc7ec  33 00 00 2a                                      bhs #0x3cc8c0
003cc7f0  00 20 95 e5                                      ldr r2, [r5]
003cc7f4  0c c0 95 e5                                      ldr ip, [r5, #0xc]
003cc7f8  68 30 8d e2                                      add r3, sp, #0x68
003cc7fc  14 20 8d e5                                      str r2, [sp, #0x14]
003cc800  04 e0 95 e5                                      ldr lr, [r5, #4]
003cc804  08 50 95 e5                                      ldr r5, [r5, #8]
003cc808  64 c0 8d e5                                      str ip, [sp, #0x64]
003cc80c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
003cc810  60 50 8d e5                                      str r5, [sp, #0x60]
003cc814  0c 50 94 e5                                      ldr r5, [r4, #0xc]
003cc818  58 c0 8d e5                                      str ip, [sp, #0x58]
003cc81c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
003cc820  54 50 8d e5                                      str r5, [sp, #0x54]
003cc824  08 50 94 e5                                      ldr r5, [r4, #8]
003cc828  6c c0 8d e5                                      str ip, [sp, #0x6c]
003cc82c  c8 c0 8d e2                                      add ip, sp, #0xc8
003cc830  50 50 8d e5                                      str r5, [sp, #0x50]
003cc834  04 50 94 e5                                      ldr r5, [r4, #4]
003cc838  58 20 8d e2                                      add r2, sp, #0x58
003cc83c  38 00 8d e2                                      add r0, sp, #0x38
003cc840  4c 50 8d e5                                      str r5, [sp, #0x4c]
003cc844  00 50 94 e5                                      ldr r5, [r4]
003cc848  48 10 8d e2                                      add r1, sp, #0x48
003cc84c  00 c0 8d e5                                      str ip, [sp]
003cc850  48 50 8d e5                                      str r5, [sp, #0x48]
003cc854  10 50 9d e5                                      ldr r5, [sp, #0x10]
003cc858  00 c0 a0 e3                                      mov ip, #0
003cc85c  5c e0 8d e5                                      str lr, [sp, #0x5c]
003cc860  74 50 8d e5                                      str r5, [sp, #0x74]
003cc864  70 80 8d e5                                      str r8, [sp, #0x70]
003cc868  68 90 8d e5                                      str sb, [sp, #0x68]
003cc86c  04 c0 8d e5                                      str ip, [sp, #4]
003cc870  1a fb ff eb                                      bl #0x3cb4e0
003cc874  08 20 94 e5                                      ldr r2, [r4, #8]
003cc878  00 30 94 e5                                      ldr r3, [r4]
003cc87c  04 20 42 e2                                      sub r2, r2, #4
003cc880  02 00 53 e1                                      cmp r3, r2
003cc884  04 30 83 12                                      addne r3, r3, #4
003cc888  00 30 84 15                                      strne r3, [r4]
003cc88c  41 00 00 0a                                      beq #0x3cc998
003cc890  07 30 96 e7                                      ldr r3, [r6, r7]
003cc894  b8 40 8d e2                                      add r4, sp, #0xb8
003cc898  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
003cc89c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003cc8a0  0a 10 a0 e1                                      mov r1, sl
003cc8a4  04 00 a0 e1                                      mov r0, r4
003cc8a8  89 fb ff eb                                      bl #0x3cb6d4
003cc8ac  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
003cc8b0  0f 00 8b e8                                      stm fp, {r0, r1, r2, r3}
003cc8b4  0b 00 a0 e1                                      mov r0, fp
003cc8b8  d4 d0 8d e2                                      add sp, sp, #0xd4
003cc8bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003cc8c0  00 20 95 e5                                      ldr r2, [r5]
003cc8c4  0c c0 95 e5                                      ldr ip, [r5, #0xc]
003cc8c8  78 00 8d e2                                      add r0, sp, #0x78
003cc8cc  14 20 8d e5                                      str r2, [sp, #0x14]
003cc8d0  04 e0 95 e5                                      ldr lr, [r5, #4]
003cc8d4  08 50 95 e5                                      ldr r5, [r5, #8]
003cc8d8  b4 c0 8d e5                                      str ip, [sp, #0xb4]
003cc8dc  14 c0 9d e5                                      ldr ip, [sp, #0x14]
003cc8e0  b0 50 8d e5                                      str r5, [sp, #0xb0]
003cc8e4  10 50 9d e5                                      ldr r5, [sp, #0x10]
003cc8e8  a8 c0 8d e5                                      str ip, [sp, #0xa8]
003cc8ec  cc c0 8d e2                                      add ip, sp, #0xcc
003cc8f0  94 50 8d e5                                      str r5, [sp, #0x94]
003cc8f4  0c 50 9d e5                                      ldr r5, [sp, #0xc]
003cc8f8  a8 30 8d e2                                      add r3, sp, #0xa8
003cc8fc  88 10 8d e2                                      add r1, sp, #0x88
003cc900  8c 50 8d e5                                      str r5, [sp, #0x8c]
003cc904  1c 50 94 e5                                      ldr r5, [r4, #0x1c]
003cc908  98 20 8d e2                                      add r2, sp, #0x98
003cc90c  90 80 8d e5                                      str r8, [sp, #0x90]
003cc910  a4 50 8d e5                                      str r5, [sp, #0xa4]
003cc914  18 50 94 e5                                      ldr r5, [r4, #0x18]
003cc918  88 90 8d e5                                      str sb, [sp, #0x88]
003cc91c  ac e0 8d e5                                      str lr, [sp, #0xac]
003cc920  a0 50 8d e5                                      str r5, [sp, #0xa0]
003cc924  14 50 94 e5                                      ldr r5, [r4, #0x14]
003cc928  9c 50 8d e5                                      str r5, [sp, #0x9c]
003cc92c  10 50 94 e5                                      ldr r5, [r4, #0x10]
003cc930  00 c0 8d e5                                      str ip, [sp]
003cc934  00 c0 a0 e3                                      mov ip, #0
003cc938  98 50 8d e5                                      str r5, [sp, #0x98]
003cc93c  04 c0 8d e5                                      str ip, [sp, #4]
003cc940  25 fb ff eb                                      bl #0x3cb5dc
003cc944  10 00 94 e5                                      ldr r0, [r4, #0x10]
003cc948  14 30 94 e5                                      ldr r3, [r4, #0x14]
003cc94c  03 00 50 e1                                      cmp r0, r3
003cc950  04 00 40 12                                      subne r0, r0, #4
003cc954  10 00 84 15                                      strne r0, [r4, #0x10]
003cc958  cc ff ff 1a                                      bne #0x3cc890
003cc95c  00 00 50 e3                                      cmp r0, #0
003cc960  01 00 00 0a                                      beq #0x3cc96c
003cc964  80 10 a0 e3                                      mov r1, #0x80
003cc968  75 3c fd eb                                      bl #0x31bb44
003cc96c  07 30 96 e7                                      ldr r3, [r6, r7]
003cc970  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
003cc974  04 10 42 e2                                      sub r1, r2, #4
003cc978  1c 10 83 e5                                      str r1, [r3, #0x1c]
003cc97c  04 20 12 e5                                      ldr r2, [r2, #-4]
003cc980  7c 00 82 e2                                      add r0, r2, #0x7c
003cc984  80 10 82 e2                                      add r1, r2, #0x80
003cc988  10 00 83 e5                                      str r0, [r3, #0x10]
003cc98c  18 10 83 e5                                      str r1, [r3, #0x18]
003cc990  14 20 83 e5                                      str r2, [r3, #0x14]
003cc994  bd ff ff ea                                      b #0x3cc890
003cc998  04 00 94 e5                                      ldr r0, [r4, #4]
003cc99c  00 00 50 e3                                      cmp r0, #0
003cc9a0  01 00 00 0a                                      beq #0x3cc9ac
003cc9a4  80 10 a0 e3                                      mov r1, #0x80
003cc9a8  65 3c fd eb                                      bl #0x31bb44
003cc9ac  07 30 96 e7                                      ldr r3, [r6, r7]
003cc9b0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003cc9b4  04 10 82 e2                                      add r1, r2, #4
003cc9b8  0c 10 83 e5                                      str r1, [r3, #0xc]
003cc9bc  04 20 92 e5                                      ldr r2, [r2, #4]
003cc9c0  80 10 82 e2                                      add r1, r2, #0x80
003cc9c4  00 20 83 e5                                      str r2, [r3]
003cc9c8  08 10 83 e5                                      str r1, [r3, #8]
003cc9cc  04 20 83 e5                                      str r2, [r3, #4]
003cc9d0  ae ff ff ea                                      b #0x3cc890
; mapping-symbol data/literal pool
003cc9d4  fc 82 5c 00 ac 49 00 00                          .byte 0xfc, 0x82, 0x5c, 0x00, 0xac, 0x49, 0x00, 0x00

; FUNCTION 0x003cd6d4, declared_size=20, range_size=20, mode=arm
; class-group: std::deque<CharAI*, std::allocator<CharAI*> >
; alias: _ZNSt5dequeIP6CharAISaIS1_EED1Ev
; demangled: std::deque<CharAI*, std::allocator<CharAI*> >::~deque()
; decoder-mode: arm
003cd6d4  10 40 2d e9                                      push {r4, lr}
003cd6d8  00 40 a0 e1                                      mov r4, r0
003cd6dc  db ff ff eb                                      bl #0x3cd650
003cd6e0  04 00 a0 e1                                      mov r0, r4
003cd6e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003ce810, declared_size=424, range_size=424, mode=arm
; class-group: std::deque<CharAI*, std::allocator<CharAI*> >
; alias: _ZNSt5dequeIP6CharAISaIS1_EE18_M_push_back_aux_vERKS1_.clone.17
; demangled: std::deque<CharAI*, std::allocator<CharAI*> >::_M_push_back_aux_v(CharAI* const&) [clone .clone.17]
; decoder-mode: arm
003ce810  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
003ce814  94 41 9f e5                                      ldr r4, [pc, #0x194]
003ce818  94 61 9f e5                                      ldr r6, [pc, #0x194]
003ce81c  00 70 a0 e1                                      mov r7, r0
003ce820  04 40 8f e0                                      add r4, pc, r4
003ce824  06 50 94 e7                                      ldr r5, [r4, r6]
003ce828  1c b0 95 e5                                      ldr fp, [r5, #0x1c]
003ce82c  20 20 95 e5                                      ldr r2, [r5, #0x20]
003ce830  24 30 95 e5                                      ldr r3, [r5, #0x24]
003ce834  0b 10 62 e0                                      rsb r1, r2, fp
003ce838  41 11 43 e0                                      sub r1, r3, r1, asr #2
003ce83c  01 00 51 e3                                      cmp r1, #1
003ce840  0f 00 00 9a                                      bls #0x3ce884
003ce844  06 40 94 e7                                      ldr r4, [r4, r6]
003ce848  24 00 84 e2                                      add r0, r4, #0x24
003ce84c  a5 fb ff eb                                      bl #0x3cd6e8
003ce850  04 00 8b e5                                      str r0, [fp, #4]
003ce854  00 20 97 e5                                      ldr r2, [r7]
003ce858  10 30 94 e5                                      ldr r3, [r4, #0x10]
003ce85c  00 20 83 e5                                      str r2, [r3]
003ce860  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003ce864  04 20 83 e2                                      add r2, r3, #4
003ce868  1c 20 84 e5                                      str r2, [r4, #0x1c]
003ce86c  04 30 93 e5                                      ldr r3, [r3, #4]
003ce870  80 20 83 e2                                      add r2, r3, #0x80
003ce874  10 30 84 e5                                      str r3, [r4, #0x10]
003ce878  18 20 84 e5                                      str r2, [r4, #0x18]
003ce87c  14 30 84 e5                                      str r3, [r4, #0x14]
003ce880  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
003ce884  0c 10 95 e5                                      ldr r1, [r5, #0xc]
003ce888  0b 80 61 e0                                      rsb r8, r1, fp
003ce88c  48 81 a0 e1                                      asr r8, r8, #2
003ce890  01 80 88 e2                                      add r8, r8, #1
003ce894  01 a0 88 e2                                      add sl, r8, #1
003ce898  8a 00 53 e1                                      cmp r3, sl, lsl #1
003ce89c  0a 00 00 9a                                      bls #0x3ce8cc
003ce8a0  03 a0 6a e0                                      rsb sl, sl, r3
003ce8a4  aa a0 a0 e1                                      lsr sl, sl, #1
003ce8a8  0a a1 82 e0                                      add sl, r2, sl, lsl #2
003ce8ac  0a 00 51 e1                                      cmp r1, sl
003ce8b0  31 00 00 9a                                      bls #0x3ce97c
003ce8b4  04 20 8b e2                                      add r2, fp, #4
003ce8b8  01 20 52 e0                                      subs r2, r2, r1
003ce8bc  20 00 00 0a                                      beq #0x3ce944
003ce8c0  0a 00 a0 e1                                      mov r0, sl
003ce8c4  9b fd fc eb                                      bl #0x30df38
003ce8c8  1d 00 00 ea                                      b #0x3ce944
003ce8cc  00 00 53 e3                                      cmp r3, #0
003ce8d0  03 20 a0 11                                      movne r2, r3
003ce8d4  01 20 a0 03                                      moveq r2, #1
003ce8d8  02 90 83 e2                                      add sb, r3, #2
003ce8dc  02 90 89 e0                                      add sb, sb, r2
003ce8e0  09 10 a0 e1                                      mov r1, sb
003ce8e4  00 20 a0 e3                                      mov r2, #0
003ce8e8  20 00 85 e2                                      add r0, r5, #0x20
003ce8ec  53 fa ff eb                                      bl #0x3cd240
003ce8f0  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
003ce8f4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
003ce8f8  09 a0 6a e0                                      rsb sl, sl, sb
003ce8fc  aa a0 a0 e1                                      lsr sl, sl, #1
003ce900  04 20 82 e2                                      add r2, r2, #4
003ce904  01 20 52 e0                                      subs r2, r2, r1
003ce908  00 b0 a0 e1                                      mov fp, r0
003ce90c  0a a1 80 e0                                      add sl, r0, sl, lsl #2
003ce910  23 00 00 1a                                      bne #0x3ce9a4
003ce914  06 30 94 e7                                      ldr r3, [r4, r6]
003ce918  20 00 93 e5                                      ldr r0, [r3, #0x20]
003ce91c  24 10 93 e5                                      ldr r1, [r3, #0x24]
003ce920  00 00 50 e3                                      cmp r0, #0
003ce924  03 00 00 0a                                      beq #0x3ce938
003ce928  01 11 a0 e1                                      lsl r1, r1, #2
003ce92c  80 00 51 e3                                      cmp r1, #0x80
003ce930  19 00 00 8a                                      bhi #0x3ce99c
003ce934  71 e9 0c eb                                      bl #0x708f00
003ce938  06 30 94 e7                                      ldr r3, [r4, r6]
003ce93c  24 90 83 e5                                      str sb, [r3, #0x24]
003ce940  20 b0 83 e5                                      str fp, [r3, #0x20]
003ce944  06 30 94 e7                                      ldr r3, [r4, r6]
003ce948  01 80 48 e2                                      sub r8, r8, #1
003ce94c  08 b1 8a e0                                      add fp, sl, r8, lsl #2
003ce950  0c a0 83 e5                                      str sl, [r3, #0xc]
003ce954  00 20 9a e5                                      ldr r2, [sl]
003ce958  1c b0 83 e5                                      str fp, [r3, #0x1c]
003ce95c  80 10 82 e2                                      add r1, r2, #0x80
003ce960  08 10 83 e5                                      str r1, [r3, #8]
003ce964  04 20 83 e5                                      str r2, [r3, #4]
003ce968  08 21 9a e7                                      ldr r2, [sl, r8, lsl #2]
003ce96c  80 10 82 e2                                      add r1, r2, #0x80
003ce970  18 10 83 e5                                      str r1, [r3, #0x18]
003ce974  14 20 83 e5                                      str r2, [r3, #0x14]
003ce978  b1 ff ff ea                                      b #0x3ce844
003ce97c  04 20 8b e2                                      add r2, fp, #4
003ce980  02 20 61 e0                                      rsb r2, r1, r2
003ce984  00 00 52 e3                                      cmp r2, #0
003ce988  ed ff ff da                                      ble #0x3ce944
003ce98c  08 01 8a e0                                      add r0, sl, r8, lsl #2
003ce990  00 00 62 e0                                      rsb r0, r2, r0
003ce994  67 fd fc eb                                      bl #0x30df38
003ce998  e9 ff ff ea                                      b #0x3ce944
003ce99c  a7 06 fd eb                                      bl #0x310440
003ce9a0  e4 ff ff ea                                      b #0x3ce938
003ce9a4  0a 00 a0 e1                                      mov r0, sl
003ce9a8  62 fd fc eb                                      bl #0x30df38
003ce9ac  d8 ff ff ea                                      b #0x3ce914
; mapping-symbol data/literal pool
003ce9b0  70 62 5c 00 ac 49 00 00                          .byte 0x70, 0x62, 0x5c, 0x00, 0xac, 0x49, 0x00, 0x00
