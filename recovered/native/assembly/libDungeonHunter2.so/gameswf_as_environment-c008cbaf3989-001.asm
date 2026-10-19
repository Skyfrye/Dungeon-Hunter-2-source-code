; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0075e03c, declared_size=324, range_size=324, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environmentD1Ev
; demangled: gameswf::as_environment::~as_environment()
; decoder-mode: arm
0075e03c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0075e040  00 80 a0 e1                                      mov r8, r0
0075e044  64 00 90 e5                                      ldr r0, [r0, #0x64]
0075e048  00 00 50 e3                                      cmp r0, #0
0075e04c  05 00 00 0a                                      beq #0x75e068
0075e050  00 10 90 e5                                      ldr r1, [r0]
0075e054  01 10 41 e2                                      sub r1, r1, #1
0075e058  00 00 51 e3                                      cmp r1, #0
0075e05c  00 10 80 e5                                      str r1, [r0]
0075e060  00 00 00 1a                                      bne #0x75e068
0075e064  b3 d2 ff eb                                      bl #0x752b38
0075e068  58 40 98 e5                                      ldr r4, [r8, #0x58]
0075e06c  54 70 88 e2                                      add r7, r8, #0x54
0075e070  00 00 54 e3                                      cmp r4, #0
0075e074  2c 00 00 da                                      ble #0x75e12c
0075e078  00 50 a0 e3                                      mov r5, #0
0075e07c  01 00 00 ea                                      b #0x75e088
0075e080  04 00 55 e1                                      cmp r5, r4
0075e084  0d 00 00 0a                                      beq #0x75e0c0
0075e088  00 90 97 e5                                      ldr sb, [r7]
0075e08c  85 a2 a0 e1                                      lsl sl, r5, #5
0075e090  01 50 85 e2                                      add r5, r5, #1
0075e094  0a 60 89 e0                                      add r6, sb, sl
0075e098  14 00 86 e2                                      add r0, r6, #0x14
0075e09c  20 e4 00 eb                                      bl #0x797124
0075e0a0  da 30 99 e1                                      ldrsb r3, [sb, sl]
0075e0a4  01 00 73 e3                                      cmn r3, #1
0075e0a8  f4 ff ff 1a                                      bne #0x75e080
0075e0ac  08 10 96 e5                                      ldr r1, [r6, #8]
0075e0b0  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0075e0b4  9f d2 ff eb                                      bl #0x752b38
0075e0b8  04 00 55 e1                                      cmp r5, r4
0075e0bc  f1 ff ff 1a                                      bne #0x75e088
0075e0c0  00 10 a0 e3                                      mov r1, #0
0075e0c4  07 00 a0 e1                                      mov r0, r7
0075e0c8  58 10 88 e5                                      str r1, [r8, #0x58]
0075e0cc  af f0 ff eb                                      bl #0x75a390
0075e0d0  50 00 98 e5                                      ldr r0, [r8, #0x50]
0075e0d4  00 00 50 e3                                      cmp r0, #0
0075e0d8  00 00 00 0a                                      beq #0x75e0e0
0075e0dc  57 f0 ff eb                                      bl #0x75a240
0075e0e0  40 40 88 e2                                      add r4, r8, #0x40
0075e0e4  04 00 a0 e1                                      mov r0, r4
0075e0e8  02 f6 ff eb                                      bl #0x75b8f8
0075e0ec  04 00 a0 e1                                      mov r0, r4
0075e0f0  00 10 a0 e3                                      mov r1, #0
0075e0f4  c4 f0 ff eb                                      bl #0x75a40c
0075e0f8  10 50 88 e2                                      add r5, r8, #0x10
0075e0fc  0c 40 44 e2                                      sub r4, r4, #0xc
0075e100  04 00 a0 e1                                      mov r0, r4
0075e104  06 e4 00 eb                                      bl #0x797124
0075e108  05 00 54 e1                                      cmp r4, r5
0075e10c  fa ff ff 1a                                      bne #0x75e0fc
0075e110  08 00 a0 e1                                      mov r0, r8
0075e114  f7 f5 ff eb                                      bl #0x75b8f8
0075e118  08 00 a0 e1                                      mov r0, r8
0075e11c  00 10 a0 e3                                      mov r1, #0
0075e120  b9 f0 ff eb                                      bl #0x75a40c
0075e124  08 00 a0 e1                                      mov r0, r8
0075e128  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0075e12c  e3 ff ff aa                                      bge #0x75e0c0
0075e130  84 22 a0 e1                                      lsl r2, r4, #5
0075e134  01 50 a0 e3                                      mov r5, #1
0075e138  00 00 a0 e3                                      mov r0, #0
0075e13c  00 e0 e0 e3                                      mvn lr, #0
0075e140  00 30 97 e5                                      ldr r3, [r7]
0075e144  01 40 94 e2                                      adds r4, r4, #1
0075e148  02 50 c3 e7                                      strb r5, [r3, r2]
0075e14c  02 30 83 e0                                      add r3, r3, r2
0075e150  10 10 93 e5                                      ldr r1, [r3, #0x10]
0075e154  15 00 c3 e5                                      strb r0, [r3, #0x15]
0075e158  01 00 c3 e5                                      strb r0, [r3, #1]
0075e15c  1e 10 d7 e7                                      bfi r1, lr, #0, #0x18
0075e160  21 cc a0 e1                                      lsr ip, r1, #0x18
0075e164  1f c0 c0 e7                                      bfc ip, #0, #1
0075e168  10 10 83 e5                                      str r1, [r3, #0x10]
0075e16c  14 00 c3 e5                                      strb r0, [r3, #0x14]
0075e170  13 c0 c3 e5                                      strb ip, [r3, #0x13]
0075e174  20 20 82 e2                                      add r2, r2, #0x20
0075e178  f0 ff ff 1a                                      bne #0x75e140
0075e17c  cf ff ff ea                                      b #0x75e0c0

; FUNCTION 0x0075eb4c, declared_size=132, range_size=132, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environmentC1EPNS_6playerE
; demangled: gameswf::as_environment::as_environment(gameswf::player*)
; decoder-mode: arm
0075eb4c  10 40 2d e9                                      push {r4, lr}
0075eb50  00 40 a0 e1                                      mov r4, r0
0075eb54  00 30 a0 e3                                      mov r3, #0
0075eb58  1c c0 80 e2                                      add ip, r0, #0x1c
0075eb5c  34 20 84 e2                                      add r2, r4, #0x34
0075eb60  28 00 80 e2                                      add r0, r0, #0x28
0075eb64  00 30 84 e5                                      str r3, [r4]
0075eb68  04 30 84 e5                                      str r3, [r4, #4]
0075eb6c  08 30 84 e5                                      str r3, [r4, #8]
0075eb70  0c 30 c4 e5                                      strb r3, [r4, #0xc]
0075eb74  10 30 c4 e5                                      strb r3, [r4, #0x10]
0075eb78  11 30 c4 e5                                      strb r3, [r4, #0x11]
0075eb7c  1c 30 c4 e5                                      strb r3, [r4, #0x1c]
0075eb80  01 30 cc e5                                      strb r3, [ip, #1]
0075eb84  28 30 c4 e5                                      strb r3, [r4, #0x28]
0075eb88  01 30 c0 e5                                      strb r3, [r0, #1]
0075eb8c  34 30 c4 e5                                      strb r3, [r4, #0x34]
0075eb90  64 00 84 e2                                      add r0, r4, #0x64
0075eb94  01 30 c2 e5                                      strb r3, [r2, #1]
0075eb98  68 30 84 e5                                      str r3, [r4, #0x68]
0075eb9c  40 30 84 e5                                      str r3, [r4, #0x40]
0075eba0  44 30 84 e5                                      str r3, [r4, #0x44]
0075eba4  48 30 84 e5                                      str r3, [r4, #0x48]
0075eba8  4c 30 c4 e5                                      strb r3, [r4, #0x4c]
0075ebac  50 30 84 e5                                      str r3, [r4, #0x50]
0075ebb0  54 30 84 e5                                      str r3, [r4, #0x54]
0075ebb4  58 30 84 e5                                      str r3, [r4, #0x58]
0075ebb8  5c 30 84 e5                                      str r3, [r4, #0x5c]
0075ebbc  60 30 c4 e5                                      strb r3, [r4, #0x60]
0075ebc0  64 30 84 e5                                      str r3, [r4, #0x64]
0075ebc4  78 ff ff eb                                      bl #0x75e9ac
0075ebc8  04 00 a0 e1                                      mov r0, r4
0075ebcc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007997c4, declared_size=72, range_size=72, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment3popEv
; demangled: gameswf::as_environment::pop()
; decoder-mode: arm
007997c4  70 40 2d e9                                      push {r4, r5, r6, lr}
007997c8  01 40 a0 e1                                      mov r4, r1
007997cc  04 10 91 e5                                      ldr r1, [r1, #4]
007997d0  00 20 94 e5                                      ldr r2, [r4]
007997d4  00 30 a0 e3                                      mov r3, #0
007997d8  0c c0 a0 e3                                      mov ip, #0xc
007997dc  01 10 41 e2                                      sub r1, r1, #1
007997e0  9c 21 21 e0                                      mla r1, ip, r1, r2
007997e4  01 30 c0 e5                                      strb r3, [r0, #1]
007997e8  00 30 c0 e5                                      strb r3, [r0]
007997ec  00 50 a0 e1                                      mov r5, r0
007997f0  d1 f7 ff eb                                      bl #0x79773c
007997f4  04 10 94 e5                                      ldr r1, [r4, #4]
007997f8  04 00 a0 e1                                      mov r0, r4
007997fc  01 10 41 e2                                      sub r1, r1, #1
00799800  e7 94 ff eb                                      bl #0x77eba4
00799804  05 00 a0 e1                                      mov r0, r5
00799808  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007bc1dc, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::as_environment
; alias: _ZNK7gameswf14as_environment10get_playerEv
; demangled: gameswf::as_environment::get_player() const
; decoder-mode: arm
007bc1dc  10 40 2d e9                                      push {r4, lr}
007bc1e0  00 40 a0 e1                                      mov r4, r0
007bc1e4  68 00 90 e5                                      ldr r0, [r0, #0x68]
007bc1e8  00 00 50 e3                                      cmp r0, #0
007bc1ec  03 00 00 0a                                      beq #0x7bc200
007bc1f0  64 30 94 e5                                      ldr r3, [r4, #0x64]
007bc1f4  04 20 d3 e5                                      ldrb r2, [r3, #4]
007bc1f8  00 00 52 e3                                      cmp r2, #0
007bc1fc  00 00 00 0a                                      beq #0x7bc204
007bc200  10 80 bd e8                                      pop {r4, pc}
007bc204  00 10 93 e5                                      ldr r1, [r3]
007bc208  01 10 41 e2                                      sub r1, r1, #1
007bc20c  00 00 51 e3                                      cmp r1, #0
007bc210  00 10 83 e5                                      str r1, [r3]
007bc214  01 00 00 1a                                      bne #0x7bc220
007bc218  03 00 a0 e1                                      mov r0, r3
007bc21c  45 5a fe eb                                      bl #0x752b38
007bc220  00 00 a0 e3                                      mov r0, #0
007bc224  68 00 84 e5                                      str r0, [r4, #0x68]
007bc228  64 00 84 e5                                      str r0, [r4, #0x64]
007bc22c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007cce6c, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment10set_memberERKNS_10tu_stringiERKNS_8as_valueE
; demangled: gameswf::as_environment::set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
; decoder-mode: arm
007cce6c  10 40 2d e9                                      push {r4, lr}
007cce70  50 30 90 e5                                      ldr r3, [r0, #0x50]
007cce74  00 00 53 e3                                      cmp r3, #0
007cce78  04 00 00 0a                                      beq #0x7cce90
007cce7c  03 00 a0 e1                                      mov r0, r3
007cce80  00 30 93 e5                                      ldr r3, [r3]
007cce84  0f e0 a0 e1                                      mov lr, pc
007cce88  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007cce8c  10 80 bd e8                                      pop {r4, pc}
007cce90  03 00 a0 e1                                      mov r0, r3
007cce94  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007cce98, declared_size=44, range_size=44, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::as_environment::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
007cce98  10 40 2d e9                                      push {r4, lr}
007cce9c  50 30 90 e5                                      ldr r3, [r0, #0x50]
007ccea0  00 00 53 e3                                      cmp r3, #0
007ccea4  04 00 00 0a                                      beq #0x7ccebc
007ccea8  03 00 a0 e1                                      mov r0, r3
007cceac  00 30 93 e5                                      ldr r3, [r3]
007cceb0  0f e0 a0 e1                                      mov lr, pc
007cceb4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
007cceb8  10 80 bd e8                                      pop {r4, pc}
007ccebc  03 00 a0 e1                                      mov r0, r3
007ccec0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007ccec4, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_environment
; alias: _ZNK7gameswf14as_environment10get_targetEv
; demangled: gameswf::as_environment::get_target() const
; decoder-mode: arm
007ccec4  50 00 90 e5                                      ldr r0, [r0, #0x50]
007ccec8  f1 b5 ff ea                                      b #0x7ba694

; FUNCTION 0x007ccecc, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment10set_targetEPNS_9characterE
; demangled: gameswf::as_environment::set_target(gameswf::character*)
; decoder-mode: arm
007ccecc  50 00 80 e2                                      add r0, r0, #0x50
007cced0  7c 6f fe ea                                      b #0x768cc8

; FUNCTION 0x007cced4, declared_size=572, range_size=572, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment10clear_refsEPNS_4hashIPNS_9as_objectEbNS_15fixed_size_hashIS3_EEEES3_
; demangled: gameswf::as_environment::clear_refs(gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >*, gameswf::as_object*)
; decoder-mode: arm
007cced4  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
007cced8  50 30 90 e5                                      ldr r3, [r0, #0x50]
007ccedc  00 50 a0 e1                                      mov r5, r0
007ccee0  02 40 a0 e1                                      mov r4, r2
007ccee4  03 00 52 e1                                      cmp r2, r3
007ccee8  01 90 a0 e1                                      mov sb, r1
007cceec  83 00 00 0a                                      beq #0x7cd100
007ccef0  58 80 95 e5                                      ldr r8, [r5, #0x58]
007ccef4  00 00 58 e3                                      cmp r8, #0
007ccef8  18 00 00 da                                      ble #0x7ccf60
007ccefc  00 60 a0 e3                                      mov r6, #0
007ccf00  06 a0 a0 e1                                      mov sl, r6
007ccf04  02 00 00 ea                                      b #0x7ccf14
007ccf08  01 60 86 e2                                      add r6, r6, #1
007ccf0c  08 00 56 e1                                      cmp r6, r8
007ccf10  12 00 00 0a                                      beq #0x7ccf60
007ccf14  54 70 95 e5                                      ldr r7, [r5, #0x54]
007ccf18  86 72 87 e0                                      add r7, r7, r6, lsl #5
007ccf1c  d5 31 d7 e1                                      ldrsb r3, [r7, #0x15]
007ccf20  05 00 53 e3                                      cmp r3, #5
007ccf24  f7 ff ff 1a                                      bne #0x7ccf08
007ccf28  18 30 97 e5                                      ldr r3, [r7, #0x18]
007ccf2c  09 10 a0 e1                                      mov r1, sb
007ccf30  04 20 a0 e1                                      mov r2, r4
007ccf34  00 00 53 e3                                      cmp r3, #0
007ccf38  03 00 a0 e1                                      mov r0, r3
007ccf3c  f1 ff ff 0a                                      beq #0x7ccf08
007ccf40  03 00 54 e1                                      cmp r4, r3
007ccf44  4f 00 00 0a                                      beq #0x7cd088
007ccf48  00 30 93 e5                                      ldr r3, [r3]
007ccf4c  01 60 86 e2                                      add r6, r6, #1
007ccf50  0f e0 a0 e1                                      mov lr, pc
007ccf54  40 f0 93 e5                                      ldr pc, [r3, #0x40]
007ccf58  08 00 56 e1                                      cmp r6, r8
007ccf5c  ec ff ff 1a                                      bne #0x7ccf14
007ccf60  04 a0 95 e5                                      ldr sl, [r5, #4]
007ccf64  00 00 5a e3                                      cmp sl, #0
007ccf68  1b 00 00 da                                      ble #0x7ccfdc
007ccf6c  00 60 a0 e3                                      mov r6, #0
007ccf70  06 70 a0 e1                                      mov r7, r6
007ccf74  06 b0 a0 e1                                      mov fp, r6
007ccf78  03 00 00 ea                                      b #0x7ccf8c
007ccf7c  01 70 87 e2                                      add r7, r7, #1
007ccf80  0a 00 57 e1                                      cmp r7, sl
007ccf84  0c 60 86 e2                                      add r6, r6, #0xc
007ccf88  13 00 00 0a                                      beq #0x7ccfdc
007ccf8c  00 80 95 e5                                      ldr r8, [r5]
007ccf90  06 80 88 e0                                      add r8, r8, r6
007ccf94  d1 30 d8 e1                                      ldrsb r3, [r8, #1]
007ccf98  05 00 53 e3                                      cmp r3, #5
007ccf9c  f6 ff ff 1a                                      bne #0x7ccf7c
007ccfa0  04 30 98 e5                                      ldr r3, [r8, #4]
007ccfa4  09 10 a0 e1                                      mov r1, sb
007ccfa8  04 20 a0 e1                                      mov r2, r4
007ccfac  00 00 53 e3                                      cmp r3, #0
007ccfb0  03 00 a0 e1                                      mov r0, r3
007ccfb4  f0 ff ff 0a                                      beq #0x7ccf7c
007ccfb8  03 00 54 e1                                      cmp r4, r3
007ccfbc  35 00 00 0a                                      beq #0x7cd098
007ccfc0  00 30 93 e5                                      ldr r3, [r3]
007ccfc4  01 70 87 e2                                      add r7, r7, #1
007ccfc8  0f e0 a0 e1                                      mov lr, pc
007ccfcc  40 f0 93 e5                                      ldr pc, [r3, #0x40]
007ccfd0  0a 00 57 e1                                      cmp r7, sl
007ccfd4  0c 60 86 e2                                      add r6, r6, #0xc
007ccfd8  eb ff ff 1a                                      bne #0x7ccf8c
007ccfdc  00 70 a0 e3                                      mov r7, #0
007ccfe0  05 60 a0 e1                                      mov r6, r5
007ccfe4  0c 80 a0 e3                                      mov r8, #0xc
007ccfe8  07 a0 a0 e1                                      mov sl, r7
007ccfec  d1 31 d6 e1                                      ldrsb r3, [r6, #0x11]
007ccff0  05 00 53 e3                                      cmp r3, #5
007ccff4  2f 00 00 0a                                      beq #0x7cd0b8
007ccff8  01 70 87 e2                                      add r7, r7, #1
007ccffc  04 00 57 e3                                      cmp r7, #4
007cd000  0c 60 86 e2                                      add r6, r6, #0xc
007cd004  f8 ff ff 1a                                      bne #0x7ccfec
007cd008  44 a0 95 e5                                      ldr sl, [r5, #0x44]
007cd00c  00 00 5a e3                                      cmp sl, #0
007cd010  1b 00 00 da                                      ble #0x7cd084
007cd014  00 60 a0 e3                                      mov r6, #0
007cd018  06 70 a0 e1                                      mov r7, r6
007cd01c  06 b0 a0 e1                                      mov fp, r6
007cd020  03 00 00 ea                                      b #0x7cd034
007cd024  01 70 87 e2                                      add r7, r7, #1
007cd028  0a 00 57 e1                                      cmp r7, sl
007cd02c  0c 60 86 e2                                      add r6, r6, #0xc
007cd030  13 00 00 0a                                      beq #0x7cd084
007cd034  40 80 95 e5                                      ldr r8, [r5, #0x40]
007cd038  06 80 88 e0                                      add r8, r8, r6
007cd03c  d1 30 d8 e1                                      ldrsb r3, [r8, #1]
007cd040  05 00 53 e3                                      cmp r3, #5
007cd044  f6 ff ff 1a                                      bne #0x7cd024
007cd048  04 30 98 e5                                      ldr r3, [r8, #4]
007cd04c  09 10 a0 e1                                      mov r1, sb
007cd050  04 20 a0 e1                                      mov r2, r4
007cd054  00 00 53 e3                                      cmp r3, #0
007cd058  03 00 a0 e1                                      mov r0, r3
007cd05c  f0 ff ff 0a                                      beq #0x7cd024
007cd060  03 00 54 e1                                      cmp r4, r3
007cd064  0f 00 00 0a                                      beq #0x7cd0a8
007cd068  00 30 93 e5                                      ldr r3, [r3]
007cd06c  01 70 87 e2                                      add r7, r7, #1
007cd070  0f e0 a0 e1                                      mov lr, pc
007cd074  40 f0 93 e5                                      ldr pc, [r3, #0x40]
007cd078  0a 00 57 e1                                      cmp r7, sl
007cd07c  0c 60 86 e2                                      add r6, r6, #0xc
007cd080  eb ff ff 1a                                      bne #0x7cd034
007cd084  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
007cd088  14 00 87 e2                                      add r0, r7, #0x14
007cd08c  24 28 ff eb                                      bl #0x797124
007cd090  15 a0 c7 e5                                      strb sl, [r7, #0x15]
007cd094  9b ff ff ea                                      b #0x7ccf08
007cd098  08 00 a0 e1                                      mov r0, r8
007cd09c  20 28 ff eb                                      bl #0x797124
007cd0a0  01 b0 c8 e5                                      strb fp, [r8, #1]
007cd0a4  b4 ff ff ea                                      b #0x7ccf7c
007cd0a8  08 00 a0 e1                                      mov r0, r8
007cd0ac  1c 28 ff eb                                      bl #0x797124
007cd0b0  01 b0 c8 e5                                      strb fp, [r8, #1]
007cd0b4  da ff ff ea                                      b #0x7cd024
007cd0b8  14 30 96 e5                                      ldr r3, [r6, #0x14]
007cd0bc  09 10 a0 e1                                      mov r1, sb
007cd0c0  04 20 a0 e1                                      mov r2, r4
007cd0c4  00 00 53 e3                                      cmp r3, #0
007cd0c8  03 00 a0 e1                                      mov r0, r3
007cd0cc  c9 ff ff 0a                                      beq #0x7ccff8
007cd0d0  03 00 54 e1                                      cmp r4, r3
007cd0d4  03 00 00 0a                                      beq #0x7cd0e8
007cd0d8  00 30 93 e5                                      ldr r3, [r3]
007cd0dc  0f e0 a0 e1                                      mov lr, pc
007cd0e0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
007cd0e4  c3 ff ff ea                                      b #0x7ccff8
007cd0e8  98 07 00 e0                                      mul r0, r8, r7
007cd0ec  10 00 80 e2                                      add r0, r0, #0x10
007cd0f0  00 00 85 e0                                      add r0, r5, r0
007cd0f4  0a 28 ff eb                                      bl #0x797124
007cd0f8  11 a0 c6 e5                                      strb sl, [r6, #0x11]
007cd0fc  bd ff ff ea                                      b #0x7ccff8
007cd100  50 00 80 e2                                      add r0, r0, #0x50
007cd104  00 10 a0 e3                                      mov r1, #0
007cd108  ee 6e fe eb                                      bl #0x768cc8
007cd10c  77 ff ff ea                                      b #0x7ccef0

; FUNCTION 0x007cd110, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::as_environment
; alias: _ZNK7gameswf14as_environment11find_targetEPKc
; demangled: gameswf::as_environment::find_target(char const*) const
; decoder-mode: arm
007cd110  50 00 90 e5                                      ldr r0, [r0, #0x50]
007cd114  00 00 50 e3                                      cmp r0, #0
007cd118  1e ff 2f 01                                      bxeq lr
007cd11c  58 78 fe ea                                      b #0x76b284

; FUNCTION 0x007cd120, declared_size=16, range_size=16, mode=arm
; class-group: gameswf::as_environment
; alias: _ZNK7gameswf14as_environment11find_targetERKNS_8as_valueE
; demangled: gameswf::as_environment::find_target(gameswf::as_value const&) const
; decoder-mode: arm
007cd120  50 00 90 e5                                      ldr r0, [r0, #0x50]
007cd124  00 00 50 e3                                      cmp r0, #0
007cd128  1e ff 2f 01                                      bxeq lr
007cd12c  ca 78 fe ea                                      b #0x76b45c

; FUNCTION 0x007cd130, declared_size=256, range_size=256, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment10parse_pathERKNS_9tu_stringEPS1_S4_
; demangled: gameswf::as_environment::parse_path(gameswf::tu_string const&, gameswf::tu_string*, gameswf::tu_string*)
; decoder-mode: arm
007cd130  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007cd134  d0 60 d0 e1                                      ldrsb r6, [r0]
007cd138  00 40 a0 e1                                      mov r4, r0
007cd13c  01 50 a0 e1                                      mov r5, r1
007cd140  01 00 76 e3                                      cmn r6, #1
007cd144  01 00 80 12                                      addne r0, r0, #1
007cd148  0c 00 94 05                                      ldreq r0, [r4, #0xc]
007cd14c  3a 10 a0 e3                                      mov r1, #0x3a
007cd150  02 80 a0 e1                                      mov r8, r2
007cd154  b2 04 ed eb                                      bl #0x30e424
007cd158  00 70 50 e2                                      subs r7, r0, #0
007cd15c  1b 00 00 0a                                      beq #0x7cd1d0
007cd160  08 00 a0 e1                                      mov r0, r8
007cd164  01 10 87 e2                                      add r1, r7, #1
007cd168  aa 7d fe eb                                      bl #0x76c818
007cd16c  d0 30 d4 e1                                      ldrsb r3, [r4]
007cd170  01 00 73 e3                                      cmn r3, #1
007cd174  0c 30 94 05                                      ldreq r3, [r4, #0xc]
007cd178  01 30 84 12                                      addne r3, r4, #1
007cd17c  01 30 83 e2                                      add r3, r3, #1
007cd180  03 00 57 e1                                      cmp r7, r3
007cd184  0c 00 00 8a                                      bhi #0x7cd1bc
007cd188  07 60 a0 e1                                      mov r6, r7
007cd18c  04 10 a0 e1                                      mov r1, r4
007cd190  05 00 a0 e1                                      mov r0, r5
007cd194  6d 17 fe eb                                      bl #0x752f50
007cd198  d0 30 d4 e1                                      ldrsb r3, [r4]
007cd19c  05 00 a0 e1                                      mov r0, r5
007cd1a0  01 00 73 e3                                      cmn r3, #1
007cd1a4  0c 10 94 05                                      ldreq r1, [r4, #0xc]
007cd1a8  01 10 84 12                                      addne r1, r4, #1
007cd1ac  06 10 61 e0                                      rsb r1, r1, r6
007cd1b0  d7 12 fe eb                                      bl #0x751d14
007cd1b4  01 00 a0 e3                                      mov r0, #1
007cd1b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007cd1bc  d1 30 57 e1                                      ldrsb r3, [r7, #-1]
007cd1c0  01 60 47 e2                                      sub r6, r7, #1
007cd1c4  2f 00 53 e3                                      cmp r3, #0x2f
007cd1c8  ee ff ff 1a                                      bne #0x7cd188
007cd1cc  ee ff ff ea                                      b #0x7cd18c
007cd1d0  01 00 76 e3                                      cmn r6, #1
007cd1d4  01 00 84 12                                      addne r0, r4, #1
007cd1d8  0c 00 94 05                                      ldreq r0, [r4, #0xc]
007cd1dc  2e 10 a0 e3                                      mov r1, #0x2e
007cd1e0  8f 04 ed eb                                      bl #0x30e424
007cd1e4  00 60 50 e2                                      subs r6, r0, #0
007cd1e8  0e 00 00 0a                                      beq #0x7cd228
007cd1ec  08 00 a0 e1                                      mov r0, r8
007cd1f0  01 10 86 e2                                      add r1, r6, #1
007cd1f4  87 7d fe eb                                      bl #0x76c818
007cd1f8  04 10 a0 e1                                      mov r1, r4
007cd1fc  05 00 a0 e1                                      mov r0, r5
007cd200  52 17 fe eb                                      bl #0x752f50
007cd204  d0 30 d4 e1                                      ldrsb r3, [r4]
007cd208  05 00 a0 e1                                      mov r0, r5
007cd20c  01 00 73 e3                                      cmn r3, #1
007cd210  0c 10 94 05                                      ldreq r1, [r4, #0xc]
007cd214  01 10 84 12                                      addne r1, r4, #1
007cd218  06 10 61 e0                                      rsb r1, r1, r6
007cd21c  bc 12 fe eb                                      bl #0x751d14
007cd220  01 00 a0 e3                                      mov r0, #1
007cd224  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007cd228  06 00 a0 e1                                      mov r0, r6
007cd22c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007cd2c0, declared_size=160, range_size=160, mode=arm
; class-group: gameswf::as_environment
; alias: _ZNK7gameswf14as_environment10find_localERKNS_9tu_stringEb
; demangled: gameswf::as_environment::find_local(gameswf::tu_string const&, bool) const
; decoder-mode: arm
007cd2c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007cd2c4  58 60 90 e5                                      ldr r6, [r0, #0x58]
007cd2c8  01 40 a0 e1                                      mov r4, r1
007cd2cc  02 a0 a0 e1                                      mov sl, r2
007cd2d0  01 60 56 e2                                      subs r6, r6, #1
007cd2d4  1e 00 00 4a                                      bmi #0x7cd354
007cd2d8  54 70 90 e5                                      ldr r7, [r0, #0x54]
007cd2dc  01 80 81 e2                                      add r8, r1, #1
007cd2e0  86 52 a0 e1                                      lsl r5, r6, #5
007cd2e4  d5 30 97 e1                                      ldrsb r3, [r7, r5]
007cd2e8  05 00 87 e0                                      add r0, r7, r5
007cd2ec  01 00 73 e3                                      cmn r3, #1
007cd2f0  04 20 90 05                                      ldreq r2, [r0, #4]
007cd2f4  03 20 a0 11                                      movne r2, r3
007cd2f8  01 20 42 e2                                      sub r2, r2, #1
007cd2fc  00 00 52 e3                                      cmp r2, #0
007cd300  01 00 00 1a                                      bne #0x7cd30c
007cd304  00 00 5a e3                                      cmp sl, #0
007cd308  11 00 00 0a                                      beq #0x7cd354
007cd30c  04 00 50 e1                                      cmp r0, r4
007cd310  10 00 00 0a                                      beq #0x7cd358
007cd314  01 00 73 e3                                      cmn r3, #1
007cd318  d0 30 d4 e1                                      ldrsb r3, [r4]
007cd31c  01 00 80 12                                      addne r0, r0, #1
007cd320  0c 00 90 05                                      ldreq r0, [r0, #0xc]
007cd324  01 00 73 e3                                      cmn r3, #1
007cd328  08 10 a0 11                                      movne r1, r8
007cd32c  0c 10 94 05                                      ldreq r1, [r4, #0xc]
007cd330  f9 03 ed eb                                      bl #0x30e31c
007cd334  00 00 50 e3                                      cmp r0, #0
007cd338  06 00 00 0a                                      beq #0x7cd358
007cd33c  01 60 46 e2                                      sub r6, r6, #1
007cd340  01 00 76 e3                                      cmn r6, #1
007cd344  20 50 45 e2                                      sub r5, r5, #0x20
007cd348  e5 ff ff 1a                                      bne #0x7cd2e4
007cd34c  06 00 a0 e1                                      mov r0, r6
007cd350  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
007cd354  00 60 e0 e3                                      mvn r6, #0
007cd358  06 00 a0 e1                                      mov r0, r6
007cd35c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x007cd3c4, declared_size=168, range_size=168, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment9add_localERKNS_9tu_stringERKNS_8as_valueE
; demangled: gameswf::as_environment::add_local(gameswf::tu_string const&, gameswf::as_value const&)
; decoder-mode: arm
007cd3c4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007cd3c8  94 40 9f e5                                      ldr r4, [pc, #0x94]
007cd3cc  94 60 9f e5                                      ldr r6, [pc, #0x94]
007cd3d0  2c d0 4d e2                                      sub sp, sp, #0x2c
007cd3d4  04 40 8f e0                                      add r4, pc, r4
007cd3d8  06 30 94 e7                                      ldr r3, [r4, r6]
007cd3dc  04 50 8d e2                                      add r5, sp, #4
007cd3e0  02 a0 a0 e1                                      mov sl, r2
007cd3e4  00 30 93 e5                                      ldr r3, [r3]
007cd3e8  54 80 80 e2                                      add r8, r0, #0x54
007cd3ec  14 70 85 e2                                      add r7, r5, #0x14
007cd3f0  05 00 a0 e1                                      mov r0, r5
007cd3f4  24 30 8d e5                                      str r3, [sp, #0x24]
007cd3f8  0b 17 fe eb                                      bl #0x75302c
007cd3fc  00 30 a0 e3                                      mov r3, #0
007cd400  0a 10 a0 e1                                      mov r1, sl
007cd404  07 00 a0 e1                                      mov r0, r7
007cd408  19 30 cd e5                                      strb r3, [sp, #0x19]
007cd40c  18 30 cd e5                                      strb r3, [sp, #0x18]
007cd410  c9 28 ff eb                                      bl #0x79773c
007cd414  08 00 a0 e1                                      mov r0, r8
007cd418  05 10 a0 e1                                      mov r1, r5
007cd41c  cf ff ff eb                                      bl #0x7cd360
007cd420  07 00 a0 e1                                      mov r0, r7
007cd424  3e 27 ff eb                                      bl #0x797124
007cd428  d4 30 dd e1                                      ldrsb r3, [sp, #4]
007cd42c  01 00 73 e3                                      cmn r3, #1
007cd430  06 00 00 0a                                      beq #0x7cd450
007cd434  06 30 94 e7                                      ldr r3, [r4, r6]
007cd438  24 20 9d e5                                      ldr r2, [sp, #0x24]
007cd43c  00 30 93 e5                                      ldr r3, [r3]
007cd440  03 00 52 e1                                      cmp r2, r3
007cd444  05 00 00 1a                                      bne #0x7cd460
007cd448  2c d0 8d e2                                      add sp, sp, #0x2c
007cd44c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
007cd450  10 00 9d e5                                      ldr r0, [sp, #0x10]
007cd454  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007cd458  b6 15 fe eb                                      bl #0x752b38
007cd45c  f4 ff ff ea                                      b #0x7cd434
007cd460  aa 03 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007cd464  bc 76 1c 00 ac 40 00 00                          .byte 0xbc, 0x76, 0x1c, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007cd46c, declared_size=80, range_size=80, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment13declare_localERKNS_9tu_stringE
; demangled: gameswf::as_environment::declare_local(gameswf::tu_string const&)
; decoder-mode: arm
007cd46c  70 40 2d e9                                      push {r4, r5, r6, lr}
007cd470  00 20 a0 e3                                      mov r2, #0
007cd474  10 d0 4d e2                                      sub sp, sp, #0x10
007cd478  00 50 a0 e1                                      mov r5, r0
007cd47c  01 40 a0 e1                                      mov r4, r1
007cd480  8e ff ff eb                                      bl #0x7cd2c0
007cd484  00 00 50 e3                                      cmp r0, #0
007cd488  09 00 00 aa                                      bge #0x7cd4b4
007cd48c  04 60 8d e2                                      add r6, sp, #4
007cd490  00 30 a0 e3                                      mov r3, #0
007cd494  05 00 a0 e1                                      mov r0, r5
007cd498  04 10 a0 e1                                      mov r1, r4
007cd49c  06 20 a0 e1                                      mov r2, r6
007cd4a0  05 30 cd e5                                      strb r3, [sp, #5]
007cd4a4  04 30 cd e5                                      strb r3, [sp, #4]
007cd4a8  c5 ff ff eb                                      bl #0x7cd3c4
007cd4ac  06 00 a0 e1                                      mov r0, r6
007cd4b0  1b 27 ff eb                                      bl #0x797124
007cd4b4  10 d0 8d e2                                      add sp, sp, #0x10
007cd4b8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007cd4bc, declared_size=76, range_size=76, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment9set_localERKNS_9tu_stringERKNS_8as_valueE
; demangled: gameswf::as_environment::set_local(gameswf::tu_string const&, gameswf::as_value const&)
; decoder-mode: arm
007cd4bc  70 40 2d e9                                      push {r4, r5, r6, lr}
007cd4c0  02 40 a0 e1                                      mov r4, r2
007cd4c4  00 20 a0 e3                                      mov r2, #0
007cd4c8  00 50 a0 e1                                      mov r5, r0
007cd4cc  01 60 a0 e1                                      mov r6, r1
007cd4d0  7a ff ff eb                                      bl #0x7cd2c0
007cd4d4  00 00 50 e3                                      cmp r0, #0
007cd4d8  05 00 00 ba                                      blt #0x7cd4f4
007cd4dc  54 30 95 e5                                      ldr r3, [r5, #0x54]
007cd4e0  04 10 a0 e1                                      mov r1, r4
007cd4e4  80 02 83 e0                                      add r0, r3, r0, lsl #5
007cd4e8  14 00 80 e2                                      add r0, r0, #0x14
007cd4ec  70 40 bd e8                                      pop {r4, r5, r6, lr}
007cd4f0  91 28 ff ea                                      b #0x79773c
007cd4f4  05 00 a0 e1                                      mov r0, r5
007cd4f8  06 10 a0 e1                                      mov r1, r6
007cd4fc  04 20 a0 e1                                      mov r2, r4
007cd500  70 40 bd e8                                      pop {r4, r5, r6, lr}
007cd504  ae ff ff ea                                      b #0x7cd3c4

; FUNCTION 0x007cd508, declared_size=280, range_size=280, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment16set_variable_rawERKNS_9tu_stringERKNS_8as_valueERKNS_5arrayINS_16with_stack_entryEEE
; demangled: gameswf::as_environment::set_variable_raw(gameswf::tu_string const&, gameswf::as_value const&, gameswf::array<gameswf::with_stack_entry> const&)
; decoder-mode: arm
007cd508  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007cd50c  04 b0 93 e5                                      ldr fp, [r3, #4]
007cd510  1c d0 4d e2                                      sub sp, sp, #0x1c
007cd514  03 80 a0 e1                                      mov r8, r3
007cd518  01 60 5b e2                                      subs r6, fp, #1
007cd51c  04 00 8d e5                                      str r0, [sp, #4]
007cd520  01 90 a0 e1                                      mov sb, r1
007cd524  00 20 8d e5                                      str r2, [sp]
007cd528  20 00 00 4a                                      bmi #0x7cd5b0
007cd52c  00 50 a0 e3                                      mov r5, #0
007cd530  86 61 a0 e1                                      lsl r6, r6, #3
007cd534  0c a0 8d e2                                      add sl, sp, #0xc
007cd538  05 70 a0 e1                                      mov r7, r5
007cd53c  00 30 98 e5                                      ldr r3, [r8]
007cd540  09 10 a0 e1                                      mov r1, sb
007cd544  0a 20 a0 e1                                      mov r2, sl
007cd548  06 40 93 e7                                      ldr r4, [r3, r6]
007cd54c  01 50 85 e2                                      add r5, r5, #1
007cd550  0c 70 cd e5                                      strb r7, [sp, #0xc]
007cd554  00 00 54 e2                                      subs r0, r4, #0
007cd558  0d 70 cd e5                                      strb r7, [sp, #0xd]
007cd55c  0e 00 00 0a                                      beq #0x7cd59c
007cd560  00 30 94 e5                                      ldr r3, [r4]
007cd564  0f e0 a0 e1                                      mov lr, pc
007cd568  20 f0 93 e5                                      ldr pc, [r3, #0x20]
007cd56c  00 00 50 e3                                      cmp r0, #0
007cd570  09 00 00 0a                                      beq #0x7cd59c
007cd574  04 00 a0 e1                                      mov r0, r4
007cd578  09 10 a0 e1                                      mov r1, sb
007cd57c  00 20 9d e5                                      ldr r2, [sp]
007cd580  00 30 94 e5                                      ldr r3, [r4]
007cd584  0f e0 a0 e1                                      mov lr, pc
007cd588  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007cd58c  0a 00 a0 e1                                      mov r0, sl
007cd590  e3 26 ff eb                                      bl #0x797124
007cd594  1c d0 8d e2                                      add sp, sp, #0x1c
007cd598  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007cd59c  0a 00 a0 e1                                      mov r0, sl
007cd5a0  df 26 ff eb                                      bl #0x797124
007cd5a4  0b 00 55 e1                                      cmp r5, fp
007cd5a8  08 60 46 e2                                      sub r6, r6, #8
007cd5ac  e2 ff ff 1a                                      bne #0x7cd53c
007cd5b0  04 00 9d e5                                      ldr r0, [sp, #4]
007cd5b4  09 10 a0 e1                                      mov r1, sb
007cd5b8  01 20 a0 e3                                      mov r2, #1
007cd5bc  3f ff ff eb                                      bl #0x7cd2c0
007cd5c0  00 00 50 e3                                      cmp r0, #0
007cd5c4  0a 00 00 aa                                      bge #0x7cd5f4
007cd5c8  04 20 9d e5                                      ldr r2, [sp, #4]
007cd5cc  50 30 92 e5                                      ldr r3, [r2, #0x50]
007cd5d0  00 00 53 e3                                      cmp r3, #0
007cd5d4  0c 00 00 0a                                      beq #0x7cd60c
007cd5d8  03 00 a0 e1                                      mov r0, r3
007cd5dc  09 10 a0 e1                                      mov r1, sb
007cd5e0  00 20 9d e5                                      ldr r2, [sp]
007cd5e4  00 30 93 e5                                      ldr r3, [r3]
007cd5e8  0f e0 a0 e1                                      mov lr, pc
007cd5ec  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
007cd5f0  e7 ff ff ea                                      b #0x7cd594
007cd5f4  06 00 9d e8                                      ldm sp, {r1, r2}
007cd5f8  54 30 92 e5                                      ldr r3, [r2, #0x54]
007cd5fc  80 02 83 e0                                      add r0, r3, r0, lsl #5
007cd600  14 00 80 e2                                      add r0, r0, #0x14
007cd604  4c 28 ff eb                                      bl #0x79773c
007cd608  e1 ff ff ea                                      b #0x7cd594
007cd60c  04 00 9d e5                                      ldr r0, [sp, #4]
007cd610  09 10 a0 e1                                      mov r1, sb
007cd614  00 20 9d e5                                      ldr r2, [sp]
007cd618  69 ff ff eb                                      bl #0x7cd3c4
007cd61c  dc ff ff ea                                      b #0x7cd594

; FUNCTION 0x007cd7a8, declared_size=396, range_size=396, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment12set_variableERKNS_9tu_stringERKNS_8as_valueERKNS_5arrayINS_16with_stack_entryEEE
; demangled: gameswf::as_environment::set_variable(gameswf::tu_string const&, gameswf::as_value const&, gameswf::array<gameswf::with_stack_entry> const&)
; decoder-mode: arm
007cd7a8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007cd7ac  78 41 9f e5                                      ldr r4, [pc, #0x178]
007cd7b0  78 51 9f e5                                      ldr r5, [pc, #0x178]
007cd7b4  01 b0 a0 e1                                      mov fp, r1
007cd7b8  04 40 8f e0                                      add r4, pc, r4
007cd7bc  05 10 94 e7                                      ldr r1, [r4, r5]
007cd7c0  54 d0 4d e2                                      sub sp, sp, #0x54
007cd7c4  0c 30 8d e5                                      str r3, [sp, #0xc]
007cd7c8  00 30 91 e5                                      ldr r3, [r1]
007cd7cc  05 00 8d e9                                      stmib sp, {r0, r2}
007cd7d0  4c 30 8d e5                                      str r3, [sp, #0x4c]
007cd7d4  ba fd ff eb                                      bl #0x7ccec4
007cd7d8  48 e0 9d e5                                      ldr lr, [sp, #0x48]
007cd7dc  34 c0 9d e5                                      ldr ip, [sp, #0x34]
007cd7e0  00 30 e0 e3                                      mvn r3, #0
007cd7e4  13 e0 d7 e7                                      bfi lr, r3, #0, #0x18
007cd7e8  13 c0 d7 e7                                      bfi ip, r3, #0, #0x18
007cd7ec  2e 8c a0 e1                                      lsr r8, lr, #0x18
007cd7f0  00 30 a0 e3                                      mov r3, #0
007cd7f4  2c 7c a0 e1                                      lsr r7, ip, #0x18
007cd7f8  38 90 8d e2                                      add sb, sp, #0x38
007cd7fc  24 a0 8d e2                                      add sl, sp, #0x24
007cd800  13 70 c0 e7                                      bfi r7, r3, #0, #1
007cd804  13 80 c0 e7                                      bfi r8, r3, #0, #1
007cd808  01 60 a0 e3                                      mov r6, #1
007cd80c  0b 00 a0 e1                                      mov r0, fp
007cd810  09 10 a0 e1                                      mov r1, sb
007cd814  0a 20 a0 e1                                      mov r2, sl
007cd818  48 e0 8d e5                                      str lr, [sp, #0x48]
007cd81c  34 c0 8d e5                                      str ip, [sp, #0x34]
007cd820  24 60 cd e5                                      strb r6, [sp, #0x24]
007cd824  4b 80 cd e5                                      strb r8, [sp, #0x4b]
007cd828  37 70 cd e5                                      strb r7, [sp, #0x37]
007cd82c  38 60 cd e5                                      strb r6, [sp, #0x38]
007cd830  39 30 cd e5                                      strb r3, [sp, #0x39]
007cd834  25 30 cd e5                                      strb r3, [sp, #0x25]
007cd838  3c fe ff eb                                      bl #0x7cd130
007cd83c  00 00 50 e3                                      cmp r0, #0
007cd840  22 00 00 0a                                      beq #0x7cd8d0
007cd844  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
007cd848  04 00 9d e5                                      ldr r0, [sp, #4]
007cd84c  01 00 73 e3                                      cmn r3, #1
007cd850  06 10 89 10                                      addne r1, sb, r6
007cd854  44 10 9d 05                                      ldreq r1, [sp, #0x44]
007cd858  2c fe ff eb                                      bl #0x7cd110
007cd85c  8c b3 ff eb                                      bl #0x7ba694
007cd860  00 70 50 e2                                      subs r7, r0, #0
007cd864  0c 00 00 0a                                      beq #0x7cd89c
007cd868  00 30 97 e5                                      ldr r3, [r7]
007cd86c  10 80 8d e2                                      add r8, sp, #0x10
007cd870  0a 10 a0 e1                                      mov r1, sl
007cd874  08 00 a0 e1                                      mov r0, r8
007cd878  1c 60 93 e5                                      ldr r6, [r3, #0x1c]
007cd87c  ea 15 fe eb                                      bl #0x75302c
007cd880  07 00 a0 e1                                      mov r0, r7
007cd884  08 10 a0 e1                                      mov r1, r8
007cd888  08 20 9d e5                                      ldr r2, [sp, #8]
007cd88c  36 ff 2f e1                                      blx r6
007cd890  d0 31 dd e1                                      ldrsb r3, [sp, #0x10]
007cd894  01 00 73 e3                                      cmn r3, #1
007cd898  1e 00 00 0a                                      beq #0x7cd918
007cd89c  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
007cd8a0  01 00 73 e3                                      cmn r3, #1
007cd8a4  11 00 00 0a                                      beq #0x7cd8f0
007cd8a8  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
007cd8ac  01 00 73 e3                                      cmn r3, #1
007cd8b0  14 00 00 0a                                      beq #0x7cd908
007cd8b4  05 30 94 e7                                      ldr r3, [r4, r5]
007cd8b8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
007cd8bc  00 30 93 e5                                      ldr r3, [r3]
007cd8c0  03 00 52 e1                                      cmp r2, r3
007cd8c4  17 00 00 1a                                      bne #0x7cd928
007cd8c8  54 d0 8d e2                                      add sp, sp, #0x54
007cd8cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007cd8d0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007cd8d4  04 00 9d e5                                      ldr r0, [sp, #4]
007cd8d8  0b 10 a0 e1                                      mov r1, fp
007cd8dc  08 20 9d e5                                      ldr r2, [sp, #8]
007cd8e0  08 ff ff eb                                      bl #0x7cd508
007cd8e4  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
007cd8e8  01 00 73 e3                                      cmn r3, #1
007cd8ec  ed ff ff 1a                                      bne #0x7cd8a8
007cd8f0  30 00 9d e5                                      ldr r0, [sp, #0x30]
007cd8f4  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007cd8f8  8e 14 fe eb                                      bl #0x752b38
007cd8fc  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
007cd900  01 00 73 e3                                      cmn r3, #1
007cd904  ea ff ff 1a                                      bne #0x7cd8b4
007cd908  44 00 9d e5                                      ldr r0, [sp, #0x44]
007cd90c  40 10 9d e5                                      ldr r1, [sp, #0x40]
007cd910  88 14 fe eb                                      bl #0x752b38
007cd914  e6 ff ff ea                                      b #0x7cd8b4
007cd918  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007cd91c  18 10 9d e5                                      ldr r1, [sp, #0x18]
007cd920  84 14 fe eb                                      bl #0x752b38
007cd924  dc ff ff ea                                      b #0x7cd89c
007cd928  78 02 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007cd92c  d8 72 1c 00 ac 40 00 00                          .byte 0xd8, 0x72, 0x1c, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007cd934, declared_size=288, range_size=288, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment10set_targetERNS_8as_valueEPNS_9characterE
; demangled: gameswf::as_environment::set_target(gameswf::as_value&, gameswf::character*)
; decoder-mode: arm
007cd934  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
007cd938  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
007cd93c  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
007cd940  01 30 d1 e5                                      ldrb r3, [r1, #1]
007cd944  04 40 8f e0                                      add r4, pc, r4
007cd948  05 60 94 e7                                      ldr r6, [r4, r5]
007cd94c  03 70 43 e2                                      sub r7, r3, #3
007cd950  77 70 ef e6                                      uxtb r7, r7
007cd954  00 60 96 e5                                      ldr r6, [r6]
007cd958  24 d0 4d e2                                      sub sp, sp, #0x24
007cd95c  01 00 57 e3                                      cmp r7, #1
007cd960  1c 60 8d e5                                      str r6, [sp, #0x1c]
007cd964  00 60 a0 e1                                      mov r6, r0
007cd968  0f 00 00 9a                                      bls #0x7cd9ac
007cd96c  05 00 53 e3                                      cmp r3, #5
007cd970  06 00 00 0a                                      beq #0x7cd990
007cd974  05 30 94 e7                                      ldr r3, [r4, r5]
007cd978  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007cd97c  00 30 93 e5                                      ldr r3, [r3]
007cd980  03 00 52 e1                                      cmp r2, r3
007cd984  2f 00 00 1a                                      bne #0x7cda48
007cd988  24 d0 8d e2                                      add sp, sp, #0x24
007cd98c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
007cd990  e2 fd ff eb                                      bl #0x7cd120
007cd994  3e b3 ff eb                                      bl #0x7ba694
007cd998  00 10 50 e2                                      subs r1, r0, #0
007cd99c  f4 ff ff 0a                                      beq #0x7cd974
007cd9a0  06 00 a0 e1                                      mov r0, r6
007cd9a4  48 fd ff eb                                      bl #0x7ccecc
007cd9a8  f1 ff ff ea                                      b #0x7cd974
007cd9ac  01 00 a0 e1                                      mov r0, r1
007cd9b0  04 20 8d e5                                      str r2, [sp, #4]
007cd9b4  32 4c f1 eb                                      bl #0x420a84
007cd9b8  08 70 8d e2                                      add r7, sp, #8
007cd9bc  00 10 a0 e1                                      mov r1, r0
007cd9c0  07 00 a0 e1                                      mov r0, r7
007cd9c4  98 15 fe eb                                      bl #0x75302c
007cd9c8  d8 30 dd e1                                      ldrsb r3, [sp, #8]
007cd9cc  04 20 9d e5                                      ldr r2, [sp, #4]
007cd9d0  01 00 73 e3                                      cmn r3, #1
007cd9d4  0c 10 9d 05                                      ldreq r1, [sp, #0xc]
007cd9d8  03 10 a0 11                                      movne r1, r3
007cd9dc  01 10 41 e2                                      sub r1, r1, #1
007cd9e0  00 00 51 e3                                      cmp r1, #0
007cd9e4  10 00 00 da                                      ble #0x7cda2c
007cd9e8  01 00 73 e3                                      cmn r3, #1
007cd9ec  01 10 87 12                                      addne r1, r7, #1
007cd9f0  14 10 9d 05                                      ldreq r1, [sp, #0x14]
007cd9f4  06 00 a0 e1                                      mov r0, r6
007cd9f8  c4 fd ff eb                                      bl #0x7cd110
007cd9fc  24 b3 ff eb                                      bl #0x7ba694
007cda00  00 10 50 e2                                      subs r1, r0, #0
007cda04  0c 00 00 0a                                      beq #0x7cda3c
007cda08  06 00 a0 e1                                      mov r0, r6
007cda0c  2e fd ff eb                                      bl #0x7ccecc
007cda10  d8 30 dd e1                                      ldrsb r3, [sp, #8]
007cda14  01 00 73 e3                                      cmn r3, #1
007cda18  d5 ff ff 1a                                      bne #0x7cd974
007cda1c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007cda20  10 10 9d e5                                      ldr r1, [sp, #0x10]
007cda24  43 14 fe eb                                      bl #0x752b38
007cda28  d1 ff ff ea                                      b #0x7cd974
007cda2c  06 00 a0 e1                                      mov r0, r6
007cda30  02 10 a0 e1                                      mov r1, r2
007cda34  24 fd ff eb                                      bl #0x7ccecc
007cda38  f4 ff ff ea                                      b #0x7cda10
007cda3c  07 00 a0 e1                                      mov r0, r7
007cda40  24 49 f1 eb                                      bl #0x41fed8
007cda44  ca ff ff ea                                      b #0x7cd974
007cda48  30 02 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007cda4c  4c 71 1c 00 ac 40 00 00                          .byte 0x4c, 0x71, 0x1c, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007cda54, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::as_environment
; alias: _ZNK7gameswf14as_environment8get_rootEv
; demangled: gameswf::as_environment::get_root() const
; decoder-mode: arm
007cda54  10 40 2d e9                                      push {r4, lr}
007cda58  00 40 a0 e1                                      mov r4, r0
007cda5c  68 00 90 e5                                      ldr r0, [r0, #0x68]
007cda60  00 00 50 e3                                      cmp r0, #0
007cda64  03 00 00 0a                                      beq #0x7cda78
007cda68  64 30 94 e5                                      ldr r3, [r4, #0x64]
007cda6c  04 20 d3 e5                                      ldrb r2, [r3, #4]
007cda70  00 00 52 e3                                      cmp r2, #0
007cda74  01 00 00 0a                                      beq #0x7cda80
007cda78  10 40 bd e8                                      pop {r4, lr}
007cda7c  cc 7e fe ea                                      b #0x76d5b4
007cda80  00 10 93 e5                                      ldr r1, [r3]
007cda84  01 10 41 e2                                      sub r1, r1, #1
007cda88  00 00 51 e3                                      cmp r1, #0
007cda8c  00 10 83 e5                                      str r1, [r3]
007cda90  01 00 00 1a                                      bne #0x7cda9c
007cda94  03 00 a0 e1                                      mov r0, r3
007cda98  26 14 fe eb                                      bl #0x752b38
007cda9c  00 00 a0 e3                                      mov r0, #0
007cdaa0  68 00 84 e5                                      str r0, [r4, #0x68]
007cdaa4  64 00 84 e5                                      str r0, [r4, #0x64]
007cdaa8  f2 ff ff ea                                      b #0x7cda78

; FUNCTION 0x007cdaac, declared_size=1152, range_size=1152, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment9load_fileEPKcRKNS_8as_valueE
; demangled: gameswf::as_environment::load_file(char const*, gameswf::as_value const&)
; decoder-mode: arm
007cdaac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007cdab0  54 44 9f e5                                      ldr r4, [pc, #0x454]
007cdab4  54 64 9f e5                                      ldr r6, [pc, #0x454]
007cdab8  54 d0 4d e2                                      sub sp, sp, #0x54
007cdabc  04 40 8f e0                                      add r4, pc, r4
007cdac0  06 30 94 e7                                      ldr r3, [r4, r6]
007cdac4  01 a0 a0 e1                                      mov sl, r1
007cdac8  02 10 a0 e1                                      mov r1, r2
007cdacc  00 30 93 e5                                      ldr r3, [r3]
007cdad0  00 80 a0 e1                                      mov r8, r0
007cdad4  4c 30 8d e5                                      str r3, [sp, #0x4c]
007cdad8  90 fd ff eb                                      bl #0x7cd120
007cdadc  ec b2 ff eb                                      bl #0x7ba694
007cdae0  00 50 50 e2                                      subs r5, r0, #0
007cdae4  05 70 a0 01                                      moveq r7, r5
007cdae8  0e 00 00 0a                                      beq #0x7cdb28
007cdaec  d0 70 da e1                                      ldrsb r7, [sl]
007cdaf0  00 00 57 e3                                      cmp r7, #0
007cdaf4  13 00 00 1a                                      bne #0x7cdb48
007cdaf8  40 30 95 e5                                      ldr r3, [r5, #0x40]
007cdafc  00 00 53 e3                                      cmp r3, #0
007cdb00  a1 00 00 0a                                      beq #0x7cdd8c
007cdb04  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
007cdb08  04 20 d0 e5                                      ldrb r2, [r0, #4]
007cdb0c  00 00 52 e3                                      cmp r2, #0
007cdb10  94 00 00 0a                                      beq #0x7cdd68
007cdb14  03 00 a0 e1                                      mov r0, r3
007cdb18  05 10 a0 e1                                      mov r1, r5
007cdb1c  00 30 93 e5                                      ldr r3, [r3]
007cdb20  0f e0 a0 e1                                      mov lr, pc
007cdb24  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
007cdb28  06 30 94 e7                                      ldr r3, [r4, r6]
007cdb2c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
007cdb30  07 00 a0 e1                                      mov r0, r7
007cdb34  00 30 93 e5                                      ldr r3, [r3]
007cdb38  03 00 52 e1                                      cmp r2, r3
007cdb3c  f1 00 00 1a                                      bne #0x7cdf08
007cdb40  54 d0 8d e2                                      add sp, sp, #0x54
007cdb44  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007cdb48  68 00 98 e5                                      ldr r0, [r8, #0x68]
007cdb4c  00 00 50 e3                                      cmp r0, #0
007cdb50  03 00 00 0a                                      beq #0x7cdb64
007cdb54  64 30 98 e5                                      ldr r3, [r8, #0x64]
007cdb58  04 70 d3 e5                                      ldrb r7, [r3, #4]
007cdb5c  00 00 57 e3                                      cmp r7, #0
007cdb60  8f 00 00 0a                                      beq #0x7cdda4
007cdb64  20 7b fe eb                                      bl #0x76c7ec
007cdb68  24 90 8d e2                                      add sb, sp, #0x24
007cdb6c  00 10 a0 e1                                      mov r1, r0
007cdb70  38 70 8d e2                                      add r7, sp, #0x38
007cdb74  09 00 a0 e1                                      mov r0, sb
007cdb78  bf 17 f1 eb                                      bl #0x413a7c
007cdb7c  09 10 a0 e1                                      mov r1, sb
007cdb80  0a 20 a0 e1                                      mov r2, sl
007cdb84  07 00 a0 e1                                      mov r0, r7
007cdb88  a8 fd ff eb                                      bl #0x7cd230
007cdb8c  d4 32 dd e1                                      ldrsb r3, [sp, #0x24]
007cdb90  01 00 73 e3                                      cmn r3, #1
007cdb94  a7 00 00 0a                                      beq #0x7cde38
007cdb98  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
007cdb9c  01 00 73 e3                                      cmn r3, #1
007cdba0  01 00 87 12                                      addne r0, r7, #1
007cdba4  44 00 9d 05                                      ldreq r0, [sp, #0x44]
007cdba8  9c fe ff eb                                      bl #0x7cd620
007cdbac  02 00 50 e3                                      cmp r0, #2
007cdbb0  81 00 00 0a                                      beq #0x7cddbc
007cdbb4  03 00 50 e3                                      cmp r0, #3
007cdbb8  99 00 00 0a                                      beq #0x7cde24
007cdbbc  01 00 50 e3                                      cmp r0, #1
007cdbc0  88 00 00 0a                                      beq #0x7cdde8
007cdbc4  40 a0 95 e5                                      ldr sl, [r5, #0x40]
007cdbc8  00 00 5a e3                                      cmp sl, #0
007cdbcc  a3 00 00 0a                                      beq #0x7cde60
007cdbd0  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
007cdbd4  04 90 d3 e5                                      ldrb sb, [r3, #4]
007cdbd8  00 00 59 e3                                      cmp sb, #0
007cdbdc  9b 00 00 0a                                      beq #0x7cde50
007cdbe0  2c 33 9f e5                                      ldr r3, [pc, #0x32c]
007cdbe4  03 30 94 e7                                      ldr r3, [r4, r3]
007cdbe8  00 30 93 e5                                      ldr r3, [r3]
007cdbec  00 00 53 e3                                      cmp r3, #0
007cdbf0  a5 00 00 0a                                      beq #0x7cde8c
007cdbf4  d8 23 dd e1                                      ldrsb r2, [sp, #0x38]
007cdbf8  00 10 a0 e3                                      mov r1, #0
007cdbfc  01 00 72 e3                                      cmn r2, #1
007cdc00  01 00 87 12                                      addne r0, r7, #1
007cdc04  44 00 9d 05                                      ldreq r0, [sp, #0x44]
007cdc08  01 20 a0 e1                                      mov r2, r1
007cdc0c  33 ff 2f e1                                      blx r3
007cdc10  00 10 50 e2                                      subs r1, r0, #0
007cdc14  9c 00 00 0a                                      beq #0x7cde8c
007cdc18  f8 32 9f e5                                      ldr r3, [pc, #0x2f8]
007cdc1c  03 30 94 e7                                      ldr r3, [r4, r3]
007cdc20  00 30 93 e5                                      ldr r3, [r3]
007cdc24  03 00 a0 e1                                      mov r0, r3
007cdc28  00 30 93 e5                                      ldr r3, [r3]
007cdc2c  0f e0 a0 e1                                      mov lr, pc
007cdc30  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007cdc34  00 90 a0 e1                                      mov sb, r0
007cdc38  08 00 a0 e1                                      mov r0, r8
007cdc3c  66 b9 ff eb                                      bl #0x7bc1dc
007cdc40  00 10 a0 e3                                      mov r1, #0
007cdc44  00 b0 a0 e1                                      mov fp, r0
007cdc48  34 00 a0 e3                                      mov r0, #0x34
007cdc4c  d5 13 fe eb                                      bl #0x752ba8
007cdc50  0b 10 a0 e1                                      mov r1, fp
007cdc54  00 70 a0 e1                                      mov r7, r0
007cdc58  79 43 fe eb                                      bl #0x75ea44
007cdc5c  b8 32 9f e5                                      ldr r3, [pc, #0x2b8]
007cdc60  00 00 59 e3                                      cmp sb, #0
007cdc64  20 90 87 e5                                      str sb, [r7, #0x20]
007cdc68  03 30 94 e7                                      ldr r3, [r4, r3]
007cdc6c  08 30 83 e2                                      add r3, r3, #8
007cdc70  00 30 87 e5                                      str r3, [r7]
007cdc74  01 00 00 0a                                      beq #0x7cdc80
007cdc78  09 00 a0 e1                                      mov r0, sb
007cdc7c  f8 2f fe eb                                      bl #0x759c64
007cdc80  20 30 97 e5                                      ldr r3, [r7, #0x20]
007cdc84  00 20 a0 e3                                      mov r2, #0
007cdc88  24 20 87 e5                                      str r2, [r7, #0x24]
007cdc8c  2c 20 87 e5                                      str r2, [r7, #0x2c]
007cdc90  03 00 a0 e1                                      mov r0, r3
007cdc94  00 30 93 e5                                      ldr r3, [r3]
007cdc98  0f e0 a0 e1                                      mov lr, pc
007cdc9c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007cdca0  2f 03 ed eb                                      bl #0x30e964
007cdca4  41 14 a0 e3                                      mov r1, #0x41000000
007cdca8  0a 16 81 e2                                      add r1, r1, #0xa00000
007cdcac  2e 04 ed eb                                      bl #0x30ed6c
007cdcb0  20 30 97 e5                                      ldr r3, [r7, #0x20]
007cdcb4  28 00 87 e5                                      str r0, [r7, #0x28]
007cdcb8  03 00 a0 e1                                      mov r0, r3
007cdcbc  00 30 93 e5                                      ldr r3, [r3]
007cdcc0  0f e0 a0 e1                                      mov lr, pc
007cdcc4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
007cdcc8  25 03 ed eb                                      bl #0x30e964
007cdccc  41 14 a0 e3                                      mov r1, #0x41000000
007cdcd0  0a 16 81 e2                                      add r1, r1, #0xa00000
007cdcd4  24 04 ed eb                                      bl #0x30ed6c
007cdcd8  30 00 87 e5                                      str r0, [r7, #0x30]
007cdcdc  68 00 98 e5                                      ldr r0, [r8, #0x68]
007cdce0  00 00 50 e3                                      cmp r0, #0
007cdce4  03 00 00 0a                                      beq #0x7cdcf8
007cdce8  64 30 98 e5                                      ldr r3, [r8, #0x64]
007cdcec  04 90 d3 e5                                      ldrb sb, [r3, #4]
007cdcf0  00 00 59 e3                                      cmp sb, #0
007cdcf4  5e 00 00 0a                                      beq #0x7cde74
007cdcf8  0a 20 a0 e1                                      mov r2, sl
007cdcfc  07 10 a0 e1                                      mov r1, r7
007cdd00  00 30 a0 e3                                      mov r3, #0
007cdd04  bd 7b fe eb                                      bl #0x76cc00
007cdd08  0a 10 a0 e1                                      mov r1, sl
007cdd0c  00 70 a0 e1                                      mov r7, r0
007cdd10  3c 00 80 e2                                      add r0, r0, #0x3c
007cdd14  a3 67 f1 eb                                      bl #0x427ba8
007cdd18  44 20 95 e5                                      ldr r2, [r5, #0x44]
007cdd1c  00 10 9a e5                                      ldr r1, [sl]
007cdd20  0a 00 a0 e1                                      mov r0, sl
007cdd24  d0 30 d2 e1                                      ldrsb r3, [r2]
007cdd28  c0 c0 91 e5                                      ldr ip, [r1, #0xc0]
007cdd2c  00 10 a0 e3                                      mov r1, #0
007cdd30  01 00 73 e3                                      cmn r3, #1
007cdd34  0c 20 92 05                                      ldreq r2, [r2, #0xc]
007cdd38  b4 39 d5 e1                                      ldrh r3, [r5, #0x94]
007cdd3c  08 10 8d e5                                      str r1, [sp, #8]
007cdd40  00 10 8d e5                                      str r1, [sp]
007cdd44  04 10 8d e5                                      str r1, [sp, #4]
007cdd48  90 10 95 e5                                      ldr r1, [r5, #0x90]
007cdd4c  01 20 82 12                                      addne r2, r2, #1
007cdd50  0c 10 8d e5                                      str r1, [sp, #0xc]
007cdd54  b6 e9 d5 e1                                      ldrh lr, [r5, #0x96]
007cdd58  07 10 a0 e1                                      mov r1, r7
007cdd5c  10 e0 8d e5                                      str lr, [sp, #0x10]
007cdd60  3c ff 2f e1                                      blx ip
007cdd64  18 00 00 ea                                      b #0x7cddcc
007cdd68  00 10 90 e5                                      ldr r1, [r0]
007cdd6c  01 10 41 e2                                      sub r1, r1, #1
007cdd70  00 00 51 e3                                      cmp r1, #0
007cdd74  00 10 80 e5                                      str r1, [r0]
007cdd78  00 00 00 1a                                      bne #0x7cdd80
007cdd7c  6d 13 fe eb                                      bl #0x752b38
007cdd80  00 30 a0 e3                                      mov r3, #0
007cdd84  40 30 85 e5                                      str r3, [r5, #0x40]
007cdd88  3c 30 85 e5                                      str r3, [r5, #0x3c]
007cdd8c  05 00 a0 e1                                      mov r0, r5
007cdd90  00 30 95 e5                                      ldr r3, [r5]
007cdd94  0f e0 a0 e1                                      mov lr, pc
007cdd98  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
007cdd9c  00 70 a0 e3                                      mov r7, #0
007cdda0  60 ff ff ea                                      b #0x7cdb28
007cdda4  64 00 88 e2                                      add r0, r8, #0x64
007cdda8  07 10 a0 e1                                      mov r1, r7
007cddac  34 48 f1 eb                                      bl #0x41fe84
007cddb0  68 70 88 e5                                      str r7, [r8, #0x68]
007cddb4  07 00 a0 e1                                      mov r0, r7
007cddb8  69 ff ff ea                                      b #0x7cdb64
007cddbc  5c 01 9f e5                                      ldr r0, [pc, #0x15c]
007cddc0  00 70 a0 e3                                      mov r7, #0
007cddc4  00 00 8f e0                                      add r0, pc, r0
007cddc8  ed 4c fe eb                                      bl #0x761184
007cddcc  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
007cddd0  01 00 73 e3                                      cmn r3, #1
007cddd4  53 ff ff 1a                                      bne #0x7cdb28
007cddd8  44 00 9d e5                                      ldr r0, [sp, #0x44]
007cdddc  40 10 9d e5                                      ldr r1, [sp, #0x40]
007cdde0  54 13 fe eb                                      bl #0x752b38
007cdde4  4f ff ff ea                                      b #0x7cdb28
007cdde8  08 00 a0 e1                                      mov r0, r8
007cddec  fa b8 ff eb                                      bl #0x7bc1dc
007cddf0  d8 33 dd e1                                      ldrsb r3, [sp, #0x38]
007cddf4  01 00 73 e3                                      cmn r3, #1
007cddf8  01 10 87 12                                      addne r1, r7, #1
007cddfc  44 10 9d 05                                      ldreq r1, [sp, #0x44]
007cde00  72 95 fe eb                                      bl #0x7733d0
007cde04  00 10 50 e2                                      subs r1, r0, #0
007cde08  0e 00 00 0a                                      beq #0x7cde48
007cde0c  05 00 a0 e1                                      mov r0, r5
007cde10  00 30 95 e5                                      ldr r3, [r5]
007cde14  0f e0 a0 e1                                      mov lr, pc
007cde18  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
007cde1c  00 70 a0 e1                                      mov r7, r0
007cde20  e9 ff ff ea                                      b #0x7cddcc
007cde24  f8 00 9f e5                                      ldr r0, [pc, #0xf8]
007cde28  00 70 a0 e3                                      mov r7, #0
007cde2c  00 00 8f e0                                      add r0, pc, r0
007cde30  d3 4c fe eb                                      bl #0x761184
007cde34  e4 ff ff ea                                      b #0x7cddcc
007cde38  30 00 9d e5                                      ldr r0, [sp, #0x30]
007cde3c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007cde40  3c 13 fe eb                                      bl #0x752b38
007cde44  53 ff ff ea                                      b #0x7cdb98
007cde48  00 70 a0 e3                                      mov r7, #0
007cde4c  de ff ff ea                                      b #0x7cddcc
007cde50  3c 00 85 e2                                      add r0, r5, #0x3c
007cde54  09 10 a0 e1                                      mov r1, sb
007cde58  09 48 f1 eb                                      bl #0x41fe84
007cde5c  40 90 85 e5                                      str sb, [r5, #0x40]
007cde60  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
007cde64  00 70 a0 e3                                      mov r7, #0
007cde68  00 00 8f e0                                      add r0, pc, r0
007cde6c  c4 4c fe eb                                      bl #0x761184
007cde70  d5 ff ff ea                                      b #0x7cddcc
007cde74  64 00 88 e2                                      add r0, r8, #0x64
007cde78  09 10 a0 e1                                      mov r1, sb
007cde7c  00 48 f1 eb                                      bl #0x41fe84
007cde80  68 90 88 e5                                      str sb, [r8, #0x68]
007cde84  09 00 a0 e1                                      mov r0, sb
007cde88  9a ff ff ea                                      b #0x7cdcf8
007cde8c  68 30 98 e5                                      ldr r3, [r8, #0x68]
007cde90  00 00 53 e3                                      cmp r3, #0
007cde94  03 00 00 0a                                      beq #0x7cdea8
007cde98  64 20 98 e5                                      ldr r2, [r8, #0x64]
007cde9c  04 90 d2 e5                                      ldrb sb, [r2, #4]
007cdea0  00 00 59 e3                                      cmp sb, #0
007cdea4  11 00 00 0a                                      beq #0x7cdef0
007cdea8  ac 30 93 e5                                      ldr r3, [r3, #0xac]
007cdeac  d8 23 dd e1                                      ldrsb r2, [sp, #0x38]
007cdeb0  20 00 8d e2                                      add r0, sp, #0x20
007cdeb4  28 30 93 e5                                      ldr r3, [r3, #0x28]
007cdeb8  01 00 72 e3                                      cmn r2, #1
007cdebc  01 20 87 12                                      addne r2, r7, #1
007cdec0  e0 10 93 e5                                      ldr r1, [r3, #0xe0]
007cdec4  44 20 9d 05                                      ldreq r2, [sp, #0x44]
007cdec8  00 30 a0 e3                                      mov r3, #0
007cdecc  cf 7c f8 eb                                      bl #0x5ed210
007cded0  20 10 9d e5                                      ldr r1, [sp, #0x20]
007cded4  00 00 51 e3                                      cmp r1, #0
007cded8  da ff ff 0a                                      beq #0x7cde48
007cdedc  01 00 a0 e1                                      mov r0, r1
007cdee0  1c 10 8d e5                                      str r1, [sp, #0x1c]
007cdee4  a6 3d ed eb                                      bl #0x31d584
007cdee8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007cdeec  49 ff ff ea                                      b #0x7cdc18
007cdef0  64 00 88 e2                                      add r0, r8, #0x64
007cdef4  09 10 a0 e1                                      mov r1, sb
007cdef8  e1 47 f1 eb                                      bl #0x41fe84
007cdefc  68 90 88 e5                                      str sb, [r8, #0x68]
007cdf00  09 30 a0 e1                                      mov r3, sb
007cdf04  e7 ff ff ea                                      b #0x7cdea8
007cdf08  00 01 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007cdf0c  d4 6f 1c 00 ac 40 00 00 78 27 00 00 b4 39 00 00  .byte 0xd4, 0x6f, 0x1c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x78, 0x27, 0x00, 0x00, 0xb4, 0x39, 0x00, 0x00
007cdf1c  1c 0f 00 00 0c af 13 00 14 e1 13 00 80 bd 13 00  .byte 0x1c, 0x0f, 0x00, 0x00, 0x0c, 0xaf, 0x13, 0x00, 0x14, 0xe1, 0x13, 0x00, 0x80, 0xbd, 0x13, 0x00

; FUNCTION 0x007cdf2c, declared_size=500, range_size=500, mode=arm
; class-group: gameswf::as_environment
; alias: _ZNK7gameswf14as_environment16get_variable_rawERKNS_9tu_stringERKNS_5arrayINS_16with_stack_entryEEEPi
; demangled: gameswf::as_environment::get_variable_raw(gameswf::tu_string const&, gameswf::array<gameswf::with_stack_entry> const&, int*) const
; decoder-mode: arm
007cdf2c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007cdf30  04 50 93 e5                                      ldr r5, [r3, #4]
007cdf34  14 d0 4d e2                                      sub sp, sp, #0x14
007cdf38  03 70 a0 e1                                      mov r7, r3
007cdf3c  01 50 55 e2                                      subs r5, r5, #1
007cdf40  00 30 a0 e3                                      mov r3, #0
007cdf44  05 30 cd e5                                      strb r3, [sp, #5]
007cdf48  00 a0 a0 e1                                      mov sl, r0
007cdf4c  01 b0 a0 e1                                      mov fp, r1
007cdf50  02 80 a0 e1                                      mov r8, r2
007cdf54  04 30 cd e5                                      strb r3, [sp, #4]
007cdf58  38 90 9d e5                                      ldr sb, [sp, #0x38]
007cdf5c  04 60 8d 42                                      addmi r6, sp, #4
007cdf60  1c 00 00 4a                                      bmi #0x7cdfd8
007cdf64  85 41 a0 e1                                      lsl r4, r5, #3
007cdf68  04 60 8d e2                                      add r6, sp, #4
007cdf6c  00 30 97 e5                                      ldr r3, [r7]
007cdf70  08 10 a0 e1                                      mov r1, r8
007cdf74  06 20 a0 e1                                      mov r2, r6
007cdf78  04 30 93 e7                                      ldr r3, [r3, r4]
007cdf7c  08 40 44 e2                                      sub r4, r4, #8
007cdf80  00 00 53 e2                                      subs r0, r3, #0
007cdf84  11 00 00 0a                                      beq #0x7cdfd0
007cdf88  00 c0 93 e5                                      ldr ip, [r3]
007cdf8c  0f e0 a0 e1                                      mov lr, pc
007cdf90  20 f0 9c e5                                      ldr pc, [ip, #0x20]
007cdf94  00 00 50 e3                                      cmp r0, #0
007cdf98  0c 00 00 0a                                      beq #0x7cdfd0
007cdf9c  00 00 59 e3                                      cmp sb, #0
007cdfa0  00 50 89 15                                      strne r5, [sb]
007cdfa4  00 30 a0 e3                                      mov r3, #0
007cdfa8  01 30 ca e5                                      strb r3, [sl, #1]
007cdfac  00 30 ca e5                                      strb r3, [sl]
007cdfb0  0a 00 a0 e1                                      mov r0, sl
007cdfb4  06 10 a0 e1                                      mov r1, r6
007cdfb8  df 25 ff eb                                      bl #0x79773c
007cdfbc  06 00 a0 e1                                      mov r0, r6
007cdfc0  57 24 ff eb                                      bl #0x797124
007cdfc4  0a 00 a0 e1                                      mov r0, sl
007cdfc8  14 d0 8d e2                                      add sp, sp, #0x14
007cdfcc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007cdfd0  01 50 55 e2                                      subs r5, r5, #1
007cdfd4  e4 ff ff 2a                                      bhs #0x7cdf6c
007cdfd8  0b 00 a0 e1                                      mov r0, fp
007cdfdc  08 10 a0 e1                                      mov r1, r8
007cdfe0  01 20 a0 e3                                      mov r2, #1
007cdfe4  b5 fc ff eb                                      bl #0x7cd2c0
007cdfe8  00 00 50 e3                                      cmp r0, #0
007cdfec  08 00 00 ba                                      blt #0x7ce014
007cdff0  54 10 9b e5                                      ldr r1, [fp, #0x54]
007cdff4  00 30 a0 e3                                      mov r3, #0
007cdff8  01 30 ca e5                                      strb r3, [sl, #1]
007cdffc  80 12 81 e0                                      add r1, r1, r0, lsl #5
007ce000  00 30 ca e5                                      strb r3, [sl]
007ce004  14 10 81 e2                                      add r1, r1, #0x14
007ce008  0a 00 a0 e1                                      mov r0, sl
007ce00c  ca 25 ff eb                                      bl #0x79773c
007ce010  e9 ff ff ea                                      b #0x7cdfbc
007ce014  50 30 9b e5                                      ldr r3, [fp, #0x50]
007ce018  00 00 53 e3                                      cmp r3, #0
007ce01c  07 00 00 0a                                      beq #0x7ce040
007ce020  03 00 a0 e1                                      mov r0, r3
007ce024  08 10 a0 e1                                      mov r1, r8
007ce028  00 30 93 e5                                      ldr r3, [r3]
007ce02c  06 20 a0 e1                                      mov r2, r6
007ce030  0f e0 a0 e1                                      mov lr, pc
007ce034  20 f0 93 e5                                      ldr pc, [r3, #0x20]
007ce038  00 00 50 e3                                      cmp r0, #0
007ce03c  d8 ff ff 1a                                      bne #0x7cdfa4
007ce040  08 00 a0 e1                                      mov r0, r8
007ce044  f9 8f fe eb                                      bl #0x772030
007ce048  21 00 40 e2                                      sub r0, r0, #0x21
007ce04c  06 00 50 e3                                      cmp r0, #6
007ce050  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
007ce054  21 00 00 ea                                      b #0x7ce0e0
007ce058  1a 00 00 ea                                      b #0x7ce0c8
007ce05c  12 00 00 ea                                      b #0x7ce0ac
007ce060  1e 00 00 ea                                      b #0x7ce0e0
007ce064  1d 00 00 ea                                      b #0x7ce0e0
007ce068  0f 00 00 ea                                      b #0x7ce0ac
007ce06c  07 00 00 ea                                      b #0x7ce090
007ce070  ff ff ff ea                                      b #0x7ce074
007ce074  0b 00 a0 e1                                      mov r0, fp
007ce078  57 b8 ff eb                                      bl #0x7bc1dc
007ce07c  d8 79 fe eb                                      bl #0x76c7e4
007ce080  00 10 a0 e1                                      mov r1, r0
007ce084  06 00 a0 e1                                      mov r0, r6
007ce088  70 24 ff eb                                      bl #0x797250
007ce08c  c4 ff ff ea                                      b #0x7cdfa4
007ce090  0b 00 a0 e1                                      mov r0, fp
007ce094  50 b8 ff eb                                      bl #0x7bc1dc
007ce098  cf 79 fe eb                                      bl #0x76c7dc
007ce09c  00 10 a0 e1                                      mov r1, r0
007ce0a0  06 00 a0 e1                                      mov r0, r6
007ce0a4  69 24 ff eb                                      bl #0x797250
007ce0a8  bd ff ff ea                                      b #0x7cdfa4
007ce0ac  0b 00 a0 e1                                      mov r0, fp
007ce0b0  67 fe ff eb                                      bl #0x7cda54
007ce0b4  26 98 fe eb                                      bl #0x774154
007ce0b8  00 10 a0 e1                                      mov r1, r0
007ce0bc  06 00 a0 e1                                      mov r0, r6
007ce0c0  62 24 ff eb                                      bl #0x797250
007ce0c4  b6 ff ff ea                                      b #0x7cdfa4
007ce0c8  0b 00 a0 e1                                      mov r0, fp
007ce0cc  7c fb ff eb                                      bl #0x7ccec4
007ce0d0  00 10 a0 e1                                      mov r1, r0
007ce0d4  06 00 a0 e1                                      mov r0, r6
007ce0d8  5c 24 ff eb                                      bl #0x797250
007ce0dc  b0 ff ff ea                                      b #0x7cdfa4
007ce0e0  0b 00 a0 e1                                      mov r0, fp
007ce0e4  3c b8 ff eb                                      bl #0x7bc1dc
007ce0e8  bb 79 fe eb                                      bl #0x76c7dc
007ce0ec  08 10 a0 e1                                      mov r1, r8
007ce0f0  00 30 90 e5                                      ldr r3, [r0]
007ce0f4  06 20 a0 e1                                      mov r2, r6
007ce0f8  0f e0 a0 e1                                      mov lr, pc
007ce0fc  20 f0 93 e5                                      ldr pc, [r3, #0x20]
007ce100  00 00 50 e3                                      cmp r0, #0
007ce104  a6 ff ff 1a                                      bne #0x7cdfa4
007ce108  01 00 ca e5                                      strb r0, [sl, #1]
007ce10c  00 00 ca e5                                      strb r0, [sl]
007ce110  06 10 a0 e1                                      mov r1, r6
007ce114  0a 00 a0 e1                                      mov r0, sl
007ce118  87 25 ff eb                                      bl #0x79773c
007ce11c  a6 ff ff ea                                      b #0x7cdfbc

; FUNCTION 0x007ce120, declared_size=636, range_size=636, mode=arm
; class-group: gameswf::as_environment
; alias: _ZNK7gameswf14as_environment12get_variableERKNS_9tu_stringERKNS_5arrayINS_16with_stack_entryEEEPi
; demangled: gameswf::as_environment::get_variable(gameswf::tu_string const&, gameswf::array<gameswf::with_stack_entry> const&, int*) const
; decoder-mode: arm
007ce120  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007ce124  68 42 9f e5                                      ldr r4, [pc, #0x268]
007ce128  68 92 9f e5                                      ldr sb, [pc, #0x268]
007ce12c  01 a0 a0 e1                                      mov sl, r1
007ce130  04 40 8f e0                                      add r4, pc, r4
007ce134  09 10 94 e7                                      ldr r1, [r4, sb]
007ce138  94 d0 4d e2                                      sub sp, sp, #0x94
007ce13c  14 20 8d e5                                      str r2, [sp, #0x14]
007ce140  00 10 91 e5                                      ldr r1, [r1]
007ce144  b8 20 9d e5                                      ldr r2, [sp, #0xb8]
007ce148  00 50 a0 e1                                      mov r5, r0
007ce14c  0a 00 a0 e1                                      mov r0, sl
007ce150  18 30 8d e5                                      str r3, [sp, #0x18]
007ce154  8c 10 8d e5                                      str r1, [sp, #0x8c]
007ce158  1c 20 8d e5                                      str r2, [sp, #0x1c]
007ce15c  58 fb ff eb                                      bl #0x7ccec4
007ce160  88 e0 9d e5                                      ldr lr, [sp, #0x88]
007ce164  74 c0 9d e5                                      ldr ip, [sp, #0x74]
007ce168  00 30 e0 e3                                      mvn r3, #0
007ce16c  13 e0 d7 e7                                      bfi lr, r3, #0, #0x18
007ce170  13 c0 d7 e7                                      bfi ip, r3, #0, #0x18
007ce174  78 20 8d e2                                      add r2, sp, #0x78
007ce178  00 30 a0 e3                                      mov r3, #0
007ce17c  2e 8c a0 e1                                      lsr r8, lr, #0x18
007ce180  2c 7c a0 e1                                      lsr r7, ip, #0x18
007ce184  64 b0 8d e2                                      add fp, sp, #0x64
007ce188  10 20 8d e5                                      str r2, [sp, #0x10]
007ce18c  13 70 c0 e7                                      bfi r7, r3, #0, #1
007ce190  13 80 c0 e7                                      bfi r8, r3, #0, #1
007ce194  01 60 a0 e3                                      mov r6, #1
007ce198  02 10 a0 e1                                      mov r1, r2
007ce19c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007ce1a0  0b 20 a0 e1                                      mov r2, fp
007ce1a4  88 e0 8d e5                                      str lr, [sp, #0x88]
007ce1a8  74 c0 8d e5                                      str ip, [sp, #0x74]
007ce1ac  64 60 cd e5                                      strb r6, [sp, #0x64]
007ce1b0  8b 80 cd e5                                      strb r8, [sp, #0x8b]
007ce1b4  77 70 cd e5                                      strb r7, [sp, #0x77]
007ce1b8  78 60 cd e5                                      strb r6, [sp, #0x78]
007ce1bc  79 30 cd e5                                      strb r3, [sp, #0x79]
007ce1c0  65 30 cd e5                                      strb r3, [sp, #0x65]
007ce1c4  d9 fb ff eb                                      bl #0x7cd130
007ce1c8  00 00 50 e3                                      cmp r0, #0
007ce1cc  2f 00 00 0a                                      beq #0x7ce290
007ce1d0  d8 37 dd e1                                      ldrsb r3, [sp, #0x78]
007ce1d4  0a 00 a0 e1                                      mov r0, sl
007ce1d8  01 00 73 e3                                      cmn r3, #1
007ce1dc  10 30 9d 15                                      ldrne r3, [sp, #0x10]
007ce1e0  84 10 9d 05                                      ldreq r1, [sp, #0x84]
007ce1e4  06 10 83 10                                      addne r1, r3, r6
007ce1e8  c8 fb ff eb                                      bl #0x7cd110
007ce1ec  00 70 50 e2                                      subs r7, r0, #0
007ce1f0  3e 00 00 0a                                      beq #0x7ce2f0
007ce1f4  00 30 a0 e3                                      mov r3, #0
007ce1f8  31 30 cd e5                                      strb r3, [sp, #0x31]
007ce1fc  30 30 cd e5                                      strb r3, [sp, #0x30]
007ce200  00 30 97 e5                                      ldr r3, [r7]
007ce204  50 a0 8d e2                                      add sl, sp, #0x50
007ce208  0b 10 a0 e1                                      mov r1, fp
007ce20c  0a 00 a0 e1                                      mov r0, sl
007ce210  30 60 8d e2                                      add r6, sp, #0x30
007ce214  20 80 93 e5                                      ldr r8, [r3, #0x20]
007ce218  83 13 fe eb                                      bl #0x75302c
007ce21c  07 00 a0 e1                                      mov r0, r7
007ce220  0a 10 a0 e1                                      mov r1, sl
007ce224  06 20 a0 e1                                      mov r2, r6
007ce228  38 ff 2f e1                                      blx r8
007ce22c  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
007ce230  01 00 73 e3                                      cmn r3, #1
007ce234  29 00 00 0a                                      beq #0x7ce2e0
007ce238  00 30 a0 e3                                      mov r3, #0
007ce23c  05 00 a0 e1                                      mov r0, r5
007ce240  01 30 c5 e5                                      strb r3, [r5, #1]
007ce244  00 30 c5 e5                                      strb r3, [r5]
007ce248  06 10 a0 e1                                      mov r1, r6
007ce24c  3a 25 ff eb                                      bl #0x79773c
007ce250  06 00 a0 e1                                      mov r0, r6
007ce254  b2 23 ff eb                                      bl #0x797124
007ce258  d4 36 dd e1                                      ldrsb r3, [sp, #0x64]
007ce25c  01 00 73 e3                                      cmn r3, #1
007ce260  14 00 00 0a                                      beq #0x7ce2b8
007ce264  d8 37 dd e1                                      ldrsb r3, [sp, #0x78]
007ce268  01 00 73 e3                                      cmn r3, #1
007ce26c  17 00 00 0a                                      beq #0x7ce2d0
007ce270  09 30 94 e7                                      ldr r3, [r4, sb]
007ce274  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
007ce278  05 00 a0 e1                                      mov r0, r5
007ce27c  00 30 93 e5                                      ldr r3, [r3]
007ce280  03 00 52 e1                                      cmp r2, r3
007ce284  41 00 00 1a                                      bne #0x7ce390
007ce288  94 d0 8d e2                                      add sp, sp, #0x94
007ce28c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007ce290  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
007ce294  18 30 9d e5                                      ldr r3, [sp, #0x18]
007ce298  0a 10 a0 e1                                      mov r1, sl
007ce29c  14 20 9d e5                                      ldr r2, [sp, #0x14]
007ce2a0  05 00 a0 e1                                      mov r0, r5
007ce2a4  00 c0 8d e5                                      str ip, [sp]
007ce2a8  1f ff ff eb                                      bl #0x7cdf2c
007ce2ac  d4 36 dd e1                                      ldrsb r3, [sp, #0x64]
007ce2b0  01 00 73 e3                                      cmn r3, #1
007ce2b4  ea ff ff 1a                                      bne #0x7ce264
007ce2b8  70 00 9d e5                                      ldr r0, [sp, #0x70]
007ce2bc  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
007ce2c0  1c 12 fe eb                                      bl #0x752b38
007ce2c4  d8 37 dd e1                                      ldrsb r3, [sp, #0x78]
007ce2c8  01 00 73 e3                                      cmn r3, #1
007ce2cc  e7 ff ff 1a                                      bne #0x7ce270
007ce2d0  84 00 9d e5                                      ldr r0, [sp, #0x84]
007ce2d4  80 10 9d e5                                      ldr r1, [sp, #0x80]
007ce2d8  16 12 fe eb                                      bl #0x752b38
007ce2dc  e3 ff ff ea                                      b #0x7ce270
007ce2e0  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
007ce2e4  58 10 9d e5                                      ldr r1, [sp, #0x58]
007ce2e8  12 12 fe eb                                      bl #0x752b38
007ce2ec  d1 ff ff ea                                      b #0x7ce238
007ce2f0  0a 00 a0 e1                                      mov r0, sl
007ce2f4  b8 b7 ff eb                                      bl #0x7bc1dc
007ce2f8  37 79 fe eb                                      bl #0x76c7dc
007ce2fc  d8 37 dd e1                                      ldrsb r3, [sp, #0x78]
007ce300  01 00 73 e3                                      cmn r3, #1
007ce304  10 c0 9d 15                                      ldrne ip, [sp, #0x10]
007ce308  84 10 9d 05                                      ldreq r1, [sp, #0x84]
007ce30c  01 10 8c 12                                      addne r1, ip, #1
007ce310  db 73 fe eb                                      bl #0x76b284
007ce314  00 a0 50 e2                                      subs sl, r0, #0
007ce318  01 a0 c5 05                                      strbeq sl, [r5, #1]
007ce31c  00 a0 c5 05                                      strbeq sl, [r5]
007ce320  cc ff ff 0a                                      beq #0x7ce258
007ce324  00 60 a0 e3                                      mov r6, #0
007ce328  24 60 cd e5                                      strb r6, [sp, #0x24]
007ce32c  25 60 cd e5                                      strb r6, [sp, #0x25]
007ce330  00 20 9a e5                                      ldr r2, [sl]
007ce334  3c 30 8d e2                                      add r3, sp, #0x3c
007ce338  0b 10 a0 e1                                      mov r1, fp
007ce33c  03 00 a0 e1                                      mov r0, r3
007ce340  20 80 92 e5                                      ldr r8, [r2, #0x20]
007ce344  0c 30 8d e5                                      str r3, [sp, #0xc]
007ce348  37 13 fe eb                                      bl #0x75302c
007ce34c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007ce350  24 70 8d e2                                      add r7, sp, #0x24
007ce354  07 20 a0 e1                                      mov r2, r7
007ce358  03 10 a0 e1                                      mov r1, r3
007ce35c  0a 00 a0 e1                                      mov r0, sl
007ce360  38 ff 2f e1                                      blx r8
007ce364  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007ce368  03 00 a0 e1                                      mov r0, r3
007ce36c  d9 46 f1 eb                                      bl #0x41fed8
007ce370  05 00 a0 e1                                      mov r0, r5
007ce374  01 60 c5 e5                                      strb r6, [r5, #1]
007ce378  00 60 c5 e5                                      strb r6, [r5]
007ce37c  07 10 a0 e1                                      mov r1, r7
007ce380  ed 24 ff eb                                      bl #0x79773c
007ce384  07 00 a0 e1                                      mov r0, r7
007ce388  65 23 ff eb                                      bl #0x797124
007ce38c  b1 ff ff ea                                      b #0x7ce258
007ce390  de ff ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007ce394  60 69 1c 00 ac 40 00 00                          .byte 0x60, 0x69, 0x1c, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x007d2b94, declared_size=176, range_size=176, mode=arm
; class-group: gameswf::as_environment
; alias: _ZN7gameswf14as_environment17add_frame_barrierEv
; demangled: gameswf::as_environment::add_frame_barrier()
; decoder-mode: arm
007d2b94  70 40 2d e9                                      push {r4, r5, r6, lr}
007d2b98  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
007d2b9c  9c 50 9f e5                                      ldr r5, [pc, #0x9c]
007d2ba0  28 d0 4d e2                                      sub sp, sp, #0x28
007d2ba4  04 40 8f e0                                      add r4, pc, r4
007d2ba8  05 30 94 e7                                      ldr r3, [r4, r5]
007d2bac  14 20 9d e5                                      ldr r2, [sp, #0x14]
007d2bb0  00 10 e0 e3                                      mvn r1, #0
007d2bb4  00 e0 93 e5                                      ldr lr, [r3]
007d2bb8  11 20 d7 e7                                      bfi r2, r1, #0, #0x18
007d2bbc  00 30 a0 e3                                      mov r3, #0
007d2bc0  22 cc a0 e1                                      lsr ip, r2, #0x18
007d2bc4  04 60 8d e2                                      add r6, sp, #4
007d2bc8  13 c0 c0 e7                                      bfi ip, r3, #0, #1
007d2bcc  54 00 80 e2                                      add r0, r0, #0x54
007d2bd0  06 10 a0 e1                                      mov r1, r6
007d2bd4  24 e0 8d e5                                      str lr, [sp, #0x24]
007d2bd8  01 e0 a0 e3                                      mov lr, #1
007d2bdc  19 30 cd e5                                      strb r3, [sp, #0x19]
007d2be0  14 20 8d e5                                      str r2, [sp, #0x14]
007d2be4  05 30 cd e5                                      strb r3, [sp, #5]
007d2be8  18 30 cd e5                                      strb r3, [sp, #0x18]
007d2bec  04 e0 cd e5                                      strb lr, [sp, #4]
007d2bf0  17 c0 cd e5                                      strb ip, [sp, #0x17]
007d2bf4  d9 e9 ff eb                                      bl #0x7cd360
007d2bf8  14 00 86 e2                                      add r0, r6, #0x14
007d2bfc  48 11 ff eb                                      bl #0x797124
007d2c00  d4 30 dd e1                                      ldrsb r3, [sp, #4]
007d2c04  01 00 73 e3                                      cmn r3, #1
007d2c08  06 00 00 0a                                      beq #0x7d2c28
007d2c0c  05 30 94 e7                                      ldr r3, [r4, r5]
007d2c10  24 20 9d e5                                      ldr r2, [sp, #0x24]
007d2c14  00 30 93 e5                                      ldr r3, [r3]
007d2c18  03 00 52 e1                                      cmp r2, r3
007d2c1c  05 00 00 1a                                      bne #0x7d2c38
007d2c20  28 d0 8d e2                                      add sp, sp, #0x28
007d2c24  70 80 bd e8                                      pop {r4, r5, r6, pc}
007d2c28  10 00 9d e5                                      ldr r0, [sp, #0x10]
007d2c2c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007d2c30  c0 ff fd eb                                      bl #0x752b38
007d2c34  f4 ff ff ea                                      b #0x7d2c0c
007d2c38  b4 ed ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007d2c3c  ec 1e 1c 00 ac 40 00 00                          .byte 0xec, 0x1e, 0x1c, 0x00, 0xac, 0x40, 0x00, 0x00
