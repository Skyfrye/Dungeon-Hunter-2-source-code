; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038d4a4, declared_size=20, range_size=20, mode=arm
; class-group: ObjectSearcher::CharacterList
; alias: _ZN14ObjectSearcher13CharacterList5ResetEv
; demangled: ObjectSearcher::CharacterList::Reset()
; decoder-mode: arm
0038d4a4  04 30 90 e5                                      ldr r3, [r0, #4]
0038d4a8  00 20 93 e5                                      ldr r2, [r3]
0038d4ac  0c 30 80 e5                                      str r3, [r0, #0xc]
0038d4b0  08 20 80 e5                                      str r2, [r0, #8]
0038d4b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d4b8, declared_size=24, range_size=24, mode=arm
; class-group: ObjectSearcher::CharacterList
; alias: _ZN14ObjectSearcher13CharacterList5AtEndEv
; demangled: ObjectSearcher::CharacterList::AtEnd()
; decoder-mode: arm
0038d4b8  08 30 90 e5                                      ldr r3, [r0, #8]
0038d4bc  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0038d4c0  03 00 50 e1                                      cmp r0, r3
0038d4c4  00 00 a0 13                                      movne r0, #0
0038d4c8  01 00 a0 03                                      moveq r0, #1
0038d4cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d4d0, declared_size=16, range_size=16, mode=arm
; class-group: ObjectSearcher::CharacterList
; alias: _ZN14ObjectSearcher13CharacterList4NextEv
; demangled: ObjectSearcher::CharacterList::Next()
; decoder-mode: arm
0038d4d0  08 30 90 e5                                      ldr r3, [r0, #8]
0038d4d4  00 30 93 e5                                      ldr r3, [r3]
0038d4d8  08 30 80 e5                                      str r3, [r0, #8]
0038d4dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d4e0, declared_size=44, range_size=44, mode=arm
; class-group: ObjectSearcher::CharacterList
; alias: _ZN14ObjectSearcher13CharacterList4SizeEv
; demangled: ObjectSearcher::CharacterList::Size()
; decoder-mode: arm
0038d4e0  04 20 90 e5                                      ldr r2, [r0, #4]
0038d4e4  00 30 92 e5                                      ldr r3, [r2]
0038d4e8  02 00 53 e1                                      cmp r3, r2
0038d4ec  00 00 a0 03                                      moveq r0, #0
0038d4f0  1e ff 2f 01                                      bxeq lr
0038d4f4  00 00 a0 e3                                      mov r0, #0
0038d4f8  00 30 93 e5                                      ldr r3, [r3]
0038d4fc  01 00 80 e2                                      add r0, r0, #1
0038d500  03 00 52 e1                                      cmp r2, r3
0038d504  fb ff ff 1a                                      bne #0x38d4f8
0038d508  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d50c, declared_size=12, range_size=12, mode=arm
; class-group: ObjectSearcher::CharacterList
; alias: _ZN14ObjectSearcher13CharacterList3GetEv
; demangled: ObjectSearcher::CharacterList::Get()
; decoder-mode: arm
0038d50c  08 30 90 e5                                      ldr r3, [r0, #8]
0038d510  08 00 93 e5                                      ldr r0, [r3, #8]
0038d514  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d518, declared_size=12, range_size=12, mode=arm
; class-group: ObjectSearcher::CharacterList
; alias: _ZN14ObjectSearcher13CharacterList7GetCharEv
; demangled: ObjectSearcher::CharacterList::GetChar()
; decoder-mode: arm
0038d518  08 30 90 e5                                      ldr r3, [r0, #8]
0038d51c  08 00 93 e5                                      ldr r0, [r3, #8]
0038d520  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d60c, declared_size=4, range_size=4, mode=arm
; class-group: ObjectSearcher::CharacterList
; alias: _ZN14ObjectSearcher13CharacterListD1Ev
; demangled: ObjectSearcher::CharacterList::~CharacterList()
; decoder-mode: arm
0038d60c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d764, declared_size=52, range_size=52, mode=arm
; class-group: ObjectSearcher::CharacterList
; alias: _ZN14ObjectSearcher13CharacterListD0Ev
; demangled: ObjectSearcher::CharacterList::~CharacterList()
; decoder-mode: arm
0038d764  24 30 9f e5                                      ldr r3, [pc, #0x24]
0038d768  24 20 9f e5                                      ldr r2, [pc, #0x24]
0038d76c  10 40 2d e9                                      push {r4, lr}
0038d770  03 30 8f e0                                      add r3, pc, r3
0038d774  02 20 93 e7                                      ldr r2, [r3, r2]
0038d778  00 40 a0 e1                                      mov r4, r0
0038d77c  08 20 82 e2                                      add r2, r2, #8
0038d780  00 20 80 e5                                      str r2, [r0]
0038d784  2d 0b fe eb                                      bl #0x310440
0038d788  04 00 a0 e1                                      mov r0, r4
0038d78c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0038d790  20 73 60 00 b8 28 00 00                          .byte 0x20, 0x73, 0x60, 0x00, 0xb8, 0x28, 0x00, 0x00
