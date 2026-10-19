; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00340134, declared_size=8, range_size=8, mode=arm
; class-group: Dummy
; alias: _ZNK5Dummy11IsUpdatableEv
; demangled: Dummy::IsUpdatable() const
; decoder-mode: arm
00340134  00 00 a0 e3                                      mov r0, #0
00340138  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034013c, declared_size=8, range_size=8, mode=arm
; class-group: Dummy
; alias: _ZNK5Dummy9IsZonableEv
; demangled: Dummy::IsZonable() const
; decoder-mode: arm
0034013c  00 00 a0 e3                                      mov r0, #0
00340140  1e ff 2f e1                                      bx lr

; FUNCTION 0x00340144, declared_size=8, range_size=8, mode=arm
; class-group: Dummy
; alias: _ZNK5Dummy10IsAnimatedEv
; demangled: Dummy::IsAnimated() const
; decoder-mode: arm
00340144  00 00 a0 e3                                      mov r0, #0
00340148  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034014c, declared_size=8, range_size=8, mode=arm
; class-group: Dummy
; alias: _ZNK5Dummy13IsInteractiveEP10GameObject
; demangled: Dummy::IsInteractive(GameObject*) const
; decoder-mode: arm
0034014c  00 00 a0 e3                                      mov r0, #0
00340150  1e ff 2f e1                                      bx lr

; FUNCTION 0x0034117c, declared_size=8, range_size=8, mode=arm
; class-group: Dummy
; alias: _ZThn36_N5DummyD1Ev
; demangled: non-virtual thunk to Dummy::~Dummy()
; decoder-mode: arm
0034117c  24 00 40 e2                                      sub r0, r0, #0x24
00341180  ff ff ff ea                                      b #0x341184

; FUNCTION 0x00341184, declared_size=64, range_size=64, mode=arm
; class-group: Dummy
; alias: _ZN5DummyD1Ev
; demangled: Dummy::~Dummy()
; decoder-mode: arm
00341184  30 20 9f e5                                      ldr r2, [pc, #0x30]
00341188  30 30 9f e5                                      ldr r3, [pc, #0x30]
0034118c  10 40 2d e9                                      push {r4, lr}
00341190  02 20 8f e0                                      add r2, pc, r2
00341194  03 30 92 e7                                      ldr r3, [r2, r3]
00341198  00 40 a0 e1                                      mov r4, r0
0034119c  e4 20 83 e2                                      add r2, r3, #0xe4
003411a0  08 10 83 e2                                      add r1, r3, #8
003411a4  d8 30 83 e2                                      add r3, r3, #0xd8
003411a8  0a 00 80 e8                                      stm r0, {r1, r3}
003411ac  24 20 80 e5                                      str r2, [r0, #0x24]
003411b0  70 30 01 eb                                      bl #0x38d378
003411b4  04 00 a0 e1                                      mov r0, r4
003411b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003411bc  00 39 65 00 78 3e 00 00                          .byte 0x00, 0x39, 0x65, 0x00, 0x78, 0x3e, 0x00, 0x00

; FUNCTION 0x00341958, declared_size=8, range_size=8, mode=arm
; class-group: Dummy
; alias: _ZThn36_N5DummyD0Ev
; demangled: non-virtual thunk to Dummy::~Dummy()
; decoder-mode: arm
00341958  24 00 40 e2                                      sub r0, r0, #0x24
0034195c  ff ff ff ea                                      b #0x341960

; FUNCTION 0x00341960, declared_size=72, range_size=72, mode=arm
; class-group: Dummy
; alias: _ZN5DummyD0Ev
; demangled: Dummy::~Dummy()
; decoder-mode: arm
00341960  38 20 9f e5                                      ldr r2, [pc, #0x38]
00341964  38 30 9f e5                                      ldr r3, [pc, #0x38]
00341968  10 40 2d e9                                      push {r4, lr}
0034196c  02 20 8f e0                                      add r2, pc, r2
00341970  03 30 92 e7                                      ldr r3, [r2, r3]
00341974  00 40 a0 e1                                      mov r4, r0
00341978  e4 20 83 e2                                      add r2, r3, #0xe4
0034197c  08 10 83 e2                                      add r1, r3, #8
00341980  d8 30 83 e2                                      add r3, r3, #0xd8
00341984  0a 00 80 e8                                      stm r0, {r1, r3}
00341988  24 20 80 e5                                      str r2, [r0, #0x24]
0034198c  79 2e 01 eb                                      bl #0x38d378
00341990  04 00 a0 e1                                      mov r0, r4
00341994  a9 3a ff eb                                      bl #0x310440
00341998  04 00 a0 e1                                      mov r0, r4
0034199c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003419a0  24 31 65 00 78 3e 00 00                          .byte 0x24, 0x31, 0x65, 0x00, 0x78, 0x3e, 0x00, 0x00
