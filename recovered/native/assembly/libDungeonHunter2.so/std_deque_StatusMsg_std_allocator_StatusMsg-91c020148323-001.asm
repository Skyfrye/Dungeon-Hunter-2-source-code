; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329758, declared_size=76, range_size=76, mode=arm
; class-group: std::deque<StatusMsg, std::allocator<StatusMsg> >
; alias: _ZNSt5dequeI9StatusMsgSaIS0_EED1Ev
; demangled: std::deque<StatusMsg, std::allocator<StatusMsg> >::~deque()
; decoder-mode: arm
00329758  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032975c  00 70 a0 e1                                      mov r7, r0
00329760  00 40 90 e5                                      ldr r4, [r0]
00329764  08 50 90 e5                                      ldr r5, [r0, #8]
00329768  10 60 90 e5                                      ldr r6, [r0, #0x10]
0032976c  0c 80 90 e5                                      ldr r8, [r0, #0xc]
00329770  05 00 00 ea                                      b #0x32978c
00329774  04 00 a0 e1                                      mov r0, r4
00329778  1c 40 84 e2                                      add r4, r4, #0x1c
0032977c  8a a8 ff eb                                      bl #0x3139ac
00329780  05 00 54 e1                                      cmp r4, r5
00329784  04 40 b8 05                                      ldreq r4, [r8, #4]!
00329788  70 50 84 02                                      addeq r5, r4, #0x70
0032978c  06 00 54 e1                                      cmp r4, r6
00329790  f7 ff ff 1a                                      bne #0x329774
00329794  07 00 a0 e1                                      mov r0, r7
00329798  cd ff ff eb                                      bl #0x3296d4
0032979c  07 00 a0 e1                                      mov r0, r7
003297a0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00383d10, declared_size=152, range_size=152, mode=arm
; class-group: std::deque<StatusMsg, std::allocator<StatusMsg> >
; alias: _ZNSt5dequeI9StatusMsgSaIS0_EE9pop_frontEv
; demangled: std::deque<StatusMsg, std::allocator<StatusMsg> >::pop_front()
; decoder-mode: arm
00383d10  10 40 2d e9                                      push {r4, lr}
00383d14  00 30 90 e5                                      ldr r3, [r0]
00383d18  00 40 a0 e1                                      mov r4, r0
00383d1c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00383d20  03 00 50 e1                                      cmp r0, r3
00383d24  07 00 00 0a                                      beq #0x383d48
00383d28  00 00 50 e3                                      cmp r0, #0
00383d2c  05 00 00 0a                                      beq #0x383d48
00383d30  00 10 93 e5                                      ldr r1, [r3]
00383d34  01 10 60 e0                                      rsb r1, r0, r1
00383d38  80 00 51 e3                                      cmp r1, #0x80
00383d3c  16 00 00 8a                                      bhi #0x383d9c
00383d40  6e 14 0e eb                                      bl #0x708f00
00383d44  00 30 94 e5                                      ldr r3, [r4]
00383d48  08 20 94 e5                                      ldr r2, [r4, #8]
00383d4c  1c 20 42 e2                                      sub r2, r2, #0x1c
00383d50  02 00 53 e1                                      cmp r3, r2
00383d54  02 00 00 0a                                      beq #0x383d64
00383d58  1c 30 83 e2                                      add r3, r3, #0x1c
00383d5c  00 30 84 e5                                      str r3, [r4]
00383d60  10 80 bd e8                                      pop {r4, pc}
00383d64  04 00 94 e5                                      ldr r0, [r4, #4]
00383d68  00 00 50 e3                                      cmp r0, #0
00383d6c  01 00 00 0a                                      beq #0x383d78
00383d70  70 10 a0 e3                                      mov r1, #0x70
00383d74  61 14 0e eb                                      bl #0x708f00
00383d78  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00383d7c  04 20 83 e2                                      add r2, r3, #4
00383d80  0c 20 84 e5                                      str r2, [r4, #0xc]
00383d84  04 30 93 e5                                      ldr r3, [r3, #4]
00383d88  70 20 83 e2                                      add r2, r3, #0x70
00383d8c  00 30 84 e5                                      str r3, [r4]
00383d90  08 20 84 e5                                      str r2, [r4, #8]
00383d94  04 30 84 e5                                      str r3, [r4, #4]
00383d98  10 80 bd e8                                      pop {r4, pc}
00383d9c  a7 31 fe eb                                      bl #0x310440
00383da0  00 30 94 e5                                      ldr r3, [r4]
00383da4  e7 ff ff ea                                      b #0x383d48

; FUNCTION 0x003be0f0, declared_size=412, range_size=412, mode=arm
; class-group: std::deque<StatusMsg, std::allocator<StatusMsg> >
; alias: _ZNSt5dequeI9StatusMsgSaIS0_EE18_M_push_back_aux_vERKS0_
; demangled: std::deque<StatusMsg, std::allocator<StatusMsg> >::_M_push_back_aux_v(StatusMsg const&)
; decoder-mode: arm
003be0f0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003be0f4  1c a0 90 e5                                      ldr sl, [r0, #0x1c]
003be0f8  20 20 90 e5                                      ldr r2, [r0, #0x20]
003be0fc  24 30 90 e5                                      ldr r3, [r0, #0x24]
003be100  01 60 a0 e1                                      mov r6, r1
003be104  0a 10 62 e0                                      rsb r1, r2, sl
003be108  41 11 43 e0                                      sub r1, r3, r1, asr #2
003be10c  01 00 51 e3                                      cmp r1, #1
003be110  00 40 a0 e1                                      mov r4, r0
003be114  14 00 00 9a                                      bls #0x3be16c
003be118  24 00 84 e2                                      add r0, r4, #0x24
003be11c  eb ff ff eb                                      bl #0x3be0d0
003be120  04 00 8a e5                                      str r0, [sl, #4]
003be124  10 50 94 e5                                      ldr r5, [r4, #0x10]
003be128  10 50 85 e5                                      str r5, [r5, #0x10]
003be12c  14 50 85 e5                                      str r5, [r5, #0x14]
003be130  10 20 96 e5                                      ldr r2, [r6, #0x10]
003be134  05 00 a0 e1                                      mov r0, r5
003be138  14 10 96 e5                                      ldr r1, [r6, #0x14]
003be13c  69 4d fd eb                                      bl #0x3116e8
003be140  18 30 96 e5                                      ldr r3, [r6, #0x18]
003be144  18 30 85 e5                                      str r3, [r5, #0x18]
003be148  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003be14c  04 20 83 e2                                      add r2, r3, #4
003be150  1c 20 84 e5                                      str r2, [r4, #0x1c]
003be154  04 30 93 e5                                      ldr r3, [r3, #4]
003be158  70 20 83 e2                                      add r2, r3, #0x70
003be15c  10 30 84 e5                                      str r3, [r4, #0x10]
003be160  18 20 84 e5                                      str r2, [r4, #0x18]
003be164  14 30 84 e5                                      str r3, [r4, #0x14]
003be168  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003be16c  0c 10 90 e5                                      ldr r1, [r0, #0xc]
003be170  0a 70 61 e0                                      rsb r7, r1, sl
003be174  47 71 a0 e1                                      asr r7, r7, #2
003be178  01 70 87 e2                                      add r7, r7, #1
003be17c  01 90 87 e2                                      add sb, r7, #1
003be180  89 00 53 e1                                      cmp r3, sb, lsl #1
003be184  0a 00 00 9a                                      bls #0x3be1b4
003be188  03 50 69 e0                                      rsb r5, sb, r3
003be18c  a5 50 a0 e1                                      lsr r5, r5, #1
003be190  05 51 82 e0                                      add r5, r2, r5, lsl #2
003be194  05 00 51 e1                                      cmp r1, r5
003be198  2e 00 00 9a                                      bls #0x3be258
003be19c  04 20 8a e2                                      add r2, sl, #4
003be1a0  01 20 52 e0                                      subs r2, r2, r1
003be1a4  1e 00 00 0a                                      beq #0x3be224
003be1a8  05 00 a0 e1                                      mov r0, r5
003be1ac  61 3f fd eb                                      bl #0x30df38
003be1b0  1b 00 00 ea                                      b #0x3be224
003be1b4  00 00 53 e3                                      cmp r3, #0
003be1b8  03 20 a0 11                                      movne r2, r3
003be1bc  01 20 a0 03                                      moveq r2, #1
003be1c0  02 80 83 e2                                      add r8, r3, #2
003be1c4  02 80 88 e0                                      add r8, r8, r2
003be1c8  08 10 a0 e1                                      mov r1, r8
003be1cc  00 20 a0 e3                                      mov r2, #0
003be1d0  20 00 80 e2                                      add r0, r0, #0x20
003be1d4  cd ac fd eb                                      bl #0x329510
003be1d8  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
003be1dc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003be1e0  08 50 69 e0                                      rsb r5, sb, r8
003be1e4  a5 50 a0 e1                                      lsr r5, r5, #1
003be1e8  04 20 82 e2                                      add r2, r2, #4
003be1ec  01 20 52 e0                                      subs r2, r2, r1
003be1f0  00 a0 a0 e1                                      mov sl, r0
003be1f4  05 51 80 e0                                      add r5, r0, r5, lsl #2
003be1f8  1e 00 00 1a                                      bne #0x3be278
003be1fc  20 00 94 e5                                      ldr r0, [r4, #0x20]
003be200  24 10 94 e5                                      ldr r1, [r4, #0x24]
003be204  00 00 50 e3                                      cmp r0, #0
003be208  03 00 00 0a                                      beq #0x3be21c
003be20c  01 11 a0 e1                                      lsl r1, r1, #2
003be210  80 00 51 e3                                      cmp r1, #0x80
003be214  1a 00 00 8a                                      bhi #0x3be284
003be218  38 2b 0d eb                                      bl #0x708f00
003be21c  20 a0 84 e5                                      str sl, [r4, #0x20]
003be220  24 80 84 e5                                      str r8, [r4, #0x24]
003be224  0c 50 84 e5                                      str r5, [r4, #0xc]
003be228  00 30 95 e5                                      ldr r3, [r5]
003be22c  01 70 47 e2                                      sub r7, r7, #1
003be230  07 a1 85 e0                                      add sl, r5, r7, lsl #2
003be234  70 20 83 e2                                      add r2, r3, #0x70
003be238  08 20 84 e5                                      str r2, [r4, #8]
003be23c  04 30 84 e5                                      str r3, [r4, #4]
003be240  1c a0 84 e5                                      str sl, [r4, #0x1c]
003be244  07 31 95 e7                                      ldr r3, [r5, r7, lsl #2]
003be248  70 20 83 e2                                      add r2, r3, #0x70
003be24c  18 20 84 e5                                      str r2, [r4, #0x18]
003be250  14 30 84 e5                                      str r3, [r4, #0x14]
003be254  af ff ff ea                                      b #0x3be118
003be258  04 20 8a e2                                      add r2, sl, #4
003be25c  02 20 61 e0                                      rsb r2, r1, r2
003be260  00 00 52 e3                                      cmp r2, #0
003be264  ee ff ff da                                      ble #0x3be224
003be268  07 01 85 e0                                      add r0, r5, r7, lsl #2
003be26c  00 00 62 e0                                      rsb r0, r2, r0
003be270  30 3f fd eb                                      bl #0x30df38
003be274  ea ff ff ea                                      b #0x3be224
003be278  05 00 a0 e1                                      mov r0, r5
003be27c  2d 3f fd eb                                      bl #0x30df38
003be280  dd ff ff ea                                      b #0x3be1fc
003be284  6d 48 fd eb                                      bl #0x310440
003be288  e3 ff ff ea                                      b #0x3be21c

; FUNCTION 0x003be28c, declared_size=88, range_size=88, mode=arm
; class-group: std::deque<StatusMsg, std::allocator<StatusMsg> >
; alias: _ZNSt5dequeI9StatusMsgSaIS0_EE9push_backERKS0_
; demangled: std::deque<StatusMsg, std::allocator<StatusMsg> >::push_back(StatusMsg const&)
; decoder-mode: arm
003be28c  70 40 2d e9                                      push {r4, r5, r6, lr}
003be290  18 30 90 e5                                      ldr r3, [r0, #0x18]
003be294  10 40 90 e5                                      ldr r4, [r0, #0x10]
003be298  00 50 a0 e1                                      mov r5, r0
003be29c  1c 30 43 e2                                      sub r3, r3, #0x1c
003be2a0  03 00 54 e1                                      cmp r4, r3
003be2a4  01 60 a0 e1                                      mov r6, r1
003be2a8  0b 00 00 0a                                      beq #0x3be2dc
003be2ac  10 40 84 e5                                      str r4, [r4, #0x10]
003be2b0  14 40 84 e5                                      str r4, [r4, #0x14]
003be2b4  04 00 a0 e1                                      mov r0, r4
003be2b8  14 10 91 e5                                      ldr r1, [r1, #0x14]
003be2bc  10 20 96 e5                                      ldr r2, [r6, #0x10]
003be2c0  08 4d fd eb                                      bl #0x3116e8
003be2c4  18 30 96 e5                                      ldr r3, [r6, #0x18]
003be2c8  18 30 84 e5                                      str r3, [r4, #0x18]
003be2cc  10 30 95 e5                                      ldr r3, [r5, #0x10]
003be2d0  1c 30 83 e2                                      add r3, r3, #0x1c
003be2d4  10 30 85 e5                                      str r3, [r5, #0x10]
003be2d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003be2dc  70 40 bd e8                                      pop {r4, r5, r6, lr}
003be2e0  82 ff ff ea                                      b #0x3be0f0
