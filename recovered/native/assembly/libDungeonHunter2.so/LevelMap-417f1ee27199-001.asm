; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003f9c6c, declared_size=40, range_size=40, mode=arm
; class-group: LevelMap
; alias: _ZN8LevelMapC2Ei
; demangled: LevelMap::LevelMap(int)
; decoder-mode: arm
003f9c6c  18 30 9f e5                                      ldr r3, [pc, #0x18]
003f9c70  18 20 9f e5                                      ldr r2, [pc, #0x18]
003f9c74  04 10 80 e5                                      str r1, [r0, #4]
003f9c78  03 30 8f e0                                      add r3, pc, r3
003f9c7c  02 20 93 e7                                      ldr r2, [r3, r2]
003f9c80  08 20 82 e2                                      add r2, r2, #8
003f9c84  00 20 80 e5                                      str r2, [r0]
003f9c88  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003f9c8c  18 ae 59 00 6c 32 00 00                          .byte 0x18, 0xae, 0x59, 0x00, 0x6c, 0x32, 0x00, 0x00

; FUNCTION 0x003f9c94, declared_size=40, range_size=40, mode=arm
; class-group: LevelMap
; alias: _ZN8LevelMapC1Ei
; demangled: LevelMap::LevelMap(int)
; decoder-mode: arm
003f9c94  18 30 9f e5                                      ldr r3, [pc, #0x18]
003f9c98  18 20 9f e5                                      ldr r2, [pc, #0x18]
003f9c9c  04 10 80 e5                                      str r1, [r0, #4]
003f9ca0  03 30 8f e0                                      add r3, pc, r3
003f9ca4  02 20 93 e7                                      ldr r2, [r3, r2]
003f9ca8  08 20 82 e2                                      add r2, r2, #8
003f9cac  00 20 80 e5                                      str r2, [r0]
003f9cb0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003f9cb4  f0 ad 59 00 6c 32 00 00                          .byte 0xf0, 0xad, 0x59, 0x00, 0x6c, 0x32, 0x00, 0x00

; FUNCTION 0x003f9cbc, declared_size=4, range_size=4, mode=arm
; class-group: LevelMap
; alias: _ZN8LevelMapD2Ev
; demangled: LevelMap::~LevelMap()
; decoder-mode: arm
003f9cbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003f9cc0, declared_size=4, range_size=4, mode=arm
; class-group: LevelMap
; alias: _ZN8LevelMapD1Ev
; demangled: LevelMap::~LevelMap()
; decoder-mode: arm
003f9cc0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003f9ce4, declared_size=20, range_size=20, mode=arm
; class-group: LevelMap
; alias: _ZNK8LevelMap4DrawEv
; demangled: LevelMap::Draw() const
; decoder-mode: arm
003f9ce4  10 40 2d e9                                      push {r4, lr}
003f9ce8  67 cb 00 eb                                      bl #0x42ca8c
003f9cec  00 10 a0 e3                                      mov r1, #0
003f9cf0  10 40 bd e8                                      pop {r4, lr}
003f9cf4  c7 d2 00 ea                                      b #0x42e818

; FUNCTION 0x003f9cf8, declared_size=20, range_size=20, mode=arm
; class-group: LevelMap
; alias: _ZN8LevelMap6UpdateEv
; demangled: LevelMap::Update()
; decoder-mode: arm
003f9cf8  10 40 2d e9                                      push {r4, lr}
003f9cfc  62 cb 00 eb                                      bl #0x42ca8c
003f9d00  00 10 a0 e3                                      mov r1, #0
003f9d04  10 40 bd e8                                      pop {r4, lr}
003f9d08  3d d3 00 ea                                      b #0x42ea04

; FUNCTION 0x003f9d0c, declared_size=36, range_size=36, mode=arm
; class-group: LevelMap
; alias: _ZN8LevelMap6UnloadEv
; demangled: LevelMap::Unload()
; decoder-mode: arm
003f9d0c  10 40 2d e9                                      push {r4, lr}
003f9d10  f8 f1 00 eb                                      bl #0x4364f8
003f9d14  00 40 50 e2                                      subs r4, r0, #0
003f9d18  03 00 00 0a                                      beq #0x3f9d2c
003f9d1c  5a cb 00 eb                                      bl #0x42ca8c
003f9d20  04 10 a0 e1                                      mov r1, r4
003f9d24  10 40 bd e8                                      pop {r4, lr}
003f9d28  36 d1 00 ea                                      b #0x42e208
003f9d2c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003f9d30, declared_size=44, range_size=44, mode=arm
; class-group: LevelMap
; alias: _ZN8LevelMap4LoadEv
; demangled: LevelMap::Load()
; decoder-mode: arm
003f9d30  10 40 2d e9                                      push {r4, lr}
003f9d34  54 cb 00 eb                                      bl #0x42ca8c
003f9d38  3d cd 00 eb                                      bl #0x42d234
003f9d3c  ed f1 00 eb                                      bl #0x4364f8
003f9d40  00 40 50 e2                                      subs r4, r0, #0
003f9d44  03 00 00 0a                                      beq #0x3f9d58
003f9d48  4f cb 00 eb                                      bl #0x42ca8c
003f9d4c  04 10 a0 e1                                      mov r1, r4
003f9d50  10 40 bd e8                                      pop {r4, lr}
003f9d54  a3 de 00 ea                                      b #0x4317e8
003f9d58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003f9d5c, declared_size=28, range_size=28, mode=arm
; class-group: LevelMap
; alias: _ZN8LevelMapD0Ev
; demangled: LevelMap::~LevelMap()
; decoder-mode: arm
003f9d5c  10 40 2d e9                                      push {r4, lr}
003f9d60  00 40 a0 e1                                      mov r4, r0
003f9d64  d5 ff ff eb                                      bl #0x3f9cc0
003f9d68  04 00 a0 e1                                      mov r0, r4
003f9d6c  b3 59 fc eb                                      bl #0x310440
003f9d70  04 00 a0 e1                                      mov r0, r4
003f9d74  10 80 bd e8                                      pop {r4, pc}
