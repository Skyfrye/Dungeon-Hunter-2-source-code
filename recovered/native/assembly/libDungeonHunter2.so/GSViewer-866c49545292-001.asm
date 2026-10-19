; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00387158, declared_size=52, range_size=52, mode=arm
; class-group: GSViewer
; alias: _ZN8GSViewerC2Ev
; demangled: GSViewer::GSViewer()
; decoder-mode: arm
00387158  24 20 9f e5                                      ldr r2, [pc, #0x24]
0038715c  24 c0 9f e5                                      ldr ip, [pc, #0x24]
00387160  00 10 a0 e3                                      mov r1, #0
00387164  02 20 8f e0                                      add r2, pc, r2
00387168  0c c0 92 e7                                      ldr ip, [r2, ip]
0038716c  0c 10 80 e5                                      str r1, [r0, #0xc]
00387170  04 10 80 e5                                      str r1, [r0, #4]
00387174  08 c0 8c e2                                      add ip, ip, #8
00387178  00 c0 80 e5                                      str ip, [r0]
0038717c  08 10 80 e5                                      str r1, [r0, #8]
00387180  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00387184  2c d9 60 00 d0 33 00 00                          .byte 0x2c, 0xd9, 0x60, 0x00, 0xd0, 0x33, 0x00, 0x00

; FUNCTION 0x0038718c, declared_size=52, range_size=52, mode=arm
; class-group: GSViewer
; alias: _ZN8GSViewerC1Ev
; demangled: GSViewer::GSViewer()
; decoder-mode: arm
0038718c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00387190  24 c0 9f e5                                      ldr ip, [pc, #0x24]
00387194  00 10 a0 e3                                      mov r1, #0
00387198  02 20 8f e0                                      add r2, pc, r2
0038719c  0c c0 92 e7                                      ldr ip, [r2, ip]
003871a0  0c 10 80 e5                                      str r1, [r0, #0xc]
003871a4  04 10 80 e5                                      str r1, [r0, #4]
003871a8  08 c0 8c e2                                      add ip, ip, #8
003871ac  00 c0 80 e5                                      str ip, [r0]
003871b0  08 10 80 e5                                      str r1, [r0, #8]
003871b4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003871b8  f8 d8 60 00 d0 33 00 00                          .byte 0xf8, 0xd8, 0x60, 0x00, 0xd0, 0x33, 0x00, 0x00

; FUNCTION 0x003871c0, declared_size=4, range_size=4, mode=arm
; class-group: GSViewer
; alias: _ZN8GSViewerD2Ev
; demangled: GSViewer::~GSViewer()
; decoder-mode: arm
003871c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003871c4, declared_size=4, range_size=4, mode=arm
; class-group: GSViewer
; alias: _ZN8GSViewerD1Ev
; demangled: GSViewer::~GSViewer()
; decoder-mode: arm
003871c4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003871c8, declared_size=168, range_size=168, mode=arm
; class-group: GSViewer
; alias: _ZN8GSViewer4DtorEPK12StateMachine
; demangled: GSViewer::Dtor(StateMachine const*)
; decoder-mode: arm
003871c8  70 40 2d e9                                      push {r4, r5, r6, lr}
003871cc  04 30 90 e5                                      ldr r3, [r0, #4]
003871d0  90 50 9f e5                                      ldr r5, [pc, #0x90]
003871d4  00 40 a0 e1                                      mov r4, r0
003871d8  00 00 53 e3                                      cmp r3, #0
003871dc  05 50 8f e0                                      add r5, pc, r5
003871e0  05 00 00 0a                                      beq #0x3871fc
003871e4  00 20 93 e5                                      ldr r2, [r3]
003871e8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
003871ec  00 00 83 e0                                      add r0, r3, r0
003871f0  e3 58 fe eb                                      bl #0x31d584
003871f4  00 30 a0 e3                                      mov r3, #0
003871f8  04 30 84 e5                                      str r3, [r4, #4]
003871fc  08 30 94 e5                                      ldr r3, [r4, #8]
00387200  00 00 53 e3                                      cmp r3, #0
00387204  05 00 00 0a                                      beq #0x387220
00387208  00 20 93 e5                                      ldr r2, [r3]
0038720c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00387210  00 00 83 e0                                      add r0, r3, r0
00387214  da 58 fe eb                                      bl #0x31d584
00387218  00 30 a0 e3                                      mov r3, #0
0038721c  08 30 84 e5                                      str r3, [r4, #8]
00387220  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00387224  00 00 53 e3                                      cmp r3, #0
00387228  05 00 00 0a                                      beq #0x387244
0038722c  00 20 93 e5                                      ldr r2, [r3]
00387230  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00387234  00 00 83 e0                                      add r0, r3, r0
00387238  d1 58 fe eb                                      bl #0x31d584
0038723c  00 30 a0 e3                                      mov r3, #0
00387240  0c 30 84 e5                                      str r3, [r4, #0xc]
00387244  20 30 9f e5                                      ldr r3, [pc, #0x20]
00387248  03 30 95 e7                                      ldr r3, [r5, r3]
0038724c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00387250  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00387254  03 00 a0 e1                                      mov r0, r3
00387258  00 30 93 e5                                      ldr r3, [r3]
0038725c  0f e0 a0 e1                                      mov lr, pc
00387260  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00387264  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00387268  b4 d8 60 00 f4 37 00 00                          .byte 0xb4, 0xd8, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00387270, declared_size=76, range_size=76, mode=arm
; class-group: GSViewer
; alias: _ZN8GSViewer6UpdateEP12StateMachined
; demangled: GSViewer::Update(StateMachine*, double)
; decoder-mode: arm
00387270  3c c0 9f e5                                      ldr ip, [pc, #0x3c]
00387274  03 10 a0 e1                                      mov r1, r3
00387278  38 30 9f e5                                      ldr r3, [pc, #0x38]
0038727c  10 40 2d e9                                      push {r4, lr}
00387280  0c c0 8f e0                                      add ip, pc, ip
00387284  03 30 9c e7                                      ldr r3, [ip, r3]
00387288  02 00 a0 e1                                      mov r0, r2
0038728c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00387290  1c 40 93 e5                                      ldr r4, [r3, #0x1c]
00387294  01 1d fe eb                                      bl #0x30e6a0
00387298  00 30 94 e5                                      ldr r3, [r4]
0038729c  00 10 a0 e1                                      mov r1, r0
003872a0  00 20 a0 e3                                      mov r2, #0
003872a4  04 00 a0 e1                                      mov r0, r4
003872a8  0f e0 a0 e1                                      mov lr, pc
003872ac  60 f0 93 e5                                      ldr pc, [r3, #0x60]
003872b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003872b4  10 d8 60 00 f4 37 00 00                          .byte 0x10, 0xd8, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003872bc, declared_size=60, range_size=60, mode=arm
; class-group: GSViewer
; alias: _ZN8GSViewer4DrawEPK12StateMachine
; demangled: GSViewer::Draw(StateMachine const*)
; decoder-mode: arm
003872bc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003872c0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003872c4  10 40 2d e9                                      push {r4, lr}
003872c8  03 30 8f e0                                      add r3, pc, r3
003872cc  02 20 93 e7                                      ldr r2, [r3, r2]
003872d0  00 10 a0 e3                                      mov r1, #0
003872d4  10 30 92 e5                                      ldr r3, [r2, #0x10]
003872d8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003872dc  03 00 a0 e1                                      mov r0, r3
003872e0  00 30 93 e5                                      ldr r3, [r3]
003872e4  0f e0 a0 e1                                      mov lr, pc
003872e8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
003872ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003872f0  c8 d7 60 00 f4 37 00 00                          .byte 0xc8, 0xd7, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003872f8, declared_size=684, range_size=684, mode=arm
; class-group: GSViewer
; alias: _ZN8GSViewer4CtorEPK12StateMachine
; demangled: GSViewer::Ctor(StateMachine const*)
; decoder-mode: arm
003872f8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003872fc  80 62 9f e5                                      ldr r6, [pc, #0x280]
00387300  80 22 9f e5                                      ldr r2, [pc, #0x280]
00387304  44 d0 4d e2                                      sub sp, sp, #0x44
00387308  06 60 8f e0                                      add r6, pc, r6
0038730c  02 20 96 e7                                      ldr r2, [r6, r2]
00387310  00 40 a0 e1                                      mov r4, r0
00387314  00 30 a0 e3                                      mov r3, #0
00387318  10 20 92 e5                                      ldr r2, [r2, #0x10]
0038731c  00 10 a0 e3                                      mov r1, #0
00387320  e3 0f a0 e3                                      mov r0, #0x38c
00387324  1c 70 92 e5                                      ldr r7, [r2, #0x1c]
00387328  c3 24 a0 e3                                      mov r2, #0xc3000000
0038732c  fa 28 82 e2                                      add r2, r2, #0xfa0000
00387330  04 50 97 e5                                      ldr r5, [r7, #4]
00387334  38 20 8d e5                                      str r2, [sp, #0x38]
00387338  42 24 a0 e3                                      mov r2, #0x42000000
0038733c  32 27 82 e2                                      add r2, r2, #0xc80000
00387340  01 80 a0 e1                                      mov r8, r1
00387344  2c 30 8d e5                                      str r3, [sp, #0x2c]
00387348  30 20 8d e5                                      str r2, [sp, #0x30]
0038734c  34 30 8d e5                                      str r3, [sp, #0x34]
00387350  3c 30 8d e5                                      str r3, [sp, #0x3c]
00387354  28 30 8d e5                                      str r3, [sp, #0x28]
00387358  93 b3 06 eb                                      bl #0x5341ac
0038735c  00 a0 a0 e1                                      mov sl, r0
00387360  34 20 8d e2                                      add r2, sp, #0x34
00387364  28 30 8d e2                                      add r3, sp, #0x28
00387368  00 10 e0 e3                                      mvn r1, #0
0038736c  00 80 8d e5                                      str r8, [sp]
00387370  ef f0 07 eb                                      bl #0x583734
00387374  04 a0 84 e5                                      str sl, [r4, #4]
00387378  0a 10 a0 e1                                      mov r1, sl
0038737c  05 00 a0 e1                                      mov r0, r5
00387380  00 30 95 e5                                      ldr r3, [r5]
00387384  0f e0 a0 e1                                      mov lr, pc
00387388  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0038738c  04 30 94 e5                                      ldr r3, [r4, #4]
00387390  00 20 93 e5                                      ldr r2, [r3]
00387394  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00387398  00 00 83 e0                                      add r0, r3, r0
0038739c  78 58 fe eb                                      bl #0x31d584
003873a0  07 00 a0 e1                                      mov r0, r7
003873a4  04 10 94 e5                                      ldr r1, [r4, #4]
003873a8  44 07 08 eb                                      bl #0x5890c0
003873ac  08 10 a0 e1                                      mov r1, r8
003873b0  15 0e a0 e3                                      mov r0, #0x150
003873b4  7c b3 06 eb                                      bl #0x5341ac
003873b8  00 10 e0 e3                                      mvn r1, #0
003873bc  00 a0 a0 e1                                      mov sl, r0
003873c0  84 f1 07 eb                                      bl #0x5839d8
003873c4  08 a0 84 e5                                      str sl, [r4, #8]
003873c8  0a 10 a0 e1                                      mov r1, sl
003873cc  05 00 a0 e1                                      mov r0, r5
003873d0  00 30 95 e5                                      ldr r3, [r5]
003873d4  0f e0 a0 e1                                      mov lr, pc
003873d8  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
003873dc  08 30 94 e5                                      ldr r3, [r4, #8]
003873e0  00 20 93 e5                                      ldr r2, [r3]
003873e4  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
003873e8  00 00 83 e0                                      add r0, r3, r0
003873ec  64 58 fe eb                                      bl #0x31d584
003873f0  08 10 a0 e1                                      mov r1, r8
003873f4  57 0f a0 e3                                      mov r0, #0x15c
003873f8  6b b3 06 eb                                      bl #0x5341ac
003873fc  01 10 a0 e3                                      mov r1, #1
00387400  00 80 a0 e1                                      mov r8, r0
00387404  39 f3 07 eb                                      bl #0x5840f0
00387408  0c 80 84 e5                                      str r8, [r4, #0xc]
0038740c  05 00 a0 e1                                      mov r0, r5
00387410  00 30 95 e5                                      ldr r3, [r5]
00387414  08 10 a0 e1                                      mov r1, r8
00387418  0f e0 a0 e1                                      mov lr, pc
0038741c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00387420  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00387424  00 20 93 e5                                      ldr r2, [r3]
00387428  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0038742c  00 00 83 e0                                      add r0, r3, r0
00387430  53 58 fe eb                                      bl #0x31d584
00387434  04 50 94 e5                                      ldr r5, [r4, #4]
00387438  00 00 55 e3                                      cmp r5, #0
0038743c  34 00 00 0a                                      beq #0x387514
00387440  08 10 94 e5                                      ldr r1, [r4, #8]
00387444  00 00 51 e3                                      cmp r1, #0
00387448  31 00 00 0a                                      beq #0x387514
0038744c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00387450  00 00 53 e3                                      cmp r3, #0
00387454  2e 00 00 0a                                      beq #0x387514
00387458  00 30 95 e5                                      ldr r3, [r5]
0038745c  1c 80 8d e2                                      add r8, sp, #0x1c
00387460  08 00 a0 e1                                      mov r0, r8
00387464  04 a1 93 e5                                      ldr sl, [r3, #0x104]
00387468  44 3f 08 eb                                      bl #0x597180
0038746c  05 00 a0 e1                                      mov r0, r5
00387470  08 10 a0 e1                                      mov r1, r8
00387474  3a ff 2f e1                                      blx sl
00387478  04 10 94 e5                                      ldr r1, [r4, #4]
0038747c  07 00 a0 e1                                      mov r0, r7
00387480  0e 07 08 eb                                      bl #0x5890c0
00387484  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00387488  02 20 a0 e3                                      mov r2, #2
0038748c  07 00 a0 e1                                      mov r0, r7
00387490  34 41 93 e5                                      ldr r4, [r3, #0x134]
00387494  0c 10 8d e2                                      add r1, sp, #0xc
00387498  00 00 54 e3                                      cmp r4, #0
0038749c  00 30 94 15                                      ldrne r3, [r4]
003874a0  b8 25 c4 e1                                      strh r2, [r4, #0x58]
003874a4  01 30 83 12                                      addne r3, r3, #1
003874a8  00 30 84 15                                      strne r3, [r4]
003874ac  fe 35 a0 e3                                      mov r3, #0x3f800000
003874b0  18 30 8d e5                                      str r3, [sp, #0x18]
003874b4  0c 30 8d e5                                      str r3, [sp, #0xc]
003874b8  10 30 8d e5                                      str r3, [sp, #0x10]
003874bc  14 30 8d e5                                      str r3, [sp, #0x14]
003874c0  10 08 08 eb                                      bl #0x589508
003874c4  00 30 94 e5                                      ldr r3, [r4]
003874c8  01 30 43 e2                                      sub r3, r3, #1
003874cc  00 00 53 e3                                      cmp r3, #0
003874d0  00 30 84 e5                                      str r3, [r4]
003874d4  0c 00 00 1a                                      bne #0x38750c
003874d8  54 30 d4 e5                                      ldrb r3, [r4, #0x54]
003874dc  00 00 53 e3                                      cmp r3, #0
003874e0  05 00 00 1a                                      bne #0x3874fc
003874e4  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
003874e8  50 20 94 e5                                      ldr r2, [r4, #0x50]
003874ec  03 30 96 e7                                      ldr r3, [r6, r3]
003874f0  00 10 93 e5                                      ldr r1, [r3]
003874f4  00 10 82 e5                                      str r1, [r2]
003874f8  00 20 83 e5                                      str r2, [r3]
003874fc  00 30 a0 e3                                      mov r3, #0
00387500  50 30 84 e5                                      str r3, [r4, #0x50]
00387504  04 00 a0 e1                                      mov r0, r4
00387508  cc 23 fe eb                                      bl #0x310440
0038750c  44 d0 8d e2                                      add sp, sp, #0x44
00387510  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00387514  74 30 9f e5                                      ldr r3, [pc, #0x74]
00387518  03 30 96 e7                                      ldr r3, [r6, r3]
0038751c  00 30 93 e5                                      ldr r3, [r3]
00387520  02 00 53 e3                                      cmp r3, #2
00387524  03 00 00 0a                                      beq #0x387538
00387528  01 00 53 e3                                      cmp r3, #1
0038752c  05 00 00 0a                                      beq #0x387548
00387530  08 10 94 e5                                      ldr r1, [r4, #8]
00387534  c7 ff ff ea                                      b #0x387458
00387538  00 30 a0 e3                                      mov r3, #0
0038753c  00 30 83 e5                                      str r3, [r3]
00387540  08 10 94 e5                                      ldr r1, [r4, #8]
00387544  c3 ff ff ea                                      b #0x387458
00387548  44 00 9f e5                                      ldr r0, [pc, #0x44]
0038754c  44 10 9f e5                                      ldr r1, [pc, #0x44]
00387550  44 20 9f e5                                      ldr r2, [pc, #0x44]
00387554  00 00 96 e7                                      ldr r0, [r6, r0]
00387558  40 30 9f e5                                      ldr r3, [pc, #0x40]
0038755c  01 10 8f e0                                      add r1, pc, r1
00387560  41 c0 a0 e3                                      mov ip, #0x41
00387564  a8 00 80 e2                                      add r0, r0, #0xa8
00387568  02 20 8f e0                                      add r2, pc, r2
0038756c  03 30 8f e0                                      add r3, pc, r3
00387570  00 c0 8d e5                                      str ip, [sp]
00387574  a2 1a fe eb                                      bl #0x30e004
00387578  04 50 94 e5                                      ldr r5, [r4, #4]
0038757c  08 10 94 e5                                      ldr r1, [r4, #8]
00387580  b4 ff ff ea                                      b #0x387458
; mapping-symbol data/literal pool
00387584  88 d7 60 00 f4 37 00 00 c0 3c 00 00 c0 39 00 00  .byte 0x88, 0xd7, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x3c, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
00387594  c0 19 00 00 7c 6e 53 00 28 ac 53 00 44 ac 53 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x7c, 0x6e, 0x53, 0x00, 0x28, 0xac, 0x53, 0x00, 0x44, 0xac, 0x53, 0x00

; FUNCTION 0x003875a4, declared_size=28, range_size=28, mode=arm
; class-group: GSViewer
; alias: _ZN8GSViewerD0Ev
; demangled: GSViewer::~GSViewer()
; decoder-mode: arm
003875a4  10 40 2d e9                                      push {r4, lr}
003875a8  00 40 a0 e1                                      mov r4, r0
003875ac  04 ff ff eb                                      bl #0x3871c4
003875b0  04 00 a0 e1                                      mov r0, r4
003875b4  a1 23 fe eb                                      bl #0x310440
003875b8  04 00 a0 e1                                      mov r0, r4
003875bc  10 80 bd e8                                      pop {r4, pc}
