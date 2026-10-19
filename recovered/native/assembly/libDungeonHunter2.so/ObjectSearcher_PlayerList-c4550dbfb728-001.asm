; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038d524, declared_size=12, range_size=12, mode=arm
; class-group: ObjectSearcher::PlayerList
; alias: _ZN14ObjectSearcher10PlayerList5ResetEv
; demangled: ObjectSearcher::PlayerList::Reset()
; decoder-mode: arm
0038d524  00 30 a0 e3                                      mov r3, #0
0038d528  08 30 80 e5                                      str r3, [r0, #8]
0038d52c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d530, declared_size=28, range_size=28, mode=arm
; class-group: ObjectSearcher::PlayerList
; alias: _ZN14ObjectSearcher10PlayerList5AtEndEv
; demangled: ObjectSearcher::PlayerList::AtEnd()
; decoder-mode: arm
0038d530  04 30 90 e5                                      ldr r3, [r0, #4]
0038d534  08 00 90 e5                                      ldr r0, [r0, #8]
0038d538  c4 36 93 e5                                      ldr r3, [r3, #0x6c4]
0038d53c  03 00 50 e1                                      cmp r0, r3
0038d540  00 00 a0 33                                      movlo r0, #0
0038d544  01 00 a0 23                                      movhs r0, #1
0038d548  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d54c, declared_size=16, range_size=16, mode=arm
; class-group: ObjectSearcher::PlayerList
; alias: _ZN14ObjectSearcher10PlayerList4NextEv
; demangled: ObjectSearcher::PlayerList::Next()
; decoder-mode: arm
0038d54c  08 30 90 e5                                      ldr r3, [r0, #8]
0038d550  01 30 83 e2                                      add r3, r3, #1
0038d554  08 30 80 e5                                      str r3, [r0, #8]
0038d558  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d55c, declared_size=12, range_size=12, mode=arm
; class-group: ObjectSearcher::PlayerList
; alias: _ZN14ObjectSearcher10PlayerList4SizeEv
; demangled: ObjectSearcher::PlayerList::Size()
; decoder-mode: arm
0038d55c  04 30 90 e5                                      ldr r3, [r0, #4]
0038d560  c4 06 93 e5                                      ldr r0, [r3, #0x6c4]
0038d564  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d608, declared_size=4, range_size=4, mode=arm
; class-group: ObjectSearcher::PlayerList
; alias: _ZN14ObjectSearcher10PlayerListD1Ev
; demangled: ObjectSearcher::PlayerList::~PlayerList()
; decoder-mode: arm
0038d608  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d730, declared_size=52, range_size=52, mode=arm
; class-group: ObjectSearcher::PlayerList
; alias: _ZN14ObjectSearcher10PlayerListD0Ev
; demangled: ObjectSearcher::PlayerList::~PlayerList()
; decoder-mode: arm
0038d730  24 30 9f e5                                      ldr r3, [pc, #0x24]
0038d734  24 20 9f e5                                      ldr r2, [pc, #0x24]
0038d738  10 40 2d e9                                      push {r4, lr}
0038d73c  03 30 8f e0                                      add r3, pc, r3
0038d740  02 20 93 e7                                      ldr r2, [r3, r2]
0038d744  00 40 a0 e1                                      mov r4, r0
0038d748  08 20 82 e2                                      add r2, r2, #8
0038d74c  00 20 80 e5                                      str r2, [r0]
0038d750  3a 0b fe eb                                      bl #0x310440
0038d754  04 00 a0 e1                                      mov r0, r4
0038d758  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0038d75c  54 73 60 00 b8 28 00 00                          .byte 0x54, 0x73, 0x60, 0x00, 0xb8, 0x28, 0x00, 0x00

; FUNCTION 0x0038d7bc, declared_size=24, range_size=24, mode=arm
; class-group: ObjectSearcher::PlayerList
; alias: _ZN14ObjectSearcher10PlayerList7GetCharEv
; demangled: ObjectSearcher::PlayerList::GetChar()
; decoder-mode: arm
0038d7bc  10 40 2d e9                                      push {r4, lr}
0038d7c0  01 20 a0 e3                                      mov r2, #1
0038d7c4  03 00 90 e9                                      ldmib r0, {r0, r1}
0038d7c8  dd 83 ff eb                                      bl #0x36e744
0038d7cc  60 06 90 e5                                      ldr r0, [r0, #0x660]
0038d7d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0038d7d4, declared_size=24, range_size=24, mode=arm
; class-group: ObjectSearcher::PlayerList
; alias: _ZN14ObjectSearcher10PlayerList3GetEv
; demangled: ObjectSearcher::PlayerList::Get()
; decoder-mode: arm
0038d7d4  10 40 2d e9                                      push {r4, lr}
0038d7d8  01 20 a0 e3                                      mov r2, #1
0038d7dc  03 00 90 e9                                      ldmib r0, {r0, r1}
0038d7e0  d7 83 ff eb                                      bl #0x36e744
0038d7e4  60 06 90 e5                                      ldr r0, [r0, #0x660]
0038d7e8  10 80 bd e8                                      pop {r4, pc}
