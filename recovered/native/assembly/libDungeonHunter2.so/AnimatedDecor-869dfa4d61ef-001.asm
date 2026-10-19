; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003883dc, declared_size=8, range_size=8, mode=arm
; class-group: AnimatedDecor
; alias: _ZNK13AnimatedDecor10IsAnimatedEv
; demangled: AnimatedDecor::IsAnimated() const
; decoder-mode: arm
003883dc  01 00 a0 e3                                      mov r0, #1
003883e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003884f8, declared_size=4, range_size=4, mode=arm
; class-group: AnimatedDecor
; alias: _ZNK13AnimatedDecor9IsZonableEv
; demangled: AnimatedDecor::IsZonable() const
; decoder-mode: arm
003884f8  98 09 00 ea                                      b #0x38ab60

; FUNCTION 0x00388cec, declared_size=224, range_size=224, mode=arm
; class-group: AnimatedDecor
; alias: _ZN13AnimatedDecor19__CallbackRandomAllEPN6glitch5scene19ITimelineControllerEPv
; demangled: AnimatedDecor::__CallbackRandomAll(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
00388cec  30 40 2d e9                                      push {r4, r5, lr}
00388cf0  d8 32 91 e5                                      ldr r3, [r1, #0x2d8]
00388cf4  0c d0 4d e2                                      sub sp, sp, #0xc
00388cf8  01 50 a0 e1                                      mov r5, r1
00388cfc  38 30 93 e5                                      ldr r3, [r3, #0x38]
00388d00  00 10 a0 e3                                      mov r1, #0
00388d04  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
00388d08  03 00 a0 e1                                      mov r0, r3
00388d0c  00 30 93 e5                                      ldr r3, [r3]
00388d10  0f e0 a0 e1                                      mov lr, pc
00388d14  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00388d18  01 00 40 e2                                      sub r0, r0, #1
00388d1c  cd ff ff eb                                      bl #0x388c58
00388d20  d8 32 95 e5                                      ldr r3, [r5, #0x2d8]
00388d24  00 e0 a0 e3                                      mov lr, #0
00388d28  00 10 a0 e1                                      mov r1, r0
00388d2c  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00388d30  0e 20 a0 e1                                      mov r2, lr
00388d34  0e 30 a0 e1                                      mov r3, lr
00388d38  0c 00 a0 e1                                      mov r0, ip
00388d3c  00 c0 9c e5                                      ldr ip, [ip]
00388d40  00 e0 8d e5                                      str lr, [sp]
00388d44  0f e0 a0 e1                                      mov lr, pc
00388d48  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00388d4c  00 00 50 e3                                      cmp r0, #0
00388d50  04 40 8f e0                                      add r4, pc, r4
00388d54  07 00 00 1a                                      bne #0x388d78
00388d58  58 30 9f e5                                      ldr r3, [pc, #0x58]
00388d5c  03 30 94 e7                                      ldr r3, [r4, r3]
00388d60  00 30 93 e5                                      ldr r3, [r3]
00388d64  02 00 53 e3                                      cmp r3, #2
00388d68  00 00 80 05                                      streq r0, [r0]
00388d6c  01 00 00 0a                                      beq #0x388d78
00388d70  01 00 53 e3                                      cmp r3, #1
00388d74  01 00 00 0a                                      beq #0x388d80
00388d78  0c d0 8d e2                                      add sp, sp, #0xc
00388d7c  30 80 bd e8                                      pop {r4, r5, pc}
00388d80  34 00 9f e5                                      ldr r0, [pc, #0x34]
00388d84  34 10 9f e5                                      ldr r1, [pc, #0x34]
00388d88  34 20 9f e5                                      ldr r2, [pc, #0x34]
00388d8c  00 00 94 e7                                      ldr r0, [r4, r0]
00388d90  30 30 9f e5                                      ldr r3, [pc, #0x30]
00388d94  59 c1 00 e3                                      movw ip, #0x159
00388d98  01 10 8f e0                                      add r1, pc, r1
00388d9c  02 20 8f e0                                      add r2, pc, r2
00388da0  03 30 8f e0                                      add r3, pc, r3
00388da4  a8 00 80 e2                                      add r0, r0, #0xa8
00388da8  00 c0 8d e5                                      str ip, [sp]
00388dac  94 14 fe eb                                      bl #0x30e004
00388db0  f0 ff ff ea                                      b #0x388d78
; mapping-symbol data/literal pool
00388db4  40 bd 60 00 c0 39 00 00 c0 19 00 00 40 56 53 00  .byte 0x40, 0xbd, 0x60, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x40, 0x56, 0x53, 0x00
00388dc4  c4 94 53 00 d0 94 53 00                          .byte 0xc4, 0x94, 0x53, 0x00, 0xd0, 0x94, 0x53, 0x00

; FUNCTION 0x00389090, declared_size=8, range_size=8, mode=arm
; class-group: AnimatedDecor
; alias: _ZThn36_N13AnimatedDecorD1Ev
; demangled: non-virtual thunk to AnimatedDecor::~AnimatedDecor()
; decoder-mode: arm
00389090  24 00 40 e2                                      sub r0, r0, #0x24
00389094  ff ff ff ea                                      b #0x389098

; FUNCTION 0x00389098, declared_size=108, range_size=108, mode=arm
; class-group: AnimatedDecor
; alias: _ZN13AnimatedDecorD1Ev
; demangled: AnimatedDecor::~AnimatedDecor()
; decoder-mode: arm
00389098  70 40 2d e9                                      push {r4, r5, r6, lr}
0038909c  54 50 9f e5                                      ldr r5, [pc, #0x54]
003890a0  54 30 9f e5                                      ldr r3, [pc, #0x54]
003890a4  00 40 a0 e1                                      mov r4, r0
003890a8  05 50 8f e0                                      add r5, pc, r5
003890ac  03 30 95 e7                                      ldr r3, [r5, r3]
003890b0  df 0f 80 e2                                      add r0, r0, #0x37c
003890b4  e4 20 83 e2                                      add r2, r3, #0xe4
003890b8  08 10 83 e2                                      add r1, r3, #8
003890bc  d8 30 83 e2                                      add r3, r3, #0xd8
003890c0  0a 00 84 e8                                      stm r4, {r1, r3}
003890c4  24 20 84 e5                                      str r2, [r4, #0x24]
003890c8  37 2a fe eb                                      bl #0x3139ac
003890cc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003890d0  04 00 a0 e1                                      mov r0, r4
003890d4  03 30 95 e7                                      ldr r3, [r5, r3]
003890d8  e4 20 83 e2                                      add r2, r3, #0xe4
003890dc  08 10 83 e2                                      add r1, r3, #8
003890e0  d8 30 83 e2                                      add r3, r3, #0xd8
003890e4  0a 00 84 e8                                      stm r4, {r1, r3}
003890e8  24 20 84 e5                                      str r2, [r4, #0x24]
003890ec  a1 10 00 eb                                      bl #0x38d378
003890f0  04 00 a0 e1                                      mov r0, r4
003890f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003890f8  e8 b9 60 00 38 1d 00 00 0c 2b 00 00              .byte 0xe8, 0xb9, 0x60, 0x00, 0x38, 0x1d, 0x00, 0x00, 0x0c, 0x2b, 0x00, 0x00

; FUNCTION 0x00389104, declared_size=8, range_size=8, mode=arm
; class-group: AnimatedDecor
; alias: _ZThn36_N13AnimatedDecorD0Ev
; demangled: non-virtual thunk to AnimatedDecor::~AnimatedDecor()
; decoder-mode: arm
00389104  24 00 40 e2                                      sub r0, r0, #0x24
00389108  ff ff ff ea                                      b #0x38910c

; FUNCTION 0x0038910c, declared_size=28, range_size=28, mode=arm
; class-group: AnimatedDecor
; alias: _ZN13AnimatedDecorD0Ev
; demangled: AnimatedDecor::~AnimatedDecor()
; decoder-mode: arm
0038910c  10 40 2d e9                                      push {r4, lr}
00389110  00 40 a0 e1                                      mov r4, r0
00389114  df ff ff eb                                      bl #0x389098
00389118  04 00 a0 e1                                      mov r0, r4
0038911c  c7 1c fe eb                                      bl #0x310440
00389120  04 00 a0 e1                                      mov r0, r4
00389124  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00389128, declared_size=532, range_size=532, mode=arm
; class-group: AnimatedDecor
; alias: _ZN13AnimatedDecor8InitPostEv
; demangled: AnimatedDecor::InitPost()
; decoder-mode: arm
00389128  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038912c  01 30 a0 e3                                      mov r3, #1
00389130  0c 31 c0 e5                                      strb r3, [r0, #0x10c]
00389134  08 d0 4d e2                                      sub sp, sp, #8
00389138  00 40 a0 e1                                      mov r4, r0
0038913c  55 fe ff eb                                      bl #0x388a98
00389140  04 00 a0 e1                                      mov r0, r4
00389144  85 06 00 eb                                      bl #0x38ab60
00389148  d8 51 9f e5                                      ldr r5, [pc, #0x1d8]
0038914c  00 10 50 e2                                      subs r1, r0, #0
00389150  05 50 8f e0                                      add r5, pc, r5
00389154  58 00 00 0a                                      beq #0x3892bc
00389158  d8 82 94 e5                                      ldr r8, [r4, #0x2d8]
0038915c  00 00 58 e3                                      cmp r8, #0
00389160  35 00 00 0a                                      beq #0x38923c
00389164  90 73 94 e5                                      ldr r7, [r4, #0x390]
00389168  8c 33 94 e5                                      ldr r3, [r4, #0x38c]
0038916c  07 00 53 e1                                      cmp r3, r7
00389170  64 00 00 0a                                      beq #0x389308
00389174  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
00389178  07 00 a0 e1                                      mov r0, r7
0038917c  01 10 8f e0                                      add r1, pc, r1
00389180  58 15 fe eb                                      bl #0x30e6e8
00389184  00 60 50 e2                                      subs r6, r0, #0
00389188  2d 00 00 0a                                      beq #0x389244
0038918c  38 30 98 e5                                      ldr r3, [r8, #0x38]
00389190  07 10 a0 e1                                      mov r1, r7
00389194  00 20 a0 e3                                      mov r2, #0
00389198  03 00 a0 e1                                      mov r0, r3
0038919c  00 30 93 e5                                      ldr r3, [r3]
003891a0  0f e0 a0 e1                                      mov lr, pc
003891a4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
003891a8  00 00 50 e3                                      cmp r0, #0
003891ac  47 00 00 1a                                      bne #0x3892d0
003891b0  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
003891b4  00 e0 a0 e3                                      mov lr, #0
003891b8  0e 10 a0 e1                                      mov r1, lr
003891bc  38 c0 93 e5                                      ldr ip, [r3, #0x38]
003891c0  01 20 a0 e3                                      mov r2, #1
003891c4  0e 30 a0 e1                                      mov r3, lr
003891c8  0c 00 a0 e1                                      mov r0, ip
003891cc  00 c0 9c e5                                      ldr ip, [ip]
003891d0  00 e0 8d e5                                      str lr, [sp]
003891d4  0f e0 a0 e1                                      mov lr, pc
003891d8  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
003891dc  d8 02 94 e5                                      ldr r0, [r4, #0x2d8]
003891e0  1b 9e 03 eb                                      bl #0x470a54
003891e4  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
003891e8  28 30 d3 e5                                      ldrb r3, [r3, #0x28]
003891ec  00 00 53 e3                                      cmp r3, #0
003891f0  0d 00 00 0a                                      beq #0x38922c
003891f4  34 31 9f e5                                      ldr r3, [pc, #0x134]
003891f8  00 10 a0 e3                                      mov r1, #0
003891fc  28 00 a0 e3                                      mov r0, #0x28
00389200  03 30 95 e7                                      ldr r3, [r5, r3]
00389204  44 60 93 e5                                      ldr r6, [r3, #0x44]
00389208  d8 1c fe eb                                      bl #0x310570
0038920c  06 10 a0 e1                                      mov r1, r6
00389210  00 50 a0 e1                                      mov r5, r0
00389214  04 20 a0 e1                                      mov r2, r4
00389218  03 fe ff eb                                      bl #0x388a2c
0038921c  04 00 a0 e1                                      mov r0, r4
00389220  05 10 a0 e1                                      mov r1, r5
00389224  00 20 a0 e3                                      mov r2, #0
00389228  72 2e 00 eb                                      bl #0x394bf8
0038922c  04 00 a0 e1                                      mov r0, r4
00389230  00 30 94 e5                                      ldr r3, [r4]
00389234  0f e0 a0 e1                                      mov lr, pc
00389238  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0038923c  08 d0 8d e2                                      add sp, sp, #8
00389240  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00389244  38 30 98 e5                                      ldr r3, [r8, #0x38]
00389248  06 10 a0 e1                                      mov r1, r6
0038924c  03 00 a0 e1                                      mov r0, r3
00389250  00 30 93 e5                                      ldr r3, [r3]
00389254  0f e0 a0 e1                                      mov lr, pc
00389258  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0038925c  01 00 40 e2                                      sub r0, r0, #1
00389260  7c fe ff eb                                      bl #0x388c58
00389264  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
00389268  00 10 a0 e1                                      mov r1, r0
0038926c  06 20 a0 e1                                      mov r2, r6
00389270  38 c0 93 e5                                      ldr ip, [r3, #0x38]
00389274  06 30 a0 e1                                      mov r3, r6
00389278  0c 00 a0 e1                                      mov r0, ip
0038927c  00 c0 9c e5                                      ldr ip, [ip]
00389280  00 60 8d e5                                      str r6, [sp]
00389284  0f e0 a0 e1                                      mov lr, pc
00389288  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
0038928c  d8 22 94 e5                                      ldr r2, [r4, #0x2d8]
00389290  06 30 a0 e1                                      mov r3, r6
00389294  38 c0 92 e5                                      ldr ip, [r2, #0x38]
00389298  94 20 9f e5                                      ldr r2, [pc, #0x94]
0038929c  0c 00 a0 e1                                      mov r0, ip
003892a0  02 10 95 e7                                      ldr r1, [r5, r2]
003892a4  00 c0 9c e5                                      ldr ip, [ip]
003892a8  04 20 a0 e1                                      mov r2, r4
003892ac  00 40 8d e5                                      str r4, [sp]
003892b0  0f e0 a0 e1                                      mov lr, pc
003892b4  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
003892b8  c7 ff ff ea                                      b #0x3891dc
003892bc  04 00 a0 e1                                      mov r0, r4
003892c0  00 30 94 e5                                      ldr r3, [r4]
003892c4  0f e0 a0 e1                                      mov lr, pc
003892c8  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003892cc  da ff ff ea                                      b #0x38923c
003892d0  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
003892d4  00 20 a0 e3                                      mov r2, #0
003892d8  90 13 94 e5                                      ldr r1, [r4, #0x390]
003892dc  38 c0 93 e5                                      ldr ip, [r3, #0x38]
003892e0  02 30 a0 e1                                      mov r3, r2
003892e4  0c 00 a0 e1                                      mov r0, ip
003892e8  00 c0 9c e5                                      ldr ip, [ip]
003892ec  00 20 8d e5                                      str r2, [sp]
003892f0  01 20 a0 e3                                      mov r2, #1
003892f4  0f e0 a0 e1                                      mov lr, pc
003892f8  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003892fc  00 00 50 e3                                      cmp r0, #0
00389300  b5 ff ff 1a                                      bne #0x3891dc
00389304  a9 ff ff ea                                      b #0x3891b0
00389308  28 10 9f e5                                      ldr r1, [pc, #0x28]
0038930c  df 0f 84 e2                                      add r0, r4, #0x37c
00389310  01 10 8f e0                                      add r1, pc, r1
00389314  04 20 81 e2                                      add r2, r1, #4
00389318  b0 1d fe eb                                      bl #0x3109e0
0038931c  d8 82 94 e5                                      ldr r8, [r4, #0x2d8]
00389320  90 73 94 e5                                      ldr r7, [r4, #0x390]
00389324  92 ff ff ea                                      b #0x389174
; mapping-symbol data/literal pool
00389328  40 b9 60 00 3c 91 53 00 f4 37 00 00 d0 38 00 00  .byte 0x40, 0xb9, 0x60, 0x00, 0x3c, 0x91, 0x53, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xd0, 0x38, 0x00, 0x00
00389338  a0 8f 53 00                                      .byte 0xa0, 0x8f, 0x53, 0x00

; FUNCTION 0x00389dcc, declared_size=8, range_size=8, mode=arm
; class-group: AnimatedDecor
; alias: _ZThn4_N13AnimatedDecor17DeclarePropertiesEv
; demangled: non-virtual thunk to AnimatedDecor::DeclareProperties()
; decoder-mode: arm
00389dcc  04 00 40 e2                                      sub r0, r0, #4
00389dd0  ff ff ff ea                                      b #0x389dd4

; FUNCTION 0x00389dd4, declared_size=40, range_size=40, mode=arm
; class-group: AnimatedDecor
; alias: _ZN13AnimatedDecor17DeclarePropertiesEv
; demangled: AnimatedDecor::DeclareProperties()
; decoder-mode: arm
00389dd4  10 40 2d e9                                      push {r4, lr}
00389dd8  00 40 a0 e1                                      mov r4, r0
00389ddc  fb fe ff eb                                      bl #0x3899d0
00389de0  10 10 9f e5                                      ldr r1, [pc, #0x10]
00389de4  df 2f 84 e2                                      add r2, r4, #0x37c
00389de8  04 00 84 e2                                      add r0, r4, #4
00389dec  01 10 8f e0                                      add r1, pc, r1
00389df0  10 40 bd e8                                      pop {r4, lr}
00389df4  60 d4 fe ea                                      b #0x33ef7c
; mapping-symbol data/literal pool
00389df8  14 85 53 00                                      .byte 0x14, 0x85, 0x53, 0x00
