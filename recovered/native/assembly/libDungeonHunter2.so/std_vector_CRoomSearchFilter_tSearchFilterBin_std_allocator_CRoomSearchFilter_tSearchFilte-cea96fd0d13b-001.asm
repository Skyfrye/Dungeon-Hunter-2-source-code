; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081982c, declared_size=632, range_size=632, mode=arm
; class-group: std::vector<CRoomSearchFilter::tSearchFilterBin, std::allocator<CRoomSearchFilter::tSearchFilterBin> >
; alias: _ZNSt6vectorIN17CRoomSearchFilter16tSearchFilterBinESaIS1_EEaSERKS3_
; demangled: std::vector<CRoomSearchFilter::tSearchFilterBin, std::allocator<CRoomSearchFilter::tSearchFilterBin> >::operator=(std::vector<CRoomSearchFilter::tSearchFilterBin, std::allocator<CRoomSearchFilter::tSearchFilterBin> > const&)
; decoder-mode: arm
0081982c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00819830  00 00 51 e1                                      cmp r1, r0
00819834  0c d0 4d e2                                      sub sp, sp, #0xc
00819838  01 b0 a0 e1                                      mov fp, r1
0081983c  00 40 a0 e1                                      mov r4, r0
00819840  30 00 00 0a                                      beq #0x819908
00819844  00 60 90 e5                                      ldr r6, [r0]
00819848  04 30 91 e5                                      ldr r3, [r1, #4]
0081984c  00 80 91 e5                                      ldr r8, [r1]
00819850  08 10 90 e5                                      ldr r1, [r0, #8]
00819854  06 20 a0 e1                                      mov r2, r6
00819858  03 90 68 e0                                      rsb sb, r8, r3
0081985c  01 10 66 e0                                      rsb r1, r6, r1
00819860  49 91 a0 e1                                      asr sb, sb, #2
00819864  41 11 a0 e1                                      asr r1, r1, #2
00819868  89 90 89 e0                                      add sb, sb, sb, lsl #1
0081986c  81 10 81 e0                                      add r1, r1, r1, lsl #1
00819870  89 91 89 e0                                      add sb, sb, sb, lsl #3
00819874  81 11 81 e0                                      add r1, r1, r1, lsl #3
00819878  89 54 a0 e1                                      lsl r5, sb, #9
0081987c  81 c4 a0 e1                                      lsl ip, r1, #9
00819880  05 90 69 e0                                      rsb sb, sb, r5
00819884  0c 10 61 e0                                      rsb r1, r1, ip
00819888  09 99 89 e0                                      add sb, sb, sb, lsl #18
0081988c  01 19 81 e0                                      add r1, r1, r1, lsl #18
00819890  00 90 69 e2                                      rsb sb, sb, #0
00819894  00 10 61 e2                                      rsb r1, r1, #0
00819898  01 00 59 e1                                      cmp sb, r1
0081989c  09 50 a0 e1                                      mov r5, sb
008198a0  50 00 00 8a                                      bhi #0x8199e8
008198a4  04 10 90 e5                                      ldr r1, [r0, #4]
008198a8  01 a0 66 e0                                      rsb sl, r6, r1
008198ac  4a a1 a0 e1                                      asr sl, sl, #2
008198b0  8a a0 8a e0                                      add sl, sl, sl, lsl #1
008198b4  8a a1 8a e0                                      add sl, sl, sl, lsl #3
008198b8  8a 04 a0 e1                                      lsl r0, sl, #9
008198bc  00 a0 6a e0                                      rsb sl, sl, r0
008198c0  0a a9 8a e0                                      add sl, sl, sl, lsl #18
008198c4  00 a0 6a e2                                      rsb sl, sl, #0
008198c8  0a 00 59 e1                                      cmp sb, sl
008198cc  10 00 00 8a                                      bhi #0x819914
008198d0  00 00 59 e3                                      cmp sb, #0
008198d4  08 00 00 da                                      ble #0x8198fc
008198d8  00 70 a0 e3                                      mov r7, #0
008198dc  07 00 86 e0                                      add r0, r6, r7
008198e0  07 10 88 e0                                      add r1, r8, r7
008198e4  4c 20 a0 e3                                      mov r2, #0x4c
008198e8  de d3 eb eb                                      bl #0x30e868
008198ec  01 50 55 e2                                      subs r5, r5, #1
008198f0  4c 70 87 e2                                      add r7, r7, #0x4c
008198f4  f8 ff ff 1a                                      bne #0x8198dc
008198f8  00 60 94 e5                                      ldr r6, [r4]
008198fc  4c 20 a0 e3                                      mov r2, #0x4c
00819900  92 69 26 e0                                      mla r6, r2, sb, r6
00819904  04 60 84 e5                                      str r6, [r4, #4]
00819908  04 00 a0 e1                                      mov r0, r4
0081990c  0c d0 8d e2                                      add sp, sp, #0xc
00819910  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00819914  4c 00 a0 e3                                      mov r0, #0x4c
00819918  90 8a 2a e0                                      mla sl, r0, sl, r8
0081991c  0a 70 68 e0                                      rsb r7, r8, sl
00819920  47 71 a0 e1                                      asr r7, r7, #2
00819924  87 70 87 e0                                      add r7, r7, r7, lsl #1
00819928  87 71 87 e0                                      add r7, r7, r7, lsl #3
0081992c  87 04 a0 e1                                      lsl r0, r7, #9
00819930  00 70 67 e0                                      rsb r7, r7, r0
00819934  07 79 87 e0                                      add r7, r7, r7, lsl #18
00819938  00 70 67 e2                                      rsb r7, r7, #0
0081993c  00 00 57 e3                                      cmp r7, #0
00819940  01 50 a0 d1                                      movle r5, r1
00819944  13 00 00 da                                      ble #0x819998
00819948  00 50 a0 e3                                      mov r5, #0
0081994c  4c a0 a0 e3                                      mov sl, #0x4c
00819950  05 00 86 e0                                      add r0, r6, r5
00819954  05 10 88 e0                                      add r1, r8, r5
00819958  0a 20 a0 e1                                      mov r2, sl
0081995c  c1 d3 eb eb                                      bl #0x30e868
00819960  01 70 57 e2                                      subs r7, r7, #1
00819964  0a 50 85 e0                                      add r5, r5, sl
00819968  f7 ff ff 1a                                      bne #0x81994c
0081996c  24 00 94 e8                                      ldm r4, {r2, r5}
00819970  09 00 9b e8                                      ldm fp, {r0, r3}
00819974  05 10 62 e0                                      rsb r1, r2, r5
00819978  41 11 a0 e1                                      asr r1, r1, #2
0081997c  81 10 81 e0                                      add r1, r1, r1, lsl #1
00819980  81 11 81 e0                                      add r1, r1, r1, lsl #3
00819984  81 c4 a0 e1                                      lsl ip, r1, #9
00819988  0c 10 61 e0                                      rsb r1, r1, ip
0081998c  01 19 81 e0                                      add r1, r1, r1, lsl #18
00819990  00 10 61 e2                                      rsb r1, r1, #0
00819994  9a 01 2a e0                                      mla sl, sl, r1, r0
00819998  03 60 6a e0                                      rsb r6, sl, r3
0081999c  46 61 a0 e1                                      asr r6, r6, #2
008199a0  86 60 86 e0                                      add r6, r6, r6, lsl #1
008199a4  86 61 86 e0                                      add r6, r6, r6, lsl #3
008199a8  86 34 a0 e1                                      lsl r3, r6, #9
008199ac  03 60 66 e0                                      rsb r6, r6, r3
008199b0  06 69 86 e0                                      add r6, r6, r6, lsl #18
008199b4  00 60 66 e2                                      rsb r6, r6, #0
008199b8  00 00 56 e3                                      cmp r6, #0
008199bc  02 60 a0 d1                                      movle r6, r2
008199c0  cd ff ff da                                      ble #0x8198fc
008199c4  00 70 a0 e3                                      mov r7, #0
008199c8  07 00 85 e0                                      add r0, r5, r7
008199cc  07 10 8a e0                                      add r1, sl, r7
008199d0  4c 20 a0 e3                                      mov r2, #0x4c
008199d4  a3 d3 eb eb                                      bl #0x30e868
008199d8  01 60 56 e2                                      subs r6, r6, #1
008199dc  4c 70 87 e2                                      add r7, r7, #0x4c
008199e0  f8 ff ff 1a                                      bne #0x8199c8
008199e4  c3 ff ff ea                                      b #0x8198f8
008199e8  08 10 8d e2                                      add r1, sp, #8
008199ec  04 90 21 e5                                      str sb, [r1, #-4]!
008199f0  08 20 a0 e1                                      mov r2, r8
008199f4  70 ff ff eb                                      bl #0x8197bc
008199f8  04 30 94 e5                                      ldr r3, [r4, #4]
008199fc  00 60 a0 e1                                      mov r6, r0
00819a00  00 00 94 e5                                      ldr r0, [r4]
00819a04  00 00 53 e1                                      cmp r3, r0
00819a08  0d 00 00 0a                                      beq #0x819a44
00819a0c  4c 20 43 e2                                      sub r2, r3, #0x4c
00819a10  02 20 60 e0                                      rsb r2, r0, r2
00819a14  22 21 a0 e1                                      lsr r2, r2, #2
00819a18  82 20 82 e0                                      add r2, r2, r2, lsl #1
00819a1c  82 21 82 e0                                      add r2, r2, r2, lsl #3
00819a20  82 14 a0 e1                                      lsl r1, r2, #9
00819a24  01 20 62 e0                                      rsb r2, r2, r1
00819a28  02 29 82 e0                                      add r2, r2, r2, lsl #18
00819a2c  00 20 62 e2                                      rsb r2, r2, #0
00819a30  4b 10 e0 e3                                      mvn r1, #0x4b
00819a34  03 21 c2 e3                                      bic r2, r2, #0xc0000000
00819a38  91 02 02 e0                                      mul r2, r1, r2
00819a3c  01 20 82 e0                                      add r2, r2, r1
00819a40  02 30 83 e0                                      add r3, r3, r2
00819a44  00 00 53 e3                                      cmp r3, #0
00819a48  08 20 94 e5                                      ldr r2, [r4, #8]
00819a4c  0c 00 00 0a                                      beq #0x819a84
00819a50  02 10 63 e0                                      rsb r1, r3, r2
00819a54  41 11 a0 e1                                      asr r1, r1, #2
00819a58  81 10 81 e0                                      add r1, r1, r1, lsl #1
00819a5c  81 11 81 e0                                      add r1, r1, r1, lsl #3
00819a60  81 34 a0 e1                                      lsl r3, r1, #9
00819a64  03 10 61 e0                                      rsb r1, r1, r3
00819a68  01 19 81 e0                                      add r1, r1, r1, lsl #18
00819a6c  00 10 61 e2                                      rsb r1, r1, #0
00819a70  4c 30 a0 e3                                      mov r3, #0x4c
00819a74  93 01 01 e0                                      mul r1, r3, r1
00819a78  80 00 51 e3                                      cmp r1, #0x80
00819a7c  06 00 00 8a                                      bhi #0x819a9c
00819a80  2c 92 02 eb                                      bl #0x8be338
00819a84  04 30 9d e5                                      ldr r3, [sp, #4]
00819a88  4c 20 a0 e3                                      mov r2, #0x4c
00819a8c  00 60 84 e5                                      str r6, [r4]
00819a90  92 63 23 e0                                      mla r3, r2, r3, r6
00819a94  08 30 84 e5                                      str r3, [r4, #8]
00819a98  97 ff ff ea                                      b #0x8198fc
00819a9c  67 da eb eb                                      bl #0x310440
00819aa0  f7 ff ff ea                                      b #0x819a84

; FUNCTION 0x00819ba8, declared_size=96, range_size=96, mode=arm
; class-group: std::vector<CRoomSearchFilter::tSearchFilterBin, std::allocator<CRoomSearchFilter::tSearchFilterBin> >
; alias: _ZNSt6vectorIN17CRoomSearchFilter16tSearchFilterBinESaIS1_EED1Ev
; demangled: std::vector<CRoomSearchFilter::tSearchFilterBin, std::allocator<CRoomSearchFilter::tSearchFilterBin> >::~vector()
; decoder-mode: arm
00819ba8  10 40 2d e9                                      push {r4, lr}
00819bac  00 40 a0 e1                                      mov r4, r0
00819bb0  00 00 90 e5                                      ldr r0, [r0]
00819bb4  00 00 50 e3                                      cmp r0, #0
00819bb8  0d 00 00 0a                                      beq #0x819bf4
00819bbc  08 10 94 e5                                      ldr r1, [r4, #8]
00819bc0  01 10 60 e0                                      rsb r1, r0, r1
00819bc4  41 11 a0 e1                                      asr r1, r1, #2
00819bc8  81 10 81 e0                                      add r1, r1, r1, lsl #1
00819bcc  81 11 81 e0                                      add r1, r1, r1, lsl #3
00819bd0  81 34 a0 e1                                      lsl r3, r1, #9
00819bd4  03 10 61 e0                                      rsb r1, r1, r3
00819bd8  01 19 81 e0                                      add r1, r1, r1, lsl #18
00819bdc  00 10 61 e2                                      rsb r1, r1, #0
00819be0  4c 30 a0 e3                                      mov r3, #0x4c
00819be4  93 01 01 e0                                      mul r1, r3, r1
00819be8  80 00 51 e3                                      cmp r1, #0x80
00819bec  02 00 00 8a                                      bhi #0x819bfc
00819bf0  d0 91 02 eb                                      bl #0x8be338
00819bf4  04 00 a0 e1                                      mov r0, r4
00819bf8  10 80 bd e8                                      pop {r4, pc}
00819bfc  0f da eb eb                                      bl #0x310440
00819c00  04 00 a0 e1                                      mov r0, r4
00819c04  10 80 bd e8                                      pop {r4, pc}
