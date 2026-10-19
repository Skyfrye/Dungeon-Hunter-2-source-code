; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003110c4, declared_size=84, range_size=84, mode=arm
; class-group: PerfCounters
; alias: _ZN12PerfCountersC2Ev
; demangled: PerfCounters::PerfCounters()
; decoder-mode: arm
003110c4  70 40 2d e9                                      push {r4, r5, r6, lr}
003110c8  14 30 80 e2                                      add r3, r0, #0x14
003110cc  00 50 a0 e3                                      mov r5, #0
003110d0  00 20 a0 e3                                      mov r2, #0
003110d4  00 40 a0 e1                                      mov r4, r0
003110d8  00 20 80 e5                                      str r2, [r0]
003110dc  18 30 80 e5                                      str r3, [r0, #0x18]
003110e0  14 30 80 e5                                      str r3, [r0, #0x14]
003110e4  04 50 80 e5                                      str r5, [r0, #4]
003110e8  08 50 80 e5                                      str r5, [r0, #8]
003110ec  0c 50 80 e5                                      str r5, [r0, #0xc]
003110f0  10 50 80 e5                                      str r5, [r0, #0x10]
003110f4  1c 50 80 e5                                      str r5, [r0, #0x1c]
003110f8  08 00 80 e2                                      add r0, r0, #8
003110fc  c5 ff ff eb                                      bl #0x311018
00311100  05 10 a0 e1                                      mov r1, r5
00311104  84 0e 03 e3                                      movw r0, #0x3e84
00311108  17 fd ff eb                                      bl #0x31056c
0031110c  1c 00 84 e5                                      str r0, [r4, #0x1c]
00311110  04 00 a0 e1                                      mov r0, r4
00311114  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00311118, declared_size=84, range_size=84, mode=arm
; class-group: PerfCounters
; alias: _ZN12PerfCountersC1Ev
; demangled: PerfCounters::PerfCounters()
; decoder-mode: arm
00311118  70 40 2d e9                                      push {r4, r5, r6, lr}
0031111c  14 30 80 e2                                      add r3, r0, #0x14
00311120  00 50 a0 e3                                      mov r5, #0
00311124  00 20 a0 e3                                      mov r2, #0
00311128  00 40 a0 e1                                      mov r4, r0
0031112c  00 20 80 e5                                      str r2, [r0]
00311130  18 30 80 e5                                      str r3, [r0, #0x18]
00311134  14 30 80 e5                                      str r3, [r0, #0x14]
00311138  04 50 80 e5                                      str r5, [r0, #4]
0031113c  08 50 80 e5                                      str r5, [r0, #8]
00311140  0c 50 80 e5                                      str r5, [r0, #0xc]
00311144  10 50 80 e5                                      str r5, [r0, #0x10]
00311148  1c 50 80 e5                                      str r5, [r0, #0x1c]
0031114c  08 00 80 e2                                      add r0, r0, #8
00311150  b0 ff ff eb                                      bl #0x311018
00311154  05 10 a0 e1                                      mov r1, r5
00311158  84 0e 03 e3                                      movw r0, #0x3e84
0031115c  02 fd ff eb                                      bl #0x31056c
00311160  1c 00 84 e5                                      str r0, [r4, #0x1c]
00311164  04 00 a0 e1                                      mov r0, r4
00311168  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003115c4, declared_size=92, range_size=92, mode=arm
; class-group: PerfCounters
; alias: _ZN12PerfCountersD1Ev
; demangled: PerfCounters::~PerfCounters()
; decoder-mode: arm
003115c4  10 40 2d e9                                      push {r4, lr}
003115c8  00 40 a0 e1                                      mov r4, r0
003115cc  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
003115d0  00 00 50 e3                                      cmp r0, #0
003115d4  00 00 00 0a                                      beq #0x3115dc
003115d8  98 fb ff eb                                      bl #0x310440
003115dc  14 00 84 e2                                      add r0, r4, #0x14
003115e0  c9 ff ff eb                                      bl #0x31150c
003115e4  08 00 94 e5                                      ldr r0, [r4, #8]
003115e8  08 30 84 e2                                      add r3, r4, #8
003115ec  00 00 50 e3                                      cmp r0, #0
003115f0  05 00 00 0a                                      beq #0x31160c
003115f4  08 10 93 e5                                      ldr r1, [r3, #8]
003115f8  01 10 60 e0                                      rsb r1, r0, r1
003115fc  03 10 c1 e3                                      bic r1, r1, #3
00311600  80 00 51 e3                                      cmp r1, #0x80
00311604  02 00 00 8a                                      bhi #0x311614
00311608  3c de 0f eb                                      bl #0x708f00
0031160c  04 00 a0 e1                                      mov r0, r4
00311610  10 80 bd e8                                      pop {r4, pc}
00311614  89 fb ff eb                                      bl #0x310440
00311618  04 00 a0 e1                                      mov r0, r4
0031161c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00311620, declared_size=92, range_size=92, mode=arm
; class-group: PerfCounters
; alias: _ZN12PerfCountersD2Ev
; demangled: PerfCounters::~PerfCounters()
; decoder-mode: arm
00311620  10 40 2d e9                                      push {r4, lr}
00311624  00 40 a0 e1                                      mov r4, r0
00311628  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0031162c  00 00 50 e3                                      cmp r0, #0
00311630  00 00 00 0a                                      beq #0x311638
00311634  81 fb ff eb                                      bl #0x310440
00311638  14 00 84 e2                                      add r0, r4, #0x14
0031163c  b2 ff ff eb                                      bl #0x31150c
00311640  08 00 94 e5                                      ldr r0, [r4, #8]
00311644  08 30 84 e2                                      add r3, r4, #8
00311648  00 00 50 e3                                      cmp r0, #0
0031164c  05 00 00 0a                                      beq #0x311668
00311650  08 10 93 e5                                      ldr r1, [r3, #8]
00311654  01 10 60 e0                                      rsb r1, r0, r1
00311658  03 10 c1 e3                                      bic r1, r1, #3
0031165c  80 00 51 e3                                      cmp r1, #0x80
00311660  02 00 00 8a                                      bhi #0x311670
00311664  25 de 0f eb                                      bl #0x708f00
00311668  04 00 a0 e1                                      mov r0, r4
0031166c  10 80 bd e8                                      pop {r4, pc}
00311670  72 fb ff eb                                      bl #0x310440
00311674  04 00 a0 e1                                      mov r0, r4
00311678  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031177c, declared_size=408, range_size=408, mode=arm
; class-group: PerfCounters
; alias: _ZN12PerfCounters6UpdateEf
; demangled: PerfCounters::Update(float)
; decoder-mode: arm
0031177c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00311780  7c 71 9f e5                                      ldr r7, [pc, #0x17c]
00311784  7c 81 9f e5                                      ldr r8, [pc, #0x17c]
00311788  7c 21 9f e5                                      ldr r2, [pc, #0x17c]
0031178c  07 70 8f e0                                      add r7, pc, r7
00311790  08 30 97 e7                                      ldr r3, [r7, r8]
00311794  02 50 97 e7                                      ldr r5, [r7, r2]
00311798  34 d0 4d e2                                      sub sp, sp, #0x34
0031179c  00 30 93 e5                                      ldr r3, [r3]
003117a0  00 60 a0 e1                                      mov r6, r0
003117a4  05 00 a0 e1                                      mov r0, r5
003117a8  2c 30 8d e5                                      str r3, [sp, #0x2c]
003117ac  01 a0 a0 e1                                      mov sl, r1
003117b0  34 98 00 eb                                      bl #0x337888
003117b4  54 11 9f e5                                      ldr r1, [pc, #0x154]
003117b8  14 40 8d e2                                      add r4, sp, #0x14
003117bc  04 00 a0 e1                                      mov r0, r4
003117c0  01 10 8f e0                                      add r1, pc, r1
003117c4  12 20 81 e2                                      add r2, r1, #0x12
003117c8  24 40 8d e5                                      str r4, [sp, #0x24]
003117cc  28 40 8d e5                                      str r4, [sp, #0x28]
003117d0  c4 ff ff eb                                      bl #0x3116e8
003117d4  05 00 a0 e1                                      mov r0, r5
003117d8  04 10 a0 e1                                      mov r1, r4
003117dc  a9 98 00 eb                                      bl #0x337a88
003117e0  00 50 a0 e1                                      mov r5, r0
003117e4  28 00 9d e5                                      ldr r0, [sp, #0x28]
003117e8  04 00 50 e1                                      cmp r0, r4
003117ec  06 00 00 0a                                      beq #0x31180c
003117f0  00 00 50 e3                                      cmp r0, #0
003117f4  04 00 00 0a                                      beq #0x31180c
003117f8  14 10 9d e5                                      ldr r1, [sp, #0x14]
003117fc  01 10 60 e0                                      rsb r1, r0, r1
00311800  80 00 51 e3                                      cmp r1, #0x80
00311804  33 00 00 8a                                      bhi #0x3118d8
00311808  bc dd 0f eb                                      bl #0x708f00
0031180c  00 00 55 e3                                      cmp r5, #0
00311810  21 00 00 0a                                      beq #0x31189c
00311814  06 50 a0 e1                                      mov r5, r6
00311818  14 40 b5 e5                                      ldr r4, [r5, #0x14]!
0031181c  10 b0 8d e2                                      add fp, sp, #0x10
00311820  01 90 a0 e3                                      mov sb, #1
00311824  04 00 55 e1                                      cmp r5, r4
00311828  0b 00 00 0a                                      beq #0x31185c
0031182c  30 10 94 e5                                      ldr r1, [r4, #0x30]
00311830  34 30 94 e5                                      ldr r3, [r4, #0x34]
00311834  03 00 51 e1                                      cmp r1, r3
00311838  1e 00 00 0a                                      beq #0x3118b8
0031183c  20 30 94 e5                                      ldr r3, [r4, #0x20]
00311840  00 30 81 e5                                      str r3, [r1]
00311844  30 30 94 e5                                      ldr r3, [r4, #0x30]
00311848  04 30 83 e2                                      add r3, r3, #4
0031184c  30 30 84 e5                                      str r3, [r4, #0x30]
00311850  00 40 94 e5                                      ldr r4, [r4]
00311854  04 00 55 e1                                      cmp r5, r4
00311858  f3 ff ff 1a                                      bne #0x31182c
0031185c  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00311860  10 30 96 e5                                      ldr r3, [r6, #0x10]
00311864  03 00 51 e1                                      cmp r1, r3
00311868  1c 00 00 0a                                      beq #0x3118e0
0031186c  00 30 96 e5                                      ldr r3, [r6]
00311870  00 30 81 e5                                      str r3, [r1]
00311874  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00311878  04 30 83 e2                                      add r3, r3, #4
0031187c  0c 30 86 e5                                      str r3, [r6, #0xc]
00311880  00 00 96 e5                                      ldr r0, [r6]
00311884  0a 10 a0 e1                                      mov r1, sl
00311888  c5 f4 ff eb                                      bl #0x30eba4
0031188c  04 30 96 e5                                      ldr r3, [r6, #4]
00311890  00 00 86 e5                                      str r0, [r6]
00311894  01 30 83 e2                                      add r3, r3, #1
00311898  04 30 86 e5                                      str r3, [r6, #4]
0031189c  08 30 97 e7                                      ldr r3, [r7, r8]
003118a0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003118a4  00 30 93 e5                                      ldr r3, [r3]
003118a8  03 00 52 e1                                      cmp r2, r3
003118ac  13 00 00 1a                                      bne #0x311900
003118b0  34 d0 8d e2                                      add sp, sp, #0x34
003118b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003118b8  2c 00 84 e2                                      add r0, r4, #0x2c
003118bc  20 20 84 e2                                      add r2, r4, #0x20
003118c0  0b 30 a0 e1                                      mov r3, fp
003118c4  00 90 8d e5                                      str sb, [sp]
003118c8  04 90 8d e5                                      str sb, [sp, #4]
003118cc  ab fe ff eb                                      bl #0x311380
003118d0  00 40 94 e5                                      ldr r4, [r4]
003118d4  de ff ff ea                                      b #0x311854
003118d8  d8 fa ff eb                                      bl #0x310440
003118dc  ca ff ff ea                                      b #0x31180c
003118e0  01 c0 a0 e3                                      mov ip, #1
003118e4  08 00 86 e2                                      add r0, r6, #8
003118e8  06 20 a0 e1                                      mov r2, r6
003118ec  0c 30 8d e2                                      add r3, sp, #0xc
003118f0  04 c0 8d e5                                      str ip, [sp, #4]
003118f4  00 c0 8d e5                                      str ip, [sp]
003118f8  a0 fe ff eb                                      bl #0x311380
003118fc  df ff ff ea                                      b #0x311880
00311900  82 f2 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00311904  04 33 68 00 ac 40 00 00 84 08 00 00 c0 cc 5a 00  .byte 0x04, 0x33, 0x68, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc0, 0xcc, 0x5a, 0x00

; FUNCTION 0x00311914, declared_size=3088, range_size=3088, mode=arm
; class-group: PerfCounters
; alias: _ZN12PerfCounters4DrawEv
; demangled: PerfCounters::Draw()
; decoder-mode: arm
00311914  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00311918  ac 1b 9f e5                                      ldr r1, [pc, #0xbac]
0031191c  ac 2b 9f e5                                      ldr r2, [pc, #0xbac]
00311920  43 df 4d e2                                      sub sp, sp, #0x10c
00311924  01 10 8f e0                                      add r1, pc, r1
00311928  02 30 91 e7                                      ldr r3, [r1, r2]
0031192c  70 20 8d e5                                      str r2, [sp, #0x70]
00311930  9c 2b 9f e5                                      ldr r2, [pc, #0xb9c]
00311934  00 30 93 e5                                      ldr r3, [r3]
00311938  68 00 8d e5                                      str r0, [sp, #0x68]
0031193c  02 50 91 e7                                      ldr r5, [r1, r2]
00311940  04 31 8d e5                                      str r3, [sp, #0x104]
00311944  48 10 8d e5                                      str r1, [sp, #0x48]
00311948  05 00 a0 e1                                      mov r0, r5
0031194c  cd 97 00 eb                                      bl #0x337888
00311950  80 1b 9f e5                                      ldr r1, [pc, #0xb80]
00311954  ec 40 8d e2                                      add r4, sp, #0xec
00311958  04 00 a0 e1                                      mov r0, r4
0031195c  01 10 8f e0                                      add r1, pc, r1
00311960  12 20 81 e2                                      add r2, r1, #0x12
00311964  fc 40 8d e5                                      str r4, [sp, #0xfc]
00311968  00 41 8d e5                                      str r4, [sp, #0x100]
0031196c  5d ff ff eb                                      bl #0x3116e8
00311970  05 00 a0 e1                                      mov r0, r5
00311974  04 10 a0 e1                                      mov r1, r4
00311978  42 98 00 eb                                      bl #0x337a88
0031197c  00 00 50 e3                                      cmp r0, #0
00311980  9c 01 00 0a                                      beq #0x311ff8
00311984  68 20 9d e5                                      ldr r2, [sp, #0x68]
00311988  14 30 b2 e5                                      ldr r3, [r2, #0x14]!
0031198c  02 00 53 e1                                      cmp r3, r2
00311990  98 01 00 0a                                      beq #0x311ff8
00311994  00 30 93 e5                                      ldr r3, [r3]
00311998  03 00 52 e1                                      cmp r2, r3
0031199c  fc ff ff 1a                                      bne #0x311994
003119a0  00 01 9d e5                                      ldr r0, [sp, #0x100]
003119a4  01 50 a0 e3                                      mov r5, #1
003119a8  04 00 50 e1                                      cmp r0, r4
003119ac  95 01 00 1a                                      bne #0x312008
003119b0  00 00 55 e3                                      cmp r5, #0
003119b4  9c 01 00 0a                                      beq #0x31202c
003119b8  1c 3b 9f e5                                      ldr r3, [pc, #0xb1c]
003119bc  48 e0 9d e5                                      ldr lr, [sp, #0x48]
003119c0  03 30 9e e7                                      ldr r3, [lr, r3]
003119c4  10 30 93 e5                                      ldr r3, [r3, #0x10]
003119c8  10 30 93 e5                                      ldr r3, [r3, #0x10]
003119cc  34 30 8d e5                                      str r3, [sp, #0x34]
003119d0  dc 40 93 e5                                      ldr r4, [r3, #0xdc]
003119d4  ff 3f 0f e3                                      movw r3, #0xffff
003119d8  b4 23 d4 e1                                      ldrh r2, [r4, #0x34]
003119dc  03 00 52 e1                                      cmp r2, r3
003119e0  b3 02 00 0a                                      beq #0x3124b4
003119e4  e8 00 8d e2                                      add r0, sp, #0xe8
003119e8  04 10 a0 e1                                      mov r1, r4
003119ec  01 30 a0 e3                                      mov r3, #1
003119f0  74 00 8d e5                                      str r0, [sp, #0x74]
003119f4  ba 2d 0b eb                                      bl #0x5dd0e4
003119f8  e8 00 9d e5                                      ldr r0, [sp, #0xe8]
003119fc  00 00 50 e3                                      cmp r0, #0
00311a00  ff 20 a0 03                                      moveq r2, #0xff
00311a04  01 00 00 0a                                      beq #0x311a10
00311a08  c9 d0 0a eb                                      bl #0x5c5d34
00311a0c  00 20 a0 e1                                      mov r2, r0
00311a10  34 00 9d e5                                      ldr r0, [sp, #0x34]
00311a14  74 10 9d e5                                      ldr r1, [sp, #0x74]
00311a18  00 30 a0 e3                                      mov r3, #0
00311a1c  51 6e 0a eb                                      bl #0x5ad368
00311a20  34 10 9d e5                                      ldr r1, [sp, #0x34]
00311a24  68 40 9d e5                                      ldr r4, [sp, #0x68]
00311a28  cc 20 91 e5                                      ldr r2, [r1, #0xcc]
00311a2c  14 30 b4 e5                                      ldr r3, [r4, #0x14]!
00311a30  04 20 12 e5                                      ldr r2, [r2, #-4]
00311a34  04 00 53 e1                                      cmp r3, r4
00311a38  14 00 82 e2                                      add r0, r2, #0x14
00311a3c  03 10 90 e8                                      ldm r0, {r0, r1, ip}
00311a40  20 20 92 e5                                      ldr r2, [r2, #0x20]
00311a44  44 30 8d e5                                      str r3, [sp, #0x44]
00311a48  0c 00 60 e0                                      rsb r0, r0, ip
00311a4c  02 10 61 e0                                      rsb r1, r1, r2
00311a50  28 00 8d e5                                      str r0, [sp, #0x28]
00311a54  24 10 8d e5                                      str r1, [sp, #0x24]
00311a58  1d 00 00 0a                                      beq #0x311ad4
00311a5c  00 20 a0 e3                                      mov r2, #0
00311a60  03 10 a0 e1                                      mov r1, r3
00311a64  00 10 91 e5                                      ldr r1, [r1]
00311a68  01 20 82 e2                                      add r2, r2, #1
00311a6c  01 00 54 e1                                      cmp r4, r1
00311a70  fb ff ff 1a                                      bne #0x311a64
00311a74  01 00 52 e3                                      cmp r2, #1
00311a78  44 10 8d e5                                      str r1, [sp, #0x44]
00311a7c  14 00 00 0a                                      beq #0x311ad4
00311a80  cd 1c 0c e3                                      movw r1, #0xcccd
00311a84  00 20 a0 e3                                      mov r2, #0
00311a88  04 00 53 e1                                      cmp r3, r4
00311a8c  cc 1f 43 e3                                      movt r1, #0x3fcc
00311a90  c4 10 8d e5                                      str r1, [sp, #0xc4]
00311a94  cc 20 8d e5                                      str r2, [sp, #0xcc]
00311a98  c8 20 8d e5                                      str r2, [sp, #0xc8]
00311a9c  00 00 a0 03                                      moveq r0, #0
00311aa0  04 00 00 0a                                      beq #0x311ab8
00311aa4  00 00 a0 e3                                      mov r0, #0
00311aa8  00 30 93 e5                                      ldr r3, [r3]
00311aac  01 00 80 e2                                      add r0, r0, #1
00311ab0  03 00 54 e1                                      cmp r4, r3
00311ab4  fb ff ff 1a                                      bne #0x311aa8
00311ab8  01 00 40 e2                                      sub r0, r0, #1
00311abc  07 f2 ff eb                                      bl #0x30e2e0
00311ac0  c4 10 8d e2                                      add r1, sp, #0xc4
00311ac4  00 20 a0 e1                                      mov r2, r0
00311ac8  78 00 8d e2                                      add r0, sp, #0x78
00311acc  1f fb ff eb                                      bl #0x310750
00311ad0  44 40 8d e5                                      str r4, [sp, #0x44]
00311ad4  34 20 9d e5                                      ldr r2, [sp, #0x34]
00311ad8  00 40 a0 e3                                      mov r4, #0
00311adc  b4 40 8d e5                                      str r4, [sp, #0xb4]
00311ae0  b8 40 8d e5                                      str r4, [sp, #0xb8]
00311ae4  bc 40 8d e5                                      str r4, [sp, #0xbc]
00311ae8  c0 40 8d e5                                      str r4, [sp, #0xc0]
00311aec  cc 30 92 e5                                      ldr r3, [r2, #0xcc]
00311af0  8c e0 8d e2                                      add lr, sp, #0x8c
00311af4  30 e0 8d e5                                      str lr, [sp, #0x30]
00311af8  3c 40 8d e5                                      str r4, [sp, #0x3c]
00311afc  dc 09 9f e5                                      ldr r0, [pc, #0x9dc]
00311b00  04 30 13 e5                                      ldr r3, [r3, #-4]
00311b04  50 00 8d e5                                      str r0, [sp, #0x50]
00311b08  14 20 93 e5                                      ldr r2, [r3, #0x14]
00311b0c  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00311b10  00 00 62 e0                                      rsb r0, r2, r0
00311b14  92 f3 ff eb                                      bl #0x30e964
00311b18  cc 1c 0c e3                                      movw r1, #0xcccc
00311b1c  4c 1e 43 e3                                      movt r1, #0x3e4c
00311b20  91 f4 ff eb                                      bl #0x30ed6c
00311b24  3f 14 a0 e3                                      mov r1, #0x3f000000
00311b28  8f f4 ff eb                                      bl #0x30ed6c
00311b2c  66 f2 ff eb                                      bl #0x30e4cc
00311b30  34 10 9d e5                                      ldr r1, [sp, #0x34]
00311b34  b4 00 8d e5                                      str r0, [sp, #0xb4]
00311b38  cc 30 91 e5                                      ldr r3, [r1, #0xcc]
00311b3c  04 30 13 e5                                      ldr r3, [r3, #-4]
00311b40  18 20 93 e5                                      ldr r2, [r3, #0x18]
00311b44  20 00 93 e5                                      ldr r0, [r3, #0x20]
00311b48  00 00 62 e0                                      rsb r0, r2, r0
00311b4c  84 f3 ff eb                                      bl #0x30e964
00311b50  cc 1c 0c e3                                      movw r1, #0xcccc
00311b54  4c 1e 43 e3                                      movt r1, #0x3e4c
00311b58  00 50 a0 e1                                      mov r5, r0
00311b5c  82 f4 ff eb                                      bl #0x30ed6c
00311b60  bf 14 a0 e3                                      mov r1, #0xbf000000
00311b64  80 f4 ff eb                                      bl #0x30ed6c
00311b68  00 10 a0 e1                                      mov r1, r0
00311b6c  05 00 a0 e1                                      mov r0, r5
00311b70  0b f4 ff eb                                      bl #0x30eba4
00311b74  54 f2 ff eb                                      bl #0x30e4cc
00311b78  34 20 9d e5                                      ldr r2, [sp, #0x34]
00311b7c  c0 00 8d e5                                      str r0, [sp, #0xc0]
00311b80  cc 30 92 e5                                      ldr r3, [r2, #0xcc]
00311b84  04 30 13 e5                                      ldr r3, [r3, #-4]
00311b88  14 20 93 e5                                      ldr r2, [r3, #0x14]
00311b8c  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
00311b90  00 00 62 e0                                      rsb r0, r2, r0
00311b94  72 f3 ff eb                                      bl #0x30e964
00311b98  66 16 06 e3                                      movw r1, #0x6666
00311b9c  e6 1f 43 e3                                      movt r1, #0x3fe6
00311ba0  71 f4 ff eb                                      bl #0x30ed6c
00311ba4  3f 14 a0 e3                                      mov r1, #0x3f000000
00311ba8  6f f4 ff eb                                      bl #0x30ed6c
00311bac  46 f2 ff eb                                      bl #0x30e4cc
00311bb0  34 e0 9d e5                                      ldr lr, [sp, #0x34]
00311bb4  bc 00 8d e5                                      str r0, [sp, #0xbc]
00311bb8  cc 30 9e e5                                      ldr r3, [lr, #0xcc]
00311bbc  04 30 13 e5                                      ldr r3, [r3, #-4]
00311bc0  18 20 93 e5                                      ldr r2, [r3, #0x18]
00311bc4  20 00 93 e5                                      ldr r0, [r3, #0x20]
00311bc8  00 00 62 e0                                      rsb r0, r2, r0
00311bcc  64 f3 ff eb                                      bl #0x30e964
00311bd0  fd 15 a0 e3                                      mov r1, #0x3f400000
00311bd4  00 50 a0 e1                                      mov r5, r0
00311bd8  63 f4 ff eb                                      bl #0x30ed6c
00311bdc  bf 14 a0 e3                                      mov r1, #0xbf000000
00311be0  61 f4 ff eb                                      bl #0x30ed6c
00311be4  00 10 a0 e1                                      mov r1, r0
00311be8  05 00 a0 e1                                      mov r0, r5
00311bec  ec f3 ff eb                                      bl #0x30eba4
00311bf0  35 f2 ff eb                                      bl #0x30e4cc
00311bf4  b8 00 8d e5                                      str r0, [sp, #0xb8]
00311bf8  34 00 9d e5                                      ldr r0, [sp, #0x34]
00311bfc  7f 20 e0 e3                                      mvn r2, #0x7f
00311c00  00 30 e0 e3                                      mvn r3, #0
00311c04  b3 20 cd e5                                      strb r2, [sp, #0xb3]
00311c08  b2 30 cd e5                                      strb r3, [sp, #0xb2]
00311c0c  b4 10 8d e2                                      add r1, sp, #0xb4
00311c10  a7 20 cd e5                                      strb r2, [sp, #0xa7]
00311c14  a6 30 cd e5                                      strb r3, [sp, #0xa6]
00311c18  a5 40 cd e5                                      strb r4, [sp, #0xa5]
00311c1c  a4 40 cd e5                                      strb r4, [sp, #0xa4]
00311c20  ab 20 cd e5                                      strb r2, [sp, #0xab]
00311c24  aa 30 cd e5                                      strb r3, [sp, #0xaa]
00311c28  a9 40 cd e5                                      strb r4, [sp, #0xa9]
00311c2c  a8 40 cd e5                                      strb r4, [sp, #0xa8]
00311c30  af 20 cd e5                                      strb r2, [sp, #0xaf]
00311c34  ae 30 cd e5                                      strb r3, [sp, #0xae]
00311c38  ad 40 cd e5                                      strb r4, [sp, #0xad]
00311c3c  ac 40 cd e5                                      strb r4, [sp, #0xac]
00311c40  b1 40 cd e5                                      strb r4, [sp, #0xb1]
00311c44  b0 40 cd e5                                      strb r4, [sp, #0xb0]
00311c48  00 c0 90 e5                                      ldr ip, [r0]
00311c4c  01 20 a0 e1                                      mov r2, r1
00311c50  00 40 8d e5                                      str r4, [sp]
00311c54  a4 30 8d e2                                      add r3, sp, #0xa4
00311c58  0f e0 a0 e1                                      mov lr, pc
00311c5c  34 f0 9c e5                                      ldr pc, [ip, #0x34]
00311c60  68 10 9d e5                                      ldr r1, [sp, #0x68]
00311c64  78 58 9f e5                                      ldr r5, [pc, #0x878]
00311c68  8c c0 8d e2                                      add ip, sp, #0x8c
00311c6c  04 e0 91 e5                                      ldr lr, [r1, #4]
00311c70  05 50 8f e0                                      add r5, pc, r5
00311c74  d3 4d 04 e3                                      movw r4, #0x4dd3
00311c78  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
00311c7c  62 40 41 e3                                      movt r4, #0x1062
00311c80  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00311c84  94 3e c2 e0                                      smull r3, r2, r4, lr
00311c88  00 00 95 e5                                      ldr r0, [r5]
00311c8c  42 23 a0 e1                                      asr r2, r2, #6
00311c90  ce 3f a0 e1                                      asr r3, lr, #0x1f
00311c94  04 00 8c e4                                      str r0, [ip], #4
00311c98  02 00 63 e0                                      rsb r0, r3, r2
00311c9c  2c 00 8d e5                                      str r0, [sp, #0x2c]
00311ca0  40 08 9f e5                                      ldr r0, [pc, #0x840]
00311ca4  04 10 95 e5                                      ldr r1, [r5, #4]
00311ca8  02 30 63 e0                                      rsb r3, r3, r2
00311cac  00 00 8f e0                                      add r0, pc, r0
00311cb0  54 00 8d e5                                      str r0, [sp, #0x54]
00311cb4  30 08 9f e5                                      ldr r0, [pc, #0x830]
00311cb8  00 10 cc e5                                      strb r1, [ip]
00311cbc  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00311cc0  00 00 8f e0                                      add r0, pc, r0
00311cc4  58 00 8d e5                                      str r0, [sp, #0x58]
00311cc8  20 08 9f e5                                      ldr r0, [pc, #0x820]
00311ccc  68 20 9d e5                                      ldr r2, [sp, #0x68]
00311cd0  00 00 8f e0                                      add r0, pc, r0
00311cd4  64 00 8d e5                                      str r0, [sp, #0x64]
00311cd8  fa 0f a0 e3                                      mov r0, #0x3e8
00311cdc  90 e3 63 e0                                      mls r3, r0, r3, lr
00311ce0  90 01 00 e0                                      mul r0, r0, r1
00311ce4  20 30 8d e5                                      str r3, [sp, #0x20]
00311ce8  4c 00 8d e5                                      str r0, [sp, #0x4c]
00311cec  14 40 92 e5                                      ldr r4, [r2, #0x14]
00311cf0  54 30 9d e5                                      ldr r3, [sp, #0x54]
00311cf4  58 e0 9d e5                                      ldr lr, [sp, #0x58]
00311cf8  64 00 9d e5                                      ldr r0, [sp, #0x64]
00311cfc  44 10 9d e5                                      ldr r1, [sp, #0x44]
00311d00  14 30 83 e2                                      add r3, r3, #0x14
00311d04  20 e0 8e e2                                      add lr, lr, #0x20
00311d08  2c 00 80 e2                                      add r0, r0, #0x2c
00311d0c  01 00 54 e1                                      cmp r4, r1
00311d10  5c 30 8d e5                                      str r3, [sp, #0x5c]
00311d14  60 e0 8d e5                                      str lr, [sp, #0x60]
00311d18  6c 00 8d e5                                      str r0, [sp, #0x6c]
00311d1c  fd 00 00 0a                                      beq #0x312118
00311d20  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00311d24  06 00 51 e3                                      cmp r1, #6
00311d28  cd 01 00 da                                      ble #0x312464
00311d2c  ff 20 a0 e3                                      mov r2, #0xff
00311d30  10 20 8d e5                                      str r2, [sp, #0x10]
00311d34  1c 20 8d e5                                      str r2, [sp, #0x1c]
00311d38  18 20 8d e5                                      str r2, [sp, #0x18]
00311d3c  24 10 94 e5                                      ldr r1, [r4, #0x24]
00311d40  28 00 94 e5                                      ldr r0, [r4, #0x28]
00311d44  98 f1 ff eb                                      bl #0x30e3ac
00311d48  50 10 9d e5                                      ldr r1, [sp, #0x50]
00311d4c  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
00311d50  14 00 8d e5                                      str r0, [sp, #0x14]
00311d54  01 30 8f e0                                      add r3, pc, r1
00311d58  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00311d5c  10 10 93 e5                                      ldr r1, [r3, #0x10]
00311d60  8c 07 9f e5                                      ldr r0, [pc, #0x78c]
00311d64  8c 67 9f e5                                      ldr r6, [pc, #0x78c]
00311d68  01 00 52 e1                                      cmp r2, r1
00311d6c  10 20 83 15                                      strne r2, [r3, #0x10]
00311d70  84 37 9f e5                                      ldr r3, [pc, #0x784]
00311d74  01 e0 8e e2                                      add lr, lr, #1
00311d78  3c e0 8d e5                                      str lr, [sp, #0x3c]
00311d7c  03 30 8f e0                                      add r3, pc, r3
00311d80  18 20 93 e5                                      ldr r2, [r3, #0x18]
00311d84  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
00311d88  40 00 8d e5                                      str r0, [sp, #0x40]
00311d8c  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
00311d90  01 00 52 e1                                      cmp r2, r1
00311d94  1c 20 83 15                                      strne r2, [r3, #0x1c]
00311d98  60 37 9f e5                                      ldr r3, [pc, #0x760]
00311d9c  06 60 8f e0                                      add r6, pc, r6
00311da0  00 50 a0 e3                                      mov r5, #0
00311da4  03 30 8f e0                                      add r3, pc, r3
00311da8  24 20 93 e5                                      ldr r2, [r3, #0x24]
00311dac  28 10 93 e5                                      ldr r1, [r3, #0x28]
00311db0  01 00 52 e1                                      cmp r2, r1
00311db4  28 20 83 15                                      strne r2, [r3, #0x28]
00311db8  18 00 00 ea                                      b #0x311e20
00311dbc  04 00 87 e5                                      str r0, [r7, #4]
00311dc0  00 90 87 e5                                      str sb, [r7]
00311dc4  10 30 96 e5                                      ldr r3, [r6, #0x10]
00311dc8  08 30 83 e2                                      add r3, r3, #8
00311dcc  10 30 86 e5                                      str r3, [r6, #0x10]
00311dd0  2c 37 9f e5                                      ldr r3, [pc, #0x72c]
00311dd4  03 30 8f e0                                      add r3, pc, r3
00311dd8  1c 70 93 e5                                      ldr r7, [r3, #0x1c]
00311ddc  20 20 93 e5                                      ldr r2, [r3, #0x20]
00311de0  02 00 57 e1                                      cmp r7, r2
00311de4  30 01 00 0a                                      beq #0x3122ac
00311de8  7f 20 e0 e3                                      mvn r2, #0x7f
00311dec  03 20 c7 e5                                      strb r2, [r7, #3]
00311df0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00311df4  00 00 c7 e5                                      strb r0, [r7]
00311df8  18 10 9d e5                                      ldr r1, [sp, #0x18]
00311dfc  02 10 c7 e5                                      strb r1, [r7, #2]
00311e00  10 20 9d e5                                      ldr r2, [sp, #0x10]
00311e04  01 20 c7 e5                                      strb r2, [r7, #1]
00311e08  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00311e0c  04 20 82 e2                                      add r2, r2, #4
00311e10  1c 20 83 e5                                      str r2, [r3, #0x1c]
00311e14  fa 0f 55 e3                                      cmp r5, #0x3e8
00311e18  01 80 88 e2                                      add r8, r8, #1
00311e1c  8d 00 00 0a                                      beq #0x312058
00311e20  20 10 9d e5                                      ldr r1, [sp, #0x20]
00311e24  08 30 a0 e1                                      mov r3, r8
00311e28  05 00 51 e1                                      cmp r1, r5
00311e2c  03 00 00 ca                                      bgt #0x311e40
00311e30  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00311e34  00 00 52 e3                                      cmp r2, #0
00311e38  86 00 00 da                                      ble #0x312058
00311e3c  fa 3f 48 e2                                      sub r3, r8, #0x3e8
00311e40  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
00311e44  24 10 94 e5                                      ldr r1, [r4, #0x24]
00311e48  01 50 85 e2                                      add r5, r5, #1
00311e4c  03 01 92 e7                                      ldr r0, [r2, r3, lsl #2]
00311e50  55 f1 ff eb                                      bl #0x30e3ac
00311e54  00 70 a0 e1                                      mov r7, r0
00311e58  05 00 a0 e1                                      mov r0, r5
00311e5c  c0 f2 ff eb                                      bl #0x30e964
00311e60  18 17 0b e3                                      movw r1, #0xb718
00311e64  d1 1a 43 e3                                      movt r1, #0x3ad1
00311e68  bf f3 ff eb                                      bl #0x30ed6c
00311e6c  cd 1c 0c e3                                      movw r1, #0xcccd
00311e70  4c 1f 43 e3                                      movt r1, #0x3f4c
00311e74  4c f1 ff eb                                      bl #0x30e3ac
00311e78  3f 14 a0 e3                                      mov r1, #0x3f000000
00311e7c  ba f3 ff eb                                      bl #0x30ed6c
00311e80  14 10 9d e5                                      ldr r1, [sp, #0x14]
00311e84  00 90 a0 e1                                      mov sb, r0
00311e88  07 00 a0 e1                                      mov r0, r7
00311e8c  80 f3 ff eb                                      bl #0x30ec94
00311e90  cd 1c 0c e3                                      movw r1, #0xcccd
00311e94  0c 1f 43 e3                                      movt r1, #0x3f0c
00311e98  b3 f3 ff eb                                      bl #0x30ed6c
00311e9c  cd 1c 0c e3                                      movw r1, #0xcccd
00311ea0  4c 1f 43 e3                                      movt r1, #0x3f4c
00311ea4  40 f1 ff eb                                      bl #0x30e3ac
00311ea8  3f 14 a0 e3                                      mov r1, #0x3f000000
00311eac  ae f3 ff eb                                      bl #0x30ed6c
00311eb0  02 a1 80 e2                                      add sl, r0, #0x80000000
00311eb4  28 00 9d e5                                      ldr r0, [sp, #0x28]
00311eb8  a9 f2 ff eb                                      bl #0x30e964
00311ebc  3f 14 a0 e3                                      mov r1, #0x3f000000
00311ec0  00 70 a0 e1                                      mov r7, r0
00311ec4  09 00 a0 e1                                      mov r0, sb
00311ec8  35 f3 ff eb                                      bl #0x30eba4
00311ecc  00 10 a0 e1                                      mov r1, r0
00311ed0  07 00 a0 e1                                      mov r0, r7
00311ed4  a4 f3 ff eb                                      bl #0x30ed6c
00311ed8  7b f1 ff eb                                      bl #0x30e4cc
00311edc  00 90 a0 e1                                      mov sb, r0
00311ee0  24 00 9d e5                                      ldr r0, [sp, #0x24]
00311ee4  9e f2 ff eb                                      bl #0x30e964
00311ee8  3f 14 a0 e3                                      mov r1, #0x3f000000
00311eec  00 70 a0 e1                                      mov r7, r0
00311ef0  0a 00 a0 e1                                      mov r0, sl
00311ef4  2a f3 ff eb                                      bl #0x30eba4
00311ef8  00 10 a0 e1                                      mov r1, r0
00311efc  07 00 a0 e1                                      mov r0, r7
00311f00  99 f3 ff eb                                      bl #0x30ed6c
00311f04  70 f1 ff eb                                      bl #0x30e4cc
00311f08  10 70 96 e5                                      ldr r7, [r6, #0x10]
00311f0c  14 30 96 e5                                      ldr r3, [r6, #0x14]
00311f10  00 a0 a0 e1                                      mov sl, r0
00311f14  03 00 57 e1                                      cmp r7, r3
00311f18  a7 ff ff 1a                                      bne #0x311dbc
00311f1c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00311f20  07 30 63 e0                                      rsb r3, r3, r7
00311f24  c3 31 a0 e1                                      asr r3, r3, #3
00311f28  01 00 53 e3                                      cmp r3, #1
00311f2c  03 10 83 20                                      addhs r1, r3, r3
00311f30  01 10 83 32                                      addlo r1, r3, #1
00311f34  1e 02 71 e3                                      cmn r1, #0xe0000001
00311f38  44 00 00 8a                                      bhi #0x312050
00311f3c  01 00 53 e1                                      cmp r3, r1
00311f40  42 00 00 8a                                      bhi #0x312050
00311f44  42 2f 8d e2                                      add r2, sp, #0x108
00311f48  28 10 22 e5                                      str r1, [r2, #-0x28]!
00311f4c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00311f50  f8 fb ff eb                                      bl #0x310f38
00311f54  54 30 9d e5                                      ldr r3, [sp, #0x54]
00311f58  00 b0 a0 e1                                      mov fp, r0
00311f5c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00311f60  07 70 6c e0                                      rsb r7, ip, r7
00311f64  c7 71 a0 e1                                      asr r7, r7, #3
00311f68  00 00 57 e3                                      cmp r7, #0
00311f6c  00 70 a0 d1                                      movle r7, r0
00311f70  0b 00 00 da                                      ble #0x311fa4
00311f74  07 10 a0 e1                                      mov r1, r7
00311f78  00 00 a0 e3                                      mov r0, #0
00311f7c  0c 20 a0 e1                                      mov r2, ip
00311f80  00 e0 b2 e7                                      ldr lr, [r2, r0]!
00311f84  0b 30 a0 e1                                      mov r3, fp
00311f88  01 10 51 e2                                      subs r1, r1, #1
00311f8c  00 e0 a3 e7                                      str lr, [r3, r0]!
00311f90  04 20 92 e5                                      ldr r2, [r2, #4]
00311f94  08 00 80 e2                                      add r0, r0, #8
00311f98  04 20 83 e5                                      str r2, [r3, #4]
00311f9c  f6 ff ff 1a                                      bne #0x311f7c
00311fa0  87 71 8b e0                                      add r7, fp, r7, lsl #3
00311fa4  00 06 87 e8                                      stm r7, {sb, sl}
00311fa8  40 e0 9d e5                                      ldr lr, [sp, #0x40]
00311fac  08 70 87 e2                                      add r7, r7, #8
00311fb0  0e 30 8f e0                                      add r3, pc, lr
00311fb4  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00311fb8  14 10 93 e5                                      ldr r1, [r3, #0x14]
00311fbc  00 00 50 e3                                      cmp r0, #0
00311fc0  04 00 00 0a                                      beq #0x311fd8
00311fc4  01 10 60 e0                                      rsb r1, r0, r1
00311fc8  07 10 c1 e3                                      bic r1, r1, #7
00311fcc  80 00 51 e3                                      cmp r1, #0x80
00311fd0  2f 01 00 8a                                      bhi #0x312494
00311fd4  c9 db 0f eb                                      bl #0x708f00
00311fd8  28 35 9f e5                                      ldr r3, [pc, #0x528]
00311fdc  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
00311fe0  03 30 8f e0                                      add r3, pc, r3
00311fe4  82 21 8b e0                                      add r2, fp, r2, lsl #3
00311fe8  14 20 83 e5                                      str r2, [r3, #0x14]
00311fec  0c b0 83 e5                                      str fp, [r3, #0xc]
00311ff0  10 70 83 e5                                      str r7, [r3, #0x10]
00311ff4  75 ff ff ea                                      b #0x311dd0
00311ff8  00 01 9d e5                                      ldr r0, [sp, #0x100]
00311ffc  00 50 a0 e3                                      mov r5, #0
00312000  04 00 50 e1                                      cmp r0, r4
00312004  69 fe ff 0a                                      beq #0x3119b0
00312008  00 00 50 e3                                      cmp r0, #0
0031200c  67 fe ff 0a                                      beq #0x3119b0
00312010  ec 10 9d e5                                      ldr r1, [sp, #0xec]
00312014  01 10 60 e0                                      rsb r1, r0, r1
00312018  80 00 51 e3                                      cmp r1, #0x80
0031201c  22 01 00 8a                                      bhi #0x3124ac
00312020  b6 db 0f eb                                      bl #0x708f00
00312024  00 00 55 e3                                      cmp r5, #0
00312028  62 fe ff 1a                                      bne #0x3119b8
0031202c  48 10 9d e5                                      ldr r1, [sp, #0x48]
00312030  70 00 9d e5                                      ldr r0, [sp, #0x70]
00312034  04 21 9d e5                                      ldr r2, [sp, #0x104]
00312038  00 30 91 e7                                      ldr r3, [r1, r0]
0031203c  00 30 93 e5                                      ldr r3, [r3]
00312040  03 00 52 e1                                      cmp r2, r3
00312044  1f 01 00 1a                                      bne #0x3124c8
00312048  43 df 8d e2                                      add sp, sp, #0x10c
0031204c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00312050  0e 12 e0 e3                                      mvn r1, #0xe0000000
00312054  ba ff ff ea                                      b #0x311f44
00312058  ac 34 9f e5                                      ldr r3, [pc, #0x4ac]
0031205c  ac 74 9f e5                                      ldr r7, [pc, #0x4ac]
00312060  ac b4 9f e5                                      ldr fp, [pc, #0x4ac]
00312064  03 30 8f e0                                      add r3, pc, r3
00312068  07 70 8f e0                                      add r7, pc, r7
0031206c  10 30 8d e5                                      str r3, [sp, #0x10]
00312070  0b b0 8f e0                                      add fp, pc, fp
00312074  85 90 a0 e1                                      lsl sb, r5, #1
00312078  00 60 a0 e3                                      mov r6, #0
0031207c  04 80 a0 e1                                      mov r8, r4
00312080  09 00 00 ea                                      b #0x3120ac
00312084  28 40 97 e5                                      ldr r4, [r7, #0x28]
00312088  2c 30 97 e5                                      ldr r3, [r7, #0x2c]
0031208c  01 60 86 e2                                      add r6, r6, #1
00312090  d6 a0 ef e7                                      ubfx sl, r6, #1, #0x10
00312094  03 00 54 e1                                      cmp r4, r3
00312098  c3 00 00 0a                                      beq #0x3123ac
0031209c  b0 a0 c4 e1                                      strh sl, [r4]
003120a0  28 30 97 e5                                      ldr r3, [r7, #0x28]
003120a4  02 30 83 e2                                      add r3, r3, #2
003120a8  28 30 87 e5                                      str r3, [r7, #0x28]
003120ac  09 00 56 e1                                      cmp r6, sb
003120b0  f3 ff ff ba                                      blt #0x312084
003120b4  5c 24 9f e5                                      ldr r2, [pc, #0x45c]
003120b8  08 40 a0 e1                                      mov r4, r8
003120bc  02 20 8f e0                                      add r2, pc, r2
003120c0  0c 10 92 e5                                      ldr r1, [r2, #0xc]
003120c4  10 00 92 e5                                      ldr r0, [r2, #0x10]
003120c8  00 00 61 e0                                      rsb r0, r1, r0
003120cc  c0 01 a0 e1                                      asr r0, r0, #3
003120d0  01 00 50 e3                                      cmp r0, #1
003120d4  08 00 00 9a                                      bls #0x3120fc
003120d8  34 e0 9d e5                                      ldr lr, [sp, #0x34]
003120dc  01 50 45 e2                                      sub r5, r5, #1
003120e0  18 30 92 e5                                      ldr r3, [r2, #0x18]
003120e4  00 c0 9e e5                                      ldr ip, [lr]
003120e8  24 20 92 e5                                      ldr r2, [r2, #0x24]
003120ec  21 00 8d e8                                      stm sp, {r0, r5}
003120f0  0e 00 a0 e1                                      mov r0, lr
003120f4  0f e0 a0 e1                                      mov lr, pc
003120f8  30 f0 9c e5                                      ldr pc, [ip, #0x30]
003120fc  00 40 94 e5                                      ldr r4, [r4]
00312100  30 00 9d e5                                      ldr r0, [sp, #0x30]
00312104  44 10 9d e5                                      ldr r1, [sp, #0x44]
00312108  03 00 80 e2                                      add r0, r0, #3
0031210c  01 00 54 e1                                      cmp r4, r1
00312110  30 00 8d e5                                      str r0, [sp, #0x30]
00312114  01 ff ff 1a                                      bne #0x311d20
00312118  20 00 9d e5                                      ldr r0, [sp, #0x20]
0031211c  10 f2 ff eb                                      bl #0x30e964
00312120  18 17 0b e3                                      movw r1, #0xb718
00312124  d1 1a 43 e3                                      movt r1, #0x3ad1
00312128  0f f3 ff eb                                      bl #0x30ed6c
0031212c  cd 1c 0c e3                                      movw r1, #0xcccd
00312130  4c 1f 43 e3                                      movt r1, #0x3f4c
00312134  9c f0 ff eb                                      bl #0x30e3ac
00312138  34 20 9d e5                                      ldr r2, [sp, #0x34]
0031213c  00 40 a0 e3                                      mov r4, #0
00312140  d8 40 8d e5                                      str r4, [sp, #0xd8]
00312144  dc 40 8d e5                                      str r4, [sp, #0xdc]
00312148  cc 30 92 e5                                      ldr r3, [r2, #0xcc]
0031214c  fe 15 a0 e3                                      mov r1, #0x3f800000
00312150  04 60 13 e5                                      ldr r6, [r3, #-4]
00312154  92 f2 ff eb                                      bl #0x30eba4
00312158  14 30 96 e5                                      ldr r3, [r6, #0x14]
0031215c  00 50 a0 e1                                      mov r5, r0
00312160  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
00312164  00 00 63 e0                                      rsb r0, r3, r0
00312168  fd f1 ff eb                                      bl #0x30e964
0031216c  05 10 a0 e1                                      mov r1, r5
00312170  fd f2 ff eb                                      bl #0x30ed6c
00312174  3f 14 a0 e3                                      mov r1, #0x3f000000
00312178  fb f2 ff eb                                      bl #0x30ed6c
0031217c  d2 f0 ff eb                                      bl #0x30e4cc
00312180  34 e0 9d e5                                      ldr lr, [sp, #0x34]
00312184  d8 00 8d e5                                      str r0, [sp, #0xd8]
00312188  cc 30 9e e5                                      ldr r3, [lr, #0xcc]
0031218c  04 30 13 e5                                      ldr r3, [r3, #-4]
00312190  18 20 93 e5                                      ldr r2, [r3, #0x18]
00312194  20 00 93 e5                                      ldr r0, [r3, #0x20]
00312198  00 00 62 e0                                      rsb r0, r2, r0
0031219c  f0 f1 ff eb                                      bl #0x30e964
003121a0  cc 1c 0c e3                                      movw r1, #0xcccc
003121a4  4c 1e 43 e3                                      movt r1, #0x3e4c
003121a8  00 60 a0 e1                                      mov r6, r0
003121ac  ee f2 ff eb                                      bl #0x30ed6c
003121b0  bf 14 a0 e3                                      mov r1, #0xbf000000
003121b4  ec f2 ff eb                                      bl #0x30ed6c
003121b8  00 10 a0 e1                                      mov r1, r0
003121bc  06 00 a0 e1                                      mov r0, r6
003121c0  77 f2 ff eb                                      bl #0x30eba4
003121c4  c0 f0 ff eb                                      bl #0x30e4cc
003121c8  dc 00 8d e5                                      str r0, [sp, #0xdc]
003121cc  34 00 9d e5                                      ldr r0, [sp, #0x34]
003121d0  d4 40 8d e5                                      str r4, [sp, #0xd4]
003121d4  d0 40 8d e5                                      str r4, [sp, #0xd0]
003121d8  cc 30 90 e5                                      ldr r3, [r0, #0xcc]
003121dc  04 30 13 e5                                      ldr r3, [r3, #-4]
003121e0  14 20 93 e5                                      ldr r2, [r3, #0x14]
003121e4  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
003121e8  00 00 62 e0                                      rsb r0, r2, r0
003121ec  dc f1 ff eb                                      bl #0x30e964
003121f0  00 10 a0 e1                                      mov r1, r0
003121f4  05 00 a0 e1                                      mov r0, r5
003121f8  db f2 ff eb                                      bl #0x30ed6c
003121fc  3f 14 a0 e3                                      mov r1, #0x3f000000
00312200  d9 f2 ff eb                                      bl #0x30ed6c
00312204  b0 f0 ff eb                                      bl #0x30e4cc
00312208  d0 00 8d e5                                      str r0, [sp, #0xd0]
0031220c  34 10 9d e5                                      ldr r1, [sp, #0x34]
00312210  cc 30 91 e5                                      ldr r3, [r1, #0xcc]
00312214  04 30 13 e5                                      ldr r3, [r3, #-4]
00312218  18 20 93 e5                                      ldr r2, [r3, #0x18]
0031221c  20 00 93 e5                                      ldr r0, [r3, #0x20]
00312220  00 00 62 e0                                      rsb r0, r2, r0
00312224  ce f1 ff eb                                      bl #0x30e964
00312228  fd 15 a0 e3                                      mov r1, #0x3f400000
0031222c  00 40 a0 e1                                      mov r4, r0
00312230  cd f2 ff eb                                      bl #0x30ed6c
00312234  bf 14 a0 e3                                      mov r1, #0xbf000000
00312238  cb f2 ff eb                                      bl #0x30ed6c
0031223c  00 10 a0 e1                                      mov r1, r0
00312240  04 00 a0 e1                                      mov r0, r4
00312244  56 f2 ff eb                                      bl #0x30eba4
00312248  9f f0 ff eb                                      bl #0x30e4cc
0031224c  34 30 9d e5                                      ldr r3, [sp, #0x34]
00312250  d4 00 8d e5                                      str r0, [sp, #0xd4]
00312254  d8 10 8d e2                                      add r1, sp, #0xd8
00312258  00 20 93 e5                                      ldr r2, [r3]
0031225c  00 30 e0 e3                                      mvn r3, #0
00312260  34 00 9d e5                                      ldr r0, [sp, #0x34]
00312264  2c c0 92 e5                                      ldr ip, [r2, #0x2c]
00312268  e7 30 cd e5                                      strb r3, [sp, #0xe7]
0031226c  e4 30 cd e5                                      strb r3, [sp, #0xe4]
00312270  e5 30 cd e5                                      strb r3, [sp, #0xe5]
00312274  e6 30 cd e5                                      strb r3, [sp, #0xe6]
00312278  d0 20 8d e2                                      add r2, sp, #0xd0
0031227c  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
00312280  3c ff 2f e1                                      blx ip
00312284  68 e0 9d e5                                      ldr lr, [sp, #0x68]
00312288  44 20 9d e5                                      ldr r2, [sp, #0x44]
0031228c  14 30 9e e5                                      ldr r3, [lr, #0x14]
00312290  00 00 00 ea                                      b #0x312298
00312294  00 30 93 e5                                      ldr r3, [r3]
00312298  02 00 53 e1                                      cmp r3, r2
0031229c  fc ff ff 1a                                      bne #0x312294
003122a0  74 00 9d e5                                      ldr r0, [sp, #0x74]
003122a4  4f fa ff eb                                      bl #0x310be8
003122a8  5f ff ff ea                                      b #0x31202c
003122ac  18 30 93 e5                                      ldr r3, [r3, #0x18]
003122b0  07 30 63 e0                                      rsb r3, r3, r7
003122b4  43 31 a0 e1                                      asr r3, r3, #2
003122b8  01 00 53 e3                                      cmp r3, #1
003122bc  03 10 83 20                                      addhs r1, r3, r3
003122c0  01 10 83 32                                      addlo r1, r3, #1
003122c4  07 01 71 e3                                      cmn r1, #0xc0000001
003122c8  35 00 00 8a                                      bhi #0x3123a4
003122cc  01 00 53 e1                                      cmp r3, r1
003122d0  33 00 00 8a                                      bhi #0x3123a4
003122d4  42 2f 8d e2                                      add r2, sp, #0x108
003122d8  28 10 22 e5                                      str r1, [r2, #-0x28]!
003122dc  60 00 9d e5                                      ldr r0, [sp, #0x60]
003122e0  30 fb ff eb                                      bl #0x310fa8
003122e4  58 30 9d e5                                      ldr r3, [sp, #0x58]
003122e8  00 90 a0 e1                                      mov sb, r0
003122ec  18 b0 93 e5                                      ldr fp, [r3, #0x18]
003122f0  07 70 6b e0                                      rsb r7, fp, r7
003122f4  47 71 a0 e1                                      asr r7, r7, #2
003122f8  00 00 57 e3                                      cmp r7, #0
003122fc  38 70 8d e5                                      str r7, [sp, #0x38]
00312300  00 20 a0 d1                                      movle r2, r0
00312304  0a 00 00 da                                      ble #0x312334
00312308  38 a0 9d e5                                      ldr sl, [sp, #0x38]
0031230c  00 70 a0 e3                                      mov r7, #0
00312310  07 00 89 e0                                      add r0, sb, r7
00312314  07 10 8b e0                                      add r1, fp, r7
00312318  04 20 a0 e3                                      mov r2, #4
0031231c  51 f1 ff eb                                      bl #0x30e868
00312320  01 a0 5a e2                                      subs sl, sl, #1
00312324  04 70 87 e2                                      add r7, r7, #4
00312328  f8 ff ff 1a                                      bne #0x312310
0031232c  38 e0 9d e5                                      ldr lr, [sp, #0x38]
00312330  0e 21 89 e0                                      add r2, sb, lr, lsl #2
00312334  7f 10 e0 e3                                      mvn r1, #0x7f
00312338  03 10 c2 e5                                      strb r1, [r2, #3]
0031233c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00312340  02 70 a0 e1                                      mov r7, r2
00312344  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
00312348  02 00 c2 e5                                      strb r0, [r2, #2]
0031234c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00312350  03 30 8f e0                                      add r3, pc, r3
00312354  01 10 c2 e5                                      strb r1, [r2, #1]
00312358  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0031235c  04 20 c7 e4                                      strb r2, [r7], #4
00312360  18 00 93 e5                                      ldr r0, [r3, #0x18]
00312364  20 10 93 e5                                      ldr r1, [r3, #0x20]
00312368  00 00 50 e3                                      cmp r0, #0
0031236c  04 00 00 0a                                      beq #0x312384
00312370  01 10 60 e0                                      rsb r1, r0, r1
00312374  03 10 c1 e3                                      bic r1, r1, #3
00312378  80 00 51 e3                                      cmp r1, #0x80
0031237c  42 00 00 8a                                      bhi #0x31248c
00312380  de da 0f eb                                      bl #0x708f00
00312384  94 31 9f e5                                      ldr r3, [pc, #0x194]
00312388  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
0031238c  03 30 8f e0                                      add r3, pc, r3
00312390  02 21 89 e0                                      add r2, sb, r2, lsl #2
00312394  20 20 83 e5                                      str r2, [r3, #0x20]
00312398  18 90 83 e5                                      str sb, [r3, #0x18]
0031239c  1c 70 83 e5                                      str r7, [r3, #0x1c]
003123a0  9b fe ff ea                                      b #0x311e14
003123a4  03 11 e0 e3                                      mvn r1, #0xc0000000
003123a8  c9 ff ff ea                                      b #0x3122d4
003123ac  24 30 97 e5                                      ldr r3, [r7, #0x24]
003123b0  04 30 63 e0                                      rsb r3, r3, r4
003123b4  c3 30 a0 e1                                      asr r3, r3, #1
003123b8  01 00 53 e3                                      cmp r3, #1
003123bc  03 10 83 20                                      addhs r1, r3, r3
003123c0  01 10 83 32                                      addlo r1, r3, #1
003123c4  06 01 71 e3                                      cmn r1, #0x80000001
003123c8  23 00 00 8a                                      bhi #0x31245c
003123cc  01 00 53 e1                                      cmp r3, r1
003123d0  21 00 00 8a                                      bhi #0x31245c
003123d4  42 2f 8d e2                                      add r2, sp, #0x108
003123d8  28 10 22 e5                                      str r1, [r2, #-0x28]!
003123dc  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
003123e0  4f fa ff eb                                      bl #0x310d24
003123e4  64 e0 9d e5                                      ldr lr, [sp, #0x64]
003123e8  00 30 a0 e1                                      mov r3, r0
003123ec  24 10 9e e5                                      ldr r1, [lr, #0x24]
003123f0  01 40 54 e0                                      subs r4, r4, r1
003123f4  00 40 a0 01                                      moveq r4, r0
003123f8  04 00 00 0a                                      beq #0x312410
003123fc  04 20 a0 e1                                      mov r2, r4
00312400  0c 00 8d e5                                      str r0, [sp, #0xc]
00312404  cb ee ff eb                                      bl #0x30df38
00312408  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0031240c  04 40 80 e0                                      add r4, r0, r4
00312410  b2 a0 c4 e0                                      strh sl, [r4], #2
00312414  10 10 9d e5                                      ldr r1, [sp, #0x10]
00312418  24 00 91 e5                                      ldr r0, [r1, #0x24]
0031241c  2c 10 91 e5                                      ldr r1, [r1, #0x2c]
00312420  00 00 50 e3                                      cmp r0, #0
00312424  06 00 00 0a                                      beq #0x312444
00312428  01 10 60 e0                                      rsb r1, r0, r1
0031242c  01 10 c1 e3                                      bic r1, r1, #1
00312430  80 00 51 e3                                      cmp r1, #0x80
00312434  18 00 00 8a                                      bhi #0x31249c
00312438  0c 30 8d e5                                      str r3, [sp, #0xc]
0031243c  af da 0f eb                                      bl #0x708f00
00312440  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00312444  e0 20 9d e5                                      ldr r2, [sp, #0xe0]
00312448  24 30 8b e5                                      str r3, [fp, #0x24]
0031244c  28 40 8b e5                                      str r4, [fp, #0x28]
00312450  82 30 83 e0                                      add r3, r3, r2, lsl #1
00312454  2c 30 8b e5                                      str r3, [fp, #0x2c]
00312458  13 ff ff ea                                      b #0x3120ac
0031245c  02 11 e0 e3                                      mvn r1, #0x80000000
00312460  db ff ff ea                                      b #0x3123d4
00312464  30 30 9d e5                                      ldr r3, [sp, #0x30]
00312468  30 e0 9d e5                                      ldr lr, [sp, #0x30]
0031246c  30 00 9d e5                                      ldr r0, [sp, #0x30]
00312470  00 30 d3 e5                                      ldrb r3, [r3]
00312474  01 e0 de e5                                      ldrb lr, [lr, #1]
00312478  02 00 d0 e5                                      ldrb r0, [r0, #2]
0031247c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00312480  10 e0 8d e5                                      str lr, [sp, #0x10]
00312484  18 00 8d e5                                      str r0, [sp, #0x18]
00312488  2b fe ff ea                                      b #0x311d3c
0031248c  eb f7 ff eb                                      bl #0x310440
00312490  bb ff ff ea                                      b #0x312384
00312494  e9 f7 ff eb                                      bl #0x310440
00312498  ce fe ff ea                                      b #0x311fd8
0031249c  0c 30 8d e5                                      str r3, [sp, #0xc]
003124a0  e6 f7 ff eb                                      bl #0x310440
003124a4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003124a8  e5 ff ff ea                                      b #0x312444
003124ac  e3 f7 ff eb                                      bl #0x310440
003124b0  3e fd ff ea                                      b #0x3119b0
003124b4  04 00 a0 e1                                      mov r0, r4
003124b8  04 10 a0 e3                                      mov r1, #4
003124bc  99 19 0b eb                                      bl #0x5d8b28
003124c0  00 20 a0 e1                                      mov r2, r0
003124c4  46 fd ff ea                                      b #0x3119e4
003124c8  90 ef ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003124cc  6c 31 68 00 ac 40 00 00 84 08 00 00 24 cb 5a 00  .byte 0x6c, 0x31, 0x68, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x24, 0xcb, 0x5a, 0x00
003124dc  f4 37 00 00 9c d9 68 00 cc c7 5a 00 44 da 68 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x9c, 0xd9, 0x68, 0x00, 0xcc, 0xc7, 0x5a, 0x00, 0x44, 0xda, 0x68, 0x00
003124ec  30 da 68 00 20 da 68 00 40 d7 68 00 54 d9 68 00  .byte 0x30, 0xda, 0x68, 0x00, 0x20, 0xda, 0x68, 0x00, 0x40, 0xd7, 0x68, 0x00, 0x54, 0xd9, 0x68, 0x00
003124fc  74 d9 68 00 4c d9 68 00 1c d9 68 00 10 d7 68 00  .byte 0x74, 0xd9, 0x68, 0x00, 0x4c, 0xd9, 0x68, 0x00, 0x1c, 0xd9, 0x68, 0x00, 0x10, 0xd7, 0x68, 0x00
0031250c  8c d6 68 00 88 d6 68 00 80 d6 68 00 34 d6 68 00  .byte 0x8c, 0xd6, 0x68, 0x00, 0x88, 0xd6, 0x68, 0x00, 0x80, 0xd6, 0x68, 0x00, 0x34, 0xd6, 0x68, 0x00
0031251c  a0 d3 68 00 64 d3 68 00                          .byte 0xa0, 0xd3, 0x68, 0x00, 0x64, 0xd3, 0x68, 0x00

; FUNCTION 0x00312584, declared_size=432, range_size=432, mode=arm
; class-group: PerfCounters
; alias: _ZN12PerfCounters8GetEntryERKSs
; demangled: PerfCounters::GetEntry(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00312584  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00312588  9c 51 9f e5                                      ldr r5, [pc, #0x19c]
0031258c  9c 91 9f e5                                      ldr sb, [pc, #0x19c]
00312590  00 a0 a0 e1                                      mov sl, r0
00312594  05 50 8f e0                                      add r5, pc, r5
00312598  09 30 95 e7                                      ldr r3, [r5, sb]
0031259c  14 40 ba e5                                      ldr r4, [sl, #0x14]!
003125a0  4c d0 4d e2                                      sub sp, sp, #0x4c
003125a4  00 30 93 e5                                      ldr r3, [r3]
003125a8  0a 00 54 e1                                      cmp r4, sl
003125ac  00 70 a0 e1                                      mov r7, r0
003125b0  01 80 a0 e1                                      mov r8, r1
003125b4  44 30 8d e5                                      str r3, [sp, #0x44]
003125b8  0a 00 00 0a                                      beq #0x3125e8
003125bc  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003125c0  18 20 94 e5                                      ldr r2, [r4, #0x18]
003125c4  14 10 98 e5                                      ldr r1, [r8, #0x14]
003125c8  10 30 98 e5                                      ldr r3, [r8, #0x10]
003125cc  02 20 60 e0                                      rsb r2, r0, r2
003125d0  03 30 61 e0                                      rsb r3, r1, r3
003125d4  03 00 52 e1                                      cmp r2, r3
003125d8  46 00 00 0a                                      beq #0x3126f8
003125dc  00 40 94 e5                                      ldr r4, [r4]
003125e0  0a 00 54 e1                                      cmp r4, sl
003125e4  f4 ff ff 1a                                      bne #0x3125bc
003125e8  14 60 8d e2                                      add r6, sp, #0x14
003125ec  06 00 a0 e1                                      mov r0, r6
003125f0  10 10 a0 e3                                      mov r1, #0x10
003125f4  24 60 8d e5                                      str r6, [sp, #0x24]
003125f8  28 60 8d e5                                      str r6, [sp, #0x28]
003125fc  1e fc ff eb                                      bl #0x31167c
00312600  24 20 9d e5                                      ldr r2, [sp, #0x24]
00312604  00 30 a0 e3                                      mov r3, #0
00312608  06 00 58 e1                                      cmp r8, r6
0031260c  00 30 c2 e5                                      strb r3, [r2]
00312610  40 30 8d e5                                      str r3, [sp, #0x40]
00312614  38 30 8d e5                                      str r3, [sp, #0x38]
00312618  3c 30 8d e5                                      str r3, [sp, #0x3c]
0031261c  03 00 00 0a                                      beq #0x312630
00312620  10 20 98 e5                                      ldr r2, [r8, #0x10]
00312624  06 00 a0 e1                                      mov r0, r6
00312628  14 10 98 e5                                      ldr r1, [r8, #0x14]
0031262c  eb f8 ff eb                                      bl #0x3109e0
00312630  24 80 86 e2                                      add r8, r6, #0x24
00312634  08 00 a0 e1                                      mov r0, r8
00312638  76 fa ff eb                                      bl #0x311018
0031263c  04 10 97 e5                                      ldr r1, [r7, #4]
00312640  48 20 8d e2                                      add r2, sp, #0x48
00312644  00 b0 a0 e3                                      mov fp, #0
00312648  38 b0 22 e5                                      str fp, [r2, #-0x38]!
0031264c  01 10 81 e2                                      add r1, r1, #1
00312650  08 00 a0 e1                                      mov r0, r8
00312654  9b fb ff eb                                      bl #0x3114c8
00312658  48 20 8d e2                                      add r2, sp, #0x48
0031265c  04 10 97 e5                                      ldr r1, [r7, #4]
00312660  08 00 a0 e1                                      mov r0, r8
00312664  3c b0 22 e5                                      str fp, [r2, #-0x3c]!
00312668  cf fa ff eb                                      bl #0x3111ac
0031266c  0d 00 a0 e1                                      mov r0, sp
00312670  0a 10 a0 e1                                      mov r1, sl
00312674  08 20 8d e2                                      add r2, sp, #8
00312678  06 30 a0 e1                                      mov r3, r6
0031267c  08 40 8d e5                                      str r4, [sp, #8]
00312680  a7 ff ff eb                                      bl #0x312524
00312684  38 00 9d e5                                      ldr r0, [sp, #0x38]
00312688  18 40 97 e5                                      ldr r4, [r7, #0x18]
0031268c  00 00 50 e3                                      cmp r0, #0
00312690  08 40 84 e2                                      add r4, r4, #8
00312694  05 00 00 0a                                      beq #0x3126b0
00312698  40 10 9d e5                                      ldr r1, [sp, #0x40]
0031269c  01 10 60 e0                                      rsb r1, r0, r1
003126a0  03 10 c1 e3                                      bic r1, r1, #3
003126a4  80 00 51 e3                                      cmp r1, #0x80
003126a8  17 00 00 8a                                      bhi #0x31270c
003126ac  13 da 0f eb                                      bl #0x708f00
003126b0  28 00 9d e5                                      ldr r0, [sp, #0x28]
003126b4  06 00 50 e1                                      cmp r0, r6
003126b8  06 00 00 0a                                      beq #0x3126d8
003126bc  00 00 50 e3                                      cmp r0, #0
003126c0  04 00 00 0a                                      beq #0x3126d8
003126c4  14 10 9d e5                                      ldr r1, [sp, #0x14]
003126c8  01 10 60 e0                                      rsb r1, r0, r1
003126cc  80 00 51 e3                                      cmp r1, #0x80
003126d0  12 00 00 8a                                      bhi #0x312720
003126d4  09 da 0f eb                                      bl #0x708f00
003126d8  09 30 95 e7                                      ldr r3, [r5, sb]
003126dc  44 20 9d e5                                      ldr r2, [sp, #0x44]
003126e0  04 00 a0 e1                                      mov r0, r4
003126e4  00 30 93 e5                                      ldr r3, [r3]
003126e8  03 00 52 e1                                      cmp r2, r3
003126ec  0d 00 00 1a                                      bne #0x312728
003126f0  4c d0 8d e2                                      add sp, sp, #0x4c
003126f4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003126f8  b8 ef ff eb                                      bl #0x30e5e0
003126fc  00 00 50 e3                                      cmp r0, #0
00312700  b5 ff ff 1a                                      bne #0x3125dc
00312704  08 40 84 e2                                      add r4, r4, #8
00312708  f2 ff ff ea                                      b #0x3126d8
0031270c  4b f7 ff eb                                      bl #0x310440
00312710  28 00 9d e5                                      ldr r0, [sp, #0x28]
00312714  06 00 50 e1                                      cmp r0, r6
00312718  e7 ff ff 1a                                      bne #0x3126bc
0031271c  ed ff ff ea                                      b #0x3126d8
00312720  46 f7 ff eb                                      bl #0x310440
00312724  eb ff ff ea                                      b #0x3126d8
00312728  f8 ee ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0031272c  fc 24 68 00 ac 40 00 00                          .byte 0xfc, 0x24, 0x68, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00312734, declared_size=244, range_size=244, mode=arm
; class-group: PerfCounters
; alias: _ZN12PerfCounters15SetCounterValueERKSsfff
; demangled: PerfCounters::SetCounterValue(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, float, float, float)
; decoder-mode: arm
00312734  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00312738  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0031273c  d8 50 9f e5                                      ldr r5, [pc, #0xd8]
00312740  d8 e0 9f e5                                      ldr lr, [pc, #0xd8]
00312744  04 40 8f e0                                      add r4, pc, r4
00312748  05 c0 94 e7                                      ldr ip, [r4, r5]
0031274c  0e 60 94 e7                                      ldr r6, [r4, lr]
00312750  24 d0 4d e2                                      sub sp, sp, #0x24
00312754  00 c0 9c e5                                      ldr ip, [ip]
00312758  00 b0 a0 e1                                      mov fp, r0
0031275c  06 00 a0 e1                                      mov r0, r6
00312760  03 80 a0 e1                                      mov r8, r3
00312764  1c c0 8d e5                                      str ip, [sp, #0x1c]
00312768  01 a0 a0 e1                                      mov sl, r1
0031276c  02 90 a0 e1                                      mov sb, r2
00312770  44 94 00 eb                                      bl #0x337888
00312774  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
00312778  04 70 8d e2                                      add r7, sp, #4
0031277c  07 00 a0 e1                                      mov r0, r7
00312780  01 10 8f e0                                      add r1, pc, r1
00312784  12 20 81 e2                                      add r2, r1, #0x12
00312788  14 70 8d e5                                      str r7, [sp, #0x14]
0031278c  18 70 8d e5                                      str r7, [sp, #0x18]
00312790  d4 fb ff eb                                      bl #0x3116e8
00312794  06 00 a0 e1                                      mov r0, r6
00312798  07 10 a0 e1                                      mov r1, r7
0031279c  b9 94 00 eb                                      bl #0x337a88
003127a0  00 60 a0 e1                                      mov r6, r0
003127a4  18 00 9d e5                                      ldr r0, [sp, #0x18]
003127a8  07 00 50 e1                                      cmp r0, r7
003127ac  06 00 00 0a                                      beq #0x3127cc
003127b0  00 00 50 e3                                      cmp r0, #0
003127b4  04 00 00 0a                                      beq #0x3127cc
003127b8  04 10 9d e5                                      ldr r1, [sp, #4]
003127bc  01 10 60 e0                                      rsb r1, r0, r1
003127c0  80 00 51 e3                                      cmp r1, #0x80
003127c4  10 00 00 8a                                      bhi #0x31280c
003127c8  cc d9 0f eb                                      bl #0x708f00
003127cc  00 00 56 e3                                      cmp r6, #0
003127d0  06 00 00 0a                                      beq #0x3127f0
003127d4  0b 00 a0 e1                                      mov r0, fp
003127d8  0a 10 a0 e1                                      mov r1, sl
003127dc  68 ff ff eb                                      bl #0x312584
003127e0  1c 80 80 e5                                      str r8, [r0, #0x1c]
003127e4  18 90 80 e5                                      str sb, [r0, #0x18]
003127e8  48 30 9d e5                                      ldr r3, [sp, #0x48]
003127ec  20 30 80 e5                                      str r3, [r0, #0x20]
003127f0  05 30 94 e7                                      ldr r3, [r4, r5]
003127f4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003127f8  00 30 93 e5                                      ldr r3, [r3]
003127fc  03 00 52 e1                                      cmp r2, r3
00312800  03 00 00 1a                                      bne #0x312814
00312804  24 d0 8d e2                                      add sp, sp, #0x24
00312808  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0031280c  0b f7 ff eb                                      bl #0x310440
00312810  ed ff ff ea                                      b #0x3127cc
00312814  bd ee ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00312818  4c 23 68 00 ac 40 00 00 84 08 00 00 00 bd 5a 00  .byte 0x4c, 0x23, 0x68, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x00, 0xbd, 0x5a, 0x00
