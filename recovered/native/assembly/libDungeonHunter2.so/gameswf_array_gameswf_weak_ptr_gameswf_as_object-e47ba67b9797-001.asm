; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00760560, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::array<gameswf::weak_ptr<gameswf::as_object> >
; alias: _ZN7gameswf5arrayINS_8weak_ptrINS_9as_objectEEEE7reserveEi
; demangled: gameswf::array<gameswf::weak_ptr<gameswf::as_object> >::reserve(int)
; decoder-mode: arm
00760560  10 40 2d e9                                      push {r4, lr}
00760564  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00760568  00 40 a0 e1                                      mov r4, r0
0076056c  00 00 53 e3                                      cmp r3, #0
00760570  0f 00 00 1a                                      bne #0x7605b4
00760574  00 00 51 e3                                      cmp r1, #0
00760578  08 20 90 e5                                      ldr r2, [r0, #8]
0076057c  08 10 80 e5                                      str r1, [r0, #8]
00760580  0c 00 00 1a                                      bne #0x7605b8
00760584  00 00 90 e5                                      ldr r0, [r0]
00760588  00 00 50 e3                                      cmp r0, #0
0076058c  01 00 00 0a                                      beq #0x760598
00760590  82 11 a0 e1                                      lsl r1, r2, #3
00760594  67 c9 ff eb                                      bl #0x752b38
00760598  00 30 a0 e3                                      mov r3, #0
0076059c  00 30 84 e5                                      str r3, [r4]
007605a0  10 80 bd e8                                      pop {r4, pc}
007605a4  81 01 a0 e1                                      lsl r0, r1, #3
007605a8  0c 10 a0 e1                                      mov r1, ip
007605ac  7a c9 ff eb                                      bl #0x752b9c
007605b0  00 00 84 e5                                      str r0, [r4]
007605b4  10 80 bd e8                                      pop {r4, pc}
007605b8  00 c0 90 e5                                      ldr ip, [r0]
007605bc  00 00 5c e3                                      cmp ip, #0
007605c0  f7 ff ff 0a                                      beq #0x7605a4
007605c4  0c 00 a0 e1                                      mov r0, ip
007605c8  81 11 a0 e1                                      lsl r1, r1, #3
007605cc  82 21 a0 e1                                      lsl r2, r2, #3
007605d0  75 c9 ff eb                                      bl #0x752bac
007605d4  00 00 84 e5                                      str r0, [r4]
007605d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007605dc, declared_size=192, range_size=192, mode=arm
; class-group: gameswf::array<gameswf::weak_ptr<gameswf::as_object> >
; alias: _ZN7gameswf5arrayINS_8weak_ptrINS_9as_objectEEEE6resizeEi
; demangled: gameswf::array<gameswf::weak_ptr<gameswf::as_object> >::resize(int)
; decoder-mode: arm
007605dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007605e0  04 80 90 e5                                      ldr r8, [r0, #4]
007605e4  00 60 a0 e1                                      mov r6, r0
007605e8  01 70 a0 e1                                      mov r7, r1
007605ec  01 00 58 e1                                      cmp r8, r1
007605f0  11 00 00 da                                      ble #0x76063c
007605f4  81 51 a0 e1                                      lsl r5, r1, #3
007605f8  01 40 a0 e1                                      mov r4, r1
007605fc  00 30 96 e5                                      ldr r3, [r6]
00760600  01 40 84 e2                                      add r4, r4, #1
00760604  05 30 93 e7                                      ldr r3, [r3, r5]
00760608  08 50 85 e2                                      add r5, r5, #8
0076060c  00 00 53 e3                                      cmp r3, #0
00760610  03 00 a0 e1                                      mov r0, r3
00760614  06 00 00 0a                                      beq #0x760634
00760618  00 20 93 e5                                      ldr r2, [r3]
0076061c  01 20 42 e2                                      sub r2, r2, #1
00760620  00 00 52 e3                                      cmp r2, #0
00760624  02 10 a0 e1                                      mov r1, r2
00760628  00 20 83 e5                                      str r2, [r3]
0076062c  00 00 00 1a                                      bne #0x760634
00760630  40 c9 ff eb                                      bl #0x752b38
00760634  08 00 54 e1                                      cmp r4, r8
00760638  ef ff ff 1a                                      bne #0x7605fc
0076063c  00 00 57 e3                                      cmp r7, #0
00760640  02 00 00 0a                                      beq #0x760650
00760644  08 30 96 e5                                      ldr r3, [r6, #8]
00760648  03 00 57 e1                                      cmp r7, r3
0076064c  0e 00 00 ca                                      bgt #0x76068c
00760650  07 00 58 e1                                      cmp r8, r7
00760654  0a 00 00 aa                                      bge #0x760684
00760658  08 30 a0 e1                                      mov r3, r8
0076065c  00 10 a0 e3                                      mov r1, #0
00760660  88 81 a0 e1                                      lsl r8, r8, #3
00760664  00 20 96 e5                                      ldr r2, [r6]
00760668  01 30 83 e2                                      add r3, r3, #1
0076066c  07 00 53 e1                                      cmp r3, r7
00760670  08 00 82 e0                                      add r0, r2, r8
00760674  08 10 82 e7                                      str r1, [r2, r8]
00760678  04 10 80 e5                                      str r1, [r0, #4]
0076067c  08 80 88 e2                                      add r8, r8, #8
00760680  f7 ff ff 1a                                      bne #0x760664
00760684  04 70 86 e5                                      str r7, [r6, #4]
00760688  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0076068c  06 00 a0 e1                                      mov r0, r6
00760690  c7 10 87 e0                                      add r1, r7, r7, asr #1
00760694  b1 ff ff eb                                      bl #0x760560
00760698  ec ff ff ea                                      b #0x760650

; FUNCTION 0x00760718, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::array<gameswf::weak_ptr<gameswf::as_object> >
; alias: _ZN7gameswf5arrayINS_8weak_ptrINS_9as_objectEEEEaSERKS4_
; demangled: gameswf::array<gameswf::weak_ptr<gameswf::as_object> >::operator=(gameswf::array<gameswf::weak_ptr<gameswf::as_object> > const&)
; decoder-mode: arm
00760718  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0076071c  00 80 a0 e1                                      mov r8, r0
00760720  01 90 a0 e1                                      mov sb, r1
00760724  04 10 91 e5                                      ldr r1, [r1, #4]
00760728  ab ff ff eb                                      bl #0x7605dc
0076072c  04 30 98 e5                                      ldr r3, [r8, #4]
00760730  00 00 53 e3                                      cmp r3, #0
00760734  1e 00 00 da                                      ble #0x7607b4
00760738  00 40 a0 e3                                      mov r4, #0
0076073c  00 70 98 e5                                      ldr r7, [r8]
00760740  00 a0 99 e5                                      ldr sl, [sb]
00760744  84 61 a0 e1                                      lsl r6, r4, #3
00760748  84 31 97 e7                                      ldr r3, [r7, r4, lsl #3]
0076074c  84 51 9a e7                                      ldr r5, [sl, r4, lsl #3]
00760750  06 b0 87 e0                                      add fp, r7, r6
00760754  01 40 84 e2                                      add r4, r4, #1
00760758  03 00 55 e1                                      cmp r5, r3
0076075c  06 a0 8a e0                                      add sl, sl, r6
00760760  0e 00 00 0a                                      beq #0x7607a0
00760764  00 00 53 e3                                      cmp r3, #0
00760768  03 00 a0 e1                                      mov r0, r3
0076076c  06 00 00 0a                                      beq #0x76078c
00760770  00 20 93 e5                                      ldr r2, [r3]
00760774  01 20 42 e2                                      sub r2, r2, #1
00760778  00 00 52 e3                                      cmp r2, #0
0076077c  02 10 a0 e1                                      mov r1, r2
00760780  00 20 83 e5                                      str r2, [r3]
00760784  00 00 00 1a                                      bne #0x76078c
00760788  ea c8 ff eb                                      bl #0x752b38
0076078c  00 00 55 e3                                      cmp r5, #0
00760790  06 50 87 e7                                      str r5, [r7, r6]
00760794  00 30 95 15                                      ldrne r3, [r5]
00760798  01 30 83 12                                      addne r3, r3, #1
0076079c  00 30 85 15                                      strne r3, [r5]
007607a0  04 30 9a e5                                      ldr r3, [sl, #4]
007607a4  04 30 8b e5                                      str r3, [fp, #4]
007607a8  04 30 98 e5                                      ldr r3, [r8, #4]
007607ac  04 00 53 e1                                      cmp r3, r4
007607b0  e1 ff ff ca                                      bgt #0x76073c
007607b4  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007745a8, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::array<gameswf::weak_ptr<gameswf::as_object> >
; alias: _ZN7gameswf5arrayINS_8weak_ptrINS_9as_objectEEEE6resizeEi.clone.1
; demangled: gameswf::array<gameswf::weak_ptr<gameswf::as_object> >::resize(int) [clone .clone.1]
; decoder-mode: arm
007745a8  70 40 2d e9                                      push {r4, r5, r6, lr}
007745ac  04 40 90 e5                                      ldr r4, [r0, #4]
007745b0  00 60 a0 e1                                      mov r6, r0
007745b4  00 00 54 e3                                      cmp r4, #0
007745b8  12 00 00 da                                      ble #0x774608
007745bc  00 50 a0 e3                                      mov r5, #0
007745c0  00 30 96 e5                                      ldr r3, [r6]
007745c4  85 31 93 e7                                      ldr r3, [r3, r5, lsl #3]
007745c8  01 50 85 e2                                      add r5, r5, #1
007745cc  00 00 53 e3                                      cmp r3, #0
007745d0  03 00 a0 e1                                      mov r0, r3
007745d4  06 00 00 0a                                      beq #0x7745f4
007745d8  00 20 93 e5                                      ldr r2, [r3]
007745dc  01 20 42 e2                                      sub r2, r2, #1
007745e0  00 00 52 e3                                      cmp r2, #0
007745e4  02 10 a0 e1                                      mov r1, r2
007745e8  00 20 83 e5                                      str r2, [r3]
007745ec  00 00 00 1a                                      bne #0x7745f4
007745f0  50 79 ff eb                                      bl #0x752b38
007745f4  04 00 55 e1                                      cmp r5, r4
007745f8  f0 ff ff 1a                                      bne #0x7745c0
007745fc  00 30 a0 e3                                      mov r3, #0
00774600  04 30 86 e5                                      str r3, [r6, #4]
00774604  70 80 bd e8                                      pop {r4, r5, r6, pc}
00774608  fb ff ff aa                                      bge #0x7745fc
0077460c  84 31 a0 e1                                      lsl r3, r4, #3
00774610  00 10 a0 e3                                      mov r1, #0
00774614  00 20 96 e5                                      ldr r2, [r6]
00774618  01 40 94 e2                                      adds r4, r4, #1
0077461c  03 00 82 e0                                      add r0, r2, r3
00774620  03 10 82 e7                                      str r1, [r2, r3]
00774624  04 10 80 e5                                      str r1, [r0, #4]
00774628  08 30 83 e2                                      add r3, r3, #8
0077462c  f8 ff ff 1a                                      bne #0x774614
00774630  00 30 a0 e3                                      mov r3, #0
00774634  04 30 86 e5                                      str r3, [r6, #4]
00774638  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007a2a58, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::array<gameswf::weak_ptr<gameswf::as_object> >
; alias: _ZN7gameswf5arrayINS_8weak_ptrINS_9as_objectEEEE6resizeEi.clone.3
; demangled: gameswf::array<gameswf::weak_ptr<gameswf::as_object> >::resize(int) [clone .clone.3]
; decoder-mode: arm
007a2a58  70 40 2d e9                                      push {r4, r5, r6, lr}
007a2a5c  04 40 90 e5                                      ldr r4, [r0, #4]
007a2a60  00 60 a0 e1                                      mov r6, r0
007a2a64  00 00 54 e3                                      cmp r4, #0
007a2a68  12 00 00 da                                      ble #0x7a2ab8
007a2a6c  00 50 a0 e3                                      mov r5, #0
007a2a70  00 30 96 e5                                      ldr r3, [r6]
007a2a74  85 31 93 e7                                      ldr r3, [r3, r5, lsl #3]
007a2a78  01 50 85 e2                                      add r5, r5, #1
007a2a7c  00 00 53 e3                                      cmp r3, #0
007a2a80  03 00 a0 e1                                      mov r0, r3
007a2a84  06 00 00 0a                                      beq #0x7a2aa4
007a2a88  00 20 93 e5                                      ldr r2, [r3]
007a2a8c  01 20 42 e2                                      sub r2, r2, #1
007a2a90  00 00 52 e3                                      cmp r2, #0
007a2a94  02 10 a0 e1                                      mov r1, r2
007a2a98  00 20 83 e5                                      str r2, [r3]
007a2a9c  00 00 00 1a                                      bne #0x7a2aa4
007a2aa0  24 c0 fe eb                                      bl #0x752b38
007a2aa4  04 00 55 e1                                      cmp r5, r4
007a2aa8  f0 ff ff 1a                                      bne #0x7a2a70
007a2aac  00 30 a0 e3                                      mov r3, #0
007a2ab0  04 30 86 e5                                      str r3, [r6, #4]
007a2ab4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007a2ab8  fb ff ff aa                                      bge #0x7a2aac
007a2abc  84 31 a0 e1                                      lsl r3, r4, #3
007a2ac0  00 10 a0 e3                                      mov r1, #0
007a2ac4  00 20 96 e5                                      ldr r2, [r6]
007a2ac8  01 40 94 e2                                      adds r4, r4, #1
007a2acc  03 00 82 e0                                      add r0, r2, r3
007a2ad0  03 10 82 e7                                      str r1, [r2, r3]
007a2ad4  04 10 80 e5                                      str r1, [r0, #4]
007a2ad8  08 30 83 e2                                      add r3, r3, #8
007a2adc  f8 ff ff 1a                                      bne #0x7a2ac4
007a2ae0  00 30 a0 e3                                      mov r3, #0
007a2ae4  04 30 86 e5                                      str r3, [r6, #4]
007a2ae8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007dab28, declared_size=148, range_size=148, mode=arm
; class-group: gameswf::array<gameswf::weak_ptr<gameswf::as_object> >
; alias: _ZN7gameswf5arrayINS_8weak_ptrINS_9as_objectEEEE6resizeEi.clone.0
; demangled: gameswf::array<gameswf::weak_ptr<gameswf::as_object> >::resize(int) [clone .clone.0]
; decoder-mode: arm
007dab28  70 40 2d e9                                      push {r4, r5, r6, lr}
007dab2c  04 40 90 e5                                      ldr r4, [r0, #4]
007dab30  00 60 a0 e1                                      mov r6, r0
007dab34  00 00 54 e3                                      cmp r4, #0
007dab38  12 00 00 da                                      ble #0x7dab88
007dab3c  00 50 a0 e3                                      mov r5, #0
007dab40  00 30 96 e5                                      ldr r3, [r6]
007dab44  85 31 93 e7                                      ldr r3, [r3, r5, lsl #3]
007dab48  01 50 85 e2                                      add r5, r5, #1
007dab4c  00 00 53 e3                                      cmp r3, #0
007dab50  03 00 a0 e1                                      mov r0, r3
007dab54  06 00 00 0a                                      beq #0x7dab74
007dab58  00 20 93 e5                                      ldr r2, [r3]
007dab5c  01 20 42 e2                                      sub r2, r2, #1
007dab60  00 00 52 e3                                      cmp r2, #0
007dab64  02 10 a0 e1                                      mov r1, r2
007dab68  00 20 83 e5                                      str r2, [r3]
007dab6c  00 00 00 1a                                      bne #0x7dab74
007dab70  f0 df fd eb                                      bl #0x752b38
007dab74  04 00 55 e1                                      cmp r5, r4
007dab78  f0 ff ff 1a                                      bne #0x7dab40
007dab7c  00 30 a0 e3                                      mov r3, #0
007dab80  04 30 86 e5                                      str r3, [r6, #4]
007dab84  70 80 bd e8                                      pop {r4, r5, r6, pc}
007dab88  fb ff ff aa                                      bge #0x7dab7c
007dab8c  84 31 a0 e1                                      lsl r3, r4, #3
007dab90  00 10 a0 e3                                      mov r1, #0
007dab94  00 20 96 e5                                      ldr r2, [r6]
007dab98  01 40 94 e2                                      adds r4, r4, #1
007dab9c  03 00 82 e0                                      add r0, r2, r3
007daba0  03 10 82 e7                                      str r1, [r2, r3]
007daba4  04 10 80 e5                                      str r1, [r0, #4]
007daba8  08 30 83 e2                                      add r3, r3, #8
007dabac  f8 ff ff 1a                                      bne #0x7dab94
007dabb0  00 30 a0 e3                                      mov r3, #0
007dabb4  04 30 86 e5                                      str r3, [r6, #4]
007dabb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
