; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003db388, declared_size=116, range_size=116, mode=arm
; class-group: std::vector<CharTimers::_Timer, std::allocator<CharTimers::_Timer> >
; alias: _ZNSt6vectorIN10CharTimers6_TimerESaIS1_EED1Ev
; demangled: std::vector<CharTimers::_Timer, std::allocator<CharTimers::_Timer> >::~vector()
; decoder-mode: arm
003db388  10 40 2d e9                                      push {r4, lr}
003db38c  0c 00 90 e8                                      ldm r0, {r2, r3}
003db390  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
003db394  00 40 a0 e1                                      mov r4, r0
003db398  02 00 53 e1                                      cmp r3, r2
003db39c  01 10 8f e0                                      add r1, pc, r1
003db3a0  05 00 00 0a                                      beq #0x3db3bc
003db3a4  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
003db3a8  00 10 91 e7                                      ldr r1, [r1, r0]
003db3ac  08 10 81 e2                                      add r1, r1, #8
003db3b0  20 10 23 e5                                      str r1, [r3, #-0x20]!
003db3b4  03 00 52 e1                                      cmp r2, r3
003db3b8  fc ff ff 1a                                      bne #0x3db3b0
003db3bc  00 00 94 e5                                      ldr r0, [r4]
003db3c0  00 00 50 e3                                      cmp r0, #0
003db3c4  05 00 00 0a                                      beq #0x3db3e0
003db3c8  08 10 94 e5                                      ldr r1, [r4, #8]
003db3cc  01 10 60 e0                                      rsb r1, r0, r1
003db3d0  1f 10 c1 e3                                      bic r1, r1, #0x1f
003db3d4  80 00 51 e3                                      cmp r1, #0x80
003db3d8  02 00 00 8a                                      bhi #0x3db3e8
003db3dc  c7 b6 0c eb                                      bl #0x708f00
003db3e0  04 00 a0 e1                                      mov r0, r4
003db3e4  10 80 bd e8                                      pop {r4, pc}
003db3e8  14 d4 fc eb                                      bl #0x310440
003db3ec  04 00 a0 e1                                      mov r0, r4
003db3f0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003db3f4  f4 96 5b 00 88 38 00 00                          .byte 0xf4, 0x96, 0x5b, 0x00, 0x88, 0x38, 0x00, 0x00

; FUNCTION 0x003db8a4, declared_size=100, range_size=100, mode=arm
; class-group: std::vector<CharTimers::_Timer, std::allocator<CharTimers::_Timer> >
; alias: _ZNSt6vectorIN10CharTimers6_TimerESaIS1_EE8_M_clearEv
; demangled: std::vector<CharTimers::_Timer, std::allocator<CharTimers::_Timer> >::_M_clear()
; decoder-mode: arm
003db8a4  0c 00 90 e8                                      ldm r0, {r2, r3}
003db8a8  50 10 9f e5                                      ldr r1, [pc, #0x50]
003db8ac  02 00 53 e1                                      cmp r3, r2
003db8b0  01 10 8f e0                                      add r1, pc, r1
003db8b4  06 00 00 0a                                      beq #0x3db8d4
003db8b8  44 c0 9f e5                                      ldr ip, [pc, #0x44]
003db8bc  0c 10 91 e7                                      ldr r1, [r1, ip]
003db8c0  08 10 81 e2                                      add r1, r1, #8
003db8c4  20 10 23 e5                                      str r1, [r3, #-0x20]!
003db8c8  03 00 52 e1                                      cmp r2, r3
003db8cc  fc ff ff 1a                                      bne #0x3db8c4
003db8d0  00 30 90 e5                                      ldr r3, [r0]
003db8d4  00 00 53 e3                                      cmp r3, #0
003db8d8  08 10 90 e5                                      ldr r1, [r0, #8]
003db8dc  1e ff 2f 01                                      bxeq lr
003db8e0  01 10 63 e0                                      rsb r1, r3, r1
003db8e4  1f 10 c1 e3                                      bic r1, r1, #0x1f
003db8e8  80 00 51 e3                                      cmp r1, #0x80
003db8ec  01 00 00 8a                                      bhi #0x3db8f8
003db8f0  03 00 a0 e1                                      mov r0, r3
003db8f4  81 b5 0c ea                                      b #0x708f00
003db8f8  03 00 a0 e1                                      mov r0, r3
003db8fc  cf d2 fc ea                                      b #0x310440
; mapping-symbol data/literal pool
003db900  e0 91 5b 00 88 38 00 00                          .byte 0xe0, 0x91, 0x5b, 0x00, 0x88, 0x38, 0x00, 0x00

; FUNCTION 0x003db908, declared_size=100, range_size=100, mode=arm
; class-group: std::vector<CharTimers::_Timer, std::allocator<CharTimers::_Timer> >
; alias: _ZNSt6vectorIN10CharTimers6_TimerESaIS1_EE19_M_clear_after_moveEv
; demangled: std::vector<CharTimers::_Timer, std::allocator<CharTimers::_Timer> >::_M_clear_after_move()
; decoder-mode: arm
003db908  0c 00 90 e8                                      ldm r0, {r2, r3}
003db90c  50 10 9f e5                                      ldr r1, [pc, #0x50]
003db910  02 00 53 e1                                      cmp r3, r2
003db914  01 10 8f e0                                      add r1, pc, r1
003db918  06 00 00 0a                                      beq #0x3db938
003db91c  44 c0 9f e5                                      ldr ip, [pc, #0x44]
003db920  0c 10 91 e7                                      ldr r1, [r1, ip]
003db924  08 10 81 e2                                      add r1, r1, #8
003db928  20 10 23 e5                                      str r1, [r3, #-0x20]!
003db92c  03 00 52 e1                                      cmp r2, r3
003db930  fc ff ff 1a                                      bne #0x3db928
003db934  00 30 90 e5                                      ldr r3, [r0]
003db938  00 00 53 e3                                      cmp r3, #0
003db93c  08 10 90 e5                                      ldr r1, [r0, #8]
003db940  1e ff 2f 01                                      bxeq lr
003db944  01 10 63 e0                                      rsb r1, r3, r1
003db948  1f 10 c1 e3                                      bic r1, r1, #0x1f
003db94c  80 00 51 e3                                      cmp r1, #0x80
003db950  01 00 00 8a                                      bhi #0x3db95c
003db954  03 00 a0 e1                                      mov r0, r3
003db958  68 b5 0c ea                                      b #0x708f00
003db95c  03 00 a0 e1                                      mov r0, r3
003db960  b6 d2 fc ea                                      b #0x310440
; mapping-symbol data/literal pool
003db964  7c 91 5b 00 88 38 00 00                          .byte 0x7c, 0x91, 0x5b, 0x00, 0x88, 0x38, 0x00, 0x00

; FUNCTION 0x003dba84, declared_size=136, range_size=136, mode=arm
; class-group: std::vector<CharTimers::_Timer, std::allocator<CharTimers::_Timer> >
; alias: _ZNSt6vectorIN10CharTimers6_TimerESaIS1_EE7reserveEj.clone.2
; demangled: std::vector<CharTimers::_Timer, std::allocator<CharTimers::_Timer> >::reserve(unsigned int) [clone .clone.2]
; decoder-mode: arm
003dba84  70 40 2d e9                                      push {r4, r5, r6, lr}
003dba88  00 20 90 e5                                      ldr r2, [r0]
003dba8c  08 30 90 e5                                      ldr r3, [r0, #8]
003dba90  08 d0 4d e2                                      sub sp, sp, #8
003dba94  14 10 a0 e3                                      mov r1, #0x14
003dba98  03 30 62 e0                                      rsb r3, r2, r3
003dba9c  c3 32 a0 e1                                      asr r3, r3, #5
003dbaa0  13 00 53 e3                                      cmp r3, #0x13
003dbaa4  00 40 a0 e1                                      mov r4, r0
003dbaa8  04 10 8d e5                                      str r1, [sp, #4]
003dbaac  0f 00 00 8a                                      bhi #0x3dbaf0
003dbab0  04 30 90 e5                                      ldr r3, [r0, #4]
003dbab4  00 00 52 e3                                      cmp r2, #0
003dbab8  03 50 62 e0                                      rsb r5, r2, r3
003dbabc  c5 52 a0 e1                                      asr r5, r5, #5
003dbac0  0c 00 00 0a                                      beq #0x3dbaf8
003dbac4  04 10 8d e2                                      add r1, sp, #4
003dbac8  c3 ff ff eb                                      bl #0x3db9dc
003dbacc  00 60 a0 e1                                      mov r6, r0
003dbad0  04 00 a0 e1                                      mov r0, r4
003dbad4  72 ff ff eb                                      bl #0x3db8a4
003dbad8  04 30 9d e5                                      ldr r3, [sp, #4]
003dbadc  85 52 86 e0                                      add r5, r6, r5, lsl #5
003dbae0  04 50 84 e5                                      str r5, [r4, #4]
003dbae4  83 32 86 e0                                      add r3, r6, r3, lsl #5
003dbae8  08 30 84 e5                                      str r3, [r4, #8]
003dbaec  00 60 84 e5                                      str r6, [r4]
003dbaf0  08 d0 8d e2                                      add sp, sp, #8
003dbaf4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003dbaf8  08 00 80 e2                                      add r0, r0, #8
003dbafc  04 20 8d e2                                      add r2, sp, #4
003dbb00  99 ff ff eb                                      bl #0x3db96c
003dbb04  00 60 a0 e1                                      mov r6, r0
003dbb08  f2 ff ff ea                                      b #0x3dbad8

; FUNCTION 0x003dbba4, declared_size=460, range_size=460, mode=arm
; class-group: std::vector<CharTimers::_Timer, std::allocator<CharTimers::_Timer> >
; alias: _ZNSt6vectorIN10CharTimers6_TimerESaIS1_EE9push_backERKS1_
; demangled: std::vector<CharTimers::_Timer, std::allocator<CharTimers::_Timer> >::push_back(CharTimers::_Timer const&)
; decoder-mode: arm
003dbba4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003dbba8  88 00 90 e9                                      ldmib r0, {r3, r7}
003dbbac  b4 61 9f e5                                      ldr r6, [pc, #0x1b4]
003dbbb0  08 d0 4d e2                                      sub sp, sp, #8
003dbbb4  07 00 53 e1                                      cmp r3, r7
003dbbb8  00 50 a0 e1                                      mov r5, r0
003dbbbc  01 40 a0 e1                                      mov r4, r1
003dbbc0  06 60 8f e0                                      add r6, pc, r6
003dbbc4  18 00 00 0a                                      beq #0x3dbc2c
003dbbc8  9c 21 9f e5                                      ldr r2, [pc, #0x19c]
003dbbcc  02 20 96 e7                                      ldr r2, [r6, r2]
003dbbd0  08 20 82 e2                                      add r2, r2, #8
003dbbd4  00 20 83 e5                                      str r2, [r3]
003dbbd8  04 20 91 e5                                      ldr r2, [r1, #4]
003dbbdc  04 20 83 e5                                      str r2, [r3, #4]
003dbbe0  08 20 91 e5                                      ldr r2, [r1, #8]
003dbbe4  08 20 83 e5                                      str r2, [r3, #8]
003dbbe8  0c 20 91 e5                                      ldr r2, [r1, #0xc]
003dbbec  0c 20 83 e5                                      str r2, [r3, #0xc]
003dbbf0  10 20 91 e5                                      ldr r2, [r1, #0x10]
003dbbf4  10 20 83 e5                                      str r2, [r3, #0x10]
003dbbf8  14 20 d1 e5                                      ldrb r2, [r1, #0x14]
003dbbfc  14 20 c3 e5                                      strb r2, [r3, #0x14]
003dbc00  15 20 d1 e5                                      ldrb r2, [r1, #0x15]
003dbc04  15 20 c3 e5                                      strb r2, [r3, #0x15]
003dbc08  18 20 91 e5                                      ldr r2, [r1, #0x18]
003dbc0c  18 20 83 e5                                      str r2, [r3, #0x18]
003dbc10  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
003dbc14  1c 20 83 e5                                      str r2, [r3, #0x1c]
003dbc18  04 30 90 e5                                      ldr r3, [r0, #4]
003dbc1c  20 30 83 e2                                      add r3, r3, #0x20
003dbc20  04 30 80 e5                                      str r3, [r0, #4]
003dbc24  08 d0 8d e2                                      add sp, sp, #8
003dbc28  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003dbc2c  00 30 90 e5                                      ldr r3, [r0]
003dbc30  07 30 63 e0                                      rsb r3, r3, r7
003dbc34  c3 32 a0 e1                                      asr r3, r3, #5
003dbc38  01 00 53 e3                                      cmp r3, #1
003dbc3c  03 10 83 20                                      addhs r1, r3, r3
003dbc40  01 10 83 32                                      addlo r1, r3, #1
003dbc44  7e 03 71 e3                                      cmn r1, #0xf8000001
003dbc48  40 00 00 9a                                      bls #0x3dbd50
003dbc4c  3e 13 e0 e3                                      mvn r1, #0xf8000000
003dbc50  08 20 8d e2                                      add r2, sp, #8
003dbc54  04 10 22 e5                                      str r1, [r2, #-4]!
003dbc58  08 00 85 e2                                      add r0, r5, #8
003dbc5c  42 ff ff eb                                      bl #0x3db96c
003dbc60  00 20 95 e5                                      ldr r2, [r5]
003dbc64  00 80 a0 e1                                      mov r8, r0
003dbc68  07 70 62 e0                                      rsb r7, r2, r7
003dbc6c  c7 72 a0 e1                                      asr r7, r7, #5
003dbc70  00 00 57 e3                                      cmp r7, #0
003dbc74  38 00 00 da                                      ble #0x3dbd5c
003dbc78  ec e0 9f e5                                      ldr lr, [pc, #0xec]
003dbc7c  07 10 a0 e1                                      mov r1, r7
003dbc80  00 30 a0 e1                                      mov r3, r0
003dbc84  0e c0 96 e7                                      ldr ip, [r6, lr]
003dbc88  08 c0 8c e2                                      add ip, ip, #8
003dbc8c  00 c0 83 e5                                      str ip, [r3]
003dbc90  04 00 92 e5                                      ldr r0, [r2, #4]
003dbc94  01 10 51 e2                                      subs r1, r1, #1
003dbc98  04 00 83 e5                                      str r0, [r3, #4]
003dbc9c  08 00 92 e5                                      ldr r0, [r2, #8]
003dbca0  08 00 83 e5                                      str r0, [r3, #8]
003dbca4  0c 00 92 e5                                      ldr r0, [r2, #0xc]
003dbca8  0c 00 83 e5                                      str r0, [r3, #0xc]
003dbcac  10 00 92 e5                                      ldr r0, [r2, #0x10]
003dbcb0  10 00 83 e5                                      str r0, [r3, #0x10]
003dbcb4  14 00 d2 e5                                      ldrb r0, [r2, #0x14]
003dbcb8  14 00 c3 e5                                      strb r0, [r3, #0x14]
003dbcbc  15 00 d2 e5                                      ldrb r0, [r2, #0x15]
003dbcc0  15 00 c3 e5                                      strb r0, [r3, #0x15]
003dbcc4  18 00 92 e5                                      ldr r0, [r2, #0x18]
003dbcc8  18 00 83 e5                                      str r0, [r3, #0x18]
003dbccc  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
003dbcd0  20 20 82 e2                                      add r2, r2, #0x20
003dbcd4  1c 00 83 e5                                      str r0, [r3, #0x1c]
003dbcd8  20 30 83 e2                                      add r3, r3, #0x20
003dbcdc  ea ff ff 1a                                      bne #0x3dbc8c
003dbce0  87 72 88 e0                                      add r7, r8, r7, lsl #5
003dbce4  0e 30 96 e7                                      ldr r3, [r6, lr]
003dbce8  05 00 a0 e1                                      mov r0, r5
003dbcec  08 30 83 e2                                      add r3, r3, #8
003dbcf0  00 30 87 e5                                      str r3, [r7]
003dbcf4  04 30 94 e5                                      ldr r3, [r4, #4]
003dbcf8  04 30 87 e5                                      str r3, [r7, #4]
003dbcfc  08 30 94 e5                                      ldr r3, [r4, #8]
003dbd00  08 30 87 e5                                      str r3, [r7, #8]
003dbd04  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003dbd08  0c 30 87 e5                                      str r3, [r7, #0xc]
003dbd0c  10 30 94 e5                                      ldr r3, [r4, #0x10]
003dbd10  10 30 87 e5                                      str r3, [r7, #0x10]
003dbd14  14 30 d4 e5                                      ldrb r3, [r4, #0x14]
003dbd18  14 30 c7 e5                                      strb r3, [r7, #0x14]
003dbd1c  15 30 d4 e5                                      ldrb r3, [r4, #0x15]
003dbd20  15 30 c7 e5                                      strb r3, [r7, #0x15]
003dbd24  18 30 94 e5                                      ldr r3, [r4, #0x18]
003dbd28  18 30 87 e5                                      str r3, [r7, #0x18]
003dbd2c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003dbd30  1c 30 87 e5                                      str r3, [r7, #0x1c]
003dbd34  f3 fe ff eb                                      bl #0x3db908
003dbd38  04 30 9d e5                                      ldr r3, [sp, #4]
003dbd3c  20 70 87 e2                                      add r7, r7, #0x20
003dbd40  00 80 85 e5                                      str r8, [r5]
003dbd44  83 82 88 e0                                      add r8, r8, r3, lsl #5
003dbd48  80 01 85 e9                                      stmib r5, {r7, r8}
003dbd4c  b4 ff ff ea                                      b #0x3dbc24
003dbd50  01 00 53 e1                                      cmp r3, r1
003dbd54  bd ff ff 9a                                      bls #0x3dbc50
003dbd58  bb ff ff ea                                      b #0x3dbc4c
003dbd5c  00 70 a0 e1                                      mov r7, r0
003dbd60  04 e0 9f e5                                      ldr lr, [pc, #4]
003dbd64  de ff ff ea                                      b #0x3dbce4
; mapping-symbol data/literal pool
003dbd68  d0 8e 5b 00 88 38 00 00                          .byte 0xd0, 0x8e, 0x5b, 0x00, 0x88, 0x38, 0x00, 0x00
