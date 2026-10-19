; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0043f954, declared_size=112, range_size=112, mode=arm
; class-group: std::vector<tRoomInfo, std::allocator<tRoomInfo> >
; alias: _ZNSt6vectorI9tRoomInfoSaIS0_EED1Ev
; demangled: std::vector<tRoomInfo, std::allocator<tRoomInfo> >::~vector()
; decoder-mode: arm
0043f954  10 40 2d e9                                      push {r4, lr}
0043f958  04 20 90 e5                                      ldr r2, [r0, #4]
0043f95c  00 30 90 e5                                      ldr r3, [r0]
0043f960  08 d0 4d e2                                      sub sp, sp, #8
0043f964  00 40 a0 e1                                      mov r4, r0
0043f968  04 10 8d e2                                      add r1, sp, #4
0043f96c  0d 00 a0 e1                                      mov r0, sp
0043f970  0c 00 8d e8                                      stm sp, {r2, r3}
0043f974  e9 ff ff eb                                      bl #0x43f920
0043f978  00 00 94 e5                                      ldr r0, [r4]
0043f97c  00 00 50 e3                                      cmp r0, #0
0043f980  0a 00 00 0a                                      beq #0x43f9b0
0043f984  08 10 94 e5                                      ldr r1, [r4, #8]
0043f988  c9 39 06 e3                                      movw r3, #0x69c9
0043f98c  be 36 45 e3                                      movt r3, #0x56be
0043f990  01 10 60 e0                                      rsb r1, r0, r1
0043f994  c1 11 a0 e1                                      asr r1, r1, #3
0043f998  93 01 03 e0                                      mul r3, r3, r1
0043f99c  f2 1f a0 e3                                      mov r1, #0x3c8
0043f9a0  91 03 01 e0                                      mul r1, r1, r3
0043f9a4  80 00 51 e3                                      cmp r1, #0x80
0043f9a8  03 00 00 8a                                      bhi #0x43f9bc
0043f9ac  53 25 0b eb                                      bl #0x708f00
0043f9b0  04 00 a0 e1                                      mov r0, r4
0043f9b4  08 d0 8d e2                                      add sp, sp, #8
0043f9b8  10 80 bd e8                                      pop {r4, pc}
0043f9bc  9f 42 fb eb                                      bl #0x310440
0043f9c0  fa ff ff ea                                      b #0x43f9b0

; FUNCTION 0x0043faf4, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<tRoomInfo, std::allocator<tRoomInfo> >
; alias: _ZNSt6vectorI9tRoomInfoSaIS0_EE8_M_clearEv
; demangled: std::vector<tRoomInfo, std::allocator<tRoomInfo> >::_M_clear()
; decoder-mode: arm
0043faf4  10 40 2d e9                                      push {r4, lr}
0043faf8  04 20 90 e5                                      ldr r2, [r0, #4]
0043fafc  00 30 90 e5                                      ldr r3, [r0]
0043fb00  08 d0 4d e2                                      sub sp, sp, #8
0043fb04  00 40 a0 e1                                      mov r4, r0
0043fb08  04 10 8d e2                                      add r1, sp, #4
0043fb0c  0d 00 a0 e1                                      mov r0, sp
0043fb10  0c 00 8d e8                                      stm sp, {r2, r3}
0043fb14  81 ff ff eb                                      bl #0x43f920
0043fb18  00 00 94 e5                                      ldr r0, [r4]
0043fb1c  08 10 94 e5                                      ldr r1, [r4, #8]
0043fb20  00 00 50 e3                                      cmp r0, #0
0043fb24  09 00 00 0a                                      beq #0x43fb50
0043fb28  01 10 60 e0                                      rsb r1, r0, r1
0043fb2c  c9 39 06 e3                                      movw r3, #0x69c9
0043fb30  c1 11 a0 e1                                      asr r1, r1, #3
0043fb34  be 36 45 e3                                      movt r3, #0x56be
0043fb38  93 01 03 e0                                      mul r3, r3, r1
0043fb3c  f2 1f a0 e3                                      mov r1, #0x3c8
0043fb40  91 03 01 e0                                      mul r1, r1, r3
0043fb44  80 00 51 e3                                      cmp r1, #0x80
0043fb48  02 00 00 8a                                      bhi #0x43fb58
0043fb4c  eb 24 0b eb                                      bl #0x708f00
0043fb50  08 d0 8d e2                                      add sp, sp, #8
0043fb54  10 80 bd e8                                      pop {r4, pc}
0043fb58  38 42 fb eb                                      bl #0x310440
0043fb5c  fb ff ff ea                                      b #0x43fb50

; FUNCTION 0x0043fbfc, declared_size=448, range_size=448, mode=arm
; class-group: std::vector<tRoomInfo, std::allocator<tRoomInfo> >
; alias: _ZNSt6vectorI9tRoomInfoSaIS0_EEaSERKS2_
; demangled: std::vector<tRoomInfo, std::allocator<tRoomInfo> >::operator=(std::vector<tRoomInfo, std::allocator<tRoomInfo> > const&)
; decoder-mode: arm
0043fbfc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0043fc00  00 00 51 e1                                      cmp r1, r0
0043fc04  14 d0 4d e2                                      sub sp, sp, #0x14
0043fc08  01 90 a0 e1                                      mov sb, r1
0043fc0c  00 40 a0 e1                                      mov r4, r0
0043fc10  31 00 00 0a                                      beq #0x43fcdc
0043fc14  04 30 91 e5                                      ldr r3, [r1, #4]
0043fc18  00 80 91 e5                                      ldr r8, [r1]
0043fc1c  00 60 90 e5                                      ldr r6, [r0]
0043fc20  08 10 90 e5                                      ldr r1, [r0, #8]
0043fc24  03 50 68 e0                                      rsb r5, r8, r3
0043fc28  c9 29 06 e3                                      movw r2, #0x69c9
0043fc2c  01 10 66 e0                                      rsb r1, r6, r1
0043fc30  be 26 45 e3                                      movt r2, #0x56be
0043fc34  c5 51 a0 e1                                      asr r5, r5, #3
0043fc38  c1 11 a0 e1                                      asr r1, r1, #3
0043fc3c  92 05 05 e0                                      mul r5, r2, r5
0043fc40  92 01 01 e0                                      mul r1, r2, r1
0043fc44  05 b0 a0 e1                                      mov fp, r5
0043fc48  01 00 55 e1                                      cmp r5, r1
0043fc4c  4d 00 00 8a                                      bhi #0x43fd88
0043fc50  04 10 90 e5                                      ldr r1, [r0, #4]
0043fc54  01 a0 66 e0                                      rsb sl, r6, r1
0043fc58  ca a1 a0 e1                                      asr sl, sl, #3
0043fc5c  92 0a 0a e0                                      mul sl, r2, sl
0043fc60  04 10 8d e5                                      str r1, [sp, #4]
0043fc64  0a 00 55 e1                                      cmp r5, sl
0043fc68  1e 00 00 8a                                      bhi #0x43fce8
0043fc6c  00 00 55 e3                                      cmp r5, #0
0043fc70  0a 00 00 da                                      ble #0x43fca0
0043fc74  00 70 a0 e3                                      mov r7, #0
0043fc78  07 00 86 e0                                      add r0, r6, r7
0043fc7c  07 10 88 e0                                      add r1, r8, r7
0043fc80  12 ff ff eb                                      bl #0x43f8d0
0043fc84  01 b0 5b e2                                      subs fp, fp, #1
0043fc88  f2 7f 87 e2                                      add r7, r7, #0x3c8
0043fc8c  f9 ff ff 1a                                      bne #0x43fc78
0043fc90  f2 3f a0 e3                                      mov r3, #0x3c8
0043fc94  93 65 26 e0                                      mla r6, r3, r5, r6
0043fc98  04 30 94 e5                                      ldr r3, [r4, #4]
0043fc9c  04 30 8d e5                                      str r3, [sp, #4]
0043fca0  04 10 9d e5                                      ldr r1, [sp, #4]
0043fca4  01 00 56 e1                                      cmp r6, r1
0043fca8  07 00 00 0a                                      beq #0x43fccc
0043fcac  28 00 86 e2                                      add r0, r6, #0x28
0043fcb0  d7 63 0f eb                                      bl #0x818c14
0043fcb4  08 00 86 e2                                      add r0, r6, #8
0043fcb8  3b 4f fb eb                                      bl #0x3139ac
0043fcbc  04 30 9d e5                                      ldr r3, [sp, #4]
0043fcc0  f2 6f 86 e2                                      add r6, r6, #0x3c8
0043fcc4  03 00 56 e1                                      cmp r6, r3
0043fcc8  f7 ff ff 1a                                      bne #0x43fcac
0043fccc  00 60 94 e5                                      ldr r6, [r4]
0043fcd0  f2 3f a0 e3                                      mov r3, #0x3c8
0043fcd4  93 65 26 e0                                      mla r6, r3, r5, r6
0043fcd8  04 60 84 e5                                      str r6, [r4, #4]
0043fcdc  04 00 a0 e1                                      mov r0, r4
0043fce0  14 d0 8d e2                                      add sp, sp, #0x14
0043fce4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0043fce8  f2 1f a0 e3                                      mov r1, #0x3c8
0043fcec  91 8a 2a e0                                      mla sl, r1, sl, r8
0043fcf0  0a 70 68 e0                                      rsb r7, r8, sl
0043fcf4  c7 71 a0 e1                                      asr r7, r7, #3
0043fcf8  92 07 07 e0                                      mul r7, r2, r7
0043fcfc  00 00 57 e3                                      cmp r7, #0
0043fd00  04 80 9d d5                                      ldrle r8, [sp, #4]
0043fd04  10 00 00 da                                      ble #0x43fd4c
0043fd08  00 a0 a0 e3                                      mov sl, #0
0043fd0c  0a 00 86 e0                                      add r0, r6, sl
0043fd10  0a 10 88 e0                                      add r1, r8, sl
0043fd14  ed fe ff eb                                      bl #0x43f8d0
0043fd18  01 70 57 e2                                      subs r7, r7, #1
0043fd1c  f2 af 8a e2                                      add sl, sl, #0x3c8
0043fd20  f9 ff ff 1a                                      bne #0x43fd0c
0043fd24  40 01 94 e8                                      ldm r4, {r6, r8}
0043fd28  c9 39 06 e3                                      movw r3, #0x69c9
0043fd2c  be 36 45 e3                                      movt r3, #0x56be
0043fd30  08 a0 66 e0                                      rsb sl, r6, r8
0043fd34  ca a1 a0 e1                                      asr sl, sl, #3
0043fd38  93 0a 0a e0                                      mul sl, r3, sl
0043fd3c  00 20 99 e5                                      ldr r2, [sb]
0043fd40  f2 1f a0 e3                                      mov r1, #0x3c8
0043fd44  04 30 99 e5                                      ldr r3, [sb, #4]
0043fd48  91 2a 2a e0                                      mla sl, r1, sl, r2
0043fd4c  03 70 6a e0                                      rsb r7, sl, r3
0043fd50  c9 29 06 e3                                      movw r2, #0x69c9
0043fd54  c7 71 a0 e1                                      asr r7, r7, #3
0043fd58  be 26 45 e3                                      movt r2, #0x56be
0043fd5c  92 07 07 e0                                      mul r7, r2, r7
0043fd60  00 00 57 e3                                      cmp r7, #0
0043fd64  d9 ff ff da                                      ble #0x43fcd0
0043fd68  00 60 a0 e3                                      mov r6, #0
0043fd6c  06 00 88 e0                                      add r0, r8, r6
0043fd70  06 10 8a e0                                      add r1, sl, r6
0043fd74  79 ff ff eb                                      bl #0x43fb60
0043fd78  01 70 57 e2                                      subs r7, r7, #1
0043fd7c  f2 6f 86 e2                                      add r6, r6, #0x3c8
0043fd80  f9 ff ff 1a                                      bne #0x43fd6c
0043fd84  d0 ff ff ea                                      b #0x43fccc
0043fd88  10 10 8d e2                                      add r1, sp, #0x10
0043fd8c  08 20 a0 e1                                      mov r2, r8
0043fd90  04 50 21 e5                                      str r5, [r1, #-4]!
0043fd94  80 ff ff eb                                      bl #0x43fb9c
0043fd98  00 60 a0 e1                                      mov r6, r0
0043fd9c  04 00 a0 e1                                      mov r0, r4
0043fda0  53 ff ff eb                                      bl #0x43faf4
0043fda4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0043fda8  f2 2f a0 e3                                      mov r2, #0x3c8
0043fdac  00 60 84 e5                                      str r6, [r4]
0043fdb0  92 63 23 e0                                      mla r3, r2, r3, r6
0043fdb4  08 30 84 e5                                      str r3, [r4, #8]
0043fdb8  c4 ff ff ea                                      b #0x43fcd0

; FUNCTION 0x008068a8, declared_size=188, range_size=188, mode=arm
; class-group: std::vector<tRoomInfo, std::allocator<tRoomInfo> >
; alias: _ZNSt6vectorI9tRoomInfoSaIS0_EE19_M_clear_after_moveEv
; demangled: std::vector<tRoomInfo, std::allocator<tRoomInfo> >::_M_clear_after_move()
; decoder-mode: arm
008068a8  70 40 2d e9                                      push {r4, r5, r6, lr}
008068ac  04 40 90 e5                                      ldr r4, [r0, #4]
008068b0  00 50 90 e5                                      ldr r5, [r0]
008068b4  00 60 a0 e1                                      mov r6, r0
008068b8  05 00 54 e1                                      cmp r4, r5
008068bc  03 00 00 1a                                      bne #0x8068d0
008068c0  14 00 00 ea                                      b #0x806918
008068c4  9b de 02 eb                                      bl #0x8be338
008068c8  04 00 55 e1                                      cmp r5, r4
008068cc  10 00 00 0a                                      beq #0x806914
008068d0  f2 4f 44 e2                                      sub r4, r4, #0x3c8
008068d4  28 00 84 e2                                      add r0, r4, #0x28
008068d8  cd 48 00 eb                                      bl #0x818c14
008068dc  08 20 84 e2                                      add r2, r4, #8
008068e0  14 30 92 e5                                      ldr r3, [r2, #0x14]
008068e4  02 00 53 e1                                      cmp r3, r2
008068e8  03 00 a0 e1                                      mov r0, r3
008068ec  f5 ff ff 0a                                      beq #0x8068c8
008068f0  00 00 53 e3                                      cmp r3, #0
008068f4  f3 ff ff 0a                                      beq #0x8068c8
008068f8  00 10 92 e5                                      ldr r1, [r2]
008068fc  01 10 63 e0                                      rsb r1, r3, r1
00806900  80 00 51 e3                                      cmp r1, #0x80
00806904  ee ff ff 9a                                      bls #0x8068c4
00806908  cc 26 ec eb                                      bl #0x310440
0080690c  04 00 55 e1                                      cmp r5, r4
00806910  ee ff ff 1a                                      bne #0x8068d0
00806914  00 40 96 e5                                      ldr r4, [r6]
00806918  00 00 54 e3                                      cmp r4, #0
0080691c  08 30 96 e5                                      ldr r3, [r6, #8]
00806920  0e 00 00 0a                                      beq #0x806960
00806924  03 10 64 e0                                      rsb r1, r4, r3
00806928  c9 39 06 e3                                      movw r3, #0x69c9
0080692c  c1 11 a0 e1                                      asr r1, r1, #3
00806930  be 36 45 e3                                      movt r3, #0x56be
00806934  93 01 03 e0                                      mul r3, r3, r1
00806938  f2 1f a0 e3                                      mov r1, #0x3c8
0080693c  91 03 01 e0                                      mul r1, r1, r3
00806940  80 00 51 e3                                      cmp r1, #0x80
00806944  02 00 00 8a                                      bhi #0x806954
00806948  04 00 a0 e1                                      mov r0, r4
0080694c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00806950  78 de 02 ea                                      b #0x8be338
00806954  04 00 a0 e1                                      mov r0, r4
00806958  70 40 bd e8                                      pop {r4, r5, r6, lr}
0080695c  b7 26 ec ea                                      b #0x310440
00806960  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00808278, declared_size=276, range_size=276, mode=arm
; class-group: std::vector<tRoomInfo, std::allocator<tRoomInfo> >
; alias: _ZNSt6vectorI9tRoomInfoSaIS0_EE9push_backERKS0_
; demangled: std::vector<tRoomInfo, std::allocator<tRoomInfo> >::push_back(tRoomInfo const&)
; decoder-mode: arm
00808278  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0080827c  00 40 a0 e1                                      mov r4, r0
00808280  08 50 94 e5                                      ldr r5, [r4, #8]
00808284  04 00 90 e5                                      ldr r0, [r0, #4]
00808288  08 d0 4d e2                                      sub sp, sp, #8
0080828c  01 60 a0 e1                                      mov r6, r1
00808290  05 00 50 e1                                      cmp r0, r5
00808294  05 00 00 0a                                      beq #0x8082b0
00808298  30 de f0 eb                                      bl #0x43fb60
0080829c  04 30 94 e5                                      ldr r3, [r4, #4]
008082a0  f2 3f 83 e2                                      add r3, r3, #0x3c8
008082a4  04 30 84 e5                                      str r3, [r4, #4]
008082a8  08 d0 8d e2                                      add sp, sp, #8
008082ac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008082b0  00 20 94 e5                                      ldr r2, [r4]
008082b4  c9 39 06 e3                                      movw r3, #0x69c9
008082b8  be 36 45 e3                                      movt r3, #0x56be
008082bc  05 20 62 e0                                      rsb r2, r2, r5
008082c0  c2 21 a0 e1                                      asr r2, r2, #3
008082c4  93 02 02 e0                                      mul r2, r3, r2
008082c8  d5 33 0b e3                                      movw r3, #0xb3d5
008082cc  01 00 52 e3                                      cmp r2, #1
008082d0  02 10 82 20                                      addhs r1, r2, r2
008082d4  01 10 82 32                                      addlo r1, r2, #1
008082d8  43 30 40 e3                                      movt r3, #0x43
008082dc  03 00 51 e1                                      cmp r1, r3
008082e0  26 00 00 9a                                      bls #0x808380
008082e4  d5 13 0b e3                                      movw r1, #0xb3d5
008082e8  43 10 40 e3                                      movt r1, #0x43
008082ec  08 20 8d e2                                      add r2, sp, #8
008082f0  04 10 22 e5                                      str r1, [r2, #-4]!
008082f4  08 00 84 e2                                      add r0, r4, #8
008082f8  4a d8 f0 eb                                      bl #0x43e428
008082fc  00 90 94 e5                                      ldr sb, [r4]
00808300  c9 39 06 e3                                      movw r3, #0x69c9
00808304  be 36 45 e3                                      movt r3, #0x56be
00808308  05 50 69 e0                                      rsb r5, sb, r5
0080830c  c5 51 a0 e1                                      asr r5, r5, #3
00808310  93 05 05 e0                                      mul r5, r3, r5
00808314  00 a0 a0 e1                                      mov sl, r0
00808318  00 00 55 e3                                      cmp r5, #0
0080831c  00 50 a0 d1                                      movle r5, r0
00808320  09 00 00 da                                      ble #0x80834c
00808324  05 80 a0 e1                                      mov r8, r5
00808328  00 70 a0 e3                                      mov r7, #0
0080832c  07 00 8a e0                                      add r0, sl, r7
00808330  07 10 89 e0                                      add r1, sb, r7
00808334  09 de f0 eb                                      bl #0x43fb60
00808338  01 80 58 e2                                      subs r8, r8, #1
0080833c  f2 7f 87 e2                                      add r7, r7, #0x3c8
00808340  f9 ff ff 1a                                      bne #0x80832c
00808344  f2 3f a0 e3                                      mov r3, #0x3c8
00808348  93 a5 25 e0                                      mla r5, r3, r5, sl
0080834c  06 10 a0 e1                                      mov r1, r6
00808350  05 00 a0 e1                                      mov r0, r5
00808354  01 de f0 eb                                      bl #0x43fb60
00808358  04 00 a0 e1                                      mov r0, r4
0080835c  51 f9 ff eb                                      bl #0x8068a8
00808360  04 30 9d e5                                      ldr r3, [sp, #4]
00808364  f2 2f a0 e3                                      mov r2, #0x3c8
00808368  f2 5f 85 e2                                      add r5, r5, #0x3c8
0080836c  92 a3 23 e0                                      mla r3, r2, r3, sl
00808370  00 a0 84 e5                                      str sl, [r4]
00808374  08 30 84 e5                                      str r3, [r4, #8]
00808378  04 50 84 e5                                      str r5, [r4, #4]
0080837c  c9 ff ff ea                                      b #0x8082a8
00808380  01 00 52 e1                                      cmp r2, r1
00808384  d8 ff ff 9a                                      bls #0x8082ec
00808388  d5 ff ff ea                                      b #0x8082e4

; FUNCTION 0x0081e724, declared_size=204, range_size=204, mode=arm
; class-group: std::vector<tRoomInfo, std::allocator<tRoomInfo> >
; alias: _ZNSt6vectorI9tRoomInfoSaIS0_EEC1Ej.clone.2
; demangled: std::vector<tRoomInfo, std::allocator<tRoomInfo> >::vector(unsigned int) [clone .clone.2]
; decoder-mode: arm
0081e724  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
0081e728  bc 20 9f e5                                      ldr r2, [pc, #0xbc]
0081e72c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081e730  03 30 8f e0                                      add r3, pc, r3
0081e734  02 60 93 e7                                      ldr r6, [r3, r2]
0081e738  f6 df 4d e2                                      sub sp, sp, #0x3d8
0081e73c  00 40 a0 e1                                      mov r4, r0
0081e740  00 10 96 e5                                      ldr r1, [r6]
0081e744  00 50 a0 e3                                      mov r5, #0
0081e748  f6 2f 8d e2                                      add r2, sp, #0x3d8
0081e74c  00 50 84 e5                                      str r5, [r4]
0081e750  d4 13 8d e5                                      str r1, [sp, #0x3d4]
0081e754  04 50 84 e5                                      str r5, [r4, #4]
0081e758  05 10 a0 e1                                      mov r1, r5
0081e75c  d4 53 22 e5                                      str r5, [r2, #-0x3d4]!
0081e760  08 50 a0 e5                                      str r5, [r0, #8]!
0081e764  2f 7f f0 eb                                      bl #0x43e428
0081e768  04 30 9d e5                                      ldr r3, [sp, #4]
0081e76c  f2 2f a0 e3                                      mov r2, #0x3c8
0081e770  08 80 8d e2                                      add r8, sp, #8
0081e774  92 03 23 e0                                      mla r3, r2, r3, r0
0081e778  08 70 88 e2                                      add r7, r8, #8
0081e77c  08 30 84 e5                                      str r3, [r4, #8]
0081e780  00 00 84 e5                                      str r0, [r4]
0081e784  04 00 84 e5                                      str r0, [r4, #4]
0081e788  10 10 a0 e3                                      mov r1, #0x10
0081e78c  07 00 a0 e1                                      mov r0, r7
0081e790  20 70 8d e5                                      str r7, [sp, #0x20]
0081e794  24 70 8d e5                                      str r7, [sp, #0x24]
0081e798  b7 cb eb eb                                      bl #0x31167c
0081e79c  20 30 9d e5                                      ldr r3, [sp, #0x20]
0081e7a0  28 80 88 e2                                      add r8, r8, #0x28
0081e7a4  08 00 a0 e1                                      mov r0, r8
0081e7a8  00 50 c3 e5                                      strb r5, [r3]
0081e7ac  74 ea ff eb                                      bl #0x819184
0081e7b0  00 30 94 e5                                      ldr r3, [r4]
0081e7b4  08 00 a0 e1                                      mov r0, r8
0081e7b8  04 30 84 e5                                      str r3, [r4, #4]
0081e7bc  14 e9 ff eb                                      bl #0x818c14
0081e7c0  07 00 a0 e1                                      mov r0, r7
0081e7c4  a2 e6 eb eb                                      bl #0x318254
0081e7c8  d4 23 9d e5                                      ldr r2, [sp, #0x3d4]
0081e7cc  00 30 96 e5                                      ldr r3, [r6]
0081e7d0  04 00 a0 e1                                      mov r0, r4
0081e7d4  03 00 52 e1                                      cmp r2, r3
0081e7d8  01 00 00 1a                                      bne #0x81e7e4
0081e7dc  f6 df 8d e2                                      add sp, sp, #0x3d8
0081e7e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081e7e4  c9 be eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081e7e8  60 63 17 00 ac 40 00 00                          .byte 0x60, 0x63, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00
