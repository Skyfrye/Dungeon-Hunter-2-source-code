; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033805c, declared_size=96, range_size=96, mode=arm
; class-group: EventManager
; alias: _ZN12EventManagerC2Ev
; demangled: EventManager::EventManager()
; decoder-mode: arm
0033805c  50 10 9f e5                                      ldr r1, [pc, #0x50]
00338060  30 00 2d e9                                      push {r4, r5}
00338064  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
00338068  01 10 8f e0                                      add r1, pc, r1
0033806c  00 c0 a0 e3                                      mov ip, #0
00338070  04 40 91 e7                                      ldr r4, [r1, r4]
00338074  00 20 a0 e1                                      mov r2, r0
00338078  20 50 80 e2                                      add r5, r0, #0x20
0033807c  08 40 84 e2                                      add r4, r4, #8
00338080  00 40 80 e5                                      str r4, [r0]
00338084  0c c0 80 e5                                      str ip, [r0, #0xc]
00338088  28 40 80 e2                                      add r4, r0, #0x28
0033808c  08 c0 e2 e5                                      strb ip, [r2, #8]!
00338090  14 20 80 e5                                      str r2, [r0, #0x14]
00338094  2c 40 80 e5                                      str r4, [r0, #0x2c]
00338098  18 c0 80 e5                                      str ip, [r0, #0x18]
0033809c  24 50 80 e5                                      str r5, [r0, #0x24]
003380a0  10 20 80 e5                                      str r2, [r0, #0x10]
003380a4  20 50 80 e5                                      str r5, [r0, #0x20]
003380a8  28 40 80 e5                                      str r4, [r0, #0x28]
003380ac  30 00 bd e8                                      pop {r4, r5}
003380b0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003380b4  28 ca 65 00 d4 49 00 00                          .byte 0x28, 0xca, 0x65, 0x00, 0xd4, 0x49, 0x00, 0x00

; FUNCTION 0x003380bc, declared_size=96, range_size=96, mode=arm
; class-group: EventManager
; alias: _ZN12EventManagerC1Ev
; demangled: EventManager::EventManager()
; decoder-mode: arm
003380bc  50 10 9f e5                                      ldr r1, [pc, #0x50]
003380c0  30 00 2d e9                                      push {r4, r5}
003380c4  4c 40 9f e5                                      ldr r4, [pc, #0x4c]
003380c8  01 10 8f e0                                      add r1, pc, r1
003380cc  00 c0 a0 e3                                      mov ip, #0
003380d0  04 40 91 e7                                      ldr r4, [r1, r4]
003380d4  00 20 a0 e1                                      mov r2, r0
003380d8  20 50 80 e2                                      add r5, r0, #0x20
003380dc  08 40 84 e2                                      add r4, r4, #8
003380e0  00 40 80 e5                                      str r4, [r0]
003380e4  0c c0 80 e5                                      str ip, [r0, #0xc]
003380e8  28 40 80 e2                                      add r4, r0, #0x28
003380ec  08 c0 e2 e5                                      strb ip, [r2, #8]!
003380f0  14 20 80 e5                                      str r2, [r0, #0x14]
003380f4  2c 40 80 e5                                      str r4, [r0, #0x2c]
003380f8  18 c0 80 e5                                      str ip, [r0, #0x18]
003380fc  24 50 80 e5                                      str r5, [r0, #0x24]
00338100  10 20 80 e5                                      str r2, [r0, #0x10]
00338104  20 50 80 e5                                      str r5, [r0, #0x20]
00338108  28 40 80 e5                                      str r4, [r0, #0x28]
0033810c  30 00 bd e8                                      pop {r4, r5}
00338110  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00338114  c8 c9 65 00 d4 49 00 00                          .byte 0xc8, 0xc9, 0x65, 0x00, 0xd4, 0x49, 0x00, 0x00

; FUNCTION 0x0033811c, declared_size=172, range_size=172, mode=arm
; class-group: EventManager
; alias: _ZN12EventManager6DetachEiP14IEventReceiver
; demangled: EventManager::Detach(int, IEventReceiver*)
; decoder-mode: arm
0033811c  10 40 2d e9                                      push {r4, lr}
00338120  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00338124  08 00 80 e2                                      add r0, r0, #8
00338128  00 00 53 e3                                      cmp r3, #0
0033812c  1b 00 00 0a                                      beq #0x3381a0
00338130  00 40 a0 e1                                      mov r4, r0
00338134  00 00 00 ea                                      b #0x33813c
00338138  0c 30 a0 e1                                      mov r3, ip
0033813c  10 c0 93 e5                                      ldr ip, [r3, #0x10]
00338140  01 00 5c e1                                      cmp ip, r1
00338144  0c c0 93 b5                                      ldrlt ip, [r3, #0xc]
00338148  08 c0 93 a5                                      ldrge ip, [r3, #8]
0033814c  04 30 a0 b1                                      movlt r3, r4
00338150  03 40 a0 e1                                      mov r4, r3
00338154  00 00 5c e3                                      cmp ip, #0
00338158  f6 ff ff 1a                                      bne #0x338138
0033815c  03 00 50 e1                                      cmp r0, r3
00338160  0c 00 00 0a                                      beq #0x338198
00338164  10 c0 93 e5                                      ldr ip, [r3, #0x10]
00338168  01 00 5c e1                                      cmp ip, r1
0033816c  0b 00 00 ca                                      bgt #0x3381a0
00338170  03 00 50 e1                                      cmp r0, r3
00338174  14 00 b3 15                                      ldrne r0, [r3, #0x14]!
00338178  04 00 00 1a                                      bne #0x338190
0033817c  05 00 00 ea                                      b #0x338198
00338180  08 10 90 e5                                      ldr r1, [r0, #8]
00338184  02 00 51 e1                                      cmp r1, r2
00338188  06 00 00 0a                                      beq #0x3381a8
0033818c  00 00 90 e5                                      ldr r0, [r0]
00338190  00 00 53 e1                                      cmp r3, r0
00338194  f9 ff ff 1a                                      bne #0x338180
00338198  00 00 a0 e3                                      mov r0, #0
0033819c  10 80 bd e8                                      pop {r4, pc}
003381a0  00 30 a0 e1                                      mov r3, r0
003381a4  f1 ff ff ea                                      b #0x338170
003381a8  00 30 90 e5                                      ldr r3, [r0]
003381ac  04 20 90 e5                                      ldr r2, [r0, #4]
003381b0  14 10 a0 e3                                      mov r1, #0x14
003381b4  00 30 82 e5                                      str r3, [r2]
003381b8  04 20 83 e5                                      str r2, [r3, #4]
003381bc  4f 43 0f eb                                      bl #0x708f00
003381c0  01 00 a0 e3                                      mov r0, #1
003381c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003382a4, declared_size=208, range_size=208, mode=arm
; class-group: EventManager
; alias: _ZN12EventManager13DelayedDetachEiP14IEventReceiver
; demangled: EventManager::DelayedDetach(int, IEventReceiver*)
; decoder-mode: arm
003382a4  70 40 2d e9                                      push {r4, r5, r6, lr}
003382a8  0c 40 90 e5                                      ldr r4, [r0, #0xc]
003382ac  08 d0 4d e2                                      sub sp, sp, #8
003382b0  00 50 a0 e1                                      mov r5, r0
003382b4  00 00 54 e3                                      cmp r4, #0
003382b8  08 c0 80 e2                                      add ip, r0, #8
003382bc  1d 00 00 0a                                      beq #0x338338
003382c0  0c 00 a0 e1                                      mov r0, ip
003382c4  00 00 00 ea                                      b #0x3382cc
003382c8  03 40 a0 e1                                      mov r4, r3
003382cc  10 30 94 e5                                      ldr r3, [r4, #0x10]
003382d0  01 00 53 e1                                      cmp r3, r1
003382d4  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
003382d8  08 30 94 a5                                      ldrge r3, [r4, #8]
003382dc  00 40 a0 b1                                      movlt r4, r0
003382e0  04 00 a0 e1                                      mov r0, r4
003382e4  00 00 53 e3                                      cmp r3, #0
003382e8  f6 ff ff 1a                                      bne #0x3382c8
003382ec  04 00 5c e1                                      cmp ip, r4
003382f0  0d 00 00 0a                                      beq #0x33832c
003382f4  10 30 94 e5                                      ldr r3, [r4, #0x10]
003382f8  01 00 53 e1                                      cmp r3, r1
003382fc  0d 00 00 ca                                      bgt #0x338338
00338300  04 00 5c e1                                      cmp ip, r4
00338304  08 00 00 0a                                      beq #0x33832c
00338308  04 10 a0 e1                                      mov r1, r4
0033830c  14 60 b1 e5                                      ldr r6, [r1, #0x14]!
00338310  03 00 00 ea                                      b #0x338324
00338314  08 30 96 e5                                      ldr r3, [r6, #8]
00338318  02 00 53 e1                                      cmp r3, r2
0033831c  07 00 00 0a                                      beq #0x338340
00338320  00 60 96 e5                                      ldr r6, [r6]
00338324  06 00 51 e1                                      cmp r1, r6
00338328  f9 ff ff 1a                                      bne #0x338314
0033832c  00 00 a0 e3                                      mov r0, #0
00338330  08 d0 8d e2                                      add sp, sp, #8
00338334  70 80 bd e8                                      pop {r4, r5, r6, pc}
00338338  0c 40 a0 e1                                      mov r4, ip
0033833c  ef ff ff ea                                      b #0x338300
00338340  10 30 a0 e3                                      mov r3, #0x10
00338344  08 00 8d e2                                      add r0, sp, #8
00338348  04 30 20 e5                                      str r3, [r0, #-4]!
0033834c  db 42 0f eb                                      bl #0x708ec0
00338350  08 40 80 e5                                      str r4, [r0, #8]
00338354  0c 60 80 e5                                      str r6, [r0, #0xc]
00338358  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
0033835c  28 20 85 e2                                      add r2, r5, #0x28
00338360  0c 00 80 e8                                      stm r0, {r2, r3}
00338364  00 00 83 e5                                      str r0, [r3]
00338368  2c 00 85 e5                                      str r0, [r5, #0x2c]
0033836c  01 00 a0 e3                                      mov r0, #1
00338370  ee ff ff ea                                      b #0x338330

; FUNCTION 0x003383f4, declared_size=68, range_size=68, mode=arm
; class-group: EventManager
; alias: _ZN12EventManager17DropDelayedDetachEv
; demangled: EventManager::DropDelayedDetach()
; decoder-mode: arm
003383f4  70 40 2d e9                                      push {r4, r5, r6, lr}
003383f8  00 50 a0 e1                                      mov r5, r0
003383fc  28 40 b5 e5                                      ldr r4, [r5, #0x28]!
00338400  07 00 00 ea                                      b #0x338424
00338404  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00338408  14 10 a0 e3                                      mov r1, #0x14
0033840c  00 30 90 e5                                      ldr r3, [r0]
00338410  04 20 90 e5                                      ldr r2, [r0, #4]
00338414  00 30 82 e5                                      str r3, [r2]
00338418  04 20 83 e5                                      str r2, [r3, #4]
0033841c  b7 42 0f eb                                      bl #0x708f00
00338420  00 40 94 e5                                      ldr r4, [r4]
00338424  04 00 55 e1                                      cmp r5, r4
00338428  f5 ff ff 1a                                      bne #0x338404
0033842c  05 00 a0 e1                                      mov r0, r5
00338430  70 40 bd e8                                      pop {r4, r5, r6, lr}
00338434  de ff ff ea                                      b #0x3383b4

; FUNCTION 0x003384ac, declared_size=76, range_size=76, mode=arm
; class-group: EventManager
; alias: _ZN12EventManager5FlushEv
; demangled: EventManager::Flush()
; decoder-mode: arm
003384ac  70 40 2d e9                                      push {r4, r5, r6, lr}
003384b0  00 40 a0 e1                                      mov r4, r0
003384b4  20 00 80 e2                                      add r0, r0, #0x20
003384b8  ad ff ff eb                                      bl #0x338374
003384bc  18 30 94 e5                                      ldr r3, [r4, #0x18]
003384c0  00 00 53 e3                                      cmp r3, #0
003384c4  08 00 00 0a                                      beq #0x3384ec
003384c8  08 50 84 e2                                      add r5, r4, #8
003384cc  05 00 a0 e1                                      mov r0, r5
003384d0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003384d4  d7 ff ff eb                                      bl #0x338438
003384d8  00 30 a0 e3                                      mov r3, #0
003384dc  14 50 84 e5                                      str r5, [r4, #0x14]
003384e0  18 30 84 e5                                      str r3, [r4, #0x18]
003384e4  10 50 84 e5                                      str r5, [r4, #0x10]
003384e8  0c 30 84 e5                                      str r3, [r4, #0xc]
003384ec  28 00 84 e2                                      add r0, r4, #0x28
003384f0  70 40 bd e8                                      pop {r4, r5, r6, lr}
003384f4  ae ff ff ea                                      b #0x3383b4

; FUNCTION 0x003384f8, declared_size=124, range_size=124, mode=arm
; class-group: EventManager
; alias: _ZN12EventManagerD1Ev
; demangled: EventManager::~EventManager()
; decoder-mode: arm
003384f8  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003384fc  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00338500  70 40 2d e9                                      push {r4, r5, r6, lr}
00338504  03 30 8f e0                                      add r3, pc, r3
00338508  02 20 93 e7                                      ldr r2, [r3, r2]
0033850c  00 50 a0 e1                                      mov r5, r0
00338510  00 40 a0 e1                                      mov r4, r0
00338514  08 20 82 e2                                      add r2, r2, #8
00338518  20 20 85 e4                                      str r2, [r5], #0x20
0033851c  05 00 a0 e1                                      mov r0, r5
00338520  93 ff ff eb                                      bl #0x338374
00338524  28 00 84 e2                                      add r0, r4, #0x28
00338528  a1 ff ff eb                                      bl #0x3383b4
0033852c  05 00 a0 e1                                      mov r0, r5
00338530  8f ff ff eb                                      bl #0x338374
00338534  18 30 94 e5                                      ldr r3, [r4, #0x18]
00338538  00 00 53 e3                                      cmp r3, #0
0033853c  08 00 00 0a                                      beq #0x338564
00338540  08 50 84 e2                                      add r5, r4, #8
00338544  05 00 a0 e1                                      mov r0, r5
00338548  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0033854c  b9 ff ff eb                                      bl #0x338438
00338550  00 30 a0 e3                                      mov r3, #0
00338554  14 50 84 e5                                      str r5, [r4, #0x14]
00338558  18 30 84 e5                                      str r3, [r4, #0x18]
0033855c  10 50 84 e5                                      str r5, [r4, #0x10]
00338560  0c 30 84 e5                                      str r3, [r4, #0xc]
00338564  04 00 a0 e1                                      mov r0, r4
00338568  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0033856c  8c c5 65 00 d4 49 00 00                          .byte 0x8c, 0xc5, 0x65, 0x00, 0xd4, 0x49, 0x00, 0x00

; FUNCTION 0x00338574, declared_size=28, range_size=28, mode=arm
; class-group: EventManager
; alias: _ZN12EventManagerD0Ev
; demangled: EventManager::~EventManager()
; decoder-mode: arm
00338574  10 40 2d e9                                      push {r4, lr}
00338578  00 40 a0 e1                                      mov r4, r0
0033857c  dd ff ff eb                                      bl #0x3384f8
00338580  04 00 a0 e1                                      mov r0, r4
00338584  ad 5f ff eb                                      bl #0x310440
00338588  04 00 a0 e1                                      mov r0, r4
0033858c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00338590, declared_size=124, range_size=124, mode=arm
; class-group: EventManager
; alias: _ZN12EventManagerD2Ev
; demangled: EventManager::~EventManager()
; decoder-mode: arm
00338590  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00338594  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00338598  70 40 2d e9                                      push {r4, r5, r6, lr}
0033859c  03 30 8f e0                                      add r3, pc, r3
003385a0  02 20 93 e7                                      ldr r2, [r3, r2]
003385a4  00 50 a0 e1                                      mov r5, r0
003385a8  00 40 a0 e1                                      mov r4, r0
003385ac  08 20 82 e2                                      add r2, r2, #8
003385b0  20 20 85 e4                                      str r2, [r5], #0x20
003385b4  05 00 a0 e1                                      mov r0, r5
003385b8  6d ff ff eb                                      bl #0x338374
003385bc  28 00 84 e2                                      add r0, r4, #0x28
003385c0  7b ff ff eb                                      bl #0x3383b4
003385c4  05 00 a0 e1                                      mov r0, r5
003385c8  69 ff ff eb                                      bl #0x338374
003385cc  18 30 94 e5                                      ldr r3, [r4, #0x18]
003385d0  00 00 53 e3                                      cmp r3, #0
003385d4  08 00 00 0a                                      beq #0x3385fc
003385d8  08 50 84 e2                                      add r5, r4, #8
003385dc  05 00 a0 e1                                      mov r0, r5
003385e0  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003385e4  93 ff ff eb                                      bl #0x338438
003385e8  00 30 a0 e3                                      mov r3, #0
003385ec  14 50 84 e5                                      str r5, [r4, #0x14]
003385f0  18 30 84 e5                                      str r3, [r4, #0x18]
003385f4  10 50 84 e5                                      str r5, [r4, #0x10]
003385f8  0c 30 84 e5                                      str r3, [r4, #0xc]
003385fc  04 00 a0 e1                                      mov r0, r4
00338600  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00338604  f4 c4 65 00 d4 49 00 00                          .byte 0xf4, 0xc4, 0x65, 0x00, 0xd4, 0x49, 0x00, 0x00

; FUNCTION 0x00338da0, declared_size=284, range_size=284, mode=arm
; class-group: EventManager
; alias: _ZN12EventManager6AttachEiP14IEventReceiveri
; demangled: EventManager::Attach(int, IEventReceiver*, int)
; decoder-mode: arm
00338da0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00338da4  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00338da8  0c d0 4d e2                                      sub sp, sp, #0xc
00338dac  04 10 8d e5                                      str r1, [sp, #4]
00338db0  00 00 54 e3                                      cmp r4, #0
00338db4  02 50 a0 e1                                      mov r5, r2
00338db8  03 60 a0 e1                                      mov r6, r3
00338dbc  08 00 80 e2                                      add r0, r0, #8
00338dc0  29 00 00 0a                                      beq #0x338e6c
00338dc4  00 20 a0 e1                                      mov r2, r0
00338dc8  00 00 00 ea                                      b #0x338dd0
00338dcc  03 40 a0 e1                                      mov r4, r3
00338dd0  10 30 94 e5                                      ldr r3, [r4, #0x10]
00338dd4  01 00 53 e1                                      cmp r3, r1
00338dd8  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
00338ddc  08 30 94 a5                                      ldrge r3, [r4, #8]
00338de0  02 40 a0 b1                                      movlt r4, r2
00338de4  04 20 a0 e1                                      mov r2, r4
00338de8  00 00 53 e3                                      cmp r3, #0
00338dec  f6 ff ff 1a                                      bne #0x338dcc
00338df0  04 00 50 e1                                      cmp r0, r4
00338df4  20 00 00 0a                                      beq #0x338e7c
00338df8  10 30 94 e5                                      ldr r3, [r4, #0x10]
00338dfc  01 00 53 e1                                      cmp r3, r1
00338e00  19 00 00 ca                                      bgt #0x338e6c
00338e04  04 00 50 e1                                      cmp r0, r4
00338e08  1b 00 00 0a                                      beq #0x338e7c
00338e0c  04 20 a0 e1                                      mov r2, r4
00338e10  14 70 b2 e5                                      ldr r7, [r2, #0x14]!
00338e14  03 00 00 ea                                      b #0x338e28
00338e18  08 30 97 e5                                      ldr r3, [r7, #8]
00338e1c  03 00 55 e1                                      cmp r5, r3
00338e20  13 00 00 0a                                      beq #0x338e74
00338e24  00 70 97 e5                                      ldr r7, [r7]
00338e28  02 00 57 e1                                      cmp r7, r2
00338e2c  f9 ff ff 1a                                      bne #0x338e18
00338e30  07 00 a0 e1                                      mov r0, r7
00338e34  f4 fd ff eb                                      bl #0x33860c
00338e38  00 20 a0 e3                                      mov r2, #0
00338e3c  10 20 c0 e5                                      strb r2, [r0, #0x10]
00338e40  0c 60 80 e5                                      str r6, [r0, #0xc]
00338e44  08 50 80 e5                                      str r5, [r0, #8]
00338e48  18 20 94 e5                                      ldr r2, [r4, #0x18]
00338e4c  00 30 a0 e1                                      mov r3, r0
00338e50  00 70 80 e5                                      str r7, [r0]
00338e54  04 20 83 e5                                      str r2, [r3, #4]
00338e58  01 00 a0 e3                                      mov r0, #1
00338e5c  00 30 82 e5                                      str r3, [r2]
00338e60  18 30 84 e5                                      str r3, [r4, #0x18]
00338e64  0c d0 8d e2                                      add sp, sp, #0xc
00338e68  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00338e6c  00 40 a0 e1                                      mov r4, r0
00338e70  e3 ff ff ea                                      b #0x338e04
00338e74  00 00 a0 e3                                      mov r0, #0
00338e78  f9 ff ff ea                                      b #0x338e64
00338e7c  04 10 8d e2                                      add r1, sp, #4
00338e80  84 ff ff eb                                      bl #0x338c98
00338e84  00 40 a0 e1                                      mov r4, r0
00338e88  df fd ff eb                                      bl #0x33860c
00338e8c  00 20 a0 e3                                      mov r2, #0
00338e90  10 20 c0 e5                                      strb r2, [r0, #0x10]
00338e94  0c 60 80 e5                                      str r6, [r0, #0xc]
00338e98  08 50 80 e5                                      str r5, [r0, #8]
00338e9c  04 20 94 e5                                      ldr r2, [r4, #4]
00338ea0  00 30 a0 e1                                      mov r3, r0
00338ea4  00 40 80 e5                                      str r4, [r0]
00338ea8  04 20 83 e5                                      str r2, [r3, #4]
00338eac  01 00 a0 e3                                      mov r0, #1
00338eb0  00 30 82 e5                                      str r3, [r2]
00338eb4  04 30 84 e5                                      str r3, [r4, #4]
00338eb8  e9 ff ff ea                                      b #0x338e64

; FUNCTION 0x00338ebc, declared_size=336, range_size=336, mode=arm
; class-group: EventManager
; alias: _ZNK12EventManager5RaiseERK6IEvent
; demangled: EventManager::Raise(IEvent const&) const
; decoder-mode: arm
00338ebc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00338ec0  00 60 a0 e1                                      mov r6, r0
00338ec4  00 30 91 e5                                      ldr r3, [r1]
00338ec8  01 00 a0 e1                                      mov r0, r1
00338ecc  08 d0 4d e2                                      sub sp, sp, #8
00338ed0  01 70 a0 e1                                      mov r7, r1
00338ed4  0f e0 a0 e1                                      mov lr, pc
00338ed8  08 f0 93 e5                                      ldr pc, [r3, #8]
00338edc  0c 80 96 e5                                      ldr r8, [r6, #0xc]
00338ee0  08 10 86 e2                                      add r1, r6, #8
00338ee4  00 00 58 e3                                      cmp r8, #0
00338ee8  45 00 00 0a                                      beq #0x339004
00338eec  01 20 a0 e1                                      mov r2, r1
00338ef0  00 00 00 ea                                      b #0x338ef8
00338ef4  03 80 a0 e1                                      mov r8, r3
00338ef8  10 30 98 e5                                      ldr r3, [r8, #0x10]
00338efc  03 00 50 e1                                      cmp r0, r3
00338f00  0c 30 98 c5                                      ldrgt r3, [r8, #0xc]
00338f04  08 30 98 d5                                      ldrle r3, [r8, #8]
00338f08  02 80 a0 c1                                      movgt r8, r2
00338f0c  08 20 a0 e1                                      mov r2, r8
00338f10  00 00 53 e3                                      cmp r3, #0
00338f14  f6 ff ff 1a                                      bne #0x338ef4
00338f18  08 00 51 e1                                      cmp r1, r8
00338f1c  36 00 00 0a                                      beq #0x338ffc
00338f20  10 30 98 e5                                      ldr r3, [r8, #0x10]
00338f24  03 00 50 e1                                      cmp r0, r3
00338f28  35 00 00 ba                                      blt #0x339004
00338f2c  08 00 51 e1                                      cmp r1, r8
00338f30  31 00 00 0a                                      beq #0x338ffc
00338f34  00 d0 8d e5                                      str sp, [sp]
00338f38  04 d0 8d e5                                      str sp, [sp, #4]
00338f3c  14 50 b8 e5                                      ldr r5, [r8, #0x14]!
00338f40  0d 40 a0 e1                                      mov r4, sp
00338f44  08 00 55 e1                                      cmp r5, r8
00338f48  0d 50 a0 01                                      moveq r5, sp
00338f4c  1c 00 00 0a                                      beq #0x338fc4
00338f50  04 00 a0 e1                                      mov r0, r4
00338f54  ac fd ff eb                                      bl #0x33860c
00338f58  08 30 95 e5                                      ldr r3, [r5, #8]
00338f5c  08 30 80 e5                                      str r3, [r0, #8]
00338f60  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00338f64  0c 30 80 e5                                      str r3, [r0, #0xc]
00338f68  10 30 d5 e5                                      ldrb r3, [r5, #0x10]
00338f6c  10 30 c0 e5                                      strb r3, [r0, #0x10]
00338f70  04 30 9d e5                                      ldr r3, [sp, #4]
00338f74  00 40 80 e5                                      str r4, [r0]
00338f78  04 30 80 e5                                      str r3, [r0, #4]
00338f7c  00 00 83 e5                                      str r0, [r3]
00338f80  04 00 8d e5                                      str r0, [sp, #4]
00338f84  00 50 95 e5                                      ldr r5, [r5]
00338f88  05 00 58 e1                                      cmp r8, r5
00338f8c  ef ff ff 1a                                      bne #0x338f50
00338f90  00 50 9d e5                                      ldr r5, [sp]
00338f94  07 10 a0 e1                                      mov r1, r7
00338f98  06 20 a0 e1                                      mov r2, r6
00338f9c  04 00 55 e1                                      cmp r5, r4
00338fa0  0b 00 00 0a                                      beq #0x338fd4
00338fa4  08 30 95 e5                                      ldr r3, [r5, #8]
00338fa8  03 00 a0 e1                                      mov r0, r3
00338fac  00 30 93 e5                                      ldr r3, [r3]
00338fb0  0f e0 a0 e1                                      mov lr, pc
00338fb4  08 f0 93 e5                                      ldr pc, [r3, #8]
00338fb8  01 00 50 e3                                      cmp r0, #1
00338fbc  04 00 00 0a                                      beq #0x338fd4
00338fc0  00 50 95 e5                                      ldr r5, [r5]
00338fc4  04 00 55 e1                                      cmp r5, r4
00338fc8  07 10 a0 e1                                      mov r1, r7
00338fcc  06 20 a0 e1                                      mov r2, r6
00338fd0  f3 ff ff 1a                                      bne #0x338fa4
00338fd4  00 00 9d e5                                      ldr r0, [sp]
00338fd8  04 00 50 e1                                      cmp r0, r4
00338fdc  01 00 00 1a                                      bne #0x338fe8
00338fe0  05 00 00 ea                                      b #0x338ffc
00338fe4  05 00 a0 e1                                      mov r0, r5
00338fe8  00 50 90 e5                                      ldr r5, [r0]
00338fec  14 10 a0 e3                                      mov r1, #0x14
00338ff0  c2 3f 0f eb                                      bl #0x708f00
00338ff4  04 00 55 e1                                      cmp r5, r4
00338ff8  f9 ff ff 1a                                      bne #0x338fe4
00338ffc  08 d0 8d e2                                      add sp, sp, #8
00339000  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00339004  01 80 a0 e1                                      mov r8, r1
00339008  c7 ff ff ea                                      b #0x338f2c

; FUNCTION 0x0033900c, declared_size=132, range_size=132, mode=arm
; class-group: EventManager
; alias: _ZN12EventManager6UpdateEd
; demangled: EventManager::Update(double)
; decoder-mode: arm
0033900c  70 40 2d e9                                      push {r4, r5, r6, lr}
00339010  00 60 a0 e1                                      mov r6, r0
00339014  20 30 96 e5                                      ldr r3, [r6, #0x20]
00339018  20 40 80 e2                                      add r4, r0, #0x20
0033901c  04 00 53 e1                                      cmp r3, r4
00339020  17 00 00 0a                                      beq #0x339084
00339024  03 20 a0 e1                                      mov r2, r3
00339028  00 20 92 e5                                      ldr r2, [r2]
0033902c  02 00 54 e1                                      cmp r4, r2
00339030  fc ff ff 1a                                      bne #0x339028
00339034  08 50 93 e5                                      ldr r5, [r3, #8]
00339038  06 00 a0 e1                                      mov r0, r6
0033903c  05 10 a0 e1                                      mov r1, r5
00339040  9d ff ff eb                                      bl #0x338ebc
00339044  00 00 55 e3                                      cmp r5, #0
00339048  03 00 00 0a                                      beq #0x33905c
0033904c  05 00 a0 e1                                      mov r0, r5
00339050  00 30 95 e5                                      ldr r3, [r5]
00339054  0f e0 a0 e1                                      mov lr, pc
00339058  04 f0 93 e5                                      ldr pc, [r3, #4]
0033905c  20 00 96 e5                                      ldr r0, [r6, #0x20]
00339060  0c 10 a0 e3                                      mov r1, #0xc
00339064  00 30 90 e5                                      ldr r3, [r0]
00339068  04 20 90 e5                                      ldr r2, [r0, #4]
0033906c  00 30 82 e5                                      str r3, [r2]
00339070  04 20 83 e5                                      str r2, [r3, #4]
00339074  a1 3f 0f eb                                      bl #0x708f00
00339078  20 30 96 e5                                      ldr r3, [r6, #0x20]
0033907c  04 00 53 e1                                      cmp r3, r4
00339080  e7 ff ff 1a                                      bne #0x339024
00339084  06 00 a0 e1                                      mov r0, r6
00339088  70 40 bd e8                                      pop {r4, r5, r6, lr}
0033908c  d8 fc ff ea                                      b #0x3383f4

; FUNCTION 0x00339090, declared_size=4, range_size=4, mode=arm
; class-group: EventManager
; alias: _ZNK12EventManager10RaiseAsyncERK6IEvent
; demangled: EventManager::RaiseAsync(IEvent const&) const
; decoder-mode: arm
00339090  89 ff ff ea                                      b #0x338ebc
