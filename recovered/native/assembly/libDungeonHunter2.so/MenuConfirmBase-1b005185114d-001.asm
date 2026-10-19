; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0042a92c, declared_size=48, range_size=48, mode=arm
; class-group: MenuConfirmBase
; alias: _ZN15MenuConfirmBase4HideEv
; demangled: MenuConfirmBase::Hide()
; decoder-mode: arm
0042a92c  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a930  00 40 a0 e1                                      mov r4, r0
0042a934  54 08 00 eb                                      bl #0x42ca8c
0042a938  08 10 84 e2                                      add r1, r4, #8
0042a93c  00 50 a0 e1                                      mov r5, r0
0042a940  15 0a 00 eb                                      bl #0x42d19c
0042a944  00 10 a0 e1                                      mov r1, r0
0042a948  05 00 a0 e1                                      mov r0, r5
0042a94c  7f 1b 00 eb                                      bl #0x431750
0042a950  04 00 a0 e1                                      mov r0, r4
0042a954  70 40 bd e8                                      pop {r4, r5, r6, lr}
0042a958  65 e8 ff ea                                      b #0x424af4

; FUNCTION 0x0042a95c, declared_size=60, range_size=60, mode=arm
; class-group: MenuConfirmBase
; alias: _ZN15MenuConfirmBase4ShowEv
; demangled: MenuConfirmBase::Show()
; decoder-mode: arm
0042a95c  70 40 2d e9                                      push {r4, r5, r6, lr}
0042a960  00 40 a0 e1                                      mov r4, r0
0042a964  48 08 00 eb                                      bl #0x42ca8c
0042a968  08 10 84 e2                                      add r1, r4, #8
0042a96c  00 50 a0 e1                                      mov r5, r0
0042a970  09 0a 00 eb                                      bl #0x42d19c
0042a974  00 10 a0 e1                                      mov r1, r0
0042a978  05 00 a0 e1                                      mov r0, r5
0042a97c  e3 0d 00 eb                                      bl #0x42e110
0042a980  04 00 a0 e1                                      mov r0, r4
0042a984  b1 ea ff eb                                      bl #0x425450
0042a988  04 30 94 e5                                      ldr r3, [r4, #4]
0042a98c  f8 30 93 e5                                      ldr r3, [r3, #0xf8]
0042a990  c4 30 84 e5                                      str r3, [r4, #0xc4]
0042a994  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0042a998, declared_size=52, range_size=52, mode=arm
; class-group: MenuConfirmBase
; alias: _ZN15MenuConfirmBaseD1Ev
; demangled: MenuConfirmBase::~MenuConfirmBase()
; decoder-mode: arm
0042a998  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042a99c  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042a9a0  10 40 2d e9                                      push {r4, lr}
0042a9a4  03 30 8f e0                                      add r3, pc, r3
0042a9a8  02 20 93 e7                                      ldr r2, [r3, r2]
0042a9ac  00 40 a0 e1                                      mov r4, r0
0042a9b0  08 20 82 e2                                      add r2, r2, #8
0042a9b4  00 20 80 e5                                      str r2, [r0]
0042a9b8  ed df ff eb                                      bl #0x422974
0042a9bc  04 00 a0 e1                                      mov r0, r4
0042a9c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042a9c4  ec a0 56 00 40 15 00 00                          .byte 0xec, 0xa0, 0x56, 0x00, 0x40, 0x15, 0x00, 0x00

; FUNCTION 0x0042a9cc, declared_size=28, range_size=28, mode=arm
; class-group: MenuConfirmBase
; alias: _ZN15MenuConfirmBaseD0Ev
; demangled: MenuConfirmBase::~MenuConfirmBase()
; decoder-mode: arm
0042a9cc  10 40 2d e9                                      push {r4, lr}
0042a9d0  00 40 a0 e1                                      mov r4, r0
0042a9d4  ef ff ff eb                                      bl #0x42a998
0042a9d8  04 00 a0 e1                                      mov r0, r4
0042a9dc  97 96 fb eb                                      bl #0x310440
0042a9e0  04 00 a0 e1                                      mov r0, r4
0042a9e4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0042a9e8, declared_size=52, range_size=52, mode=arm
; class-group: MenuConfirmBase
; alias: _ZN15MenuConfirmBaseD2Ev
; demangled: MenuConfirmBase::~MenuConfirmBase()
; decoder-mode: arm
0042a9e8  24 30 9f e5                                      ldr r3, [pc, #0x24]
0042a9ec  24 20 9f e5                                      ldr r2, [pc, #0x24]
0042a9f0  10 40 2d e9                                      push {r4, lr}
0042a9f4  03 30 8f e0                                      add r3, pc, r3
0042a9f8  02 20 93 e7                                      ldr r2, [r3, r2]
0042a9fc  00 40 a0 e1                                      mov r4, r0
0042aa00  08 20 82 e2                                      add r2, r2, #8
0042aa04  00 20 80 e5                                      str r2, [r0]
0042aa08  d9 df ff eb                                      bl #0x422974
0042aa0c  04 00 a0 e1                                      mov r0, r4
0042aa10  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0042aa14  9c a0 56 00 40 15 00 00                          .byte 0x9c, 0xa0, 0x56, 0x00, 0x40, 0x15, 0x00, 0x00

; FUNCTION 0x0042ab24, declared_size=72, range_size=72, mode=arm
; class-group: MenuConfirmBase
; alias: _ZN15MenuConfirmBaseC1EPKc
; demangled: MenuConfirmBase::MenuConfirmBase(char const*)
; decoder-mode: arm
0042ab24  70 40 2d e9                                      push {r4, r5, r6, lr}
0042ab28  34 50 9f e5                                      ldr r5, [pc, #0x34]
0042ab2c  00 40 a0 e1                                      mov r4, r0
0042ab30  b2 f1 ff eb                                      bl #0x427200
0042ab34  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0042ab38  05 50 8f e0                                      add r5, pc, r5
0042ab3c  00 20 a0 e3                                      mov r2, #0
0042ab40  03 30 95 e7                                      ldr r3, [r5, r3]
0042ab44  c4 20 84 e5                                      str r2, [r4, #0xc4]
0042ab48  08 30 83 e2                                      add r3, r3, #8
0042ab4c  00 30 84 e5                                      str r3, [r4]
0042ab50  cd 07 00 eb                                      bl #0x42ca8c
0042ab54  04 10 a0 e1                                      mov r1, r4
0042ab58  cd 10 00 eb                                      bl #0x42ee94
0042ab5c  04 00 a0 e1                                      mov r0, r4
0042ab60  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042ab64  58 9f 56 00 40 15 00 00                          .byte 0x58, 0x9f, 0x56, 0x00, 0x40, 0x15, 0x00, 0x00

; FUNCTION 0x0042ab6c, declared_size=72, range_size=72, mode=arm
; class-group: MenuConfirmBase
; alias: _ZN15MenuConfirmBaseC2EPKc
; demangled: MenuConfirmBase::MenuConfirmBase(char const*)
; decoder-mode: arm
0042ab6c  70 40 2d e9                                      push {r4, r5, r6, lr}
0042ab70  34 50 9f e5                                      ldr r5, [pc, #0x34]
0042ab74  00 40 a0 e1                                      mov r4, r0
0042ab78  a0 f1 ff eb                                      bl #0x427200
0042ab7c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0042ab80  05 50 8f e0                                      add r5, pc, r5
0042ab84  00 20 a0 e3                                      mov r2, #0
0042ab88  03 30 95 e7                                      ldr r3, [r5, r3]
0042ab8c  c4 20 84 e5                                      str r2, [r4, #0xc4]
0042ab90  08 30 83 e2                                      add r3, r3, #8
0042ab94  00 30 84 e5                                      str r3, [r4]
0042ab98  bb 07 00 eb                                      bl #0x42ca8c
0042ab9c  04 10 a0 e1                                      mov r1, r4
0042aba0  bb 10 00 eb                                      bl #0x42ee94
0042aba4  04 00 a0 e1                                      mov r0, r4
0042aba8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0042abac  10 9f 56 00 40 15 00 00                          .byte 0x10, 0x9f, 0x56, 0x00, 0x40, 0x15, 0x00, 0x00
